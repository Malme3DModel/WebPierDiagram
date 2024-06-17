VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Begin VB.Form Form_橋脚 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   Caption         =   "構造計算ﾃﾞｰﾀ"
   ClientHeight    =   5220
   ClientLeft      =   45
   ClientTop       =   225
   ClientWidth     =   10305
   FillColor       =   &H80000009&
   BeginProperty Font 
      Name            =   "ＭＳ 明朝"
      Size            =   9
      Charset         =   128
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   92.075
   ScaleMode       =   6  'ﾐﾘﾒｰﾄﾙ
   ScaleWidth      =   181.769
   Begin MSScriptControlCtl.ScriptControl ScriptControl1 
      Left            =   4440
      Top             =   4080
      _ExtentX        =   1005
      _ExtentY        =   1005
   End
   Begin VB.Frame Frame1 
      Height          =   495
      Left            =   4920
      TabIndex        =   11
      Top             =   0
      Width           =   3975
      Begin VB.ListBox Lst_項目 
         Height          =   240
         Left            =   240
         TabIndex        =   13
         Top             =   120
         Width           =   3495
      End
      Begin MSComctlLib.ProgressBar PgsBar1 
         Height          =   135
         Left            =   240
         TabIndex        =   12
         Top             =   360
         Width           =   3495
         _ExtentX        =   6165
         _ExtentY        =   238
         _Version        =   393216
         Appearance      =   1
      End
   End
   Begin VB.CommandButton Cmd_電卓 
      Caption         =   "計算"
      Height          =   495
      Left            =   4080
      TabIndex        =   10
      ToolTipText     =   "Shellの範囲を計算します"
      Top             =   0
      Width           =   495
   End
   Begin VB.CommandButton Cmd_文字_Sizeup 
      Caption         =   "字up"
      Height          =   495
      Left            =   3600
      TabIndex        =   9
      ToolTipText     =   "Data_文字ｻｲｽﾞを大きくします"
      Top             =   0
      Width           =   495
   End
   Begin VB.TextBox Text電卓 
      Height          =   312
      Left            =   360
      TabIndex        =   8
      Text            =   "電卓"
      Top             =   900
      Width           =   1452
   End
   Begin VB.CommandButton Commandメンテ 
      Caption         =   "ﾒﾝﾃ"
      Height          =   492
      Left            =   9000
      TabIndex        =   7
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Commandブラウザ 
      Appearance      =   0  'ﾌﾗｯﾄ
      Caption         =   "ブラウザ"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   5.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   1440
      Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
      TabIndex        =   6
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command結果 
      Appearance      =   0  'ﾌﾗｯﾄ
      Caption         =   "結果"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   6
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   960
      Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
      TabIndex        =   5
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command保存 
      Appearance      =   0  'ﾌﾗｯﾄ
      Caption         =   "保存"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   1920
      Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
      TabIndex        =   4
      ToolTipText     =   "構造data書込み"
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command部分実行 
      Caption         =   "部分実行"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   4.5
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   480
      Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
      TabIndex        =   3
      ToolTipText     =   "構造計算を部分的に実行"
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Cmd_検索 
      Caption         =   "検索"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   2520
      Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
      TabIndex        =   2
      ToolTipText     =   "文字を検索します"
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command実行 
      Caption         =   "実行"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   0
      Style           =   1  'ｸﾞﾗﾌｨｯｸｽ
      TabIndex        =   1
      ToolTipText     =   "構造計算実行"
      Top             =   0
      Width           =   492
   End
   Begin RichTextLib.RichTextBox RichTextBox構造 
      Height          =   972
      Left            =   360
      TabIndex        =   0
      Top             =   3600
      Width           =   2832
      _ExtentX        =   5001
      _ExtentY        =   1720
      _Version        =   393217
      BackColor       =   8454143
      ScrollBars      =   3
      DisableNoScroll =   -1  'True
      RightMargin     =   4000
      TextRTF         =   $"Form_橋脚.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ 明朝"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Image Image置換 
      BorderStyle     =   1  '実線
      Height          =   495
      Left            =   3000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   495
   End
