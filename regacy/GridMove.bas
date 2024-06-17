Attribute VB_Name = "GridMove"
'**************************************************************
'vsFlexGrid用　入力画面作成ライブラリ - GridMove.bas
'99/10/23 kit 作成
'**************************************************************

Option Explicit

Public Const gcstrAtrNull As String = ""
Public Const gcstrAtrFixCell As String = "F"


'========================================================
'移動後のセルにこれらの属性があったら発動
'～Next～：前移動のときのみチェック
'～Back～：後ろ移動のときのみチェック
'
'Axxxは整数で移動先の行、列番号を表す（必ず3桁）
Public Const gcstrAtrNextCol As String = "A"
Public Const gcstrAtrNextRow As String = "C"
Public Const gcstrAtrBackCol As String = "B"
Public Const gcstrAtrBackRow As String = "D"
'========================================================




'========================================================
'各フォームで特殊な動作をさせるためのフラグ
'設定したセルでリターンキーを押すと発動する
'========================================================
'Oxxのようにして、xxに整数でIDを指定する
'必ず二桁で基本的に5以上（5なら"05"）を指定すること（1～4は予約されている）
Public Const gcstrAtrSpecialMove As String = "O"

'Xxxxのようにして、xxxに整数でRow(Col)の移動先を指定する
Public Const gcstrAtrJumpAbsRow As String = "X"
Public Const gcstrAtrJumpAbsCol As String = "Y"

'Xxxx or X-xxのようにして、xxx(xx)に整数でRow(Col)の増分を指定する
Public Const gcstrAtrJumpVRow As String = "V"
Public Const gcstrAtrJumpVCol As String = "W"
'========================================================





'ヒントチップの色がついたセル
Public Const gcstrAtrToolColor As String = "E"
'固定セルの色がついたセル（色のみ）
Public Const gcstrAtrFixColor As String = "G"
'青い色がついたセル
Public Const gcstrAtrSendanColor As String = "S"

Public Const gclngSendanColor As Long = 16770790     'rgb(230,230,255)

Public Const gcintAtrIsNone As Integer = -1

'ハイライト色
Public Const gclngHighLightColor As Long = vbGreen

'次のコントロールへのフォーカス移動に用いる
Dim gintMaxCtrl As Integer
Public gintCurCtrl As Integer

'スクロールバーのサイズ
Public gintScrbarSize As Integer

'機　能 ：  Grid の幅を正しく設定する。
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           vlngCols        表示する列数
Public Sub gfaAjustWidth(ByVal vfaTarget As vsFlexGrid, ByVal vlngCols As Long)
    Dim w As Long
    Dim i As Integer
    
    With vfaTarget
        w = 0
        For i = 0 To vlngCols - 1
            w = w + .ColWidth(i)
        Next i
        .Width = w + 80             ' 3D影の幅
    End With
End Sub

'機　能 ：  Grid の高さを正しく設定する。
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           vlngRows        表示する行数
Public Sub gfaAjustHeight(ByVal vfaTarget As vsFlexGrid, ByVal vlngRows As Long)
    Dim h As Long
    Dim i As Integer
    
    With vfaTarget
        h = 0
        For i = 0 To vlngRows - 1
            h = h + .RowHeight(i)
        Next i
        .Height = h + 80             ' 3D影の幅
    End With
End Sub

'機　能 ：  Grid の大きさを正しく設定する。
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
Public Sub gfaAjustSize(ByVal vfaTarget As vsFlexGrid)
    
    Call gfaAjustHeight(vfaTarget, vfaTarget.rows)
    Call gfaAjustWidth(vfaTarget, vfaTarget.Cols)
    
End Sub

