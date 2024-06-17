VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "VSFLEX6D.OCX"
Object = "{6FBA474E-43AC-11CE-9A0E-00AA0062BB4C}#1.0#0"; "SYSINFO.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.MDIForm MDIForm_橋脚 
   AutoShowChildren=   0   'False
   BackColor       =   &H8000000C&
   Caption         =   "Winpier"
   ClientHeight    =   7890
   ClientLeft      =   60
   ClientTop       =   630
   ClientWidth     =   11880
   LinkTopic       =   "MDIForm1"
   Begin VSFlex6DAOCtl.vsFlexGrid faTemp 
      Align           =   1  '上揃え
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
         Name            =   "ＭＳ Ｐゴシック"
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
      Align           =   1  '上揃え
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
         Name            =   "ＭＳ Ｐゴシック"
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
      Align           =   2  '下揃え
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
            Text            =   "変更なし"
            TextSave        =   "変更なし"
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
         Name            =   "ＭＳ Ｐゴシック"
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
      Align           =   1  '上揃え
      Height          =   500
      Left            =   0
      ScaleHeight     =   435
      ScaleWidth      =   11820
      TabIndex        =   2
      Top             =   0
      Width           =   11880
      Begin VB.CommandButton Cmd_フォルダ 
         Caption         =   "ﾌｫﾙﾀﾞ変更"
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
      Begin VB.CommandButton Cmd_図面作成 
         Caption         =   "図面View"
         Height          =   435
         Left            =   8220
         TabIndex        =   14
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "基本データ"
         Height          =   450
         Index           =   0
         Left            =   0
         TabIndex        =   13
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "支  承 ｽﾄｯﾊﾟｰ"
         Height          =   450
         Index           =   14
         Left            =   3660
         TabIndex        =   12
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton CmdShow 
         BackColor       =   &H00808080&
         Caption         =   "杭 配 筋"
         Height          =   450
         Index           =   13
         Left            =   5260
         MaskColor       =   &H00E0E0E0&
         TabIndex        =   11
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "躯体配筋"
         Height          =   450
         Index           =   12
         Left            =   1960
         TabIndex        =   10
         Top             =   0
         Width           =   875
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "ﾌｰﾁﾝｸﾞ"
         Height          =   450
         Index           =   10
         Left            =   4520
         TabIndex        =   9
         Top             =   0
         Width           =   735
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   " 形状寸法"
         Height          =   450
         Index           =   3
         Left            =   980
         TabIndex        =   0
         Top             =   0
         Width           =   975
      End
      Begin VB.CommandButton CmdShow 
         Caption         =   "片 持 梁"
         Height          =   450
         Index           =   9
         Left            =   2800
         TabIndex        =   8
         Top             =   0
         Width           =   855
      End
      Begin VB.CommandButton CmdShow 
         BackColor       =   &H80000018&
         Caption         =   " 計算 (鉄筋加工) "
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
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
         Caption         =   "SI 単位"
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
      Caption         =   "ﾌｧｲﾙ(&F)"
      Begin VB.Menu mnuFileBar0 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuNewData 
         Caption         =   " 新規作成 (&N)"
      End
      Begin VB.Menu mnuFileBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuFileOpen 
         Caption         =   " ﾌｧｲﾙを開く (&O)..."
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuFilePart 
         Caption         =   "他のﾌｧｲﾙから読込み(&P)..."
      End
      Begin VB.Menu mnuFileBar2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuSave 
         Caption         =   " 上書き保存 (&S)"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuFileBar7 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuSaveAs 
         Caption         =   " 名前を付けて保存 (&A)"
      End
      Begin VB.Menu mnuSaveVsvFile 
         Caption         =   "プレビューファイルの保存(&V)"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuFileBar3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuGetPick 
         Caption         =   " Pick Up File の取込 (&G)"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuFileBar4 
         Caption         =   "-"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPreview 
         Caption         =   "印刷ﾌﾟﾚﾋﾞｭｰ"
         Shortcut        =   ^D
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPrint 
         Caption         =   "印刷"
         Shortcut        =   ^P
         Visible         =   0   'False
      End
      Begin VB.Menu mnuPriSet 
         Caption         =   "印刷設定"
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
         Caption         =   "winPier の終了(&X)"
      End
   End
   Begin VB.Menu mnuEdit 
      Caption         =   "編集(&E)"
      Begin VB.Menu mnuCut 
         Caption         =   "切り取り(&T)"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnuCopy 
         Caption         =   "ｺﾋﾟｰ(&C)"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuPaste 
         Caption         =   "貼り付け(&P)"
         Shortcut        =   ^V
      End
      Begin VB.Menu mnuUndo 
         Caption         =   "元に戻す(&U)"
         Shortcut        =   ^Z
      End
   End
   Begin VB.Menu mnuOption 
      Caption         =   "ｵﾌﾟｼｮﾝ(&O)"
      Begin VB.Menu mnuOptiSI 
         Caption         =   "ＳＩ単位を使用(&S)"
      End
      Begin VB.Menu mnuOptSep1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuOptRecentNum 
         Caption         =   "ﾌｧｲﾙ履歴数の変更(&R)..."
      End
      Begin VB.Menu mnuOptSpace 
         Caption         =   "ﾒﾆｭｰにｽﾍﾟｰｽを入れる(&M)"
         Visible         =   0   'False
      End
      Begin VB.Menu mnuOptionSoukatsuNewpage 
         Caption         =   "総括表でケース毎に改ページ(&N)"
         Visible         =   0   'False
      End
   End
   Begin VB.Menu mnuWin 
      Caption         =   "ｳｨﾝﾄﾞｳ(&W)"
      Begin VB.Menu V_Form 
         Caption         =   "基本"
         Index           =   0
         Visible         =   0   'False
      End
      Begin VB.Menu V_Form 
         Caption         =   "ﾋﾟｯｸｱｯﾌﾟ"
         Index           =   1
         Visible         =   0   'False
      End
      Begin VB.Menu V_Form 
         Caption         =   "算出点"
         Index           =   2
         Visible         =   0   'False
      End
      Begin VB.Menu V_Form 
         Caption         =   "断面･鉄筋"
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
      Caption         =   "計算(&C)"
      Visible         =   0   'False
   End
   Begin VB.Menu mnuHelp 
      Caption         =   "ﾍﾙﾌﾟ(&H)"
      Begin VB.Menu mnuHelpContents 
         Caption         =   "目次(&C)"
      End
      Begin VB.Menu mnuHelpSearch 
         Caption         =   "ﾄﾋﾟｯｸの検索(&S)..."
      End
      Begin VB.Menu mnuHelpBar1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHelpVersion 
         Caption         =   "ﾊﾞｰｼﾞｮﾝ情報(&A)"
      End
   End
   Begin VB.Menu mnuEditChkBox 
      Caption         =   "ChkBox編集"
      Visible         =   0   'False
      Begin VB.Menu mnuEditChkBoxUnCheck 
         Caption         =   "選択範囲をチェック解除(&U)"
      End
      Begin VB.Menu mnuEditChkBoxCheck 
         Caption         =   "選択範囲をチェック(&C)"
      End
      Begin VB.Menu mnuEditChkBoxReverse 
         Caption         =   "選択範囲を反転(&R)"
      End
   End
