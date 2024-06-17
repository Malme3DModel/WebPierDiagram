Attribute VB_Name = "DataFile"
'**************************************************************
'vsFlexGrid�p�@�f�[�^�Z�[�u�E���[�h���C�u���� - DataFile.bas
'99/11/06 kit �쐬
'**************************************************************

Option Explicit

Public Type gtypVersion
    FileID As String
    Major As Integer
    Minor As Integer
    Revision As Integer
End Type

Public gusrVersion As gtypVersion

'�@�@�\ �F  �O���b�h�̃f�[�^�𕶎���ɂ��ĕԂ�
'���@�� �F  vfaTarget       �Ώۂ̃O���b�h
'�߂�l �F  �f�[�^������ivbTab=chr$(9)��vbCr=chr$(13)�ɂ���؂� : .Clip�v���p�e�B�Q�Ɓj
Public Function gGridToStr(ByVal vfaTarget As vsFlexGrid) As String
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        Row = .Row
        Col = .Col
        
        .Redraw = False
        
        .Select .FixedRows, .FixedCols, .rows - 1, .Cols - 1
        gGridToStr = .Clip
        .Select Row, Col
    
        .Redraw = True
    End With
End Function

'�@�@�\ �F  ���[�h�p�̃O���b�h�Ƀf�[�^�������\��t����B�Œ�s�A�Œ���0�ŃT�C�Y��������������B
'���@�� �F  vfaTarget       �Ώۂ̃O���b�h
'           rstrData        �f�[�^������(.Clip�`���j
'           vlngRows, vlngCols �ύX��̃O���b�h�s���A��
Public Sub gStrPasteToLoadGrid(ByVal vfaTarget As vsFlexGrid, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        .FixedRows = 0
        .FixedCols = 0
        .rows = vlngRows
        .Cols = vlngCols
    
        Call gStrPasteToGrid(vfaTarget, rstrData)
    End With
End Sub

'�@�@�\ �F  �f�[�^��������O���b�h�S�ʂɓ\��t����
'���@�� �F  vfaTarget       �Ώۂ̃O���b�h
'           rstrData        �f�[�^������(.Clip�`���j
Public Sub gStrPasteToGrid(ByVal vfaTarget As vsFlexGrid, rstrData As String)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        '�X�N���[���̈�̃e�L�X�g���N���A
        .Clear flexClearScrollable, flexClearText
        
        Row = .Row
        Col = .Col
        
        .Redraw = False
        
        .Select .FixedRows, .FixedCols, .rows - 1, .Cols - 1
        .Clip = rstrData
        .Select Row, Col
    
        .Redraw = True
    End With
End Sub

'�@�@�\ �F  �O���b�h�T�C�Y��ύX���āA�f�[�^��������O���b�h�S�ʂɓ\��t����
'���@�� �F  vfaTarget       �Ώۂ̃O���b�h
'           rstrData        �f�[�^������(.Clip�`���j
'           vlngRows, vlngCols �ύX��̃O���b�h�s���A��
Public Sub gStrPasteToGridChgSize(ByVal vfaTarget As vsFlexGrid, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        .rows = vlngRows
        .Cols = vlngCols
        
        Call gStrPasteToGrid(vfaTarget, rstrData)
    End With
End Sub

'�@�@�\ �F  �f�[�^��������O���b�h�̎w��̈�ɓ\��t����
'���@�� �F  vfaTarget       �Ώۂ̃O���b�h
'           rstrData        �f�[�^������(.Clip�`���j
Public Sub gStrPasteToGridSelect(ByVal vfaTarget As vsFlexGrid, rstrData As String, vStartRow As Long, vStartCol As Long, vEndRow As Long, vEndCol As Long)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        Row = .Row
        Col = .Col
        
        .Redraw = False
        
        .Select vStartRow, vStartCol, vEndRow, vEndCol
        .Clip = rstrData
        .Select Row, Col
    
        .Redraw = True
    End With
End Sub

'�@�@�\ �F  �R���g���[���z��ɂȂ��Ă���I�v�V�����{�^���̂����I������Ă�����̂̃C���f�b�N�X���擾����
'���@�� �F  vfaOption       �ΏۂƂȂ�I�v�V�����{�^��
Public Function gGetSelectedOpt(ByVal vForm As Form, ByVal vOption As OptionButton) As Integer
    Dim i As Integer
    
    With vOption
        For i = 0 To vForm.Controls.Count - 1
            If vForm.Controls(i).Name = vOption.Name Then
                If vForm.Controls(i).VALUE = True Then
                    gGetSelectedOpt = vForm.Controls(i).Index
                    Exit Function
                End If
            End If
        Next
    End With
    
    gGetSelectedOpt = -1
    
End Function

'�@�@�\ �F  App.Path�����[�g�̏ꍇ���}�[�N���܂܂�邪�A����ȊO�ɂ͊܂܂�Ȃ��̂ŁA���ꉻ����
'���@�� �F  rstrPath        �p�X��
'�߂�l �F  �Ō�Ɂ����t�����p�X��
Public Function gGetRegularPath(rstrPath As String) As String
    If Right$(rstrPath, 1) <> "\" Then
        gGetRegularPath = rstrPath & "\"
    Else
        gGetRegularPath = rstrPath
    End If

End Function

'�@�@�\ �F  �w��f�B���N�g���̒��g��vsFlexGrid�̃A�[�J�C�u�t�@�C���ɂ܂Ƃ߂�i�T�u�f�B���N�g�������j
'���@�� �F  rstrArcPath     �A�[�J�C�u�Ώۃt�@�C��������p�X
'           rstrArcFile     �A�[�J�C�u�t�@�C����
'           vfaGrid         �A�[�J�C�u�Ɏg���O���b�h�R���g���[��
'           vbCompless      ���k�̗L��(True�ň��k)
Public Sub gArchiveFile(rstrArcPath As String, rstrArcFile As String, ByVal vfaGrid As vsFlexGrid, Optional ByVal vbCompless = False, Optional ByVal frmProgress As Variant)
    Dim i As Integer
    Dim strFileName As String
    Dim bCall As Boolean
    
    '�w���v�ɂ�IsNothing()�Ƃ����֐�������Ə����Ă��邪�A���݂��Ȃ��炵���B�i��j
    bCall = False
    If Not IsMissing(frmProgress) Then If IsObject(frmProgress) Then bCall = True
    
    With vfaGrid
        strFileName = Dir$(rstrArcPath)    ' �ŏ��̃t�@�C������Ԃ��܂��B
        Do While strFileName <> ""   ' ���[�v���J�n���܂��B
            strFileName = gGetRegularPath(rstrArcPath) & strFileName
            
            If vbCompless Then
                Call .Archive(rstrArcFile, strFileName, arcAdd)
            Else
                Call .Archive(rstrArcFile, strFileName, arcStore)
            End If
            
            strFileName = Dir                    ' ���̃t�@�C������Ԃ��܂��B
        
            '�r���o�ߕ\���p�v���V�[�W�����ďo��
            If bCall Then Call frmProgress.ProcProgress
        Loop
    End With

End Sub

'�@�@�\ �F  �w��f�B���N�g���̒��g�Ƀt�@�C���������邩�𒲂ׂ�i�T�u�f�B���N�g�������j
'���@�� �F  rstrArcPath     �A�[�J�C�u�Ώۃt�@�C��������p�X
'�߂�l �F�@�t�@�C���̌� as Integer
Public Function gGetFileNum(rstrArcPath As String, rstrArcExt As String) As Integer
    Dim iNum As Integer
    Dim strFileName As String
    
    iNum = 0
    strFileName = Dir$(rstrArcPath)    ' �ŏ��̃t�@�C������Ԃ��܂��B
    Do While strFileName <> ""   ' ���[�v���J�n���܂��B
        strFileName = Dir                    ' ���̃t�@�C������Ԃ��܂��B
        iNum = iNum + 1
    Loop
    
    gGetFileNum = iNum

End Function

'�@�@�\ �F  �w��f�B���N�g���̒��g�̎w��g���q�t�@�C����vsFlexGrid�̃A�[�J�C�u�t�@�C���ɂ܂Ƃ߂�i�T�u�f�B���N�g�������j
'���@�� �F  rstrArcPath     �A�[�J�C�u�Ώۃt�@�C��������p�X
'           rstrArcFile     �A�[�J�C�u�t�@�C����
'           vfaGrid         �A�[�J�C�u�Ɏg���O���b�h�R���g���[��
'           rstrArcExt      �A�[�J�C�u�������g���q�i�h�b�g�Ȃ��Ŏw��j
'                           �����w��Ή� "txt;doc;csv"�̗l�ɃZ�~�R�����ŋ�؂�B�Ō�̓Z�~�R�����Ȃ�
'                           2001/09/08 kit
'
'           vbCompless      ���k�̗L��(True�ň��k)
'           frmProgress     �v���O���X�o�[��\�����������ꍇ�ɗp����
'                           ���̃t�H�[���ɂ͕K�� Public Sub ProcProgress() �Ƃ������O�Ńv���V�[�W����p�ӂ��Ă�������
Public Sub gArchiveExtFile(rstrArcPath As String, rstrArcFile As String, ByVal vfaGrid As vsFlexGrid, rstrArcExt As String, Optional ByVal vbCompless = False, Optional ByVal frmProgress As Variant)
    Dim strFileName As String
    Dim bCall As Boolean
    Dim iSPos As Integer, iEPos As Integer
    Dim sArcExt As String
    
    bCall = False
    If Not IsMissing(frmProgress) Then If IsObject(frmProgress) Then bCall = True
    
    With vfaGrid
        iSPos = 1
        
        Do
            '�W�J����g���q���擾����
            iEPos = InStr(iSPos, rstrArcExt, ";", vbTextCompare)
            If iEPos = 0 Then iEPos = Len(rstrArcExt) + 1
            sArcExt = Mid$(rstrArcExt, iSPos, iEPos - iSPos)
            
            strFileName = Dir$(rstrArcPath & "\*." & sArcExt)    ' �ŏ��̃t�@�C������Ԃ��܂��B
            Do While strFileName <> ""   ' ���[�v���J�n���܂��B
                strFileName = gGetRegularPath(rstrArcPath) & strFileName
                
                If vbCompless Then
                    Call .Archive(rstrArcFile, strFileName, arcAdd)
                Else
                    Call .Archive(rstrArcFile, strFileName, arcStore)
                End If
                
                strFileName = Dir                    ' ���̃t�@�C������Ԃ��܂��B
                
                '�r���o�ߕ\���p�v���V�[�W�����ďo��
                If bCall Then Call frmProgress.ProcProgress
            Loop
            
            iSPos = iEPos + 1
            If iSPos > Len(rstrArcExt) Then Exit Do
        Loop While True
    
    End With

End Sub

'�@�@�\ �F  �w��f�B���N�g���̒��g�̎w��g���q�t�@�C���������邩�𒲂ׂ�i�T�u�f�B���N�g�������j
'���@�� �F  rstrArcPath     �A�[�J�C�u�Ώۃt�@�C��������p�X
'           rstrArcExt      �A�[�J�C�u�������g���q�i�h�b�g�Ȃ��Ŏw��j
'                           �����w��Ή� "txt;doc;csv"�̗l�ɃZ�~�R�����ŋ�؂�B�Ō�̓Z�~�R�����Ȃ�
'                           2001/09/08 kit
'
'�߂�l �F�@�t�@�C���̌� as Integer
Public Function gGetExtFileNum(rstrArcPath As String, rstrArcExt As String) As Integer
    Dim iNum As Integer
    Dim strFileName As String
    Dim iSPos As Integer, iEPos As Integer
    Dim sArcExt As String
    
    iNum = 0
    iSPos = 1
    
    Do
        '�W�J����g���q���擾����
        iEPos = InStr(iSPos, rstrArcExt, ";", vbTextCompare)
        If iEPos = 0 Then iEPos = Len(rstrArcExt) + 1
        sArcExt = Mid$(rstrArcExt, iSPos, iEPos - iSPos)
        
        strFileName = Dir$(rstrArcPath & "\*." & sArcExt)    ' �ŏ��̃t�@�C������Ԃ��܂��B
        Do While strFileName <> ""   ' ���[�v���J�n���܂��B
            strFileName = Dir                    ' ���̃t�@�C������Ԃ��܂��B
            iNum = iNum + 1
        Loop
    
        iSPos = iEPos + 1
        If iSPos > Len(rstrArcExt) Then Exit Do
    Loop While True
    
    gGetExtFileNum = iNum

End Function

'�@�@�\ �F  vsFlexGrid�̃A�[�J�C�u�t�@�C������w��f�B���N�g���Ƀt�@�C����W�J����
'���@�� �F  rstrExtPath     �W�J�����̃p�X
'           rstrArcFile     �A�[�J�C�u�t�@�C����
'           vfaGrid         �A�[�J�C�u�Ɏg���O���b�h�R���g���[��
'           frmProgress     �v���O���X�o�[��\�����������ꍇ�ɗp����
'                           ���̃t�H�[���ɂ͕K�� Public Sub ProcProgress() �Ƃ������O�Ńv���V�[�W����p�ӂ��Ă�������
Public Sub gExtractFile(rstrExtPath As String, rstrArcFile As String, ByVal vfaGrid As vsFlexGrid, Optional ByVal frmProgress As Variant)
    Dim intCount As Integer
    Dim i As Integer
    Dim strFileName As String
    Dim bCall As Boolean
    
    If Len(Dir$(rstrArcFile)) = 0 Then Exit Sub
    bCall = False
    If Not IsMissing(frmProgress) Then If IsObject(frmProgress) Then bCall = True
    
    With vfaGrid
        intCount = .ArchiveInfo(rstrArcFile, arcFileCount)
        
        For i = 0 To intCount - 1
            strFileName = .ArchiveInfo(rstrArcFile, arcFileName, i)
            strFileName = gGetRegularPath(rstrExtPath) & strFileName
            Call .Archive(rstrArcFile, strFileName, arcExtract)
            
            '�r���o�ߕ\���p�v���V�[�W�����ďo��
            If bCall Then Call frmProgress.ProcProgress
        Next
    End With
    
End Sub

'�@�@�\ �F  �w��A�[�J�C�u�̒��g�Ƀt�@�C���������邩�𒲂ׂ�
'���@�� �F  rstrArcPath     �A�[�J�C�u�t�@�C��������p�X
'           vfaGrid         �A�[�J�C�u�Ɏg���O���b�h�R���g���[��
'�߂�l �F�@�t�@�C���̌� as Integer
Public Function gGetArchiveFileNum(rstrArcFile As String, ByVal vfaGrid As vsFlexGrid) As Integer
    
    If Len(Dir$(rstrArcFile)) = 0 Then
        gGetArchiveFileNum = 0
    Else
        gGetArchiveFileNum = vfaGrid.ArchiveInfo(rstrArcFile, arcFileCount)
    End If
    
End Function

'�@�@�\ �F  vsFlexGrid�̃A�[�J�C�u�t�@�C������w��f�B���N�g���Ɏw��t�@�C���݂̂�W�J����
'���@�� �F  rstrExtPath     �W�J�����̃p�X
'           rstrArcFile     �A�[�J�C�u�t�@�C����
'           vstrExtractFile �W�J����t�@�C����
'               �i  "file1.dat|file2.dat..."�̂悤�ɕ���������B
'                   �������A�t�@�C���������̃t�@�C�����̕���������ɂȂ��Ă���ƌ듮�삷��̂ŁA�t�@�C�����Ɏg���Ȃ�����"|"�ŋ�؂邱�Ɓj
'           vfaGrid         �A�[�J�C�u�Ɏg���O���b�h�R���g���[��
Public Sub gExtractSelectFile(rstrExtPath As String, rstrArcFile As String, ByVal vstrExtractFile As String, ByVal vfaGrid As vsFlexGrid)
    Dim intCount As Integer
    Dim i As Integer
    Dim strFileName As String
    
    With vfaGrid
        intCount = .ArchiveInfo(rstrArcFile, arcFileCount)
        vstrExtractFile = "|" & vstrExtractFile & "|"
        
        For i = 0 To intCount - 1
            strFileName = .ArchiveInfo(rstrArcFile, arcFileName, i)
            
            '�Ώۃt�@�C����������������ۂɓW�J����
            If InStr(1, vstrExtractFile, strFileName, vbTextCompare) > 0 Then
                strFileName = gGetRegularPath(rstrExtPath) & strFileName
                Call .Archive(rstrArcFile, strFileName, arcExtract)
            End If
        Next
    End With
    
End Sub

'�@�@�\ �F  �w��f�B���N�g�����́A�w��g���q�̃t�@�C����S�ď���
'���@�� �F  rstrDelPath     ���g�������f�B���N�g��
'           rstrDelExt      ���������g���q�i�h�b�g�Ȃ��Ŏw��j
Public Sub gDeleteAllFile(rstrDelPath As String, rstrDelExt As String)
    Dim i As Integer
            
    '�h�b�g�̗L�������ׂ�i�������A�h�b�g��������t�@�C����z�肵�Ă��Ȃ��j
    If Left$(rstrDelExt, 1) = "." Then
        If Dir$(gGetRegularPath(rstrDelPath) & "*" & rstrDelExt) = "" Then Exit Sub
        Kill (gGetRegularPath(rstrDelPath) & "*" & rstrDelExt)
    Else
        If Dir$(gGetRegularPath(rstrDelPath) & "*." & rstrDelExt) = "" Then Exit Sub
        Kill (gGetRegularPath(rstrDelPath) & "*." & rstrDelExt)
    End If
    
End Sub

'�@�@�\ �F  �w��f�B���N�g�����́A�w��t�@�C��������
'���@�� �F  rstrDelPath     ���g�������f�B���N�g��
'           vstrDelFile     ���������t�@�C����
'               �i  "file1.dat|file2.dat..."�̂悤�ɕ���������B
'                   �������A�t�@�C���������̃t�@�C�����̕���������ɂȂ��Ă���ƌ듮�삷��̂ŁA�t�@�C�����Ɏg���Ȃ�����"|"�ŋ�؂邱�Ɓj
Public Sub gDeleteSelectFile(rstrDelPath As String, ByVal vstrDelFile As String)
    Dim i As Integer
    Dim l As Integer
    Dim S As Integer
    Dim sDelFile As String
    
    vstrDelFile = vstrDelFile & "|"
    l = Len(vstrDelFile)

    For i = 1 To l
        '�t�@�C�������o
        S = InStr(i, vstrDelFile, "|", vbTextCompare)
        sDelFile = Mid$(vstrDelFile, i, S - i)
        i = S 'Next��1�������̂ŁAi = s + 1 �ł͂Ȃ�
        
        'Kill�X�e�[�g�����g���R�����g�A�E�g����Ă����̂ŁA�O�����B
        '������ǐՂ���ƁA���̃T�u���[�`�����ł����Ƃ�����R�����g�A�E�g����Ă����͗l�B
        '�����炭�e�X�g�̂���ł��Ă������̂��O���Y��Ă����̂ł��낤�B   kit 2001/01/23
        If Dir$(gGetRegularPath(rstrDelPath) & sDelFile) <> "" Then Kill (gGetRegularPath(rstrDelPath) & sDelFile)
    Next
    
End Sub

Public Sub msgNoFile(fname As String)
    Dim strMsg As String
    If fname <> "" Then
        strMsg = fname & " �Ƃ����t�@�C���͗L��܂���B"
    Else
        strMsg = "�t�@�C�������L��܂���"
    End If
    MsgBox strMsg, vbOKOnly + vbExclamation
End Sub

Public Sub MakeFullDir(sPath As String)
    Dim sTmp As String
    Dim iPos As Integer
    
    If Right(sPath, 1) <> "\" Then
        sPath = sPath & "\"
    End If
    iPos = 1
    iPos = InStr(iPos, sPath, "\")
    Do
        sTmp = Left(sPath, iPos)
        If Dir(sTmp & "nul") = "" Then
            MkDir (sTmp)
        End If
        iPos = InStr(iPos + 1, sPath, "\")
    Loop Until iPos = 0
End Sub

Public Function getFileDrive(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    
    filepath = Trim(filepath)
    length = Len(filepath)
    If length > 1 And Mid(filepath, 2, 1) = ":" Then
        getFileDrive = Left(filepath, 2)
    Else
        getFileDrive = ""
    End If
End Function

Public Function getFilePath(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    
    filepath = Trim(filepath)
    length = Len(filepath)
    If length > 1 And Mid(filepath, 2, 1) = ":" Then
        i = 2: j = 2
    Else
        i = 0: j = 0
    End If
    Do Until i > length
        i = InStr(i + 1, filepath, "\")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    getFilePath = Left(filepath, j)
End Function

Public Function getFileName(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    
    filepath = Trim(filepath)
    length = Len(filepath)
    If length > 1 And Mid(filepath, 2, 1) = ":" Then
        i = 2: j = 2
    Else
        i = 0: j = 0
    End If
    Do Until i > length
        i = InStr(i + 1, filepath, "\")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    getFileName = Mid(filepath, j + 1)
End Function

Public Function getFileTitle(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    Dim filename As String
    
    filename = getFileName(filepath)
    length = Len(filename)
    i = 0: j = 0
    Do Until i > length
        i = InStr(i + 1, filename, ".")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    If j = 0 Then j = length + 1
    getFileTitle = Left(filename, j - 1)
End Function

Public Function getFileExt(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    Dim filename As String
    
    filename = getFileName(filepath)
    length = Len(filename)
    i = 0: j = 0
    Do Until i > length
        i = InStr(i + 1, filename, ".")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    getFileExt = Mid(filename, j + 1)
End Function

'===========================================================
' FOR VERSION
'   WinDan����p�N��
'===========================================================

'�@�@�\ �F  FileID��؂藣������������擾����
'���@�� �F  strVer      �o�[�W���������� "FileID:Major.Minor.Revision" Major����0�`9999�̐���
'�߂�l �F  �o�[�W���������� "Major.Minor.Revision"
Public Function gGetTrueVersionStr(ByRef strVer As String) As String
    Dim j As Integer
    j = InStr(strVer, ":")
    
    gGetTrueVersionStr = Mid$(strVer, j + 1)
    
End Function

'�@�@�\ �F  ���݂̃o�[�W�����𕶎���Ŏ擾����
'���@�� �F  FileID      �t�@�C���̎��
'�߂�l �F  �o�[�W���������� "FileID:Major.Minor.Revision"
Public Function gGetCurVersion(ByVal FileID As String) As String
    gGetCurVersion = FileID & ":" & Format(App.Major) & "." & Format(App.Minor) & "." & Format(App.Revision)
    
End Function

'�@�@�\ �F  strVer���IndatVer���Â����True��Ԃ�
'���@�� �F  strVer      �o�[�W���������� "FileID:Major.Minor.Revision" Major����0�`9999�̐���
'           IndatVer    ��r����o�[�W�����\����
'�߂�l �F  strVer���IndatVer���Â����True
Public Function gIsOlder(ByVal strVer As String, IndatVer As gtypVersion) As Boolean
    Dim tmpVer As gtypVersion
    
    Call SplitVersion(strVer, tmpVer)
    gIsOlder = (gCompVersion(tmpVer, IndatVer) = 1)

End Function

'�@�@�\ �F  strVer���strFileVer���Â����True��Ԃ�
'���@�� �F  strVer      �o�[�W���������� "FileID:Major.Minor.Revision" Major����0�`9999�̐���
'           strFileVer  �t�@�C���̃o�[�W����������
'�߂�l �F  strVer���strFileVer���Â����True
Public Function gIsOlderStr(ByVal strVer As String, ByVal strFileVer As String) As Boolean
    Dim tmpVer As gtypVersion
    Dim tmpVer2 As gtypVersion
    
    Call SplitVersion(strVer, tmpVer)
    Call SplitVersion(strFileVer, tmpVer2)
    gIsOlderStr = (gCompVersion(tmpVer, tmpVer2) = 1)

End Function

'�@�@�\ �F  ���݂̃o�[�W�����Ɠ�����������True��Ԃ�
'���@�� �F  strVer      �o�[�W���������� "FileID:Major.Minor.Revision" Major����0�`9999�̐���
'�߂�l �F  �����Ȃ�True
Public Function gIsCurrent(ByVal strVer As String) As Boolean
    Dim tmpVer As gtypVersion
    Dim tmpVer2 As gtypVersion
    
    Call SplitVersion(strVer, tmpVer)
    Call GetPrgVersion(tmpVer2)
    gIsCurrent = (gCompVersion(tmpVer, tmpVer2) = 0) '''09/09/14
    If (App.Major + App.Minor / 10 + App.Revision / 100) >= 2.11 Then
        gIsCurrent = True '''09/09/14
    End If
End Function

'�@�@�\ �F  �o�[�W�����̔�r
'���@�� �F  datVer1,datVer2 ��r�ΏۂɂȂ�o�[�W�����\����
'�߂�l �F  datVer1�̕����V�������1�A�Â����-1�A�����Ȃ�0��Ԃ�
Public Function gCompVersion(datVer1 As gtypVersion, datVer2 As gtypVersion) As Integer
'  v1 <-> v2    : v1 > v2 ---> 1    v1 = v2 ---> 0    v1 < v2 ---> -1
    If datVer1.Major > datVer2.Major Then
        gCompVersion = 1
    ElseIf datVer1.Major = datVer2.Major Then
    '   Minor
        If datVer1.Minor > datVer2.Minor Then
            gCompVersion = 1
        ElseIf datVer1.Minor < datVer2.Minor Then
            gCompVersion = -1
        Else
        '   Revision
            If datVer1.Revision > datVer2.Revision Then
                gCompVersion = 1
            ElseIf datVer1.Revision = datVer2.Revision Then
                gCompVersion = 0
            Else
                gCompVersion = -1
            End If
        End If
    Else
        gCompVersion = -1
    End If
'    If (datVer2.Major * 100 + datVer2.Minor * 10 + datVer2.Revision) = 131 Then gCompVersion = 0   ''''''06/04/07  06/10/23��߂�
End Function

Private Function convVerNum(ByVal strFixed32, ByVal strID As String, verdt As gtypVersion) As Boolean
    Dim strT As String, idLen As Integer
    
    idLen = Len(strID)
    If Left(strFixed32, idLen) <> strID Then
        convVerNum = False
    Else
        convVerNum = True
        strT = Trim(Mid(strFixed32, idLen + 2, 99))
        Call SplitVersion(strT, verdt)
    End If
End Function

Private Sub SplitVersion(ByVal strV As String, dtver As gtypVersion)
    Dim i As Integer, j As Integer
    Dim strT As String
    
    i = 1
    j = InStr(i, strV, ":")
    dtver.FileID = Mid$(strV, i, j - i)
    i = j + 1
    j = InStr(i, strV, ".")
    dtver.Major = val(Mid$(strV, i, j - i))
    i = j + 1
    j = InStr(i, strV, ".")
    dtver.Minor = val(Mid$(strV, i, j - i))
    i = j + 1
    dtver.Revision = val(Mid$(strV, i, 99))
End Sub

Private Sub GetPrgVersion(PrgVer As gtypVersion)
    With PrgVer
        .Major = App.Major
        .Minor = App.Minor
        .Revision = App.Revision
    End With
End Sub

Public Sub gPutFileName(rstrExtPath As String, rstrNameFile As String, rstrArcFile As String)
    Dim fno As Integer
    fno = FreeFile
    Open rstrExtPath & rstrNameFile For Output As fno
    Print #fno, rstrArcFile
    Close fno
    
End Sub

Public Function gGetFileName(rstrExtPath As String, rstrNameFile As String, Optional ByVal vsDefaultFilename As String = "")
    Dim fno As Integer
    Dim strArcFile
    
    fno = FreeFile
    On Error GoTo ErrorHandle
    Open rstrExtPath & rstrNameFile For Input As fno
    Line Input #fno, strArcFile
    Close fno
    gGetFileName = strArcFile
    Exit Function
    
ErrorHandle:
    '�f�t�H���g�l�ɒ��ړ����ƁA����.pir������.pex�Ƃ��ɉ�����B�o�O���H
    '�J�����サ�������Ă��Ȃ����A�s���Ȃ̂ŁB
    If vsDefaultFilename = "" Then vsDefaultFilename = "����.pir"
    gGetFileName = vsDefaultFilename
    
End Function

' ~(�`���_)��������DOS�`����path��t�@�C��������LFN�`���̖��O�𓾂�B
Public Function getLFN(strdirname As String) As String
    Dim strdir As String
    Dim tmp As String, tmp2 As String
    Dim i As Integer, ii As Integer
    Dim j As Integer, jj As Integer
    Dim RootPoint As Integer
    
    strdir = strdirname
    If Left(strdir, 1) = """" Then
        strdir = Mid(strdir, 2, Len(strdir) - 1)
    End If
    
    If Left(strdir, 2) = "\\" Then                '�l�b�g���[�N��̃t�H���_
        RootPoint = InStr(3, strdir, "\")
        RootPoint = InStr(RootPoint + 1, strdir, "\")
        tmp = Left(strdir, RootPoint - 1)
    Else                                          '���[�J���̃t�H���_
        RootPoint = InStr(1, strdir, "\")
        tmp = UCase(Left(strdir, RootPoint - 1))
    End If
    
    ii = RootPoint
    i = InStr(RootPoint + 1, strdir, "\")
    
    Do While i > 0
        tmp2 = Mid(strdir, ii + 1, i - ii - 1)
        Select Case tmp2
        Case "." '�J�����g�t�H���_���������Ȃ�
        Case ".." '�e�t�H���_���������Z������
            jj = RootPoint
            j = InStr(RootPoint + 1, tmp, "\")
            Do While j > 0
                jj = j
                j = InStr(jj + 1, tmp, "\")
            Loop
            tmp = Left(tmp, jj - 1)
        Case Else '�ʏ�̃t�@�C����t�H���_
            tmp = tmp & "\" & Dir(Left(strdir, i - 1), vbDirectory)
        End Select
        ii = i
        i = InStr(ii + 1, strdir, "\")
    Loop
    tmp2 = Mid(strdir, ii + 1)
    Select Case tmp2
    Case "." '�J�����g�t�H���_���������Ȃ�
    Case ".." '�e�t�H���_���������Z������
        jj = RootPoint
        j = InStr(RootPoint + 1, tmp, "\")
        Do While j > 0
            jj = j
            j = InStr(jj + 1, tmp, "\")
        Loop
        tmp = Left(tmp, jj - 1)
    Case Else '�ʏ�̃t�@�C����t�H���_
        tmp = tmp & "\" & Dir(Left(strdir, i - 1), vbDirectory)
    End Select
    getLFN = tmp
End Function

'�@�@�\ �F  �f�B���N�g���̑��݂��`�F�b�N���A�Ȃ���΃t���O�ɏ]���č쐬
'���@�� �F  rsPath          �����p�X
'           vbMakeDir       true �Ȃ�f�B���N�g�����쐬����
'�߂�l �F  vbMakeDir �� false ���ɁA�f�B���N�g�������݂��Ȃ��Ƃ��A
'           �������̓f�B���N�g���쐬�Ɏ��s������ false ��Ԃ�
'           �ivbMakeDir = true ���Ƀf�B���N�g���쐬�ɐ��������� true ��Ԃ��j
Public Function gChkDirExistAndMake(ByRef rsPath As String, ByVal vbMakeDir) As Boolean
    gChkDirExistAndMake = True
    
    On Error GoTo ErrorHandle

    If Len(Dir$(rsPath, vbDirectory)) = 0 Then
        If vbMakeDir Then
            MkDir rsPath
        Else
            gChkDirExistAndMake = False
        End If
    End If
    
    Exit Function
    
ErrorHandle:
    gChkDirExistAndMake = False

End Function

