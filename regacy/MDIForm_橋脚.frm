VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.MDIForm MDIForm_���r 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm_���r"
   ClientHeight    =   11580
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   12795
   LinkMode        =   1  '���
   LinkTopic       =   "MDIForm1"
   ScrollBars      =   0   'False
   StartUpPosition =   3  'Windows �̊���l
   Begin MSComDlg.CommonDialog CommonDialog1 
      Left            =   4560
      Top             =   5160
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.PictureBox Picture1 
      Align           =   1  '�㑵��
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
      Begin VB.CommandButton Cmd_�}�ʍ쐬 
         Caption         =   "�}��View"
         Height          =   495
         Left            =   1560
         TabIndex        =   3
         Top             =   120
         Width           =   855
      End
      Begin VB.CommandButton Cmd_�t�H���_ 
         Caption         =   "̫��ޕύX"
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
         
         .filename = "̫��ް�I����� �J����د�"
         '.Filter = "̧�ٖ� (*.TDB)|*.TDB"
         .Filter = "̧�ٖ� (*.*)|*.OO"
         .ShowOpen
         Get_Name1$ = .filename
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
     ProgressBar1.Min = 0:     If N_Max > 0 Then ProgressBar1.Max = N_Max Else ProgressBar1.Max = 1
     ProgressBar1.Value = ProgressBar1.Min

     End Sub
Public Sub StepProgress22()
     If ProgressBar1.Value < ProgressBar1.Max Then ProgressBar1.Value = ProgressBar1.Value + 1
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


