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
Public pkuitaiKaburi(3) As Single
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
Public pHariLoop(3, 6) As Integer
Public pHariN(2) As Integer
Public pHariPicth(2) As String
Public pHari���[�v������(2) As Single
Public pHariStrD(2) As String
Public pHariStrW(2) As String
Public pHariStrBon(1) As String
Public ���������Ԃ� As Single
Public �E�������Ԃ� As Single

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
Public pKisoKaburi1(4) As Single  ''''���H���� �c���Ԃ�
Public pKisoKaburi2(4) As Single  ''''���H���� �c���Ԃ�
Public pKisoDai(9) As Integer
Public pKisoPictW(9) As String
Public pKisoStrDai(2) As Integer
Public pKisoStrPictW(6) As String
Public Kiso�d��(2) As Integer
Public Kiso���Ԃ� As Integer

'===================================== �Y ========
Public pKuiHon As Integer
Public pKuiTouNaga As Single
Public pKuiKaburi As Integer
Public pKuiKaburi0 As Integer ''''''''�c���Ԃ�
Public pKuiJiku(2, 15) As Integer
Public pKuiStr(12, 3) As Integer
Public pKuiKumiDai(2) As Integer
Public pKuiKumitateW(2) As String
Public pKuiSpesaN As Integer
Public pHari������ As Integer
Public ���[�v�S��R(4) As Single

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
    
    
    '���Ԃ��؂Ȃ� �`�F�b�N�{�b�N�X
    Input #FileNo, pKisoKabuse
    
    
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
    Dim strTmp As String
    
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
    pEtc(2) = pEtc(2)
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
Dim LL As Single, L1 As Single, L2 As Single, L3 As Single

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
Dim DD As Single
pkuitaiDai(1) = IIf(pKutai3(0) = "", 0, pKutai3(0))
pkuitaiDai(2) = IIf(pKutai4(0) = "", 0, pKutai4(0))

pkuitaiKaburi(1) = Round(pKutai0(0) + pkuitaiDai(1) / 2 + pKutai9(1, 2), 0) '���H�������Ԃ�
pkuitaiKaburi(2) = pKutai1(0) '�V�[���Ԃ�
pkuitaiKaburi(3) = Round(pKutai0(0) + pkuitaiDai(2) / 2 + pKutai9(1, 2), 0) '���p�������Ԃ�
pkuitaiJiknaga = IIf(pKutai2(0) = "", 0, pKutai2(0))

DD = IIf(pW(9) = 0, pkuitaiKaburi(1), pkuitaiKaburi(3))
pkuitaiPictW(1) = pKutai7(0) 'pKutai7(0, 0)
'If Not (pKutai7(1, 0) = "" Or pKutai7(2, 0) = "") Then
'    pkuitaiJikuN(1) = pKutai7(1, 0)
'    pkuitaiJikuctc(1) = pKutai7(2, 0)
'    L1 = (pW(6) - (pkuitaiJikuN(1) - 1) * pkuitaiJikuctc(1)) / 2 - pkuitaiKaburi(1)
'    pkuitaiPictW(1) = Format(pkuitaiKaburi(1), "0") & "+" & Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(1) - 1, "0") & "x" & Format(pkuitaiJikuctc(1), "0") & _
'                      "+" & Format(L1, "0") & "+" & Format(pkuitaiKaburi(1), "0")
'End If

pkuitaiPictW(2) = pKutai7(1) 'pKutai7(0, 1)
'If Not (pKutai7(1, 1) = "" Or pKutai7(2, 1) = "") Then
'    pkuitaiJikuN(2) = pKutai7(1, 1)
'    pkuitaiJikuctc(2) = pKutai7(2, 1)
'    L1 = (pW(6) - (pkuitaiJikuN(2) - 1) * pkuitaiJikuctc(2)) / 2
'    pkuitaiPictW(2) = Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(2) - 1, "0") & "x" & Format(pkuitaiJikuctc(2), "0") & _
'                      "+" & Format(L1, "0")
'End If

pkuitaiPictW(3) = pKutai8(0) 'pKutai8(0, 0)
'If Not (pKutai8(1, 0) = "" Or pKutai8(2, 0) = "") Then
'    pkuitaiJikuN(3) = pKutai8(1, 0)
'    pkuitaiJikuctc(3) = pKutai8(2, 0)
'    L1 = (pB(6) - (pkuitaiJikuN(3) - 1) * pkuitaiJikuctc(3)) / 2 - pkuitaiKaburi(1)
'    pkuitaiPictW(3) = Format(pkuitaiKaburi(1), "0") & "+" & Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(3) - 1, "0") & "x" & Format(pkuitaiJikuctc(3), "0") & _
'                      "+" & Format(L1, "0") & "+" & Format(pkuitaiKaburi(1), "0")
'End If

pkuitaiPictW(4) = pKutai8(1) 'pKutai8(0, 1)
'If Not (pKutai8(1, 1) = "" Or pKutai8(2, 1) = "") Then
'    pkuitaiJikuN(4) = pKutai8(1, 1)
'    pkuitaiJikuctc(4) = pKutai8(2, 1)
'    L1 = (pB(6) - (pkuitaiJikuN(4) - 1) * pkuitaiJikuctc(4)) / 2
'    pkuitaiPictW(4) = Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(4) - 1, "0") & "x" & Format(pkuitaiJikuctc(4), "0") & _
'                      "+" & Format(L1, "0")
'End If

For i = 1 To 4
    If pkuitaiPictW(i) <> "" Then
        If i <= 2 Then
            L3 = pW(6)
            DD = IIf(pW(9) = 0, pkuitaiKaburi(1), pkuitaiKaburi(3))
        Else
            L3 = pB(6)
            DD = pkuitaiKaburi(1)
        End If
        LL = F_Total_L(pkuitaiPictW(i))
        If LL <> L3 Then
            If InStr(pkuitaiPictW(i), "x") + InStr(pkuitaiPictW(i), "*") = 0 Then '''''' 150
               L1 = Round((L3 - DD * 2) / LL, 4)
               If L1 - Int(L1) < 0.0001 Then
                    pkuitaiPictW(i) = Format(DD, "0") & "+" & Format(L1, "0") & "x" & _
                                      Format(LL, "0") & "+" & Format(DD, "0")
               Else
                    L1 = Int(L1 - 2)
                    L2 = (L3 - L1 * LL - DD * 2) / 2
                    If L2 = LL Then L1 = L1 + 2
                    pkuitaiPictW(i) = Format(DD, "0") & "+" & Format(L2, "0") & "+" & _
                                    Format(L1, "0") & "x" & Format(LL, "0") & "+" & _
                                    Format(L2, "0") & "+" & Format(DD, "0")
               End If
            Else '''''' 46x150
               L2 = (L3 - LL - DD * 2) / 2
               pkuitaiPictW(i) = Format(DD, "0") & "+" & Format(L2, "0") & "+" & _
                               pkuitaiPictW(i) & "+" & _
                               Format(L2, "0") & "+" & Format(DD, "0")
            End If
        End If
    End If
Next i

pkuitaiDai(3) = pKutai5(0) ''''''''''�g���ċ�
pkuitaikumitate(1) = pKutai6(0)

 ''''''''''''''''''''''''''''''''''''�X�^�[���b�v
L1 = 0: L2 = 0
For i = 1 To 7
    For k = 1 To 5
        pkuitaiStr(k, i) = IIf(pKutai9(i - 1, k - 1) = "", 0, pKutai9(i - 1, k - 1))
        If i = 1 And k > 2 Then
            L1 = L1 + pkuitaiStr(k, i)
            If L2 = 0 And pkuitaiStr(k, i) = 0 Then L2 = k
        End If
    Next k
Next i
If L1 <> pH(2) + pH(3) + pH(4) Then
    pkuitaiStr(L2, 1) = pH(2) + pH(3) + pH(4) - L1
End If
pkuitaiStrPictW(1) = pKutai10(0)
pkuitaiStrPictW(2) = pKutai10(1)
pkuitaiStrPictW(3) = pKutai11(0)
pkuitaiStrPictW(4) = pKutai11(1)

'===================================== �͂� ==============================
Dim aa1 As Single, aa2 As Single, strQ As String
Dim bb1 As Single, bb2 As Single
Dim LL1 As Single, LL2 As Single, LL3 As Single

If pKatamochi2(0) <> "" Then
    pHariDai(1) = pKatamochi2(0) ''''''''���[�v�S�،a
Else
    pHariDai(1) = 0
End If

If pKatamochi4(0) <> "" Then
    pHariDai(2) = pKatamochi4(0) ''''''''���[�v�����،a
Else
    pHariDai(2) = 0
End If

'''''''''''''''''''''''''''''''''''''����
If pKatamochi3(0) <> "" Then
    pHariDai(3) = pKatamochi3(0)
Else
    pHariDai(3) = 0
End If

pHariKaburi(1) = Round(pKatamochi0(0) + max(pHariDai(1), pHariDai(3)) / 2 + pKatamochi12(0), 0)
pHariKaburi(4) = pKatamochi0(1) + pKatamochi6(0) / 2 + max(pKatamochi9(0), pKatamochi12(0))
If pW(4) * pH(3) = 0 Then
    pHariKaburi(2) = Round(pHariKaburi(4), 0)
Else
    pHariKaburi(2) = Round(pHariKaburi(4) * Sqr(pW(4) ^ 2 + pH(3) ^ 2) / pW(4), 0)
End If
pHariKaburi(4) = Round(pHariKaburi(4), 0)
pHariKaburi(3) = Round(pKatamochi0(2) + pKatamochi6(0) / 2 + pKatamochi9(0), 0)

 ''''''''''''''''''''''''''''''''''''���[�v��
For i = 1 To 6
    For k = 1 To 3
        pHariLoop(k, i) = IIf(pKatamochi1(i - 1, k - 1) = "", 0, pKatamochi1(i - 1, k - 1))
    Next k
Next i

'�O���[�v�S�؂̒����� �N�_��
pHari���[�v������(1) = pW(1) - (pHariKaburi(3) + pKatamochi6(0) / 2 + pHariDai(1) / 2 + pHariLoop(1, 2) / 2) * 2
pHari���[�v������(1) = Int(pHari���[�v������(1) / 2) * 2
'�O���[�v�S�؂̒����� �N�_��
pHari���[�v������(2) = pW(1) - (pHariKaburi(3) + pKatamochi6(0) / 2 + pHariDai(1) / 2 + pHariLoop(1, 5) / 2) * 2
pHari���[�v������(2) = Int(pHari���[�v������(2) / 2) * 2

'���[�v�S��R(1) = 0 '''''''''' ���[�v�̔��a�@�P�~  B/2
'���[�v�S��R(1) = 340 '''''''' ���[�v�̔��a----- ������ԗL��

���[�v�S��R(1) = 0: ���[�v�S��R(2) = 0: ���[�v�S��R(3) = 0: ���[�v�S��R(4) = 0
If pHariLoop(3, 2) <> 0 And pHariLoop(1, 2) / 2 <> pHariLoop(3, 2) Then
    ���[�v�S��R(1) = pHariLoop(3, 2)
End If
If pHariLoop(3, 3) <> 0 And pHariLoop(1, 3) / 2 <> pHariLoop(3, 3) Then
    ���[�v�S��R(2) = pHariLoop(3, 3)
End If
If pHariLoop(3, 5) <> 0 And pHariLoop(1, 5) / 2 <> pHariLoop(3, 5) Then
    ���[�v�S��R(3) = pHariLoop(3, 5)
End If
If pHariLoop(3, 6) <> 0 And pHariLoop(1, 6) / 2 <> pHariLoop(3, 6) Then
    ���[�v�S��R(4) = pHariLoop(3, 6)
End If

'''''''''''''''''''''''''''''''''''''����
'If pKatamochi3(0) <> "" Then
'    pHariDai(3) = pKatamochi3(0)
'Else
'    pHariDai(3) = 0
'End If
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

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''�������Ԃ�

aa1 = Val(pKutai0(0)) + pkuitaiDai(1) + Val(pKutai9(1, 2)) '��̐��H�������Ԃ�
aa2 = Val(pKatamochi0(2)) + Val(pKatamochi12(0))

   If pB(4) = 0 Then
      bb1 = aa1
   Else
      bb1 = aa2
   End If
   If pB(5) = 0 Then
      bb2 = aa1
   Else
      bb2 = aa2
   End If

    If pHariLoop(1, 1) = 0 Then '���������Ԃ�
       pHariLoop(1, 1) = Round(bb1 + pHariDai(1) / 2, 0)
    End If
    If pHariLoop(1, 4) = 0 Then '�E�������Ԃ�
       pHariLoop(1, 4) = Round(bb2 + pHariDai(1) / 2, 0)
    End If
    
    ���������Ԃ� = pHariLoop(1, 1) 'min(pHariLoop(1, 1), Round(bb1 + pHariDai(1) / 2, 0))
    �E�������Ԃ� = pHariLoop(1, 4) 'min(pHariLoop(1, 4), Round(bb2 + pHariDai(1) / 2, 0))
    
Dim Da1 As Single, Da2 As Single, DA3 As Single
Dim L4 As Single, L5 As Single, L6 As Single, L7 As Single
Dim strQ1 As String, strQ2 As String

    Da1 = pHariDai(1)
    Da2 = pHariDai(1)

If pHariPictW(1) <> "" Then
    LL = F_Total_L(pHariPictW(1))
    Call L1L2(pHariPictW(1), LL1, LL2)
    If Mid(pHariPictW(1), 1, 1) = "-" Then
        LL1 = pHariLoop(1, 1)
        LL2 = pB(1) - LL2 ' Abs(LL2)
    End If
'    If LL2 > pB(1) / 2 Then LL2 = pB(1) - LL2
    If LL1 = 0 Then
       ���������Ԃ� = min(Round(bb1 + pHariDai(3) / 2, 0), pHariLoop(1, 1))
       If Round(bb1 + pHariDai(3) / 2, 0) < pHariLoop(1, 1) Then Da1 = pHariDai(3)
    Else
       ���������Ԃ� = min(LL1, pHariLoop(1, 1))
    End If
    If LL2 = 0 Then
       �E�������Ԃ� = min(Round(bb2 + pHariDai(3) / 2, 0), pHariLoop(1, 4))
       If Round(bb2 + pHariDai(3) / 2, 0) < pHariLoop(1, 4) Then Da2 = pHariDai(3)
    Else
       �E�������Ԃ� = min(LL2, pHariLoop(1, 4))
    End If
    ���������Ԃ� = Round(���������Ԃ�, 0)
    �E�������Ԃ� = Round(�E�������Ԃ�, 0)
    If InStr(pHariPictW(1), "0+") = 1 Then
       pHariPictW(1) = Format(���������Ԃ�, "0") & Mid(pHariPictW(1), 2, Len(pHariPictW(1)))
    End If
    If InStr(pHariPictW(1), "+0") <> 0 Then
       pHariPictW(1) = Mid(pHariPictW(1), 1, Len(pHariPictW(1)) - 1) & Format(�E�������Ԃ�, "0")
    End If
End If
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

'''''''''''''''''''''''''''''''''''''�����S��
If pKatamochi6(0) <> "" Then
    pHariDai(4) = pKatamochi6(0)
Else
    pHariDai(4) = 0
End If
DA3 = Da1 'pHariDai(4) '''''''' DA3 = DA1

If pKatamochi7(0) <> "" Then
    pHariBon(1) = pKatamochi7(0)
Else
    pHariBon(1) = 0
End If
pHariStrW(1) = pHariStrW(1) - ���������Ԃ�
pHariStrW(2) = pHariStrW(2) - �E�������Ԃ�

    pHariPictW(2) = pKatamochi8(0)
    LL = F_Total_L(pHariPictW(2))
    If LL <> pB(1) Then
            L2 = Round(���������Ԃ� - (Da1 - DA3) / 2, 0)
            L7 = Round(�E�������Ԃ� - (Da1 - DA3) / 2, 0)
        If LL < 51 Then ''''''''''''' �{���̓��͂̏ꍇ
            L1 = (Val(pHariStrW(1)) + Val(pHariStrW(2))) - pB(1) + ���������Ԃ� + �E�������Ԃ�
            If pHariLoop(1, 3) = 0 Then
                L3 = 0
            Else
                L3 = Round(pHariLoop(1, 1) + (pHariLoop(1, 2) - pHariLoop(1, 3)) / 2, 0) - ���������Ԃ�
            End If
            L4 = Round(���������Ԃ� + Val(pHariStrW(1)) - L1 - L2 - L3, 0)
            If pHariLoop(1, 6) = 0 Then
                L6 = 0
            Else
                L6 = Round(pHariLoop(1, 4) + (pHariLoop(1, 5) - pHariLoop(1, 6)) / 2, 0) - �E�������Ԃ�
            End If
            L5 = Round(�E�������Ԃ� + Val(pHariStrW(2)) - L1 - L7 - L6, 0)
            
            If L4 = L5 Then
                LL1 = (LL - 6) / 2 + 1
                LL2 = (LL - 6) / 2 + 1
            Else
                LL1 = Int((LL - 5) * L4 / (L4 + L5))
                LL2 = Int((LL - 5) * L5 / (L4 + L5))
                LL2 = (LL - 5) - LL1
                LL1 = LL1 + 1
                LL2 = LL2 + 1
            End If

            If LL1 = 1 Then
                strQ1 = Format(L4, "0")
            Else
                strQ1 = Format(L4 / LL1, "0.0")
                If Mid(strQ1, Len(strQ1)) = "0" Then strQ1 = Format(L4 / LL1, "0")
                strQ1 = Format(LL1, "0") & "x" & strQ1
            End If
            If LL2 = 1 Then
                strQ2 = Format(L5, "0")
            Else
                strQ2 = Format(L5 / LL2, "0.0")
                If Mid(strQ2, Len(strQ2)) = "0" Then strQ2 = Format(L5 / LL2, "0")
                strQ2 = Format(LL2, "0") & "x" & strQ2
            End If
            pHariPictW(2) = Format(L2, "0") & "+" & IIf(L3 = 0, "", Format(L3, "0") & "+") & strQ1 & "+" & _
                            Format(L1, "0") & "+" & strQ2 & "+" & IIf(L6 = 0, "", Format(L6, "0") & "+") & Format(L7, "0")
        Else
'            If LL + L2 + L7 = pB(1) Then
                If InStr(pHariPictW(2), "0+") = 1 Then
                   pHariPictW(2) = Format(L2, "0") & Mid(pHariPictW(2), 2, Len(pHariPictW(2)))
                End If
                If InStr(pHariPictW(2), "+0") <> 0 Then
                   pHariPictW(2) = Mid(pHariPictW(2), 1, Len(pHariPictW(2)) - 1) & Format(L7, "0")
                End If
'            End If
        End If
    End If

'''''''''''''''''''''''''''''''''''''�����⋭�S��
If pKatamochi9(0) <> "" Then
    pHariDai(5) = pKatamochi9(0)
Else
    pHariDai(5) = 0
End If

pHari������ = 1 '''''''''' ���ׯ�߂̓����ɔz�u
If pKatamochi10(0) <> "" Then
    If Mid(pKatamochi10(0), Len(pKatamochi10(0))) = "@" Then
        pHari������ = 2 '''''''' ���ׯ�߂̊O���ɔz�u
        pKatamochi10(0) = Mid(pKatamochi10(0), 1, Len(pKatamochi10(0)) - 1)
    End If
    pHariBon(2) = pKatamochi10(0)
Else
    pHariBon(2) = 0
End If
pHariPicth(2) = pKatamochi11(0)

''''''''''''''''''''''''''''''''''''�X�^�[���b�v
'''If pKatamochi12(0) <> "" Then
'''    pHariStrD(1) = pKatamochi12(0)
'''Else
'''    pHariStrD(1) = 0
'''End If
'''If pKatamochi13(0) <> "" Then
'''    pHariStrW(1) = pKatamochi13(0)
'''Else
'''    pHariStrW(1) = 0
'''End If
'''If pKatamochi14(0) <> "" Then
'''    pHariStrW(2) = pKatamochi14(0)
'''Else
'''    pHariStrW(2) = 0
'''End If
''''''''''''''''''''''''''''''''''''�X�^�[���b�v
pHariPictW(3) = pKatamochi15(0)
LL = F_Total_L(pHariPictW(3))
LL3 = max(pW(4), pW(5))
If LL <> 0 And LL <> LL3 Then
        If InStr(pHariPictW(3), "x") + InStr(pHariPictW(3), "*") = 0 Then '''''' 150
           L1 = Int((LL3) / LL - 1.2)
           L2 = LL3 - L1 * LL
           pHariPictW(3) = Format(L1, "0") & "x" & Format(LL, "0") & "+" & Format(L2, "0")
        Else '''''' 46x150
           L2 = LL3 - LL
           pHariPictW(3) = pHariPictW(3) & "+" & Format(L2, "0")
        End If
End If
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
LL = F_Total_L(pHariPictW(4))
LL3 = pW(6)
If LL <> 0 And LL <> LL3 Then
        If InStr(pHariPictW(4), "x") + InStr(pHariPictW(4), "*") = 0 Then '''''' 150
           L1 = Round(LL3 / LL, 4)
           If L1 - Int(L1) < 0.0001 Then
                pHariPictW(4) = Format(L1, "0") & "x" & Format(LL, "0")
           Else
                L1 = Int(L1 - 2)
                L2 = (LL3 - L1 * LL) / 2
                pHariPictW(4) = Format(L2, "0") & "+" & Format(L1, "0") & "x" & Format(LL, "0") & "+" & Format(L2, "0")
           End If
        Else '''''' 46x150
           L2 = (LL3 - LL) / 2
           pHariPictW(4) = Format(L2, "0") & "+" & pHariPictW(4) & "+" & Format(L2, "0")
        End If
End If

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
pStopPictW1(3) = pShishou5(3, 2)
If pStopPictW1(2) = "" Then pStopPictW1(2) = Format(pStop2(2, 2), "0")

'�I�_��
For i = 1 To 3
    For k = 1 To 3
        pStop3(k, i) = IIf(pShishou5(i + 3, k - 1) = "", 0, pShishou5(i + 3, k - 1))
    Next k
Next i
pStopPictW2(1) = pShishou5(7, 0)
pStopPictW2(2) = pShishou5(7, 1)
pStopPictW2(3) = pShishou5(7, 2)
If pStopPictW2(2) = "" Then pStopPictW2(2) = Format(pStop3(2, 2), "0")

'LL = F_Total_L(pStopPictW2(1)) '''''''''''''''''''''''''''''''''''''''''''' 03/10/25

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

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''�X�^�[���b�v
pKisoStrDai(1) = IIf(pKiso4(0) = "", 0, pKiso4(0))
pKisoStrDai(2) = IIf(pKiso6(0) = "", 0, pKiso6(0))
Kiso�d��(1) = 0: Kiso�d��(2) = 0
If InStr(pKiso5(0), "k") <> 0 Or InStr(pKiso5(0), "K") <> 0 Then
   Kiso�d��(1) = 1
   pKiso5(0) = Mid(pKiso5(0), 1, Len(pKiso5(0)) - 1)
End If
If InStr(pKiso7(0), "k") <> 0 Or InStr(pKiso7(0), "K") <> 0 Then
   Kiso�d��(2) = 1
   pKiso7(0) = Mid(pKiso7(0), 1, Len(pKiso7(0)) - 1)
End If
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
'���� �㑤
If pKiso0(2) < 0 Then
    pKisoKaburi1(3) = -pKiso0(2)
Else
    pKisoKaburi1(3) = pKiso0(2) + pKisoDai(9) + pKisoDai(1) + pKisoDai(5) / 2
End If
'���� ����
If pKiso0(2) < 0 Then
    pKisoKaburi1(4) = -pKiso0(2)
Else
    pKisoKaburi1(4) = pKiso0(2) + pKisoDai(9) + pKisoDai(1) + pKisoDai(7) / 2
End If

''''''''''''''''''''''''' ���p������ ���Ԃ�
'�㑤
    pKisoKaburi2(1) = pKisoKaburi1(1) + pKisoDai(1) / 2 + pKisoDai(5) / 2
'����
    pKisoKaburi2(2) = pKisoKaburi1(2) + pKisoDai(3) / 2 + pKisoDai(7) / 2
'���� �㑤
    pKisoKaburi2(3) = pKiso0(2) + pKisoDai(9) + pKisoDai(1) / 2
'���� ����
    pKisoKaburi2(4) = pKiso0(2) + pKisoDai(9) + pKisoDai(3) / 2

    For i = 1 To 4
        pKisoKaburi1(i) = Round(pKisoKaburi1(i), 0)
        pKisoKaburi2(i) = Round(pKisoKaburi2(i), 0)
    Next i
For i = 1 To 4
    If pKisoPictW(i) <> "" Then
        LL = F_Total_L(pKisoPictW(i))
        LL3 = pW(7)
        If i <= 2 Then
            L7 = Round(pKisoKaburi2(3), 0)
        Else
            L7 = Round(pKisoKaburi2(4), 0)
        End If
        
        If LL <> LL3 Then
            If InStr(pKisoPictW(i), "x") + InStr(pKisoPictW(i), "*") = 0 Then '''''' 150
               L1 = Round((LL3 - L7 * 2) / LL, 4)
               If L1 - Int(L1) < 0.0001 Then
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L1, "0") & "x" & _
                                         Format(LL, "0") & "+" & Format(L7, "0")
               Else
                    L1 = Int(L1 - 2)
                    L2 = (LL3 - L1 * LL - L7 * 2) / 2
                    If L2 = LL Then L1 = L1 + 2
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                                    Format(L1, "0") & "x" & Format(LL, "0") & "+" & _
                                    Format(L2, "0") & "+" & Format(L7, "0")
               End If
            Else '''''' 46x150
               L2 = (LL3 - LL - L7 * 2) / 2
               pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                               pKisoPictW(i) & "+" & _
                               Format(L2, "0") & "+" & Format(L7, "0")
            End If
        End If
    End If
Next i

''''''''''''''''''''''''' ���p������ ���Ԃ�
'''�㑤
''    pKisoKaburi2(1) = pKisoKaburi1(1) + pKisoDai(1) / 2 + pKisoDai(5) / 2
'''����
''    pKisoKaburi2(2) = pKisoKaburi1(2) + pKisoDai(3) / 2 + pKisoDai(7) / 2
'''����
''    pKisoKaburi2(3) = pKiso0(2) + pKisoDai(9) + pKisoDai(5) / 2

For i = 5 To 8
    If pKisoPictW(i) <> "" Then
        LL = F_Total_L(pKisoPictW(i))
        LL3 = pB(7) + pB(8) + pB(9)
        If i <= 6 Then
            L7 = Round(pKisoKaburi1(3), 0)
        Else
            L7 = Round(pKisoKaburi1(4), 0)
        End If

        If LL <> LL3 Then
            If InStr(pKisoPictW(i), "x") + InStr(pKisoPictW(i), "*") = 0 Then '''''' 150
               L1 = Round((LL3 - L7 * 2) / LL, 4)
               If L1 - Int(L1) < 0.0001 Then
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L1, "0") & "x" & _
                                    Format(LL, "0") & "+" & Format(L7, "0")
               Else
                    L1 = Int(L1 - 2)
                    L2 = (LL3 - L1 * LL - L7 * 2) / 2
                    If L2 = LL Then L1 = L1 + 2
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                                    Format(L1, "0") & "x" & Format(LL, "0") & "+" & _
                                    Format(L2, "0") & "+" & Format(L7, "0")
               End If
            Else '''''' 46x150
               L2 = (LL3 - LL - L7 * 2) / 2
               pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                               pKisoPictW(i) & "+" & _
                               Format(L2, "0") & "+" & Format(L7, "0")
            End If
        End If
    End If
Next i


For i = 1 To 3
    pKisoKaburi1(i) = Round(pKisoKaburi1(i), 0)
    pKisoKaburi2(i) = Round(pKisoKaburi2(i), 0)
Next i
Kiso���Ԃ� = pKisoKabuse

'===================================== �Y ========

pKuiHon = IIf(pKuiHaikin0(0) = "", 0, pKuiHaikin0(0))
pKuiTouNaga = IIf(pKuiHaikin1(0) = "", 0, pKuiHaikin1(0))
pKuiKaburi = IIf(pKuiHaikin2(0) = "", 0, pKuiHaikin2(0))
L1 = -pKuiTouNaga
L2 = 0
L3 = 2
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
            If k = 1 And (i = L3 Or i = 15) Then
                L1 = L1 + pKuiJiku(k, i)
                If L2 = 0 And pKuiJiku(k, i) = 0 Then L2 = i
                L3 = L3 + 3
            End If
        End If
    Next k
Next i
If L1 <> pKuinaga Then
    pKuiJiku(1, L2) = pKuinaga - L1
'    pKuiJiku(1, L2 + 1) = pKuiJiku(1, 15)
'    If L2 + 1 <> 15 Then
'    pKuiJiku(1, 15) = 0
'    End If
End If
For i = 1 To 3
    For k = 1 To 10
        pKuiStr(k, i) = IIf(pKuiHaikin5(i - 1, k - 1) = "", 0, pKuiHaikin5(i - 1, k - 1))
    Next k
Next i
L1 = 0: L2 = 0
    For k = 3 To 10
            L1 = L1 + pKuiStr(k, 2) * pKuiStr(k, 3)
            If L2 = 0 And pKuiStr(k, 1) = 0 Then L2 = k
    Next k

If L1 <> pKuinaga - pKuiJiku(1, 15) Then
      pKuiStr(L2, 1) = pKuiStr(L2 - 1, 1)
      pKuiStr(L2, 2) = 1
      pKuiStr(L2, 3) = pKuinaga - pKuiJiku(1, 15) - L1
'      pKuiStr(L2 + 1, 1) = pKuiStr(L2, 1)
'      pKuiStr(L2 + 1, 2) = 1
'      pKuiStr(L2 + 1, 3) = pKuiJiku(1, 15)
End If

pKuiKumiDai(1) = IIf(pKuiHaikin6(0, 0) = "", 0, pKuiHaikin6(0, 0))
pKuiKumiDai(2) = IIf(pKuiHaikin6(0, 1) = "", 0, pKuiHaikin6(0, 1))

pKuiKumitateW(1) = pKuiHaikin6(1, 0) '''''''' �g�ݗ���
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Call L1L2(pKuiKumitateW(1), LL1, LL2)
'LL1 = LL1 + pKuiTouNaga
'pKuiKumitateW(1) = Format(LL1, "0") & Mid(pKuiKumitateW(1), InStr(pKuiKumitateW(1), "+"))
LL = F_Total_L(pKuiKumitateW(1))
If LL <> pKuinaga - pKuiJiku(1, 15) Then
pKuiKumitateW(1) = pKuiKumitateW(1) & "+" & Format((pKuinaga - pKuiJiku(1, 15) - LL), "0")
End If
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
pKuiKumitateW(2) = pKuiHaikin6(1, 1) '''''''' �X�y�[�T�[
pKuiSpesaN = IIf(pKuiHaikin3(0) = "", 0, pKuiHaikin3(0))

pKuiKaburi0 = pKuiKaburi + pKuiJiku(1, 1) / 2 '''''''' �c���Ԃ�


Call ���r��}���s

End Sub

Private Function F_Total_L(ByVal Moj As String) As Single
   '  �v�Z�� �̂����v�v�Z   ������p
   
    ' exp Moj="250+3*(1000+250)+2x(400+300)"  ---> 5400
    Dim Ds(500) As String, Di(200), ii As Integer, ni As Integer, Mojn As Integer
    Dim D1s As String, D2s As String, D3s As String, DDs As String
    Dim K_in As Integer, n2i As Integer, ��i As Integer, ii2 As Integer
    Dim Dii(900) As Single, ���v As Single
    
    ���v = 0
    K_in = 0
    Moj = Replace��s(Moj)
    Mojn = Len(Moj)
    For ii = 1 To Mojn
        D1s = Mid(Moj, ii, 1)
        Select Case D1s
        Case "+":
                 Select Case K_in
                 Case 0
                 Case Else: D2s = Mid(Moj, 1, ii - 1): D3s = Mid(Moj, ii + 1):  Moj = D2s + "\" + D3s
                 End Select
        Case "(": K_in = K_in + 1: If K_in > 1 Then ��er = " (" + Moj + ")  ( ) ����������":  If ����CK > 99 Then Stop
        Case ")": K_in = K_in - 1: If K_in < 0 Then ��er = " (" + Moj + ")  ( ) ����������":  If ����CK > 99 Then Stop
        End Select
        Next ii
   
    DDs = "": Call Ddata("+", Moj, Ds, Di, ni)
    For ii = 1 To ni
        D1s = Ds(ii)
        ��i = 1: n2i = InStr(D1s, "x"): If n2i > 1 Then ��i = Val(Mid(D1s, 1, n2i - 1)): D1s = Mid(D1s, n2i + 1)
        Select Case Mid(D1s, 1, 1)
        Case "(": n2i = Len(D1s): D1s = Mid(D1s, 2, n2i - 2)
        Case Else
        End Select
    
        For ii2 = 1 To ��i:   DDs = DDs + "+" + D1s: Next ii2
        Next ii
   
    DDs = �����ϊ�(DDs, "\", "+")
    Moj = Mid(DDs, 2)
   
   
   Call Ddata_D("+", Moj, Dii, ni)
   For ii = 1 To ni: ���v = ���v + Dii(ii): Next ii
   F_Total_L = ���v
   
   End Function

Private Sub L1L2(ByVal Moj As String, L1 As Single, L2 As Single)
   '  �v�Z�� �̑O��̒���   ������p
   
    ' exp Moj="250+3*(1000+250)+2x(400+300)"  ---> 5400
    Dim Ds(500) As String, Di(200), ii As Integer, ni As Integer, Mojn As Integer
    Dim D1s As String, D2s As String, D3s As String, DDs As String
    Dim K_in As Integer, n2i As Integer, ��i As Integer, ii2 As Integer
    Dim Dii(900) As Single, ���v As Single
    
    ���v = 0
    K_in = 0
    Moj = Replace��s(Moj)
    Mojn = Len(Moj)
    For ii = 1 To Mojn
        D1s = Mid(Moj, ii, 1)
        Select Case D1s
        Case "+":
                 Select Case K_in
                 Case 0
                 Case Else: D2s = Mid(Moj, 1, ii - 1): D3s = Mid(Moj, ii + 1):  Moj = D2s + "\" + D3s
                 End Select
        Case "(": K_in = K_in + 1: If K_in > 1 Then ��er = " (" + Moj + ")  ( ) ����������":  If ����CK > 99 Then Stop
        Case ")": K_in = K_in - 1: If K_in < 0 Then ��er = " (" + Moj + ")  ( ) ����������":  If ����CK > 99 Then Stop
        End Select
        Next ii
   
    DDs = "": Call Ddata("+", Moj, Ds, Di, ni)
    For ii = 1 To ni
        D1s = Ds(ii)
        ��i = 1: n2i = InStr(D1s, "x"): If n2i > 1 Then ��i = Val(Mid(D1s, 1, n2i - 1)): D1s = Mid(D1s, n2i + 1)
        Select Case Mid(D1s, 1, 1)
        Case "(": n2i = Len(D1s): D1s = Mid(D1s, 2, n2i - 2)
        Case Else
        End Select
    
        For ii2 = 1 To ��i:   DDs = DDs + "+" + D1s: Next ii2
        Next ii
   
    DDs = �����ϊ�(DDs, "\", "+")
    Moj = Mid(DDs, 2)
   
   
   Call Ddata_D("+", Moj, Dii, ni)
'   For ii = 1 To ni: ���v = ���v + Dii(ii): Next ii
'   F_Total_L = ���v
   L1 = Dii(1)
   L2 = Dii(ni)
   
   End Sub

