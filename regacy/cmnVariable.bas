Attribute VB_Name = "cmnVariable"
Option Explicit
'///////////////////////////////////////////////////////////
'Interface�ȊO�ł��g�p����L��ϐ���萔 - cmnVariable.bas
'   99/11/13 kit�쐬
'///////////////////////////////////////////////////////////

'///////////////////////////////////////////////////////////
'�Œ蕶����̒��g��
'ProjectMain(main.bas)���� InitFixStrings �Őݒ肵�Ă���
'///////////////////////////////////////////////////////////

'===========================================================
'�v�Z��ނ̔���t���O�̒l
'===========================================================
Public Const gcCalcFlag_Normal As Integer = 0
Public Const gcCalcFlag_KuiHanryoku As Integer = 1  '�Y���͂̂�
Public Const gcCalcFlag_Shu As Integer = 2          '�V���[���͂̂�
Public Const gcCalcFlag_Kat As Integer = 3          '�Ў����t�H�[���̂�
Public Const gcCalcFlag_Kui As Integer = 4          '�Y
Public Const gcCalcFlag_Kutai As Integer = 5      '��
Public Const gcCalcFlag_KutaiKuiFooting As Integer = 6 '���E�Y�E�t�[�`���O

'===========================================================
'��{�f�[�^(frmBasicData)�̃f�[�^
'===========================================================
Public Const gcstrBasicDataFile As String = "BasicData"





'===========================================================
'�v�Z�t�H�[���ifrmCalc�j�̃f�[�^
'===========================================================
Public pOutputPriority(6) As Variant
Public pOutputName(6) As Variant
Public pOutputSize(6) As Variant
Public pUpdate(6) As Variant
Public pEtc(2) As Variant



'0 - �`�F�b�N���� 1 - �ϐk������ 2 - �ϐk�̂�
Public pCalcTaishin As Integer

'SNAP�t�@�C���o�̓t���O
Public pOutputSNAPData As Integer   '1�ŏo��

'SNAP�t�@�C���o�̓p�X
Public pOutputSNAPDir As String

'SNAP�t�@�C�����Â��`���ŏo�͂���t���O
Public pOutputOldSNAPName As Integer   '1�ŋ��`��----SNAP���������ɕύX 02/09/09 nagase


'===========================================================
'MDIForm�iMDIForm_���r�j�̃f�[�^
'===========================================================
Public Const gcstrMDIFile As String = "MDI"


'===========================================================
'�����\��(frmKKouzou)�̃f�[�^
'===========================================================
Public Const gcstrKKouzouFile As String = "KKouzou"

'�v�Z�p
Public pB() As Variant
Public pW() As Variant
Public pH() As Variant

Public pKuikei As Variant
Public pKuinaga As Variant

Public pKuihaic1() As Variant
Public pKuihaic2() As Variant

Public pRHanti() As Variant
Public pShakaku() As Variant

Public pFootingBothTepa As Variant


'===========================================================
'�Ў����E����(frmKatamochi)�̃f�[�^
'===========================================================
Public Const gcstrKatamochiFile As String = "Katamochi"

'�v�Z�p
Public pKatamochi0() As Variant
Public pKatamochi1() As Variant
Public pKatamochi2() As Variant
Public pKatamochi3() As Variant
Public pKatamochi4() As Variant
Public pKatamochi5() As Variant
Public pKatamochi6() As Variant
Public pKatamochi7() As Variant
Public pKatamochi8() As Variant
Public pKatamochi9() As Variant
Public pKatamochi10() As Variant
Public pKatamochi11() As Variant
Public pKatamochi12() As Variant
Public pKatamochi13() As Variant
Public pKatamochi14() As Variant
Public pKatamochi15() As Variant
Public pKatamochi16() As Variant
Public pKatamochi17() As Variant
Public pKatamochi18() As Variant


'===========================================================
'��b�z��(frmKisohaikin)�̃f�[�^
'===========================================================
Public Const gcstrKisohaikinFile As String = "Kisohaikin"

'�v�Z�p
Public pKiso0() As Variant
Public pKiso1() As Variant
Public pKiso2() As Variant
Public pKiso3() As Variant
Public pKiso4() As Variant
Public pKiso5() As Variant
Public pKiso6() As Variant
Public pKiso7() As Variant


'===========================================================
'���(frmKutai)�̃f�[�^
'===========================================================
Public Const gcstrKutaiFile As String = "Kutai"

'�v�Z�p
Public pKutai0() As Variant
Public pKutai1() As Variant
Public pKutai2() As Variant
Public pKutai3() As Variant
Public pKutai4() As Variant
Public pKutai5() As Variant
Public pKutai6() As Variant
Public pKutai7() As Variant
Public pKutai8() As Variant
Public pKutai9() As Variant
Public pKutai10() As Variant
Public pKutai11() As Variant


