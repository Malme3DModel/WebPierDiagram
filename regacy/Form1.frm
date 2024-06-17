VERSION 5.00
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form frmCalc 
   Caption         =   "計算･印刷"
   ClientHeight    =   8010
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10875
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8010
   ScaleWidth      =   10875
   WindowState     =   2  '最大化
   Begin VB.Frame frmKajyu 
      Caption         =   "配筋図 ファイル出力"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF0000&
      Height          =   1110
      Left            =   1560
      TabIndex        =   14
      Top             =   4965
      Width           =   4125
      Begin VB.TextBox txtOutputFolder 
         Height          =   280
         Left            =   180
         TabIndex        =   17
         Top             =   570
         Width           =   3765
      End
      Begin VB.CommandButton cmdOpenFileDialog 
         Caption         =   "..."
         BeginProperty Font 
            Name            =   "MS UI Gothic"
            Size            =   9.75
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3675
         TabIndex        =   16
         TabStop         =   0   'False
         Top             =   285
         Width           =   275
      End
      Begin VB.Label Label10 
         AutoSize        =   -1  'True
         Caption         =   "DXF出力フォルダ(&O):"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   9.75
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00404040&
         Height          =   195
         Left            =   300
         TabIndex        =   18
         Top             =   285
         Width           =   1770
      End
   End
   Begin VB.CommandButton cmdCalcStart 
      Caption         =   " 橋 脚  配 筋 図  作 図 スタート"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   11.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6540
      TabIndex        =   12
      Top             =   4095
      Visible         =   0   'False
      Width           =   3315
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3825
      Left            =   1575
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   510
      Width           =   4095
      _ExtentX        =   7223
      _ExtentY        =   6747
      _Version        =   393216
      Tabs            =   1
      TabHeight       =   520
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      TabCaption(0)   =   "出力"
      TabPicture(0)   =   "Form1.frx":0000
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "chkOutput(7)"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "chkOutput(6)"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "chkOutput(5)"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "chkOutput(4)"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "chkOutput(3)"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "chkOutput(2)"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "chkOutput(0)"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "chkOutput(8)"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "chkOutput(9)"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "chkOutput(10)"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "chkOutput(11)"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "chkOutput(12)"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "chkOutput(1)"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).ControlCount=   13
      Begin VB.CheckBox chkOutput 
         Caption         =   "主要項目の出力"
         ForeColor       =   &H00004080&
         Height          =   285
         Index           =   1
         Left            =   270
         TabIndex        =   15
         Top             =   4350
         Visible         =   0   'False
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 片  持 ち 梁 配 筋 図"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   330
         Index           =   12
         Left            =   390
         TabIndex        =   11
         Top             =   1545
         Value           =   1  'ﾁｪｯｸ
         Width           =   3375
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 杭 配 筋 図"
         BeginProperty Font 
            Name            =   "ＭＳ Ｐゴシック"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   11
         Left            =   390
         TabIndex        =   10
         Top             =   2620
         Value           =   1  'ﾁｪｯｸ
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   "支承部の計算"
         Height          =   285
         Index           =   10
         Left            =   270
         TabIndex        =   9
         Top             =   4155
         Visible         =   0   'False
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   "片持ち梁の計算　→"
         Height          =   285
         Index           =   9
         Left            =   270
         TabIndex        =   8
         Top             =   3855
         Visible         =   0   'False
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   "杭の設計・杭反力表"
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   8
         Left            =   270
         TabIndex        =   7
         Top             =   3555
         Visible         =   0   'False
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 全て"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   9.75
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   285
         Index           =   0
         Left            =   390
         TabIndex        =   0
         Top             =   405
         Visible         =   0   'False
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 一 般 図"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   9.75
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800080&
         Height          =   285
         Index           =   2
         Left            =   390
         TabIndex        =   1
         Top             =   825
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 躯 体 配 筋 図"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   3
         Left            =   390
         TabIndex        =   2
         Top             =   1185
         Value           =   1  'ﾁｪｯｸ
         Width           =   3090
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 基 礎  配 筋 図"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   4
         Left            =   390
         TabIndex        =   3
         Top             =   2280
         Value           =   1  'ﾁｪｯｸ
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 承 部 ストッパー 補 強"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   5
         Left            =   390
         TabIndex        =   4
         Top             =   1905
         Value           =   1  'ﾁｪｯｸ
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   " 鉄 筋 材 料 表"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   6
         Left            =   390
         TabIndex        =   5
         Top             =   3000
         Value           =   1  'ﾁｪｯｸ
         Width           =   3210
      End
      Begin VB.CheckBox chkOutput 
         Caption         =   "ﾌｰﾁﾝｸﾞの設計"
         BeginProperty Font 
            Name            =   "ＭＳ ゴシック"
            Size            =   9
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF0000&
         Height          =   285
         Index           =   7
         Left            =   270
         TabIndex        =   6
         Top             =   3300
         Visible         =   0   'False
         Width           =   3210
      End
   End