End
Attribute VB_Name = "Form_橋脚"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'        Form構造.frm  Robot
'
'       2002.3.24
 
 
     Dim Form_No As Integer
 
     Dim 計算種別$
     Dim INP_FILE$
     Dim RichText_Top As Single
     Dim RET As Long

  ' Public 世検索_Type$, 世検索_文字$, 世検索_OPTIONS:  'M関数で定義
     Dim 検索回数 As Integer
     Dim 置換検索回数 As Integer
     Dim Start_検索開始位置 As Long, 検索開始位置 As Long

     Dim 計算機_小数以下桁数 As Integer:  ' 電卓機能

     Dim INS_KEY As Integer: ' Insert ｷｰの有無


    Dim oo

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃
'┃
'┃   Form_Load()
'┃
'┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Form_Load()
     
     Form_No = 世_Form_個数
     
     Me.ScaleMode = 1: '   1 Twip  6 mm
     'Me.Height = 15 * 567: Me.Width = 18 * 567
     Me.Height = 0.9 * Screen.Height: Me.Width = 0.4 * Screen.Width
     
     'ME.FontName = "ＭＳ 明朝"
     'ME.FontName = "標準ゴシック"
     'RichTextBox構造.Font = "標準明朝"
     
     RichTextBox構造.Font.Size = 世構造文字SIZE
     Cmd_文字_Sizeup.Caption = "文字" + f1(RichTextBox構造.Font.Size)
     Cmd_文字_Sizeup.FontSize = 9
     
     Me.Move (Screen.Width - Me.Width) / 2, 0.05 * (Screen.Height - Me.Height)
     RichText_Top = 500
     RichTextBox構造.HideSelection = False
     RichTextBox構造.Font = "ＭＳ 明朝"
   ' RichTextBox構造.BackColor = &HFFFFC0 ' 空
     RichTextBox構造.BackColor = &HFFFFFF       '白
     RichTextBox構造.RightMargin = 50 * 567: ' Twip Form による

     
     'If 計算機_小数以下桁数 <= 0 Then 計算機_小数以下桁数 = 4
     
    ' Cmd_電卓.FontSize = 9
    ' Cmd_電卓.Caption = "電卓" + f0(計算機_小数以下桁数) + "桁"
     計算種別$ = Data_File名$
                          Command実行.Visible = False
                          Command部分実行.Visible = False
                          Command結果.Visible = False
                          Commandブラウザ.Visible = False
                          Command保存.Visible = False
                          Cmd_検索.Visible = False
                          Commandメンテ.Visible = False
                          Image置換.Visible = False
                          Text電卓.Visible = False
                      '     Cmd_電卓.Visible = False
                          Cmd_文字_Sizeup = True
                          Cmd_文字_Sizeup = True
                          
                          RichTextBox構造.Visible = False
     
      INP_FILE$ = Data_dsk & Data_File名$ + ".dat"
      BAK_FILE_D$ = SYS_dsk & "Backup\"
      BAK_FILE$ = BAK_FILE_D$ + Data_File名$ + ".bak"
     
              橋脚_Data入力$ = "Y"
                          RichTextBox構造.Visible = True
                          Command実行.Visible = True
                      '    Command部分実行.Visible = True
                      '    Command結果.Visible = True
                       '   Commandブラウザ.Visible = True
                          Command保存.Visible = True
                          Cmd_検索.Visible = True
                          Image置換.Visible = True
     
                       
     Close #1 ''''''''''''''''''''''''''' Nagase 03/09/02 追加
     If INP_FILE$ <> "" Then
         検索File$ = Dir(INP_FILE$):
         If 検索File$ = "" Then Open INP_FILE$ For Output As #1: Print #1, "' New file": Close #1
         
         RichTextBox構造.LoadFile INP_FILE$, rtfText
         If BAK_FILE$ <> "" Then
              If Dir(BAK_FILE_D$, 16) = "" Then MkDir BAK_FILE_D$
              RichTextBox構造.SaveFile BAK_FILE$, rtfText
              End If
         End If
     End Sub
