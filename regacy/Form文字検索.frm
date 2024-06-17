VERSION 5.00
Begin VB.Form Form文字検索 
   BorderStyle     =   1  '固定(実線)
   Caption         =   "検索"
   ClientHeight    =   3285
   ClientLeft      =   45
   ClientTop       =   270
   ClientWidth     =   5820
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   MinButton       =   0   'False
   ScaleHeight     =   3285
   ScaleWidth      =   5820
   Begin VB.CommandButton Cmd_置換 
      Caption         =   "Command1"
      Height          =   255
      Left            =   2520
      TabIndex        =   7
      Top             =   1920
      Width           =   855
   End
   Begin VB.TextBox txt_置換 
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   480
      Width           =   2775
   End
   Begin VB.CommandButton Cmd_検索 
      Caption         =   "次検索"
      Height          =   255
      Left            =   1320
      TabIndex        =   1
      Top             =   1920
      Width           =   735
   End
   Begin VB.TextBox txt_検索 
      Height          =   270
      Left            =   1680
      TabIndex        =   0
      Text            =   "Text1"
      Top             =   120
      Width           =   2775
   End
   Begin VB.Label Lbl_4 
      Caption         =   "Label1"
      Height          =   255
      Left            =   480
      TabIndex        =   6
      Top             =   1440
      Width           =   3975
   End
   Begin VB.Label Lbl_2 
      Caption         =   "Label2"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Lbl_1 
      Caption         =   "Label1"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
   Begin VB.Label Lbl_3 
      Caption         =   "F3 ｷｰを押してください"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   480
      TabIndex        =   2
      Top             =   960
      Width           =   3495
   End
End
Attribute VB_Name = "Form文字検索"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'            Form文字検索
'
'

     Dim 構造Form_No As Integer


Private Sub Form_Load()
    '
    構造Form_No = 世_構造Form_No
    
    Form文字検索.Caption = "検索"
    Lbl_1.Caption = "検索する文字"
    Lbl_2.Caption = "置換後の文字"
    
    Lbl_3.Caption = "F3 ｷｰを押すと文字を検索します"
    Lbl_4.Caption = "F4 ｷｰを押すと文字を置換します"
    Cmd_検索.Caption = "次検索"
    Cmd_置換.Caption = "置換"
    
    txt_置換.Visible = False
    Cmd_置換.Visible = False
    Lbl_2.Visible = False
    Lbl_4.Visible = False
    
    H_検索 = 350
    H_置換 = 0
    H_Lbl = 300
    
    W1 = 1100: W2 = 3000: w3 = 800
    L1 = 130: L2 = L1 + W1 + 50: L3 = L2 + W2 + 50
    
    If 世検索_Type$ = "置換" Then
         Form文字検索.Caption = "置換"
         txt_置換.Visible = True
         Lbl_2.Visible = True
         Lbl_4.Visible = True
         Cmd_置換.Visible = True
         H_置換 = 350
         End If
    
    
    Top_検索 = 60
    Top_置換 = Top_検索 + 1.02 * H_検索
    Top_Lbl_1 = Top_検索
    Top_Lbl_2 = Top_置換
    Top_Lbl_3 = Top_置換 + H_置換 + 100
    Top_Lbl_4 = Top_Lbl_3 + H_Lbl
    
    Form文字検索.Height = H_検索 + 2 * H_置換 + H_Lbl + 600
    Form文字検索.Width = L3 + w3 + 150
    
    txt_検索.TEXT = 世検索_文字$
    txt_検索.Top = Top_検索
    txt_検索.Left = L2
    txt_検索.Width = W2
    txt_検索.Height = H_検索
    
    
    txt_置換.Top = Top_置換
    txt_置換.Left = L2
    txt_置換.Width = W2
    txt_置換.Height = H_置換
    txt_置換.TEXT = ""
    
    Cmd_検索.Top = Top_検索
    Cmd_検索.Left = L3
    Cmd_検索.Width = w3
    Cmd_検索.Height = H_検索
    
    Cmd_置換.Top = Top_置換
    Cmd_置換.Left = L3
    Cmd_置換.Width = w3
    Cmd_置換.Height = H_検索
    
    
    Lbl_1.Top = Top_Lbl_1 + 100
    Lbl_2.Top = Top_Lbl_2 + 100
    Lbl_3.Top = Top_Lbl_3
    Lbl_4.Top = Top_Lbl_4
    
    
    Lbl_1.Left = L1
    Lbl_2.Left = L1
    Lbl_3.Left = L2
    Lbl_4.Left = L2
    
    Lbl_1.Width = W1
    Lbl_2.Width = W1
    
    End Sub
Private Sub Cmd_検索_Click()
    
      OPTIONS = 4
    
    
     Moj$ = txt_検索.TEXT
     検索開始位置 = 文字検索位置 + 1: If Moj$ <> "" Then If Asc(Mid(Moj$, 1, 1)) < 0 Then 検索開始位置 = 検索開始位置 + 1
     RET = 構造_Form(構造Form_No).RichTextBox構造.Find(Moj$, 検索開始位置, , OPTIONS)
     If RET < 0 Then 検索開始位置 = 0: ER ("検索終了 "): Exit Sub
     検索回数 = 検索回数 + 1
 
    End Sub



Private Function 文字検索位置() As Long
     'Dim 文字検索位置 As Long
     Dim 検索_START As Long

  ' ER ("構造Form_No" + STR(構造Form_No))
     検索_START = 構造_Form(構造Form_No).RichTextBox構造.SelStart
     NN$ = Mid(構造_Form(構造Form_No).RichTextBox構造.TEXT, 1, 検索_START)
     文字検索位置 = 検索_START + N漢字(NN$): ' + RichTextBox構造.SelLength

     End Function


Private Sub Cmd_置換_Click()
    
      
     MOJ2$ = Form文字検索.txt_置換.TEXT
     構造_Form(構造Form_No).RichTextBox構造.SelText = MOJ2$
      置換検索回数 = 置換検索回数 + 1
      
      
 
    End Sub



Private Sub FORM_UNLOAD(CANCEL As Integer)
    'Form構造.RichTextBox構造.HideSelection = True

    'Form構造.RichTextBox構造.SetFocus
    End Sub