End
Attribute VB_Name = "frmCalc"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'フォームロード時フラグ
Dim bFormLoad As Boolean
Dim FileSS(100) As String

Dim iBufChkOutput(12) As Integer
Dim iBufChkUseExtFile(3) As Integer

'ほかのフォームからの部分計算かどうかの判定
'計算ルーチン内部での入力値の切り替えに用いる
'（計算ルーチンの呼び出し分岐にも用いられる）
Public piCalcFlag As Integer
Public pbPutEndMsg As Boolean

Public pPrt細目 As Integer

'Public yB6 As Single
'Public yW6 As Single

'総括表の印刷に使う靭性率オブジェクトへの参照を格納しておくための変数
'usrJinseiKui(x, y)
'   x   方向    1:線路方向  2:線路直角方向

'   y   種類    1:曲げ      2:せん断

Dim iPrevMarginBottom As Integer                            '

Private Sub chkOutPut_Click(Index As Integer)
    Dim i As Integer
    Dim bEnabled As Boolean

    If bFormLoad Then
        If Index = 0 Then
            '「全て」が押されたときに bEnabled = False
            bEnabled = (chkOutput(0).Value = 0)
            
            For i = 2 To chkOutput.UBound
                chkOutput(i).Enabled = bEnabled
            Next i
        End If
        
        Exit Sub
    End If

    If Index = 0 Then
        '「全て」が押されたときに bEnabled = False
        bEnabled = (chkOutput(0).Value = 0)
        
        If bEnabled = False Then
            'チェックボックスの状態保存
            Call PushChkOutput(True)
        Else
            'チェックボックスの状態復帰
            Call PopChkOutput(True)
        End If
        
        For i = 2 To chkOutput.UBound
            chkOutput(i).Enabled = bEnabled
            
            If bEnabled = False Then
                chkOutput(i).Value = vbChecked
            End If
        Next i
    End If

    Call MDIForm_橋脚.SetDataChgFlag(gcfrmKeisan)

End Sub

Private Sub cmdCalcStart_Click()
    '計算準備→開始
    Call CalcReady

End Sub

Private Sub cmdOpenFileDialog_Click()
    Dim sDir As String
    sDir = gClearStr(GetFolderName(Me, CSIDL_DESKTOP))
    If sDir <> "" Then txtOutputFolder.TEXT = sDir

End Sub

Private Sub Form_Load()
    Dim i As Integer
    
    bFormLoad = True

    Call DataLoad

    bFormLoad = False

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim i As Integer
    
    '作業ディレクトリにファイルを書く
    Call DataSave

End Sub

Private Sub CalcReady()
    Dim i As Integer
    
    '部分計算フラグのクリア
    piCalcFlag = gcCalcFlag_Normal
    If pOutputSNAPData = 0 Then pbPutEndMsg = True
    
    For i = 1 To 2