End
Attribute VB_Name = "MDIForm_橋脚"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'         橋脚 MDIFORM
'
'
'
'
     Dim Get_Name As String
   '  Public 世_Form_個数 As Integer      関数で
   '  Public 構造_Form(20) As New Form_橋脚

     Dim TT&: ' 意味無し



Dim iRecentNum As Integer

Dim ObjName As String
Dim Sel As Integer
Dim ShowWindow(4) As Boolean
Dim usrFileRecent As clsRecent
Dim bLoaded As Boolean


Private Sub Cmd_END_Click()
     End
    End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　MDIForm_Load
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
Private Sub MDIForm_Load()
     
    
    PROGRAM_data$ = "C:\Robot_user\File\PROGRAM.dat"
    
    'Call dsk2(PROGRAM_data$)
    Call dsk2
    世View$ = "VS_view"
    MDIForm_橋脚.Caption = "橋脚図化ｼｽﾃﾑ  " + Data_dsk
    'MDIForm_橋脚
    世_Form_個数 = 0
   'Stop
   
   
   
   
   
   
    '========================================================
    '   WinPHaknからの移植
    '========================================================
   
    '履歴保存数の取得
    iRecentNum = gGetIniLong("Option", "RecentNum", 5, gstrAppDir & gcstrInitFile & ".ini")
    If iRecentNum > 10 Then iRecentNum = 10
    If iRecentNum < 0 Then iRecentNum = 0
    
    'プレビューファイル保存設定の取得
    'mnuSaveVsvFile.Checked = gGetIniLong("Option", "SavePreview", 0, gstrAppDir & gcstrInitFile & ".ini")
    
    Set usrFileRecent = New clsRecent
    Call usrFileRecent.InitWithMax(iRecentNum, 10, Me, gstrAppDir & gcstrInitFile & ".ini")
    
    Me.Left = GetSetting(App.Title, "Settings", "MainLeft", 0)
    Me.Top = GetSetting(App.Title, "Settings", "MainTop", 0)
    Me.Width = GetSetting(App.Title, "Settings", "MainWidth", 12000)
    Me.Height = GetSetting(App.Title, "Settings", "MainHeight", 8580)
    
    '重要（0以外だとデータがずれて配列に格納されてしまう）
    faLoadBuf.FixedRows = 0
    faLoadBuf.FixedCols = 0
    
    Call SetfaLoadBuf(faLoadBuf)
    
