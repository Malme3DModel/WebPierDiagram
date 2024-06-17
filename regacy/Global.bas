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
    Case "MDIForm_���r"
        gbolChgFlag(gcfrmMDIForm_���r) = True
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
    
    Call MDIForm_���r.ChgStatusBar(True)

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
''   Grid �̓��e���󔒁i�����́j�̎��A�z��f�[�^�p��Dummy��NULL�l����ꂽ�l��Ԃ��B
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
'            '�I�[�o�[�t���[���N�����Ȃ����ǂ������ׂ�
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
'        Msg = "�װ�ԍ� " & Str(Err.Number) & vbCrLf & Err.Source & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
'
'        MsgBox Msg, , "�װ", Err.HelpFile, Err.HelpContext
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
''   data�z��p��Dummy��NULL�l��, Grid �p��NULL�ɒu�������ĕԂ�
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


'''���ޖ����O���[�v�Ő����Ĕz��Ɋi�[
''Public Sub gSetBuzaiGroup()
''    Dim i As Integer
''    Dim intNum As Integer
''    Dim strBzName As String
''
''    '�O���[�v���𐔂���
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
''    '�Ō�̃O���[�v�̏���
''    If strBzName <> "" Then
''        intNum = intNum + 1
''    End If
''
''    gintBuzaiGroupNum = intNum
''
''    '�z����m�ۂ��A���ޖ���������
''    ReDim gstrBuzaiGroupName(gintBuzaiGroupNum)
''
'''**********************************
'''�쐬�r���i99/6/16 kit�j
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
'''    '�Ō�̃O���[�v�̏���
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
    
    '���}�[�N�̌����`�F�b�N���Đ^����������ȗ�����
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

Public Sub g���{�����_ON(ByVal fa As vsFlexGrid)
   Dim lngIMCHandle As Long
   Dim lngIMEnMode As Long
   Dim lngRetValue As Long
'
    'IMEӰ�� �� ON �̃Z�b�g
    lngIMEnMode = 1
    'IME��Context���\�[�X���擾
    lngIMCHandle = ImmGetContext(fa.hwnd)
    'IME��Ӱ�ޕύX
    lngRetValue = ImmSetOpenStatus(lngIMCHandle, lngIMEnMode)
    '�擾����Context���\�[�X���J��
    lngRetValue = ImmReleaseContext(fa.hwnd, lngIMCHandle)
End Sub
'
Public Sub g���{�����_OFF(ByVal fa As vsFlexGrid)
   Dim lngIMCHandle As Long
   Dim lngIMEnMode As Long
   Dim lngRetValue As Long
   '
    'IMEӰ�� �� OFF �̃Z�b�g
'    lngIMEnMode = 0
    'IME��Context���\�[�X���擾
    lngIMCHandle = ImmGetContext(fa.hwnd)
    'IME��Ӱ�ޕύX
'    lngRetValue = ImmSetOpenStatus(lngIMCHandle, lngIMEnMode)
    lngRetValue = ImmSetOpenStatus(lngIMCHandle, 0)
    '�擾����Context���\�[�X���J��
    lngRetValue = ImmReleaseContext(fa.hwnd, lngIMCHandle)
End Sub

'�������擪���璲�ׁA�������n��ʒu��Ԃ��B�������Ȃ������� ������̒����{�P ��Ԃ��B
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

'�����񂩂�l�ɕϊ��B�����񂪃k���Ȃ�0��Ԃ��i���d�l�F�����񂪃k���Ȃ� gcsngNullVal(-9E9) ��Ԃ��j
Public Function gStrToSng(ByRef rstrval As String) As Single
    
    If IsNumeric(rstrval) = False Then
        gStrToSng = 0#  'gcsngNullVal
    Else
        gStrToSng = Val(delcomma(rstrval))
    End If

End Function

'�����񂩂�l�ɕϊ��B�����񂪃k���Ȃ�0��Ԃ��i���d�l�F�����񂪃k���Ȃ� gcsngNullVal(-9E9) ��Ԃ��j
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
'�����񂩂�l�ɕϊ��B�����񂪃k���Ȃ�-9E9��Ԃ�
'�i���d�l�F�����񂪃k���Ȃ� gcsngNullVal(-9E9) ��Ԃ��j
'���݂̓k���l���K�v�Ȏ��͌ʂɑΉ����Ă���
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

'�����񒆂ɃJ���} "," �����邩���ׂ�
'�J���}������ꍇ�� 0 �ȊO��Ԃ�
'�J���}���Ȃ��ꍇ�� 0 ��Ԃ�
Public Function ChkComma(ByRef rstrval As String) As Integer
    Dim i As Integer
    
    i = InStr(rstrval, ",")
    ChkComma = i
End Function

'�G���[���b�Z�[�W��\������
Public Sub gPutErrDescription(ByRef rErrObj As ErrObject, Optional ByRef rsMsg As String = "")
    Call MsgBox(Err.Description & vbCrLf & "(Error " & Err.Number & ")" & vbCrLf & rsMsg, vbOKOnly + vbCritical, App.Title)

End Sub

'single�l�𕶎���ϊ����Ĕ�r����i�����Ȃ� true�j
'viLimit    �����_�ȉ�����
Public Function gIsEqualSng(ByRef rfVal1 As Single, ByRef rfVal2 As Single, Optional ByVal viLimit As Integer = 3) As Boolean
    Dim sFormat As String
    
    If viLimit < 1 Or viLimit > 30 Then viLimit = 30
    
    sFormat = "0." & String$(viLimit, "0")
    
    If Format$(rfVal1, sFormat) = Format$(rfVal2, sFormat) Then gIsEqualSng = True Else gIsEqualSng = False
    
End Function

'�e�L�X�g�{�b�N�X�ȂǂŎ��ֈړ����鏈��
Public Sub gSetFocusNextTab(ByRef rKeyAscii As Integer)
    If rKeyAscii = vbKeyReturn Then
        rKeyAscii = 0
        SendKeys "{TAB}", True  '�z���g�� Sendkeys �͂��܂�]�܂����Ȃ��E�E�E
    End If
    
End Sub

'�e�L�X�g�{�b�N�X�Ńt�H�[�J�X�擾���ɑS�I�����鏈��
Public Sub gSelectAllText(ByVal vForm As Form)
    Dim txtTemp As TextBox
    Set txtTemp = vForm.ActiveControl
    
    With txtTemp
        .SelStart = 0
        .SelLength = Len(.TEXT)
    End With

End Sub
