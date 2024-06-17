VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.MDIForm MDIForm_橋脚 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm_橋脚"
   ClientHeight    =   11580
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12795
   LinkMode        =   1  'ｿｰｽ
   LinkTopic       =   "MDIForm1"
   ScrollBars      =   0   'False
   StartUpPosition =   3  'Windows の既定値
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4560
      Top             =   5160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  '上揃え
      Height          =   855
      Left            =   0
      ScaleHeight     =   795
      ScaleWidth      =   12735
      TabIndex        =   0
      Top             =   0
      Width           =   12795
      Begin VB.CommandButton Cmd_END 
         Caption         =   "END"
         Height          =   495
         Left            =   11640
         TabIndex        =   4
         Top             =   120
         Width           =   855
      End
      Begin VB.CommandButton Cmd_図面作成 
         Caption         =   "図面View"
         Height          =   495
         Left            =   1560
         TabIndex        =   3
         Top             =   120
         Width           =   855
      End
      Begin VB.CommandButton Cmd_フォルダ 
         Caption         =   "ﾌｫﾙﾀﾞ変更"
         Height          =   495
         Left            =   4560
         TabIndex        =   2
         Top             =   120
         Width           =   975
      End
      Begin VB.CommandButton Cmd_Edit 
         Caption         =   "Edit"
         Height          =   495
         Left            =   600
         TabIndex        =   1
         Top             =   120
         Width           =   735
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
         
         .filename = "ﾌｫﾙﾀﾞｰ選択後に 開くをｸﾘｯｸ"
         '.Filter = "ﾌｧｲﾙ名 (*.TDB)|*.TDB"
         .Filter = "ﾌｧｲﾙ名 (*.*)|*.OO"
         .ShowOpen
         Get_Name1$ = .filename
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
     ProgressBar1.Min = 0:     If N_Max > 0 Then ProgressBar1.Max = N_Max Else ProgressBar1.Max = 1
     ProgressBar1.Value = ProgressBar1.Min

     End Sub
Public Sub StepProgress22()
     If ProgressBar1.Value < ProgressBar1.Max Then ProgressBar1.Value = ProgressBar1.Value + 1
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