'=================================================================================================================================
Private Sub Form_Resize(): Call TEXTSIZE: End Sub

Private Sub TEXTSIZE()
     
     If RichTextBox構造.Visible = True Then
          TEXT_TOP = 0: '+ Form構造.Top
     
          HH = Me.Height: Ww = Me.Width: '  Form.Width
          RichTextBox構造.Top = RichText_Top:  RichTextBox構造.Left = 0
     
          Rw = Ww - 100: If Rw < 0 Then Rw = 0
          RichTextBox構造.Width = Rw
          'RH = HH - RichTextBox構造.Top - 230: If RH < 0 Then RH = 0
          RH = HH - RichTextBox構造.Top - 350: If RH < 0 Then RH = 0
          RichTextBox構造.Height = RH
          End If
     
     If Text電卓.Visible = True Then
          TEXT_TOP = 0: '+ 構造計算.Top
          HH = Me.Height: Ww = Me.Width: '  Form.Width
          Text電卓.Top = TEXT_TOP: Text電卓.Left = 0
          Text電卓.Width = Ww - 50: Text電卓.Height = HH - TEXT_TOP
     
          End If
     
     
     End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Form_UNLoadk
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Form_Unload(Cancel As Integer)

     MDIForm_橋脚.Cmd_Edit.Enabled = True

     End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Command保存_Click
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Command保存_Click(): Call Textdata保存: End Sub
       
Private Sub Textdata保存()
     RichTextBox構造.SaveFile INP_FILE$, rtfText
     
     End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Command実行_Click
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Command実行_Click()
     
     Call Textdata保存:
     
    ' Call 計算制御_計算実行(計算種別$): '*********
     FN$ = Data_dsk$ & 橋脚_Data名$ + ".dat":    Call 橋脚図化_出力(FN): ' Rob_F_Read
     '橋脚_Data名$
     
               
     Me.RichTextBox構造.SetFocus
     
     End Sub







