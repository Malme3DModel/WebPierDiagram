VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Object = "{0E59F1D2-1FBE-11D0-8FF2-00A0D10038BC}#1.0#0"; "msscript.ocx"
Begin VB.Form Form_���r 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00FFFFFF&
   Caption         =   "�\���v�Z�ް�"
   ClientHeight    =   5220
   ClientLeft      =   45
   ClientTop       =   225
   ClientWidth     =   10305
   FillColor       =   &H80000009&
   BeginProperty Font 
      Name            =   "�l�r ����"
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
   ScaleMode       =   6  '��Ұ��
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
      Begin VB.ListBox Lst_���� 
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
   Begin VB.CommandButton Cmd_�d�� 
      Caption         =   "�v�Z"
      Height          =   495
      Left            =   4080
      TabIndex        =   10
      ToolTipText     =   "Shell�͈̔͂��v�Z���܂�"
      Top             =   0
      Width           =   495
   End
   Begin VB.CommandButton Cmd_����_Sizeup 
      Caption         =   "��up"
      Height          =   495
      Left            =   3600
      TabIndex        =   9
      ToolTipText     =   "Data_�������ނ�傫�����܂�"
      Top             =   0
      Width           =   495
   End
   Begin VB.TextBox Text�d�� 
      Height          =   312
      Left            =   360
      TabIndex        =   8
      Text            =   "�d��"
      Top             =   900
      Width           =   1452
   End
   Begin VB.CommandButton Command�����e 
      Caption         =   "���"
      Height          =   492
      Left            =   9000
      TabIndex        =   7
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command�u���E�U 
      Appearance      =   0  '�ׯ�
      Caption         =   "�u���E�U"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   5.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   1440
      Style           =   1  '���̨���
      TabIndex        =   6
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command���� 
      Appearance      =   0  '�ׯ�
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   6
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   960
      Style           =   1  '���̨���
      TabIndex        =   5
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command�ۑ� 
      Appearance      =   0  '�ׯ�
      Caption         =   "�ۑ�"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   1920
      Style           =   1  '���̨���
      TabIndex        =   4
      ToolTipText     =   "�\��data������"
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command�������s 
      Caption         =   "�������s"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   4.5
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   480
      Style           =   1  '���̨���
      TabIndex        =   3
      ToolTipText     =   "�\���v�Z�𕔕��I�Ɏ��s"
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Cmd_���� 
      Caption         =   "����"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   2520
      Style           =   1  '���̨���
      TabIndex        =   2
      ToolTipText     =   "�������������܂�"
      Top             =   0
      Width           =   492
   End
   Begin VB.CommandButton Command���s 
      Caption         =   "���s"
      BeginProperty Font 
         Name            =   "�l�r �S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   492
      Left            =   0
      Style           =   1  '���̨���
      TabIndex        =   1
      ToolTipText     =   "�\���v�Z���s"
      Top             =   0
      Width           =   492
   End
   Begin RichTextLib.RichTextBox RichTextBox�\�� 
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
      TextRTF         =   $"Form_���r.frx":0000
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "�l�r ����"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.Image Image�u�� 
      BorderStyle     =   1  '����
      Height          =   495
      Left            =   3000
      Stretch         =   -1  'True
      Top             =   0
      Width           =   495
   End
