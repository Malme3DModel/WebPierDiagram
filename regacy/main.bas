Attribute VB_Name = "ProjectMain"
Option Explicit
Public CurD                     As String

Private Sub main()
    Dim strRestoreFilename As String
    Dim intAns As Integer

    CurD = CurDir
     '�v���e�N�g�`�F�b�N
'    frmChkPr.ChkProtect = False '''''''''''''''''''''''''''�v���e�N�g�`�F�b�N�@�p�X�@nagase
    If frmChkPr.ChkProtect = True Then
        Unload frmChkPr
        Exit Sub
    Else
        Unload frmChkPr
    End If

     '��d�N���`�F�b�N
    If App.PrevInstance = True Then
        MsgBox "���ɋN������" & App.Title & "������܂�"
        'AppActivate App.Title
        End
    End If
    
    '�X�v���b�V���̕\��
    frmSplash.Show
    frmSplash.Refresh
    
    '----------------------------------------------
    '�f�B���N�g���\���̊m�F
    '----------------------------------------------
    gstrAppDir = gGetRegularPath(App.Path)

    '��Ɨp�f�B���N�g���̗L�����`�F�b�N
    gstrTmpDir = gstrAppDir & "temp\"
    If Dir$(gstrTmpDir, vbDirectory) = "" Then MkDir gstrTmpDir
    
    '�v�Z�p�f�B���N�g���̗L�����`�F�b�N
    gstrCalcDir = gstrAppDir & "WDATA\"
    If Dir$(gstrCalcDir, vbDirectory) = "" Then MkDir gstrCalcDir
    
    '���ʃf�[�^�p�f�B���N�g���̗L�����`�F�b�N
    gstrMarkDir = gstrAppDir & "MARK\"
    If Dir$(gstrMarkDir, vbDirectory) = "" Then MkDir gstrMarkDir
    
    '�f�[�^�ۑ��p�f�B���N�g���̗L�����`�F�b�N
    gstrCurDir = gstrAppDir & "Data\"
    gstrInitDirPartOpen = "" 'gstrCurDir
    If Dir$(gstrCurDir, vbDirectory) = "" Then MkDir gstrCurDir
    
    '�݌v�����\�p
    gstrSOKKATUDir = gstrAppDir & "Data\" & "�݌v�����\"
    If Dir$(gstrSOKKATUDir, vbDirectory) = "" Then MkDir gstrSOKKATUDir
    
    'TruExe�f�B���N�g���̃Z�b�g
    gstrExeDir = gstrAppDir & "Exe\"
    
    gstrPfsDir = gGetIniString("Programs", "PForce", " ", gstrAppDir & gcstrInitFile & ".ini")
    If gstrPfsDir = "" Or Dir(gstrPfsDir & "pforce2k.exe") = "" Then
        gstrPfsDir = getFileDrive(gstrAppDir) & "\pforce2k\"
        Call gPutIniString("Programs", "PForce", gstrPfsDir, gstrAppDir & gcstrInitFile & ".ini")
    End If
    
    gstrFrXDir = gGetIniString("Programs", "FRAME", " ", gstrAppDir & gcstrInitFile & ".ini")
    If gstrFrXDir = "" Or Dir(gstrFrXDir & "FRAME.exe") = "" Then
        gstrFrXDir = getFileDrive(gstrAppDir) & "\WinFrame\"
        Call gPutIniString("Programs", "FRAME", gstrFrXDir, gstrAppDir & gcstrInitFile & ".ini")
    End If
    
    gstrSNAPDir = gstrAppDir & "SNAP"
    If Dir$(gstrSNAPDir, vbDirectory) = "" Then MkDir gstrSNAPDir
    
    '�f�o�b�O���[�h�̐ݒ�
    If Dir$(gstrAppDir & "debug.txt") <> "" Then gbolIsDebug = True Else gbolIsDebug = False
    
    '----------------------------------------------
    '���A�p�t�@�C�������݂��邩���`�F�b�N
    '----------------------------------------------
    strRestoreFilename = gstrTmpDir & "*." & gcstrFileExtNoDot
    If Dir$(strRestoreFilename) <> "" Then
        intAns = MsgBox("�O��A�ُ�I�������ۂ̃f�[�^���c���Ă��܂��B" & vbCrLf & "���A���܂����H" & vbCrLf & "�i�u�������v��I�������ꍇ�A���̃f�[�^�͎����܂��I�j", vbExclamation + vbYesNoCancel + vbDefaultButton1, "�f�[�^�̕��A")
        frmSplash.Refresh
        
        Select Case intAns
        Case vbCancel
            End
        Case vbNo
            '��ƃt�H���_���̃f�[�^�t�@�C����S�ď���
            Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
        
            Load MDIForm_���r
            Call MDIForm_���r.ChgCaption("")
            'SI�P�ʂ̐ݒ�
            Call MDIForm_���r.SetSI(gcintSI)
            Call MDIForm_���r.InitChangedFlag
        Case vbYes
            Load MDIForm_���r
            gstrCurFilename = gGetFileName(gstrTmpDir, gcstrNameFile, "����" & gcstrFileExt)
            gstrCurFilename = getFilePath(gstrCurFilename) & getFileTitle(gstrCurFilename) & "." & getFileExt(gstrCurFilename)
            
            gstrCurDir = getFilePath(gstrCurFilename)
            
'            gstrCurFilename = getFilePath(gstrCurFilename) & getFileTitle(gstrCurFilename) & "�`���A�f�[�^." & getFileExt(gstrCurFilename)
            Call MDIForm_���r.ChgCaption(gstrCurFilename)
            Call MDIForm_���r.InitChangedFlag(True)
        End Select
    End If
    
    Call SetWindowPos(frmSplash.hwnd, -1, 0, 0, 0, 0, &H43)
    MDIForm_���r.Show
    Sleep (600)
    
    '�X�N���|���o�[�̃T�C�Y���擾����
    Unload frmSplash
    
End Sub

