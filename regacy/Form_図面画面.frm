VERSION 5.00
Object = "{A8561640-E93C-11D3-AC3B-CE6078F7B616}#1.0#0"; "vsprint7.ocx"
Begin VB.Form Form_�}�ʉ�� 
   AutoRedraw      =   -1  'True
   BorderStyle     =   5  '��°� ����޳
   Caption         =   "�}����׳��"
   ClientHeight    =   9240
   ClientLeft      =   45
   ClientTop       =   165
   ClientWidth     =   11730
   BeginProperty Font 
      Name            =   "�l�r �S�V�b�N"
      Size            =   9
      Charset         =   128
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9240
   ScaleWidth      =   11730
   Begin VSPrinter7LibCtl.VSPrinter VSPrt�}�� 
      Height          =   4455
      Left            =   3000
      TabIndex        =   9
      Top             =   120
      Width           =   5775
      _cx             =   10186
      _cy             =   7858
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      MousePointer    =   0
      BackColor       =   -2147483643
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "�l�r �S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty HdrFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "�l�r �S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _ConvInfo       =   1
      AutoRTF         =   -1  'True
      Preview         =   -1  'True
      DefaultDevice   =   0   'False
      PhysicalPage    =   -1  'True
      AbortWindow     =   -1  'True
      AbortWindowPos  =   0
      AbortCaption    =   "�����..."
      AbortTextButton =   "��ݾ�"
      AbortTextDevice =   "�o�͐� %s ( %s )"
      AbortTextPage   =   "%d �߰�ޖڂ������"
      FileName        =   ""
      MarginLeft      =   1440
      MarginTop       =   1440
      MarginRight     =   1440
      MarginBottom    =   1440
      MarginHeader    =   0
      MarginFooter    =   0
      IndentLeft      =   0
      IndentRight     =   0
      IndentFirst     =   0
      IndentTab       =   720
      SpaceBefore     =   0
      SpaceAfter      =   0
      LineSpacing     =   100
      Columns         =   1
      ColumnSpacing   =   180
      ShowGuides      =   2
      LargeChangeHorz =   300
      LargeChangeVert =   300
      SmallChangeHorz =   30
      SmallChangeVert =   30
      Track           =   0   'False
      ProportionalBars=   -1  'True
      Zoom            =   21.6384683882458
      ZoomMode        =   3
      ZoomMax         =   400
      ZoomMin         =   10
      ZoomStep        =   25
      EmptyColor      =   -2147483636
      TextColor       =   0
      HdrColor        =   0
      BrushColor      =   0
      BrushStyle      =   0
      PenColor        =   0
      PenStyle        =   0
      PenWidth        =   0
      PageBorder      =   0
      Header          =   ""
      Footer          =   ""
      TableSep        =   "|;"
      TableBorder     =   7
      TablePen        =   0
      TablePenLR      =   0
      TablePenTB      =   0
      NavBar          =   3
      NavBarColor     =   -2147483633
      ExportFormat    =   0
      URL             =   ""
      Navigation      =   3
      NavBarMenuText  =   "�߰�ޑS��(&P)|�߰�ޕ�(&W)|2�߰��(&T)|��Ȳ�(&N)"
   End
   Begin VB.ComboBox Cbx�}�� 
      Height          =   300
      Left            =   135
      TabIndex        =   8
      Text            =   "�}��"
      Top             =   5760
      Width           =   1785
   End
   Begin VB.CommandButton Command�ϊ�2 
      Caption         =   "�ϊ�2"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   8880
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.ComboBox cbx�`��p�� 
      Height          =   300
      Left            =   1080
      TabIndex        =   6
      Text            =   "�p��"
      Top             =   7320
      Width           =   735
   End
   Begin VB.ComboBox cbx�}�ʗp�� 
      Height          =   300
      Left            =   240
      TabIndex        =   5
      Text            =   "�p��"
      Top             =   7320
      Width           =   735
   End
   Begin VB.CommandButton Command�ϊ� 
      Caption         =   "�ϊ� D00"
      Height          =   315
      Left            =   120
      TabIndex        =   2
      ToolTipText     =   "Dxf ��  D00 �ɕϊ����܂�"
      Top             =   8400
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton Command�`�� 
      Caption         =   "�` �� �J �n"
      Height          =   360
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "dxf ̧�ق�`�悵�܂�"
      Top             =   6360
      Width           =   1515
   End
   Begin VB.FileListBox File�}��dxf 
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5310
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label�`��p�� 
      Caption         =   "�`��p��"
      Height          =   255
      Left            =   1080
      TabIndex        =   4
      Top             =   7080
      Width           =   735
   End
   Begin VB.Label Label�}�� 
      Caption         =   "�}�ʻ���"
      Height          =   255
      Left            =   300
      TabIndex        =   3
      Top             =   7080
      Width           =   735
   End
