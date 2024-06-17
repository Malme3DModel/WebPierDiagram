Attribute VB_Name = "Global"
Option Explicit

Public Function gChkMarkGrid(ByRef rstrText As String, ByVal vlngChkCol As Long, ByVal vfaGrid As vsFlexGrid) As Long
    Dim Row As Long
    Dim strMark As String
    Dim intSharp As Integer
    
    With vfaGrid
        For Row = .FixedRows To .Rows - 1
            strMark = .TextMatrix(Row, vlngChkCol)
            intSharp = InStr(1, strMark, "#", vbTextCompare)
            
            If intSharp > 0 Then
                strMark = Left$(strMark, intSharp - 1)
                If strMark = Left$(rstrText, Len(strMark)) And IsNumeric(Mid$(rstrText, Len(strMark) + 1)) Then
                    gChkMarkGrid = Row
                    Exit Function
                End If
            End If
            
            If Trim$(.TextMatrix(Row, vlngChkCol)) = Trim$(rstrText) Then
                gChkMarkGrid = Row
                Exit Function
            End If
        Next
        
        gChkMarkGrid = .Rows
    End With
    
End Function

Public Sub gSetChgFlag(ByRef rstrFormName As String)

    Select Case UCase$(rstrFormName)
    Case "MDIForm_橋脚"
        gbolChgFlag(gcfrmMDIForm_橋脚) = True
    Case "frmKutai"
        gbolChgFlag(gcfrmKutai) = True
    Case "frmJHanryoku"
        gbolChgFlag(gcfrmJHanryoku) = True
    Case "frmJiban"
        gbolChgFlag(gcfrmJiban) = True
    Case "frmJKouzou"
        gbolChgFlag(gcfrmJKouzou) = True
    Case "frmKatamochi"
        gbolChgFlag(gcfrmKatamochi) = True
    Case "frmKisohaikin"
        gbolChgFlag(gcfrmKisohaikin) = True
    Case "frmKKouzou"
        gbolChgFlag(gcfrmKKouzou) = True
    Case "frmKuiHaichi"
        gbolChgFlag(gcfrmKuiHaichi) = True
    Case "frmRessha"
        gbolChgFlag(gcfrmRessha) = True
    Case "frmSekkei"
        gbolChgFlag(gcfrmSekkei) = True
    Case "frmSonota"
        gbolChgFlag(gcfrmSonota) = True
    Case "frmCalc"
        gbolChgFlag(gcfrmKeisan) = True
    End Select
    
    Call MDIForm_橋脚.ChgStatusBar(True)

End Sub

Public Sub gSetChgFlagByInkey(ByRef rstrFormName As String, ByVal vKeyCode As Integer)

    Select Case vKeyCode
        Case vbKeyBack, vbKeyDelete
            Call gSetChgFlag(rstrFormName)
        Case vbKeySpace
            Call gSetChgFlag(rstrFormName)
        
        Case vbKeyUp ', vbKeyPageUp
            
        Case vbKeyDown ', vbKeyPageDown
            
        Case vbKeyLeft ', vbKeyHome
        
        Case vbKeyRight ', vbKeyEnd
        
        Case vbKeyPageUp, vbKeyPageDown, vbKeyHome, vbKeyEnd
            
        Case Else
            Call gSetChgFlag(rstrFormName)
                
    End Select
    
End Sub

'Public gstrCancelBuf As String