'機　能 ：  Grid の大きさを設定する（サイズ指定）。スクロールバー付のグリッド用
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           vlngRows        表示する行数
'           vlngCols        表示する列数
'           vintScrbar      スクロールバーの種類(0:無し 1:横 2:縦 3:両方）
Public Sub gfaAjustSizeScr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRows As Long, ByVal vlngCols As Long, ByVal vintScrbar As Integer)
    
    Call gfaAjustHeight(vfaTarget, vlngRows)
    Call gfaAjustWidth(vfaTarget, vlngCols)
    
    Select Case vintScrbar
    Case 1  '横スクロールバー付加
        vfaTarget.Height = vfaTarget.Height + gintScrbarSize
    Case 2  '縦スクロールバー付加
        vfaTarget.Width = vfaTarget.Width + gintScrbarSize
    Case 3  '縦横スクロールバー付加
        vfaTarget.Height = vfaTarget.Height + gintScrbarSize
        vfaTarget.Width = vfaTarget.Width + gintScrbarSize
    End Select
    
End Sub

'機　能 ：  カレントセルを表示枠内に表示する
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
Public Sub gfaPutCurCell(ByVal vfaTarget As vsFlexGrid)
    Dim lngDummy As Long

    lngDummy = vfaTarget.CellTop
    
End Sub

'機　能 ：  次に行くべきセルに移動する
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           rRow,rCol       現在の座標を入れる｡移動先を返す
'           vKeyCode        移動に使うキーコード
'           rbolVirtical    True で 縦移動
'返却値 ：  次のグリッドを移動したら1、前のグリッドに移動したら2、
'           通常は0を、編集にうつるなら3を返す。移動をGridコントロールまかせるなら4を返す｡
Public Function gfaMoveCell(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, ByRef rbolVirtical, ByVal faNext As vsFlexGrid, ByVal faBack As vsFlexGrid) As Integer
    
    gfaMoveCell = gfaGetNext(vfaTarget, rRow, RCol, rKeyCode, rbolVirtical)
    On Error GoTo SysInfoErr
    Select Case gfaMoveCell
    Case 1
        With faNext
            .Select .FixedRows, .FixedCols
            .SetFocus
            Call gfaPutCurCell(faNext)
        End With
        
    Case 2
        With faBack
            .Select .rows - 1, .Cols - 1
            .SetFocus
            Call gfaPutCurCell(faBack)
        End With
    End Select
    Exit Function
SysInfoErr:

End Function

