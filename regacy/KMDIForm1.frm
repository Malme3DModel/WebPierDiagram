VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "VSFLEX6D.OCX"
Object = "{6FBA474E-43AC-11CE-9A0E-00AA0062BB4C}#1.0#0"; "SYSINFO.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.MDIForm MDIForm_���r 
   AutoShowChildren=   0   'False
   BackColor       =   &H8000000C&
   Caption         =   "Winpier"
   ClientHeight    =   7890
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   11880
   LinkTopic       =   "MDIForm1"
   Begin VSFlex6DAOCtl.vsFlexGrid faTemp 
      Align           =   1  '�㑵��
      Height          =   2715
      Left            =   0
      TabIndex        =   7
      Top             =   495
      Visible         =   0   'False
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   4789
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   1
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   10
      FixedRows       =   0
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faLoadBuf 
      Align           =   1  '�㑵��
      Height          =   315
      Left            =   0
      TabIndex        =   6
      TabStop         =   0   'False
      Top             =   3210
      Visible         =   0   'False
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   556
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   1
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   10
      FixedRows       =   0
      FixedCols       =   0
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  '������
      Height          =   255
      Left            =   0
      TabIndex        =   3
      Top             =   7635
      Width           =   11880
      _ExtentX        =   20955
      _ExtentY        =   450
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   2
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Enabled         =   0   'False
            Text            =   "�ύX�Ȃ�"
            TextSave        =   "�ύX�Ȃ�"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Enabled         =   0   'False
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   8.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin SysInfoLib.SysInfo SysInfo 
      Left            =   2085
      Top             =   5100
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   327681
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  '�㑵��
      Height          =   500
      Left            =   0
      ScaleHeight     =   435
      ScaleWidth      =   11820
      TabIndex        =   2
      Top             =   0
      Width           =   11880
      Begin VB.CommandButton Cmd_�t�H���_ 
         Caption         =   "̫��ޕύX"
         Height          =   435
         Left            =   10680
         TabIndex        =   17
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton Cmd_END 
         Caption         =   "END"
         Height          =   435
         Left            =   9900
         TabIndex        =   16
         Top             =   0
         Width           =   735
      End
      Begin VB.CommandButton Cmd_Edit 
         Caption         =   "Edit"
         Height          =   435
         Left            =   9120
         TabIndex        =   15
         Top             =   0
         Width           =   735
      End
      Begin VB.CommandButton Cmd_�}�ʍ쐬 
         Caption         =   "�}��View"
         Height          =   435
         Left            =   8220
         TabIndex        =   14
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "��{�f�[�^"
         Height          =   450
         Index           =   0
         Left            =   0
         TabIndex        =   13
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "�x  �� �į�߰"
         Height          =   450
         Index           =   14
         Left            =   3660
         TabIndex        =   12
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton CmdShow 
         BackColor       =   &H00808080&
         Caption         =   "�Y �z ��"
         Height          =   450
         Index           =   13
         Left            =   5260
         MaskColor       =   &H00E0E0E0&
         TabIndex        =   11
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "��̔z��"
         Height          =   450
         Index           =   12
         Left            =   1960
         TabIndex        =   10
         Top             =   0
         Width           =   875
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "̰�ݸ�"
         Height          =   450
         Index           =   10
         Left            =   4520
         TabIndex        =   9
         Top             =   0
         Width           =   735
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   " �`�󐡖@"
         Height          =   450
         Index           =   3
         Left            =   980
         TabIndex        =   0
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "�� �� ��"
         Height          =   450
         Index           =   9
         Left            =   2800
         TabIndex        =   8
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton CmdShow 
         BackColor       =   &H80000018&
         Caption         =   " �v�Z (�S�؉��H) "
         BeginProperty Font 
            Name            =   "�l�r �o�S�V�b�N"
            Size            =   9.75
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   450
         Index           =   6
         Left            =   6345
         TabIndex        =   1
         Top             =   0
         Width           =   1635
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "test"
         Height          =   420
         Index           =   7
         Left            =   11055
         TabIndex        =   4
         Top             =   0
         Visible         =   0   'False
         Width           =   570
      End
      Begin VB.Label lblSICheck 
         AutoSize        =   -1  'True
         Caption         =   "SI �P��"
         Height          =   180
         Left            =   11130
         TabIndex        =   5
         Top             =   120
         Visible         =   0   'False
         Width           =   570
      End
   End
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   120
      Top             =   5040
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu mnuFile 
      Caption         =   "̧��(&F)"
      Begin VB.Menu mnuFileBar0 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuNewData 
         Caption         =   " �V�K�쐬 (&N)"
      End
      Begin VB.Menu mnuFileBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   " ̧�ق��J�� (&O)..."
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFilePart 
         Caption         =   "����̧�ق���Ǎ���(&P)..."
      End
      Begin VB.Menu mnuFileBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSave 
         Caption         =   " �㏑���ۑ� (&S)"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileBar7 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSaveAs 
         Caption         =   " ���O��t���ĕۑ� (&A)"
      End
      Begin VB.Menu mnuSaveVsvFile 
         Caption         =   "�v���r���[�t�@�C���̕ۑ�(&V)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuFileBar3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuGetPick 
         Caption         =   " Pick Up File �̎捞 (&G)"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileBar4 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPreview 
         Caption         =   "�������ޭ�"
         Shortcut        =   ^D
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPrint 
         Caption         =   "���"
         Shortcut        =   ^P
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPriSet 
         Caption         =   "����ݒ�"
      End
      Begin VB.Menu mnuFileBar5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileBar6 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   0
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   4
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   5
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   6
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   7
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   8
      End
      Begin VB.Menu mnuFileRecent 
         Caption         =   ""
         Index           =   9
      End
      Begin VB.Menu mnuFileRecentSep 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu nmuFileExit 
         Caption         =   "winPier �̏I��(&X)"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "�ҏW(&E)"
      Begin VB.Menu mnuCut 
         Caption         =   "�؂���(&T)"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuCopy 
         Caption         =   "��߰(&C)"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuPaste 
         Caption         =   "�\��t��(&P)"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuUndo 
         Caption         =   "���ɖ߂�(&U)"
         Shortcut        =   ^Z
      End
   End
   Begin VB.Menu mnuOption 
      Caption         =   "��߼��(&O)"
      Begin VB.Menu mnuOptiSI 
         Caption         =   "�r�h�P�ʂ��g�p(&S)"
      End
      Begin VB.Menu mnuOptSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptRecentNum 
         Caption         =   "̧�ٗ��𐔂̕ύX(&R)..."
      End
      Begin VB.Menu mnuOptSpace 
         Caption         =   "�ƭ��ɽ�߰�������(&M)"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuOptionSoukatsuNewpage 
         Caption         =   "�����\�ŃP�[�X���ɉ��y�[�W(&N)"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuWin 
      Caption         =   "����޳(&W)"
      Begin VB.Menu V_Form 
         Caption         =   "��{"
         Index           =   0
         Visible         =   0   'False
      End
      Begin VB.Menu V_Form 
         Caption         =   "�߯�����"
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu V_Form 
         Caption         =   "�Z�o�_"
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu V_Form 
         Caption         =   "�f�ʥ�S��"
         Index           =   3
         Visible         =   0   'False
      End
      Begin VB.Menu mnuWinSep 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuWin800 
         Caption         =   "800x600"
      End
   End
   Begin VB.Menu mnuCalc 
      Caption         =   "�v�Z(&C)"
      Visible         =   0   'False
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "����(&H)"
      Begin VB.Menu mnuHelpContents 
         Caption         =   "�ڎ�(&C)"
      End
      Begin VB.Menu mnuHelpSearch 
         Caption         =   "��߯��̌���(&S)..."
      End
      Begin VB.Menu mnuHelpBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHelpVersion 
         Caption         =   "�ް�ޮݏ��(&A)"
      End
   End
   Begin VB.Menu mnuEditChkBox 
      Caption         =   "ChkBox�ҏW"
      Visible         =   0   'False
      Begin VB.Menu mnuEditChkBoxUnCheck 
         Caption         =   "�I��͈͂��`�F�b�N����(&U)"
      End
      Begin VB.Menu mnuEditChkBoxCheck 
         Caption         =   "�I��͈͂��`�F�b�N(&C)"
      End
      Begin VB.Menu mnuEditChkBoxReverse 
         Caption         =   "�I��͈͂𔽓](&R)"
      End
   End
End
Attribute VB_Name = "MDIForm_���r"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'         ���r MDIFORM
'
'
'
'
     Dim Get_Name As String
   '  Public ��_Form_�� As Integer      �֐���
   '  Public �\��_Form(20) As New Form_���r

     Dim TT&: ' �Ӗ�����



Dim iRecentNum As Integer

Dim ObjName As String
Dim Sel As Integer
Dim ShowWindow(4) As Boolean
Dim usrFileRecent As clsRecent
Dim bLoaded As Boolean


Private Sub Cmd_END_Click()
     End
    End Sub


