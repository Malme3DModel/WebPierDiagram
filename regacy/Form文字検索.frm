VERSION 5.00
Begin VB.Form Form�������� 
   BorderStyle     =   1  '�Œ�(����)
   Caption         =   "����"
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
   Begin VB.CommandButton Cmd_�u�� 
      Caption         =   "Command1"
      Height          =   255
      Left            =   2520
      TabIndex        =   7
      Top             =   1920
      Width           =   855
   End
   Begin VB.TextBox txt_�u�� 
      Height          =   375
      Left            =   1800
      TabIndex        =   3
      Text            =   "Text1"
      Top             =   480
      Width           =   2775
   End
   Begin VB.CommandButton Cmd_���� 
      Caption         =   "������"
      Height          =   255
      Left            =   1320
      TabIndex        =   1
      Top             =   1920
      Width           =   735
   End
   Begin VB.TextBox txt_���� 
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
      Caption         =   "F3 ���������Ă�������"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
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
Attribute VB_Name = "Form��������"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'            Form��������
'
'

     Dim �\��Form_No As Integer


Private Sub Form_Load()
    '
    �\��Form_No = ��_�\��Form_No
    
    Form��������.Caption = "����"
    Lbl_1.Caption = "�������镶��"
    Lbl_2.Caption = "�u����̕���"
    
    Lbl_3.Caption = "F3 ���������ƕ������������܂�"
    Lbl_4.Caption = "F4 ���������ƕ�����u�����܂�"
    Cmd_����.Caption = "������"
    Cmd_�u��.Caption = "�u��"
    
    txt_�u��.Visible = False
    Cmd_�u��.Visible = False
    Lbl_2.Visible = False
    Lbl_4.Visible = False
    
    H_���� = 350
    H_�u�� = 0
    H_Lbl = 300
    
    W1 = 1100: W2 = 3000: w3 = 800
    L1 = 130: L2 = L1 + W1 + 50: L3 = L2 + W2 + 50
    
    If ������_Type$ = "�u��" Then
         Form��������.Caption = "�u��"
         txt_�u��.Visible = True
         Lbl_2.Visible = True
         Lbl_4.Visible = True
         Cmd_�u��.Visible = True
         H_�u�� = 350
         End If
    
    
    Top_���� = 60
    Top_�u�� = Top_���� + 1.02 * H_����
    Top_Lbl_1 = Top_����
    Top_Lbl_2 = Top_�u��
    Top_Lbl_3 = Top_�u�� + H_�u�� + 100
    Top_Lbl_4 = Top_Lbl_3 + H_Lbl
    
    Form��������.Height = H_���� + 2 * H_�u�� + H_Lbl + 600
    Form��������.Width = L3 + w3 + 150
    
    txt_����.TEXT = ������_����$
    txt_����.Top = Top_����
    txt_����.Left = L2
    txt_����.Width = W2
    txt_����.Height = H_����
    
    
    txt_�u��.Top = Top_�u��
    txt_�u��.Left = L2
    txt_�u��.Width = W2
    txt_�u��.Height = H_�u��
    txt_�u��.TEXT = ""
    
    Cmd_����.Top = Top_����
    Cmd_����.Left = L3
    Cmd_����.Width = w3
    Cmd_����.Height = H_����
    
    Cmd_�u��.Top = Top_�u��
    Cmd_�u��.Left = L3
    Cmd_�u��.Width = w3
    Cmd_�u��.Height = H_����
    
    
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
Private Sub Cmd_����_Click()
    
      OPTIONS = 4
    
    
     Moj$ = txt_����.TEXT
     �����J�n�ʒu = ���������ʒu + 1: If Moj$ <> "" Then If Asc(Mid(Moj$, 1, 1)) < 0 Then �����J�n�ʒu = �����J�n�ʒu + 1
     RET = �\��_Form(�\��Form_No).RichTextBox�\��.Find(Moj$, �����J�n�ʒu, , OPTIONS)
     If RET < 0 Then �����J�n�ʒu = 0: ER ("�����I�� "): Exit Sub
     ������ = ������ + 1
 
    End Sub



Private Function ���������ʒu() As Long
     'Dim ���������ʒu As Long
     Dim ����_START As Long

  ' ER ("�\��Form_No" + STR(�\��Form_No))
     ����_START = �\��_Form(�\��Form_No).RichTextBox�\��.SelStart
     NN$ = Mid(�\��_Form(�\��Form_No).RichTextBox�\��.TEXT, 1, ����_START)
     ���������ʒu = ����_START + N����(NN$): ' + RichTextBox�\��.SelLength

     End Function


Private Sub Cmd_�u��_Click()
    
      
     MOJ2$ = Form��������.txt_�u��.TEXT
     �\��_Form(�\��Form_No).RichTextBox�\��.SelText = MOJ2$
      �u�������� = �u�������� + 1
      
      
 
    End Sub



Private Sub FORM_UNLOAD(CANCEL As Integer)
    'Form�\��.RichTextBox�\��.HideSelection = True

    'Form�\��.RichTextBox�\��.SetFocus
    End Sub

