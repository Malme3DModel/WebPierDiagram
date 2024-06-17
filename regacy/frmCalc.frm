VERSION 5.00
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
   Begin VB.CommandButton cmdUpdate 
      Caption         =   "DXFファイル書き込み"
      Height          =   435
      Left            =   7020
      TabIndex        =   44
      TabStop         =   0   'False
      Top             =   5640
      Width           =   2715
   End
   Begin VB.TextBox txtEtc 
      Height          =   270
      Index           =   1
      Left            =   2160
      TabIndex        =   22
      Top             =   4800
      Width           =   3255
   End
   Begin VB.TextBox txtEtc 
      Height          =   270
      Index           =   0
      Left            =   2160
      TabIndex        =   21
      Top             =   4320
      Width           =   3255
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   6
      Left            =   6240
      TabIndex        =   17
      Top             =   3105
      Width           =   435
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   5
      Left            =   6240
      TabIndex        =   14
      Top             =   2745
      Width           =   435
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   4
      Left            =   6240
      TabIndex        =   11
      Top             =   2385
      Width           =   435
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   3
      Left            =   6240
      TabIndex        =   8
      Top             =   2025
      Width           =   435
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   2
      Left            =   6240
      TabIndex        =   5
      Top             =   1665
      Width           =   435
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   1
      Left            =   6240
      TabIndex        =   2
      Top             =   1305
      Width           =   435
   End
   Begin VB.TextBox txtSize 
      Height          =   270
      Index           =   0
      Left            =   6240
      TabIndex        =   20
      Top             =   3465
      Width           =   435
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   6
      Left            =   2580
      TabIndex        =   16
      Top             =   3105
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   5
      Left            =   2580
      TabIndex        =   13
      Top             =   2745
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   4
      Left            =   2580
      TabIndex        =   10
      Top             =   2385
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   3
      Left            =   2580
      TabIndex        =   7
      Top             =   2025
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   2
      Left            =   2580
      TabIndex        =   4
      Top             =   1665
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   1
      Left            =   2580
      TabIndex        =   1
      Top             =   1305
      Width           =   3135
   End
   Begin VB.TextBox txtName 
      Height          =   270
      Index           =   0
      Left            =   2580
      TabIndex        =   19
      Top             =   3465
      Width           =   3135
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   6
      Left            =   1980
      TabIndex        =   15
      Top             =   3105
      Width           =   375
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   5
      Left            =   1980
      TabIndex        =   12
      Top             =   2745
      Width           =   375
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   4
      Left            =   1980
      TabIndex        =   9
      Top             =   2385
      Width           =   375
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   3
      Left            =   1980
      TabIndex        =   6
      Top             =   2025
      Width           =   375
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   2
      Left            =   1980
      TabIndex        =   3
      Top             =   1665
      Width           =   375
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   1
      Left            =   1980
      TabIndex        =   0
      Top             =   1305
      Width           =   375
   End
   Begin VB.TextBox txtOutput 
      Height          =   270
      Index           =   0
      Left            =   1980
      TabIndex        =   18
      Top             =   3465
      Width           =   375
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   6
      Left            =   7260
      TabIndex        =   34
      TabStop         =   0   'False
      Top             =   3060
      Width           =   420
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   3
      Left            =   7260
      TabIndex        =   33
      TabStop         =   0   'False
      Top             =   1980
      Width           =   420
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   4
      Left            =   7260
      TabIndex        =   32
      TabStop         =   0   'False
      Top             =   2340
      Width           =   420
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   1
      Left            =   7260
      TabIndex        =   31
      TabStop         =   0   'False
      Top             =   1260
      Width           =   420
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   0
      Left            =   7260
      TabIndex        =   30
      TabStop         =   0   'False
      Top             =   3420
      Width           =   405
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   5
      Left            =   7260
      TabIndex        =   29
      TabStop         =   0   'False
      Top             =   2700
      Width           =   390
   End
   Begin VB.CheckBox chkUpdate 
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
      Height          =   375
      Index           =   2
      Left            =   7260
      TabIndex        =   28
      TabStop         =   0   'False
      Top             =   1620
      Width           =   390
   End
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
      Left            =   6420
      TabIndex        =   25
      Top             =   4200
      Width           =   4365
      Begin VB.TextBox txtEtc 
         Height          =   280
         Index           =   2
         Left            =   180
         TabIndex        =   23
         Top             =   600
         Width           =   4005
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
         Left            =   3915
         TabIndex        =   26
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
         TabIndex        =   27
         Top             =   285
         Width           =   1770
      End
   End
   Begin VB.CommandButton cmdCalcStart 
      Caption         =   "作 図 開 始"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   11.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   2580
      TabIndex        =   24
      TabStop         =   0   'False
      Top             =   5580
      Width           =   2655
   End
   Begin VB.Label Label22 
      AutoSize        =   -1  'True
      Caption         =   "旧ファイル読込み"
      Height          =   180
      Left            =   6840
      TabIndex        =   56
      Top             =   960
      Width           =   1335
   End
   Begin VB.Label Label21 
      AutoSize        =   -1  'True
      Caption         =   "縮 尺"
      Height          =   180
      Left            =   6060
      TabIndex        =   55
      Top             =   960
      Width           =   420
   End
   Begin VB.Label Label20 
      AutoSize        =   -1  'True
      Caption         =   "図面名称"
      Height          =   180
      Left            =   3720
      TabIndex        =   54
      Top             =   960
      Width           =   720
   End
   Begin VB.Label Label19 
      AutoSize        =   -1  'True
      Caption         =   "出力順"
      Height          =   180
      Left            =   1920
      TabIndex        =   53
      Top             =   960
      Width           =   540
   End
   Begin VB.Label Label18 
      Appearance      =   0  'ﾌﾗｯﾄ
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  '実線
      Caption         =   " 作図スタートメニュー "
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   420
      TabIndex        =   52
      Top             =   300
      Width           =   2250
   End
   Begin VB.Label Label17 
      AutoSize        =   -1  'True
      Caption         =   "は  り"
      Height          =   180
      Left            =   1320
      TabIndex        =   51
      Top             =   1320
      Width           =   435
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      Caption         =   "支 承"
      Height          =   180
      Left            =   1320
      TabIndex        =   50
      Top             =   1680
      Width           =   420
   End
   Begin VB.Label Label15 
      AutoSize        =   -1  'True
      Caption         =   "基 礎"
      Height          =   180
      Left            =   1320
      TabIndex        =   49
      Top             =   2400
      Width           =   420
   End
   Begin VB.Label Label14 
      AutoSize        =   -1  'True
      Caption         =   "く  体"
      Height          =   180
      Left            =   1320
      TabIndex        =   48
      Top             =   2040
      Width           =   405
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      Caption         =   "  杭"
      Height          =   180
      Left            =   1320
      TabIndex        =   47
      Top             =   2760
      Width           =   300
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "一般図"
      Height          =   180
      Left            =   1260
      TabIndex        =   46
      Top             =   3480
      Width           =   540
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "材料表"
      Height          =   180
      Left            =   1260
      TabIndex        =   45
      Top             =   3120
      Width           =   540
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "契約番号"
      Height          =   180
      Left            =   1320
      TabIndex        =   43
      Top             =   4860
      Width           =   720
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "タイトル"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   1320
      TabIndex        =   42
      Top             =   4380
      Width           =   720
   End
   Begin VB.Label Label7 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   41
      Top             =   3165
      Width           =   375
   End
   Begin VB.Label Label6 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   40
      Top             =   3525
      Width           =   375
   End
   Begin VB.Label Label5 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   39
      Top             =   2805
      Width           =   375
   End
   Begin VB.Label Label4 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   38
      Top             =   2085
      Width           =   375
   End
   Begin VB.Label Label3 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   37
      Top             =   2445
      Width           =   375
   End
   Begin VB.Label Label2 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   36
      Top             =   1725
      Width           =   375
   End
   Begin VB.Label Label1 
      Caption         =   "1 /"
      Height          =   270
      Left            =   5880
      TabIndex        =   35
      Top             =   1365
      Width           =   375
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

