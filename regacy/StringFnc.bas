Attribute VB_Name = "StringFnc"
Option Explicit

'**************************************************************
'VisualBasic 5.0�ȍ~�Ή� �����񑀍색�C�u���� - StringFnc.bas
'2000/04/29 kit �ҏW
'**************************************************************

'�@�@�\�F�����t�@�C�����i�p�X�܂ށj�̊Ԃ�...�ŏȗ�����������ɂ��ĕԂ�
'�߂�l�F���H��̕�����
Public Function gCutLongFileName(ByRef rstrFileName As String) As String
    Dim intLeftEnd As Integer
    Dim intRightStart As Integer
    Dim intYenNum As Integer
    Dim i As Integer
    
    gCutLongFileName = rstrFileName
    
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
    
    gCutLongFileName = Left$(rstrFileName, intLeftEnd) & "..." & Mid$(rstrFileName, intRightStart)

End Function

'�@�@�\�F�Œ蕶���񒆂�"�"=chr$(0)�Ƌ󔒂���菜�����������Ԃ�
'       "�"=chr$(0)�͌��ɂ������������������Ȃ��̂Œ���
'�߂�l�F���H��̕�����
Public Function gClearStr(ByRef rstrSorc As String) As String
  Dim i As Integer
  
  i = InStr(1, rstrSorc, vbNullChar, vbTextCompare)
  
  'i = 1�Ȃ�Left$��""��Ԃ�
  If i > 0 Then gClearStr = Trim$(Left$(rstrSorc, i - 1)) Else gClearStr = Trim$(rstrSorc)

End Function

'   gClearStr ���@ByVal �ɂȂ�������
Public Function gStrFromFixed(ByVal strSorc As String) As String
  Dim i As Integer
  
  i = InStr(1, strSorc, vbNullChar, vbTextCompare)
  
  If i > 0 Then gStrFromFixed = Trim$(Left$(strSorc, i - 1)) Else gStrFromFixed = Trim$(strSorc)

End Function

'�@�@�\�F���͂��ꂽ��������A�w�蕶���łQ�ɕ�����B
'�߂�l�F�������� True �A�������s False
Public Function gSplitString(strInputText As String, strSplitCharacter As String, strLeftText As String, strRightText As String)
    Dim iPos As Integer
    Dim iLenText As Integer, iLenChr As Integer
    
    iLenChr = Len(strSplitCharacter)
    iLenText = Len(strInputText)
    iPos = InStr(strInputText, strSplitCharacter)
    If iPos = 0 Or iLenText = iLenChr Then
        strLeftText = strInputText
        strRightText = ""
        gSplitString = False
    Else
        Select Case iPos
        Case 1
            strLeftText = ""
            strRightText = Mid(strInputText, iPos + iLenChr)
        Case iLenText - iLenChr + 1
            strLeftText = Left(strInputText, iPos - 1)
            strRightText = ""
        Case Else
            strLeftText = Left(strInputText, iPos - 1)
            strRightText = Mid(strInputText, iPos + iLenChr)
        End Select
        gSplitString = True
    End If
End Function

'�@�@�\�F������ strDt �� iNum�� �Ȃ����������Ԃ��B�iN88����String$()�݂����Ȃ��́j
'�߂�l�F�������ꂽ������
Public Function gDupStr(iNum As Integer, strDt As String) As String
Dim i As Integer
  gDupStr = ""
  For i = 1 To iNum
    gDupStr = gDupStr & strDt
  Next i
End Function


'�@�@�\�F�l���t�H�[�}�b�e�B���O����������ɂ��ĕԂ�
'        Format()�Ɠ��l�̋@�\�����A���`��̕����񂪃t�H�[�}�b�g����������Z���ꍇ��
'        ��������󔒂��߂鏊���قȂ�B
'        N88Basic���� USING �ɋ߂��B
'�߂�l�F���`���ꂽ������
Public Function gUsing(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    
    strUsing = Format$(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        'strUsing = String(intFormat, "#")
    End If
    gUsing = strUsing
End Function

'�@�@�\�F�l���t�H�[�}�b�e�B���O����������ɂ��ĕԂ�
'        Format()�Ɠ��l�̋@�\�����A���`��̕����񂪃t�H�[�}�b�g����������Z���ꍇ��
'        ��������󔒂��߂鏊���قȂ�B
'        �t�H�[�}�b�g������̕����Z�������ꍇ�́A�t�H�[�}�b�g������Ɠ���������"#"�̗����Ԃ��H
'�߂�l�F���`���ꂽ������
Public Function gUsingA(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    strUsing = Format(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        strUsing = String(intFormat, "#")
    End If
    gUsingA = strUsing
End Function

'�@�@�\�FstrTarget ����@������ strToRemove ����菜�����������Ԃ�
'�߂�l�F   ���߂�@�s�v�ȕ��������菜����������
Public Function RemovedStr(strTarget As String, strToRemove As String) As String
Dim i As Integer
Dim strT As String
    
    strT = strTarget
    If strToRemove <> "" Then
        i = InStr(strTarget, strToRemove)
        If i > 0 Then
            strT = ""
            If i > 1 Then
                strT = Left(strTarget, i - 1)
            End If
            strT = strT & Mid(strTarget, i + Len(strToRemove))
        End If
    End If
    RemovedStr = strT
End Function