End
Attribute VB_Name = "Form_�}�ʉ��"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                    ��
'��                                                                                                                    ��
'��                                                                                                                    ��
'��                          Form_�}�ʉ��                                                                             ��
'��                                                                                                                    ��
'��                                                                                                                    ��
'��      2003.11.14                                                                                                    ��
'��                                                                                                                    ��
'������������������������������������������������������������������������������������������������������������������������
'
'
     
     
     Dim �}��$
     Dim Pic_X, Pic_Y, �����{��, S�k��, �}�{�� As Single
     Dim �����_X, �����_Y As Single
     Dim �`�敝, �`�搬  As Single
     Dim �}�ʉ��H As Single
     Dim �}��page As Integer, ����Index(1000)
     Dim XX0 As Single, YY0 As Single
     Dim �}��ZoomSize As Single



    Dim oioi As Integer
    
Private Sub Form_Load()
     '�}�ʉ��.ScaleMode = 6: 'mm
     'Me.BorderStyle = 1
     'Me.ControlBox = False
     
     Me.Top = 0:   Me.Left = 0
    
         Select Case ��PROGRAM$
         Case "�o��": W1 = 200 * twip: h1 = 200 * twip
         Case Else: W1 = MDIForm_���r.Width: h1 = MDIForm_���r.Height - MDIForm_���r.Picture1.Height
         End Select
     
     Me.Width = 0.7 * W1:  Me.Height = h1 - 5 * twip
     
     
     File�}��dxf.Path = Dxf_dsk
     �}�ʗp��SET
     
     If �}_���r_Auto�\��s = "Y" Then Call �`��_���r�}
     
     End Sub


Sub �`��_���r�}()
    Dim ii As Integer, �}��s As String, �}�ʗp��s As String, �`��p��s As String
    
'    �}�ʗp��s = "A1": �`��p��s = "A3"
    �}�ʗp��s = cbx�}�ʗp��.TEXT '"A1"
    �`��p��s = cbx�`��p��.TEXT '"A3"
    For ii = 1 To 6  ''''''''''' �o�͏��@nagase     gstrTitle ��ǉ�  05/04/11
        �}��s = ""
'        If �}_���r_�\������s(ii) <> "" Then �}��s = �}_���r_�\������s(ii) + ".Dxf"
        If �}_���r_����s(ii) <> "" Then �}��s = �}_���r_����s(ii) + ".Dxf" ''' 05/04/12
        If �}��s <> "" Then
            Call DXF�}�ʕ`��(�}��s, �}�ʗp��s, �`��p��s)
            ����Index(ii) = ii
        End If
    Next ii
'        �}��s = ""
'        If �}_���r_�\������s(1) <> "" Then �}��s = �}_���r_�\������s(1) + ".Dxf"
'        If �}��s <> "" Then Call DXF�}�ʕ`��(�}��s, �}�ʗp��s, �`��p��s)
   �}_���r_Auto�\��s = ""
   End Sub




Private Sub Form_Unload(Cancel As Integer)
         
    VSPrt�}��.EndDoc

    �}��page = 0
    '�}�ʉ��.Visible = False
    'Me.Hide
    '�}�ʉ��.Show
    End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    �}��page = 0
    Me.Hide
    MDIForm_���r.Cmd_�}�ʍ쐬.Enabled = True

    End Sub
Private Sub �}�ʗp��SET()
     Me.cbx�}�ʗp��.TEXT = "A1"
     Me.cbx�}�ʗp��.AddItem "A4"
     Me.cbx�}�ʗp��.AddItem "A3"
     Me.cbx�}�ʗp��.AddItem "A2"
     Me.cbx�}�ʗp��.AddItem "A1"

     
     Me.cbx�`��p��.TEXT = "A3"
     Me.cbx�`��p��.AddItem "A4"
     Me.cbx�`��p��.AddItem "A3"
     
     

     End Sub

Private Sub CommandEND_Click()
    
    End Sub

Private Sub Command�`��_Click()
     
     �}�ʗp��$ = cbx�}�ʗp��.TEXT
     
     �`��p��$ = cbx�`��p��.TEXT
     
    ' Stop
   ' �}�ʗp��$ = "A1"
      If �}��$ <> "" Then
           'DXF�}�ʕ`�� �}�ʉ��.VSPrt�}��, �}��$, �}�ʗp��$, �`��p��$
           Call DXF�}�ʕ`��(�}��$, �}�ʗp��$, �`��p��$)
           End If
     End Sub

Private Sub Command�ϊ�_Click()
     '   dxf Files��    ___.D00 (Uxf  ���RCode)�ɕϊ�����
     
     FN$ = �}��$
     If FN$ = "" Then er ("̧�ٖ����w�肳��Ă��Ȃ�"): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     
     Call �ϊ�DXF(FN$)
     er ("�ϊ��I��  ")
     End Sub