'        pfCalcChokiShiyou(i) = 0#
'        pfCalcShiyou(i) = 0#
'        pfCalcShukyoku(i) = 0#
'        pfCalcJShiyou(i) = 0#
'        pfCalcJShukyoku(i) = 0#
'        pfCalcOutou(i) = 0#
'
'        pfCalcChokiShiyou_R(i) = 0#
'        pfCalcShiyou_R(i) = 0#
'        pfCalcShukyoku_R(i) = 0#
'        pfCalcJShiyou_R(i) = 0#
'        pfCalcJShukyoku_R(i) = 0#
'        pfCalcOutou_R(i) = 0#
'
'        pfCalcEikyu(i) = 0#
'        pfCalcEikyu_R(i) = 0#
    Next

    '設計総括表は未チェックにしておく
    chkOutput(1).Value = 0

'    If Dir(gstrTmpDir & "設計総括表.vsv") <> "" Then
'        Kill gstrTmpDir & "設計総括表.vsv"
'    End If
    
    '計算開始
    Call CalcStart
    
End Sub

'グリッドのデータをファイルから読み込む
'ファイルフォーマットは
'   バージョン文字列,
'   １つ目のグリッド行数（固定行を除く）,
'   列数,（固定行を除く）
'   データ文字列,
'   2つ目のグリッド行数,
'   列数,
'   データ文字列,
'   ・・・
'のようになっている。
'グリッドの個数などは含まれていないので、バージョン情報を見てコードで管理する。
'バージョンに差異がある場合は、gcfrmMDIForm_橋脚.faLoadBufに一旦書込んで、そこから適切なセルへコピーするようにする
Public Sub DataLoad()
    Dim i As Integer
    Dim FileNo As Integer
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim intOptIdx As Integer
    Dim intTmp As Integer
    Dim strTmp As String
    Dim strVer As String
    
    FileNo = FreeFile

    On Error GoTo ErrorHandle2
    Open gstrTmpDir & gcstrKeisanFile & gcstrFileExt For Input As #FileNo


    On Error GoTo ErrorHandle

    'バージョン情報読み込み
    Input #FileNo, strVer

    For i = 0 To 12
        Input #FileNo, intTmp
        chkOutput(i).Value = intTmp
    Next
    
    Input #FileNo, strTmp
    txtOutputFolder.TEXT = strTmp
        
    'デフォルト値を設定
    If txtOutputFolder.TEXT = "" Then
        txtOutputFolder.TEXT = gstrSNAPDir
    End If
    
    
    Close #FileNo

    Exit Sub

ErrorHandle:
    MsgBox "読み込みデータが不足していました。", vbInformation + vbOKOnly
    Close #FileNo
    Exit Sub
    
ErrorHandle2:
    Exit Sub


End Sub


Public Sub DataSave()
    Dim i As Integer
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKeisanFile & gcstrFileExt For Output As #FileNo
    
    'バージョン情報書き込み
    Write #FileNo, gGetCurVersion(gcstrKeisanFile)
        
    For i = 0 To 12
        Write #FileNo, chkOutput(i).Value
    Next
    
    Write #FileNo, Trim$(txtOutputFolder.TEXT)
    
    
    Close #FileNo
    
    Exit Sub
    
ErrorHandle:
    MsgBox "ファイル書き込みエラー : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo
End Sub

Private Sub txtOutputFolder_GotFocus()
    Call SelectAllText
    
End Sub