'===========================================================
'�x��(frmShishou)�̃f�[�^
'===========================================================
Public Const gcstrShishouFile As String = "Shishou"

'�v�Z�p
Public pShishou0() As Variant
Public pShishou1() As Variant
Public pShishou2() As Variant
Public pShishou3() As Variant
Public pShishou4() As Variant
Public pShishou5() As Variant


'===========================================================
'�Y�z��(frmKuiHaikin)�̃f�[�^
'===========================================================
Public Const gcstrKuiHaikinFile As String = "KuiHaikin"

'�v�Z�p
Public pKuiHaikin0() As Variant
Public pKuiHaikin1() As Variant
Public pKuiHaikin2() As Variant
Public pKuiHaikin3() As Variant
Public pKuiHaikin4() As Variant
Public pKuiHaikin5() As Variant
Public pKuiHaikin6() As Variant


'===========================================================
'�v�Z�E����̃f�[�^   2000/09/14 �]�� �ǉ�
'===========================================================
Public Const gcstrKeisanFile As String = "Keisan"
Public Const gcstrDigestFile As String = "Digest"

Public gintOutput(13) As Integer
Public gintUseExtFile(3) As Integer
Public gstrPickUpFileName(2) As String
Public gintKuiStartNo As Integer

'�����\�̂ݏo�͎���true 2002/01/13 kit
Public gbKuibaneOnlySoukatu As Boolean

'===========================================================
'�f�[�^�t�@�C���֌W
'===========================================================
Public Const gcstrCommonDataFile As String = "���r�}���V�X�e��"
Public Const gcstrInitFile As String = "���r�}���V�X�e��"        '*.ini �t�@�C��

Public Const gcstrFileMaskAll = "|�S�Ă�̧�� (*.*)|*.*"

Public gstrAppDir As String         '���s�t�@�C���i�A�v���{�́j�̂���p�X��
Public gstrExeDir As String         '���s�t�@�C���iTruEXE�j�̂���p�X��
Public gstrPfsDir As String         '���s�t�@�C���iPFORCE�j�̂���p�X��
Public gstrFrXDir As String         '���s�t�@�C���iFRAME�j�̂���p�X��
Public gstrDanDir As String         '���s�t�@�C���iWinDan�j�̂���p�X��
Public gstrJinDir As String         '���s�t�@�C���iWinJin) �̂���p�X��
Public gstrSNAPDir As String        'SNAP�t�@�C���̃f�t�H���g�o�͐�t�H���_��
Public gstrCurDir As String         '�f�[�^�t�@�C���p�X��
Public gstrMarkDir As String        '���ʃf�[�^�p�X��
Public gstrCalcDir As String        '�v�Z�p
Public gstrFrmDir As String         '�t���[���f�ʗ͗p
Public gstrSOKKATUDir As String     '�݌v�����\
Public gstrTmpDir As String         '��Ɨp
Public gstrCurFilename As String    '���݊J���Ă���A�[�J�C�u�t�@�C����
Public gstrTitle As String          '�t�@�C���^�C�g��

Public gstrInitDirPartOpen As String '���̃t�@�C������Ǎ��݂̍ۂ̏����f�B���N�g��

Public Const gcstrFileExtNoDot As String = "phk"                '�ۑ��p
Public Const gcstrFileExt As String = "." & gcstrFileExtNoDot
Public Const gcstrCalcFileExtNoDot As String = "clc"            '�v�Z�p
Public Const gcstrCalcFileExt As String = "." & gcstrCalcFileExtNoDot

Public Const gcstrCmnFileExt As String = ".dat"                 '���ʃt�@�C���p
Public Const gcstrNameFile As String = "FileName." & gcstrFileExtNoDot '���A�t�@�C�����̕ۑ��p

Public Const gcstrSNAPFileExt As String = ".ndt"                'SNAP�f�[�^�p

'===========================================================
'�A�v���P�[�V�����ŋ��ʂ̃f�[�^
'===========================================================
'Public Type typInputList
'    Dim strMark As String
'    Dim strName As String
'End Type
'
'Public usrListSharyou As typInputList

'===========================================================
'���̑��̃O���[�o���ϐ�
'===========================================================
Public Const gcsngNullVal = -9000000# ' Null�l

Public gcintScrbarmyspace As Integer
Public Const gcintObjmyspace = 80
Public Const gcintGridmyspaceV = 80

'SI�P�ʂɂ��P�ʂ̐؂�ւ��p �Y���� = 1 ��SI�P��
Public Const gcintNotSI = 0
Public Const gcintSI = 1

Public gcstrTf(1) As String         'tf or kN
Public gcstrTf_m3(1) As String      'tf/m3 or kN/m3
Public gcstrKgf_cm2(1) As String    ' kgf/cm2 or N/mm2

