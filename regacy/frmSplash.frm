VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H0000FF00&
   BorderStyle     =   3  'å≈íË¿ﬁ≤±€∏ﬁ
   ClientHeight    =   4905
   ClientLeft      =   255
   ClientTop       =   1410
   ClientWidth     =   6105
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   FillColor       =   &H00C0C0C0&
   BeginProperty Font 
      Name            =   "ÇlÇr ñæí©"
      Size            =   9
      Charset         =   128
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H0000C000&
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4848.62
   ScaleMode       =   0  '’∞ªﬁ∞
   ScaleWidth      =   6026.57
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame1 
      BackColor       =   &H00E0E0E0&
      BorderStyle     =   0  'Ç»Çµ
      BeginProperty Font 
         Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFC0C0&
      Height          =   4613
      Left            =   120
      TabIndex        =   0
      Top             =   122
      Width           =   5855
      Begin VB.Label Label1 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "Windows XP/7"
         BeginProperty Font 
            Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
            Size            =   20.25
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF8080&
         Height          =   405
         Left            =   1560
         TabIndex        =   7
         Top             =   1920
         Width           =   2670
      End
      Begin VB.Label lblCopyright 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "Copyright ìåñMÉGÉìÉWÉjÉAÉäÉìÉO"
         BeginProperty Font 
            Name            =   "ÇlÇr ñæí©"
            Size            =   11.25
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00800000&
         Height          =   345
         Left            =   1200
         TabIndex        =   3
         Top             =   3600
         Width           =   3810
      End
      Begin VB.Label lblCompany 
         BackColor       =   &H00E0E0E0&
         BeginProperty Font 
            Name            =   "ÇlÇr Çoñæí©"
            Size            =   9.75
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00008000&
         Height          =   315
         Left            =   1680
         TabIndex        =   2
         Top             =   3960
         Width           =   2505
      End
      Begin VB.Label lblVersion 
         Alignment       =   1  'âEëµÇ¶
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "Çuer."
         BeginProperty Font 
            Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
            Size            =   8.25
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00004080&
         Height          =   165
         Left            =   4560
         TabIndex        =   4
         Top             =   3000
         Width           =   375
      End
      Begin VB.Label lblProductName 
         Alignment       =   2  'íÜâõëµÇ¶
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "êªïiñº"
         BeginProperty Font 
            Name            =   "Arial Black"
            Size            =   48
            Charset         =   0
            Weight          =   900
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   1350
         Left            =   1335
         LinkTimeout     =   30
         TabIndex        =   6
         Top             =   480
         Width           =   3240
      End
      Begin VB.Label lblLicenseTo 
         Alignment       =   1  'âEëµÇ¶
         BackColor       =   &H00E0E0E0&
         Caption         =   "◊≤æ›ΩêÊ"
         BeginProperty Font 
            Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
            Size            =   9
            Charset         =   128
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3000
         TabIndex        =   1
         Top             =   120
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.Label lblCompanyProduct 
         AutoSize        =   -1  'True
         BackColor       =   &H00E0E0E0&
         Caption         =   "êªçÏâÔé–ñº"
         BeginProperty Font 
            Name            =   "ÇlÇr ÇoÉSÉVÉbÉN"
            Size            =   18
            Charset         =   128
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00808080&
         Height          =   435
         Left            =   720
         TabIndex        =   5
         Top             =   2520
         Visible         =   0   'False
         Width           =   1920
      End
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

Private Sub Form_KeyPress(KeyAscii As Integer)
    Unload Me
End Sub

Private Sub Form_Load()
    Dim w As Integer, H As Integer
    
    w = GetSetting(App.Title, "Settings", "MainWidth", 13000)
    H = GetSetting(App.Title, "Settings", "MainHeight", 9380)
    
    Me.Left = GetSetting(App.Title, "Settings", "MainLeft", 0) + (w - Me.Width) \ 2
    Me.Top = GetSetting(App.Title, "Settings", "MainTop", 0) + (H - Me.Height) \ 2

    lblVersion.Caption = " ﬁ∞ºﬁÆ› " & App.Major & "." & App.Minor & "." & App.Revision
    lblProductName.Caption = "Draw.Pier" ''''ã¥ãrîzãÿê}" 'ÉVÉXÉeÉÄ" 'App.Title
    
End Sub

Private Sub Frame1_Click()
    Unload Me
End Sub