'������������������������������������������������������������������������������������������������������������������������
'���@�@�@MDIForm_Load
'������������������������������������������������������������������������������������������������������������������������
'
Private Sub MDIForm_Load()
     
    
    PROGRAM_data$ = "C:\Robot_user\File\PROGRAM.dat"
    
    'Call dsk2(PROGRAM_data$)
    Call dsk2
    ��View$ = "VS_view"
    MDIForm_���r.Caption = "���r�}������  " + Data_dsk
    'MDIForm_���r
    ��_Form_�� = 0
   'Stop
   
   
   
   
   
   
    '========================================================
    '   WinPHakn����̈ڐA
    '========================================================
   
    '����ۑ����̎擾
    iRecentNum = gGetIniLong("Option", "RecentNum", 5, gstrAppDir & gcstrInitFile & ".ini")
    If iRecentNum > 10 Then iRecentNum = 10
    If iRecentNum < 0 Then iRecentNum = 0
    
    '�v���r���[�t�@�C���ۑ��ݒ�̎擾
    'mnuSaveVsvFile.Checked = gGetIniLong("Option", "SavePreview", 0, gstrAppDir & gcstrInitFile & ".ini")
    
    Set usrFileRecent = New clsRecent
    Call usrFileRecent.InitWithMax(iRecentNum, 10, Me, gstrAppDir & gcstrInitFile & ".ini")
    
    Me.Left = GetSetting(App.Title, "Settings", "MainLeft", 0)
    Me.Top = GetSetting(App.Title, "Settings", "MainTop", 0)
    Me.Width = GetSetting(App.Title, "Settings", "MainWidth", 12000)
    Me.Height = GetSetting(App.Title, "Settings", "MainHeight", 8580)
    
    '�d�v�i0�ȊO���ƃf�[�^������Ĕz��Ɋi�[����Ă��܂��j
    faLoadBuf.FixedRows = 0
    faLoadBuf.FixedCols = 0
    
    Call SetfaLoadBuf(faLoadBuf)
    