'機　能 ：  移動先の座標を取得する
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           rRow,rCol       現在の座標を入れる｡移動先を返す
'           rKeyCode        移動に使うキーコード
'           rbolVirtical    True で 縦移動
'返却値 ：  グリッドの最後のセルなら1、最初のセルなら2、
'           通常は0､編集にうつるなら3を返す｡移動をGridコントロールまかせるなら4を返す｡
Public Function gfaGetNext(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, ByRef rbolVirtical) As Integer
    
    With vfaTarget
        Select Case rKeyCode
            Case vbKeyBack
                .TextMatrix(rRow, RCol) = ""
                If rbolVirtical Then gfaGetNext = faGetBackCellV(vfaTarget, rRow, RCol, rKeyCode) Else gfaGetNext = faGetBackCellH(vfaTarget, rRow, RCol, rKeyCode)
                
            Case vbKeyDelete
                .TextMatrix(rRow, RCol) = ""
                rKeyCode = 0
            
            Case vbKeyReturn
                Dim res(4) As Integer
                res(0) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrSpecialMove)
                res(1) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpAbsRow)
                res(2) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpAbsCol)
                res(3) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpVRow)
                res(4) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpVCol)
                
                If res(0) = gcintAtrIsNone And res(1) = gcintAtrIsNone And res(2) = gcintAtrIsNone And res(3) = 0 And res(4) = 0 Then
                    If rbolVirtical Then gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode) Else gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
                Else
                    gfaGetNext = 0
                    
                    '特殊移動属性を調べる
                    If res(0) <> gcintAtrIsNone Then gfaGetNext = res(0)
                    If res(1) <> gcintAtrIsNone Then rRow = res(1)
                    If res(2) <> gcintAtrIsNone Then RCol = res(2)
                        
                    rRow = rRow + res(3)
                    RCol = RCol + res(4)
                End If
                rKeyCode = 0
            
            Case vbKeySpace
                .TextMatrix(rRow, RCol) = ""
                If rbolVirtical Then gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode) Else gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
            
            Case vbKeyUp ', vbKeyPageUp
                gfaGetNext = faGetBackCellV(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
                
            Case vbKeyDown ', vbKeyPageDown
                gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
                
            Case vbKeyLeft ', vbKeyHome
                gfaGetNext = faGetBackCellH(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
            
            Case vbKeyRight ', vbKeyEnd
                gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
            
            Case vbKeyPageUp, vbKeyPageDown, vbKeyHome, vbKeyEnd
                gfaGetNext = 4
                
            Case 220 '="\"
                If rbolVirtical = False Then
                    If rRow > .FixedRows Then
                        If Trim$(.ColFormat(RCol)) = "" Or Trim$(.TextMatrix(rRow - 1, RCol)) = "" Then
                            .TextMatrix(rRow, RCol) = .TextMatrix(rRow - 1, RCol)
                        Else
                            .TextMatrix(rRow, RCol) = Format$(val(.TextMatrix(rRow - 1, RCol)), .ColFormat(RCol))
                        End If
                        gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
                    Else
                        gfaGetNext = 4
                        rKeyCode = 0
                    End If
                Else
                    If RCol > .FixedCols Then
                        'If Trim(.Cell(flexcpTextStyle, rRow, rCol, rRow, rCol)) = "" Then
                            .TextMatrix(rRow, RCol) = .TextMatrix(rRow, RCol - 1)
                        'Else
                        '    .TextMatrix(rRow, rCol) = Format$(Val(.TextMatrix(rRow, rCol - 1)), .Cell(flexcpTextStyle, rRow, rCol, rRow, rCol))
                        'End If
                        gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode)
                    Else
                        gfaGetNext = 4
                        rKeyCode = 0
                    End If
                End If
                
            Case Else
                gfaGetNext = 3
                .EditCell
                    
        End Select
    End With
    
End Function

'機　能 ：  次に行くべき座標を取得する（基本は水平移動）
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           rRow,rCol       現在の座標を入れる｡移動先を返す
'           rKeyCode        移動に使うキーコード
'           rbolFirstCall   内部で用いる初回呼び出しかどうかを判定するフラグ（通常は指定しない）    ※現在は使っていない
'返却値 ：  グリッドの最後のセルなら1、通常は0を返す
Private Function faGetNextCellH(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngCol As Long
    Dim intChgRow As Integer
    Dim bolLastCell As Boolean
    
    With vfaTarget
        faGetNextCellH = 0
        
        If rRow = .rows - 1 And RCol = .Cols - 1 Then bolLastCell = True Else bolLastCell = False
        
        '改行をするかどうか調べる
        If RCol < .Cols - 1 Then
            RCol = RCol + 1
            intChgRow = 0
        Else
            intChgRow = 1
        End If
            
        '改行処理
        Select Case intChgRow
        Case 1
            '通常改行
            If rRow < .rows - 1 Then
                RCol = .FixedCols
                rRow = rRow + 1
            Else
'                If gfaChkCellAtr(vfaTarget, rRow, rCol, gcstrAtrNextCol) <> gcintAtrIsNone And rbolFirstCall = True Then
'                    Call faGetBackCellH(vfaTarget, rRow, rCol, rKeyCode, False)
'                End If
                
                If bolLastCell = True Then faGetNextCellH = 1
                
                Exit Function
            End If
        End Select
         
        '移動先の属性を調べて、再帰的に作用させる
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetNextCellH = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode, rbolFirstCall)
    
    End With

End Function

'機　能 ：  一つ戻った場合の座標を取得する（基本は水平移動）
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           rRow,rCol       現在の座標を入れる｡移動先を返す
'           rKeyCode        移動に使うキーコード
'           rbolFirstCall   内部で用いる初回呼び出しかどうかを判定するフラグ（通常は指定しない）        ※現在は使っていない
'返却値 ：  グリッドの最初のセルなら2、通常は0を返す
Private Function faGetBackCellH(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngCol As Long
    Dim intChgRow As Integer
    Dim bolFirstCell As Boolean
    
    With vfaTarget
        faGetBackCellH = 0
        
        If rRow = .FixedRows And RCol = .FixedCols Then bolFirstCell = True Else bolFirstCell = False
        
        '改行をするかどうか調べる
        If RCol > .FixedCols Then
            RCol = RCol - 1
            intChgRow = 0
        Else
            intChgRow = 1
        End If
        
        '改行処理
        Select Case intChgRow
        Case 1
            '通常改行
            If rRow > .FixedRows Then
                RCol = .Cols - 1
                rRow = rRow - 1
            Else
'                If gfaChkCellAtr(vfaTarget, rRow, rCol, gcstrAtrFixCell) <> gcintAtrIsNone And rbolFirstCall = True Then
'                    Call faGetNextCellH(vfaTarget, rRow, rCol, rKeyCode, False)
'                End If
                
                If bolFirstCell = True Then faGetBackCellH = 2
                
                Exit Function
            End If
                
        End Select
        
        '移動先の属性を調べて、再帰的に作用させる
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetBackCellH = faGetBackCellH(vfaTarget, rRow, RCol, rKeyCode)
    
    End With

End Function

'機　能 ：  次に行くべき座標を取得する（基本は垂直移動）
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           rRow,rCol       現在の座標を入れる｡移動先を返す
'           rKeyCode        移動に使うキーコード
'           rbolFirstCall   内部で用いる初回呼び出しかどうかを判定するフラグ（通常は指定しない）    ※現在は使っていない
'返却値 ：  グリッドの最後のセルなら1、通常は0を返す
Private Function faGetNextCellV(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngRow As Long
    Dim intChgCol As Integer
    Dim bolLastCell As Boolean
    Dim intRetVal As Integer
    
    With vfaTarget
        faGetNextCellV = 0
        
        If rRow = .rows - 1 And RCol = .Cols - 1 Then bolLastCell = True Else bolLastCell = False
        
        '改行をするかどうか調べる
        If rRow < .rows - 1 Then
            rRow = rRow + 1
            intChgCol = 0
        Else
            intChgCol = 1
        End If
        
        '改行処理
        Select Case intChgCol
        Case 1
            '通常改行
            If RCol < .Cols - 1 Then
                RCol = RCol + 1
                rRow = .FixedRows
            Else
                If bolLastCell = True Then faGetNextCellV = 1
                
                Exit Function
            End If
        End Select
         
        '移動先の属性を調べて、再帰的に作用させる
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetNextCellV = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode, rbolFirstCall)
    
    End With

End Function

'機　能 ：  一つ戻った場合の座標を取得する（基本は垂直移動）
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           rRow,rCol       現在の座標を入れる｡移動先を返す
'           rKeyCode        移動に使うキーコード
'           rbolFirstCall   内部で用いる初回呼び出しかどうかを判定するフラグ（通常は指定しない）        ※現在は使っていない
'返却値 ：  グリッドの最初のセルなら2、通常は0を返す
Private Function faGetBackCellV(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngRow As Long
    Dim intChgCol As Integer
    Dim bolFirstCell As Boolean
    
    With vfaTarget
        faGetBackCellV = 0
        
        If rRow = .FixedRows And RCol = .FixedCols Then bolFirstCell = True Else bolFirstCell = False
        
        '改行をするかどうか調べる
        If rRow > .FixedRows Then
            rRow = rRow - 1
            intChgCol = 0
        Else
            intChgCol = 1
        End If
        
        '改行処理
        Select Case intChgCol
        Case 1
            '通常改行
            If RCol > .FixedCols Then
                RCol = RCol - 1
                rRow = .rows - 1
            Else
                If bolFirstCell = True Then faGetBackCellV = 2
                
                Exit Function
            End If
        End Select
        
        '移動先の属性を調べて、再帰的に作用させる
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetBackCellV = faGetBackCellV(vfaTarget, rRow, RCol, rKeyCode)
    
    End With

End Function

Public Sub gFocusSetNextCtrl(Ctrl() As Control)
    gintCurCtrl = gintCurCtrl + 1
    
    If gintCurCtrl = gintMaxCtrl Then gintCurCtrl = 0
    
    Ctrl(gintCurCtrl).SetFocus

End Sub

Public Sub gFocusSetBackCtrl(Ctrl() As Control)
    gintCurCtrl = gintCurCtrl - 1
    
    If gintCurCtrl = -1 Then gintCurCtrl = gintMaxCtrl - 1
    
    Ctrl(gintCurCtrl).SetFocus

End Sub

Public Sub gFocusInit(ByVal vintMaxCtrl As Integer, Ctrl() As Control)
    gintCurCtrl = 0
    gintMaxCtrl = vintMaxCtrl
    
'    Ctrl(gintCurCtrl).SetFocus

End Sub

Public Sub gFocusSetCur(ByVal vintCurCtrl As Integer)
    gintCurCtrl = vintCurCtrl
    
End Sub


'￥キーを押した際の一行上の文字列取得関数
Public Function gfaGetYenString(ByVal vfaTarget As vsFlexGrid, ByRef rstrRetVal As String) As Boolean
    With vfaTarget
        If .Row <= .FixedRows Then
            gfaGetYenString = False
        Else
            If .Cell(flexcpChecked, .Row - 1, .Col) <> 0 Then
                .Cell(flexcpChecked, .Row, .Col) = .Cell(flexcpChecked, .Row - 1, .Col)
                gfaGetYenString = False
            Else
                rstrRetVal = .TextMatrix(.Row - 1, .Col)
                gfaGetYenString = True
            End If
        End If
        
    End With
End Function

'機　能 ：  ￥キーを押した際の一行上の文字列取得関数
'           進入禁止セル対応
'引　数 ：  vfaTarget       操作対象となる vsFlexGrid オブジェクト
'           bolSplit        trueで一行とばし
'返り値 ：  呼び出し元でセルを更新する必要がある場合に True
'           引数の rstrRetVal に取得した文字列をセットする
Public Function gfaGetYenStringChkData(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow As Long, ByRef rstrRetVal As String, ByRef rbolSplit As Boolean) As Boolean
    Dim intVRow As Integer
    
    If rbolSplit = True Then intVRow = 2 Else intVRow = 1
    
    With vfaTarget
        If vlngRow <= .FixedRows Then
            gfaGetYenStringChkData = False
        Else
            'チェックボックスだったら
            If .Cell(flexcpChecked, vlngRow, .Col) <> 0 Then
                Dim i As Integer
                Dim lngSRow As Long
                
                lngSRow = vlngRow
                
                'ループで処理する
                Do While True
                    If gfaChkCellAtr(vfaTarget, vlngRow - intVRow, .Col, gcstrAtrFixCell) = gcintAtrIsNone Then
                        Exit Do
                    End If
                    
                    vlngRow = vlngRow - intVRow
                    
                    If vlngRow <= .FixedRows Then
                        gfaGetYenStringChkData = False
                        Exit Function
                    End If
                Loop
                
                .Cell(flexcpChecked, lngSRow, .Col) = .Cell(flexcpChecked, vlngRow - intVRow, .Col)
                gfaGetYenStringChkData = False
            
            ElseIf gfaChkCellAtr(vfaTarget, vlngRow - intVRow, .Col, gcstrAtrFixCell) <> gcintAtrIsNone Then
                '再帰で処理する
                gfaGetYenStringChkData = gfaGetYenStringChkData(vfaTarget, vlngRow - intVRow, rstrRetVal, rbolSplit)
            Else
                rstrRetVal = .TextMatrix(vlngRow - intVRow, .Col)
                gfaGetYenStringChkData = True
            End If
        End If
        
    End With
End Function

'.Cell(flexcpData,･･･）を調べて各種属性があるかを判定する
Public Function gfaChkCellAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow, ByVal vlngCol, ByRef rstrChkAtr As String) As Integer
    Dim X As Integer

    Select Case rstrChkAtr
    Case gcstrAtrFixCell
        If InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare) <> 0 Then gfaChkCellAtr = 0 Else gfaChkCellAtr = gcintAtrIsNone
    Case gcstrAtrNextCol, gcstrAtrBackCol, gcstrAtrNextRow, gcstrAtrBackRow, gcstrAtrSpecialMove
        X = InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare)
        If X <> 0 Then
            gfaChkCellAtr = val(Mid$(vfaTarget.Cell(flexcpData, vlngRow, vlngCol), X + 1, 2))
        Else
            gfaChkCellAtr = gcintAtrIsNone
        End If
    
    Case gcstrAtrJumpAbsRow, gcstrAtrJumpAbsCol
        X = InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare)
        If X <> 0 Then
            gfaChkCellAtr = val(Mid$(vfaTarget.Cell(flexcpData, vlngRow, vlngCol), X + 1, 3))
        Else
            gfaChkCellAtr = gcintAtrIsNone
        End If

    Case gcstrAtrJumpVRow, gcstrAtrJumpVCol
        X = InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare)
        If X <> 0 Then
            gfaChkCellAtr = val(Mid$(vfaTarget.Cell(flexcpData, vlngRow, vlngCol), X + 1, 3))
        Else
            gfaChkCellAtr = 0
        End If

    Case Else
        If InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare) <> 0 Then gfaChkCellAtr = 0 Else gfaChkCellAtr = gcintAtrIsNone
    End Select
    