Private Sub txtOutputFolder_KeyDown(KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyV And Shift = 2 Then 'Ctrl+V
        If Clipboard.GetFormat(vbCFText) Then txtOutputFolder.SelText = Clipboard.GetText(vbCFText)
    End If

End Sub

'============================================================================
'機　能：計算＆印刷処理
'引　数
'       rbOutputSNAP    trueならSNAPデータを作成する
'返却値
'       なし
'============================================================================
Public Sub CalcStart()
    Dim strErrMsg As String
    
    Screen.MousePointer = vbHourglass
    
    
    
    
    
    Screen.MousePointer = vbNormal
    If Form1.pbPutEndMsg = True Then MsgBox "計算終了"
    
    Close

    Exit Sub

ErrHandler:
    Screen.MousePointer = vbNormal
    
    MsgBox "計算過程でエラーが発生しています"

    Close

End Sub

'============================================================================
'機　能：現在の出力選択チェックボックスの状態を保存する
'引　数
'       なし
'返却値
'       なし
'============================================================================
Public Sub PushChkOutput(Optional ByVal vbCallByMe As Boolean = False)
    Dim i As Integer
    Dim iStart As Integer
    
    If vbCallByMe Then
        iStart = 1
    Else
        iStart = 0
    End If
    
    For i = iStart To 5 '6 '12
        iBufChkOutput(i) = chkOutput(i).Value
    Next

End Sub

'============================================================================
'機　能：現在の出力選択チェックボックスに保存した状態を復元する
'引　数
'       なし
'返却値
'       なし
'============================================================================
Private Sub PopChkOutput(Optional ByVal vbCallByMe As Boolean = False)
    Dim i As Integer
    Dim iStart As Integer
    
    If vbCallByMe Then
        iStart = 1
    Else
        iStart = 0
    End If
    
    For i = iStart To 12
        chkOutput(i).Value = iBufChkOutput(i)
    Next

End Sub

Private Sub SelectAllText()
    Dim txtTemp As TextBox
    Set txtTemp = Me.ActiveControl
    
    With txtTemp
        .SelStart = 0
        .SelLength = Len(.TEXT)
    End With

End Sub

'============================================================================
'機　能：frmKutaiからの計算スタート
'引　数
'       Index   呼び出し元のボタンのIndex
'返却値
'       なし
'============================================================================
Public Sub CalcStartFromKutai(Index As Integer)
    Dim i As Integer
    
    'SNAPデータ出力設定
    pOutputSNAPData = 0
    pOutputSNAPDir = ""
    
    pbPutEndMsg = False

    'チェックボックスの状態保存
    PushChkOutput
    
    '各種計算オプションの設定
    For i = 0 To 11
        chkOutput(i).Value = 0
    Next
   
    Select Case Index
    Case 0
        piCalcFlag = gcCalcFlag_KutaiKuiFooting
        chkOutput(6).Value = vbChecked
        chkOutput(7).Value = vbChecked
        chkOutput(8).Value = vbChecked
    Case 1
        piCalcFlag = gcCalcFlag_Kutai
        chkOutput(6).Value = vbChecked
    Case 2
        piCalcFlag = gcCalcFlag_Kui
        chkOutput(8).Value = vbChecked
    End Select
    
    gbKuibaneOnlySoukatu = False
    
    '計算開始
    Call CalcStart
    
    'チェックボックスの状態復帰
    Call PopChkOutput

End Sub

'============================================================================
'機　能：frmKisohaikinからの計算スタート
'引　数
'       なし
'返却値
'       なし
'============================================================================
Public Sub CalcStartFromKisohaikin(vfrmKisohaikin As Form)
    Dim i As Integer
    
    With vfrmKisohaikin
        'SNAPデータ出力設定
        pOutputSNAPData = 0
        pOutputSNAPDir = ""
        
        piCalcFlag = gcCalcFlag_KuiHanryoku
        
        pbPutEndMsg = False
        
        For i = 1 To 2
            Dim ixplus As Integer
            ixplus = (i - 1) * 12
            
'            pfCalcChokiShiyou(i) = Val(.txtKuihanryoku(0 + ixplus).TEXT)
'            pfCalcShiyou(i) = Val(.txtKuihanryoku(2 + ixplus).TEXT)
'            pfCalcShukyoku(i) = Val(.txtKuihanryoku(4 + ixplus).TEXT)
'            pfCalcJShiyou(i) = Val(.txtKuihanryoku(6 + ixplus).TEXT)
'            pfCalcJShukyoku(i) = Val(.txtKuihanryoku(8 + ixplus).TEXT)
'            pfCalcOutou(i) = Val(.txtKuihanryoku(10 + ixplus).TEXT)
'
'            pfCalcChokiShiyou_R(i) = Val(.txtKuihanryoku(1 + ixplus).TEXT)
'            pfCalcShiyou_R(i) = Val(.txtKuihanryoku(3 + ixplus).TEXT)
'            pfCalcShukyoku_R(i) = Val(.txtKuihanryoku(5 + ixplus).TEXT)
'            pfCalcJShiyou_R(i) = Val(.txtKuihanryoku(7 + ixplus).TEXT)
'            pfCalcJShukyoku_R(i) = Val(.txtKuihanryoku(9 + ixplus).TEXT)
'            pfCalcOutou_R(i) = Val(.txtKuihanryoku(11 + ixplus).TEXT)
        Next
        
        'チェックボックスの状態保存
        Call PushChkOutput
        
        '各種計算オプションの設定
        For i = 0 To 11
            chkOutput(i).Value = 0
        Next
        
        chkOutput(7).Value = 1
        gbKuibaneOnlySoukatu = False
        
        '計算開始
        Call CalcStart
        
        'チェックボックスの状態復帰
        Call PopChkOutput
    End With
    
End Sub

'============================================================================
'機　能：frmKatamochiからの計算スタート
'引　数
'       なし
'返却値
'       なし
'============================================================================
Public Sub CalcStartFromKatamochi(vfrmKatamochi As Form)
    Dim i As Integer
    
    With vfrmKatamochi
        'SNAPデータ出力設定
        pOutputSNAPData = 0
        pOutputSNAPDir = ""
        
        piCalcFlag = gcCalcFlag_Shu
        pbPutEndMsg = False
                
        For i = 1 To 2
'            pfCalcEikyu(i) = Val(.txtShuhanryoku(0).TEXT)
'            pfCalcShukyoku(i) = Val(.txtShuhanryoku(1).TEXT)
'            pfCalcJShiyou(i) = Val(.txtShuhanryoku(2).TEXT)
'
'            pfCalcEikyu_R(i) = Val(.txtShuhanryoku(3).TEXT)
'            pfCalcShukyoku_R(i) = Val(.txtShuhanryoku(4).TEXT)
'            pfCalcJShiyou_R(i) = Val(.txtShuhanryoku(5).TEXT)
        Next
        
        'チェックボックスの状態保存
        Call PushChkOutput
        
        '各種計算オプションの設定
        For i = 0 To 11
            chkOutput(i).Value = 0
        Next
        
        chkOutput(10).Value = vbChecked
        gbKuibaneOnlySoukatu = False
        
        '計算開始
        Call CalcStart
        
        'チェックボックスの状態復帰
        Call PopChkOutput
    End With
    
End Sub


'============================================================================
'機　能：frmKatamochiからの計算スタート
'引　数
'       なし
'返却値
'       なし
'============================================================================
Public Sub CalcStartFromKatamochi2(vfrmKatamochi As Form)
    Dim i As Integer
    Dim j As Integer
    
    With vfrmKatamochi
        'SNAPデータ出力設定
        pOutputSNAPData = 0
        pOutputSNAPDir = ""
        
        '部分計算の設定
        piCalcFlag = gcCalcFlag_Kat
        pbPutEndMsg = False
        
        'グリッドからデータを格納
        With .faCalc
            For i = .FixedRows To .Rows - 1
                For j = .FixedCols To .Cols - 1
'                    pKataTemp(i + 1 - .FixedRows, j + 1 - .FixedCols) = gStrToSng(.TextMatrix(i, j))
                Next
            Next
        End With

'        pSendanTemp = gStrToSng(.txtSendan.TEXT)
    
        'チェックボックスの状態保存
        Call PushChkOutput
        
        '各種計算オプションの設定
        For i = 0 To 11
            chkOutput(i).Value = 0
        Next
        
        chkOutput(9).Value = vbChecked
        gbKuibaneOnlySoukatu = False
        
        '計算開始
        Call CalcStart
        
        'チェックボックスの状態復帰
        Call PopChkOutput
    End With
    
End Sub



