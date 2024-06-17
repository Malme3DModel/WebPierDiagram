Attribute VB_Name = "CutAndPaste"
Option Explicit

Public Type gtypCopyInfo  'Undo用の情報
    StartRow As Long  '選択範囲の上端
    StartCol As Long  '選択範囲の左端
    RowNum As Long    '下に何行＋するか
    ColNum As Long    '右に何列＋するか
    
    CurRow As Long    'キー入力時のカレント .Row
    curCol As Long    'キー入力時のカレント .Col
    SelRow As Long    'キー入力時のカレント .RowSel
    SelCol As Long    'キー入力時のカレント .ColSel
    
    Data As String
End Type

Public Type gtypUndoInfo  'Undo用の情報
    faUndo As vsFlexGrid    'アンドゥするグリッド
    
    Row As Long    'アンドゥ後のカーソル位置
    Col As Long
    
    Buff As gtypCopyInfo
End Type

Public gusrUndoBuff(1) As gtypUndoInfo
Public gusrCopyBuff As gtypCopyInfo

Public gbolUndoEnabled As Boolean

Public Sub gEditUndo()
    Dim usrSwapUndoBuff As gtypUndoInfo
    
    If gbolUndoEnabled = False Then Exit Sub

    gusrUndoBuff(0).faUndo.SetFocus
    gusrUndoBuff(0).faUndo.Row = gusrUndoBuff(0).Row
    gusrUndoBuff(0).faUndo.Col = gusrUndoBuff(0).Col
    Call gEditPaste(gusrUndoBuff(0).faUndo, gusrUndoBuff(0).Buff, gusrUndoBuff(1))

    usrSwapUndoBuff = gusrUndoBuff(0)
    gusrUndoBuff(0) = gusrUndoBuff(1)
    gusrUndoBuff(1) = usrSwapUndoBuff
    
End Sub

Public Sub gEditPaste(ByVal vfaDest As vsFlexGrid, ByRef rusrCopyBuff As gtypCopyInfo, ByRef rusrUndoBuff As gtypUndoInfo)
    Dim usrTmpBuff As gtypCopyInfo
    
    With vfaDest
        usrTmpBuff = rusrCopyBuff 'ペースト情報を書き換えるので退避
        
        'usrTmpBuff.Data = Clipboard.GetText
                    
        Call EditSetPasteArea(vfaDest, usrTmpBuff, .Row, .Col)
        
        'アンドゥ情報セット
        Call EditSetCopyBuf(vfaDest, rusrUndoBuff.Buff)
        Set rusrUndoBuff.faUndo = vfaDest
        rusrUndoBuff.Row = .Row
        rusrUndoBuff.Col = .Col
                
        .Clip = usrTmpBuff.Data
        
    End With
  
End Sub

'選択してある範囲をアンドゥ・ペーストバッファに入れる
Private Sub EditSetCopyBuf(ByVal vfaSorc As vsFlexGrid, ByRef rusrCopyBuff As gtypCopyInfo)
    Dim LRow As Long
    Dim LCol As Long
    Dim RRow As Long
    Dim RCol As Long

    With vfaSorc
      If .Row < .RowSel Then
        LRow = .Row
        RRow = .RowSel
      Else
        LRow = .RowSel
        RRow = .Row
      End If
      
      If .Col < .ColSel Then
        LCol = .Col
        RCol = .ColSel
      Else
        LCol = .ColSel
        RCol = .Col
      End If
      
      rusrCopyBuff.StartRow = LRow
      rusrCopyBuff.StartCol = LCol
      rusrCopyBuff.RowNum = RRow - LRow
      rusrCopyBuff.ColNum = RCol - LCol
      rusrCopyBuff.Data = .Clip
    
      rusrCopyBuff.CurRow = .Row
      rusrCopyBuff.curCol = .Col
      rusrCopyBuff.SelRow = .RowSel
      rusrCopyBuff.SelCol = .ColSel
    
    End With
End Sub

'選択してある範囲をクリップボードにコピー
Public Sub gEditCopy(ByVal vfaSorc As vsFlexGrid, ByRef rusrCopyBuff As gtypCopyInfo)
    Call EditSetCopyBuf(vfaSorc, rusrCopyBuff)

    Clipboard.Clear
    Call Clipboard.SetText(vfaSorc.Clip)

End Sub

'選択してある範囲をアンドゥ・ペーストバッファに入れた後、消去
Public Sub gEditCut(ByVal vfaSorc As vsFlexGrid, ByRef rusrCopyBuff As gtypCopyInfo, ByRef rusrUndoBuff As gtypUndoInfo)
    Dim LRow As Long
    Dim LCol As Long
    Dim RRow As Long
    Dim RCol As Long
    Dim usrClearBuff As gtypCopyInfo
    
    Call EditSetCopyBuf(vfaSorc, rusrCopyBuff)
    Clipboard.Clear
    Call Clipboard.SetText(vfaSorc.Clip)
    
    'アンドゥ情報セット
    rusrUndoBuff.Buff = rusrCopyBuff
    Set rusrUndoBuff.faUndo = vfaSorc
    rusrUndoBuff.Row = vfaSorc.Row
    rusrUndoBuff.Col = vfaSorc.Col
    
    With vfaSorc
        Call .Clear(flexClearSelection, flexClearText)
    End With
