Attribute VB_Name = "DataChk"
Option Explicit
Dim faLoadBuf As vsFlexGrid
Public Const gOlderVersionErrNo = 1 + vbObjectError + 512
Public Const gOlderVersionErrMes = "�f�[�^���ȑO�̃o�[�W�����ł�"
'*** Grid �̗�̗L�� **
'Public Const gcCol_PHAI = 1             ' �ӂ̗�L��
'Public Const gcCol_Rf = 0               ' "�ő���ʎx���͓x" & vbCrLf & "Rf"
'Public Const gcCOL_�������� = 0          '   �� ���� ���l ��"
'Public Const gcColPos_PHAI = 7
'
'Public �����S As Single
'Public eval_B() As Single
'Public eval_C() As Single
'Public p�Q�W1() As Single
'Public p�Q�WM() As Single
'Public SONOTA�� As Single
'Public p�Q�YFLG(2) As Integer '1=�m�[�}���z�u    2=�璹�z�u
'
Public p�Y�{�� As Single
Public p�Y��(2) As Single
Public p�Y���WX() As Single
Public p�Y���WY() As Single
' ���
Public pkuitaiKaburi(2) As Single
Public pkuitaiJiknaga As Single
Public pkuitaiDai(3) As Single
Public pkuitaiJikuN(4) As Integer
Public pkuitaiJikuctc(4) As Integer
Public pkuitaiPictW(4) As String
Public pkuitaikumitate(1) As String
Public pkuitaiStrPictW(4) As String
Public pkuitaiStr(5, 7) As Integer

' �͂� ==============================
Public pHariKaburi(4) As Integer
Public pHariDai(5) As Integer
Public pHariPictW(4) As String
Public pHariBon(2) As Integer
Public pHariLoop(2, 6) As Integer
Public pHariN(2) As Integer
Public pHariPicth(2) As String
Public L0(2) As Single
Public pHariStrD(2) As String
Public pHariStrW(2) As String
Public pHariStrBon(1) As String

' �x�� �X�g�b�p�[ ====================
Public pSisyuDai(1) As Integer
Public pSisyu1(2, 6) As Integer
Public pSisyuPictW(2) As String
Public pSisyuD(2, 2) As Integer
Public pSisyu2(2, 2) As String
Public pSisyukabu(2) As Integer
Public pSisyu3(2, 4) As String

Public pStop1(2, 6) As Integer
Public pStopPictW(2) As String
Public pStop2(3, 3) As Integer
Public pStop3(3, 3) As String
Public pStopPictW1(3) As String
Public pStopPictW2(3) As String

' ��@�b ==============================================
Public pKisoKaburi(3) As Integer '''''�����Ԃ�
Public pKisoKaburi1(3) As Single  ''''���H���� �c���Ԃ�
Public pKisoKaburi2(3) As Single  ''''���H���� �c���Ԃ�
Public pKisoDai(9) As Integer
Public pKisoPictW(9) As String
Public pKisoStrDai(2) As Integer
Public pKisoStrPictW(6) As String

'===================================== �Y ========
Public pKuiHon As Integer
Public pKuiTouNaga As Single
Public pKuiKaburi As Integer
Public pKuiKaburi0 As Integer ''''''''�c���Ԃ�
Public pKuiJiku(2, 15) As Integer
Public pKuiStr(10, 3) As Integer
Public pKuiKumiDai(2) As Integer
Public pKuiKumitateW(2) As String
Public pKuiSpesaN As Integer


''�㕔�H���͂̊e�x�_�f�[�^�̍��v������z��C���f�b�N�X
'Public Const NKE As Integer = 20

'
Public Function SetfaLoadBuf(fa As vsFlexGrid)
    Set faLoadBuf = fa
End Function

'�@�@�\ �F  �v�Z�O�̏����B�f�[�^���v�Z�p�z��ɂ��Ƃ��B
'�߂�l �F  0�Ő���I��
Public Function SetCalcArrayFromFile() As String
    
    SetCalcArrayFromFile = CalcSet_KKouzou()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Katamochi()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Kisohaikin()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_KuiHaikin()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Shishou()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Kutai()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Calc()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
End Function

'�@�@�\ �F  �v�Z�O�̏����B�f�[�^���v�Z�p�z��ɂ��Ƃ��B
'�߂�l �F  0�Ő���I��
Private Function CalcSet_KKouzou() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_KKouzou = ""
    
    '-----------------------------------------------------------
    '�����\��(frmKKouzou)�̃f�[�^
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKKouzouFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pB, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pW, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pH, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pKuihaic1, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pKuihaic2, strData, lngRows, lngCols)

    'Shakaku
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pShakaku, strData, lngRows, lngCols)

    'txtShindo(i)
    Input #FileNo, strData
    pKuikei = gStrToDbl(strData)
    
    Input #FileNo, strData
    pKuinaga = gStrToDbl(strData)
    
    '�t�[�`���O�����e�[�p�t�� �`�F�b�N�{�b�N�X
    Input #FileNo, pFootingBothTepa
    
    'RHanti
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pRHanti, strData, lngRows, lngCols)

    
    Close #FileNo


    Exit Function
    
ErrorHandle:
    Close
    CalcSet_KKouzou = "frmKKouzou:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function


'�@�@�\ �F  �v�Z�O�̏����B�f�[�^���v�Z�p�z��ɂ��Ƃ��B
'�߂�l �F  0�Ő���I��
Private Function CalcSet_Shishou() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_Shishou = ""
    
    
    '-----------------------------------------------------------
    '�x��(frmShishou)�̃f�[�^
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrShishouFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pShishou0())
    Call LoadArray(FileNo, pShishou1())
    Call LoadArray(FileNo, pShishou2())
    Call LoadArray(FileNo, pShishou3())
    Call LoadArray(FileNo, pShishou4())
    Call LoadArray(FileNo, pShishou5())
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Shishou = "frmShishou:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function

'�@�@�\ �F  �v�Z�O�̏����B�f�[�^���v�Z�p�z��ɂ��Ƃ��B
'�߂�l �F  0�Ő���I��
Private Function CalcSet_KuiHaikin() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_KuiHaikin = ""
    
    
    '-----------------------------------------------------------
    '�Y�z��(frmKuihaikin)�̃f�[�^
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pKuiHaikin0())
    Call LoadArray(FileNo, pKuiHaikin1())
    Call LoadArray(FileNo, pKuiHaikin2())
    Call LoadArray(FileNo, pKuiHaikin3())
    Call LoadArray(FileNo, pKuiHaikin4())
    Call LoadArray(FileNo, pKuiHaikin5())
    Call LoadArray(FileNo, pKuiHaikin6())
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    CalcSet_KuiHaikin = "frmKuihaikin:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function

Private Function CalcSet_Katamochi() As String
    Dim i As Integer, j As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKatamochiFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
        
    Call LoadArray(FileNo, pKatamochi0())
    Call LoadArray(FileNo, pKatamochi1())
    Call LoadArray(FileNo, pKatamochi2())
    Call LoadArray(FileNo, pKatamochi3())
    Call LoadArray(FileNo, pKatamochi4())
    Call LoadArray(FileNo, pKatamochi5())
    Call LoadArray(FileNo, pKatamochi6())
    Call LoadArray(FileNo, pKatamochi7())
    Call LoadArray(FileNo, pKatamochi8())
    Call LoadArray(FileNo, pKatamochi9())
    Call LoadArray(FileNo, pKatamochi10())
    Call LoadArray(FileNo, pKatamochi11())
    Call LoadArray(FileNo, pKatamochi12())
    Call LoadArray(FileNo, pKatamochi13())
    Call LoadArray(FileNo, pKatamochi14())
    Call LoadArray(FileNo, pKatamochi15())
    Call LoadArray(FileNo, pKatamochi16())
    Call LoadArray(FileNo, pKatamochi17())
    Call LoadArray(FileNo, pKatamochi18())
    
    Close #FileNo
    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Katamochi = "frmKatamochi:" & Format$(Err.Number) & vbCrLf & Err.Description
End Function

Private Function CalcSet_Kisohaikin() As String
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim intTmp As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pKiso0())
    Call LoadArray(FileNo, pKiso1())
    Call LoadArray(FileNo, pKiso2())
    Call LoadArray(FileNo, pKiso3())
    Call LoadArray(FileNo, pKiso4())
    Call LoadArray(FileNo, pKiso5())
    Call LoadArray(FileNo, pKiso6())
    Call LoadArray(FileNo, pKiso7())
    
    Close #FileNo
    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Kisohaikin = "frmKisohaikin:" & Format$(Err.Number) & vbCrLf & Err.Description
End Function

Private Function CalcSet_Kutai() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_Kutai = ""
    
    
    '-----------------------------------------------------------
    '���(frmKutai)�̃f�[�^
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKutaiFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pKutai0())
    Call LoadArray(FileNo, pKutai1())
    Call LoadArray(FileNo, pKutai2())
    Call LoadArray(FileNo, pKutai3())
    Call LoadArray(FileNo, pKutai4())
    Call LoadArray(FileNo, pKutai5())
    Call LoadArray(FileNo, pKutai6())
    Call LoadArray(FileNo, pKutai7())
    Call LoadArray(FileNo, pKutai8())
    Call LoadArray(FileNo, pKutai9())
    Call LoadArray(FileNo, pKutai10())
    Call LoadArray(FileNo, pKutai11())
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    
    CalcSet_Kutai = "frmKutai:" & Format$(Err.Number) & vbCrLf & Err.Description
End Function

Private Function CalcSet_Calc() As String
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim intTmp As Integer
    Dim strTmp As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKeisanFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    '�X�V�t���O
    For i = 0 To 6
        Input #FileNo, intTmp
        pUpdate(i) = intTmp
    Next

    '�o�͏�
    For i = 0 To 6
        Input #FileNo, strTmp
        pOutputPriority(i) = strTmp
    Next

    '�}�ʖ���
    For i = 0 To 6
        Input #FileNo, strTmp
        pOutputName(i) = strTmp
    Next

    '�k��
    For i = 0 To 6
        Input #FileNo, strTmp
        pOutputSize(i) = strTmp
    Next

    '�^�C�g���A�_��ԍ��ADXF�f�B���N�g��
    For i = 0 To 2
        Input #FileNo, strTmp
        pEtc(i) = strTmp
    Next
    
    Close #FileNo
    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Calc = "frmCalc:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function

'�@�@�\ �F  �f�[�^�������z��ɃR�s�[����
'���@�� �F  vfaTarget       �Ώۂ̔z��
'           rstrData        �f�[�^������(.Clip�`���j
Private Sub gStrToDblArray(ByRef rArray() As Double, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim i As Long
    Dim j As Long
    
    Call gStrPasteToLoadGrid(faLoadBuf, rstrData, vlngRows, vlngCols)
    
    With faLoadBuf
        If vlngRows <= 1 Then
            ReDim rArray(vlngCols - 1)
            
            For i = 0 To vlngCols - 1
                rArray(i) = gStrToDbl(.TextMatrix(0, i))
            Next
        
        ElseIf vlngCols <= 1 Then
            ReDim rArray(vlngRows - 1)
            
            For j = 0 To vlngRows - 1
                rArray(j) = gStrToDbl(.TextMatrix(j, 0))
            Next
        Else
            ReDim rArray(vlngCols - 1, vlngRows - 1)
            
            For i = 0 To vlngCols - 1
                For j = 0 To vlngRows - 1
                    rArray(i, j) = gStrToDbl(.TextMatrix(j, i))
                Next
            Next
        End If
        
    End With
    
End Sub

'�@�@�\ �F  �f�[�^�������z��ɃR�s�[����
'���@�� �F  vfaTarget       �Ώۂ̔z��
'           rstrData        �f�[�^������(.Clip�`���j
Private Sub gStrToVariantArray(ByRef rArray() As Variant, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim i As Long
    Dim j As Long
    
    Call gStrPasteToLoadGrid(faLoadBuf, rstrData, vlngRows, vlngCols)
    
    With faLoadBuf
        If vlngRows <= 1 Then
            ReDim rArray(vlngCols - 1)
            
            For i = 0 To vlngCols - 1
                rArray(i) = .TextMatrix(0, i)
            Next
        
        ElseIf vlngCols <= 1 Then
            ReDim rArray(vlngRows - 1)
            
            For j = 0 To vlngRows - 1
                rArray(j) = .TextMatrix(j, 0)
            Next
        Else
            ReDim rArray(vlngCols - 1, vlngRows - 1)
            
            For i = 0 To vlngCols - 1
                For j = 0 To vlngRows - 1
                    rArray(i, j) = .TextMatrix(j, i)
                Next
            Next
        End If
        
    End With
    
End Sub


'�@�@�\ �F  �f�[�^�������z��ɃR�s�[����
'���@�� �F  vfaTarget       �Ώۂ̔z��
'           rstrData        �f�[�^������(.Clip�`���j
Private Sub gStrToStrArray(ByRef rArray() As String, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim i As Long
    Dim j As Long
    
    Call gStrPasteToLoadGrid(faLoadBuf, rstrData, vlngRows, vlngCols)
    
    With faLoadBuf
        If vlngRows <= 1 Then
            ReDim rArray(vlngCols - 1)
            
            For i = 0 To vlngCols - 1
                rArray(i) = .TextMatrix(0, i)
            Next
        
        ElseIf vlngCols <= 1 Then
            ReDim rArray(vlngRows - 1)
            
            For j = 0 To vlngRows - 1
                rArray(j) = .TextMatrix(j, 0)
            Next
        Else
            ReDim rArray(vlngCols - 1, vlngRows - 1)
            
            For i = 0 To vlngCols - 1
                For j = 0 To vlngRows - 1
                    rArray(i, j) = .TextMatrix(j, i)
                Next
            Next
        End If
        
    End With
    
End Sub

'�t�@�C������ǂݍ��񂾃f�[�^��z��ɓ����
Private Sub LoadArray(ByVal FileNo As Integer, ary() As Variant)
    
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(ary(), strData, lngRows, lngCols)
    
End Sub

Public Sub CalcDataSet()
Dim i As Integer
Dim k As Integer
Dim L1 As Single, L2 As Single

'============================== ��̐��@
Dim pfB(8) As Variant
Dim pfW(8) As Variant
Dim pfH(8) As Variant

    For i = 0 To 8
        pfB(i) = IIf(pB(i) = "", "0 ", pB(i))
        pfW(i) = IIf(pW(i) = "", "0 ", pW(i))
        pfH(i) = IIf(pH(i) = "", "0 ", pH(i))
    Next i
    
ReDim pB(9) 'As Single
ReDim pW(9) 'As Single
ReDim pH(9) 'As Single

    For i = 0 To 8
        pfB(i) = pfB(i) * 1000
        pfW(i) = pfW(i) * 1000
        pfH(i) = pfH(i) * 1000
    Next i
    For i = 9 To 1 Step -1
        pB(i) = pfB(i - 1)
        pW(i) = pfW(i - 1)
        pH(i) = pfH(i - 1)
    Next i
    If pRHanti(0) = "" Then
        pRHanti(0) = 0
    Else
        pRHanti(0) = pRHanti(0) * 1000
    End If
    
'======================================================== �Y
    pKuikei = IIf(pKuikei = "", 0, pKuikei * 1000)
    pKuinaga = IIf(pKuinaga = "", 0, pKuinaga * 1000)
    
''''''' �Y�z�u
p�Y�{�� = 0: p�Y��(1) = 0: p�Y��(2) = 0

For i = 0 To 20
If pKuihaic1(0, i) = "" Then
    p�Y��(1) = i - 1
    Exit For
Else
    pKuihaic1(0, i) = pKuihaic1(0, i) * 1
    pKuihaic1(1, i) = pKuihaic1(1, i) * 1
    p�Y�{�� = p�Y�{�� + pKuihaic1(1, i)
End If
Next i

For i = 0 To 20
If pKuihaic2(0, i) = "" Then
    p�Y��(2) = i - 1
    Exit For
Else
    pKuihaic2(0, i) = pKuihaic2(0, i) * 1
    pKuihaic2(1, i) = pKuihaic2(1, i) * 1
End If
Next i

'''''''''''''' �Y���W '''''''''''
 ReDim p�Y���WX(p�Y�{��) As Single
 ReDim p�Y���WY(p�Y�{��) As Single
 
    Dim �Y��(1 To 2) As Integer
    �Y��(1) = p�Y��(1) + 1 ' �Y����Z�b�g
    �Y��(2) = p�Y��(2) + 1 ' �Y����Z�b�g
    
    Dim L�Y�{() As Integer: ReDim L�Y�{(1 To �Y��(1))
    Dim C�Y�{() As Integer: ReDim C�Y�{(1 To �Y��(2))
    Dim L���W() As Single:  ReDim L���W(1 To �Y��(1))
    Dim C���W() As Single:  ReDim C���W(1 To �Y��(2))
    Dim �YX() As Single
    Dim �YY() As Single
    
    For i = 1 To �Y��(1)
        L�Y�{(i) = pKuihaic1(1, i - 1) ' ���H �Y�{�����Z�b�g
        L���W(i) = pKuihaic1(0, i - 1) ' ���H �Y���W���Z�b�g
    Next i
    For i = 1 To �Y��(2)
        C�Y�{(i) = pKuihaic2(1, i - 1) ' ���p �Y�{�����Z�b�g
        C���W(i) = pKuihaic2(0, i - 1) ' ���p �Y���W���Z�b�g
    Next i

 
    Call Get�e�Y���W(�Y��, L�Y�{, C�Y�{, L���W, C���W, �YX, �YY)
     ' �Y���W�� 1000�{ mm �P�ʂɂ���B
    For i = 0 To (p�Y�{�� - 1)
       p�Y���WX(i) = �YX(i + 1) * 1000
       p�Y���WY(i) = �YY(i + 1) * 1000
    Next i
 
    '�t�[�`���O���S ����̍��W�ɕϊ�����B
    Dim fCenterX As Single: fCenterX = (pB(7) + pB(8) + pB(9)) / 2
    Dim fCenterY As Single: fCenterY = pW(7) / 2
    For i = 0 To (p�Y�{�� - 1)
       p�Y���WX(i) = p�Y���WX(i) - fCenterX
       p�Y���WY(i) = p�Y���WY(i) - fCenterY
    Next i

'''''''''''''' �Y���W end '''''''''''

'============================= ��� ==============================
pkuitaiKaburi(1) = Round(pKutai0(0) + pKutai3(0) / 2 + pKutai9(1, 2), 0)
pkuitaiKaburi(2) = pKutai1(0)
pkuitaiJiknaga = IIf(pKutai2(0) = "", 0, pKutai2(0))

pkuitaiDai(1) = IIf(pKutai3(0) = "", 0, pKutai3(0))
pkuitaiDai(2) = IIf(pKutai4(0) = "", 0, pKutai4(0))

pkuitaiPictW(1) = pKutai7(0, 0)
If Not (pKutai7(1, 0) = "" Or pKutai7(2, 0) = "") Then
    pkuitaiJikuN(1) = pKutai7(1, 0)
    pkuitaiJikuctc(1) = pKutai7(2, 0)
    L1 = (pW(6) - (pkuitaiJikuN(1) - 1) * pkuitaiJikuctc(1)) / 2 - pkuitaiKaburi(1)
    pkuitaiPictW(1) = Format(pkuitaiKaburi(1), "0") & "+" & Format(L1, "0") & "+" & _
                      Format(pkuitaiJikuN(1) - 1, "0") & "x" & Format(pkuitaiJikuctc(1), "0") & _
                      "+" & Format(L1, "0") & "+" & Format(pkuitaiKaburi(1), "0")
End If

pkuitaiPictW(2) = pKutai7(0, 1)
If Not (pKutai7(1, 1) = "" Or pKutai7(2, 1) = "") Then
    pkuitaiJikuN(2) = pKutai7(1, 1)
    pkuitaiJikuctc(2) = pKutai7(2, 1)
    L1 = (pW(6) - (pkuitaiJikuN(2) - 1) * pkuitaiJikuctc(2)) / 2
    pkuitaiPictW(2) = Format(L1, "0") & "+" & _
                      Format(pkuitaiJikuN(2) - 1, "0") & "x" & Format(pkuitaiJikuctc(2), "0") & _
                      "+" & Format(L1, "0")
End If

pkuitaiPictW(3) = pKutai8(0, 0)
If Not (pKutai8(1, 0) = "" Or pKutai8(2, 0) = "") Then
    pkuitaiJikuN(3) = pKutai8(1, 0)
    pkuitaiJikuctc(3) = pKutai8(2, 0)
    L1 = (pB(6) - (pkuitaiJikuN(3) - 1) * pkuitaiJikuctc(3)) / 2 - pkuitaiKaburi(1)
    pkuitaiPictW(3) = Format(pkuitaiKaburi(1), "0") & "+" & Format(L1, "0") & "+" & _
                      Format(pkuitaiJikuN(3) - 1, "0") & "x" & Format(pkuitaiJikuctc(3), "0") & _
                      "+" & Format(L1, "0") & "+" & Format(pkuitaiKaburi(1), "0")
End If

pkuitaiPictW(4) = pKutai8(0, 1)
If Not (pKutai8(1, 1) = "" Or pKutai8(2, 1) = "") Then
    pkuitaiJikuN(4) = pKutai8(1, 1)
    pkuitaiJikuctc(4) = pKutai8(2, 1)
    L1 = (pB(6) - (pkuitaiJikuN(4) - 1) * pkuitaiJikuctc(4)) / 2
    pkuitaiPictW(4) = Format(L1, "0") & "+" & _
                      Format(pkuitaiJikuN(4) - 1, "0") & "x" & Format(pkuitaiJikuctc(4), "0") & _
                      "+" & Format(L1, "0")
End If

pkuitaiDai(3) = pKutai5(0) ''''''''''�g���ċ�
pkuitaikumitate(1) = pKutai6(0)

 ''''''''''''''''''''''''''''''''''''�X�^�[���b�v
For i = 1 To 7
    For k = 1 To 5
        pkuitaiStr(k, i) = IIf(pKutai9(i - 1, k - 1) = "", 0, pKutai9(i - 1, k - 1))
    Next k
Next i

pkuitaiStrPictW(1) = pKutai10(0)
pkuitaiStrPictW(2) = pKutai10(1)
pkuitaiStrPictW(3) = pKutai11(0)
pkuitaiStrPictW(4) = pKutai11(1)

'===================================== �͂� ==============================
If pKatamochi2(0) <> "" Then
    pHariDai(1) = pKatamochi2(0) ''''''''���[�v�S�،a
Else
    pHariDai(1) = 0
End If

If pKatamochi4(0) <> "" Then
    pHariDai(2) = pKatamochi4(0) ''''''''���ؓS�،a
Else
    pHariDai(2) = 0
End If

pHariKaburi(1) = Round(pKatamochi0(0) + max(pHariDai(1), pHariDai(2)) / 2 + pKatamochi12(0), 0)
pHariKaburi(4) = pKatamochi0(1) + pKatamochi6(0) / 2 + pKatamochi12(0)
If pW(4) * pH(3) = 0 Then
    pHariKaburi(2) = Round(pHariKaburi(4), 0)
Else
    pHariKaburi(2) = Round(pHariKaburi(4) * Sqr(pW(4) ^ 2 + pH(3) ^ 2) / pW(4), 0)
End If
pHariKaburi(4) = Round(pHariKaburi(4), 0)
pHariKaburi(3) = Round(pKatamochi0(2) + pKatamochi6(0) / 2, 0)

 ''''''''''''''''''''''''''''''''''''���[�v��
For i = 1 To 6
    For k = 1 To 2
        pHariLoop(k, i) = IIf(pKatamochi1(i - 1, k - 1) = "", 0, pKatamochi1(i - 1, k - 1))
    Next k
Next i

'�O���[�v�S�؂̒��� �N�_��
L0(1) = pW(1) - (pKatamochi0(1) + pKatamochi6(0)) * 2 - pHariDai(1) - pHariLoop(1, 2)
'�O���[�v�S�؂̒��� �N�_��
L0(2) = pW(1) - (pKatamochi0(1) + pKatamochi6(0)) * 2 - pHariDai(1) - pHariLoop(1, 5)

'''''''''''''''''''''''''''''''''''''����
If pKatamochi4(1) <> "" Then
    pHariN(1) = pKatamochi4(1)
Else
    pHariN(1) = 0
End If

If pKatamochi4(2) <> "" Then
    pHariN(2) = pKatamochi4(2)
Else
    pHariN(2) = 0
End If
pHariPictW(1) = pKatamochi5(0)

'''''''''''''''''''''''''''''''''''''�����S��
If pKatamochi3(0) <> "" Then
    pHariDai(4) = pKatamochi3(0)
Else
    pHariDai(4) = 0
End If

If pKatamochi7(0) <> "" Then
    pHariBon(1) = pKatamochi7(0)
Else
    pHariBon(1) = 0
End If
pHariPictW(2) = pKatamochi8(0)

'''''''''''''''''''''''''''''''''''''�����⋭�S��
If pKatamochi9(0) <> "" Then
    pHariDai(5) = pKatamochi9(0)
Else
    pHariDai(5) = 0
End If

If pKatamochi10(0) <> "" Then
    pHariBon(2) = pKatamochi10(0)
Else
    pHariBon(2) = 0
End If
pHariPicth(2) = pKatamochi11(0)

''''''''''''''''''''''''''''''''''''�X�^�[���b�v
If pKatamochi12(0) <> "" Then
    pHariStrD(1) = pKatamochi12(0)
Else
    pHariStrD(1) = 0
End If
If pKatamochi13(0) <> "" Then
    pHariStrW(1) = pKatamochi13(0)
Else
    pHariStrW(1) = 0
End If
If pKatamochi14(0) <> "" Then
    pHariStrW(2) = pKatamochi14(0)
Else
    pHariStrW(2) = 0
End If
pHariPictW(3) = pKatamochi15(0)

 ''''''''''''''''''''''''''''''''''''��̕��~�ߋ�
If pKatamochi16(0) <> "" Then
    pHariStrD(2) = pKatamochi16(0)
Else
    pHariStrD(2) = 0
End If
If pKatamochi17(0) <> "" Then
    pHariStrBon(1) = pKatamochi17(0)
Else
    pHariStrBon(1) = 0
End If
pHariPictW(4) = pKatamochi18(0)

'===================================== �x�� �X�g�b�p�[ ========

''''''''''''''''''''''''''''''''''''�x��
For i = 1 To 6
    For k = 1 To 2
        pSisyu1(k, i) = IIf(pShishou0(i - 1, k - 1) = "", 0, pShishou0(i - 1, k - 1))
    Next k
Next i
pSisyuPictW(1) = pShishou0(6, 0)
pSisyuPictW(2) = pShishou0(6, 1)

'For i = 1 To 5
'    For k = 1 To 2
'        pSisyu2(k, i) = IIf(pShishou1(i - 1, k - 1) = "", 0, pShishou1(i - 1, k - 1))
'    Next k
'Next i
pSisyuD(1, 1) = IIf(pShishou1(0, 0) = "", 0, pShishou1(0, 0)) '���H����
pSisyuD(1, 2) = IIf(pShishou1(2, 0) = "", 0, pShishou1(2, 0))
pSisyuD(2, 1) = IIf(pShishou1(0, 1) = "", 0, pShishou1(0, 1)) '���p����
pSisyuD(2, 2) = IIf(pShishou1(2, 1) = "", 0, pShishou1(2, 1))

pSisyu2(1, 1) = pShishou1(1, 0) '���H����
pSisyu2(1, 2) = pShishou1(3, 0)
pSisyu2(2, 1) = pShishou1(1, 1) '���p����
pSisyu2(2, 2) = pShishou1(3, 1)

pSisyukabu(1) = IIf(pShishou1(4, 0) = "", 0, pShishou1(4, 0)) '���H����
pSisyukabu(2) = IIf(pShishou1(4, 1) = "", 0, pShishou1(4, 1)) '���p����

pSisyuDai(1) = IIf(pShishou2(0) = "", 0, pShishou2(0)) '''�����k�����^��
For i = 1 To 4
    For k = 1 To 2
        pSisyu3(k, i) = pShishou3(i - 1, k - 1)
    Next k
Next i

''''''''''''''''''''''''''''''''''''�X�g�b�p�[
For i = 1 To 4
    For k = 1 To 2
        pStop1(k, i) = IIf(pShishou4(i - 1, k - 1) = "", 0, pShishou4(i - 1, k - 1))
    Next k
Next i
pStopPictW(1) = pShishou4(4, 0)
pStopPictW(2) = pShishou4(4, 1)

'''''''''''''''''''''''''''''''''' �⋭�S��
'�N�_��
For i = 1 To 3
    For k = 1 To 3
        pStop2(k, i) = IIf(pShishou5(i - 1, k - 1) = "", 0, pShishou5(i - 1, k - 1))
    Next k
Next i
pStopPictW1(1) = pShishou5(3, 0)
pStopPictW1(2) = pShishou5(3, 1)

'�I�_��
For i = 1 To 3
    For k = 1 To 3
        pStop3(k, i) = IIf(pShishou5(i + 3, k - 1) = "", 0, pShishou5(i + 3, k - 1))
    Next k
Next i
pStopPictW2(1) = pShishou5(7, 0)
pStopPictW2(2) = pShishou5(7, 1)

'===================================== ��@�b ========
pKisoKaburi(1) = pKiso0(0) '�㑤
pKisoKaburi(2) = pKiso0(1) '����
pKisoKaburi(3) = pKiso0(2) '����

'��S�؁@���H����
For i = 1 To 4
    pKisoDai(i) = IIf(pKiso1(0, i - 1) = "", 0, pKiso1(0, i - 1))
Next i

For i = 1 To 4
    pKisoPictW(i) = pKiso1(1, i - 1)
Next i

'��S�؁@���p����
For i = 1 To 4
    pKisoDai(i + 4) = IIf(pKiso2(0, i - 1) = "", 0, pKiso2(0, i - 1))
Next i

For i = 1 To 4
    pKisoPictW(i + 4) = pKiso2(1, i - 1)
Next i

'�����S��
pKisoDai(9) = IIf(pKiso3(0) = "", 0, pKiso3(0))
pKisoPictW(9) = pKiso3(1)

''''''''''''''''''''''''''''''''''''�X�^�[���b�v
pKisoStrDai(1) = IIf(pKiso4(0) = "", 0, pKiso4(0))
pKisoStrDai(2) = IIf(pKiso6(0) = "", 0, pKiso6(0))

For i = 1 To 3
    pKisoStrPictW(i) = pKiso5(i - 1)
Next i
For i = 1 To 3
    pKisoStrPictW(i + 3) = pKiso7(i - 1)
Next i

''''''''''''''''''''''''' ���H������ ���Ԃ�
'�㑤
If pKiso0(0) < 0 Then
    pKisoKaburi1(1) = -pKiso0(0)
Else
    pKisoKaburi1(1) = pKiso0(0) + pKisoStrDai(1) + pKisoDai(1) / 2
End If
'����
If pKiso0(1) < 0 Then
    pKisoKaburi1(2) = -pKiso0(1)
Else
    pKisoKaburi1(2) = pKiso0(1) + pKisoStrDai(1) + pKisoDai(3) / 2
End If
'����
If pKiso0(2) < 0 Then
    pKisoKaburi1(3) = -pKiso0(2)
Else
    pKisoKaburi1(3) = pKiso0(2) + pKisoDai(9) + max(pKisoDai(1), pKisoDai(3)) / 2
End If

''''''''''''''''''''''''' ���p������ ���Ԃ�
'�㑤
    pKisoKaburi2(1) = pKisoKaburi1(1) + pKisoDai(1) / 2 + pKisoDai(5) / 2
'����
    pKisoKaburi2(2) = pKisoKaburi1(2) + pKisoDai(3) / 2 + pKisoDai(7) / 2
'����
    pKisoKaburi2(3) = pKisoKaburi1(3)

For i = 1 To 3
    pKisoKaburi1(i) = Round(pKisoKaburi1(i), 0)
    pKisoKaburi2(i) = Round(pKisoKaburi2(i), 0)
Next i

'===================================== �Y ========

pKuiHon = IIf(pKuiHaikin0(0) = "", 0, pKuiHaikin0(0))
pKuiTouNaga = IIf(pKuiHaikin1(0) = "", 0, pKuiHaikin1(0))
pKuiKaburi = IIf(pKuiHaikin2(0) = "", 0, pKuiHaikin2(0))

For i = 1 To 15
    For k = 1 To 2
        If (pKuiHaikin4(i - 1, k - 1) = "a" Or pKuiHaikin4(i - 1, k - 1) = "A" Or _
            pKuiHaikin4(i - 1, k - 1) = "k" Or pKuiHaikin4(i - 1, k - 1) = "K") Then
            If (pKuiHaikin4(i - 1, k - 1) = "a" Or pKuiHaikin4(i - 1, k - 1) = "A") Then
                pKuiJiku(k, i) = -2 ''''''''''' ����
            Else
                pKuiJiku(k, i) = -1 '''''''''' �@�B�ڍ�
            End If
        Else
            pKuiJiku(k, i) = IIf(pKuiHaikin4(i - 1, k - 1) = "", 0, pKuiHaikin4(i - 1, k - 1))
        End If
    Next k
Next i

For i = 1 To 3
    For k = 1 To 10
        pKuiStr(k, i) = IIf(pKuiHaikin5(i - 1, k - 1) = "", 0, pKuiHaikin5(i - 1, k - 1))
    Next k
Next i
pKuiKumiDai(1) = IIf(pKuiHaikin6(0, 0) = "", 0, pKuiHaikin6(0, 0))
pKuiKumiDai(2) = IIf(pKuiHaikin6(0, 1) = "", 0, pKuiHaikin6(0, 1))

pKuiKumitateW(1) = pKuiHaikin6(1, 0)
pKuiKumitateW(2) = pKuiHaikin6(1, 1)

pKuiSpesaN = IIf(pKuiHaikin3(0) = "", 0, pKuiHaikin3(0))

pKuiKaburi0 = pKuiKaburi + pKuiJiku(1, 1) / 2 '''''''' �c���Ԃ�




End Sub