End
Attribute VB_Name = "Form_���r"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'
'
'        Form�\��.frm  Robot
'
'       2002.3.24
 
 
     Dim Form_No As Integer
 
     Dim �v�Z���$
     Dim INP_FILE$
     Dim RichText_Top As Single
     Dim RET As Long

  ' Public ������_Type$, ������_����$, ������_OPTIONS:  'M�֐��Œ�`
     Dim ������ As Integer
     Dim �u�������� As Integer
     Dim Start_�����J�n�ʒu As Long, �����J�n�ʒu As Long

     Dim �v�Z�@_�����ȉ����� As Integer:  ' �d��@�\

     Dim INS_KEY As Integer: ' Insert ���̗L��


    Dim oo

'������������������������������������������������������������������������������������������������������������������������
'��
'��
'��   Form_Load()
'��
'��
'������������������������������������������������������������������������������������������������������������������������
Private Sub Form_Load()
     
     Form_No = ��_Form_��
     
     Me.ScaleMode = 1: '   1 Twip  6 mm
     'Me.Height = 15 * 567: Me.Width = 18 * 567
     Me.Height = 0.9 * Screen.Height: Me.Width = 0.4 * Screen.Width
     
     'ME.FontName = "�l�r ����"
     'ME.FontName = "�W���S�V�b�N"
     'RichTextBox�\��.Font = "�W������"
     
     RichTextBox�\��.Font.Size = ���\������SIZE
     Cmd_����_Sizeup.Caption = "����" + f1(RichTextBox�\��.Font.Size)
     Cmd_����_Sizeup.FontSize = 9
     
     Me.Move (Screen.Width - Me.Width) / 2, 0.05 * (Screen.Height - Me.Height)
     RichText_Top = 500
     RichTextBox�\��.HideSelection = False
     RichTextBox�\��.Font = "�l�r ����"
   ' RichTextBox�\��.BackColor = &HFFFFC0 ' ��
     RichTextBox�\��.BackColor = &HFFFFFF       '��
     RichTextBox�\��.RightMargin = 50 * 567: ' Twip Form �ɂ��

     
     'If �v�Z�@_�����ȉ����� <= 0 Then �v�Z�@_�����ȉ����� = 4
     
    ' Cmd_�d��.FontSize = 9
    ' Cmd_�d��.Caption = "�d��" + f0(�v�Z�@_�����ȉ�����) + "��"
     �v�Z���$ = Data_File��$
                          Command���s.Visible = False
                          Command�������s.Visible = False
                          Command����.Visible = False
                          Command�u���E�U.Visible = False
                          Command�ۑ�.Visible = False
                          Cmd_����.Visible = False
                          Command�����e.Visible = False
                          Image�u��.Visible = False
                          Text�d��.Visible = False
                      '     Cmd_�d��.Visible = False
                          Cmd_����_Sizeup = True
                          Cmd_����_Sizeup = True
                          
                          RichTextBox�\��.Visible = False
     
      INP_FILE$ = Data_dsk & Data_File��$ + ".dat"
      BAK_FILE_D$ = SYS_dsk & "Backup\"
      BAK_FILE$ = BAK_FILE_D$ + Data_File��$ + ".bak"
     
              ���r_Data����$ = "Y"
                          RichTextBox�\��.Visible = True
                          Command���s.Visible = True
                      '    Command�������s.Visible = True
                      '    Command����.Visible = True
                       '   Command�u���E�U.Visible = True
                          Command�ۑ�.Visible = True
                          Cmd_����.Visible = True
                          Image�u��.Visible = True
     
                       
     Close #1 ''''''''''''''''''''''''''' Nagase 03/09/02 �ǉ�
     If INP_FILE$ <> "" Then
         ����File$ = Dir(INP_FILE$):
         If ����File$ = "" Then Open INP_FILE$ For Output As #1: Print #1, "' New file": Close #1
         
         RichTextBox�\��.LoadFile INP_FILE$, rtfText
         If BAK_FILE$ <> "" Then
              If Dir(BAK_FILE_D$, 16) = "" Then MkDir BAK_FILE_D$
              RichTextBox�\��.SaveFile BAK_FILE$, rtfText
              End If
         End If
     End Sub
'=================================================================================================================================
Private Sub Form_Resize(): Call TEXTSIZE: End Sub

Private Sub TEXTSIZE()
     
     If RichTextBox�\��.Visible = True Then
          TEXT_TOP = 0: '+ Form�\��.Top
     
          HH = Me.Height: Ww = Me.Width: '  Form.Width
          RichTextBox�\��.Top = RichText_Top:  RichTextBox�\��.Left = 0
     
          Rw = Ww - 100: If Rw < 0 Then Rw = 0
          RichTextBox�\��.Width = Rw
          'RH = HH - RichTextBox�\��.Top - 230: If RH < 0 Then RH = 0
          RH = HH - RichTextBox�\��.Top - 350: If RH < 0 Then RH = 0
          RichTextBox�\��.Height = RH
          End If
     
     If Text�d��.Visible = True Then
          TEXT_TOP = 0: '+ �\���v�Z.Top
          HH = Me.Height: Ww = Me.Width: '  Form.Width
          Text�d��.Top = TEXT_TOP: Text�d��.Left = 0
          Text�d��.Width = Ww - 50: Text�d��.Height = HH - TEXT_TOP
     
          End If
     
     
     End Sub

'������������������������������������������������������������������������������������������������������������������������
'��   Form_UNLoadk
'������������������������������������������������������������������������������������������������������������������������
Private Sub Form_Unload(Cancel As Integer)

     MDIForm_���r.Cmd_Edit.Enabled = True

     End Sub


'������������������������������������������������������������������������������������������������������������������������
'��   Command�ۑ�_Click
'������������������������������������������������������������������������������������������������������������������������
Private Sub Command�ۑ�_Click(): Call Textdata�ۑ�: End Sub
       
Private Sub Textdata�ۑ�()
     RichTextBox�\��.SaveFile INP_FILE$, rtfText
     
     End Sub


'������������������������������������������������������������������������������������������������������������������������
'��   Command���s_Click
'������������������������������������������������������������������������������������������������������������������������
Private Sub Command���s_Click()
     
     Call Textdata�ۑ�:
     
    ' Call �v�Z����_�v�Z���s(�v�Z���$): '*********
     FN$ = Data_dsk$ & ���r_Data��$ + ".dat":    Call ���r�}��_�o��(FN): ' Rob_F_Read
     '���r_Data��$
     
               
     Me.RichTextBox�\��.SetFocus
     
     End Sub







'������������������������������������������������������������������������������������������������������������������������
'��   Command����_Click
'������������������������������������������������������������������������������������������������������������������������
Private Sub Command����_Click()
'    Call �v�Z����_�v�Z����(�v�Z���$)
    End Sub
'������������������������������������������������������������������������������������������������������������������������
'��   Command�u���E�U_Click
'������������������������������������������������������������������������������������������������������������������������
Private Sub Command�u���E�U_Click()
'    Call �v�Z����_�v�Z�u���E�U(�v�Z���$)
    
    End Sub

'������������������������������������������������������������������������������������������������������������������������
'��   Form_KeyDown(KeyCode As Integer, Shift As Integer)
'������������������������������������������������������������������������������������������������������������������������
Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    ' �q Form  NG
    AAA = KeyCode
    Select Case Shift
    Case 0:
           Select Case KeyCode
           Case 37: Stop: '����
           Case 38: Stop: '�㷰
           Case 39: Stop: '�E��
           Case 40: '����
    End Select
    End Select
    End Sub


'������������������������������������������������������������������������������������������������������������������������
'��   RichTextBox�\��_KeyDown(KeyCode As Integer, Shift As Integer)
'������������������������������������������������������������������������������������������������������������������������
Private Sub RichTextBox�\��_KeyDown(KeyCode As Integer, Shift As Integer)
    
    AAA = KeyCode
    Select Case Shift
    Case 0:
           Select Case KeyCode
           Case vbKeyReturn, vbKeyPageDown: '13, 34: 'return Pgdn
           Case vbKeyPageUp: '33: 'Pgup
           Case vbKeyEnd: '35: 'end
           Case vbKeyHome: '36: 'Home
           Case vbKeyLeft: '37: '����
           Case vbKeyUp: '38:  '�㷰
           Case vbKeyRight: '39:  '�E��
           Case vbKeyDown: '40: '����
           Case vbKeyInsert: '45: ' Ins��
               Select Case INS_KEY
               Case 0: INS_KEY = 1: Call CARET(RichTextBox�\��)
               Case 1: INS_KEY = 0: Call CARET(RichTextBox�\��)
               ' lngWin32apiResultCode = HideCaret(RichTextBox1.hwnd) �s�p
          
               End Select
           'Case 91: ' MicroSoft ���@����
           'Case 92: ' MicroSoft �� �E��
           Case vbKeyAdd: '107: ' +��
                    
           Case vbKeySubtract: '109: '-��
           
           Case vbKeyDecimal: '110:    ' . ��
           Case vbKeyF1:    '   Call �v�Z����_�v�ZHelp_F(�v�Z���$)
           
           Case vbKeyF2:       Call Textdata�ۑ�
                          
                          
           Case vbKeyF3:     '  Call �����������s
                               Moj$ = Form��������.txt_����.TEXT
                               OPTIONS = 4
                                   '������_����$ = Moj$: ������_OPTIONS = 4
                               
                               Call ��������(Moj$, OPTIONS)
                               
           Case vbKeyF4:
                               Moj2$ = Form��������.txt_�u��.TEXT
                               RichTextBox�\��.SelText = Moj2$
                               �u�������� = �u�������� + 1
           
           
           Case vbKeyF5:
                              ' Call Command�������s_Click
           
           Case vbKeyF12:   '   Call �d��_�v�Z
           
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
           Case vbKeyPageUp:         Call ����_Size_�ύX(1): KeyCode = 0
                   
           Case vbKeyPageDown:       Call ����_Size_�ύX(-1): KeyCode = 0

           Case 36:  'Home
           Case vbKeyF: Call Cmd_����_Click: ' Form��������.Show: ' Ctrl+F , Ctrl+f
           Case vbKeyR:   'Form�����u��.Show: ' Ctrl+R
           Case Else: 'Stop
           End Select
     
     Case 3: ' Ctrl+Shift
     
     Case 4: ' Alt
           Select Case KeyCode
           Case vbKeyC:        Call �d��_�v�Z: ' Stop
           
           Case 33:  'Pgup
           
           Case 34: 'Pgdn
           Case 36: 'Home
           End Select
     
     
     Case Else: 'Stop
     End Select
    
   Call CARET(RichTextBox�\��)
     
    
    End Sub



Private Sub RichTextBox�\��22_KeyDown(KeyCode As Integer, Shift As Integer)
   ' Insert ��ŕς�����l�ɕύX
   
   ' Dim lngWin32apiResultCode As Long

   Select Case Shift
   Case 0:
        Select Case KeyCode
           Case 37: '����
           Case 38:  '�㷰
                     Call CARET(RichTextBox�\��)
           Case 39:  '�E��
           Case 40: '����
        
        Case 45:
               Select Case INS_KEY
               Case 0: INS_KEY = 1: Call CARET(RichTextBox�\��)
               Case 1: INS_KEY = 0: Call CARET(RichTextBox�\��)
               ' lngWin32apiResultCode = HideCaret(RichTextBox1.hwnd) �s�p
          
               End Select
        Case Else:
   End Select

   End Select

   Call CARET(RichTextBox�\��)

   End Sub
Private Sub RichTextBox�\��_Change()
   Call CARET(RichTextBox�\��)
   End Sub


'������������������������������������������������������������������������������������������������������������������������
'��   Cmd_����_Sizeup_MouseDown
'������������������������������������������������������������������������������������������������������������������������
Private Sub Cmd_����_Sizeup_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    ' �د��Ż��ށ@Up
    ' Shift�د��Ż��ށ@Dn
    
    Select Case Shift
    Case 1: Call ����_Size_�ύX(-1)
    Case Else: Call ����_Size_�ύX(1)
    End Select

   ' Form�\��.RichTextBox�\��.SetFocus
    Me.RichTextBox�\��.SetFocus

    End Sub
Private Sub ����_Size_�ύX(up_Dn As Single)
     Dim ����_Size As Single
     ����_Size = RichTextBox�\��.Font.Size
     
     Select Case up_Dn
     Case Is < 0: ����_Size = ����_Size + up_Dn
     Case 0: ����_Size = 9
     Case Is > 0: ����_Size = ����_Size + up_Dn
     
     End Select
     If ����_Size < 3 Then ����_Size = 3
     If ����_Size > 20 Then ����_Size = 20
     
     RichTextBox�\��.Font.Size = ����_Size
     Cmd_����_Sizeup.Caption = "����" + f1(����_Size)
     '���\������SIZE = ����_Size

     End Sub
'������������������������������������������������������������������������������������������������������������������������
'��   Cmd_����_Click
'������������������������������������������������������������������������������������������������������������������������
Private Sub Cmd_����_Click()
     'ER ("���ݎg�p�ł��܂���")
      
      ��_�\��Form_No = Form_No
      
      ������ = 0
      Start_�����J�n�ʒu1 = RichTextBox�\��.SelStart - 1: ' -1 �� Carrot�̈ʒu�̕������� RichTextBox�\��.SelStart�̈ʒu�ɂȂ�
           If Start_�����J�n�ʒu1 < 1 Then Start_�����J�n�ʒu1 = 1
      
      ������_����$ = Trim(Mid(RichTextBox�\��.TEXT, Start_�����J�n�ʒu1, 20)) + " "
      For ii = 1 To 20
          ����$ = Mid(������_����$, ii, 1)
          Select Case ����$
              Case " ", ",", ".", "(", ")", "[", "]", "{", "}", "=", Chr$(13):
                        ������_����$ = Mid(������_����$, 1, ii - 1): Exit For
              Case Else
              End Select
      
      
          Next ii
      
      Form��������.Show
     ������_Type$ = ""
     
     End Sub

'������������������������������������������������������������������������������������������������������������������������
'��         ��������(����$, OPTIONS)
'������������������������������������������������������������������������������������������������������������������������
Sub ��������(����$, OPTIONS)
     
     '������_����$ = ����$: ������_OPTIONS = OPTIONS
     
     Call �����������s(����$, OPTIONS)
     End Sub

Private Sub �����������s(Moj$, OPTIONS)
     
     �����J�n�ʒu = ���������ʒu + 1: If Moj$ <> "" Then If Asc(Mid(Moj$, 1, 1)) < 0 Then �����J�n�ʒu = �����J�n�ʒu + 1
     RET = RichTextBox�\��.Find(Moj$, �����J�n�ʒu, , OPTIONS)
     If RET < 0 Then �����J�n�ʒu = 0: er ("�����I�� "): Exit Sub
     ������ = ������ + 1
 
     RichTextBox�\��.SetFocus
     End Sub


Private Function ���������ʒu() As Long
     'Dim ���������ʒu As Long
     Dim ����_START As Long

     ����_START = RichTextBox�\��.SelStart
     NN$ = Mid(RichTextBox�\��.TEXT, 1, ����_START)
     ���������ʒu = ����_START + N����(NN$): ' + RichTextBox�\��.SelLength

     End Function

     
     
'������������������������������������������������������������������������������������������������������������������������
'��   Image�u��_Click()
'������������������������������������������������������������������������������������������������������������������������

Private Sub Image�u��_Click()
     'ER ("�u��  ���ݎg�p�ł��܂���")
    
      �u�������� = 0
     ������_Type$ = "�u��"
      Call Cmd_����_Click
     
     End Sub

'������������������������������������������������������������������������������������������������������������������������
'��   TEXT�d��_KeyPress(KeyAscii As Integer)
'������������������������������������������������������������������������������������������������������������������������
Private Sub TEXT�d��_KeyPress(KeyAscii As Integer)
    
    If KeyAscii = 13 Then
         KeyAscii = 0
         Da$ = Text�d��.TEXT
         ni = InStr(Da$, "="): If ni > 1 Then Da$ = Mid$(Da$, 1, ni - 1)
         
         DA_0$ = Da$
         
         Call calu(Da$, Scda, e$)
         If e$ <> "" Then
               
               Text�d��.TEXT = DA_0$ + " " + e$
               Else
               
               ans$ = Trim(f(Scda, 15 + �v�Z�@_�����ȉ����� / 10))
               Text�d��.TEXT = DA_0$ + "=" + ans$
               
                Clipboard.Clear
                Clipboard.SetText ans$
               End If
         
         'Me.RichTextBox�\��.SetFocus NG
         
        ' Text�d��.SetFocus
         End If
    
    
    
    
    End Sub
Private Sub TEXT�d��_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Select Case Button
          Case 1: ' ��
          Case 2:  ' �E
          Case 4: Text�d��.TEXT = "": ' ����
          End Select
    
    End Sub

'������������������������������������������������������������������������������������������������������������������������
'��   Cmd_�d��_Click()
'������������������������������������������������������������������������������������������������������������������������
Private Sub Cmd_�d��_Click()

    Call �d��_�v�Z
    End Sub
    
Private Sub �d��_�v�Z()
    Cda0$ = RichTextBox�\��.SelText
        Cda$ = Cda0$
        ni = Len(Cda0$): 'If ni < 1 Then Exit Sub
     
     Select Case ni
     Case Is < 1:
         Cda0$ = InputBox("�v�Z������͂��Ă�������", "�֐��d��")
         Cda$ = Cda0$
         Call calu(Cda$, Scda, e$)
         If e$ <> "" Then
               er (Cda0$ + "   " + e$)
               Else
               ans$ = Trim(f(Scda, 15 + �v�Z�@_�����ȉ����� / 10))
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
               ans$ = Trim(f(Scda, 15 + �v�Z�@_�����ȉ����� / 10))
               If D1$ = "=" Then RichTextBox�\��.SelText = Cda0$ + ans$
               Clipboard.Clear:   Clipboard.SetText ans$
               End If
      End Select
     
    ' Form�\��.RichTextBox�\��.SetFocus
     Me.RichTextBox�\��.SetFocus

    End Sub
Private Sub Cmd_�d��_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Select Case Button
          Case 1: ' ��
          Case 2:  ' �E
          Case 4:  ' ����
              Select Case Shift
              Case 1: �v�Z�@_�����ȉ����� = �v�Z�@_�����ȉ����� - 1
              Case Else: �v�Z�@_�����ȉ����� = �v�Z�@_�����ȉ����� + 1
              End Select
              If �v�Z�@_�����ȉ����� < 0 Then �v�Z�@_�����ȉ����� = 0
              If �v�Z�@_�����ȉ����� > 6 Then �v�Z�@_�����ȉ����� = 6
          
              Cmd_�d��.Caption = "�d��" + f0(�v�Z�@_�����ȉ�����) + "��"
          End Select
     
    ' Form�\��.RichTextBox�\��.SetFocus Ng
    
    End Sub





'������������������������������������������������������������������������������������������������������������������������
'��   Caret
'������������������������������������������������������������������������������������������������������������������������

Private Sub CARET(Obj As Object)
    Dim lngCaretHandle        As Long
    Dim lngCaretWidth         As Long
    Dim lngCaretHeight        As Long
    Dim lngWin32apiResultCode As Long

    ' �L�����b�g�����w��
    lngCaretHandle = 0
    lngCaretWidth = 1:  ' 10
    If INS_KEY = 1 Then lngCaretWidth = 7:  ' 10
    lngCaretHeight = 13: '15
   ' With Text2
    With Obj
        ' �Ǝ��̃L�����b�g���쐬
        lngWin32apiResultCode = CreateCaret(.hwnd, lngCaretHandle, lngCaretWidth, lngCaretHeight)
        ' �쐬�����L�����b�g��\��
        lngWin32apiResultCode = ShowCaret(.hwnd)
    End With

End Sub