Private Sub Command�ϊ�2_Click()
     '   dxf Files��    ___.DX2 (DXF ��ǂ݂₷������)�ɕϊ�����
     
     FN$ = �}��$
     If FN$ = "" Then er ("̧�ٖ����w�肳��Ă��Ȃ�"):  If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     Call �Ǎ�DXF(FN$)
     er ("�ϊ��I��  ")
     End Sub

Private Sub File�}��dxf_Click()
     �}��$ = File�}��dxf.filename
     End Sub

Private Sub Cbx�}��_Click()
    
    
         AAA = Cbx�}��.ListIndex
        
        '����Index(���ڐ�) = �}��page '''''05/04/12
         
        PPP = ����Index(AAA + 1)
         VSPrt�}��.PreviewPage = PPP: 'Val(AAA$) + 1
         VSPrt�}��.SetFocus
    
    
    End Sub


Private Sub cmdPrint_Click()
    ��Forcus$ = ""
    Call DoPrint
    End Sub

Private Sub DoPrint()
    Dim iFromPage As Integer, iToPage As Integer, iCopies As Integer
    'հ�ް ����
    
    With CommonDialog
        .Flags = cdlPDNoSelection: ' �I�����������𖳌��ɂ���
        .Copies = 1
        
        .min = 1: ' ����y�[�W�ŏ�
        .max = VSPrt�}��.PageCount - 1: ' ����y�[�W�ő�
        
        .FromPage = 1
        .ToPage = VSPrt�}��.PageCount - 1
        
        .CancelError = True: '

        On Error Resume Next
        .ShowPrinter: 'Dialog BOX �\��

        If Err > 0 Then Exit Sub
        On Error GoTo 0

        iFromPage = .FromPage:        iToPage = .ToPage:        iCopies = .Copies
    End With

    VSPrt�}��.PrintDoc False, iFromPage, iToPage
    
    VSPrt�}��.SetFocus
    
    End Sub


Private Sub Command2_Click()
    ��Forcus$ = ""
 
    VSPrt�}��.ZoomMode = 1
   
   
   End Sub



Private Sub Form_Resize()
    Call ResizeForm
    End Sub

Private Sub ResizeForm()
    Dim H As Single, T As Single, w As Single

     Select Case ��PROGRAM$
     Case "�o��": W0 = 200 * twip
     Case Else: W0 = MDIForm_���r.Width
     End Select
    
    H = ScaleHeight:  T = 0:   w = ScaleWidth
         W1 = File�}��dxf.Width
         �� = W1
    T = File�}��dxf.Top:   H = H - 200: w = w - W1 - 20
    
    w3 = W0 - Form_�}�ʉ��.Left - Form_�}�ʉ��.Width - 3 * twip
     H = H - T - 20

    If w < 0 Then w = 0
    If W2 < 0 Then W2 = 10
    If H < 0 Then H = 0

    VSPrt�}��.Move ��, T, w, H

     'Form�\��.Left = �� + w + 3 * twip
     
     'Form�\��.Width = W3

    End Sub



Private Sub VSPrt�}��_Click()
    ��Forcus$ = "VSPrt�}��"
    End Sub
Private Sub vsDraw1_Click()
    ��Forcus$ = "vsDraw1"
    End Sub


Private Sub VSPrt�}��_GotFocus()
    ��Forcus$ = "VSPrt�}��"
    End Sub
Private Sub vsDraw1_GotFocus()
    ��Forcus$ = "vsDraw1"
    End Sub
Private Sub txtPage_GotFocus()
    ��Forcus$ = ""
    End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

          Select Case Shift
          Case 0:
                     '������Code$ = "*"
                     Select Case KeyCode
                   '  Case 27:    ��Forcus$ = "":    Unload Me: ' ESC
                     
                     Case 37:   VSPrt�}��.ScrollLeft = VSPrt�}��.ScrollLeft - 600:    '����
                     Case 38:   VSPrt�}��.ScrollTop = VSPrt�}��.ScrollTop - 600:      '�㷰
                     Case 39:   VSPrt�}��.ScrollLeft = VSPrt�}��.ScrollLeft + 600:    '�E��
                     Case 40:   VSPrt�}��.ScrollTop = VSPrt�}��.ScrollTop + 600:      '����
                     Case Else
                     End Select
                     VSPrt�}��.SetFocus
              
       
          Case 1: ' Shift
          
          Case 2: ' Ctrl
                 ' RET = MsgBox("Ctrl + " + SS$, 0, "KeyDown")
          
          Case 3: ' Shift+Ctrl
                  'RET = MsgBox("Shift + Ctrl + " + SS$, 0, "KeyDown")
          
          Case 4: ' Alt
         
         Case Else
         End Select
     '   RET = MsgBox("Form_KeyDown", 0, "Form ")
          
    
    End Sub


Private Sub VSPrt�}��_KeyDown(KeyCode As Integer, Shift As Integer)
    
          ZZ = VSPrt�}��.Zoom
          SS$ = str$(KeyCode)
    
          Select Case Shift
          Case 0:
                  
                  
                  Select Case KeyCode
                  Case 49, 97: ' 1
                                     VSPrt�}��.PreviewPage = 1
                                     'cbxINDEX.ListIndex = txtPage - 1
                  Case 69: ' E
                                     VSPrt�}��.PreviewPage = VSPrt�}��.PageCount - 1
                                     'cbxINDEX.ListIndex = txtPage - 1
                               
                  Case 109, 189: ' -
                                     PP = VSPrt�}��.PreviewPage:
                                     If PP = 1 Then PP = VSPrt�}��.PageCount
                                     VSPrt�}��.PreviewPage = PP - 1:
                                     'cbxINDEX.ListIndex = txtPage - 1
                  Case 13, 107: ' Enter +
                                     PP = VSPrt�}��.PreviewPage:
                                     If PP = VSPrt�}��.PageCount - 1 Then PP = 0
                                     VSPrt�}��.PreviewPage = PP + 1:
                                     'cbxINDEX.ListIndex = txtPage - 1

            
                  Case 33: ZZ = ZZ + 10: 'Page up
                  Case 34: ZZ = ZZ - 10: 'Page down
            
                  Case 35: ZZ = 400: 'END
                  Case 36: ZZ = �}��ZoomSize: 'Home
            
                  Case 80: ' P
                                      PP = VSPrt�}��.PreviewPage
                                      VSPrt�}��.ColorMode = 2: ' �װ
                                      'VSPrt�}��.ColorMode = 1: ' �ɸ�
                                      
                                      VSPrt�}��.EndDoc: ' *** �K�v ***
                                      
                                      VSPrt�}��.PrintDoc False, PP, PP
                              MsgBox "PAGE - " + f0$(PP), 0, "PRINTER �o��"
                  Case 37, 38, 39, 40: Stop
                  Case Else:  RET = MsgBox(SS$, 0, "KeyDown"): 'Stop
                  End Select
                  
          
          Case 1: ' Shift
                  Select Case KeyCode
                  Case 33: ZZ = ZZ + 50: 'Page up
                  Case 34: ZZ = ZZ - 50: 'Page down
                  
                  Case 13: VSPrt�}��.PreviewPage = VSPrt�}��.PreviewPage - 1
                  
                  Case 37:   VSPrt�}��.ScrollLeft = VSPrt�}��.ScrollLeft - 600:  '����
                  Case 38:   VSPrt�}��.ScrollTop = VSPrt�}��.ScrollTop - 600:  '�㷰
                  Case 39:   VSPrt�}��.ScrollLeft = VSPrt�}��.ScrollLeft + 600:  '�E��
                  Case 40:   VSPrt�}��.ScrollTop = VSPrt�}��.ScrollTop + 600: '����
                  
                  
                  End Select
                 'RET = MsgBox("Shift + " + SS$, 0, "KeyDown")
          
          Case 2: ' Ctrl
              '    RET = MsgBox("Ctrl + " + SS$, 0, "KeyDown")
          
          Case 3: ' Shift+Ctrl
                  RET = MsgBox("Shift + Ctrl + " + SS$, 0, "KeyDown")
          
          Case 4: ' Alt
                  Select Case KeyCode
                  Case 33:  'Page up
                       Form_�}�ʉ��.Width = Form_�}�ʉ��.Width + 600
                       Form_�}�ʉ��.Height = Form_�}�ʉ��.Height + 600
                 
                  Case 34: 'Page down
                       Form_�}�ʉ��.Width = Form_�}�ʉ��.Width - 600
                       Form_�}�ʉ��.Height = Form_�}�ʉ��.Height - 600
            
                  Case 110: ZZ = 71: ' .
                  End Select
              '    RET = MsgBox("Alt + " + SS$, 0, "KeyDown")
          
          
          
          End Select

          If ZZ < 10 Then ZZ = 10
          VSPrt�}��.Zoom = ZZ
    
          VSPrt�}��.SetFocus

End Sub





'===============================================================================================================================================
Private Sub DXF�}�ʕ`��(�}��$, �}�ʗp��$, �`��p��$)
     
     
'===============================================================================================================================================
     
     Dim Obj As Object
     
     ' VSPrinter �g�p
     Set Obj = Form_�}�ʉ��.VSPrt�}��
     
     
     �}��page = �}��page + 1
      
     W1 = Form_�}�ʉ��.Width - Form_�}�ʉ��.File�}��dxf.Width
           
           �F = QBColor(0)
           
           
           Select Case �}�ʗp��$
                Case "A0": �}�ʗp���� = 1188: ' 1188*840
                Case "A1": �}�ʗp���� = 841: '841*594
                Case "A2": �}�ʗp���� = 594: '594*420
                Case "A3": �}�ʗp���� = 420: '420*297
                Case "A4": �}�ʗp���� = 297: '297*210
                Case Else: �}�ʗp���� = 594
                End Select
           
         '  ER ("�`��p��$"):              If ����CK > 99 Then Stop
         '****************************************************************
           Select Case �`��p��$
                Case "A4": Obj.PaperSize = pprA4: �p���� = 297
                Case "A3": Obj.PaperSize = pprA3: �p���� = 420
                Case Else: Obj.PaperSize = pprA3: �p���� = 420
                End Select
         '****************************************************************
           
           �`��k�ڌW�� = �}�ʗp���� / �p����
           
           Select Case OLD�`��p��$
           Case "": ' �}��page = �}��page + 1: Cbx�}��.AddItem �}��$: ����Index(�}��page) = �}��page
           Case �`��p��$:
           Case Else: Obj.NewPage: �}��page = �}��page + 1: ����Index(�}��page) = �}��page '  Cbx�}��.AddItem �}��$: ����Index(�}��page) = �}��page
           End Select
           
           
           OLD�`��p��$ = �`��p��$
           'Obj.MarginBottom = -200 * Twip
           Obj.Orientation = 1: ' �p����
           
           If �}��page <= 1 Then Obj.StartDoc
           
           
           �}��ZoomSize = 0.98 * 100 * W1 / (�p���� * twip)
           Obj.Zoom = �}��ZoomSize
           Obj.ZoomMax = 800
           Obj.PenColor = �F
           Obj.TextColor = �F
           Obj.TextAlign = 0
   
           'Obj.ScaleOutput = 50
           Obj.BrushStyle = 1:  ' 0 �h��Ԃ� 1 ���� 2 ���� 3 �c�� 4 �ΐ�/  5 �ΐ��t/  6 �۽(����)  7 �۽(�΂�)

           Obj.ColorMode = 1: ' �ɸ�
           Obj.MarginTop = 0: Obj.MarginBottom = 0:  Obj.MarginLeft = 0:   Obj.MarginRight = 0
     
     �����{�� = 0.06
     
     ���H = Obj.PageHeight - 3 * twip
     �}�ʉ��H = Obj.PageHeight - 5 * twip
     
    ' ReDim Ds$(50), Di(50)
     
        Form_�}�ʉ��.Cbx�}��.AddItem �}��$
        ����Index(�}��page) = �}��page
     
     iFN$ = �}��$: ' "���}1F.DXF": '  OFN$ = fn$
     ' �`��k�� = 1.514 * �}�ʏk�� / twip
     
     �`��k�� = 3: ' ���ɕK�v
     
     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
      
      
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_����(iFN$, TEMP_F$)
      
      
      Open TEMP_F$ For Input As #2
      
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         Da$ = Trim$(Da$)
         Select Case Da$
         Case "0": ' Secttion
                  Input #2, ����$
                  Select Case ����0$
                  Case "": DD2$ = ""
                  Case "LINE": 'DD2$ = "l:" & X1$ & "," & Y1$ & "," & X2$ & "," & Y2$
                  
                            'Call PLine(Obj, SX1, SY1, SX2, SY2)
                               Obj.DrawLine SX1, SY1, SX2, SY2
                   Case "TEXT": 'DD2$ = "��:" & X1$ & "," & Y1$ & "," & �p�x50$ & "," & "L" & "," & ����$
                               
                               Font_s = �����{�� * D����H: If Font_s <= 1 Then Font_s = 1
                               Obj.FontSize = Font_s
                               Select Case �����ʒu$
                                    Case "����": MojW = Obj.TextWidth(����$) / 2: TEXT_X = SX2: TEXT_Y = SY2
                                    Case "�E�[": MojW = Obj.TextWidth(����$):     TEXT_X = SX2: TEXT_Y = SY2
                                    Case Else: MojW = 0:                         TEXT_X = SX1: TEXT_Y = SY1
                                    End Select
                               
                               MojH = Obj.TextHeight(����$)
                                �����ʒu$ = ""
                               
                               Select Case S�p�x50
                                    Case 0:       SN2 = 0: CS2 = 1
                                    Case 90:      SN2 = 1: CS2 = 0
                                    Case 180:     SN2 = 0: CS2 = -1
                                    Case 270:     SN2 = -0: CS2 = 0
                                    Case 360:     SN2 = 0: CS2 = 1
                                    Case Else:    SN2 = Sin(rad(S�p�x50)): CS2 = Cos(rad(S�p�x50))
                                    End Select
                               
       
                                  SNH = Sin(rad(S�p�x50 + 90)): CSH = Cos(rad(S�p�x50 + 90))
                                  SNW = Sin(rad(S�p�x50)): CSW = Cos(rad(S�p�x50))
                                  DX = MojH * CSH - MojW * CSW:
                                  DY = MojH * SNH - MojW * SNW
                               
                               
                               Obj.CurrentX = TEXT_X + DX
                               Obj.CurrentY = TEXT_Y - DY
                               
                               Obj.TextAngle = 10 * S�p�x50
                               If Obj.CurrentY > ���H Then Obj.CurrentY = ���H
                               Obj.TEXT = ����$
                  
                  Case "CIRCLE": ' DD2$ = "cir:" & X1$ & "," & Y1$ & "," & f3$(���a)
                               Obj.DrawCircle SX1, SY1, ���a
                  
                  Case "ARC": 'DD2$ = "arc1:" & X1$ & "," & Y1$ & "," & f3$(���a) & "," & �p�x50$ & "," & �p�x51$
                               Obj.DrawCircle SX1, SY1, ���a, rad(S�p�x50), rad(S�p�x51)
                  
                  
                  Case "POINT": ' DD2$ = "�_:" & X1$ & "," & Y1$
                               Obj.DrawCircle SX1, SY1, 0.15 * twip
                               Obj.DrawCircle SX1, SY1, 0.3 * twip
                  Case Else: DD2$ = ""
                  
                  End Select
                  
                    ����0$ = ����$
                   'Call �ϊ��o��(DD2$): ����0$ = ����$
         
         Case "1":  Line Input #2, ����$: ' ����$ = �t�u�����N(����$): ����$ = �V�t�g7(����$)

         
         
         Case "8":  Input #2, ���C��$
         Case "6":  Input #2, ����$
                    If ����$ <> ����0$ Then
                        Select Case ����$
                        Case "CONTINUOUS": DD2$ = "con:":  Obj.PenStyle = 0
                        Case "DOT": DD2$ = "dot:":         Obj.PenStyle = 2
                        Case "CENTER1": DD2$ = "cen:":     Obj.PenStyle = 3
                        Case Else: DD2$ = "����:" & ����$: Obj.PenStyle = 0
                        End Select
                    'Call �ϊ��o��(DD2$): ����0$ = ����$
                    End If
         
         Case "9": Input #2, Da$
                   '********************************************
                   '    Print #19, "  9": Print #19, "$EXTMAX"
                   '   Print #19, " 10": Print #19, 59400 * ZU_Scale / 100
                   '   Print #19, " 20": Print #19, 42000 * ZU_Scale / 100
                   If UCase$(Da$) = "$EXTMAX" Then
                       Input #2, D1$, D2$
                       '�}�ʏk�� = Val(D2$) / 594
                       �}�ʏk�� = Val(D2$) / 841
                       '%%%%%%%%%%%
                       �`��k�� = �`��k�ڌW�� * �}�ʏk�� / twip
                       If �`��k�� = 0 Then �`��k�� = 100
                       End If
         
         
         Case "62": Input #2, ���F$
                    ' 1:       2:��   3:��   4:��   5:��   6:��   7:��
                    If ���F$ <> ���F0$ Then
                        Select Case ���F$
                        Case "2": DD2$ = "�F:��": Obj.PenColor = QBColor(6)
                        Case "3": DD2$ = "�F:��": Obj.PenColor = QBColor(2)
                        Case "4": DD2$ = "�F:��": Obj.PenColor = QBColor(9)
                        Case "5": DD2$ = "�F:��": Obj.PenColor = QBColor(1)
                        Case "6": DD2$ = "�F:��": Obj.PenColor = QBColor(5)
                        Case "7": DD2$ = "�F:��": Obj.PenColor = QBColor(0)
                        Case Else: DD2$ = "�F:��": Obj.PenColor = QBColor(0)
                        End Select
                    'Call �ϊ��o��(DD2$): ���F0$ = ���F$
                    End If
         Case "10": Input #2, X1$: SX1 = -�����_X + Val(X1$) / �`��k��
         Case "11": Input #2, X2$: SX2 = -�����_X + Val(X2$) / �`��k��
         Case "20": Input #2, Y1$: SY1 = �}�ʉ��H + �����_Y - Val(Y1$) / �`��k��
         Case "21": Input #2, Y2$: SY2 = �}�ʉ��H + �����_Y - Val(Y2$) / �`��k��
         
         Case "40": Input #2, D40$: S40 = Val(D40$) / �`��k��
                   Select Case ����$
                   Case "ARC", "CIRCLE": ���a = S40
                   Case "TEXT": ����H$ = D40$: D����H = S40:
                        'If ����H$ <> ����H0$ Then DD2$ = "��H:" & F2$(D����H): Call �ϊ��o��(DD2$): ����H0$ = ����H$
                   Case "LTYPE":
                   Case "STYLE":
                   Case "SECTION":
                   Case Else: er ("[40�� ����=" & ����$ & "�ް�=" & D40$):  If ����CK > 99 Then Stop
                   End Select
         Case "41": Input #2, �������䗦$
         
         Case "50": Input #2, �p�x50$: S�p�x50 = Val(�p�x50$)
         Case "51": Input #2, �p�x51$: S�p�x51 = Val(�p�x51$)
         Case "72": Input #2, �����ʒu$
                   Select Case �����ʒu$
                   Case "1": �����ʒu$ = "����"
                   Case "2": �����ʒu$ = "�E�["
                   Case Else: ' ER ("�����ʒu [" & �����ʒu & "]"): ' Stop
                   End Select
         Case Else: If EOF(2) Then Exit Do Else Input #2, DD$
         End Select
         Loop
     
     Close #2
     
     Obj.NewPage
     
         Obj.PreviewPage = �}��page
         'txtPage.TEXT = vsPrt1.PreviewPage
         
         
 '###        Obj.SetFocus
     
     
     
     '  Obj.EndDoc
     
     
     End Sub



'***************************************
'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�Ǎ�DXF(FN$)
'��������������������������������������������������������������������������������������������������������������������������������������
Sub �Ǎ�DXF(FN$)
     
     VVV$ = "V1.01  1995_06_07"
     '  DXF ��  �ǂ݂₷�� DX2 �ɕϊ����܂�
     'Call dsk
     'Pend = 260
     iFN$ = FN$: Ofn$ = FN$
     

     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
     If InStr(Ofn$, ":") = 0 Then Ofn$ = Data_dsk + Ofn$
     n = InStr(Ofn$, "."): If n > 0 Then Ofn$ = Mid$(Ofn$, 1, n - 1)
         Ofn$ = Ofn$ + ".DX2"
     
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_����(iFN$, TEMP_F$)
     
   '  GoSub START
   
  '   Exit Sub


   'START: '.......................
      
      Open TEMP_F$ For Input As #2
      Open Ofn$ For Output As #3
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         If Da$ = "  0" Then
            If Data1$ <> "" Then Print #3, f$(lnumner, 7); " "; Data1$: Data1$ = "": LN2 = LN2 + 1
            lnumner = Ln1
            End If
         Data1$ = Data1$ + "|" + Da$
         Loop
         
         If Data1$ <> "" Then Print #3, Data1$: Data1$ = ""
      Close #3
      Close #2
     
    

     End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@Dxf_File_����(DXF_File��$, TEMP_F$)
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dxf_File_����(DXF_File��$, TEMP_F$)
      ' DXF File �Ɂ@Return ������
      On Error GoTo ErrorHandle ''''''''''''''' 05/04/11
      Open TEMP_F$ For Output As #3
      Open DXF_File��$ For Input As #2
          Do
            If EOF(2) Then Exit Do
            Line Input #2, Da$: Ln1 = Ln1 + 1
                Do
                    ni = InStr(Da$, Chr(10))
                    If ni = 0 Then Print #3, Da$: Exit Do
                    Print #3, Mid(Da$, 1, ni - 1)
                    Da$ = Mid(Da$, ni + 1)
                Loop
          Loop
          Close #2
          Close #3
          Exit Sub