'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Command結果_Click
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Command結果_Click()
'    Call 計算制御_計算結果(計算種別$)
    End Sub
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Commandブラウザ_Click
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Commandブラウザ_Click()
'    Call 計算制御_計算ブラウザ(計算種別$)
    
    End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Form_KeyDown(KeyCode As Integer, Shift As Integer)
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    ' 子 Form  NG
    AAA = KeyCode
    Select Case Shift
    Case 0:
           Select Case KeyCode
           Case 37: Stop: '左ｷｰ
           Case 38: Stop: '上ｷｰ
           Case 39: Stop: '右ｷｰ
           Case 40: '下ｷｰ
    End Select
    End Select
    End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   RichTextBox構造_KeyDown(KeyCode As Integer, Shift As Integer)
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub RichTextBox構造_KeyDown(KeyCode As Integer, Shift As Integer)
    
    AAA = KeyCode
    Select Case Shift
    Case 0:
           Select Case KeyCode
           Case vbKeyReturn, vbKeyPageDown: '13, 34: 'return Pgdn
           Case vbKeyPageUp: '33: 'Pgup
           Case vbKeyEnd: '35: 'end
           Case vbKeyHome: '36: 'Home
           Case vbKeyLeft: '37: '左ｷｰ
           Case vbKeyUp: '38:  '上ｷｰ
           Case vbKeyRight: '39:  '右ｷｰ
           Case vbKeyDown: '40: '下ｷｰ
           Case vbKeyInsert: '45: ' Insｷｰ
               Select Case INS_KEY
               Case 0: INS_KEY = 1: Call CARET(RichTextBox構造)
               Case 1: INS_KEY = 0: Call CARET(RichTextBox構造)
               ' lngWin32apiResultCode = HideCaret(RichTextBox1.hwnd) 不用
          
               End Select
           'Case 91: ' MicroSoft 旗　左側
           'Case 92: ' MicroSoft 旗 右側
           Case vbKeyAdd: '107: ' +ｷｰ
                    
           Case vbKeySubtract: '109: '-ｷｰ
           
           Case vbKeyDecimal: '110:    ' . ｷｰ
           Case vbKeyF1:    '   Call 計算制御_計算Help_F(計算種別$)
           
           Case vbKeyF2:       Call Textdata保存
                          
                          
           Case vbKeyF3:     '  Call 文字検索実行
                               Moj$ = Form文字検索.txt_検索.TEXT
                               OPTIONS = 4
                                   '世検索_文字$ = Moj$: 世検索_OPTIONS = 4
                               
                               Call 文字検索(Moj$, OPTIONS)
                               
           Case vbKeyF4:
                               Moj2$ = Form文字検索.txt_置換.TEXT
                               RichTextBox構造.SelText = Moj2$
                               置換検索回数 = 置換検索回数 + 1
           
           
           Case vbKeyF5:
                              ' Call Command部分実行_Click
           
           Case vbKeyF12:   '   Call 電卓_計算
           
           Case Else: '  Stop
           End Select
     
     Case 1: ' Shift
           Select Case KeyCode
           Case 13:  'return
           Case 36: 'Home
           End Select
     
     Case 2: ' Ctrl
           Select Case KeyCode
           Case 35:  'end
           Case 83:  ' S
                 er (" S   SSS")
           Case 111: ' s
                  er (" s *** ssss")
           Case vbKeyPageUp:         Call 文字_Size_変更(1): KeyCode = 0
                   
           Case vbKeyPageDown:       Call 文字_Size_変更(-1): KeyCode = 0

           Case 36:  'Home
           Case vbKeyF: Call Cmd_検索_Click: ' Form文字検索.Show: ' Ctrl+F , Ctrl+f
           Case vbKeyR:   'Form文字置換.Show: ' Ctrl+R
           Case Else: 'Stop
           End Select
     
     Case 3: ' Ctrl+Shift
     
     Case 4: ' Alt
           Select Case KeyCode
           Case vbKeyC:        Call 電卓_計算: ' Stop
           
           Case 33:  'Pgup
           
           Case 34: 'Pgdn
           Case 36: 'Home
           End Select
     
     
     Case Else: 'Stop
     End Select
    
   Call CARET(RichTextBox構造)
     
    
    End Sub



Private Sub RichTextBox構造22_KeyDown(KeyCode As Integer, Shift As Integer)
   ' Insert ｷで変かする様に変更
   
   ' Dim lngWin32apiResultCode As Long

   Select Case Shift
   Case 0:
        Select Case KeyCode
           Case 37: '左ｷｰ
           Case 38:  '上ｷｰ
                     Call CARET(RichTextBox構造)
           Case 39:  '右ｷｰ
           Case 40: '下ｷｰ
        
        Case 45:
               Select Case INS_KEY
               Case 0: INS_KEY = 1: Call CARET(RichTextBox構造)
               Case 1: INS_KEY = 0: Call CARET(RichTextBox構造)
               ' lngWin32apiResultCode = HideCaret(RichTextBox1.hwnd) 不用
          
               End Select
        Case Else:
   End Select

   End Select

   Call CARET(RichTextBox構造)

   End Sub
Private Sub RichTextBox構造_Change()
   Call CARET(RichTextBox構造)
   End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Cmd_文字_Sizeup_MouseDown
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Cmd_文字_Sizeup_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' ｸﾘｯｸでｻｲｽﾞ　Up
    ' Shiftｸﾘｯｸでｻｲｽﾞ　Dn
    
    Select Case Shift
    Case 1: Call 文字_Size_変更(-1)
    Case Else: Call 文字_Size_変更(1)
    End Select

   ' Form構造.RichTextBox構造.SetFocus
    Me.RichTextBox構造.SetFocus

    End Sub