'    bIsSoukatsuNewPage = GetSetting(App.Title, "Settings", "bIsSoukatsuNewPage", False)
'    mnuOptionSoukatsuNewpage.Checked = bIsSoukatsuNewPage
'
'    strDatDir = App.Path & "\data"    ' �f�[�^�̏����t�H���_
'    gstrCurDir = strDatDir              ' �f�[�^�̃J�����g�t�H���_
'    strPikDir = strDatDir              ' �s�b�N�A�b�v�̃J�����g�t�H���_
'    strMrkDir = App.Path & "\Template"    ' �e���v���[�g�t�@�C���̃t�H���_
'    strTmpDir = App.Path & "\wdata"   ' ���[�N�t�@�C���̃t�H���_
'
'    '���݂��Ȃ��t�H���_�̍쐬 kit 99/07/24
'    If Len(Dir(strDatDir, vbDirectory)) = 0 Then MkDir strDatDir
'    If Len(Dir(strMrkDir, vbDirectory)) = 0 Then MkDir strMrkDir
'    If Len(Dir(strTmpDir, vbDirectory)) = 0 Then MkDir strTmpDir
'
'    strDatDir = strDatDir & "\"
'    gstrCurDir = gstrCurDir & "\"
'    strPikDir = strPikDir & "\"
'    strMrkDir = strMrkDir & "\"
'    strTmpDir = strTmpDir & "\"
    
    '��ʏ㕔�̃{�^���̈ʒu�ݒ�
    CmdShow(3).Enabled = True               '�����\��
    CmdShow(6).Enabled = True               '�v�Z
    CmdShow(7).Enabled = False              '�e�X�g
    CmdShow(9).Enabled = True                '�Ў���
    CmdShow(10).Enabled = True               '�t�[�`���O
    CmdShow(12).Enabled = True               '��̔z��
    CmdShow(13).Enabled = True               '�Y�z��
    CmdShow(14).Enabled = True               '�x��

    '���ʃf�[�^�̃��[�h
    Call CommonDataLoad
    
    'kit
    gintScrbarSize = SysInfo.ScrollBarSize
    Call gSetUndoEnabled(mnuUndo, False)

    '��ƃf�B���N�g���Ƀt�@�C��������Γǂݍ���
    If Dir$(gstrTmpDir & gcstrMDIFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    '�P�ʕʂ̌��o���������ݒ�
    gcstrKgf_cm2(gcintNotSI) = "kgf/c�u"
    gcstrKgf_cm2(gcintSI) = "N/���u"
    
    gcstrTf(gcintNotSI) = "tf"
    gcstrTf(gcintSI) = "kN"

    gcstrTf_m3(gcintNotSI) = "tf/��3"
    gcstrTf_m3(gcintSI) = "kN/��3"

''    Call CmdShow_Click(0)                      ' ��{��ʂ̕\��

    If Dir(App.Path & "\debug.txt") <> "" Then
'        bIsDebug = True
        CmdShow(6).Visible = True
    End If
    bLoaded = True
   
   
   
   
   End Sub

'������������������������������������������������������������������������������������������������������������������������
'���@�@�@Cmd_Edit
'������������������������������������������������������������������������������������������������������������������������
Private Sub Cmd_Edit_Click()
   ' Command�\���Ǎ�.Enabled = False:
    Cmd_Edit.Enabled = False:
  
    Data_File��$ = ���r_Data��$:  Form_���r.Show
     'Form_���r

    End Sub


'������������������������������������������������������������������������������������������������������������������������
'���@�@Cmd_�}�ʍ쐬
'������������������������������������������������������������������������������������������������������������������������
Private Sub Cmd_�}�ʍ쐬_Click()


   Cmd_�}�ʍ쐬.Enabled = False:
   
   Form_�}�ʉ��.Show
   End Sub








'������������������������������������������������������������������������������������������������������������������������
'���@�@�@�t�H���_�ύX
'������������������������������������������������������������������������������������������������������������������������
'
Private Sub Cmd_�t�H���__Click()
    Dim Get_Name1$, Get_Name2$
     
     
    Get_Name1$ = "": Get_Name2$ = ""
    'ER ("Robot ���� Database �쐬")
    With CommonDialog1
         .DialogTitle = "���r�}�� ̫��ް�I��"
         .InitDir = "C:\Robot_User\": '�ŏ��̊J��̫���  *************************
         
         .FileName = "̫��ް�I����� �J����د�"
         '.Filter = "̧�ٖ� (*.TDB)|*.TDB"
         .Filter = "̧�ٖ� (*.*)|*.OO"
         .ShowOpen
         Get_Name1$ = .FileName
         Get_Name2$ = .FileTitle: '̧�ٖ�����
         End With
    
    If Get_Name1$ = "" Then Exit Sub
     
       ni = InStr(Get_Name1$, Get_Name2$)
     
     �t�H���_��$ = Mid(Get_Name1$, 1, ni - 1)
     
     
     If �t�H���_��$ <> "" Then
           
           Yn$ = InputBox("�t�H���_��   " + �t�H���_��$ + "       Y/N")
          
          
          If UCase(Yn$) = "Y" Then
         'Data_dsk = �t�H���_��$ + "\"
          Data_dsk = �t�H���_��$
          �t�H���_��$ = ""
    
          Open ���r_Dir1$ + "File_user.dat" For Output As #1: Print #1, Data_dsk:   Close #1
          MDIForm_���r.Caption = "���r�}���V�X�e��  " + Data_dsk
          
          End If
          End If
     
     
      End Sub
'������������������������������������������������������������������������������������������������������������������������
'���@�@�@OUT_ProgressBar22
'������������������������������������������������������������������������������������������������������������������������
'
Public Sub OUT_ProgressBar22(N_Max As Long)
     ProgressBar1.min = 0:     If N_Max > 0 Then ProgressBar1.max = N_Max Else ProgressBar1.max = 1
     ProgressBar1.Value = ProgressBar1.min

     End Sub
Public Sub StepProgress22()
     If ProgressBar1.Value < ProgressBar1.max Then ProgressBar1.Value = ProgressBar1.Value + 1
     End Sub


'������������������������������������������������������������������������������������������������������������������������������������
'��   ADDFORM
'������������������������������������������������������������������������������������������������������������������������������������
Public Sub ADDFORM()
   'Dim �\��_Form As New Form_���r
   
   With �\��_Form(��_Form_��)
       .Show
       .Caption = Data_File��$
       End With
   
   ��_Form_�� = ��_Form_�� + 1
   End Sub


    
Public Sub ShowSNAPData()
    Call CmdShow_Click(13)

End Sub
    
Private Sub CmdShow_Click(Index As Integer)
    Dim i As Integer
    Dim cDIR As String
    Dim chform As Form
    Dim chform_old As Form
    Dim intPage As Integer
    Dim bOpend As Boolean
    Dim strErrMsg As String
    Dim strerrform As String

        ' --- ���[�h����Ă���q�t�H�[����S�ĕ���
        '�����ۂɃO���b�h�̓��e����ƃt�@�C���ɕۑ������
        For Each chform In Forms
            Select Case chform.Name
            Case Me.Name, "frmPrint"
            Case Else
'                If chform.Name = "frmRessha" Then
'                    intPage = frmRessha.DispPage
'                Else
'                    intPage = -1
'                End If
                Set chform_old = chform
                bOpend = True
                Unload chform
            End Select
        Next
        
        '�����ŕۑ��t���O���N���A����Ƃ�낵���Ȃ�
'        Call InitChangedFlag            ' Set Flag Not Dirty
        Call gSetUndoEnabled(mnuUndo, False)
        Clipboard.Clear
        
        '���̃t�@�C������̓Ǎ��݂�L���ɂ���
        mnuFilePart.Enabled = True
        
        Select Case Index
                    
        Case 0:                                     ' ��{�f�[�^
            Load frmBasicData
            frmBasicData.Show
            
        Case 3:                                     ' �����\��
            Load frmKKouzou
            frmKKouzou.Show
            
        Case 6:                                     ' �v�Z���
            Call ShowCalcForm(True)
        Case 7:                                     ' Test
            mnuFilePart.Enabled = False
            Dim strBuf As String
            
            'Call gSetCmnVariable
            strBuf = gstrCalcDir
            gstrCalcDir = gstrCalcDir & "Test\"
            If Dir$(gstrCalcDir, vbDirectory) = "" Then MkDir (gstrCalcDir)
            
            Call gSplitString(SetCalcArrayFromFile, ":", strerrform, strErrMsg)
            If strErrMsg <> "" Then
                '�u�t�@�C����������܂���v�G���[
                If Val(strErrMsg) = 53 Then
                    Call MsgBox("���̓f�[�^���s�����Ă��܂��B" & vbCrLf & "�e���ڂ̃f�[�^���������Ă��������B", vbExclamation + vbOKOnly, App.Title)
                Else
                    Call MsgBox("�v�Z�������ɃG���[���������܂����B" & vbCrLf & "�G���[�ԍ��F" & strErrMsg, vbExclamation + vbOKOnly, App.Title)
                End If
            End If
            
            gstrCalcDir = strBuf
            
        Case 9:                                     ' �Ў����E����
            Load frmKatamochi
            frmKatamochi.Show
    
        Case 10:                                    ' �t�[�`���O
            Load frmKisohaikin
            frmKisohaikin.Show
    
        Case 12:                                    ' ���E�Y
            Load frmHashira
            frmHashira.Show
    
        Case 13:
            Load frmKuiHaikin
            frmKuiHaikin.Show
    
        Case 14:
            Load frmShishou
            frmShishou.Show
    
    End Select

End Sub

Private Sub ShowCalcForm(ByRef rbolPutMsg As Boolean)
    Dim strErrMsg As String
    Dim strerrform As String
    Dim chform As Form
    Dim chform_old As Form
    
    Call gSplitString(SetCalcArrayFromFile, ":", strerrform, strErrMsg)
    If strErrMsg = "" Then
        mnuFilePart.Enabled = False
        Form1.Show
    Else
        '�t�@�C���I�[�v�����Ɍv�Z�t�H�[�����ŏ��ɕ\������B���̂Ƃ��G���[���o�Ă��x�����Ȃ��B
        
'        If rbolPutMsg = True Then'''''02/09/22
'            '�u�t�@�C����������܂���v�G���[
'            If val(strErrMsg) = 53 Then
'                Call MsgBox("���̓f�[�^���s�����Ă��܂��B" & vbCrLf & "�e���ڂ̃f�[�^���������Ă��������B", vbExclamation + vbOKOnly, App.Title)
'            Else
'                Call MsgBox("�v�Z�������ɃG���[���������܂����B" & vbCrLf & "�G���[�ԍ��F" & strErrMsg, vbExclamation + vbOKOnly, App.Title)
'            End If
'        End If
        
        Select Case LCase$(strerrform)
        Case "frmbasicdata"
            frmBasicData.Show
        Case "frmkkouzou"
            frmKKouzou.Show
        Case "frmkatamochi"
            frmKatamochi.Show
        Case "frmkisohaikin"
            frmKisohaikin.Show
        Case "frmhashira"
            frmHashira.Show
        Case Else
            MsgBox strerrform
        End Select
    End If
End Sub

Public Sub CheckCloseWindow(Index As Integer)
    ShowWindow(Index) = False
End Sub

Private Sub MDIForm_Activate()
    If bLoaded = True Then
        Call ShowCalcForm(False)
        bLoaded = False
    End If
End Sub

Private Sub MDIForm_Unload(Cancel As Integer)
    
  If AreYouSave_Messege = "Cancel" Then
    Cancel = True
    Exit Sub
  End If
    
    If Me.WindowState = vbNormal Then
        SaveSetting App.Title, "Settings", "MainLeft", Me.Left
        SaveSetting App.Title, "Settings", "MainTop", Me.Top
        SaveSetting App.Title, "Settings", "MainWidth", Me.Width
        SaveSetting App.Title, "Settings", "MainHeight", Me.Height
    End If
    
    '�v���r���[�t�@�C���ۑ��ݒ�̕ۑ�
    Call gPutIniLong("Option", "SavePreview", IIf(mnuSaveVsvFile.Checked, 1, 0), gstrAppDir & gcstrInitFile & ".ini")
    
'
'    bIsSoukatsuNewPage = mnuOptionSoukatsuNewpage.Checked
'    SaveSetting App.Title, "Settings", "bIsSoukatsuNewPage", bIsSoukatsuNewPage
'
'
'    '���ʃf�[�^�̃Z�[�u
'    Call CommonArcDataSave
  
    '��ƃt�H���_���̃f�[�^�t�@�C����S�ď���
    Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
    Call usrFileRecent.Save
    
    Set usrFileRecent = Nothing
  
    End
End Sub

'**** �ƭ����� ***
Private Sub mnuCalc_Click()
  Call CmdShow_Click(4)
End Sub

Private Sub mnuEdit_Click()
    If Clipboard.GetText = "" Then
        mnuPaste.Enabled = False
    Else
        mnuPaste.Enabled = True
    End If
End Sub

Private Sub mnuEditChkBoxCheck_Click()
    On Error GoTo ErrHandler

    With ActiveForm.ActiveControl
        If Left$(.Name, 2) = "fa" Then
            Call gEditCheck(ActiveForm.ActiveControl)
            Call gSetChgFlag(ActiveForm.Name)
        End If
        
    End With

    Exit Sub
    
ErrHandler:
    Dim Msg As String
    
    If Err.Number = 91 Then
        Err.Clear
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        Msg = "�װ�ԍ� " & str(Err.Number) & Err.Source _
            & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "�װ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear


End Sub

Private Sub mnuEditChkBoxReverse_Click()
    On Error GoTo ErrHandler

    With ActiveForm.ActiveControl
        If Left$(.Name, 2) = "fa" Then
            Call gEditCheckReverse(ActiveForm.ActiveControl)
            Call gSetChgFlag(ActiveForm.Name)
        End If
        
    End With

    Exit Sub
    
ErrHandler:
    Dim Msg As String
    
    If Err.Number = 91 Then
        Err.Clear
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        Msg = "�װ�ԍ� " & str(Err.Number) & Err.Source _
            & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "�װ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear


End Sub

Private Sub mnuEditChkBoxUnCheck_Click()
    On Error GoTo ErrHandler

    With ActiveForm.ActiveControl
        If Left$(.Name, 2) = "fa" Then
            Call gEditUnCheck(ActiveForm.ActiveControl)
            Call gSetChgFlag(ActiveForm.Name)
        End If
        
    End With

    Exit Sub
    
ErrHandler:
    Dim Msg As String
    
    If Err.Number = 91 Then
        Err.Clear
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        Msg = "�װ�ԍ� " & str(Err.Number) & Err.Source _
            & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "�װ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear

End Sub

'���̃t�@�C������Ǎ���
Private Sub mnuFilePart_Click()
    Dim ans As Integer
    
'    ans = MsgBox("�Ǎ��񂾍��ڂ̃f�[�^�͒u�����܂����A" & vbCrLf & "���̂܂܃t�@�C�����J���Ă��悢�ł����H" & vbCrLf & vbCrLf & "���Ӂj���ɖ߂��܂���", vbYesNo + vbDefaultButton2 + vbInformation)
'    If ans = vbNo Then
'        Exit Sub
'    End If
    
    With CommonDialog1
        If gstrInitDirPartOpen <> "" Then .InitDir = gstrInitDirPartOpen Else .InitDir = gstrCurDir
        .CancelError = False
        .FileName = ""
        .Flags = cdlOFNOverwritePrompt + cdlOFNPathMustExist + cdlOFNLongNames
'        .Filter = "WinPHaikin�ް�(*" & gcstrFileExt & ")|*." & gcstrFileExt & "|WinPier�ް�(*.pir)|*.pir" '|�S��|*.*"
        .Filter = "Data(*" & gcstrFileExt & ")*." & gcstrFileExt ' & "|WinPier�ް�(*.pir)|*.pir" '|�S��|*.*"
'        C:\���r�z�ؐ}\Data
        .ShowOpen
        If .FileName <> "" Then
            Call DataFilePartOpen(.FileName)
            gstrInitDirPartOpen = getFilePath(.FileName)
        End If
    End With

End Sub

Private Sub mnuFileRecent_Click(Index As Integer)
    
    With CommonDialog1
        .InitDir = gstrCurDir
        .CancelError = False
        
        '��������t�@�C�������擾
        .FileName = usrFileRecent.GetFileName(Index)
        
        If .FileName <> "" Then
            Call DataFileOpen(.FileName)
        End If
    End With
End Sub

Private Sub mnuHelpContents_Click()
    'Dim nRet As Integer
    Dim ret As Long
    On Error Resume Next
    'nRet = OSWinHelp(Me.hwnd, App.HelpFile, 3, 0)
    ret = WinHelp(Me.hwnd, App.HelpFile, HELP_FINDER, ByVal 0&)
    'ret = WinHelp(Me.hwnd, App.HelpFile, HELP_CONTENTS, ByVal 0&)
    'ret = WinHelp(Me.hwnd, App.HelpFile, HELP_CONTEXT, ByVal 0&)
    If Err Then
        MsgBox Err.Description
    End If
End Sub

Private Sub mnuHelpSearch_Click()
    Dim nRet As Integer
    On Error Resume Next
    nRet = OSWinHelp(Me.hwnd, App.HelpFile, &HB&, 0)
    If Err Then
        MsgBox Err.Description
    End If
End Sub

Private Sub mnuHelpVersion_Click()
    frmAbout.Show vbModal, Me
End Sub

Private Sub mnuNewData_Click()  '�V�K�쐬
    Dim chform As Form
    
    If AreYouSave_Messege = "Cancel" Then
        Exit Sub
    End If
    For Each chform In Forms
        If chform.Name <> Me.Name Then
            Unload chform
        End If
    Next
    
    '��ƃt�H���_���̃f�[�^�t�@�C����S�ď���
    Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
    Call gDeleteAllFile(gstrCalcDir, "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata1\", "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata2\", "*")
    
    '�t�H�[���̃L���v�V�����Ƀt�@�C�����������
    gstrCurFilename = ""
    Call ChgCaption(gstrCurFilename)
    Call InitChangedFlag
    Call ChgStatusBar(False)
    
    Call SetSI(gcintSI)
    
    'Call PrjctMain.InitData
    
    'If dt1SICheck = 1 Then lblSICheck.Visible = True Else lblSICheck.Visible = False
    
End Sub

Private Sub mnuCut_Click()
Dim i As Integer
    
    On Error GoTo ErrHandler

    With ActiveForm.ActiveControl
        'kit
        If Left$(.Name, 2) = "fa" Then
            Call gEditCut(ActiveForm.ActiveControl, gusrCopyBuff, gusrUndoBuff(0))
            Call gSetUndoEnabled(mnuUndo, True)
            Call gSetChgFlag(ActiveForm.Name)
        End If
    End With

    Exit Sub
    
ErrHandler:
    Dim Msg As String
    
    If Err.Number = 91 Then
        Err.Clear
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        Msg = "�װ�ԍ� " & str(Err.Number) & Err.Source _
            & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "�װ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear

End Sub

Private Sub mnuCopy_Click()
    
    On Error GoTo ErrHandler
    
    With ActiveForm.ActiveControl
        'kit
        If Left$(ActiveForm.ActiveControl.Name, 2) = "fa" Then
            Call gEditCopy(ActiveForm.ActiveControl, gusrCopyBuff)
            
        End If
          
    End With

    Exit Sub
    
ErrHandler:
    Dim Msg As String
    
    If Err.Number = 91 Then
        Err.Clear
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        Msg = "�װ�ԍ� " & str(Err.Number) & Err.Source _
            & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "�װ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear

End Sub

Private Sub mnuOptionSoukatsuNewpage_Click()
    'mnuOptionSoukatsuNewpage.Checked = Not mnuOptionSoukatsuNewpage.Checked
    'bIsSoukatsuNewPage = mnuOptionSoukatsuNewpage.Checked
End Sub

Private Sub mnuOptiSI_Click()
    Dim chform As Form
    Dim bolChformClose As Boolean
    
    '�J���Ă���t�H�[��������Όx�����ďI��
    bolChformClose = False
    
    For Each chform In Forms
        If chform.Name <> Me.Name Then
            If chform.MDIChild = True Then
                'Call MsgBox("���݂̓��̓t�H�[������Ă���I�����ĉ������B", vbInformation + vbOKOnly, "�P�ʂ̕ύX")
                'Exit Sub
                Unload chform
                bolChformClose = True
                Exit For
            End If
        End If
    Next
    
    If Trim$(gstrCurFilename) <> "" Or IsDataChange Then
        If MsgBox("����܂ł̓��͒l�͕ϊ�����܂��񂪁A�{���ɂ�낵���ł����H", vbInformation + vbYesNoCancel, "�P�ʂ̕ύX") <> vbYes Then
            Exit Sub
        Else
            '�f�[�^�ύX�t���O
            gbolChgFlag(gcfrmMDIForm_���r) = True
            Call ChgStatusBar(True)
        End If
    End If
    
    mnuOptiSI.Checked = Not mnuOptiSI.Checked
    lblSICheck.Enabled = mnuOptiSI.Checked
    If mnuOptiSI.Checked = True Then gintTanni = gcintSI Else gintTanni = gcintNotSI
    Call ChgStatusBarSI(lblSICheck.Enabled)
    
    If bolChformClose = True Then chform.Show
    
End Sub

Private Sub mnuOptmyspace_Click()
    
'    mnuOptmyspace.Checked = Not mnuOptmyspace.Checked
'
'    Call OptmyspaceChange
    
End Sub

Private Sub mnuOptRecentNum_Click()
    Dim iNewNum As Integer
    Dim sBuf As String
    
    On Error GoTo ERR_HANDLER
    
    sBuf = InputBox("̧�ٗ����̕ۑ�������͂��Ă��������B�i0 - 10�j", "̧�ٗ��𐔂̕ύX", CStr(iRecentNum))
    
    '�L�����Z��
    iNewNum = Val(sBuf)
    If Len(sBuf) = 0 Or iNewNum < 0 Or iNewNum > 10 Then Exit Sub

    '�X�V
    iRecentNum = iNewNum
    
    '�ď�����
    Call usrFileRecent.ChangeUseNum(iRecentNum)

    '���𐔂̕ۑ�
    Call gPutIniLong("Option", "RecentNum", iRecentNum, gstrAppDir & gcstrInitFile & ".ini")

    Exit Sub

ERR_HANDLER:
    Exit Sub

End Sub

Private Sub mnuPaste_Click()
Dim tmp As Integer
Dim i As Integer
    
    On Error GoTo ErrHandler
    
    With ActiveForm.ActiveControl
        'kit
        If Left$(ActiveForm.ActiveControl.Name, 2) = "fa" And Clipboard.GetText <> "" Then
            Call gEditPaste(ActiveForm.ActiveControl, gusrCopyBuff, gusrUndoBuff(0))
            Call gSetUndoEnabled(mnuUndo, True)
            
            Call gSetChgFlag(ActiveForm.Name)
        End If
        
    End With
    
    Exit Sub
    
ErrHandler:
    Dim Msg As String
    
    If Err.Number = 91 Then
        Err.Clear
        Exit Sub
    End If
    
    If Err.Number <> 0 Then
        Msg = "�װ�ԍ� " & str(Err.Number) & Err.Source _
            & " �Ŵװ���������܂����B" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "�װ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear
End Sub

Public Sub mnuGetPick_Click()
'    '...�߯������ް��̓ǂݍ���
'    With CommonDialog1
'        If PickFile <> "" Then
'            If getFilePath(PickFile) = getFilePath(filename) Then
'                .InitDir = getFilePath(PickFile)
'                .filename = getFileName(PickFile)
'            Else
'                .InitDir = gstrCurDir
'                .filename = PickFile
'            End If
'        Else
'            .InitDir = strPikDir
'            .filename = ""
'        End If
'        .Filter = "�߯������ް� (*.pik)|*.pik" '|�S��|*.*"
'        .CancelError = True
'        On Error Resume Next
'        .ShowOpen
'        If Err > 0 Then
'            On Error GoTo 0
'            Exit Sub
'        End If
'        On Error GoTo 0
'        If Dir(.filename) = "" Then
'            Call msgNoFile(.filename)
'            Exit Sub
'        End If
'        PickFile = .filename
'        If UCase(getFileExt(.filename)) = "PIK" Then Call PickUpOpen
'    End With
End Sub

Private Sub mnuFileOpen_Click()
    With CommonDialog1
        .InitDir = gstrCurDir
        .CancelError = False
        .FileName = ""
        .Flags = cdlOFNOverwritePrompt + cdlOFNPathMustExist + cdlOFNLongNames
'        .Filter = "WinPHaikin�ް�(*" & gcstrFileExt & ")|*." & gcstrFileExt & "|WinPier�ް�(*.pir)|*.pir" '|�S��|*.*"
        .Filter = "Data(*" & gcstrFileExt & ")*." & gcstrFileExt ' & "|WinPier�ް�(*.pir)|*.pir" '|�S��|*.*"
        .ShowOpen
        If .FileName <> "" Then
            Call DataFileOpen(.FileName)
        End If
    End With
End Sub

Private Sub DataFileOpen(rstrFileName As String)
        If Dir(rstrFileName) = "" Then
            Call msgNoFile(rstrFileName)
            Exit Sub
        End If
        If UCase(getFileExt(rstrFileName)) = UCase(gcstrFileExtNoDot) Then
            Select Case AreYouSave_Messege
                Case "Cancel"
                    Screen.MousePointer = vbDefault
                    Exit Sub
                Case "Yes"
                
                Case "No"
                    Call InitChangedFlag            ' Set Flag Not Dirty
                    Call MDIForm_���r.ChgStatusBar(False)
            End Select
            gstrCurFilename = rstrFileName
            
            If Right$(gstrCurFilename, 3) = "pir" Then gstrCurFilename = Left$(gstrCurFilename, Len(gstrCurFilename) - 3) & gcstrFileExt
            
            '�����ɓo�^
            Call usrFileRecent.RenewRecent(gstrCurFilename)
            Call usrFileRecent.Save
            
            '��ƃf�B���N�g���ɃA�[�J�C�u���ꂽ�t�@�C����W�J
            Call ArcDataOpen(gstrCurFilename)
        
            '��ƃf�B���N�g���Ƀt�@�C��������Γǂݍ���
            If Dir$(gstrTmpDir & gcstrMDIFile & gcstrFileExt) <> "" Then
                Call DataLoad
            End If
        Else
        '     Screen.MousePointer = vbDefault
            Exit Sub
        End If
End Sub

'�����I�ȓǂ݂���
'���ʂ̊֐����ŁA�w�肵���t�@�C���������A�[�J�C�u�t�@�C������W�J���A�t�H�[���������[�h���Ă���
Private Sub DataFilePartOpen(rstrFileName As String)
        If Dir(rstrFileName) = "" Then
            Call msgNoFile(rstrFileName)
            Exit Sub
        End If
        If UCase(getFileExt(rstrFileName)) = UCase(gcstrFileExtNoDot) Then
            ' �����ǂݍ��݂ŃJ�����g�t�@�C������ύX���Ă͂����Ȃ�
            ' gstrCurFilename = rstrFileName
            
            '��ƃf�B���N�g���ɃA�[�J�C�u���ꂽ�t�@�C����W�J
            'Call ArcDataPartOpen(gstrCurFilename)
            Call ArcDataPartOpen(rstrFileName)
        Else
        '     Screen.MousePointer = vbDefault
            Exit Sub
        End If
End Sub

Private Sub mnuSave_Click()
    Dim dummy As Integer

    If Trim$(gstrCurFilename) = "" Then
        Call mnuSaveAs_Click
    Else
        Call ArcDataSave(gstrCurFilename)
    End If

End Sub

Private Sub mnuSaveAs_Click()
    Call SaveAs
    
End Sub

Private Function SaveAs() As Boolean
    Dim tmpFileName
    
    tmpFileName = GetSaveFileName
    If tmpFileName <> "" Then
        gstrCurFilename = tmpFileName
        
        '�����ɓo�^
        Call usrFileRecent.RenewRecent(gstrCurFilename)
        
        Call ArcDataSave(gstrCurFilename)
        
        SaveAs = True
    Else
        SaveAs = False
    End If
    
End Function

Private Function GetSaveFileName() As String
    With CommonDialog1
        .InitDir = gstrCurDir
        If gstrCurFilename <> "" Then
            .FileName = GetFileName(gstrCurFilename)
        Else
            .FileName = "����" & gcstrFileExt
        End If
        .Flags = cdlOFNOverwritePrompt + cdlOFNHideReadOnly + cdlOFNLongNames
'        .Filter = "WinPHaikin�ް�(*" & gcstrFileExt & ")|*" & gcstrFileExt '|�S��|*.*"
        .Filter = "Data(*" & gcstrFileExt & ")*" & gcstrFileExt '|�S��|*.*"
        .FilterIndex = 1
        .CancelError = True
        On Error Resume Next
        .ShowSave
        If Err > 0 Then
            On Error GoTo 0
            GetSaveFileName = ""
            Exit Function
        End If
        On Error GoTo 0
        GetSaveFileName = .FileName
        If .FileName <> "" Then
            gstrCurDir = getFilePath(.FileName)
        End If
    End With
End Function

Private Function AreYouSave_Messege() As String
'*** �f�[�^���ύX���ꂢ�Ă����ꍇ�ۑ����邩�����B
'*** ���̌�̏������قȂ�ꍇ�̂��߂�"Cancel","Yes","No","Ok"��Ԃ��B

    AreYouSave_Messege = "Ok"
  
    If IsDataChange Then
        '�v�Z�ݒ�݂̂��ύX����Ă����ꍇ�͊m�F�Ȃ��ŕۑ�����
        If IsDataChangeKeisanOnly And gstrCurFilename <> "" Then
            Call ArcDataSave(gstrCurFilename)
            AreYouSave_Messege = "Yes"
        Else
            Select Case MsgBox("�ް����ύX����Ă��܂��" & vbLf & "�ۑ����܂���?", vbYesNoCancel)
                Case vbCancel
                    AreYouSave_Messege = "Cancel"
                Case vbYes
                    '*** �t�@�C���̕ۑ����[�`���̌Ăяo���B
                    If gstrCurFilename = "" Then
                        If SaveAs Then
                            AreYouSave_Messege = "Yes"
                        Else
                            AreYouSave_Messege = "Cancel"
                        End If
                    Else
                        Call ArcDataSave(gstrCurFilename)
                        AreYouSave_Messege = "Yes"
                    End If
                Case vbNo
                    AreYouSave_Messege = "No"
            End Select
        End If
    End If
  
End Function

'�e�t�H�[���̃f�[�^���A�[�J�C�u����J��
Private Sub ArcDataOpen(rstrFileName As String)
    Dim i As Integer
    Dim ii As Integer, iii As Integer
    Dim length As Integer
    Dim F_No As Integer
    Dim chform As Form
    Dim chform_old As Form
    Dim bOpend As Boolean
    Dim strErrMsg As String
    Dim intPage As Integer
    
    If Dir(rstrFileName) = "" Then Exit Sub
    
    '��ƃt�H���_���̃f�[�^�t�@�C����S�ď���
    Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
    Call gDeleteAllFile(gstrTmpDir, "vsv")
    Call gDeleteAllFile(gstrCalcDir, "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata1\", "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata2\", "*")
    
    Screen.MousePointer = vbHourglass
    MDIForm_���r.AutoShowChildren = False '�����\���𖳌��ɂ���
    
    ' --- ���[�h����Ă���q�t�H�[����S�ĕ���
    bOpend = False
    For Each chform In Forms
        Select Case chform.Name
        Case Me.Name
        Case "frmPrint", "Form1" ' Form1.Name,
            Unload chform
        Case Else
'            If chform.Name = "frmRessha" Then
'                intPage = frmRessha.DispPage
'            Else
'                intPage = -1
'            End If
            Set chform_old = chform
            bOpend = True
            Unload chform
        End Select
    Next

    gstrCurDir = getFilePath(rstrFileName)
    
' Version
'    If Not IsDSDFile(F_No) Then
'        Screen.MousePointer = vbDefault
'        Exit Sub
'    End If
    
    Call gExtractFile(gstrTmpDir, rstrFileName, faLoadBuf)
    Call gPutFileName(gstrTmpDir, gcstrNameFile, rstrFileName)
    '�t�H�[���̃L���v�V�����Ƀt�@�C�����������
    Call ChgCaption(GetFileName(rstrFileName))
    Call InitChangedFlag
    Call ChgStatusBar(False)
    
    MDIForm_���r.AutoShowChildren = True
    
    '�v�Z�t�H�[�����J��
    Call ShowCalcForm(False)
    
    'Load frmPrntDialog '      form2                        ' ��{���
    ' --- ���[�h����Ă����q�t�H�[�����P�J��
'    If bOpend = True Then
'        If chform_old.Name = Form1.Name Then
'            Call ShowCalcForm(False)
'        Else
'            chform_old.Show
'            If intPage <> -1 Then
'                chform_old.DispPage = intPage
'            End If
'        End If
'    Else
'        Call ShowCalcForm(False)
'    End If
    
    Screen.MousePointer = vbDefault
    mnuOptiSI.Enabled = True
    
    
End Sub

'�ЂƂ̃t�H�[���̃f�[�^���A�[�J�C�u����J��
'�Ώۃt�@�C���͌��݂̃A�N�e�B�u�q�t�H�[���̎�ނɂ���đI��������
Private Sub ArcDataPartOpen(rstrFileName As String)
    Dim i As Integer
    Dim chform_old As Form
    Dim bOpend As Boolean
    Dim sTargetFile As String
    
    On Error GoTo ErrHandler
    
    If Dir(rstrFileName) = "" Then Exit Sub
    
    '�A�N�e�B�u�Ȏq�t�H�[�������������牽�����Ȃ�
    If MDIForm_���r.ActiveForm.Name = MDIForm_���r.Name Then Exit Sub
    
    sTargetFile = ""
    '���[�h����t�@�C�������擾
    Select Case MDIForm_���r.ActiveForm.Name
        Case "frmBasicData"
            sTargetFile = gcstrBasicDataFile
            gbolChgFlag(gcfrmBasicData) = True
        
        Case "frmHashira"
            sTargetFile = gcstrHashiraFile
            gbolChgFlag(gcfrmHashira) = True
        
        Case "frmKatamochi"
            sTargetFile = gcstrKatamochiFile
            gbolChgFlag(gcfrmKatamochi) = True
    
        Case "frmKisohaikin"
            sTargetFile = gcstrKisohaikinFile
            gbolChgFlag(gcfrmKisohaikin) = True
        
        Case "frmKKouzou"
            sTargetFile = gcstrKKouzouFile
            gbolChgFlag(gcfrmKKouzou) = True
        
    End Select
    
    If sTargetFile = "" Then Exit Sub
    
    sTargetFile = sTargetFile & gcstrFileExt
    
    ' --- ���[�h����Ă���q�t�H�[����S�ĕ���
    bOpend = False
    Set chform_old = MDIForm_���r.ActiveForm
    bOpend = True
    Unload MDIForm_���r.ActiveForm
    
    '��ƃt�H���_���̑Ώۃt�@�C���������i�㏑�����̂ŕK�v�Ȃ����H�j
    Call gDeleteSelectFile(gstrTmpDir, sTargetFile)
    
    Screen.MousePointer = vbHourglass
    MDIForm_���r.AutoShowChildren = False '�����\���𖳌��ɂ���
    
    Call gExtractSelectFile(gstrTmpDir, rstrFileName, sTargetFile, faLoadBuf)
    
    Call ChgStatusBar(True)
    
    MDIForm_���r.AutoShowChildren = True
    
    ' --- ���[�h����Ă����q�t�H�[�����P�J��
    If bOpend = True Then
        chform_old.Show
    Else
        Call ShowCalcForm(False)
    End If
    
    Screen.MousePointer = vbDefault
    mnuOptiSI.Enabled = True
    
    Exit Sub
    
ErrHandler:
    Exit Sub

End Sub

'�e�t�H�[���̃f�[�^���A�[�J�C�u���ĕۑ�����
Private Sub ArcDataSave(rstrFileName As String)
    Dim i As Integer
    Dim chform As Form
    
    If Trim$(rstrFileName) = "" Then Exit Sub
    
    Screen.MousePointer = vbHourglass
'    MDIForm_���r.AutoShowChildren = False '�����\���𖳌��ɂ���
    
    '�J���Ă���t�H�[��������΃f�[�^�ۑ�
    For Each chform In Forms
        'If chform.Name <> Me.Name Then
            Call chform.DataSave
        'End If
    Next
    
    gstrCurDir = getFilePath(rstrFileName)
    
' Version
'    If Not IsDSDFile(F_No) Then
'        Screen.MousePointer = vbDefault
'        Exit Sub
'    End If
    
    '�A�[�J�C�u�O�Ɍ��̃t�@�C�������l�[��
    If Dir(rstrFileName) <> "" Then
        Name rstrFileName As rstrFileName & ".$$$"
    End If
    
    If mnuSaveVsvFile.Checked Then
        Call gArchiveExtFile(gstrTmpDir, rstrFileName, faLoadBuf, gcstrFileExtNoDot & ";vsv")
    Else
        Call gArchiveExtFile(gstrTmpDir, rstrFileName, faLoadBuf, gcstrFileExtNoDot)
    End If
    Call gPutFileName(gstrTmpDir, gcstrNameFile, rstrFileName)
    
    '�A�[�J�C�u��Ɍ��̃t�@�C�����폜
'    If Dir(rstrFileName) <> "" Then
'        Kill rstrFileName
'    End If
    If Dir(rstrFileName & ".$$$") <> "" Then
        Kill rstrFileName & ".$$$"
    End If

    '�t�H�[���̃L���v�V�����Ƀt�@�C�����������
    Call ChgCaption(GetFileName(rstrFileName))
    Call InitChangedFlag
    Call ChgStatusBar(False)
    
'    MDIForm_���r.AutoShowChildren = True
    'Load frmPrntDialog '      form2                        ' ��{���
    Screen.MousePointer = vbDefault
    
End Sub

Private Sub ChkLoadPickFile()
'    Dim Ans As Integer
'    Dim tmp As String
'
'    If PickFile <> "" Then
'        On Error Resume Next
'        tmp = Dir(PickFile)
'        If Err.Number = 0 And tmp <> "" Then
'            Exit Sub
'        End If
'        On Error GoTo 0
'    End If
'    Ans = MsgBox("PickUp�t�@�C����������܂���B" & vbCrLf & _
'        "�t�@�C�����w�肵�܂����H", vbExclamation + vbYesNo + vbDefaultButton1)
'    If Ans = vbNo Then
'        Exit Sub
'    End If
'
'    '...�߯������ް��̓ǂݍ���
'    With CommonDialog1
'        .InitDir = gstrCurDir
'        .filename = PickFile
'        .Filter = "�߯������ް� (*.pik)|*.pik" '|�S��|*.*"
'        .CancelError = True
'        On Error Resume Next
'        .ShowOpen
'        If Err > 0 Then
'            On Error GoTo 0
'            Exit Sub
'        End If
'        On Error GoTo 0
'        If Dir(.filename) = "" Then
'            Call msgNoFile(.filename)
'            Exit Sub
'        End If
'        If UCase(getFileExt(.filename)) = "PIK" Then
'            PickFile = .filename
'            Call PickUpOpen
'        End If
'    End With
End Sub

Public Sub PickUpOpen() 'PckUp̧�ق��猩�o���ƂȂ镔��������۰��
'Dim F_No As Integer
'Dim Data As String
'Dim i As Integer, ii As Integer, iii As Integer
'Dim IsShinki As Boolean
'Dim iOldBzCount  As Integer
'Dim IsMsgOut As Boolean
'
'    IsMsgOut = False
'    If Dir(PickFile) = "" Then Exit Sub
'
'    Screen.MousePointer = vbHourglass
'
'    IsShinki = (Trim(filename) = "")
'
'    iOldBzCount = iBzCount
'    iBzCount = 0
'    iNumSelBz = 0
'
'    If IsShinki Then
'        ReDim InpData(ConMaxSanshutuDt) '���̐����͂����Ƒ傫��������������
'        ReDim dtBzDanmen(ConMaxSanshutuDt)
'        ReDim iNumCalcInBZ(ConMaxSanshutuDt)        ' ���ޒP�ʂ̎Z�o�_��
'        ReDim dt3Calc(ConMaxSanshutuDt)
'    Else
'        ReDim Preserve InpData(ConMaxSanshutuDt) '���̐����͂����Ƒ傫��������������
'        ReDim Preserve dtBzDanmen(ConMaxSanshutuDt)
'        ReDim Preserve iNumCalcInBZ(ConMaxSanshutuDt)        ' ���ޒP�ʂ̎Z�o�_��
'        ReDim Preserve dt3Calc(ConMaxSanshutuDt)
'    End If
'
'    strPikDir = getFilePath(PickFile)
'
'    F_No = FreeFile
'    Open PickFile For Input Access Read As F_No
'
'    Line Input #F_No, Data
'    D_Name = Trim$(Data)
'
'    '  PickUpFIle����A���͉�ʗp�̌��o���ް��̍쐬
'Dim strPickMage As String, strPrevPickMage As String
'Dim iPrevBZI As Integer
'    iPrevBZI = -1
'    strPrevPickMage = ""
'
'    iBzCount = 0
'    i = 0
'    Do While Not EOF(F_No)
'        Line Input #F_No, Data
'        strPickMage = Left(Data, 10)                            ' PickUpNO & M(or S or N)
'        If strPrevPickMage <> "" Then                           ' 8/31 �ύX
'            If strPickMage <> strPrevPickMage Then
'                Exit Do
'            End If
'        End If
'
'        strPrevPickMage = strPickMage
'        InpData(i).Matr = CInt(Mid$(Data, 11, 5))               ' ���ޔԍ�
'        If InpData(i).Matr <> iPrevBZI Then
'        '   �V�������ޔԍ� (ITAN)�̎�
'            If Not IsShinki Then
'            '    �ēǍ��̎�
'                If Not IsMsgOut Then
'                    If iBzCount + 1 > iOldBzCount Then
'                        MsgBox "PickUp̧�ق̕��ސ��������Ă��܂��B", vbInformation
'                        '
'                        IsMsgOut = True
'                    End If
'                End If
'            End If
'            iPrevBZI = InpData(i).Matr
'        End If
'
'        InpData(i).Calc1 = Trim$(Mid$(Data, 26, 5))
'        InpData(i).Calc2 = CSng(Mid$(Data, 31, 10))
'        dt3Calc(i).iBzNo = InpData(i).Matr
''        If i > 0 Then
''            If (InpData(i).Matr < InpData(i - 1).Matr) Then
''                Exit Do
''            End If
''        End If
'        iii = iii + 1
'
'        If Mid$(Data, 27, 4) = "JTAN" Then
'            '   ���ޔԍ��P�ʂɕ��ށA�f�ʂ��ް��̍쐬
'            If IsShinki Then dtBzDanmen(iBzCount).strMark = myspace(32)
'
'            dtBzDanmen(iBzCount).iBzNo = InpData(i).Matr
'            dtBzDanmen(iBzCount).sLeng = InpData(i).Calc2
'            dtBzDanmen(iBzCount).Index = ii                     ' �Z�o�_�A�S���ް��̕��ޔԍ��P�ʂ�(�擪)ITAN�f�[�^�ւ�Index
'            dtBzDanmen(iBzCount).iNumCalc = iii                  ' ���ޒP�ʂ̎Z�o�_��
'            iNumCalcInBZ(iBzCount) = iii
'            iBzCount = iBzCount + 1
'        ElseIf Mid$(Data, 27, 4) = "ITAN" Then
'            ii = i
'            iii = 1
'        End If
'
'        i = i + 1
'    Loop
'
'    Close F_No
'
'    Call GetMaxPickUPNO
'
'    ReDim Preserve dtBzDanmen(iBzCount)
'    ReDim Preserve iNumCalcInBZ(iBzCount)
'
'    Data_cunt = i
'    dt3Count = i
'    ReDim Preserve InpData(Data_cunt)
'    ReDim Preserve dt3Calc(Data_cunt)                           ' �Z�o�_�f�[�^
'
'    If IsShinki Then
'        ReDim TekinData(Data_cunt)                                  ' �S���ް�
'    Else
'        ReDim Preserve TekinData(Data_cunt)                         ' �S���ް�
'    End If
''
'    For i = 0 To Data_cunt - 1
'        If IsShinki Then
'            With dt3Calc(i)                 '  �Z�o�_�f�[�^�̓��͍��ڂ̏�����
'                .calName = ""
'                .Safe1 = False   ' bytNull
'                .Safe2 = 0          '    for ver 0.1.9        intNull        ' bytNull
'                .Ness(0) = False     ' bytNull
'                .Ness(1) = False     ' bytNull
'                .GammaEM = sngNull
'            End With
'        End If
'
'        With TekinData(i)               '   �S���ް��̓��͍��ڂ̏�����
'            .iNext = -1
'        End With
'    Next i
'
'    Call SetMDICaption
''    Form3.DataList
'
'    CmdShow(1).Enabled = True               ' ���ޤ�f��
'    MDIForm_���r.mnuOptiSI.Enabled = True       ' �߯������ް��̒P�ʕϊ��@���j���[�̗L���ɂ���
'
'    If Not IsShinki Then
'        Call MakeBzGroup
'    End If
'
'    Screen.MousePointer = vbDefault
End Sub


Public Function PickUpLoad(PickFile As String) As Boolean
''PickUp̧�ق���S�Ă��ް�����؂ɋL��
''PickUp(PickUp No. , M or S or N , Index)
'
'Dim F_No As Integer
'Dim F_Name As String
'Dim Data As String
'Dim i As Integer
'Dim ii As Integer
'Dim iii As Integer
'Dim Memo As Integer
'
'    Call GetMaxPickUPNO
'
'    ReDim PickUp(MaxPicUp, 2, Data_cunt) As tpPickUp
'
'    On Error Resume Next
'
'    PickUpLoad = True
'
'    F_No = FreeFile
'    Open PickFile For Input Access Read As F_No
'
'    If Err.Number = 53 Or Err.Number = 71 Or Err.Number = 75 Or Err.Number = 76 Then
'        If MsgBox(Err.Description & vbLf & "�" & Trim$(PickFile) & "�", vbOK + vbCritical + vbSystemModal, , Err.HelpFile, Err.HelpContext) = vbOK Then
'            PickUpLoad = False
'        End If
'        Err.Clear
'        Exit Function
'    End If
'
'    On Error GoTo 0
'
'    Line Input #F_No, Data
'    D_Name = Trim$(Data)
'
'    Memo = 3
'    MaxPicUp = 0
'    MaxMater = 0
'    Do While Not EOF(F_No)
'        Line Input #F_No, Data
'
'        i = CInt(Mid$(Data, 1, 5))
'        If MaxPicUp < i Then
'            MaxPicUp = i
'        End If
'
'        Select Case Trim$(Mid$(Data, 6, 5))
'            Case "M", "m"
'                ii = 0
'            Case "S", "s"
'                ii = 1
'            Case "N", "n"
'                ii = 2
'        End Select
'
'        If Memo <> ii Then
'            iii = 0
'            Memo = ii
'        Else
'            iii = iii + 1
'        End If
'
'        PickUp(i, ii, iii).Mater = CInt(Mid$(Data, 11, 5))
'
'        If MaxMater < PickUp(i, ii, iii).Mater Then
'            MaxMater = PickUp(i, ii, iii).Mater
'        End If
'
'        PickUp(i, ii, iii).MaxCom = CInt(Mid$(Data, 16, 5))
'        PickUp(i, ii, iii).MinCom = CInt(Mid$(Data, 21, 5))
'        If Trim$(Mid$(Data, 26, 5)) = "ITAN" Then
'            PickUp(i, ii, iii).position = 0
'        ElseIf Trim$(Mid$(Data, 26, 5)) = "JTAN" Then
'            PickUp(i, ii, iii).position = 999
'        Else
'            PickUp(i, ii, iii).position = CInt(Mid$(Data, 26, 5))
'        End If
'        PickUp(i, ii, iii).Distance = CSng(Mid$(Data, 31, 10))
'        PickUp(i, ii, iii).MaxM = CSng(Mid$(Data, 41, 10))
'        PickUp(i, ii, iii).MaxS = CSng(Mid$(Data, 51, 10))
'        PickUp(i, ii, iii).MaxN = CSng(Mid$(Data, 61, 10))
'        PickUp(i, ii, iii).MinM = CSng(Mid$(Data, 71, 10))
'        PickUp(i, ii, iii).MinS = CSng(Mid$(Data, 81, 10))
'        PickUp(i, ii, iii).MinN = CSng(Mid$(Data, 91, 10))                  ' ,10) 9/10 �ǉ�
'
'    Loop
'
'    Close F_No
'
End Function

Private Sub mnuSaveVsvFile_Click()
    mnuSaveVsvFile.Checked = Not mnuSaveVsvFile.Checked
End Sub

Private Sub mnuUndo_Click()

    Call gEditUndo

End Sub

Private Sub mnuWin800_Click()
    If Me.WindowState <> vbNormal Then
        Me.WindowState = vbNormal
    End If
    Me.Move Me.Left, Me.Top, 12000, 8580
    SaveSetting App.Title, "Settings", "PrevLeft", Me.Left
    SaveSetting App.Title, "Settings", "PrevTop", Me.Top
    SaveSetting App.Title, "Settings", "PrevWidth", Me.Width
    SaveSetting App.Title, "Settings", "PrevHeight", Me.Height

End Sub

Private Sub nmuFileExit_Click()
    Unload Me
End Sub

Public Sub SetDataChgFlag(ByVal vintFormID As Integer)
    gbolChgFlag(vintFormID) = True
    
    '�v�Z��ʂł̕ύX�͔�\���i�ۑ��͂���j
    If vintFormID <> gcfrmKeisan Then Call ChgStatusBar(True)
    
End Sub

Public Sub ChgStatusBar(rbolDataChange As Boolean)
    Static bytCaptoinChg As Byte
    Const cstrChanged As String = "�ύX����"
    Const cstrNoChanged As String = "�ύX�Ȃ�"
    
    If rbolDataChange = True Then
        If bytCaptoinChg <> 1 Then
            StatusBar1.Panels(1).TEXT = cstrChanged
            StatusBar1.Panels(1).Enabled = True
            
            bytCaptoinChg = 1
        End If
    Else
        If bytCaptoinChg <> 2 Then
            StatusBar1.Panels(1).TEXT = cstrNoChanged
            StatusBar1.Panels(1).Enabled = False
            
            bytCaptoinChg = 2
        End If
    End If
    
End Sub

Public Sub ChgCaption(rstrFileName As String)
    
    If Trim$(rstrFileName) = "" Then
        Caption = "winPier �V�K�쐬"
        gstrTitle = "�V�K�쐬"
    Else
        Caption = "winPier " & Trim$(rstrFileName)
        gstrTitle = getFileTitle(rstrFileName)
    End If
    
End Sub

Private Sub ChgStatusBarSI(rbSI As Boolean)
    Static bytCaptoinChg As Byte
    Const cstrChanged As String = "SI �P��"
    Const cstrNoChanged As String = ""
    
    If rbSI = True Then
        If bytCaptoinChg <> 1 Then
            StatusBar1.Panels(2).TEXT = cstrChanged
            StatusBar1.Panels(2).Enabled = True
            
            bytCaptoinChg = 1
        End If
    Else
        If bytCaptoinChg <> 2 Then
            StatusBar1.Panels(2).TEXT = cstrNoChanged
            StatusBar1.Panels(2).Enabled = False
            
            bytCaptoinChg = 2
        End If
    End If
    
End Sub

Private Sub OptmyspaceChange()

'    mnuFileBar0.Visible = mnuOptmyspace.Checked
'    mnuFileBar7.Visible = mnuOptmyspace.Checked
'    mnuFileBar6.Visible = mnuOptmyspace.Checked
'    mnuFileBar9.Visible = mnuOptmyspace.Checked

End Sub

'��ʂP�iForm2)�̃e�L�X�g�Ƀf�t�H���g�l��ݒ肷��
Public Sub SetDefaultOuryokuTxt()
'    Dim i As Integer
'
'    i = 0
'    dt1OuryokuText(i) = "�g�p���E��� �����͓x�����p����"
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� �S�؉��͓x�����p����"
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� �ϋv�������p���́i�i�v�׏d�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� �ϋv�������p���́i�ϓ��׏d�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� �O�ό����p����"
'    i = i + 1
'    dt1OuryokuText(i) = "��J���E��� �ŏ�����"
'    i = i + 1
'    dt1OuryokuText(i) = "��J���E��� �ő剞��"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��� �����p����"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��ԁi�ϐk ���� 2�j�����p���� (�㕔�H�p�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��ԁi�ϐk ���� 2�j�����p���� (��b�p�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��ԁi�ϐk �����ψʁj�����p����"
'
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� ��������p����"
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� �����p���́i�i�v�׏d�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�g�p���E��� �����p���́i�ϓ��׏d�j"
'    i = i + 1
'    dt1OuryokuText(i) = "��J���E��� �����p���́i�ŏ����́j"
'    i = i + 1
'    dt1OuryokuText(i) = "��J���E��� �����p���́i�ő剞�́j"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��� �����p����"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��ԁi�ϐk ���� 2�j�����p���� (�㕔�H�p�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��ԁi�ϐk ���� 2�j�����p���� (��b�p�j"
'    i = i + 1
'    dt1OuryokuText(i) = "�I�ǌ��E��ԁi�ϐk �����ψʁj�����p����"
'
End Sub

Public Sub InitChangedFlag(Optional rbolInitVal As Boolean = False)
    Dim i As Integer
    
    For i = 0 To gciFormNum
        gbolChgFlag(i) = rbolInitVal
    Next

End Sub

Private Function IsDataChange() As Boolean
    Dim i As Integer
    
    For i = 0 To gciFormNum
        If gbolChgFlag(i) = True Then
            IsDataChange = True
            Exit Function
        End If
    Next
    
    IsDataChange = False
    
End Function

Private Function IsDataChangeKeisanOnly() As Boolean
    Dim i As Integer
    
    IsDataChangeKeisanOnly = False
    
    If gbolChgFlag(gcfrmKeisan) = False Then Exit Function
    
    For i = 0 To gciFormNum
        If i <> gcfrmKeisan Then
            If gbolChgFlag(i) = True Then Exit Function
        End If
    Next
    
    IsDataChangeKeisanOnly = True
    
End Function

'MDIForm�ɑ�����f�[�^���t�@�C���ɏ�������
'�t�@�C���t�H�[�}�b�g��
'   SI�P�ʂ̎g�p�A�s�g�p
'�̂悤�ɂȂ��Ă���B
Public Sub DataSave()
    Dim i As Integer
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrMDIFile & gcstrFileExt For Output As #FileNo
    
    '�o�[�W������񏑂�����
    Write #FileNo, gGetCurVersion(gcstrMDIFile)
        
    Write #FileNo, gintTanni

    Close #FileNo
    Exit Sub
    
ErrorHandle:
    MsgBox "�t�@�C���������݃G���[ : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo   '�I�[�v�����Ȃ��ŃN���[�Y���Ă��G���[�ɂ͂Ȃ�Ȃ�

End Sub

'MDIForm�ɑ�����f�[�^���t�@�C���ɏ�������
'�t�@�C���t�H�[�}�b�g��
'   SI�P�ʂ̎g�p�A�s�g�p
'�̂悤�ɂȂ��Ă���B
Public Sub DataLoad()
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim strRows As String
    Dim strCols As String
    Dim strData As String
    
    On Error GoTo ErrorHandle
    gSNAP�㏈��(1) = 1
    gSNAP�㏈��(2) = 1
    FileNo = FreeFile
    Open gstrTmpDir & gcstrMDIFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
        
    '���݂̃o�[�W�����Ɣ�r
    If gIsCurrent(strVer) = False Then
        Call MsgBox("���̃f�[�^�͈ȑO�̃o�[�W�����̂��̂ł��B" _
            & vbCrLf & "�f�[�^�̓��͌`�����ɕύX������\��������̂ŁA�m�F��Ƃ����ĉ������B" & vbCrLf _
            & vbCrLf & "       ���݂��ް�ޮ� : " & gGetTrueVersionStr(gGetCurVersion("dummy")) _
            & vbCrLf & "�ް�̧�ق��ް�ޮ� : " & gGetTrueVersionStr(strVer), vbInformation + vbOKOnly, "���o�[�W�����̃f�[�^�t�@�C��")
    End If
    
    Input #FileNo, gintTanni

    Close #FileNo

    'SI�P�ʂ̐ݒ�
    Call SetSI(gintTanni)
    Exit Sub
    
ErrorHandle:
    MsgBox "�ǂݍ��݃f�[�^���s�����Ă��܂����B", vbInformation + vbOKOnly
    Close #FileNo   '�I�[�v�����Ȃ��ŃN���[�Y���Ă��G���[�ɂ͂Ȃ�Ȃ�

End Sub

Public Sub SetSI(ByVal vintSIChk As Integer)
    If vintSIChk = gcintNotSI Then
        mnuOptiSI.Checked = False
        lblSICheck.Enabled = False
    Else
        mnuOptiSI.Checked = True
        lblSICheck.Enabled = True
        gintTanni = gcintSI
    End If

    Call ChgStatusBarSI(lblSICheck.Enabled)

End Sub

'�A�v���P�[�V�����S�̂łЂƂ����ێ�����f�[�^�̃��[�h���邢�͏�����
Public Sub CommonDataLoad()
    Dim strFileName As String
    Dim i As Integer
    Dim strData As String
    Dim intMax As Integer
    Dim dblVersion As Double
    Dim dblFileVersion As Double
    Dim FileNo As Integer
    
    On Error GoTo ERR_HANDLER
    
'    '�I�v�V�����ݒ�̃��[�h
'    mnuOptmyspace.Checked = CBool(GetPrivateProfileInt("Option", "Menumyspace", 0, App.Path & "\WinDan.ini"))
'    Call OptmyspaceChange
'
    
    strFileName = gstrMarkDir & gcstrCommonDataFile & gcstrCmnFileExt
    
    '�t�@�C�����Ȃ���Ώ����l��ݒ肵�č쐬����
    If Dir$(strFileName) = "" Then
        FileNo = FreeFile
        Open strFileName For Output As #FileNo
        
        strData = "N-16" & vbTab & " N�W�����׏d" & vbCr & _
                    "P-16" & vbTab & " P�W�����׏d" & vbCr & _
                    "P-17" & vbTab & " P�W�����׏d" & vbCr & _
                    "M-18" & vbTab & " M�׏d" & vbCr & _
                    "E-##" & vbTab & " E�׏d" & vbCr & _
                    "A-##" & vbTab & " A�׏d" & vbCr & _
                    "EA-##" & vbTab & " EA�׏d" & vbCr & _
                    "KS-##" & vbTab & " KS�׏d" & vbCr & _
                    "ODK" & vbTab & " ���c�}�d�S" & vbCr & _
                    "KEO" & vbTab & " ������s" & vbCr & _
                    "KHN" & vbTab & " ���l�}�s" & vbCr & _
                    "TOQ" & vbTab & " ���}�d�S" & vbCr & _
                    "KEIHIN" & vbTab & " ����d�C�S��"
        
        '�o�[�W������񏑂�����
        Write #FileNo, gGetCurVersion(gcstrCommonDataFile)
            
        Write #FileNo, 12
        Write #FileNo, 2
        Write #FileNo, strData
        
        Close #FileNo
    
    End If

    Exit Sub
    
ERR_HANDLER:
    If Err.Number = 62 Then
        Close #FileNo
        Err.Clear
    Else
        Call MsgBox("Error " & Err.Number & vbCrLf & Err.Description, vbCritical + vbOKOnly, Err.Source)
        Err.Clear
    
        Resume Next
    End If
    
End Sub

'�A�v���P�[�V�����S�̂łЂƂ����ێ�����f�[�^�̕ۑ�
Public Sub CommonDataSave()
'    Dim strFileName As String
'    Dim intFileNo As Integer
'    Dim i As Integer
'    Dim strValue As String
'    Dim dblVersion As Double
'
''    '�I�v�V�����ݒ�̕ۑ�
''    If mnuOptmyspace.Checked = True Then strValue = "1" & Chr$(0) Else strValue = "0" & Chr$(0)
''    Call WritePrivateProfileString("Option", "Menumyspace", strValue, App.Path & "\WinDan.ini")
'
'    strFileName = App.Path & "\" & gcstrCommonDataFile
'
'    intFileNo = FreeFile
'    Open strFileName For Output As intFileNo
'
'    Write #intFileNo, iNumdt3List
'    For i = 0 To iNumdt3List - 1
'        Write #intFileNo, dt3List(i).strCode
'        Write #intFileNo, dt3List(i).strName
'    Next i
'
'    Write #intFileNo, iNumBzGrpCODE
'    For i = 0 To iNumBzGrpCODE - 1
'        Write #intFileNo, dt5PoolBuzai(i).strMark
'        Write #intFileNo, dt5PoolBuzai(i).strData
'    Next i
'
'    'SI�P�ʂ̕ϊ��W��
'    Write #intFileNo, sngSIChg
'
'    Close #intFileNo
'
'    'File2---------------------------------------------
'    strFileName = App.Path & "\" & gcstrCommonDataFile2
'
'    intFileNo = FreeFile
'    Open strFileName For Output As intFileNo
'
'    Write #intFileNo, dblVersion
'
'    Write #intFileNo, 20
'    For i = 0 To 20 - 1
'        Write #intFileNo, dt1OuryokuText(i)
'    Next i
'
'    Close #intFileNo
'
End Sub

Public Function MakeDataFile() As String
    Dim strErrMsg As String
    Dim strerrform As String
    Dim bError As Boolean
    Dim i As Integer
    
    '�f�[�^�t�@�C�������݂��Ȃ��ꍇ�ɖ������p�ӂ���
    For i = 0 To gciFormNum
        Call gSplitString(SetCalcArrayFromFile, ":", strerrform, strErrMsg)
        If strErrMsg = "" Then
            bError = False
            Exit For
        Else
            bError = True
           
            Select Case LCase$(strerrform)
            Case "frmbasicdata"
                Load frmBasicData
                Unload frmBasicData
            Case "frmkkouzou"
                Load frmKKouzou
                Unload frmKKouzou
            Case "frmkatamochi"
                Load frmKatamochi
                Unload frmKatamochi
            Case "frmkisohaikin"
                Load frmKisohaikin
                Unload frmKisohaikin
            Case Else
                Exit For
            End Select
        End If
    Next

    If bError Then
        '�u�t�@�C����������܂���v�G���[
        If Val(strErrMsg) = 53 Then
            Call MsgBox("���̓f�[�^���s�����Ă��܂��B" & vbCrLf & "�e���ڂ̃f�[�^���������Ă��������B", vbExclamation + vbOKOnly, App.Title)
        Else
            Call MsgBox("�v�Z�������ɃG���[���������܂����B" & vbCrLf & "�G���[�ԍ��F" & strErrMsg & vbCrLf & "�����t�H�[���F" & strerrform, vbExclamation + vbOKOnly, App.Title)
        End If
    End If
    
    MakeDataFile = strerrform & ":" & strErrMsg
    
End Function