Dim iBufchkUpdate(12) As Integer
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

Private Sub chkUpdate_Click(Index As Integer)
    Call MDIForm_橋脚.SetDataChgFlag(gcfrmKeisan)

End Sub

Private Sub cmdCalcStart_Click()
    '計算準備→開始
    Call CalcReady

End Sub

Private Sub cmdOpenFileDialog_Click()
    Dim sDir As String
    sDir = gClearStr(GetFolderName(Me, CSIDL_DESKTOP))
    If sDir <> "" Then txtEtc(2).TEXT = sDir

End Sub

Private Sub Form_Load()
    Dim i As Integer
    
    bFormLoad = True

    '作業ディレクトリにファイルがあれば読み込む
    If Dir$(gstrTmpDir & gcstrKeisanFile & gcstrFileExt) <> "" Then
        Call DataLoad
    Else
        Call DataInit
    End If

    bFormLoad = False

End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim i As Integer
    
    '作業ディレクトリにファイルを書く
    Call DataSave

End Sub

Private Sub CalcReady()
    'データチェック＆配列セット
    Call SetCalcArrayFromFile
    
    pbPutEndMsg = True
    
    '計算開始
    Call CalcDataSet
'    Call CalcStart
    
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

    For i = 0 To 6
        Input #FileNo, intTmp
        chkUpdate(i).Value = intTmp
    Next

    For i = 0 To 6
        Input #FileNo, strTmp
        txtOutput(i).TEXT = strTmp
    Next

    For i = 0 To 6
        Input #FileNo, strTmp
        txtName(i).TEXT = strTmp
    Next

    For i = 0 To 6
        Input #FileNo, strTmp
        txtSize(i).TEXT = strTmp
    Next

    For i = 0 To 2
        Input #FileNo, strTmp
        txtEtc(i).TEXT = strTmp
    Next
    
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
        
    For i = 0 To 6
        Write #FileNo, chkUpdate(i).Value
    Next
    
    For i = 0 To 6
        Write #FileNo, Trim$(txtOutput(i).TEXT)
    Next

    For i = 0 To 6
        Write #FileNo, Trim$(txtName(i).TEXT)
    Next

    For i = 0 To 6
        Write #FileNo, Trim$(txtSize(i).TEXT)
    Next

    For i = 0 To 2
        Write #FileNo, Trim$(txtEtc(i).TEXT)
    Next
    
    Close #FileNo
    
    Exit Sub
    