End Function

'.Cell(flexcpData,･･･）に各種属性を追加設定する
Public Sub gfaAddCellAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow1 As Long, ByVal vlngCol1 As Long, ByRef rstrSetAtr As String)
    Dim i As Long
    Dim j As Long
    
    With vfaTarget
        .Cell(flexcpData, vlngRow1, vlngCol1) = .Cell(flexcpData, vlngRow1, vlngCol1) & rstrSetAtr
        
        '色変化
        Call gfaSetAtrColor(vfaTarget, vlngRow1, vlngCol1, vlngRow1, vlngCol1, rstrSetAtr)
    
    End With
End Sub

'.Cell(flexcpData,･･･）に各種属性を追加設定する
Public Sub gfaAddRectAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow1 As Long, ByVal vlngCol1 As Long, ByVal vlngRow2 As Long, ByVal vlngCol2 As Long, ByRef rstrSetAtr As String)
    Dim i As Long
    Dim j As Long
    
    With vfaTarget
        For i = vlngRow1 To vlngRow2
            For j = vlngCol1 To vlngCol2
                .Cell(flexcpData, i, j) = .Cell(flexcpData, i, j) & rstrSetAtr
            Next
        Next
        
        '色変化
        Call gfaSetAtrColor(vfaTarget, vlngRow1, vlngCol1, vlngRow2, vlngCol2, rstrSetAtr)
    
    End With