'    bIsSoukatsuNewPage = GetSetting(App.Title, "Settings", "bIsSoukatsuNewPage", False)
'    mnuOptionSoukatsuNewpage.Checked = bIsSoukatsuNewPage
'
'    strDatDir = App.Path & "\data"    ' データの初期フォルダ
'    gstrCurDir = strDatDir              ' データのカレントフォルダ
'    strPikDir = strDatDir              ' ピックアップのカレントフォルダ
'    strMrkDir = App.Path & "\Template"    ' テンプレートファイルのフォルダ
'    strTmpDir = App.Path & "\wdata"   ' ワークファイルのフォルダ
'
'    '存在しないフォルダの作成 kit 99/07/24
'    If Len(Dir(strDatDir, vbDirectory)) = 0 Then MkDir strDatDir
'    If Len(Dir(strMrkDir, vbDirectory)) = 0 Then MkDir strMrkDir
'    If Len(Dir(strTmpDir, vbDirectory)) = 0 Then MkDir strTmpDir
'
'    strDatDir = strDatDir & "\"
'    gstrCurDir = gstrCurDir & "\"
'    strPikDir = strPikDir & "\"
'    strMrkDir = strMrkDir & "\"
'    strTmpDir = strTmpDir & "\"
    
    '画面上部のボタンの位置設定
    CmdShow(3).Enabled = True               '下部構造
    CmdShow(6).Enabled = True               '計算
    CmdShow(7).Enabled = False              'テスト
    CmdShow(9).Enabled = True                '片持梁
    CmdShow(10).Enabled = True               'フーチング
    CmdShow(12).Enabled = True               '躯体配筋
    CmdShow(13).Enabled = True               '杭配筋
    CmdShow(14).Enabled = True               '支承

    '共通データのロード
    Call CommonDataLoad
    
    'kit
    gintScrbarSize = SysInfo.ScrollBarSize
    Call gSetUndoEnabled(mnuUndo, False)

    '作業ディレクトリにファイルがあれば読み込む
    If Dir$(gstrTmpDir & gcstrMDIFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    '単位別の見出し文字列を設定
    gcstrKgf_cm2(gcintNotSI) = "kgf/c㎡"
    gcstrKgf_cm2(gcintSI) = "N/ｍ㎡"
    
    gcstrTf(gcintNotSI) = "tf"
    gcstrTf(gcintSI) = "kN"

    gcstrTf_m3(gcintNotSI) = "tf/ｍ3"
    gcstrTf_m3(gcintSI) = "kN/ｍ3"

''    Call CmdShow_Click(0)                      ' 基本画面の表示

    If Dir(App.Path & "\debug.txt") <> "" Then
'        bIsDebug = True
        CmdShow(6).Visible = True
    End If
    bLoaded = True
   
   
   
   
   End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　Cmd_Edit
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Cmd_Edit_Click()
   ' Command構造読込.Enabled = False:
    Cmd_Edit.Enabled = False:
  
    Data_File名$ = 橋脚_Data名$:  Form_橋脚.Show
     'Form_橋脚

    End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　Cmd_図面作成
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Cmd_図面作成_Click()


   Cmd_図面作成.Enabled = False:
   
   Form_図面画面.Show
   End Sub








'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　フォルダ変更
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
Private Sub Cmd_フォルダ_Click()
    Dim Get_Name1$, Get_Name2$
     
     
    Get_Name1$ = "": Get_Name2$ = ""
    'ER ("Robot 部材 Database 作成")
    With CommonDialog1
         .DialogTitle = "橋脚図化 ﾌｫﾙﾀﾞｰ選択"
         .InitDir = "C:\Robot_User\": '最初の開くﾌｫﾙﾀﾞ  *************************
         
         .FileName = "ﾌｫﾙﾀﾞｰ選択後に 開くをｸﾘｯｸ"
         '.Filter = "ﾌｧｲﾙ名 (*.TDB)|*.TDB"
         .Filter = "ﾌｧｲﾙ名 (*.*)|*.OO"
         .ShowOpen
         Get_Name1$ = .FileName
         Get_Name2$ = .FileTitle: 'ﾌｧｲﾙ名だけ
         End With
    
    If Get_Name1$ = "" Then Exit Sub
     
       ni = InStr(Get_Name1$, Get_Name2$)
     
     フォルダ名$ = Mid(Get_Name1$, 1, ni - 1)
     
     
     If フォルダ名$ <> "" Then
           
           Yn$ = InputBox("フォルダ名   " + フォルダ名$ + "       Y/N")
          
          
          If UCase(Yn$) = "Y" Then
         'Data_dsk = フォルダ名$ + "\"
          Data_dsk = フォルダ名$
          フォルダ名$ = ""
    
          Open 橋脚_Dir1$ + "File_user.dat" For Output As #1: Print #1, Data_dsk:   Close #1
          MDIForm_橋脚.Caption = "橋脚図化システム  " + Data_dsk
          
          End If
          End If
     
     
      End Sub
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　OUT_ProgressBar22
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
Public Sub OUT_ProgressBar22(N_Max As Long)
     ProgressBar1.min = 0:     If N_Max > 0 Then ProgressBar1.max = N_Max Else ProgressBar1.max = 1
     ProgressBar1.Value = ProgressBar1.min

     End Sub
Public Sub StepProgress22()
     If ProgressBar1.Value < ProgressBar1.max Then ProgressBar1.Value = ProgressBar1.Value + 1
     End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   ADDFORM
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Public Sub ADDFORM()
   'Dim 構造_Form As New Form_橋脚
   
   With 構造_Form(世_Form_個数)
       .Show
       .Caption = Data_File名$
       End With
   
   世_Form_個数 = 世_Form_個数 + 1
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

        ' --- ロードされている子フォームを全て閉じる
        '閉じた際にグリッドの内容が作業ファイルに保存される
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
        
        'ここで保存フラグをクリアするとよろしくない
'        Call InitChangedFlag            ' Set Flag Not Dirty
        Call gSetUndoEnabled(mnuUndo, False)
        Clipboard.Clear
        
        '他のファイルからの読込みを有効にする
        mnuFilePart.Enabled = True
        
        Select Case Index
                    
        Case 0:                                     ' 基本データ
            Load frmBasicData
            frmBasicData.Show
            
        Case 3:                                     ' 下部構造
            Load frmKKouzou
            frmKKouzou.Show
            
        Case 6:                                     ' 計算印刷
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
                '「ファイルが見つかりません」エラー
                If Val(strErrMsg) = 53 Then
                    Call MsgBox("入力データが不足しています。" & vbCrLf & "各項目のデータを見直してください。", vbExclamation + vbOKOnly, App.Title)
                Else
                    Call MsgBox("計算準備中にエラーが発生しました。" & vbCrLf & "エラー番号：" & strErrMsg, vbExclamation + vbOKOnly, App.Title)
                End If
            End If
            
            gstrCalcDir = strBuf
            
        Case 9:                                     ' 片持梁・桁座
            Load frmKatamochi
            frmKatamochi.Show
    
        Case 10:                                    ' フーチング
            Load frmKisohaikin
            frmKisohaikin.Show
    
        Case 12:                                    ' 柱・杭
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
        'ファイルオープン時に計算フォームを最初に表示する。このときエラーが出ても警告しない。
        
'        If rbolPutMsg = True Then'''''02/09/22
'            '「ファイルが見つかりません」エラー
'            If val(strErrMsg) = 53 Then
'                Call MsgBox("入力データが不足しています。" & vbCrLf & "各項目のデータを見直してください。", vbExclamation + vbOKOnly, App.Title)
'            Else
'                Call MsgBox("計算準備中にエラーが発生しました。" & vbCrLf & "エラー番号：" & strErrMsg, vbExclamation + vbOKOnly, App.Title)
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
    
    'プレビューファイル保存設定の保存
    Call gPutIniLong("Option", "SavePreview", IIf(mnuSaveVsvFile.Checked, 1, 0), gstrAppDir & gcstrInitFile & ".ini")
    
'
'    bIsSoukatsuNewPage = mnuOptionSoukatsuNewpage.Checked
'    SaveSetting App.Title, "Settings", "bIsSoukatsuNewPage", bIsSoukatsuNewPage
'
'
'    '共通データのセーブ
'    Call CommonArcDataSave
  
    '作業フォルダ内のデータファイルを全て消す
    Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
    Call usrFileRecent.Save
    
    Set usrFileRecent = Nothing
  
    End
End Sub

'**** ﾒﾆｭｰ動作 ***
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
        Msg = "ｴﾗｰ番号 " & str(Err.Number) & Err.Source _
            & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "ｴﾗｰ", Err.HelpFile, Err.HelpContext
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
        Msg = "ｴﾗｰ番号 " & str(Err.Number) & Err.Source _
            & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "ｴﾗｰ", Err.HelpFile, Err.HelpContext
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
        Msg = "ｴﾗｰ番号 " & str(Err.Number) & Err.Source _
            & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "ｴﾗｰ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear

End Sub

'他のファイルから読込む
Private Sub mnuFilePart_Click()
    Dim ans As Integer
    
'    ans = MsgBox("読込んだ項目のデータは置換わりますが、" & vbCrLf & "このままファイルを開いてもよいですか？" & vbCrLf & vbCrLf & "注意）元に戻せません", vbYesNo + vbDefaultButton2 + vbInformation)
'    If ans = vbNo Then
'        Exit Sub
'    End If
    
    With CommonDialog1
        If gstrInitDirPartOpen <> "" Then .InitDir = gstrInitDirPartOpen Else .InitDir = gstrCurDir
        .CancelError = False
        .FileName = ""
        .Flags = cdlOFNOverwritePrompt + cdlOFNPathMustExist + cdlOFNLongNames
'        .Filter = "WinPHaikinﾃﾞｰﾀ(*" & gcstrFileExt & ")|*." & gcstrFileExt & "|WinPierﾃﾞｰﾀ(*.pir)|*.pir" '|全て|*.*"
        .Filter = "Data(*" & gcstrFileExt & ")*." & gcstrFileExt ' & "|WinPierﾃﾞｰﾀ(*.pir)|*.pir" '|全て|*.*"
'        C:\橋脚配筋図\Data
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
        
        '履歴からファイル名を取得
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

Private Sub mnuNewData_Click()  '新規作成
    Dim chform As Form
    
    If AreYouSave_Messege = "Cancel" Then
        Exit Sub
    End If
    For Each chform In Forms
        If chform.Name <> Me.Name Then
            Unload chform
        End If
    Next
    
    '作業フォルダ内のデータファイルを全て消す
    Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
    Call gDeleteAllFile(gstrCalcDir, "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata1\", "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata2\", "*")
    
    'フォームのキャプションにファイル名をいれる
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
        Msg = "ｴﾗｰ番号 " & str(Err.Number) & Err.Source _
            & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "ｴﾗｰ", Err.HelpFile, Err.HelpContext
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
        Msg = "ｴﾗｰ番号 " & str(Err.Number) & Err.Source _
            & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "ｴﾗｰ", Err.HelpFile, Err.HelpContext
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
    
    '開いているフォームがあれば警告して終了
    bolChformClose = False
    
    For Each chform In Forms
        If chform.Name <> Me.Name Then
            If chform.MDIChild = True Then
                'Call MsgBox("現在の入力フォームを閉じてから選択して下さい。", vbInformation + vbOKOnly, "単位の変更")
                'Exit Sub
                Unload chform
                bolChformClose = True
                Exit For
            End If
        End If
    Next
    
    If Trim$(gstrCurFilename) <> "" Or IsDataChange Then
        If MsgBox("これまでの入力値は変換されませんが、本当によろしいですか？", vbInformation + vbYesNoCancel, "単位の変更") <> vbYes Then
            Exit Sub
        Else
            'データ変更フラグ
            gbolChgFlag(gcfrmMDIForm_橋脚) = True
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
    
    sBuf = InputBox("ﾌｧｲﾙ履歴の保存数を入力してください。（0 - 10）", "ﾌｧｲﾙ履歴数の変更", CStr(iRecentNum))
    
    'キャンセル
    iNewNum = Val(sBuf)
    If Len(sBuf) = 0 Or iNewNum < 0 Or iNewNum > 10 Then Exit Sub

    '更新
    iRecentNum = iNewNum
    
    '再初期化
    Call usrFileRecent.ChangeUseNum(iRecentNum)

    '履歴数の保存
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
        Msg = "ｴﾗｰ番号 " & str(Err.Number) & Err.Source _
            & " でｴﾗｰが発生しました。" & Chr(13) & Err.Description
        MsgBox Msg, vbOKOnly + vbCritical, "ｴﾗｰ", Err.HelpFile, Err.HelpContext
    End If
    
    Err.Clear
End Sub

Public Sub mnuGetPick_Click()
'    '...ﾋﾟｯｸｱｯﾌﾟﾃﾞｰﾀの読み込み
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
'        .Filter = "ﾋﾟｯｸｱｯﾌﾟﾃﾞｰﾀ (*.pik)|*.pik" '|全て|*.*"
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
'        .Filter = "WinPHaikinﾃﾞｰﾀ(*" & gcstrFileExt & ")|*." & gcstrFileExt & "|WinPierﾃﾞｰﾀ(*.pir)|*.pir" '|全て|*.*"
        .Filter = "Data(*" & gcstrFileExt & ")*." & gcstrFileExt ' & "|WinPierﾃﾞｰﾀ(*.pir)|*.pir" '|全て|*.*"
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
                    Call MDIForm_橋脚.ChgStatusBar(False)
            End Select
            gstrCurFilename = rstrFileName
            
            If Right$(gstrCurFilename, 3) = "pir" Then gstrCurFilename = Left$(gstrCurFilename, Len(gstrCurFilename) - 3) & gcstrFileExt
            
            '履歴に登録
            Call usrFileRecent.RenewRecent(gstrCurFilename)
            Call usrFileRecent.Save
            
            '作業ディレクトリにアーカイブされたファイルを展開
            Call ArcDataOpen(gstrCurFilename)
        
            '作業ディレクトリにファイルがあれば読み込む
            If Dir$(gstrTmpDir & gcstrMDIFile & gcstrFileExt) <> "" Then
                Call DataLoad
            End If
        Else
        '     Screen.MousePointer = vbDefault
            Exit Sub
        End If
End Sub

'部分的な読みこみ
'下位の関数内で、指定したファイルだけをアーカイブファイルから展開し、フォームをリロードしている
Private Sub DataFilePartOpen(rstrFileName As String)
        If Dir(rstrFileName) = "" Then
            Call msgNoFile(rstrFileName)
            Exit Sub
        End If
        If UCase(getFileExt(rstrFileName)) = UCase(gcstrFileExtNoDot) Then
            ' 部分読み込みでカレントファイル名を変更してはいけない
            ' gstrCurFilename = rstrFileName
            
            '作業ディレクトリにアーカイブされたファイルを展開
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
        
        '履歴に登録
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
            .FileName = "無題" & gcstrFileExt
        End If
        .Flags = cdlOFNOverwritePrompt + cdlOFNHideReadOnly + cdlOFNLongNames
'        .Filter = "WinPHaikinﾃﾞｰﾀ(*" & gcstrFileExt & ")|*" & gcstrFileExt '|全て|*.*"
        .Filter = "Data(*" & gcstrFileExt & ")*" & gcstrFileExt '|全て|*.*"
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
'*** データが変更されいていた場合保存するか聞く。
'*** その後の処理が異なる場合のために"Cancel","Yes","No","Ok"を返す。

    AreYouSave_Messege = "Ok"
  
    If IsDataChange Then
        '計算設定のみが変更されていた場合は確認なしで保存する
        If IsDataChangeKeisanOnly And gstrCurFilename <> "" Then
            Call ArcDataSave(gstrCurFilename)
            AreYouSave_Messege = "Yes"
        Else
            Select Case MsgBox("ﾃﾞｰﾀが変更されています｡" & vbLf & "保存しますか?", vbYesNoCancel)
                Case vbCancel
                    AreYouSave_Messege = "Cancel"
                Case vbYes
                    '*** ファイルの保存ルーチンの呼び出し。
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

'各フォームのデータをアーカイブから開く
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
    
    '作業フォルダ内のデータファイルを全て消す
    Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
    Call gDeleteAllFile(gstrTmpDir, "vsv")
    Call gDeleteAllFile(gstrCalcDir, "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata1\", "*")
    Call gDeleteAllFile(gstrAppDir & "Wdata2\", "*")
    
    Screen.MousePointer = vbHourglass
    MDIForm_橋脚.AutoShowChildren = False '自動表示を無効にする
    
    ' --- ロードされている子フォームを全て閉じる
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
    'フォームのキャプションにファイル名をいれる
    Call ChgCaption(GetFileName(rstrFileName))
    Call InitChangedFlag
    Call ChgStatusBar(False)
    
    MDIForm_橋脚.AutoShowChildren = True
    
    '計算フォームを開く
    Call ShowCalcForm(False)
    
    'Load frmPrntDialog '      form2                        ' 基本画面
    ' --- ロードされていた子フォームを１つ開く
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

'ひとつのフォームのデータをアーカイブから開く
'対象ファイルは現在のアクティブ子フォームの種類によって選択させる
Private Sub ArcDataPartOpen(rstrFileName As String)
    Dim i As Integer
    Dim chform_old As Form
    Dim bOpend As Boolean
    Dim sTargetFile As String
    
    On Error GoTo ErrHandler
    
    If Dir(rstrFileName) = "" Then Exit Sub
    
    'アクティブな子フォームが無かったら何もしない
    If MDIForm_橋脚.ActiveForm.Name = MDIForm_橋脚.Name Then Exit Sub
    
    sTargetFile = ""
    'ロードするファイル名を取得
    Select Case MDIForm_橋脚.ActiveForm.Name
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
    
    ' --- ロードされている子フォームを全て閉じる
    bOpend = False
    Set chform_old = MDIForm_橋脚.ActiveForm
    bOpend = True
    Unload MDIForm_橋脚.ActiveForm
    
    '作業フォルダ内の対象ファイルを消す（上書されるので必要ないか？）
    Call gDeleteSelectFile(gstrTmpDir, sTargetFile)
    
    Screen.MousePointer = vbHourglass
    MDIForm_橋脚.AutoShowChildren = False '自動表示を無効にする
    
    Call gExtractSelectFile(gstrTmpDir, rstrFileName, sTargetFile, faLoadBuf)
    
    Call ChgStatusBar(True)
    
    MDIForm_橋脚.AutoShowChildren = True
    
    ' --- ロードされていた子フォームを１つ開く
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

'各フォームのデータをアーカイブして保存する
Private Sub ArcDataSave(rstrFileName As String)
    Dim i As Integer
    Dim chform As Form
    
    If Trim$(rstrFileName) = "" Then Exit Sub
    
    Screen.MousePointer = vbHourglass
'    MDIForm_橋脚.AutoShowChildren = False '自動表示を無効にする
    
    '開いているフォームがあればデータ保存
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
    
    'アーカイブ前に元のファイルをリネーム
    If Dir(rstrFileName) <> "" Then
        Name rstrFileName As rstrFileName & ".$$$"
    End If
    
    If mnuSaveVsvFile.Checked Then
        Call gArchiveExtFile(gstrTmpDir, rstrFileName, faLoadBuf, gcstrFileExtNoDot & ";vsv")
    Else
        Call gArchiveExtFile(gstrTmpDir, rstrFileName, faLoadBuf, gcstrFileExtNoDot)
    End If
    Call gPutFileName(gstrTmpDir, gcstrNameFile, rstrFileName)
    
    'アーカイブ後に元のファイルを削除
'    If Dir(rstrFileName) <> "" Then
'        Kill rstrFileName
'    End If
    If Dir(rstrFileName & ".$$$") <> "" Then
        Kill rstrFileName & ".$$$"
    End If

    'フォームのキャプションにファイル名をいれる
    Call ChgCaption(GetFileName(rstrFileName))
    Call InitChangedFlag
    Call ChgStatusBar(False)
    
'    MDIForm_橋脚.AutoShowChildren = True
    'Load frmPrntDialog '      form2                        ' 基本画面
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
'    Ans = MsgBox("PickUpファイルが見つかりません。" & vbCrLf & _
'        "ファイルを指定しますか？", vbExclamation + vbYesNo + vbDefaultButton1)
'    If Ans = vbNo Then
'        Exit Sub
'    End If
'
'    '...ﾋﾟｯｸｱｯﾌﾟﾃﾞｰﾀの読み込み
'    With CommonDialog1
'        .InitDir = gstrCurDir
'        .filename = PickFile
'        .Filter = "ﾋﾟｯｸｱｯﾌﾟﾃﾞｰﾀ (*.pik)|*.pik" '|全て|*.*"
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

Public Sub PickUpOpen() 'PckUpﾌｧｲﾙから見出しとなる部分だけをﾛｰﾄﾞ
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
'        ReDim InpData(ConMaxSanshutuDt) 'この数字はもっと大きい方がいいかも
'        ReDim dtBzDanmen(ConMaxSanshutuDt)
'        ReDim iNumCalcInBZ(ConMaxSanshutuDt)        ' 部材単位の算出点数
'        ReDim dt3Calc(ConMaxSanshutuDt)
'    Else
'        ReDim Preserve InpData(ConMaxSanshutuDt) 'この数字はもっと大きい方がいいかも
'        ReDim Preserve dtBzDanmen(ConMaxSanshutuDt)
'        ReDim Preserve iNumCalcInBZ(ConMaxSanshutuDt)        ' 部材単位の算出点数
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
'    '  PickUpFIleから、入力画面用の見出しﾃﾞｰﾀの作成
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
'        If strPrevPickMage <> "" Then                           ' 8/31 変更
'            If strPickMage <> strPrevPickMage Then
'                Exit Do
'            End If
'        End If
'
'        strPrevPickMage = strPickMage
'        InpData(i).Matr = CInt(Mid$(Data, 11, 5))               ' 部材番号
'        If InpData(i).Matr <> iPrevBZI Then
'        '   新しい部材番号 (ITAN)の時
'            If Not IsShinki Then
'            '    再読込の時
'                If Not IsMsgOut Then
'                    If iBzCount + 1 > iOldBzCount Then
'                        MsgBox "PickUpﾌｧｲﾙの部材数が増えています。", vbInformation
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
'            '   部材番号単位に部材、断面のﾃﾞｰﾀの作成
'            If IsShinki Then dtBzDanmen(iBzCount).strMark = myspace(32)
'
'            dtBzDanmen(iBzCount).iBzNo = InpData(i).Matr
'            dtBzDanmen(iBzCount).sLeng = InpData(i).Calc2
'            dtBzDanmen(iBzCount).Index = ii                     ' 算出点、鉄筋ﾃﾞｰﾀの部材番号単位の(先頭)ITANデータへのIndex
'            dtBzDanmen(iBzCount).iNumCalc = iii                  ' 部材単位の算出点数
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
'    ReDim Preserve dt3Calc(Data_cunt)                           ' 算出点データ
'
'    If IsShinki Then
'        ReDim TekinData(Data_cunt)                                  ' 鉄筋ﾃﾞｰﾀ
'    Else
'        ReDim Preserve TekinData(Data_cunt)                         ' 鉄筋ﾃﾞｰﾀ
'    End If
''
'    For i = 0 To Data_cunt - 1
'        If IsShinki Then
'            With dt3Calc(i)                 '  算出点データの入力項目の初期化
'                .calName = ""
'                .Safe1 = False   ' bytNull
'                .Safe2 = 0          '    for ver 0.1.9        intNull        ' bytNull
'                .Ness(0) = False     ' bytNull
'                .Ness(1) = False     ' bytNull
'                .GammaEM = sngNull
'            End With
'        End If
'
'        With TekinData(i)               '   鉄筋ﾃﾞｰﾀの入力項目の初期化
'            .iNext = -1
'        End With
'    Next i
'
'    Call SetMDICaption
''    Form3.DataList
'
'    CmdShow(1).Enabled = True               ' 部材､断面
'    MDIForm_橋脚.mnuOptiSI.Enabled = True       ' ﾋﾟｯｸｱｯﾌﾟﾃﾞｰﾀの単位変換　メニューの有効にする
'
'    If Not IsShinki Then
'        Call MakeBzGroup
'    End If
'
'    Screen.MousePointer = vbDefault
End Sub


Public Function PickUpLoad(PickFile As String) As Boolean
''PickUpﾌｧｲﾙから全てのﾃﾞｰﾀをﾒﾓﾘに記憶
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
'        If MsgBox(Err.Description & vbLf & "｢" & Trim$(PickFile) & "｣", vbOK + vbCritical + vbSystemModal, , Err.HelpFile, Err.HelpContext) = vbOK Then
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
'        PickUp(i, ii, iii).MinN = CSng(Mid$(Data, 91, 10))                  ' ,10) 9/10 追加
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
    
    '計算画面での変更は非表示（保存はする）
    If vintFormID <> gcfrmKeisan Then Call ChgStatusBar(True)
    
End Sub

Public Sub ChgStatusBar(rbolDataChange As Boolean)
    Static bytCaptoinChg As Byte
    Const cstrChanged As String = "変更あり"
    Const cstrNoChanged As String = "変更なし"
    
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
        Caption = "winPier 新規作成"
        gstrTitle = "新規作成"
    Else
        Caption = "winPier " & Trim$(rstrFileName)
        gstrTitle = getFileTitle(rstrFileName)
    End If
    
End Sub

Private Sub ChgStatusBarSI(rbSI As Boolean)
    Static bytCaptoinChg As Byte
    Const cstrChanged As String = "SI 単位"
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

'画面１（Form2)のテキストにデフォルト値を設定する
Public Sub SetDefaultOuryokuTxt()
'    Dim i As Integer
'
'    i = 0
'    dt1OuryokuText(i) = "使用限界状態 縁応力度検討用応力"
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 鉄筋応力度検討用応力"
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 耐久性検討用応力（永久荷重）"
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 耐久性検討用応力（変動荷重）"
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 外観検討用応力"
'    i = i + 1
'    dt1OuryokuText(i) = "疲労限界状態 最小応力"
'    i = i + 1
'    dt1OuryokuText(i) = "疲労限界状態 最大応力"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態 検討用応力"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態（耐震 ﾚﾍﾞﾙ 2）検討用応力 (上部工用）"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態（耐震 ﾚﾍﾞﾙ 2）検討用応力 (基礎用）"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態（耐震 応答変位）検討用応力"
'
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 検討判定用応力"
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 検討用応力（永久荷重）"
'    i = i + 1
'    dt1OuryokuText(i) = "使用限界状態 検討用応力（変動荷重）"
'    i = i + 1
'    dt1OuryokuText(i) = "疲労限界状態 検討用応力（最小応力）"
'    i = i + 1
'    dt1OuryokuText(i) = "疲労限界状態 検討用応力（最大応力）"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態 検討用応力"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態（耐震 ﾚﾍﾞﾙ 2）検討用応力 (上部工用）"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態（耐震 ﾚﾍﾞﾙ 2）検討用応力 (基礎用）"
'    i = i + 1
'    dt1OuryokuText(i) = "終局限界状態（耐震 応答変位）検討用応力"
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

'MDIFormに属するデータをファイルに書き込む
'ファイルフォーマットは
'   SI単位の使用、不使用
'のようになっている。
Public Sub DataSave()
    Dim i As Integer
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrMDIFile & gcstrFileExt For Output As #FileNo
    
    'バージョン情報書き込み
    Write #FileNo, gGetCurVersion(gcstrMDIFile)
        
    Write #FileNo, gintTanni

    Close #FileNo
    Exit Sub
    
ErrorHandle:
    MsgBox "ファイル書き込みエラー : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo   'オープンしないでクローズしてもエラーにはならない

End Sub

'MDIFormに属するデータをファイルに書き込む
'ファイルフォーマットは
'   SI単位の使用、不使用
'のようになっている。
Public Sub DataLoad()
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim strRows As String
    Dim strCols As String
    Dim strData As String
    
    On Error GoTo ErrorHandle
    gSNAP後処理(1) = 1
    gSNAP後処理(2) = 1
    FileNo = FreeFile
    Open gstrTmpDir & gcstrMDIFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
        
    '現在のバージョンと比較
    If gIsCurrent(strVer) = False Then
        Call MsgBox("このデータは以前のバージョンのものです。" _
            & vbCrLf & "データの入力形式等に変更がある可能性があるので、確認作業をして下さい。" & vbCrLf _
            & vbCrLf & "       現在のﾊﾞｰｼﾞｮﾝ : " & gGetTrueVersionStr(gGetCurVersion("dummy")) _
            & vbCrLf & "ﾃﾞｰﾀﾌｧｲﾙのﾊﾞｰｼﾞｮﾝ : " & gGetTrueVersionStr(strVer), vbInformation + vbOKOnly, "旧バージョンのデータファイル")
    End If
    
    Input #FileNo, gintTanni

    Close #FileNo

    'SI単位の設定
    Call SetSI(gintTanni)
    Exit Sub
    
ErrorHandle:
    MsgBox "読み込みデータが不足していました。", vbInformation + vbOKOnly
    Close #FileNo   'オープンしないでクローズしてもエラーにはならない

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

'アプリケーション全体でひとつだけ保持するデータのロードあるいは初期化
Public Sub CommonDataLoad()
    Dim strFileName As String
    Dim i As Integer
    Dim strData As String
    Dim intMax As Integer
    Dim dblVersion As Double
    Dim dblFileVersion As Double
    Dim FileNo As Integer
    
    On Error GoTo ERR_HANDLER
    
'    'オプション設定のロード
'    mnuOptmyspace.Checked = CBool(GetPrivateProfileInt("Option", "Menumyspace", 0, App.Path & "\WinDan.ini"))
'    Call OptmyspaceChange
'
    
    strFileName = gstrMarkDir & gcstrCommonDataFile & gcstrCmnFileExt
    
    'ファイルがなければ初期値を設定して作成する
    If Dir$(strFileName) = "" Then
        FileNo = FreeFile
        Open strFileName For Output As #FileNo
        
        strData = "N-16" & vbTab & " N標準活荷重" & vbCr & _
                    "P-16" & vbTab & " P標準活荷重" & vbCr & _
                    "P-17" & vbTab & " P標準活荷重" & vbCr & _
                    "M-18" & vbTab & " M荷重" & vbCr & _
                    "E-##" & vbTab & " E荷重" & vbCr & _
                    "A-##" & vbTab & " A荷重" & vbCr & _
                    "EA-##" & vbTab & " EA荷重" & vbCr & _
                    "KS-##" & vbTab & " KS荷重" & vbCr & _
                    "ODK" & vbTab & " 小田急電鉄" & vbCr & _
                    "KEO" & vbTab & " 京王帝都" & vbCr & _
                    "KHN" & vbTab & " 京浜急行" & vbCr & _
                    "TOQ" & vbTab & " 東急電鉄" & vbCr & _
                    "KEIHIN" & vbTab & " 京阪電気鉄道"
        
        'バージョン情報書き込み
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

'アプリケーション全体でひとつだけ保持するデータの保存
Public Sub CommonDataSave()
'    Dim strFileName As String
'    Dim intFileNo As Integer
'    Dim i As Integer
'    Dim strValue As String
'    Dim dblVersion As Double
'
''    'オプション設定の保存
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
'    'SI単位の変換係数
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
    
    'データファイルが存在しない場合に無理やり用意する
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
        '「ファイルが見つかりません」エラー
        If Val(strErrMsg) = 53 Then
            Call MsgBox("入力データが不足しています。" & vbCrLf & "各項目のデータを見直してください。", vbExclamation + vbOKOnly, App.Title)
        Else
            Call MsgBox("計算準備中にエラーが発生しました。" & vbCrLf & "エラー番号：" & strErrMsg & vbCrLf & "発生フォーム：" & strerrform, vbExclamation + vbOKOnly, App.Title)
        End If
    End If
    
    MakeDataFile = strerrform & ":" & strErrMsg
    
End Function