ErrorHandle:
    MsgBox "ファイル書き込みエラー : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo
End Sub

Private Sub txtSize_GotFocus(Index As Integer)
    Call SelectAllText
    
End Sub

Private Sub txtSize_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyV And Shift = 2 Then 'Ctrl+V
        If Clipboard.GetFormat(vbCFText) Then txtSize(Index).SelText = Clipboard.GetText(vbCFText)
    Else
        Call SetFocusNextTab(KeyCode)
    End If

End Sub

Private Sub txtEtc_GotFocus(Index As Integer)
    Call SelectAllText
    
End Sub

Private Sub txtEtc_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyV And Shift = 2 Then 'Ctrl+V
        If Clipboard.GetFormat(vbCFText) Then txtEtc(Index).SelText = Clipboard.GetText(vbCFText)
    Else
        Call SetFocusNextTab(KeyCode)
    End If

End Sub

Private Sub txtName_GotFocus(Index As Integer)
    Call SelectAllText
    
End Sub

Private Sub txtName_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyV And Shift = 2 Then 'Ctrl+V
        If Clipboard.GetFormat(vbCFText) Then txtName(Index).SelText = Clipboard.GetText(vbCFText)
    Else
        Call SetFocusNextTab(KeyCode)
    End If

End Sub

Private Sub txtOutput_GotFocus(Index As Integer)
    Call SelectAllText
    
End Sub

Private Sub txtOutput_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    If KeyCode = vbKeyV And Shift = 2 Then 'Ctrl+V
        If Clipboard.GetFormat(vbCFText) Then txtOutput(Index).SelText = Clipboard.GetText(vbCFText)
    Else
        Call SetFocusNextTab(KeyCode)
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
    If frmCalc.pbPutEndMsg = True Then MsgBox "計算終了"
    
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
Public Sub PushchkUpdate(Optional ByVal vbCallByMe As Boolean = False)
    Dim i As Integer
    Dim iStart As Integer
    
    If vbCallByMe Then
        iStart = 1
    Else
        iStart = 0
    End If
    
    For i = iStart To 5 '6 '12
        iBufchkUpdate(i) = chkUpdate(i).Value
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

Private Sub SetFocusNextTab(ByRef rKeyAscii As Integer)
    If rKeyAscii = vbKeyReturn Then
        rKeyAscii = 0
        SendKeys "{TAB}", True  'ホントは Sendkeys はあまり望ましくない・・・
    End If
    
End Sub

Private Sub DataInit()
    Dim i As Integer
    
    For i = 0 To 6
        chkUpdate(i).Value = vbChecked
    Next

    For i = 0 To 6
        txtOutput(i).TEXT = Format$(i)
    Next

    For i = 1 To 6
        txtSize(i).TEXT = "50"
    Next
    txtSize(0).TEXT = "100"

    txtName(6).TEXT = "はり配筋図"
    txtName(1).TEXT = "支承部配筋図"
    txtName(2).TEXT = "躯体部配筋図"
    txtName(3).TEXT = "基礎配筋図"
    txtName(4).TEXT = "杭配筋図"
    txtName(5).TEXT = "鉄筋材料表"
    txtName(0).TEXT = "一般図"
    
    txtEtc(2).TEXT = gstrSNAPDir

End Sub
