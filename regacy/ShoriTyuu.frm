VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form ShoriTyuu 
   Caption         =   "ã¥ãrîzãÿê}ÉVÉXÉeÉÄ"
   ClientHeight    =   1500
   ClientLeft      =   6630
   ClientTop       =   6225
   ClientWidth     =   3255
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1500
   ScaleWidth      =   3255
   Begin ComctlLib.ProgressBar ProgressBar1 
      Height          =   300
      Left            =   120
      TabIndex        =   0
      Top             =   840
      Width           =   3015
      _ExtentX        =   5318
      _ExtentY        =   529
      _Version        =   327682
      Appearance      =   1
      Max             =   10
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'íÜâõëµÇ¶
      Appearance      =   0  'Ã◊Øƒ
      BackColor       =   &H80000004&
      BorderStyle     =   0  'Ç»Çµ
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Left            =   120
      ScrollBars      =   3  'óºï˚
      TabIndex        =   1
      Text            =   "TEXT1"
      Top             =   360
      Width           =   3015
   End
End
Attribute VB_Name = "ShoriTyuu"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'
Private Sub Form_Activate()
    '
End Sub

Private Sub Form_Load()
    '
    Dim w                       As Integer
    Dim H                       As Integer
    Dim LP                      As Double
    Dim TP                      As Double
    Dim WP                      As Double
    Dim HP                      As Double
    '
    LP = SHORIx1
    TP = SHORIx2
    WP = SHORIx3
    HP = SHORIx4
    If LP <> 0 Or TP <> 0 Or WP <> 0 Or HP <> 0 Then
        w = WP
        H = HP
        Me.Left = LP + Int((w - Me.Width) / 2) + 3500
        Me.Top = TP + Int((H - Me.Height) / 2) - 1500
    End If
    '
End Sub

Private Sub Form_Unload(Cancel As Integer)
    '
    Unload Me
    '
End Sub