'
'Public Function gNullDummyVal2(ByVal fa As vsFlexGrid, ByVal Row As Integer, ByVal Col As Integer, ByVal dtype As Byte) As Variant
''   Grid の内容が空白（未入力）の時、配列データ用にDummyのNULL値を入れた値を返す。
'    Dim bytTest As Byte
'    Dim intTest As Integer
'    Dim sngTest As Single
'
'    On Error GoTo ErrHandler
'
'    With fa
'        If Trim$(.TextMatrix(Row, Col) = "") Then 'Or Trim$(.TextMatrix(row, col)) = Chr$(13) Then
'            Select Case dtype
'                Case vtpByt  'byte
'                    gNullDummyVal2 = bytNull
'                Case vtpInt  'Integer
'                    gNullDummyVal2 = intNull%
'                Case vtpSng  'Single
'                    gNullDummyVal2 = sngNull!
'            End Select
'        Else
'            'オーバーフローを起こさないかどうか調べる
'            Select Case dtype
'                Case vtpByt  'byte
'                    bytTest = .ValueMatrix(Row, Col)
'                    gNullDummyVal2 = bytTest
'                Case vtpInt  'Integer
'                    intTest = .ValueMatrix(Row, Col)
'                    gNullDummyVal2 = intTest
'                Case vtpSng  'Single
'                    sngTest = .ValueMatrix(Row, Col)
'                    gNullDummyVal2 = sngTest
'            End Select
'
'        End If
'    End With
'
'    Exit Function
'
'ErrHandler:
'    If Err.Number <> 6 Then
'        Dim Msg As String
'        Msg = "ｴﾗｰ番号 " & Str(Err.Number) & vbCrLf & Err.Source & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
'
'        MsgBox Msg, , "ｴﾗｰ", Err.HelpFile, Err.HelpContext
'    End If
'
'    Select Case dtype
'    Case vtpByt  'byte
'        gNullDummyVal2 = bytNull
'    Case vtpInt  'Integer
'        gNullDummyVal2 = intNull%
'    Case vtpSng  'Single
'        gNullDummyVal2 = sngNull!
'    End Select
'
'End Function

'Public Function gNullCutStr(ByVal Data As Variant) As String
''   data配列用のDummyのNULL値を, Grid 用にNULLに置き換えて返す
'    If VarType(Data) = vbByte Then
'        If Data = bytNull Then
'            gNullCutStr = ""
'        Else
'            gNullCutStr = Format$(Data)
'        End If
'    ElseIf VarType(Data) = vbInteger Then
'        If Data = intNull Then
'            gNullCutStr = ""
'        Else
'            gNullCutStr = Format$(Data)
'        End If
'    ElseIf VarType(Data) = vbSingle Then
'        If Data = sngNull Then
'            gNullCutStr = ""
'        Else
'            gNullCutStr = Format$(Data)
'        End If
'    Else
'        gNullCutStr = ""
'    End If
'
'End Function