Private Sub 文字_Size_変更(up_Dn As Single)
     Dim 文字_Size As Single
     文字_Size = RichTextBox構造.Font.Size
     
     Select Case up_Dn
     Case Is < 0: 文字_Size = 文字_Size + up_Dn
     Case 0: 文字_Size = 9
     Case Is > 0: 文字_Size = 文字_Size + up_Dn
     
     End Select
     If 文字_Size < 3 Then 文字_Size = 3
     If 文字_Size > 20 Then 文字_Size = 20
     
     RichTextBox構造.Font.Size = 文字_Size
     Cmd_文字_Sizeup.Caption = "文字" + f1(文字_Size)
     '世構造文字SIZE = 文字_Size

     End Sub
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Cmd_検索_Click
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Cmd_検索_Click()
     'ER ("現在使用できません")
      
      世_構造Form_No = Form_No
      
      検索回数 = 0
      Start_検索開始位置1 = RichTextBox構造.SelStart - 1: ' -1 で Carrotの位置の文字がが RichTextBox構造.SelStartの位置になる
           If Start_検索開始位置1 < 1 Then Start_検索開始位置1 = 1
      
      世検索_文字$ = Trim(Mid(RichTextBox構造.TEXT, Start_検索開始位置1, 20)) + " "
      For ii = 1 To 20
          文字$ = Mid(世検索_文字$, ii, 1)
          Select Case 文字$
              Case " ", ",", ".", "(", ")", "[", "]", "{", "}", "=", Chr$(13):
                        世検索_文字$ = Mid(世検索_文字$, 1, ii - 1): Exit For
              Case Else
              End Select
      
      
          Next ii
      
      Form文字検索.Show
     世検索_Type$ = ""
     
     End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃         文字検索(文字$, OPTIONS)
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub 文字検索(文字$, OPTIONS)
     
     '世検索_文字$ = 文字$: 世検索_OPTIONS = OPTIONS
     
     Call 文字検索実行(文字$, OPTIONS)
     End Sub

Private Sub 文字検索実行(Moj$, OPTIONS)
     
     検索開始位置 = 文字検索位置 + 1: If Moj$ <> "" Then If Asc(Mid(Moj$, 1, 1)) < 0 Then 検索開始位置 = 検索開始位置 + 1
     RET = RichTextBox構造.Find(Moj$, 検索開始位置, , OPTIONS)
     If RET < 0 Then 検索開始位置 = 0: er ("検索終了 "): Exit Sub
     検索回数 = 検索回数 + 1
 
     RichTextBox構造.SetFocus
     End Sub


Private Function 文字検索位置() As Long
     'Dim 文字検索位置 As Long
     Dim 検索_START As Long

     検索_START = RichTextBox構造.SelStart
     NN$ = Mid(RichTextBox構造.TEXT, 1, 検索_START)
     文字検索位置 = 検索_START + N漢字(NN$): ' + RichTextBox構造.SelLength

     End Function

     
     
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Image置換_Click()
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

Private Sub Image置換_Click()
     'ER ("置換  現在使用できません")
    
      置換検索回数 = 0
     世検索_Type$ = "置換"
      Call Cmd_検索_Click
     
     End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   TEXT電卓_KeyPress(KeyAscii As Integer)
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub TEXT電卓_KeyPress(KeyAscii As Integer)
    
    If KeyAscii = 13 Then
         KeyAscii = 0
         Da$ = Text電卓.TEXT
         ni = InStr(Da$, "="): If ni > 1 Then Da$ = Mid$(Da$, 1, ni - 1)
         
         DA_0$ = Da$
         
         Call calu(Da$, Scda, e$)
         If e$ <> "" Then
               
               Text電卓.TEXT = DA_0$ + " " + e$
               Else
               
               ans$ = Trim(f(Scda, 15 + 計算機_小数以下桁数 / 10))
               Text電卓.TEXT = DA_0$ + "=" + ans$
               
                Clipboard.Clear
                Clipboard.SetText ans$
               End If
         
         'Me.RichTextBox構造.SetFocus NG
         
        ' Text電卓.SetFocus
         End If
    
    
    
    
    End Sub