End Sub

'.Cell(flexcpData,･･･）に各種属性を追加設定する
Public Sub gfaAddRowAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow As Long, ByRef rstrSetAtr As String)
    
    With vfaTarget
        Call gfaAddRectAtr(vfaTarget, vlngRow, .FixedCols, vlngRow, .Cols - 1, rstrSetAtr)
    End With
    
End Sub

'.Cell(flexcpData,･･･）に各種属性を追加設定する
Public Sub gfaAddColAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngCol As Long, ByRef rstrSetAtr As String)
    
    With vfaTarget
        Call gfaAddRectAtr(vfaTarget, .FixedRows, vlngCol, .rows - 1, vlngCol, rstrSetAtr)
    End With
    
End Sub

'LeaveCellなどで元の色を復帰する
Public Sub gfaSetCellColor(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow As Long, ByVal vlngCol As Long)

    If gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrFixCell) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrFixCell)
    ElseIf gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrFixColor) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrFixColor)
    ElseIf gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrToolColor) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrToolColor)
    ElseIf gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrSendanColor) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrSendanColor)
    Else
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrNull)
    End If
    
End Sub

'属性値ごとの色を付ける
Public Sub gfaSetAtrColor(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow1 As Long, ByVal vlngCol1 As Long, ByVal vlngRow2 As Long, ByVal vlngCol2 As Long, ByRef rstrAtr As String)
    Dim lngColor As Long
    
    With vfaTarget
        
        Select Case rstrAtr
        Case gcstrAtrFixCell
            lngColor = vbButtonFace
        Case gcstrAtrFixColor
            lngColor = vbButtonFace
        Case gcstrAtrToolColor
            lngColor = vbInfoBackground
        Case gcstrAtrSendanColor
            lngColor = gclngSendanColor
        Case Else
            lngColor = RGB(0, 0, 0)
        End Select
    
        .Cell(flexcpBackColor, vlngRow1, vlngCol1, vlngRow2, vlngCol2) = lngColor
    
    End With