ErrorHandle:
          Close #2
          Close #3
      
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�ϊ�DXF(FN$)
'��������������������������������������������������������������������������������������������������������������������������������������
Sub �ϊ�DXF(FN$)
     '   dxf Files��    ___.D00 (���RCode)�ɕϊ�����
     
     'Call dsk
     'Pend = 260
     
     iFN$ = FN$: Ofn$ = FN$:
     
     
     �����_X = 0: �����_Y = 0: �k�� = 100
     Da$ = InputBox("  (X0,Y0, ) �k�ڂ���͂��ĉ�����  ", "�k��", 100, 500, 500)
     Call Ddata(",", Da$, Ds$(), Di(), ni)
     Select Case ni
     Case 1: �k�� = Di(1)
     Case 3: �����_X = Di(1): �����_Y = Di(2): �k�� = Di(3)
     Case Else: er ("�ް��̌����Ⴄ "): If ����CK > 99 Then Stop
     End Select
     
     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
     
     ni = InStr(Ofn$, ":"): If ni = 0 Then Ofn$ = Data_dsk + Ofn$
     
     n = InStr(Ofn$, "."): If n > 0 Then Ofn$ = Mid$(Ofn$, 1, n - 1)
         Ofn$ = Ofn$ + ".D00"

      
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_����(iFN$, TEMP_F$)
      
      
      
    '  Open iFN$ For Input As #2
      Open TEMP_F$ For Input As #2
      Open Ofn$ For Output As #3
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         Da$ = Trim$(Da$)
        ' ER (DA$)
         
        ' Stop
         
         Select Case Da$
         Case "0": ' Secttion
                    Input #2, ����$
                  Select Case ����0$
                  Case "": DD2$ = ""
                  Case "LINE": DD2$ = "��Li:" + FD4(DX1, DY1, DX2, DY2): '
                  Case "TEXT": DD2$ = "�ώ�:" + FD3(DX1, DY1, S�p�x50) + ",L," + ����$
                  Case "CIRCLE": DD2$ = "��Cir:" + FD3(DX1, DY1, ���a)
                  Case "ARC": DD2$ = "��Arc1:" + FD5(DX1, DY1, ���a, S�p�x50, S�p�x51)
                  Case "POINT": DD2$ = "�ϓ_:" + FD2(DX1, DY1):
                  Case Else: DD2$ = ""
                  'ER (DA$): 'Stop
                  End Select
                  
                   Call �ϊ��o��(DD2$): ����0$ = ����$
         
         Case "1":  Line Input #2, ����$: ����$ = �t�u�����N(����$): ����$ = �V�t�g7(����$)

         Case "8":  Input #2, ���C��$
         Case "6":  Input #2, ����$
                    If ����$ <> ����0$ Then
                        Select Case ����$
                        Case "CONTINUOUS": DD2$ = "con:"
                        Case "DOT": DD2$ = "dot:"
                        Case "CENTER1": DD2$ = "cen:"
                        Case Else: DD2$ = "����:" & ����$
                        End Select
                    Call �ϊ��o��(DD2$): ����0$ = ����$
                    End If
         
         Case "9": Input #2, Da$
                   '********************************************
                   '    Print #19, "  9": Print #19, "$EXTMAX"
                   '   Print #19, " 10": Print #19, 59400 * ZU_Scale / 100
                   '   Print #19, " 20": Print #19, 42000 * ZU_Scale / 100
                   If UCase$(Da$) = "$EXTMAX" Then
                       Input #2, D1$, D2$
                       �}�ʏk�� = 100 * Val(D2$) / 59400
                       �`��k�� = �`��k�ڌW�� * �}�ʏk�� / twip
                       End If
         
         Case "62": Input #2, ���F$
                    ' 1:       2:��   3:��   4:��   5:��   6:��   7:��
                    If ���F$ <> ���F0$ Then
                        Select Case ���F$
                        Case "2": DD2$ = "�F:��"
                        Case "3": DD2$ = "�F:��"
                        Case "4": DD2$ = "�F:��"
                        Case "5": DD2$ = "�F:��"
                        Case "6": DD2$ = "�F:��"
                        Case "7": DD2$ = "�F:��"
                        Case Else: DD2$ = "�F:��"
                        End Select
                    Call �ϊ��o��(DD2$): ���F0$ = ���F$
                    End If
         Case "10": Input #2, X1$: DX1 = (Val(X1$) - �����_X) / �k��:
         Case "11": Input #2, X2$: DX2 = (Val(X2$) - �����_X) / �k��:
         Case "20": Input #2, Y1$: DY1 = (Val(Y1$) - �����_Y) / �k��:
         Case "21": Input #2, Y2$: DY2 = (Val(Y2$) - �����_Y) / �k��:
         
         Case "40": Input #2, D40$: S40 = Val(D40$) / �k��
                   Select Case ����$
                   Case "ARC", "CIRCLE": ���a = S40
                   Case "TEXT": ����H$ = D40$: D����H = S40: If ����H$ <> ����H0$ Then DD2$ = "��H:" & f2$(D����H): Call �ϊ��o��(DD2$): ����H0$ = ����H$
                   Case "LTYPE":
                   Case "STYLE":
                   Case Else: er ("[40�� ����=" & ����$ & "�ް�=" & D40$): If ����CK > 99 Then Stop
                   End Select
         Case "41": Input #2, �������䗦$
         
         Case "50": Input #2, �p�x50$: S�p�x50 = Val(�p�x50$)
         Case "51": Input #2, �p�x51$: S�p�x51 = Val(�p�x51$)
         Case Else: 'ER (DA$)
               If EOF(2) Then Exit Do Else Input #2, DD$
         End Select
         
         Loop
     
     Call �ϊ��o��("/END"): 'Stop
     Close #3
     Close #2
     
     End Sub
Private Sub �ϊ��o��(Da$)
     Static Moj$
     If Da$ = "" Then Exit Sub
     If Da$ = "/END" Then
         Print #3, Mid$(Moj$, 2): Moj$ = ""
         Else
         
         
         Da2$ = "\[" & Da$ & "]":
         Moj2$ = Moj$ & Da2$
         If Len(Moj2$) + N����(Moj2$) > 120 Then Print #3, Mid$(Moj$, 2): Moj$ = ""
         Moj$ = Moj$ & Da2$
         End If
     End Sub