End Sub

'ペースト範囲がグリッドをはみ出さないようにクリッピングする
'ペーストバッファを書き換えることがある
Private Sub EditSetPasteArea(ByVal vfaDest As vsFlexGrid, ByRef rusrCopyBuff As gtypCopyInfo, Row As Long, Col As Long)
    Dim rowEnd As Long
    Dim colEnd As Long
    
    Dim prevRetpos As Long
    Dim prevTabpos As Long
    Dim tabpos As Long
    Dim retpos As Long
    Dim tabNum As Long
    
    Dim i As Long, j As Long
    Dim tmpData As String
    Dim tmpDataBuff As String
    
    With vfaDest
        rowEnd = Row + rusrCopyBuff.RowNum
        If rowEnd >= .rows Then
            rowEnd = .rows - 1
        End If
        rusrCopyBuff.RowNum = rowEnd - Row
        .RowSel = rowEnd
        
        colEnd = Col + rusrCopyBuff.ColNum
        
        tmpDataBuff = rusrCopyBuff.Data
        
        If colEnd >= .Cols Then
            colEnd = .Cols - 1
            tabNum = colEnd - Col   '0で ﾀﾌﾞ１個（ｾﾞﾛｵﾘｼﾞﾝ）
          
            If tabNum >= 0 Then
                'ペーストバッファ書き換え
                'ﾀﾌﾞの個数を数えて、余分なﾃﾞｰﾀをｶｯﾄする。
                retpos = 0
                prevRetpos = 0
                
                tmpData = ""
    
                For i = 0 To rusrCopyBuff.RowNum
                    retpos = InStr(retpos + 1, tmpDataBuff, vbCr)
                    
                    If retpos = 0 Then retpos = Len(tmpDataBuff)
                
                    tabpos = prevRetpos
                    For j = 0 To tabNum
                        tabpos = InStr(tabpos + 1, tmpDataBuff, vbTab)
                    Next
              
                    tmpData = tmpData & Mid$(tmpDataBuff, prevRetpos + 1, tabpos - 1)
                    If i < rusrCopyBuff.RowNum Then tmpData = tmpData & vbCr
                    prevRetpos = retpos
                    
                Next
          
                tmpDataBuff = tmpData
              
            End If
        
        End If
        
        rusrCopyBuff.ColNum = colEnd - Col
        .ColSel = colEnd
    
        rusrCopyBuff.Data = tmpDataBuff
    
    End With

End Sub

'Undoの有効無効を切り替える
Public Sub gSetUndoEnabled(ByVal mnuUndo As Menu, rbolEnabled As Boolean)
    mnuUndo.Enabled = rbolEnabled
    gbolUndoEnabled = rbolEnabled
End Sub

'選択してある範囲のチェックボックスをチェック状態にする
Public Sub gEditCheck(ByVal vfaSorc As vsFlexGrid)

    Call EditChangeCheck(vfaSorc, 0)
    
End Sub

'選択してある範囲のチェックボックスをチェック解除する
Public Sub gEditUnCheck(ByVal vfaSorc As vsFlexGrid)

    Call EditChangeCheck(vfaSorc, 1)
    
End Sub

'選択してある範囲のチェックボックスのチェック状態を反転する
Public Sub gEditCheckReverse(ByVal vfaSorc As vsFlexGrid)

    Call EditChangeCheck(vfaSorc, 2)
    
End Sub

'選択してある範囲のチェックボックスの状態を変える
Private Sub EditChangeCheck(ByVal vfaSorc As vsFlexGrid, ByVal viMethod As Integer)
    Dim TRow As Long
    Dim LCol As Long
    Dim BRow As Long
    Dim RCol As Long

    With vfaSorc
      If .Row < .RowSel Then
        TRow = .Row
        BRow = .RowSel
      Else
        TRow = .RowSel
        BRow = .Row
      End If
      
      If .Col < .ColSel Then
        LCol = .Col
        RCol = .ColSel
      Else
        LCol = .ColSel
        RCol = .Col
      End If
      
      Dim i As Long
      Dim j As Long
      
      For i = TRow To BRow
        For j = LCol To RCol
        
          If .Cell(flexcpChecked, i, j) <> 0 Then
            Select Case viMethod
            Case 0      'チェック
                .Cell(flexcpChecked, i, j) = flexChecked
            
            Case 1      '解除
                .Cell(flexcpChecked, i, j) = flexUnchecked
            
            Case Else   '反転
                If .Cell(flexcpChecked, i, j) = flexChecked Then
                    .Cell(flexcpChecked, i, j) = flexUnchecked
                Else
                    .Cell(flexcpChecked, i, j) = flexChecked
                End If
            
            End Select
          
          End If
        Next
      Next
      
    End With
End Sub