'''部材名をグループで数えて配列に格納
''Public Sub gSetBuzaiGroup()
''    Dim i As Integer
''    Dim intNum As Integer
''    Dim strBzName As String
''
''    'グループ数を数える
''    intNum = 0
''    strBzName = gClearStr(dtBzDanmen(0).strBuzaiName)
''
''    For i = 1 To iBzCount - 1
''        If gClearStr(dtBzDanmen(i).strBuzaiName) <> strBzName _
''            And gClearStr(dtBzDanmen(i).strBuzaiName) <> "" _
''        Then
''            intNum = intNum + 1
''            strBzName = gClearStr(dtBzDanmen(i + 1).strBuzaiName)
''        End If
''    Next
''
''    '最後のグループの処理
''    If strBzName <> "" Then
''        intNum = intNum + 1
''    End If
''
''    gintBuzaiGroupNum = intNum
''
''    '配列を確保し、部材名を代入する
''    ReDim gstrBuzaiGroupName(gintBuzaiGroupNum)
''
'''**********************************
'''作成途中（99/6/16 kit）
'''**********************************
''
''
''
'''    intNum = 0
'''    strBzName = gClearStr(dtBzDanmen(0).strBuzaiName)
'''
'''    For i = 1 To iBzCount - 1
'''        If gClearStr(dtBzDanmen(i).strBuzaiName) <> strBzName _
'''            And gClearStr(dtBzDanmen(i).strBuzaiName) <> "" _
'''        Then
'''            gstrBuzaiGroupName(intNum - 1) = strBzName
'''            intNum = intNum + 1
'''            strBzName = gClearStr(dtBzDanmen(i + 1).strBuzaiName)
'''        End If
'''    Next
'''
'''    '最後のグループの処理
'''    If strBzName <> "" Then
'''        intNum = intNum + 1
'''    End If
'''
'''
'''
'''
'''    intNum = 1
'''    i = 0
'''    gstrBuzaiGroupName(0) = ""
'''
'''    Do While (intNum < gintBuzaiGroupNum)
'''        strBzName = gClearStr(dtBzDanmen(i).strBuzaiName)
'''
'''        If strBzName <> gClearStr(gstrBuzaiGroupName(intNum - 1)) And strBzName <> "" Then
'''            gstrBuzaiGroupName(intNum - 1) = strBzName
'''            intNum = intNum + 1
'''        End If
'''
'''        i = i + 1
'''    Loop
''
''End Sub

Public Function gSetFixStr(ByVal vintID As Integer, ByRef rstrFixList() As String) As String
    
    vintID = vintID - 1
    
    If vintID > UBound(rstrFixList, 1) Or vintID < 0 Then
        gSetFixStr = ""
        Exit Function
    End If

    gSetFixStr = Trim$(rstrFixList(vintID))

End Function

Public Function gGetFixStrID(rstrCellStr As String, ByRef rstrFixList() As String) As Integer
    Dim i As Integer
    Dim max As Integer
    
    max = UBound(rstrFixList, 1)
    
    For i = 0 To max
        If Trim$(rstrCellStr) = Trim$(rstrFixList(i)) Then
            gGetFixStrID = i + 1
            Exit Function
        End If
    Next

    gGetFixStrID = -1

End Function

Public Function gChgCheckToByte(ByVal vintChkBoxValue As Integer)
    If vintChkBoxValue = flexChecked Then gChgCheckToByte = 1 Else gChgCheckToByte = 0
End Function

Public Function gChgByteToCheck(rbytVal As Byte)
    If rbytVal = 1 Then gChgByteToCheck = flexChecked Else gChgByteToCheck = flexUnchecked
End Function

Public Function gLongFileNameCut(ByRef rstrFileName As String) As String
    Dim intLeftEnd As Integer
    Dim intRightStart As Integer
    Dim intYenNum As Integer
    Dim i As Integer
    
    gLongFileNameCut = rstrFileName
    
    If Len(rstrFileName) < 48 Then Exit Function
    
    '￥マークの個数をチェックして真中あたりを省略する
    i = 0
    intYenNum = 0
    Do While True
        i = InStr(i + 1, rstrFileName, "\")
        If i = 0 Then Exit Do
        
        intYenNum = intYenNum + 1
        If intYenNum = 2 Then intLeftEnd = i
    Loop
    
    If intYenNum < 5 Then Exit Function
    
    intYenNum = 0
    intRightStart = 0
    For i = Len(rstrFileName) To 1 Step -1
        If i = InStr(i, rstrFileName, "\") Then
            intYenNum = intYenNum + 1
            If intYenNum = 2 Then Exit For
        End If
    Next
    
    intRightStart = i
    
    gLongFileNameCut = Left$(rstrFileName, intLeftEnd) & "..." & Mid$(rstrFileName, intRightStart)

End Function

Public Sub g日本語入力_ON(ByVal fa As vsFlexGrid)
   Dim lngIMCHandle As Long
   Dim lngIMEnMode As Long
   Dim lngRetValue As Long
'
    'IMEﾓｰﾄﾞ ← ON のセット
    lngIMEnMode = 1
    'IMEのContextリソースを取得
    lngIMCHandle = ImmGetContext(fa.hwnd)
    'IMEのﾓｰﾄﾞ変更
    lngRetValue = ImmSetOpenStatus(lngIMCHandle, lngIMEnMode)
    '取得したContextリソースを開放
    lngRetValue = ImmReleaseContext(fa.hwnd, lngIMCHandle)
End Sub
'
Public Sub g日本語入力_OFF(ByVal fa As vsFlexGrid)
   Dim lngIMCHandle As Long
   Dim lngIMEnMode As Long
   Dim lngRetValue As Long
   '
    'IMEﾓｰﾄﾞ ← OFF のセット
'    lngIMEnMode = 0
    'IMEのContextリソースを取得
    lngIMCHandle = ImmGetContext(fa.hwnd)
    'IMEのﾓｰﾄﾞ変更
'    lngRetValue = ImmSetOpenStatus(lngIMCHandle, lngIMEnMode)
    lngRetValue = ImmSetOpenStatus(lngIMCHandle, 0)
    '取得したContextリソースを開放
    lngRetValue = ImmReleaseContext(fa.hwnd, lngIMCHandle)
End Sub

'文字列を先頭から調べ、数字が始る位置を返す。数字がなかったら 文字列の長さ＋１ を返す。
Public Function gGetStrNumberStart(ByRef rstrval As String) As Integer
    Dim i As Integer
    Dim intLength As Integer
    
    intLength = Len(rstrval)
    
    For i = 1 To intLength
        If IsNumeric(Mid$(rstrval, i, 1)) = True Then
            gGetStrNumberStart = i
            Exit Function
        End If
    Next
    
    gGetStrNumberStart = intLength + 1

End Function

'文字列から値に変換。文字列がヌルなら0を返す（旧仕様：文字列がヌルなら gcsngNullVal(-9E9) を返す）
Public Function gStrToSng(ByRef rstrval As String) As Single
    
    If IsNumeric(rstrval) = False Then
        gStrToSng = 0#  'gcsngNullVal
    Else
        gStrToSng = Val(delcomma(rstrval))
    End If

End Function

'文字列から値に変換。文字列がヌルなら0を返す（旧仕様：文字列がヌルなら gcsngNullVal(-9E9) を返す）
Public Function gStrToDbl(ByRef rstrval As String) As Double
    
    If IsNumeric(rstrval) = False Then
        gStrToDbl = 0# 'gcsngNullVal
    Else
        gStrToDbl = Val(delcomma(rstrval))
    End If

End Function

Public Function gmyStrToInt(ByRef rstrValStr As String) As Integer
    On Error GoTo ErrorHandler
    
    gmyStrToInt = Val(delcomma(rstrValStr))
    Exit Function

ErrorHandler:
    gmyStrToInt = 0
        
End Function
'文字列から値に変換。文字列がヌルなら-9E9を返す
'（旧仕様：文字列がヌルなら gcsngNullVal(-9E9) を返す）
'現在はヌル値が必要な時は個別に対応している
Public Function gStrFoSng(ByRef rstrval As String) As Single
    
    If IsNumeric(rstrval) = False Then
        gStrFoSng = gcsngNullVal
    Else
        gStrFoSng = Val(delcomma(rstrval))
    End If

End Function

Public Function delcomma(rstrval) As String
    Dim i As Integer
    Dim tmp As String
    tmp = rstrval
    i = InStr(tmp, ",")
    Do While i > 0
        tmp = Left(tmp, i - 1) & Mid(tmp, i + 1)
        i = InStr(tmp, ",")
    Loop
    delcomma = tmp
End Function

'文字列中にカンマ "," があるか調べる
'カンマがある場合は 0 以外を返す
'カンマがない場合は 0 を返す
Public Function ChkComma(ByRef rstrval As String) As Integer
    Dim i As Integer
    
    i = InStr(rstrval, ",")
    ChkComma = i
End Function

'エラーメッセージを表示する
Public Sub gPutErrDescription(ByRef rErrObj As ErrObject, Optional ByRef rsMsg As String = "")
    Call MsgBox(Err.Description & vbCrLf & "(Error " & Err.Number & ")" & vbCrLf & rsMsg, vbOKOnly + vbCritical, App.Title)

End Sub

'single値を文字列変換して比較する（同じなら true）
'viLimit    小数点以下桁数
Public Function gIsEqualSng(ByRef rfVal1 As Single, ByRef rfVal2 As Single, Optional ByVal viLimit As Integer = 3) As Boolean
    Dim sFormat As String
    
    If viLimit < 1 Or viLimit > 30 Then viLimit = 30
    
    sFormat = "0." & String$(viLimit, "0")
    
    If Format$(rfVal1, sFormat) = Format$(rfVal2, sFormat) Then gIsEqualSng = True Else gIsEqualSng = False
    
End Function

'テキストボックスなどで次へ移動する処理
Public Sub gSetFocusNextTab(ByRef rKeyAscii As Integer)
    If rKeyAscii = vbKeyReturn Then
        rKeyAscii = 0
        SendKeys "{TAB}", True  'ホントは Sendkeys はあまり望ましくない・・・
    End If
    
End Sub

'テキストボックスでフォーカス取得時に全選択する処理
Public Sub gSelectAllText(ByVal vForm As Form)
    Dim txtTemp As TextBox
    Set txtTemp = vForm.ActiveControl
    
    With txtTemp
        .SelStart = 0
        .SelLength = Len(.TEXT)
    End With

End Sub