End Sub

Public Sub gMakeTabOrder(ByVal TargetForm As Form, _
    ByVal intGridNum As Integer, ByRef Grid() As Object, _
    ByRef intBack() As Integer, ByRef intNext() As Integer)
    
    '各グリッドコントロールのTabIndexを調べる
    Dim MyControl
    Dim MyCtrlName As String, MyCtrlVisible As Boolean
    Dim intTabIndex() As Integer, intOrder() As Integer
    Dim i As Integer, j As Integer, T As Integer
    Dim intNumCtrl As Integer
    
    ReDim intTabIndex(intGridNum - 1), intOrder(intGridNum - 1)
    
    i = 0
    For Each MyControl In TargetForm.Controls    ' コントロールの各要素に対して繰り返します。
        MyCtrlName = MyControl.Name
        MyCtrlVisible = MyControl.Visible
        If Left(MyCtrlName, 2) = "fa" And MyCtrlVisible = True Then     '頭2文字が"fa"でVisibleになっているグリッドのみ配列に入る
            MyControl.Tag = i
            Set Grid(i) = MyControl
            intTabIndex(i) = MyControl.TabIndex
            intOrder(i) = i
            i = i + 1
        End If
    Next
    intNumCtrl = i
    
    'TabIndexの小さい順に並べ替える
    For i = 0 To intNumCtrl - 1
        For j = intNumCtrl - 1 To i + 1 Step -1
            If intTabIndex(intOrder(j)) < intTabIndex(intOrder(j - 1)) Then
                T = intOrder(j): intOrder(j) = intOrder(j - 1): intOrder(j - 1) = T
            End If
        Next
    Next
    
    'intBack,intNextに前後のグリッド番号を設定する
    For i = 0 To intNumCtrl - 1
        j = intOrder(i)
        Select Case i
        Case 0
            intBack(j) = intOrder(intNumCtrl - 1)
            intNext(j) = intOrder(i + 1)
        Case intNumCtrl - 1
            intBack(j) = intOrder(i - 1)
            intNext(j) = intOrder(0)
        Case Else
            intBack(j) = intOrder(i - 1)
            intNext(j) = intOrder(i + 1)
        End Select
    Next

End Sub