Private Sub TEXT電卓_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Select Case Button
          Case 1: ' 左
          Case 2:  ' 右
          Case 4: Text電卓.TEXT = "": ' 中央
          End Select
    
    End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Cmd_電卓_Click()
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Private Sub Cmd_電卓_Click()

    Call 電卓_計算
    End Sub
    
Private Sub 電卓_計算()
    Cda0$ = RichTextBox構造.SelText
        Cda$ = Cda0$
        ni = Len(Cda0$): 'If ni < 1 Then Exit Sub
     
     Select Case ni
     Case Is < 1:
         Cda0$ = InputBox("計算式を入力してください", "関数電卓")
         Cda$ = Cda0$
         Call calu(Cda$, Scda, e$)
         If e$ <> "" Then
               er (Cda0$ + "   " + e$)
               Else
               ans$ = Trim(f(Scda, 15 + 計算機_小数以下桁数 / 10))
               er (Cda0$ + "=" + ans$)
               
               Clipboard.Clear:   Clipboard.SetText ans$
               End If
     
     Case Else: ' Shell Data
        D1$ = Right(Cda0$, 1)
        If D1$ = "=" Then Cda$ = Mid(Cda0$, 1, ni - 1)
         
         Call calu(Cda$, Scda, e$)
         If e$ <> "" Then
               er (Cda0$ + "   " + e$)
               Else
               ans$ = Trim(f(Scda, 15 + 計算機_小数以下桁数 / 10))
               If D1$ = "=" Then RichTextBox構造.SelText = Cda0$ + ans$
               Clipboard.Clear:   Clipboard.SetText ans$
               End If
      End Select
     
    ' Form構造.RichTextBox構造.SetFocus
     Me.RichTextBox構造.SetFocus

    End Sub
Private Sub Cmd_電卓_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Select Case Button
          Case 1: ' 左
          Case 2:  ' 右
          Case 4:  ' 中央
              Select Case Shift
              Case 1: 計算機_小数以下桁数 = 計算機_小数以下桁数 - 1
              Case Else: 計算機_小数以下桁数 = 計算機_小数以下桁数 + 1
              End Select
              If 計算機_小数以下桁数 < 0 Then 計算機_小数以下桁数 = 0
              If 計算機_小数以下桁数 > 6 Then 計算機_小数以下桁数 = 6
          
              Cmd_電卓.Caption = "電卓" + f0(計算機_小数以下桁数) + "桁"
          End Select
     
    ' Form構造.RichTextBox構造.SetFocus Ng
    
    End Sub





'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃   Caret
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

Private Sub CARET(Obj As Object)
    Dim lngCaretHandle        As Long
    Dim lngCaretWidth         As Long
    Dim lngCaretHeight        As Long
    Dim lngWin32apiResultCode As Long

    ' キャレット情報を指定
    lngCaretHandle = 0
    lngCaretWidth = 1:  ' 10
    If INS_KEY = 1 Then lngCaretWidth = 7:  ' 10
    lngCaretHeight = 13: '15
   ' With Text2
    With Obj
        ' 独自のキャレットを作成
        lngWin32apiResultCode = CreateCaret(.hwnd, lngCaretHandle, lngCaretWidth, lngCaretHeight)
        ' 作成したキャレットを表示
        lngWin32apiResultCode = ShowCaret(.hwnd)
    End With

End Sub