'���݂̒P�ʌn
Public gintTanni As Integer

'�_�C�W�F�X�g�ň���̗L��
Public gbDigest As Boolean

'�e�t�H�[���̃f�[�^�ύX�t���O
Public Const gciFormNum As Integer = 15
Public gbolChgFlag(gciFormNum) As Boolean
Public Const gcfrmMDIForm_���r = 0
Public Const gcfrmJKouzou = 1
Public Const gcfrmJHanryoku = 2
Public Const gcfrmRessha = 3
Public Const gcfrmKKouzou = 4
Public Const gcfrmJiban = 5
Public Const gcfrmKuiHaichi = 6
Public Const gcfrmSonota = 7
Public Const gcfrmKatamochi = 8
Public Const gcfrmKisohaikin = 9
Public Const gcfrmSekkei = 10
Public Const gcfrmKutai = 11
Public Const gcfrmKeisan = 12
Public Const gcfrmSNAP = 13

Public Const gcfrmShishou = 14
Public Const gcfrmKuiHaikin = 15

Public Const gcfrmBasicData = 16

'�@�@�\ �F  �v�Z�O�̏����B�f�[�^���v�Z�p�t�@�C������ǂݍ���ŕϐ��Ɋi�[����
'�߂�l �F  ""�Ő���I��
'Public Function gSetCmnVariable() As String
'    Dim intNum As Integer
'
'    On Error GoTo ErrorHandler
'
'    gSetCmnVariable = ""
'
'    '�v�Z�p�t�@�C������ǂݍ���
'    Call FrTextDataInput(gstrCalcDir & gcstrJKouzouFile & gcstrCalcFileExt, intNum, False, pJOUBN, pJOUB, pSUPN, pSUP, pSUP2, pMUK)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrJHanryokuFile & gcstrCalcFileExt, intNum, False, pHANA, pHANB, pHANC, pHAND, pHANK)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrResshaFile & gcstrCalcFileExt, intNum, False, pRES, pRESN, pTANJU, pKYOD1, pKYOD2)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrKKouzouFile & gcstrCalcFileExt, intNum, False, pKUTAI, pDOKA, pDENS, pDEN)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrJibanFile & gcstrCalcFileExt, intNum, False, pJIBAN, pKUISENTAN, pKUISYU, pKUIKEI, pKUINAG, pJIBANSHU)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrKuiHaichiFile & gcstrCalcFileExt, intNum, False, pKUIHAIX, pKUIHAIY)
'
'    Exit Function
'
'ErrorHandler:
'    Close
'    gSetCmnVariable = Format$(Err.Number) & vbCrLf & Err.Description
'
'End Function

Public gbolIsDebug As Boolean '�f�o�b�O���[�h
Public gbolDoCalcHHEN As Boolean  ' �����ψʌv�Z���s True)����  False)���Ȃ�
Public gbolDoCalcPForce As Boolean  ' �����ψʌv�Z���s True)����  False)���Ȃ�
Public gbolZuWaku As Boolean    '�}�g�̍�}

'==========================================================================================
'���r�����̐ߓ_�׏d
Public gLCASE(50, 4)    As Variant  '���H����
                                    '�Y���P�F�b�`�r�d �m��
                                    '�Y���Q�F�P�|���́A�Q�|�����́A�R�|Ӱ��āA�S�|����
Public gCCASE(50, 4)    As Variant  '���H���p����
                                    '�Y���P�F�b�`�r�d �m��
                                    '�Y���Q�F�P�|���́A�Q�|�����́A�R�|Ӱ��āA�S�|����

'���󂯁E�����̎��d
Public Keta_Dload(4)    As Double   '1:tf   2,3,4:tf/m

'�����̎��d
Public Pole_Dload       As Double   'tf/m

'�t�[�`���O�̎��d�i���H�����j
Public Foot_Dload_L(2)  As Double   'tf/m   �P�F����    �Q�F���㕔

'�t�[�`���O�̎��d�i���H���p�����j
Public Foot_Dload_C     As Double   'tf/m

'��ړy�̎��d�i���H�����j
Public Earth_Dload_L(8) As Double   'tf/m   �P�F����    �Q�F���㕔  �R�F����

'��ړy�̎��d�i���H���p�����j
Public Earth_Dload_C(2) As Double   'tf/m   �P�F����    �Q�F����

'�Y�̎��d
Public Pile_Dload       As Double   'tf/m

'��́E�t�[�`���O�̒n�k��
Public Type BodyFoot
    BeamUke_H           As Double   'tf
    BeamUke_M           As Double   'tf�m
    BeamZA_1            As Double   'tf/m   ��[
    BeamZA_2            As Double   'tf/m   �I�x���X�N
    BeamZA_3            As Double   'tf/m   ���[
    Pole                As Double   'tf/m   ���󕔖���
    Foot_1              As Double   'tf     �I�x���X�N
    Foot_2              As Double   'tf
    alf                 As Double   '�I�ǌ��E�̌W��
End Type
Public Body_Qload(2)    As BodyFoot     '�P�F���H����   �Q�F���H���p����

'����
Public Type FloatForce
    Level               As Double   'tf/m   ������
    High                As Double   'tf/m   ������
    Low                 As Double   'tf/m   �ᐅ��
    Pole_Lev            As Double   'tf     �����̏W���׏d ������
    Pole_Hi             As Double   'tf     �����̏W���׏d ������
    Pole_Low            As Double   'tf     �����̏W���׏d �ᐅ��
End Type
Public Float_Load(2)    As FloatForce   '�P�F���H����   �Q�F���H���p����

'���׏d
Public Type WindForce
    BeamUke             As Double   'tf/m
    BeamZA_1            As Double   'tf/m
    BeamZA_2            As Double   'tf/m
    Pole                As Double   'tf/m
End Type
Public Wind_Load(2)     As WindForce    '�P�F��ԗL��   �Q�F��Ԗ���

'���H���p�����E���׏d�n�k�E�I�ǌ��E��Ԃ̌W��
Public Final_Dload_alf  As Double

'==========================================================================================

Public gintCASE As Integer      '�b�`�r�d �m�� �J�E���g�p

'���H����
Public Type CaseData_L
    RB      As Double
    rc      As Double
    HB      As Double
    HC      As Double
    n       As Double
    H       As Double
    m       As Double
    LINE    As Integer  '�O�F���H����       �P�F���H���p����
    Mode    As Integer  '�O�F�v�Z���ʏo��   �P�F�o�͖���    �Q�F�^�C�g���o�͖���
    Msg     As String
End Type
Public gCASEDATA_L    As CaseData_L     '�e�b�`�r�d�̐ߓ_�׏d�v�Z�p�f�[�^

'���H���p����
Public Type CaseData_C
    HB      As Double
    HC      As Double
    m1      As Double
    m2      As Double
    LINE    As Integer  '�O�F���H����       �P�F���H���p����
    Mode    As Integer  '�O�F�v�Z���ʏo��   �P�F�o�͖���    �Q�F�^�C�g���o�͖���
    Msg     As String
End Type
Public gCASEDATA_C    As CaseData_C     '�e�b�`�r�d�̐ߓ_�׏d�v�Z�p�f�[�^

'�����̏Ռ��W��
Public GSYOG(2, 4) As Single       '(i, j)
                                    'i -- 1:�N�_��
                                    '     2:�I�_��
                                    'j -- 1:�P���ډ�(�I��)
                                    '     2:�����ډ�(�I��)
                                    '     3:�P���ډ�(�g�p)
                                    '     4:�����ډ�(�g�p)

'�����\���̏Ռ��W��
Public Impact_Val(4, 4) As Single   'i -- 1:�����[
                                    '     2:̰�ݸމ��ʁE������
                                    '     3:̰�ݸމ��ʁE������
                                    '     4:̰�ݸމ��ʁE�ᐅ��
                                    'j -- 1:�g�p�E�P��
                                    '     2:�g�p�E����
                                    '     3:�I�ǁE�P��
                                    '     4:�I�ǁE����
                                    
Public Impact_ValB(4, 4) As Single   'i -- 1:�����[
                                    '     2:̰�ݸމ��ʁE������
                                    '     3:̰�ݸމ��ʁE������
                                    '     4:̰�ݸމ��ʁE�ᐅ��
                                    'j -- 1:�g�p�E�P��
                                    '     2:�g�p�E����
                                    '     3:�I�ǁE�P��
                                    '     4:�I�ǁE����

'===========================================================
'�x�����v�Z�p�̕ϐ�
'===========================================================
'Footing - Public Sub ���̒f�ʗ͕\()���ő������
Public pMd(2) As Single '1-���H���� 2-���H���p����
Public pNd(2) As Single
Public pVd(2) As Single

'===========================================================
'���g�v�Z�p�̕ϐ�       2000/12/26  kit
'===========================================================
'pStartBuzNo_F(ix, HOK)
'ix  1-Start    2-End
'HOK 1-���H���� 2-���H���p����
Public pFootingBuzNo(2, 2) As Integer   '�t�[�`���O�̃X�^�[�g/�G���h���ޔԍ�
Public pKuiBuzNo(2, 2) As Integer       '�Y�̃X�^�[�g/�G���h���ޔԍ�

Public K�I�ǐk�x(2) As Single
Public KPage As Integer '               �y�[�W�o�͂̍ہ@PAGE ��\��  --- 1
Public Ksnap������(2, 2, 2) As Single '     �X�g�b�p�[�����͗p
Public gSNAP�㏈��(2)       As Single '     SNAP�㏈���@�����I��

