Attribute VB_Name = "���r_Outdxf"
'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@���r_OutDxf                                                                                                             ��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@2003.10.27 �@�@�@�@ �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������
'
'
'
     
     ' X1         : �n�_X���W����
     ' Y1         : �n�_Y���W����
     ' X2         : �I�_X���W����
     ' Y2         : �I�_Y���W����
     ' r          : �}�`��]�����v��� +
     ' D          : �~���a�W���� ?
     ' Jda$       : �����o��
     ' Jsda$      : ���@�o�͎��̕����o��

     
     Public ZU_Scale As Single: ' �}�ʽ���   1/Zu_scale
     
     Dim �ϊ�M As Single '  �ϊ�M=����}_Scale   �}�ʂ̍�}��Ԃ̽���  1/�ϊ�M  �}�ʂ� �ʂ̽��ق̐}��`��
     Dim �}��{_Scale As Single
     Dim ����}_Scale As Single: ' �r���� Scale�̕ύX

     Public Zlayer$(1500), LAYER_N As Single
     
          Dim outdxf$: ' Output File Name
          
          Dim Data_Type$: '    Printer  Proter
          Dim �ϊ�type$:  ' DXF   SXF  ���ݖ��g�p
          
          Dim Sub�{�� As Single:  '  Sub�{�� = �}��{_Scale / ����}_Scale
          
          Dim �p��size$:                           '  A1  A2
          Dim P_�p�����_X, P_�p�����_Y As Single:  ' �p���̍�}���_ mm
          Dim P_���_X, P_���_Y As Single:          ' ���_ P_���_X = P_�p�����_X * �}��{_Scale: P_���_Y = P_�p�����_Y * �}��{_Scale
     
          Dim �y��Start�ʒu_X As Single:           ' PRINTER mode ���݂̃y��Start�ʒu
     
          Dim P_PloterX, P_PloterY As Single:      ' ���� �y���ʒu
          Dim P_���spit:                           ' ���s�߯�    2.5mm
          Dim Wda$, Wd$
          Dim ���� As String
          Dim �{��, �{��X, �{��Y, �{��M As Single

          Dim P_Layer_0 As String:                 ' ���� ڲ԰
          Dim P_Layer_�� As String:                ' ��Layer
          Dim P_Layer_�_ As String:                ' �_Layer
          Dim P_Layer_�~ As String:                ' �~Layer
          Dim P_Layer_Arc As String:               ' ArcLayer
          Dim P_Layer_���� As String:              ' ����Layer
          Dim P_Layer_���@ As String:              ' ���@Layer
          Dim P_Layer_�n�b�` As String:            ' ʯ�Layer
          
          Dim P_Layer_0_Bak As String:
          Dim P_Layer_��_Bak As String:
          Dim P_Layer_�__Bak As String:
          Dim P_Layer_�~_Bak As String:
          Dim P_Layer_Arc_Bak As String:
          Dim P_Layer_����_Bak As String:
          Dim P_Layer_���@_Bak As String:
          Dim P_Layer_�n�b�`_Bak As String:
    
    
          Dim P_����_0 As String:                  ' ���� ���̎��  CONTINUOUS   DOT  DASHED1  DASHED2   CENTER1  CENTER2 PHANTOM1 PHANTOM2
          Dim P_����_���@ As String:               ' ���@����
          Dim P_����_�n�b�` As String:             ' ʯ�����
          Dim P_����_�� As String
          Dim P_����_�~ As String
          Dim P_����_Arc As String
          
          
          Dim P_����_0_Bak As String:
          Dim P_����_���@_Bak As String:
          Dim P_����_�n�b�`_Bak As String:
          Dim P_����_��_Bak As String
          Dim P_����_�~_Bak As String
          Dim P_����_Arc_Bak As String
    
          
          Dim P_�F_0 As String:                    ' ���� ���̐F�i�����j  1:       2:��   3:��   4:��   5:��   6:��   7:��
          Dim P_�F_�� As String:                   ' ���F
          Dim P_�F_�_ As String:                   ' �_���F
          Dim P_�F_�~ As String:                   ' �~���F
          Dim P_�F_Arc As String:                  ' Arc���F
          Dim P_�F_���� As String:                 ' �����F
          Dim P_�F_���@ As String:                 ' ���@�F
          Dim P_�F_�n�b�` As String:               ' ʯ��F

          Dim P_�F_0_Bak As String:
          Dim P_�F_��_Bak As String:
          Dim P_�F_�__Bak As String:
          Dim P_�F_�~_Bak As String:
          Dim P_�F_Arc_Bak As String:
          Dim P_�F_����_Bak As String:
          Dim P_�F_���@_Bak As String:
          Dim P_�F_�n�b�`_Bak As String:

          
          Dim P_����_size_0 As Single:             ' ���� ��������mm
          Dim P_��Big_Font As Single
          Dim P_Big_Font As Single
          Dim P_Middle_Font As Single
          Dim P_Small_Font As Single
          Dim P_��Small_Font As Single
          
          Dim P_���@_Msize As Single:              ' ���@ ��������

          Dim P_����_size_0_Bak As Single
          Dim P_��Big_Font_Bak As Single
          Dim P_Big_Font_Bak As Single
          Dim P_Middle_Font_Bak As Single
          Dim P_Small_Font_Bak As Single
          Dim P_��Small_Font_Bak As Single
          Dim P_���@_Msize_Bak As Single

          Dim P_Mdx As Single:   ' mm �����̂���
          Dim P_Mdy As Single:   '

          Dim P_���@_�[�� As String:            '  ���@_�[����ϰ��̎w��    .  ��   ���   ����
          Dim P_���@_�[��_��_size As Single:    '  ���@_�[����ϰ��� ��� mm
          Dim P_���@_�[��_��_�p�x As Single:    '  ���@_�[����ϰ��� �p�x(�x)
          Dim P_���@_�l_�����_���� As Integer:  '  ���@_�l_�����_����   exp 2  1  0
          Dim P_���@_�⏕��_�o As Single:       '  ���@_�[���̕⏕����_�o��� mm

          Dim P_�S�،a_�{�� As Single:             ' �S�،a�̍�}�{��


          Dim P_��_Mark$:                       '  �} Mark    L  <
          Dim P_��_���� As Single:              '  �} ��󒷂�mm
          Dim P_��_�p�x As Single:              '  �} ���p�x �x


     
     
          Dim MXp(3000) As Single:       ' �������� X���W�̋L��
          Dim MYp(3000) As Single:       ' �������� Y���W�̋L��
     
          Dim Ds11$(500)
          Dim XX1(500), YY1(500), XX2(500), YY2(500), ��t(500), �Et(500)
          Dim RR1(500)
     
     
     Dim oo


'��������������������������������������������������������������������������������������������������������������������������������������
'��   UXF_�ϊ�                                                                                                                       ��
'��������������������������������������������������������������������������������������������������������������������������������������

Sub UXF_�ϊ�(Input_F$, Output_F$)
    ' ڲ԰�� File�������
    
    ' �ϊ�Type$    DXF    SXF  ���g�p
    ' Data_Type$  Protor  Printer
    ' �p��Size$   A1  A2
    ' ZU_Scale    �}�ʽ���   1/Zu_scale
    
    outdxf$ = Output_F$
    
    �ϊ�type$ = "Dxf"
    Data_Type$ = "Proter":  '  Printer  Proter
    �p��size$ = "A1"
    ZU_Scale = 0
    LAYER_N = 0
    
    'Call Dxf_start(Output_F$, LAYER_N, Zlayer$())
    'Call PROTER�����l
    
           '**************************************************************************
           On Error Resume Next
                Close #61
                On Error GoTo 0
           '**************************************************************************
    
    
    Open Input_F$ For Input As #61
    
    Do: If EOF(61) Then Exit Do
       Line Input #61, Da$: Da$ = RTrim$(Da$)
       If UCase$(Mid$(Trim(Da$), 1, 4)) = "/END" Then Exit Do
       Call PRINTER1(Da$)
       
       Loop
    
    Close #61
    Call Dxf_End
    End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��   PROTER�����l                                                                                                                   ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub PROTER�����l()
     ' Data_Type$    Printer  Proter
    
    �ϊ�M = �}��{_Scale
    Sub�{�� = 1:  ' Sub�{�� = �}��{_Scale / ����}_Scale
    
    
    P_Layer_0 = Zlayer$(1):            ' PRINTER mode ڲ԰
    P_����_0 = "CONTINUOUS":      ' PRINTER mode ���̎��  CONTINUOUS   DOT  DASHED1  DASHED2   CENTER1  CENTER2 PHANTOM1 PHANTOM2
    P_����_size_0 = 2.5:                ' PRINTER mode ��������mm
    'P_���@_Msize = 2.5:                ' PRINTER mode ��������mm
    P_�F_0 = "7":                   ' PRINTER mode ���̐F�i�����j  1:       2:��   3:��   4:��   5:��   6:��   7:��
    �y��Start�ʒu_X = 0:                    ' PRINTER mode ���݂̃y��Start�ʒu
    
    Select Case UCase(Data_Type$)
         Case "PRINTER": P_�p�����_X = 0: P_�p�����_Y = 420: ' mm
         Case Else:    P_�p�����_X = 0: P_�p�����_Y = 0: ' mm
         End Select
    
    P_���_X = P_�p�����_X * �}��{_Scale: P_���_Y = P_�p�����_Y * �}��{_Scale:
    P_PloterX = P_���_X: P_PloterY = P_���_Y:   ' PRINTER mode ���݂̃y���ʒu
    
    �{�� = 1 * �}��{_Scale: �{��X = 1 * �}��{_Scale: �{��Y = 1 * �}��{_Scale: �{��M = 1
    
         P_���spit = 2.5 * �{��Y:           ' ���s�߯�
         Xline = 175 * �{��X:               ' ���r������ mm
         Line_XL = 175 * �{��X:             ' �w�薳����line����mm
         
         
         P_Layer_�� = P_Layer_0:              ' ��Layer
         P_Layer_�_ = P_Layer_0
         P_Layer_�~ = P_Layer_0
         P_Layer_Arc = P_Layer_0
         P_Layer_���� = P_Layer_0:            ' ����Layer
         P_Layer_���@ = P_Layer_0:             ' ���@Layer
         P_Layer_�n�b�` = P_Layer_0:          ' ʯ�Layer
    
         P_����_���@ = P_����_0:         ' ���@����
         P_����_�n�b�` = P_����_0:       ' ʯ�����
         P_����_�� = P_����_0
         P_����_�~ = P_����_0
         P_����_Arc = P_����_0
    
         P_�F_�� = P_�F_0:                 ' ���F
         P_�F_�_ = P_�F_0
         P_�F_�~ = P_�F_0
         P_�F_Arc = P_�F_0
         P_�F_���� = P_�F_0:               ' �����F
         P_�F_���@ = P_�F_0:               ' ���@�F
         P_�F_���@ = 5:              ' ���@�F ****
         P_�F_�n�b�` = P_�F_0:             ' ʯ��F
    
         P_����_size_0 = 2.5
         P_��Big_Font = 7
         P_Big_Font = 3.5
         P_Middle_Font = 2.5
         P_Small_Font = 2
         P_��Small_Font = 1
         
         P_Mdx = 0: ' mm
         P_Mdy = 0.3: '######## Auto Cad �p
    
    
         P_���@_Msize = 2.5:              ' ���@_Msize  mm
         P_���@_�[�� = ".":          '  ���@_�[����ϰ��̎w��  .  ��   ���   ����
         P_���@_�[��_��_size = 2.5:  '  ���@_�[����ϰ��� ��� mm
         P_���@_�[��_��_�p�x = 15:   '  ���@_�[����ϰ��� �p�x(�x)
         P_���@_�l_�����_���� = 1: '  ���@_�l_�����_����   exp 2  1  0
         P_���@_�⏕��_�o = 0:        '  ���@_�[���̕⏕����_�o��� mm
    
         P_�S�،a_�{�� = 1:           ' �S�،a�̍�}�{��
         P_��_Mark$ = "<":            '  �} Mark    L  <
         P_��_���� = 3:               ' �} ��󒷂�mm
         P_��_�p�x = 15:              ' �} ���p�x �x
    
    Call �ݒ�_�L��_Out
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D���C���ԍ�(�ԍ�)
   '* �����\��
    ���C���ԍ� = Int(�ԍ�)
    If ���C���ԍ� < 1 Then ���C���ԍ� = 1
    If ���C���ԍ� > LAYER_N Then ���C���ԍ� = LAYER_N
    P_Layer_0 = Zlayer$(���C���ԍ�)
    End Sub
Sub Dlayer(LAYER1$)
   '* �����\��
    P_Layer_0 = LAYER1$
         P_Layer_�� = P_Layer_0:              ' ��Layer
         P_Layer_�_ = P_Layer_0
         P_Layer_�~ = P_Layer_0
         P_Layer_Arc = P_Layer_0
         P_Layer_���� = P_Layer_0:            ' ����Layer
         P_Layer_���@ = P_Layer_0:             ' ���@Layer
         P_Layer_�n�b�` = P_Layer_0:          ' ʯ�Layer
    
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dcolor(Color1$)
   '* �����\��
     ' 1:       2:��   3:��   4:��   5:��   6:��   7:��

    Select Case Color1$
    Case "2", "�", "��": P_�F_0 = "2"
    Case "3", "�", "��": P_�F_0 = "3"
    Case "4", "�", "��": P_�F_0 = "4"
    Case "5", "�", "��": P_�F_0 = "5"
    Case "6", "�", "��": P_�F_0 = "6"
    Case "7", "�", "��": P_�F_0 = "7"
    Case Else: er ("Dxf P_�F_0 = " & Color1$):: If ����CK > 99 Then Stop
    End Select
    
         P_�F_�� = P_�F_0:                 ' ���F
         P_�F_�_ = P_�F_0
         P_�F_�~ = P_�F_0
         P_�F_Arc = P_�F_0
         P_�F_���� = P_�F_0:               ' �����F
    
    
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub DLineStyle(LineStyle1$)
   '* �����\��
    P_����_0 = LineStyle1$
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub DFontSize(FontSize1)
   '* �����\��
    P_����_size_0 = FontSize1
    
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub ���_Pmode(X0, Y0)
    P_�p�����_X = X0: P_�p�����_Y = Y0: ' mm
     
     P_���_X = P_�p�����_X * �}��{_Scale: P_���_Y = P_�p�����_Y * �}��{_Scale
     'P_PloterX = P_���_X: P_PloterY = P_���_Y

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   PRINTER1                                                                                                                       ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub PRINTER1(Da$)
    
   ' ReDim D(50)
       
       Select Case UCase$(Mid$(LTrim$(Da$), 1, 1))
       Case "'":
       Case "/":  D2$ = Mid$(Da$, 4)
           Select Case UCase$(Mid$(LTrim$(Da$), 1, 4))
           'Case "/END": 'Exit Do
           Case "/DO:": Da$ = Trim$(Da$): �� = Val(Mid$(Da$, 5))
                           ni = InStr(Da$, " "): If ni = 0 Then er (Da$ + " ���ݸ���v�Ȃ�"): If ����CK > 99 Then Stop
                        
                        Da$ = Trim$(Mid$(Da$, ni)): DATA01$ = "": DATA02$ = Da$
                        ni2 = InStr(Da$, "___")
                        If ni2 > 1 Then DATA01$ = Mid$(Da$, 1, ni2 - 1): DATA02$ = Mid$(Da$, ni2 + 3)
                        If ni > 0 And �� > 0 Then
                            If DATA01$ <> "" Then Call DXFprintermode(DATA01$)
                            For III1 = 1 To ��: Call DXFprintermode(DATA02$)
                            Next III1
                            End If
           Case "/PAG": ' Call PPAGE(t1$, Otpgs, Pout())
           Case "/PEN": 'Printer.EndDoc
           Case "/KPA": ' Call KPAGE(t1$, Otpgs, Pout())
           Case "/LMM": 'If PrI <> "N" Then Wda$ = Mid$(DA$, 6): Call LmM(Wda$)
           Case "/LMK": 'If PrI <> "N" Then Wda$ = Mid$(DA$, 6): Call LAmi(Wda$, 0)
           Case "/AMI", "/LMA": ' If PrI <> "N" Then Wda$ = Mid$(DA$, 6): Call LAmi(Wda$, 5)
           Case "/LIN": er ("/Line �ż"):: If ����CK > 99 Then Stop
           Case "/P=" To "/P=ZZZ": Npage = Val(Mid$(Da$, 4)): Otpgs = ""
           Case "/T" To "/TZZZ": T1$ = Mid$(Da$, 4)
           Case "/STA": 'Call syokiti:
           Case "/������": ' Call KPAGE(t1$, Otpgs, Pout())
           Case "/NOP": ���y�[�W = "N": ' NOPAGE
           Case "/DXF": DXF = "D":      ' ������Point����[���牺�[�ɕύX
           Case "/�{�� ": ' �{�� = Val(Mid$(DA$, 5)) / 100: ' �{��=1.0  �g�奏k��
                      '    �{��X = �{��: �{��Y = �{��
                      '    P_����_size_0 = �{�� * P_����_size_0:  ' ̫�Ļ���
           Case "/���_[": Call Ddata(",", Mid$(Da$, 5), Ds$(), Di(), Data_n)
                          P_���_X = Di(1) * �}��{_Scale: P_���_Y = Di(2) * �}��{_Scale
                          P_PloterX = P_���_X: P_PloterY = P_���_Y
           Case Else: er ("[[[ ������Ӱ�� ]]]  " + Da$): If ����CK > 99 Then Stop
           End Select
       Case Else: 'If Printer.CurrentY > 280 Then Call PPAGE(t1$, Otpgs, Pout())
         '  If Mid$(LTrim$(Da$), 1, 1) <> "'" Then P_PloterX = �y��Start�ʒu_X: Call DXFprintermode(Da$)
           If Mid$(LTrim$(Da$), 1, 1) <> "'" Then Call DXFprintermode(Da$)
       End Select

    End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub DXFPmode(Da$)
    DXFprintermode (Da$)
    End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��   DXFprintermode                                                                                                                 ��
'��������������������������������������������������������������������������������������������������������������������������������������
Private Sub DXFprintermode(WDATA$)
    
    ' �����P�ʂ͐}�ʏ��mm
    
    
    ' Wda$="����\#A67\#u����\���
    '
    ' \#A____     �ж� mm
    ' \#K____     �r��+�ж� mm
    ' \#u������   ��ް ��
    '
    '
    '  (Dx,Dy,)�͌��݈ʒu����̽��Ĉʒu�̈ړ�
    '
    '  XL,YL   ���Ĉʒu����̒���

    ' [Scale:����]                   Scale=1/����
    ' [���_:X0,Y0]                   �}�̌��_�ʒu�̕ύX          X0,Y0  mm
    ' [Arc1:(Dx,Dy,)r,r1,r2]         ���ar�̱����  r1(��) ���� r2(��) �֕`��
    ' [arc1:(Dx,Dy,)r,r1,r2]         ���ar�̱����  r1(��) ���� r2(��) �֕`��
    ' [Arc3:X2,Y2,X3,Y3]             3�_��ʂ鱰���`��  X1,Y1�͌��݂�Point  Point��X3,Y3�Ɉړ�
    ' [arc3:X2,Y2,X3,Y3]             3�_��ʂ鱰���`��  X1,Y1�͌��݂�Point  Point�����̈ʒu�ɖ߂�
    ' [B:(Dx,DY,)BX,BY]              Box��`��
    ' [b:(Dx,DY,)BX,BY]              Box��`��  Point�����̈ʒu�ɖ߂�
    ' [Cir:(Dx,Dy,)r]                �~��`��
    ' [cir:(Dx,Dy,)r]                �~��`��  Point�����̈ʒu�ɖ߂�
    ' [cen:]                         [Ltype:CHA] �Ɠ���
    ' [con:]                         [Ltype:CON] �Ɠ���
    ' [dot:]                         [Ltype:DOT] �Ɠ���
    ' [Dstyle:__]                    0:����  2:�_��  5:����  Ltype�Ɠ����@�\
    ' [Dwidth:__]                    ����
    ' [Fstyle:__]
    ' [L:XL,YL|XL,YL|____]      Line��`��
    '                        [L:XL],[L:] �� [L:0,-0.3,Line_XL,0] �Ɠ���
    ' [L:S:(Dx,DY,)XL,YL|(Dx,DY,)XL,YL|___]      Line��`��
    ' [L:r_:(Dx,DY,)XL,YL|(Dx,DY,)XL,YL|____]     Line��`��    r>0  ��Ű����������
    ' [l:(Dx,DY,)XL,YL]               Line��`�� Point�����̈ʒu�ɖ߂�
    '                                [l:XL],[l:] �� [l:0,-0.3,Line_XL,0] �Ɠ���
    
    ' [Lr:XL,YL,r|______]            r(���a)
    ' [L2:��$:XL,YL,t(,tR)|____]     2�d����`��  ��=t       ��$ ( [ or ] or  [] ) �[���̏���                   H14.8.17
    ' [l2:��$:XL,YL,t(,tR)|____]     2�d����`��  ��=t Point�����̈ʒu�ɖ߂�     H14.8.17
    ' [Ltype:___]                    ����I�� 3����    CONtinue  DOT  CHAin 1DOt  2DOt  WHIte BLAck
    ' [me:no]                        �������� ���W�̋L��  no < 1000
    ' [mx:no]                        �������� ���W�̋L��  X���W�̂݋L�� no < 1000
    ' [my:no]                        �������� ���W�̋L��  Y���W�̂݋L�� no < 1000
    ' [Msize:___]                    �����T�C�Y�w��
    ' [DMsize:___]                   �����T�C�Y�w��mm
    ' [��H:__]                       �����T�C�Y�w��mm
    ' [Mtype:___]                    ������ގw��   �W������  �l�r ����
    
    ' [P0:]                          ���_�ɖ߂�
    ' [P:X,Y]                        �ʒu�w���΍��W �߲�Ĉړ�
    ' [p:Dx,Dy]                      ���݈ʒu����̈ʒu�w��(���΍��W) �߲�Ĉړ�
    ' [pm:Dx,Dy]                     ���݈ʒu����̈ʒu�w��(���΍��W) �߲�Ĉړ�   Dx,Dy �͗p��mm
    
    ' [R:___]                        ���s���Ă� tab___mm�̈ʒu�ɾ��
    ' [r:___]                        ���s(�����̏����n�߂̈ʒu)���Ă� tab___mm�̈ʒu�ɾ��
    ' [re:no]                        �������̋L�����W�̾��
    ' [rx:no]                        �������̋L�����W�̾�� X���W�̂ݾ��
    ' [ry:no]                        �������̋L�����W�̾�� Y���W�̂ݾ��
    ' [T:X]                          �ʒu�w�� X�����̂�
    ' [tab:__]                       ��ϰ��݈ʒu�w�� X�����̂� DXF
    ' [U:___]                        ��t����ް����
    ' [u:___]                        ��t����ް����
    ' [Ul:___]                       Line��`�� Point�����̈ʒu�ɖ߂�
    '                                [Ul:] �� [l:0,��������+0.4,Line_XL,0] �Ɠ���
    ' [��:Dx,Dy,�p�x,__]                mm
    ' [wc:moj]                       ���߲�Ĉʒu�̾����ɂ��ĕ�����`��
    ' [wr:moj]                       ���߲�Ĉʒu���獶���ɕ�����`��
    ' [XL:___]                       Line_XL �w�薳����line����(mm)���L��
    ' [_]                            _��`��
    '
    
    ' [�_:(Dx,Dy)]                     �_��`�� point�͌��ɖ߂�

    ' [�i:C,XL,YL,(xpit,ypit):___|___|____]         �������K�i��ɕ`�� point�͌��ɖ߂�
    ' [��:(Dx,Dy,)���o��:(Dx,Dy,),XL,YL,���o��,����|___|____]       ���@��`�� point�͌��ɖ߂�  ����="***" �͕�����`���Ȃ�  Point�͍ŏI�_�Ɉړ�
    
    ' [���@Arc1:r,r1,r2,S���o��,E���o��,�_$,����$]     KK
    
    ' [��:�L��,���,�����a:XL,YL,����,�ʒu$|___|____]       XL,YL mm  ���o���ŕ�����`��  �ʒu$ L C R    Point�͍ŏI�_�Ɉړ�
    ' [�:�L��,���,�����a:XL,YL,����,�ʒu$|___|____]     �(�x) ��  ���o���ŕ�����`��  Point�͍ŏI�_�Ɉړ�
    ' [<:�p�x,p1,p2,p3,____]"        P_��_Mark$, P_��_����, P_��_�p�x �ɂ��
    
    ' [�F:__]                 ��   ��   ��   ��   ��   ��            H10.3.28
    ' [ʯ�1:�߯�mm,�p�x,XL,YL]    BOX��ʯ������� Point�����̈ʒu�ɖ߂�
    ' [̯�:(Dx,Dy):XL,YL,�p�x��,D,L]       ̯���`��  D���a   L̯����� Point�����̈ʒu�ɖ߂�
    ' [�د�:(Dx,Dy),XL,YL,�p�x,�߯�]      �دĂ�`��  Point�����̈ʒu�ɖ߂�  H10.3.29
    ' [��:(Dx,Dy,)���a]      mm �~��`��  Point�����̈ʒu�ɖ߂�
    ' [��:(Dx,Dy,)���a]      mm �~(����)��`��  Point�����̈ʒu�ɖ߂�
    ' [�~:(Dx,Dy,)B(,D)]    mm �~��`��  Point�����̈ʒu�ɖ߂�  D�͏������+
    ' [�^:(Dx,Dy,)B(,D)]    mm �^��`��  Point�����̈ʒu�ɖ߂�  D�͏������+

    
    
    ' New
    ' [ڐ�:Layer]�@�@�@�@�@�@  �@P_Layer_��=��Layer
    ' [ڕ���:Layer]              P_Layer_����=����Layer
    ' [ڐ��@:Layer]              P_Layer_���@=���@Layer
    ' [�ʯ�:Layer]               P_Layer_ʯ�=Layer
    
    ' [���퐡�@:���@����]        P_����_���@=���@����
    ' [����ʯ�:ʯ�����]          P_����_ʯ�=ʯ�����
    
    ' [�F��:���F]                P_�F_��=���F
    ' [�F����:�����F]            P_�F_����=�����F
    ' [�F���@:���@�F]            P_�F_���@=���@�F
    ' [�Fʯ�:ʯ��F]              P_�F_ʯ�=ʯ��F
    '
    ' [����:B,D,�p�x,moj]       ���̒��ɕ�����`��  B,D mm
    ' [�f��:Data,�p�x,ʯ�,���{��,���{��]     Data     exp   RC 620x620    ��-250x250x12 r=30
    '                                        �p�x,  ʯ�(Y,N)  ���{��(���̔{��),  ���{��(���̔{��)
    ' [Msize���@:__]          ���@���̕���size�@mm
    
    ' [�ؒfM1:X1,Y1,X2,Y2,W,H]   �� (X1,Y1) - (X2,Y2) �ɐؒfMark1��t���� W ��mm  H ����mm
    
    ' [��{�ݒ�:_____]           ��{�ݒ�
    
    
    'P_PloterX = �y��Start�ʒu_X
    'LP_Y = P_PloterY
    
    datalp$ = ""
    'Delta_X = -4.5: Delta_Y = -4.5: '�ʒu�̒��� PRINTER
    Delta_X = 0: Delta_Y = 0: '�ʒu�̒���
    Wda$ = WDATA$
    '..... MMX1  ��ް�����@�@2001.8.24
       ' Do: ni = InStr(Wda$, "^"): If ni = 0 Then Exit Do
       '     Wda$ = Mid$(Wda$, 1, ni - 1) + "\[U:" + Mid$(Wda$, ni + 1, 1) + "]\" + Mid$(Wda$, ni + 2)
       '     ni = InStr(ni, Wda$, " ")
       '     If ni > 1 Then Wda$ = Mid$(Wda$, 1, ni - 1) + " " + Mid$(Wda$, ni)
       '     Loop
    
    
    
    Do:       ' r$ = "":
                    N00 = InStr(Wda$, "\")
                    If N00 = 0 Then Wd$ = Wda$ Else Wd$ = Mid$(Wda$, 1, N00 - 1): Wda$ = Mid$(Wda$, N00 + 1)
       
                    OLD_X = X0:  X0 = P_PloterX: Y0 = P_PloterY: �w��$ = ""
       
                    DDD1$ = Mid$(Trim(Wd$), 1, 1)
                    ni = InStr(Wd$, ":"): If ni = 0 Then DDD1$ = ""
                    If Right$(Wd$, 1) <> "]" Then DDD1$ = ""
                    If Wd$ = "[_]" Then DDD1$ = "["
            
            
       Select Case DDD1$
       Case "[":    Wd$ = Mid(Trim(Wd$), 2)
                    LN = Len(Wd$): Wd$ = Mid$(Wd$, 1, LN - 1): ' ] �����
                    
                    ni = InStr(Wd$, ":"): '  [Wd$]  ��  [Wmark$:Wd2$]     ( Wd2$  [ �� ] �͊܂܂Ȃ� )
                    Wmark$ = Wd$: WD2$ = "":    If ni > 1 Then Wmark$ = Mid$(Wd$, 1, ni - 1): WD2$ = Mid$(Wd$, ni + 1)
                    
                    Call Ddata(",", WD2$, Ds$(), Di(), Data_n)
             
                    X000 = P_PloterX: Y000 = P_PloterY
             
             
             Select Case Wmark$
            '����������������������������������������������������������������������������
            '��   ***                                                                  ��
            '����������������������������������������������������������������������������
             Case "�p��size":    �p��size$ = WD2$
             
             Case "�ϊ�type":    �ϊ�type$ = WD2$: '  Dxf Sxf
             Case "Datatype":    Data_Type$ = WD2$: ' Ploter  Printer
             
             Case "Layer":      ' exp  [Layer:ڲԖ�]
                                 LAYER_N = LAYER_N + 1
                                 Zlayer$(LAYER_N) = WD2$
             
             Case "Scale":       ZU_Scale = Di(1): If ZU_Scale <= 0 Then ZU_Scale = 1
                                 �}��{_Scale = ZU_Scale
                                 �ϊ�M = �}��{_Scale
                                 �{�� = 1 * �}��{_Scale: �{��X = 1 * �}��{_Scale: �{��Y = 1 * �}��{_Scale: �{��M = 1
             
             
             Case "Scale���":    ����}_Scale = Di(1):
                                 If ����}_Scale <= 0 Then ����}_Scale = 1
                                 Sub�{�� = �}��{_Scale / ����}_Scale:
                                 �ϊ�M = ����}_Scale: '�}��{_Scale / Sub�{��:
             
             Case "Scaleؾ��":   ����}_Scale = �}��{_Scale: �ϊ�M = �}��{_Scale:    Sub�{�� = 1
             
             Case "Start":    '  outdxf$ = WD2$
                                If �}��{_Scale = 0 Then er (" Scale �̓��͂����� "): Stop
                                If LAYER_N = 0 Then er (" ڲԖ��̓��͂����� "): Stop
                                Call Dxf_start(outdxf$, LAYER_N, Zlayer$())
                                Call PROTER�����l
                                
            
             Case "��{�ݒ�":    ' Call Ddata(",", Mid$(Da$, 5), Ds$(), Di(), Data_n)
                                Call INP����3(WD2$, ����s$, ����2s$, ����3s$)
                                Select Case ����s$
                                Case "���@�[��=": P_���@_�[�� = ����3s$
                                Case "���@Msize=": P_���@_Msize = Val(����3s$): If P_���@_Msize < 0.5 Then P_���@_Msize = 0.5
                                Case "���@�[����size=": P_���@_�[��_��_size = Val(����3s$): If P_���@_�[��_��_size < 0.1 Then P_���@_�[��_��_size = 0.1
                                Case "���@�[����p�x=": P_���@_�[��_��_�p�x = Val(����3s$)
                                Case "���@�F=": P_�F_���@ = D�F$(����3s$)
                                
                                Case "��Mark=": P_��_Mark$ = ����3s$
                                Case "��size=": P_��_���� = Val(����3s$): If P_��_���� < 0.1 Then P_��_���� = 0.1
                                Case "��p�x=": P_��_�p�x = Val(����3s$):
                                
                                Case "Msize=": P_����_size_0 = D����size_CK(Val(����3s$))
                                
                                Case Else: er ("System Uxf ��{�ݒ� " + Wda$ + " �͎g�p�ł��܂���"):   If ����CK > 99 Then Stop

                                End Select
             
             Case "�ݒ�out":   '��{�ݒ��ۑ�
                                Call �ݒ�_�L��_Out

             Case "�ݒ�in":    '��{�ݒ��߂�
                                Call �ݒ�_�L��_In
            
            '����������������������������������������������������������������������������
            '��   ���_                                                                 ��
            '����������������������������������������������������������������������������
             Case "���_":    ' Call Ddata(",", Mid$(Da$, 5), Ds$(), Di(), Data_n)
                          P_�p�����_X = Di(1): P_�p�����_Y = Di(2): ' mm
                          P_���_X = Di(1) * �}��{_Scale: P_���_Y = Di(2) * �}��{_Scale
                          
                          P_PloterX = 0: P_PloterY = 0
                          ����}_Scale = �}��{_Scale: �ϊ�M = �}��{_Scale:    Sub�{�� = 1
                          
                          'P_PloterX = P_���_X: P_PloterY = P_���_Y
             
             
            '����������������������������������������������������������������������������
            '��   ڲ�                                                                  ��
            '����������������������������������������������������������������������������
             Case "�":            P_Layer_0 = DLayer_CK(WD2$): 'Call D���C���ԍ�(Di(1)):  'ڲ԰�ݒ�
                                  P_Layer_�� = P_Layer_0: P_Layer_�_ = P_Layer_0: P_Layer_�~ = P_Layer_0: P_Layer_Arc = P_Layer_0
                                  P_Layer_���� = P_Layer_0
             
             Case "ڐ�":          P_Layer_�� = DLayer_CK(WD2$)
             Case "ړ_":          P_Layer_�_ = DLayer_CK(WD2$)
             Case "ډ~":          P_Layer_�~ = DLayer_CK(WD2$)
             Case "�arc":         P_Layer_Arc = DLayer_CK(WD2$)
             Case "ڕ���":        P_Layer_���� = DLayer_CK(WD2$)
             Case "ڐ��@":        P_Layer_���@ = DLayer_CK(WD2$)
             Case "�ʯ�":         P_Layer_�n�b�` = DLayer_CK(WD2$)
             
             
            
            '����������������������������������������������������������������������������
            '��   �~                                                                   ��
            '����������������������������������������������������������������������������
             Case "Arc1", "arc1", "��Arc1", "��arc1": ' [Arc1:(Dx,Dy,)r,r1,r2]         ���ar�̱����  r1(��) ���� r2(��) �֕`��
                       L�{ = 1: If Mid(Wmark$, 1, 1) = "��" Then X0 = 0: Y0 = 0: L�{ = ZU_Scale
                       Wd$ = Mid$(Wd$, 6): Wsign$ = ""
                       ni = InStr(Wd$, ":"): If ni > 1 Then Wsign$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                       Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                   Select Case Data_n
                       Case 3: AX0 = X0: AY0 = Y0: Arc_r = Di(1) * L�{: r1 = Di(2) * L�{: r2 = Di(3) * L�{
                       Case 5: AX0 = X0 + Di(1) * L�{: AY0 = Y0 + Di(2) * L�{:  Arc_r = Di(3) * L�{: r1 = Di(4) * L�{: r2 = Di(5) * L�{
                       Case Else:  er ("[" + Wmark$ + "] " + WDATA$): AX0 = X0: AYO = Y0: Arc_r = 0: r1 = 0: r2 = 0
                                    If ����CK > 99 Then Stop
                       End Select
                   Call Darc(Wsign$, AX0, AY0, Arc_r, r1, r2)
                   If Wmark$ = "Arc1" Or Wmark$ = "��Arc1" Then P_PloterX = AX0: P_PloterY = AY0
             
             Case "Arc1m", "arc1m": ' [Arc1m:(Dx,Dy,)r,r1,r2]         ���ar�̱����  r1(��) ���� r2(��) �֕`��  �P�� mm
                       Wd$ = Mid$(Wd$, 7): Wsign$ = ""
                       ni = InStr(Wd$, ":"): If ni > 1 Then Wsign$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                       Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                   Select Case Data_n
                       Case 3: AX0 = X0: AY0 = Y0: Arc_r = Di(1) * �ϊ�M: r1 = Di(2): r2 = Di(3)
                       Case 5: AX0 = X0 + Di(1) * �ϊ�M: AY0 = Y0 + Di(2) * �ϊ�M:  Arc_r = Di(3) * �ϊ�M: r1 = Di(4): r2 = Di(5)
                       Case Else:  er ("[" + Wmark$ + "] " + WDATA$): AX0 = X0: AYO = Y0: Arc_r = 0: r1 = 0: r2 = 0
                                    If ����CK > 99 Then Stop
                       End Select
                   Call Darc(Wsign$, AX0, AY0, Arc_r, r1, r2)
                   If Wmark$ = "Arc1m" Then P_PloterX = AX0: P_PloterY = AY0
             
             Case "Arc3", "arc3"
                   X1 = X0: Y1 = Y0
                       X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                       X3 = X1 + Di(3): Y3 = Y1 + Di(4)
                   Call Darc3("", X1, Y1, X2, Y2, X3, Y3)
                   If Wmark$ = "Arc3" Then P_PloterX = X3: P_PloterY = Y3
             
             
             Case "Cir", "cir", "��Cir", "��cir"
                       L�{ = 1: If Mid(Wmark$, 1, 1) = "��" Then X0 = 0: Y0 = 0: L�{ = ZU_Scale
                   Select Case Data_n
                   Case 1: X1 = X0: Y1 = Y0: ���a = Di(1) * L�{
                   Case 3: X1 = X0 + Di(1) * L�{: Y1 = Y0 + Di(2) * L�{: ���a = Di(3) * L�{
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): ���a = 0: If ����CK > 99 Then Stop
                   End Select
                   Call Dcircle(X1, Y1, ���a)
                   If Wmark$ = "Cir" Then P_PloterX = X1: P_PloterY = Y1
             
             
             Case "��", "��": ' ���a �p��mm
                   Select Case Data_n
                   Case 1: X1 = X0: Y1 = Y0: ���a = Di(1): Moj$ = ""
                   Case 2: X1 = X0: Y1 = Y0: ���a = Di(1): Moj$ = Ds$(2)
                   Case 3: X1 = X0 + Di(1): Y1 = Y0 + Di(2): ���a = Di(3): Moj$ = ""
                   Case 4: X1 = X0 + Di(1): Y1 = Y0 + Di(2): ���a = Di(3): Moj$ = Ds$(4)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): CIRD = 0: If ����CK > 99 Then Stop
                   End Select
                   If Wmark$ = "��" Then Call D��(X1, Y1, ���a, Moj$):
                   If Wmark$ = "��" Then Call D��(X1, Y1, ���a):
             
            '����������������������������������������������������������������������������
            '��   Box                                                                  ��
            '����������������������������������������������������������������������������
             Case "B", "b": X0 = P_PloterX: Y0 = P_PloterY
                   'Di(1) = �{��X * Di(1): Di(2) =  Di(2)
                   'Di(3) = �{��X * Di(3): Di(4) = �{��Y * Di(4)
                   BOXR = 0
                   Select Case Data_n
                   Case 4: X1 = X0 + Di(1): Y1 = Y0 + Di(2):  BOXB = Di(3): BOXH = Di(4)
                   Case 2: X1 = X0: Y1 = Y0:  BOXB = Di(1): BOXH = Di(2)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): BOXB = 0: BOXH = 0: If ����CK > 99 Then Stop
                   End Select
                   Call D_Box(X1, Y1, BOXR, BOXB, BOXH, P_Layer_0, P_����_0, P_�F_0)
                   If Wmark$ = "B" Then P_PloterX = X1: P_PloterY = Y1
             
             
            '����������������������������������������������������������������������������
            '��   �F                                                                   ��
            '����������������������������������������������������������������������������
             Case "�F": ' 1:       2:��   3:��   4:��   5:��   6:��   7:��
                                P_�F_0 = D�F$(WD2$)
                                P_�F_�� = P_�F_0: P_�F_�_ = P_�F_0: P_�F_�~ = P_�F_0: P_�F_Arc = P_�F_0
                                P_�F_���� = P_�F_0
             Case "�F��":       P_�F_�� = D�F$(WD2$)
             Case "�F�_":       P_�F_�_ = D�F$(WD2$)
             Case "�F�~":       P_�F_�~ = D�F$(WD2$)
             Case "�Farc":      P_�F_Arc = D�F$(WD2$)
             
             Case "�F����":     P_�F_���� = D�F$(WD2$)
             Case "�F���@":     P_�F_���@ = D�F$(WD2$):
             Case "�Fʯ�":      P_�F_�n�b�` = D�F$(WD2$)
             
             
             Case "Fstyle": PFillStyle = Di(1): 'Printer.FillStyle = PFillStyle
             
            '����������������������������������������������������������������������������
            '��   ����                                                                 ��
            '����������������������������������������������������������������������������
             Case "����", "Ltype": ' CONTINUOUS   DOT  DASHED1  DASHED2   CENTER1  CENTER2 PHANTOM1 PHANTOM2
                                P_����_0 = D����$(WD2$)
                                'P_����_�� = P_����_0: P_����_�~ = P_����_0: P_����_Arc = P_����_0
                                 Call D����set(P_����_0)
             
             Case "���퐡�@":    P_����_���@ = D����$(WD2$)
             Case "cen":         Call D����set("CENTER1")
             Case "cen2":        Call D����set("CENTER2")
             Case "con":         Call D����set("CONTINUOUS")
             Case "dot":         Call D����set("DOT")
             Case "1dot":        Call D����set("DASHED1")
             Case "Dstyle":
                   Select Case Di(1)
                   Case 1: P_����_0 = "CONTINUOUS"
                   Case 2: P_����_0 = "CONTINUOUS"
                   Case 3: P_����_0 = "CONTINUOUS"
                   Case Else: P_����_0 = "CONTINUOUS"
                   End Select
             Case "Dwidth": 'PDrawWidth = Di(1): 'Printer.DrawWidth = PDrawWidth
                   ' 1:       2:��   3:��   4:��   5:��   6:��   7:��
                   Select Case Di(1)
                   Case 1: P_�F_0 = "5"
                   Case 2: P_�F_0 = "4"
                   Case 3, 4: P_�F_0 = "7"
                   Case 5: P_�F_0 = "2"
                   Case Is >= 6: P_�F_0 = "6"
                   Case Else: P_�F_0 = "7"
                   End Select
             
            '����������������������������������������������������������������������������
            '��   �� Line                                                              ��
            '����������������������������������������������������������������������������
             Case "L", "l": ' [L:   :XL,YL|     ]
                   WD3$ = Mid$(Wd$, 3): RD = 0: Nline = 0: LSTART0$ = ""
                   ni = InStr(WD3$, ":")
                       If ni > 1 Then
                            D1$ = Mid$(WD3$, 1, ni - 1)
                            Select Case Mid$(D1$, 1, 1)
                            Case "S": LSTART0$ = "Y"
                            Case "r": RD = Val(Mid$(D1$, 2))
                            Case Else: er ("[L:  : " + "[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                            End Select
                            WD3$ = Mid$(WD3$, ni + 1)
                            End If
                   Do
                       WD4$ = WD3$: ni = InStr(WD4$, "|"): If ni > 1 Then WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1)
                           Call Ddata(",", WD4$, Ds$(), Di(), Data_n)
                       
                       If LSTART0$ = "Y" Then P_PloterX = X000: P_PloterY = Y000
                       Select Case Data_n
                           Case 1: X1 = P_PloterX: Y1 = P_PloterY: X2 = X1: Y2 = Y1
                                   Select Case Ds$(1)
                                   Case ".": Call DPoint(X1, Y1)
                                   Case "XL": X2 = X1 + Line_XL
                                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If ����CK > 99 Then Stop
                                   End Select
                           Case 2: X1 = P_PloterX: Y1 = P_PloterY:  X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                           Case 3: X1 = P_PloterX + Di(1): Y1 = P_PloterY + Di(2): X2 = X1: Y2 = Y1
                                   If Ds$(3) <> "." Then er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If ����CK > 99 Then Stop
                                   If RD = 0 Then Call DPoint(X1, Y1)
                           Case 4: X1 = P_PloterX + Di(1): Y1 = P_PloterY + Di(2): X2 = X1 + Di(3): Y2 = Y1 + Di(4)
                           Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If ����CK > 99 Then Stop
                           End Select
                   
                       Nline = Nline + 1: XX1(Nline) = X1: XX2(Nline) = X2: YY1(Nline) = Y1: YY2(Nline) = Y2
                       P_PloterX = X2: P_PloterY = Y2
                       If ni = 0 Then Exit Do
                       Loop
                   
                      Call DLine2(XX1(), YY1(), XX2(), YY2(), Nline, RD)
                      'Call DLine_r(ni, X(), Y(), r())
                      
                   If Wmark$ = "l" Then P_PloterX = X000: P_PloterY = Y000
                   
             Case "Lm", "lm":  ' [Lm:XL,YL,r|______]     Arc ���܂ސ�  Data �P��mm
                      WD3$ = Mid$(Wd$, 4): RD = 0: Nline = 0: LSTART0$ = ""
                      ni = InStr(WD3$, ":")
                            If ni > 1 Then
                            WD3$ = Mid$(WD3$, ni + 1)
                            End If
                   Do
                       WD4$ = WD3$: ni = InStr(WD4$, "|"): If ni > 1 Then WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1)
                           Call Ddata(",", WD4$, Ds$(), Di(), Data_n)
                       Nline = Nline + 1
                       If LSTART0$ = "Y" Then P_PloterX = X000: P_PloterY = Y000
                       Select Case Data_n
                           Case 2: XX1(Nline) = Di(1) * �ϊ�M: YY1(Nline) = Di(2) * �ϊ�M: RR1(Nline) = 0
                           Case 3: XX1(Nline) = Di(1) * �ϊ�M: YY1(Nline) = Di(2) * �ϊ�M: RR1(Nline) = Di(3) * �ϊ�M
                           Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If ����CK > 99 Then Stop
                           End Select
                   
                       If ni = 0 Then Exit Do
                       Loop
                   
                      Call P_DLine_r(Nline, X000, Y000, XX1(), YY1(), RR1())
                      
                   If Wmark$ = "lm" Then P_PloterX = X000: P_PloterY = Y000
                   
             Case "Lr", "lr":  ' [Lr:XL,YL,r|______]     Arc ���܂ސ�
                      WD3$ = Mid$(Wd$, 4): RD = 0: Nline = 0: LSTART0$ = ""
                      ni = InStr(WD3$, ":")
                            If ni > 1 Then
                            WD3$ = Mid$(WD3$, ni + 1)
                            End If
                   Do
                       WD4$ = WD3$: ni = InStr(WD4$, "|"): If ni > 1 Then WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1)
                           Call Ddata(",", WD4$, Ds$(), Di(), Data_n)
                       Nline = Nline + 1
                       If LSTART0$ = "Y" Then P_PloterX = X000: P_PloterY = Y000
                       Select Case Data_n
                           Case 2: XX1(Nline) = Di(1): YY1(Nline) = Di(2): RR1(Nline) = 0
                           Case 3: XX1(Nline) = Di(1): YY1(Nline) = Di(2): RR1(Nline) = Di(3)
                           Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If ����CK > 99 Then Stop
                           End Select
                   
                       If ni = 0 Then Exit Do
                       Loop
                   
                      Call P_DLine_r(Nline, X000, Y000, XX1(), YY1(), RR1())
                      
                   If Wmark$ = "l" Then P_PloterX = X000: P_PloterY = Y000

             Case "Li", "��Li":
                         L�{ = 1: If Mid(Wmark$, 1, 1) = "��" Then L�{ = ZU_Scale
                         Call DLine(Di(1) * L�{, Di(2) * L�{, Di(3) * L�{, Di(4) * L�{): 'X1, Y1, X2, Y2
                         P_PloterX = Di(3) * L�{: P_PloterY = Di(4) * L�{
             
             
             Case "L2", "l2": '[l2:��$:1000,0,90,120]      ��$ exp  [ (  �`         ] ) �`      [l2:��$:XL,YL,90,BB]
                    WD3$ = Mid$(Wd$, 4):  Nline = 0: ��$ = ""
                   ni = InStr(WD3$, ":")
                       If ni > 1 Then
                            ��$ = Mid$(WD3$, 1, ni - 1)
                            WD3$ = Mid$(WD3$, ni + 1)
                            End If
                   
                   XX1(1) = X000: YY1(1) = Y000
                   Do
                       WD4$ = WD3$: ni = InStr(WD4$, "|"): If ni > 1 Then WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1) Else WD3$ = ""
                           Call Ddata(",", WD4$, Ds$(), Di(), Data_n)
                         Nline = Nline + 1
                 '   X0 = P_PloterX: Y0 = P_PloterY
                   Select Case Data_n
                   Case 3: XX1(Nline + 1) = XX1(Nline) + Di(1): YY1(Nline + 1) = YY1(Nline) + Di(2): ��t(Nline) = Di(3) / 2: �Et(Nline) = Di(3) / 2
                   Case 4: XX1(Nline + 1) = XX1(Nline) + Di(1): YY1(Nline + 1) = YY1(Nline) + Di(2): ��t(Nline) = Di(3): �Et(Nline) = Di(4)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): BOXB = 0: BOXH = 0: If ����CK > 99 Then Stop
                   End Select
                   If ni = 0 Then Exit Do
                   Loop
                   
                   Call D_2�d��1(XX1(), YY1(), ��t(), �Et(), Nline, ��$)
     
                   P_PloterX = XX1(Nline + 1): P_PloterY = YY1(Nline + 1)
                   If Wmark$ = "l2" Then P_PloterX = X000: P_PloterY = Y000
             
             
            '����������������������������������������������������������������������������
            '��   �ړ�                                                                 ��
            '����������������������������������������������������������������������������
             Case "me": If Di(1) > 0 Then MXp(Di(1)) = P_PloterX: MYp(Di(1)) = P_PloterY
             Case "mx": If Di(1) > 0 Then MXp(Di(1)) = P_PloterX
             Case "my": If Di(1) > 0 Then MYp(Di(1)) = P_PloterY
             
             
             Case "P0":  P_PloterX = 0: P_PloterY = 0: ' ���_
             Case "P":  P_PloterX = (Di(1) + Delta_X): P_PloterY = (Di(2) + Delta_Y)
             Case "p":  P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
             
             Case "Pm": ' [Pm:Dx,Dy]             ���_�ʒu����̈ʒu�w�� �߲�Ĉړ�   Dx,Dy �͗p��mm
                        P_PloterX = �ϊ�M * Di(1): P_PloterY = �ϊ�M * Di(2)
             
             Case "pm": ' [pm:Dx,Dy]             ���݈ʒu����̈ʒu�w��(���΍��W) �߲�Ĉړ�   Dx,Dy �͗p��mm
                       ' P_PloterX = P_PloterX + �ϊ�M * Di(1): P_PloterY = P_PloterY + �ϊ�M * Di(2)
                        P_PloterX = P_PloterX + �ϊ�M * Di(1): P_PloterY = P_PloterY + �ϊ�M * Di(2)
             
             
             
             Case "R":  P_PloterX = �y��Start�ʒu_X + Di(1): P_PloterY = P_PloterY - P_���spit
             Case "r":  P_PloterX = OLD_X + Di(1): P_PloterY = P_PloterY - P_���spit
             
             Case "re": If Di(1) > 0 Then P_PloterX = MXp(Di(1)): P_PloterY = MYp(Di(1))
             Case "rx": If Di(1) > 0 Then P_PloterX = MXp(Di(1))
             Case "ry": If Di(1) > 0 Then P_PloterY = MYp(Di(1))
             
             Case "T":  P_PloterX = (Di(1) + Delta_X)
             Case "tab": �y��Start�ʒu_X = P_PloterX
             
             
             Case "XL": Line_XL = Di(1)
             
            '����������������������������������������������������������������������������
            '��   �_                                                                   ��
            '����������������������������������������������������������������������������
             Case "�_", "�ϓ_":           ' [�_:(Dx,Dy)]             �_��`�� point�͌��ɖ߂�
                       L�{ = 1: If Mid(Wmark$, 1, 1) = "��" Then X000 = 0: Y000 = 0: L�{ = ZU_Scale
                      Select Case Data_n
                      Case 0: X0 = X000: Y0 = Y000
                      Case 2: X0 = X000 + Di(1) * L�{: Y0 = Y000 + Di(2) * L�{
                      Case Else:  er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If ����CK > 99 Then Stop
                      End Select
                      Call DPoint(X0, Y0)
            
            '����������������������������������������������������������������������������
            '��   ʯ�                                                                  ��
            '����������������������������������������������������������������������������
             Case "ʯ�1"
                  Select Case Data_n
                     Case 4: Pit = Di(1): �p�x = Di(2): XL = Di(3): YL = Di(4)
                     Case 6: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
                             Pit = Di(3): �p�x = Di(4): XL = Di(5): YL = Di(6)
                     Case Else:  er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                     End Select
                 If Data_n = 4 Or Data_n = 6 Then
                     ni = 4
                     XX1(1) = P_PloterX: YY1(1) = P_PloterY
                     XX1(2) = XX1(1): YY1(2) = YY1(1) + YL
                     XX1(3) = XX1(1) + XL: YY1(3) = YY1(1) + YL
                     XX1(4) = XX1(1) + XL: YY1(4) = YY1(1)
                   
                   Call D_�n�b�`_1(XX1(), YY1(), ni, �p�x, Pit, P_Layer_0, P_����_0, P_�F_0, er1$)
                   End If
                   
                   P_PloterX = X000: P_PloterY = Y000
             
                      
            '����������������������������������������������������������������������������
            '��   ����                                                                 ��
            '����������������������������������������������������������������������������
             Case "G": P_���spit = Di(1)
             Case "Msize": If Di(1) > 0 Then P_����_size_0 = D����size_CK(Di(1))
             Case "Mtype": PFontName = Ds$(1): ' Printer.FontName = PFontName
             Case "Msize���@": P_���@_Msize = D����size_CK(Di(1)):
             Case "��H", "DMsize":
                      
                      If Di(1) > 0 Then P_����_size_0 = Di(1):  'Printer.FontSize = P_����_size_0

             Case "u", "U": Wd$ = Mid$(Wd$, 4)
                  Stop
                  'moj_h = Printer.TextHeight(Wd$): moj_w = Printer.TextWidth(Wd$)
                  'Printer.FontSize = 0.7 * P_����_size_0
                  P_PloterX = X0 + 0.2: P_PloterY = Y0 - 0.2
                  'Printer.Print Wd$;
                  P_PloterX = X0 + Moj_w: P_PloterY = Y0
                  'Printer.FontSize = P_����_size_0
             
             Case "_":
                      X = P_PloterX: Y = P_PloterY
                      Call Dsym��(X, Y, -P_����_size_0 / 2, 1.1 * P_����_size_0, "L", 0, "_")
                      P_PloterX = X: P_PloterY = Y
             
             Case "��", "�ώ�": '[��:Dx,Dy,�p�x,�����ʒu,Moj$]
                  'Select Case Data_n
                   
                       If Mid(Wmark$, 1, 1) = "��" Then X000 = 0: Y000 = 0: �ϊ�M = ZU_Scale
                   
                   If Data_n < 5 Then
                       er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                       Else
                       X0 = X000 + Di(1) * �ϊ�M: Y0 = Y000 + Di(2) * �ϊ�M
                      �p�x = Di(3): �����ʒu = Ds$(4)
                      Moj$ = "":
                      For ii = 5 To Data_n:  Moj$ = Moj$ & Ds$(ii):  Next ii
                      Call Dsym(X0, Y0, �����ʒu, �p�x, Moj$)
                      End If
             
             Case "CL": ' [CL:Msize,�p�x]    CL ��`��
                       P_����_size_0 = Di(1): DL = 0.2 * Di(1) * �ϊ�M: �p�x = Di(2)
                       X0 = X000: Y0 = Y000: X1 = X0 + DL * Dsin(25 + �p�x): Y1 = Y0 - DL * Dcos(25 + �p�x)
                       Call Dsym(X0, Y0, "C", �p�x, "�b")
                       Call Dsym(X1, Y1, "C", �p�x, "�k")
             
                       
             Case "wl", "wc", "wr":
                  If PrI <> "N" Then
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  Select Case Wmark$
                      Case "wl": �����ʒu = "LC"
                      Case "wc": �����ʒu = "CC"
                      Case "wr": �����ʒu = "RC"
                      End Select
                  
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n
                      WD3$ = Ds$(Mii)
                      Call Ddata(",", WD3$, Ds11$(), Di(), Data_n2)
                      Select Case Data_n2
                          Case 1: X0 = X000: Y0 = Y000: Wd$ = Ds11$(1)
                          Case 3: X0 = X000 + �{��X * Di(1): Y0 = Y000 + �{��Y * Di(2): Wd$ = Ds11$(3)
                          Case Else:  er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If ����CK > 99 Then Stop
                          End Select
                      Call Dsym(X0, Y0, �����ʒu, 0, Wd$)
     
                      Next Mii
                  End If
             
             Case "��_": '  [��_:�p�x,��,Moj$]    ��  �����̔{��  Under Line
                  Select Case Data_n
                     Case 1:  �p�x = 0: �� = 1: Moj$ = Ds(1)
                     Case 3:  �p�x = Di(1): �� = Di(2): Moj$ = Ds(3)
                     Case 4:  �p�x = Di(1): �� = Di(2): Moj$ = Ds(3) + "," + Ds(4)
                     Case Else: er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If ����CK > 99 Then Stop
                     
                     End Select
                     X0 = X000: Y0 = Y000
                     Call Dsym_Ander_Line(X0, Y0, ��, �p�x, Moj$)
                     
             
             
             Case "����": b = Di(1): D = Di(2): �p�x = Di(3): Moj$ = Ds(4)
                     ni = InStr(WD2$, Moj$)
                     Moj$ = Mid(WD2$, ni)
                     �ʒu$ = "CC": ' X0 = P_PloterX: Y0 = P_PloterY ok
                     X0 = X000: Y0 = Y000
                     Call Dsym��(X0, Y0, b, D, �ʒu$, �p�x, Moj$)
             
             Case "����": ' exp  [����:6,X1]   [����:8,90.X1]
                     'ni = InStr(WD2$, Moj$)
                     'Moj$ = Mid(WD2$, ni)
                  Select Case Data_n
                     Case 1: D = 8: �p�x = 0: Moj$ = Ds(1)
                     Case 2: D = Di(1): �p�x = 0: Moj$ = Ds(2)
                     Case 3: D = Di(1): �p�x = Di(2): Moj$ = Ds(3)
                     Case Else: er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If ����CK > 99 Then Stop
                     End Select
                     
                     X0 = X000: Y0 = Y000
                     Call Dsym��(X0, Y0, D, �p�x, Moj$)
             
             
             Case "�i", "�i��"
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  X000 = P_PloterX: Y000 = P_PloterY
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                    
                  Lxpit$ = "": Lypit$ = "": Lxypit$ = "": XL = 0: YL = 0: Xpit = 0: Ypit = 0
                  Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                  Select Case Data_n
                     Case 1: �����ʒu = Ds$(1): Lxypit$ = "Y"
                     Case 3: �����ʒu = Ds$(1): XL = �{��X * Di(2): YL = �{��Y * Di(3)
                     Case 5: �����ʒu = Ds$(1): XL = �{��X * Di(2): YL = �{��Y * Di(3)
                             Xpit = �{��X * Di(4): Ypit = �{��Y * Di(5)
                             If Ds$(4) = "P" Then Lxpit$ = "Y"
                             If Ds$(5) = "P" Then Lypit$ = "Y"
                     Case Else: �����ʒu = "": er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                     End Select
                  X11 = X0 + XL: Y11 = Y0 + YL
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n: �����p�x = 0
                      WD3$ = Ds$(Mii)
                      ni = InStr(WD3$, ":"): If Lxpit$ = "Y" Then If ni > 1 Then X11 = X11 + �{��X * Val(WD3$): WD3$ = Mid$(WD3$, ni + 1)
                      ni = InStr(WD3$, ":"): If Lypit$ = "Y" Then If ni > 1 Then Y11 = Y11 + �{��Y * Val(WD3$): WD3$ = Mid$(WD3$, ni + 1)
                      
                      ni = InStr(WD3$, ":")
                      If Lxypit$ = "Y" And ni > 1 Then
                          WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1)
                          Call Ddata(",", WD4$, Ds11$(), Di(), Data_n2)
                          Select Case Data_n2
                          Case 1: X001 = �{��X * Di(1): Y001 = 0
                          Case 2: X001 = �{��X * Di(1): Y001 = �{��Y * Di(2)
                          Case 3: X001 = �{��X * Di(1): Y001 = �{��Y * Di(2): �����p�x = Di(3)
                          Case Else: er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                          End Select
                          End If
                      
                      
                      If Wmark$ = "�i��" Then
                          X1 = X11 + X001: Y1 = Y11 + Y001
                          Call Dsym��(X1, Y1, 0, 0, �����ʒu, �����p�x, WD3$)
                          Else
                          Call Dsym(X11 + X001, Y11 + Y001, �����ʒu, �����p�x, WD3$)
                          End If
                      
                      
                      X001 = 0: Y001 = 0
                      X11 = X11 + Xpit: Y11 = Y11 + Ypit
                      Next Mii
                  
                  P_PloterX = X000: P_PloterY = Y000
             
             
            '����������������������������������������������������������������������������
            '��   ���@                                                                 ��
            '����������������������������������������������������������������������������
             
             Case "���[��":         P_���@_�[�� = WD2$:          '  ���@_�[����ϰ��̎w��  .  ��   ���   ����
             Case "�������_����":   P_���@_�l_�����_���� = Di(1)
             Case "�����size":     P_���@_�[��_��_size = Di(1): '  ���@_�[����ϰ��� ��� mm
             Case "�����p�x":     P_���@_�[��_��_�p�x = Di(1):   '  ���@_�[����ϰ��� �p�x(�x)
             
             
             Case "��Arc1": '(r, r1, r2, S���o��, E���o��, �_$, ���@�l$)
                           Arc_r = Di(1): r1 = Di(2): r2 = Di(3):  ���@��1 = Di(4) * �ϊ�M: ���@��2 = Di(5) * �ϊ�M: �_$ = Ds(6): ���@�l$ = Ds$(7)
                           Call �ݒ�_�L��_Out
                           P_Layer_0 = P_Layer_���@: P_Layer_Arc = P_Layer_���@
                           P_Layer_���� = P_Layer_���@: P_Layer_�� = P_Layer_���@: P_Layer_�_ = P_Layer_���@
                           
                           P_�F_0 = P_�F_���@: P_����_0 = P_����_���@: P_����_size_0 = P_���@_Msize
                           P_�F_�� = P_�F_���@: P_�F_Arc = P_�F_���@: P_�F_�_ = P_�F_���@
                           
                           If ���@�l$ = "***" Then ���@�l$ = ""
                           If ���@�l$ <> "" Then �_$ = �_$ + "," + ���@�l$
                           Call Darc(�_$, X0, Y0, Arc_r, r1, r2)
                                  If ���@��1 <> 0 Then
                                         Arc_r��1 = Arc_r - ���@��1
                                         X1 = X0 + Arc_r��1 * Dcos(r1): Y1 = Y0 + Arc_r��1 * Dsin(r1)
                                         X2 = X1 + ���@��1 * Dcos(r1): Y2 = Y1 + ���@��1 * Dsin(r1)
                                         Call DLine(X1, Y1, X2, Y2)
                                         End If
                                         
                                  If ���@��2 <> 0 Then
                                         Arc_r��2 = Arc_r - ���@��2
                                         X1 = X0 + Arc_r��2 * Dcos(r2): Y1 = Y0 + Arc_r��2 * Dsin(r2)
                                         X2 = X1 + ���@��2 * Dcos(r2): Y2 = Y1 + ���@��2 * Dsin(r2)
                                         Call DLine(X1, Y1, X2, Y2)
                                         End If
                           
                           Call �ݒ�_�L��_In
                  
                           P_PloterX = X000: P_PloterY = Y000
             
             
             
             Case "��": Wd1$ = "": LLL = 0: RD = 0: ' LLL �ŏ��̐��@�����o��������
                           ' [��:(Dx,Dy,)���o��:(Dx,Dy,),XL,YL,���o��,����(,�����ʒu)|___|____]       ���@��`�� point�͌��ɖ߂�  ����="***" �͐��@�̕�����`���Ȃ�
                            '  exp   [��:6:500,0,5,,L5|300,0,5,,RL=6]          LR=6     LC=6   L=6   LCR=6        RL=6    RC=6   R=6   RCL=6
                           Call �ݒ�_�L��_Out
                           P_Layer_0 = P_Layer_���@
                           P_Layer_���� = P_Layer_���@: P_Layer_�� = P_Layer_���@: P_Layer_�_ = P_Layer_���@
                           
                           P_�F_0 = P_�F_���@: P_����_0 = P_����_���@:
                           P_����_size_0 = P_���@_Msize
                           P_�F_�� = P_�F_���@: P_�F_�_ = P_�F_���@
                  
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                           Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                           Select Case Data_n
                           Case 1: LLL = Di(1) * �ϊ�M
                           Case 2: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2): LLL = 0
                           Case 3: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2): LLL = Di(3) * �ϊ�M
                           Case 4: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2): LLL = Di(3) * �ϊ�M: RD = Di(4)
                           Case Else: �����ʒu = "": er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                           End Select
                           End If
                  
                  
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n
                          WD3$ = Ds$(Mii):            Call Ddata(",", WD3$, Ds11$(), Di(), Data_n2)
                          ����$ = Ds11$(4)
                          X1 = P_PloterX: Y1 = P_PloterY:   X2 = X1 + Di(1): Y2 = Y1 + Di(2): Di(3) = Di(3) * �ϊ�M
                          ���@�����ʒu$ = UCase(Ds11$(5))
                         
                         ' XX1(Mii + 1) = X2: YY1(Mii + 1) = Y2
                          �p0 = Calu�p�x(X1, Y1, X2, Y2): �p�x = �p0: If �p�x >= 180 Then �p�x = �p�x - 180
                      If Mii = 1 Then �p�x0 = �p�x
                      
                      '�@Start�⏕��
                      If LLL <> 0 Then
                          �pL = �p0 + 90: If �pL >= 360 Then �pL = �pL - 360
                          If �pL > 180 Then LLL = -LLL
                          If �pL = 0 Then LLL = -LLL
                          X3 = X1 + LLL * Dcos(�pL): Y3 = Y1 + LLL * Dsin(�pL)
                          Call DLine(X1, Y1, X3, Y3):  LLL = 0
                          End If
                      
                      '�@End �⏕��
                      If Di(3) <> 0 Then
                          �pR = �p0 + 90: If �pR >= 360 Then �pR = �pR - 360
                          If �pR > 180 Then Di(3) = -Di(3)
                          If �pR = 0 Then Di(3) = -Di(3)
                          X3 = X2 + Di(3) * Dcos(�pR): Y3 = Y2 + Di(3) * Dsin(�pR)
                          Call DLine(X2, Y2, X3, Y3)
                          End If
                      
                      'If �p�x0 = �p�x Then Call DPoint(X1, Y1)
                      �p�x0 = �p�x
                      Select Case ����$
                          Case "***": ����$ = ""
                          Case "":  LL = F_�_AB��_����(X1, Y1, 0, X2, Y2, 0): ����$ = F9(LL)
                          Case Else:
                          End Select
                      
                      ��r = P_���@_�[��_��_size:
                      ���o��L = 6
                      ni = InStr(���@�����ʒu$, "="): If ni > 1 Then ���o��L = Val(Mid(���@�����ʒu$, ni + 1)): ���@�����ʒu$ = Mid(���@�����ʒu$, 1, ni - 1)
                      '���o��L = Val(Mid(���@�����ʒu$, 3)): If ���o��L = 0 Then ���o��L = 6
                      
                      ���o��L = ���o��L * �ϊ�M
                      
                      Select Case Mid(���@�����ʒu$, 1, 1)
                           Case "L": Call Dsym(X1, Y1, "R", �p�x, ����$): ���o��LL = ���o��L: ���o��RL = 0.5 * ���o��L
                           Case "R": Call Dsym(X2, Y2, "L", �p�x, ����$): ���o��LL = 0.5 * ���o��L: ���o��RL = ���o��L
                           Case Else:
                                       ni = InStr(����$, "="):
                                       Select Case ni
                                       Case 0: If ����$ <> "0" Then Call DLine����(1, X1, Y1, X2, Y2, "C", ����$) '***
                                       Case Else:
                                       
                                                ���������� = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2) / �ϊ�M
                                                ������ = Len(����$)
                                                �������� = ������ * P_���@_Msize / 2
                                                If �������� > 0.9 * ���������� Then
                                                      ����1$ = Mid(����$, 1, ni - 1): ����2$ = Mid(����$, ni)
                                                      Call DLine����(1, X1, Y1, X2, Y2, "C", ����1$)
                                                      
                                                      HH = 1.1 * P_���@_Msize * �ϊ�M
                                                      X3 = X1 + HH * Dsin(�p0): Y3 = Y1 - HH * Dcos(�p0)
                                                      X4 = X2 + HH * Dsin(�p0): Y4 = Y2 - HH * Dcos(�p0)
                                                      Call DLine����(0, X3, Y3, X4, Y4, "C", ����2$)
                                                      Else
                                                      Call DLine����(1, X1, Y1, X2, Y2, "C", ����$)
                                                      End If
                                       End Select
                                       
                           End Select
                           X3 = X1 - ���o��LL * Dcos(�p0): Y3 = Y1 - ���o��LL * Dsin(�p0)
                           X4 = X2 + ���o��RL * Dcos(�p0): Y4 = Y2 + ���o��RL * Dsin(�p0)
                      
                      If ����$ <> "0" Then
                      Select Case ���@�����ʒu$
                          Case "LR", "RL", "LCR", "RCL":
                                         Select Case P_���@_�[��
                                         Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                                        Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                                        Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                                        Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case Else:   Call DPoint(X1, Y1):    ' Call DLine(X1, Y1, X2, Y2)
                                         End Select
                                         If Mid(���@�����ʒu$, 2, 1) = "C" Then Call DLine(X1, Y1, X2, Y2)
                          
                          Case "L", "LC": '   Call Dsym(X1, Y1, "R", �p�x, ����$): ' X3 = X1 - ���o��L * Dcos(�p0): Y3 = Y1 - ���o��L * Dsin(�p0)
                                         Select Case P_���@_�[��
                                         Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                         Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                         Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                         Case Else:   Call DPoint(X1, Y1):  '   Call DLine(X1, Y1, X2, Y2)
                                         End Select
                                         If Mid(���@�����ʒu$, 2, 1) = "C" Then Call DLine(X1, Y1, X2, Y2)
                          
                          Case "R", "RC": ' Stop:  Call Dsym(X2, Y2, "L", �p�x, ����$): '  X4 = X2 + ���o��L * Dcos(�p0): Y4 = Y2 + ���o��L * Dsin(�p0)
                                         Select Case P_���@_�[��
                                         Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case Else:   Call DPoint(X2, Y2):  '  Call DLine(X1, Y1, X2, Y2)
                                         End Select
                                         If Mid(���@�����ʒu$, 2, 1) = "C" Then Call DLine(X1, Y1, X2, Y2)
                          
                          Case "":   '  Call DLine����(1, X1, Y1, X2, Y2, "C", ����$)
                                         Select Case P_���@_�[��
                                         Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0): Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                                         Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0): Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                                         Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0): Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                                         Case Else:   Call DPoint(X1, Y1): Call DPoint(X2, Y2)
                                         End Select
                          
                          Case Else:   er (" ���@Data   [" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                          
                          
                          End Select
                          End If
                          
                      P_PloterX = X2: P_PloterY = Y2
                      Next Mii
                   
                           Call �ݒ�_�L��_In
                   
                 '  P_PloterX = X000: P_PloterY = Y000
             
            '����������������������������������������������������������������������������
            '��   �L��                                                                 ��
            '����������������������������������������������������������������������������
             Case "<", "<R": '[<:�p�x,Data(,�`�������ʒu)]"      �`���o���ʒu="*"  2�Ԗڂ���`���o��   Point �͖߂�
                                                          ' �`���o���ʒu="-"  1�Ԗڂ���  n-1 ��`���o��
                         ''[<:�p�x,6x200+4x150+40x150+12x300]     [<:�p�x,6x200+4x150+40x150+12x300,*]
                         '  ���͌��_�Ɍ������ĕ`��
                         '      <R  �t�����Ɉʒu���ړ�  �ړ����� = -1
  
                           �ړ����� = 1
                           If Wmark$ = "<R" Then �ړ����� = -1
                           �`���o���ʒu = 1
                          Select Case Data_n
                          Case 0: �p�x = 0: Wd1$ = "": ' ni = 1
                          Case 1: �p�x = Di(1): Wd1$ = "": ' ni = 1
                          Case 2: �p�x = Di(1): Wd1$ = Ds$(2):
                          Case 3: �p�x = Di(1): Wd1$ = Ds$(2): �`���o���ʒu = 2: ' ni = 1
                                                    If Ds$(3) = "-" Then �`���o���ʒu = -1
                          Case Else: Wd1$ = "": er ("System Uxf ��{�ݒ� " + Wda$ + " �͎g�p�ł��܂���"): If ����CK > 99 Then Stop
                          End Select
                      X0 = X000: Y0 = Y000
                      Call P_D_Mark(X0, Y0, �p�x, Wd1$, �`���o���ʒu, �ړ�����)
                      P_PloterX = X000: P_PloterY = Y000
             
             
             
             Case "�M": '[�M:XL,YL,DL,�p�x(,LR$)]"      LR$="L"  ���̂�      LR$="R"�@�E�̂�
                          LR$ = ""
                          Select Case Data_n
                          Case 1: XL = Di(1): YL = 0: DL = 2.5: �p�x = 45
                          Case 2: XL = Di(1): YL = Di(2): DL = 2.5: �p�x = 45
                          Case 3: XL = Di(1): YL = Di(2): DL = Di(3): �p�x = 45
                          Case 4: XL = Di(1): YL = Di(2): DL = Di(3): �p�x = Di(4)
                          Case 5: XL = Di(1): YL = Di(2): DL = Di(3): �p�x = Di(4): LR$ = Ds(5)
                          Case Else: Wd1$ = "": er ("System Uxf ��{�ݒ� " + Wda$ + " �͎g�p�ł��܂���"): If ����CK > 99 Then Stop
                          End Select
                          X0 = X000: Y0 = Y000
                          DL = DL * �ϊ�M: ���p�x = Calu�p�x(0, 0, XL, YL): LL = Sqr(XL ^ 2 + YL ^ 2)
                          DXL = DL * Dcos(�p�x): DYL = DL * Dsin(�p�x)
                          X1 = X0 + DYL * Dsin(���p�x): Y1 = Y0 + DYL * Dcos(���p�x)
                          X2 = X0 + DXL * Dcos(���p�x): Y2 = Y0 + DXL * Dsin(���p�x)
                          X3 = X0 + (LL - DXL) * Dcos(���p�x): Y3 = Y0 + (LL - DXL) * Dsin(���p�x)
                          X4 = X0 + XL + DYL * Dsin(���p�x): Y4 = Y0 + YL + DYL * Dcos(���p�x)
                          Select Case LR$
                          Case "L": X4 = X0 + XL: Y4 = Y0 + YL
                          Case "R": X1 = X0: Y1 = Y0
                          Case Else:
                          End Select
                          
                          Call DLine(X1, Y1, X2, Y2)
                          Call DLine(X2, Y2, X3, Y3)
                          Call DLine(X3, Y3, X4, Y4)
                                            
                          P_PloterX = X000: P_PloterY = Y000
             
             Case "�M2": '[�M2:XL,YL,DL,�p�x(,LR$)]"      LR$="L"  ���̂�      LR$="R"�@�E�̂�   �O���ɊJ��
                          LR$ = ""
                          Select Case Data_n
                          Case 1: XL = Di(1): YL = 0: DL = 2.5: �p�x = 45
                          Case 2: XL = Di(1): YL = Di(2): DL = 2.5: �p�x = 45
                          Case 3: XL = Di(1): YL = Di(2): DL = Di(3): �p�x = 45
                          Case 4: XL = Di(1): YL = Di(2): DL = Di(3): �p�x = Di(4)
                          Case 5: XL = Di(1): YL = Di(2): DL = Di(3): �p�x = Di(4): LR$ = Ds(5)
                          Case Else: Wd1$ = "": er ("System Uxf ��{�ݒ� " + Wda$ + " �͎g�p�ł��܂���"): If ����CK > 99 Then Stop
                          End Select
                          X0 = X000: Y0 = Y000
                          DL = DL * �ϊ�M: ���p�x = Calu�p�x(0, 0, XL, YL): LL = Sqr(XL ^ 2 + YL ^ 2)
                          X1 = X0 + DL * Dcos(���p�x + 180 - �p�x): Y1 = Y0 + DL * Dsin(���p�x + 180 - �p�x)
                          X2 = X0: Y2 = Y0
                          X3 = X0 + LL * Dcos(���p�x): Y3 = Y0 + LL * Dsin(���p�x)
                          X4 = X3 + DL * Dcos(���p�x + �p�x): Y4 = Y3 + DL * Dsin(���p�x + �p�x)
                          Select Case LR$
                          Case "L": X4 = X0 + XL: Y4 = Y0 + YL
                          Case "R": X1 = X0: Y1 = Y0
                          Case Else:
                          End Select
                          
                          Call DLine(X1, Y1, X2, Y2)
                          Call DLine(X2, Y2, X3, Y3)
                          Call DLine(X3, Y3, X4, Y4)
                                            
                          P_PloterX = X000: P_PloterY = Y000
             
             
             '��L
             Case "��", "�": Wd1$ = "": ��mark$ = P_��_Mark$: '  �~D = 10: ��L = 2.5
                           ��L = P_��_����
                                 ' [��:�L��,���,�����a:XL,YL,����,�ʒu$|___|____]       ���o���ŕ�����`��  �ʒu$ L C R
                                 ' exp  [��:<,2,5:10,10,Test.C|20,0,,,7]
                                 ' [�:�L��,���,�����a:XL,YL,����,�ʒu$|___|____]     �(�x) ��  ���o���ŕ�����`��
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                               Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                          Select Case Data_n
                          Case 1: ��mark$ = Ds$(1)
                          Case 2: ��mark$ = Ds$(1): ��L = Di(2)
                          Case 3: ��mark$ = Ds$(1): ��L = Di(2): �~D = Di(3)
                          Case Else: �����ʒu = "": er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                          End Select
                          End If
                  
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n
                      WD3$ = Ds$(Mii): Call Ddata(",", WD3$, Ds11$(), Di(), Data_n2)
                      X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + Di(1) * �ϊ�M: Y2 = Y1 + Di(2) * �ϊ�M: ����$ = Ds11$(3): �ʒu$ = Ds11$(4)
                      If Wmark$ = "�" Then DD = Di(1): LLL = Di(2)
                      
                      If Mii = 1 Then
                          Select Case Wmark$
                              Case "��": Call D��(��mark$, �~D, ��L, P_��_�p�x, X1, Y1, X2, Y2, 1)
                                         If �ʒu$ = "" Then �ʒu$ = "R"
                                         Call DLine����(0, X1, Y1, X2, Y2, �ʒu$, ����$)
                              
                              'If InStr(Wd$, "�ѓS��") > 0 Then Stop
                              Case "�": �p�x = Di(1): LLL = Di(2)
                                        'X2 = X1 + LLL * Dcos(�p�x): Y2 = Y1 + LLL * Dsin(�p�x)
                                        Call D��p�x(��mark$, �~D, ��L, P_��_�p�x, X1, Y1, �p�x, LLL, X2, Y2)
                              
                              End Select
                          Else
                          Select Case Data_n2
                          Case 2:  Call DLine(X1, Y1, X2, Y2)
                          Case 3: �ʒu$ = "L": ����$ = Ds11$(3): Call DLine����(1, X1, Y1, X2, Y2, �ʒu$, ����$)
                          Case 4: �ʒu$ = Ds11$(4): ����$ = Ds11$(3): Call DLine����(1, X1, Y1, X2, Y2, �ʒu$, ����$)
                          Case 5: �~D = Di(4): ����$ = Ds11$(5): Call DLine��(X1, Y1, X2, Y2, �~D, ����$)
                          Case Else:
                          End Select
                          End If
                      P_PloterX = X2: P_PloterY = Y2
             
                      Next Mii
             
                  ' P_PloterX = X000: P_PloterY = Y000
             
             Case "�د�":  ' [�د�:XL,YL,�p�x,�߯�]      �دĂ�`��  Point�����̈ʒu�ɖ߂�  H10.3.29
                  Select Case Data_n
                  Case 4: �w��$ = "Y":  �� = Di(1) * �ϊ�M: ���� = Di(2) * �ϊ�M: ��]�p = Di(3): Pit = Di(4)
                  Case 6: �w��$ = "Y": X0 = X0 + Di(1): Y0 = Y0 + Di(2): �� = Di(3) * �ϊ�M: ���� = Di(4) * �ϊ�M: ��]�p = Di(5): Pit = Di(6)
                  Case Else: �����ʒu = "": er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                  End Select
                   
                  If �w��$ = "Y" Then Call D�X���b�g(X0, Y0, ��, ����, ��]�p, Pit, e$)
             
                  P_PloterX = X000: P_PloterY = Y000
             
             Case "̯�": Wd1$ = "": ' [̯�:(Dx,Dy):XL,YL,�p�x��,D,L]       ̯���`��  D���a   L̯����� Point�����̈ʒu�ɖ߂�
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                         Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                         Select Case Data_n
                         Case 2: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
                         Case Else: er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                         End Select
                         End If
                  Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                  X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                   
                  �p�x = Di(3): DD = Di(4): LL = Di(5)
                  Call D�t�b�N(X1, Y1, X2, Y2, �p�x, DD, LL)
                   
                  P_PloterX = X000: P_PloterY = Y000
             
             Case "̯�V": Wd1$ = "": ' [̯�V:(Dx,Dy):XL,YL,�p�x��,D,L]     V  ̯���`��  D���a(̯��o)   L̯����� Point�����̈ʒu�ɖ߂�
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                         Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                         Select Case Data_n
                         Case 2: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
                         Case Else:  er ("[" + Wmark$ + "] " + WDATA$): If ����CK > 99 Then Stop
                         End Select
                         End If
                  Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                  'XL = Di(1): YL = Di(2):
                  X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                   �p�x1 = Di(3): DD = Di(4) / 2: LL = Di(5) + DD
                   '�p�x1 = �p�x1 / 3
                   If Dcos(�p�x1) <> 0 Then LL = LL / Dcos(�p�x1)
                   �p�x = Calu�p�x(X1, Y1, X2, Y2)
                   �p�x1 = �p�x + 180 - �p�x1
                   X2 = X2 + DD * Dcos(�p�x): Y2 = Y2 + DD * Dsin(�p�x)
                   X3 = X2 + LL * Dcos(�p�x1): Y3 = Y2 + LL * Dsin(�p�x1)
                 ' Call D�t�b�N(X1, Y1, X2, Y2, �p�x, DD, LL)
                   Call DLine(X1, Y1, X2, Y2): Call DLine(X2, Y2, X3, Y3)
                  
                  P_PloterX = X000: P_PloterY = Y000
             
             
             Case "�~", "�^"
                   Select Case Data_n
                   Case 1: BB = Di(1): DD = Di(1): DX = 0: DY = 0:
                   Case 2: BB = Di(1): DD = Di(2): DX = 0: DY = 0:
                   Case 3: DX = Di(1): DY = Di(2): BB = Di(3): DD = Di(3)
                   Case 4: DX = Di(1): DY = Di(2): BB = Di(3): DD = Di(4)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If ����CK > 99 Then Stop
                   End Select
                   
                   X1 = P_PloterX + DX - BB / 2: Y1 = P_PloterY + DY - DD / 2: X2 = X1 + BB: Y2 = Y1 + DD
                   X3 = P_PloterX + DX - BB / 2: Y3 = P_PloterY + DY + DD / 2: X4 = X3 + BB: Y4 = Y3 - DD
                   
                   
                   
                   Call DLine(X1, Y1, X2, Y2)
                   If Wmark$ = "�~" Then Call DLine(X3, Y3, X4, Y4)
             
             
             Case "���r�S��": ' ���r�S��Mark
                  �S�،a$ = Ds$(1)
                  X0 = X000: Y0 = Y000
                  Call D_�S��_���r(X0, Y0, �S�،a$)
             
             
             Case "�ؒfM1":     ' [�ؒfM1:X1,Y1,X2,Y2,W,H]   �� (X1,Y1) - (X2,Y2) �ɐؒfMark1��t���� W ��mm  H ����mm
                                ' [�ؒfM1:XL,YL,W,H]
                                 '  1-3-5-6-4-2
                   Select Case Data_n
                   Case 4: X1 = X000: Y1 = Y000: X2 = X1 + Di(1): Y2 = Y1 + Di(2): W1 = Di(3) * �ϊ�M: h1 = Di(4) * �ϊ�M
                   Case 6: X1 = Di(1): Y1 = Di(2): X2 = Di(3): Y2 = Di(4): W1 = Di(5) * �ϊ�M: h1 = Di(6) * �ϊ�M
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: W1 = 0: h1 = 0: If ����CK > 99 Then Stop
                   End Select
                   Call C_�O�p�֐�1(X1, Y1, X2, Y2, SN1, CS1, TAN1, RTAN1, LL)
                          L1 = 0.5 * LL - W1 / 2: L2 = 0.5 * LL + W1 / 2
                          X3 = X1 + L1 * CS1: Y3 = Y1 + L1 * SN1:   X4 = X1 + L2 * CS1: Y4 = Y1 + L2 * SN1
                          X5 = X3 - h1 * SN1: Y5 = Y3 + h1 * CS1:   X6 = X4 + h1 * SN1: Y6 = Y4 - h1 * CS1
                          Call DLine(X1, Y1, X3, Y3)
                          Call DLine(X3, Y3, X5, Y5)
                          Call DLine(X5, Y5, X6, Y6)
                          Call DLine(X6, Y6, X4, Y4)
                          Call DLine(X4, Y4, X2, Y2)
             
                          P_PloterX = X2: P_PloterY = Y2
             
             Case "�ؒf�`1":     ' [�ؒf�`1:X1,Y1,X2,Y2,H]   �� (X1,Y1) - (X2,Y2) �ɐؒfMark�`1��t����  H ����mm
                      X1 = Di(1): Y1 = Di(2): X2 = Di(3): Y2 = Di(4): H = Di(5)
                      Call D�ؒf_Arc1(X1, Y1, X2, Y2, H)
            
            
            '����������������������������������������������������������������������������
            '��   �f�ʈʒu�w��                                                         ��
            '����������������������������������������������������������������������������
            
            
    '
    '       5                6
    '       ��               ��
    '      1���� 3        4����2
    '
    '
        '        �f�ʈʒu�w��_XL = 7: 'mm
        '        �f�ʈʒu�w��_YL = 6: 'mm
        '        �f�ʈʒu�w��_��L = 2.5: 'mm
        '        �f�ʈʒu�w��_��p = 15: '�x
        '        �f�ʈʒu�w��_Msize = 5: '
    
            
            
            '����������������������������������������������������������������������������
            '��   �f��                                                                 ��
            '����������������������������������������������������������������������������
             Case "�f��": D�f��$ = Ds$(1): �p�x = Di(2): DHat$ = Ds$(3): ���{�� = Di(4): ���{�� = Di(5)
                        ' Data, �p�x,  ʯ�(Y,N)  ���{��(���̔{��),  ���{��(���̔{��)
                          D�f��type$ = ""
                          If Mid$(D�f��$, 1, 2) = "RC" Then D�f��type$ = "RC": Data2$ = Mid(D�f��$, 4)
                          Select Case D�f��type$
                          Case "RC":   b = Val(Data2$): D = FD(Data2$)
                                     �p�x = 0
                                     Call D_Box(X0, Y0, �p�x, b, D, Layer$, Zline$, Zcolor$)
                          Case Else:
                  
                              Call ROB_S_����(D�f��$, D�f��type$, H, b, tw, tf, r1, r2, er1$)
                              If er1$ <> "" Then D�f��type$ = D�f��$ + er1$
                              H = ���{�� * 10 * H: b = ���{�� * 10 * b: tw = ���{�� * 10 * tw: tf = ���{�� * 10 * tf: r1 = 10 * r1: r2 = 10 * r2
                               Select Case D�f��type$
                               Case "H": Call D_ste_H(X0, Y0, �p�x, b, H, tf, tw, r1, Layer$, Zline$, Zcolor$)
                               Case "BH": Call D_ste_BH(X0, Y0, �p�x, b, b, H, tf, tf, tw, JCU, JCD, HR, Layer$, Zline$, Zcolor$)
                               Case "��": Call D_ste_box(X0, Y0, �p�x, b, H, tw, r1, Layer$, Zline$, Zcolor$)
                               Case Else: er (D�f��type$): Stop
                               End Select
                          End Select
                          P_PloterX = X000: P_PloterY = Y000
                          
             Case Else:
                     er (" [" + Wd$ + "]  �͎g�p�ł��Ȃ� �������܂�"): If ����CK > 99 Then Stop

             End Select
            ' End If
       Case Else:
               'MdxL = 0: MdyL = 0: MR = 0: Mtype = P_����_size_0
               N0 = Len(Wd$): Wd$ = LTrim$(Wd$): n1 = Len(Wd$)
               P_PloterX = P_PloterX + �{�� * (N0 - n1) * P_����_size_0 * 0.5: X0 = P_PloterX
               Call Dsym(X0, Y0, "L", 0, Wd$)
               P_PloterX = P_PloterX + (Len(Wd$) + N����(Wd$)) * P_����_size_0 * �{��Y * 0.55
               datalp$ = "Y"
       
       
       End Select
    Loop While N00 <> 0
    
       If datalp$ <> "" Then P_PloterY = P_PloterY - P_���spit


    
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   �ݒ�_�L��                                                                                                                      ��
'��������������������������������������������������������������������������������������������������������������������������������������
Private Sub �ݒ�_�L��_Out()
          P_Layer_0_Bak = P_Layer_0
          P_Layer_��_Bak = P_Layer_��
          P_Layer_�__Bak = P_Layer_�_
          P_Layer_�~_Bak = P_Layer_�~
          P_Layer_Arc_Bak = P_Layer_Arc
          P_Layer_����_Bak = P_Layer_����
          P_Layer_���@_Bak = P_Layer_���@
          P_Layer_�n�b�`_Bak = P_Layer_�n�b�`
    
          P_����_0_Bak = P_����_0
          P_����_���@_Bak = P_����_���@
          P_����_�n�b�`_Bak = P_����_�n�b�`
          P_����_��_Bak = P_����_��
          P_����_�~_Bak = P_����_�~
          P_����_Arc_Bak = P_����_Arc
          
          
          P_�F_0_Bak = P_�F_0
          P_�F_��_Bak = P_�F_��
          P_�F_�__Bak = P_�F_�_
          P_�F_�~_Bak = P_�F_�~
          P_�F_Arc_Bak = P_�F_Arc
          P_�F_����_Bak = P_�F_����
          P_�F_���@_Bak = P_�F_���@
          P_�F_�n�b�`_Bak = P_�F_�n�b�`
          
          P_����_size_0_Bak = P_����_size_0
          P_��Big_Font_Bak = P_��Big_Font
          P_Big_Font_Bak = P_Big_Font
          P_Middle_Font_Bak = P_Middle_Font
          P_Small_Font_Bak = P_Small_Font
          P_��Small_Font_Bak = P_��Small_Font
          P_���@_Msize_Bak = P_���@_Msize
    
    End Sub
Private Sub �ݒ�_�L��_In()
          P_Layer_0 = P_Layer_0_Bak
          P_Layer_�� = P_Layer_��_Bak
          P_Layer_�_ = P_Layer_�__Bak
          P_Layer_�~ = P_Layer_�~_Bak
          P_Layer_Arc = P_Layer_Arc_Bak
          P_Layer_���� = P_Layer_����_Bak
          P_Layer_���@ = P_Layer_���@_Bak
          P_Layer_�n�b�` = P_Layer_�n�b�`_Bak
    
          P_����_0 = P_����_0_Bak
          P_����_���@ = P_����_���@_Bak
          P_����_�n�b�` = P_����_�n�b�`_Bak
          P_����_�� = P_����_��_Bak
          P_����_�~ = P_����_�~_Bak
          P_����_Arc = P_����_Arc_Bak
          
          P_�F_0 = P_�F_0_Bak
          P_�F_�� = P_�F_��_Bak
          P_�F_�_ = P_�F_�__Bak
          P_�F_�~ = P_�F_�~_Bak
          P_�F_Arc = P_�F_Arc_Bak
          P_�F_���� = P_�F_����_Bak
          P_�F_���@ = P_�F_���@_Bak
          P_�F_�n�b�` = P_�F_�n�b�`_Bak
          
          P_����_size_0 = P_����_size_0_Bak
          P_��Big_Font = P_��Big_Font_Bak
          P_Big_Font = P_Big_Font_Bak
          P_Middle_Font = P_Middle_Font_Bak
          P_Small_Font = P_Small_Font_Bak
          P_��Small_Font = P_��Small_Font_Bak
          P_���@_Msize = P_���@_Msize_Bak
    
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   DLayer_CK                                                                                                                      ��
'��������������������������������������������������������������������������������������������������������������������������������������
Private Function DLayer_CK(Layer$)
    D1$ = ""
    For ii = 1 To LAYER_N
        If Zlayer$(ii) = Layer$ Then D1$ = Zlayer$(ii)
        Next ii
    If D1$ = "" Then er (EMS0$ + "  [" + Wd$ + "]  ڲ԰�����o�^����Ă��Ȃ�"): D1$ = Zlayer$(ii): If ����CK > 99 Then Stop
    DLayer_CK = D1$
    End Function

'��������������������������������������������������������������������������������������������������������������������������������������
'��   D����size_CK                                                                                                                   ��
'��������������������������������������������������������������������������������������������������������������������������������������
Private Function D����size_CK(����size)
    ddd = ����size
    If ddd < 0.1 Then ddd = 0.1
    D����size_CK = ddd
    End Function
'��������������������������������������������������������������������������������������������������������������������������������������
'��   D�F                                                                                                                            ��
'��������������������������������������������������������������������������������������������������������������������������������������
Private Function D�F$(�F$)
      ' 1:       2:��   3:��   4:��   5:��   6:��   7:��
      Select Case �F$
           Case "��": D1$ = "4"
           Case "��": D1$ = "7"
           Case "��": D1$ = "2"
           Case "��": D1$ = "3"
           Case "��": D1$ = "6"
           Case "��": D1$ = "5"
           Case Else: D1$ = "7"
           End Select
      D�F$ = D1$
 
      End Function
'��������������������������������������������������������������������������������������������������������������������������������������
'��   D����$                                                                                                                         ��
'��������������������������������������������������������������������������������������������������������������������������������������
Private Function D����$(����$)
      Select Case UCase$(Mid$(����$, 1, 3))
           Case "CON":                 D1$ = "CONTINUOUS"
           Case "CHA", "CEN", "CEN1":  D1$ = "CENTER1"
           Case "CEN2":                D1$ = "CENTER2"
           Case "DOT":                 D1$ = "DOT"
           Case "1DO", "DAS":          D1$ = "DASHED1"
           Case "2DO":                 D1$ = "DASHED2"
           Case "WHI":                 D1$ = "CONTINUOUS"
           Case "BRA":                 D1$ = "CONTINUOUS"
           Case Else:                  D1$ = "CONTINUOUS": er (EMS0$ + "����  [" + Wd$ + "] �͎g�p�ł��Ȃ�"): If ����CK > 99 Then Stop
           End Select
      D����$ = D1$
      End Function

Sub D����set(����$)
      P_����_0 = ����$
      P_����_�� = P_����_0: P_����_�~ = P_����_0: P_����_Arc = P_����_0

      End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub DXY(X0, Y0)
    ' X0,Y0 �̈ʒu�ɾ��
    P_PloterX = X0: P_PloterY = Y0
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Daline(XL, YL, AA)
    ' AA=�ϊ�M �ƍl����
    X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + XL * AA: Y2 = Y1 + YL * AA
    Call DLine(X1, Y1, X2, Y2)
    P_PloterX = X2: P_PloterY = Y2
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��  Line                                                                                                                            ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub DLine(X1, Y1, X2, Y2)
   '�� �ŏI sub
    Select Case Sub�{��
    Case 1: X01 = X1: Y01 = Y1: X02 = X2: Y02 = Y2
    Case Else:  ' LL1 = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): �p�x = Calu�p�x(X1, Y1, X2, Y2)
                 X01 = Sub�{�� * X1: Y01 = Sub�{�� * Y1: X02 = Sub�{�� * X2: Y02 = Sub�{�� * Y2
    End Select
    Call Dxf_Line(X01, Y01, X02, Y02)
    P_PloterX = X2: P_PloterY = Y2
    End Sub
Sub DLine1(X(), Y(), ni, r)
    '  X(i),Y(i) �̐���`�� i=1 TO ni+1
    ' ni  ���̖{��
    ' r ��Ű�̔��a
    If ni < 1 Then Exit Sub
    If ni = 1 Then r = 0
    If r < 0 Then r = 0
    X1 = X(1): Y1 = Y(1)
    For i = 1 To ni - 1
        X2 = X(i + 1): Y2 = Y(i + 1): X3 = X(i + 2): Y3 = Y(i + 2)
        If r > 0 Then
           Call calu�ډ~���S1(X1, Y1, X2, Y2, X3, Y3, r, AX0, AY0, X4, Y4, X5, Y5, r1, r2)
           Call Darc("", AX0, AY0, r, r1, r2)
           Else
           X4 = X2: X5 = X2: Y4 = Y2: Y5 = Y2
           End If
        Call DLine(X1, Y1, X4, Y4)
        X1 = X5: Y1 = Y5
        Next i
        Call DLine(X1, Y1, X(ni + 1), Y(ni + 1))
                      
    End Sub
Sub P_DLine_r(ni, X000, Y000, XL(), YL(), r())
    ' ���݂̓_���� XL(i),YL(i) �̐܂����`�� i=1 TO ni+1
    ' ni  ���̖{��
    ' r(i) ��Ű�̔��a
    ReDim X(1000) As Single, Y(1000) As Single
    If ni < 1 Then Exit Sub
    
    X(1) = X000: Y(1) = Y000
    For ii = 1 To ni:  X(ii + 1) = X(ii) + XL(ii):  Y(ii + 1) = Y(ii) + YL(ii):  Next ii
    
    X1 = X(1): Y1 = Y(1)
    For ii = 1 To ni - 1
        X2 = X(ii + 1): Y2 = Y(ii + 1): X3 = X(ii + 2): Y3 = Y(ii + 2)
        If r(ii) > 0 Then
           Call calu�ډ~���S1(X1, Y1, X2, Y2, X3, Y3, r(ii), AX0, AY0, X4, Y4, X5, Y5, r1, r2)
           Call Darc("", AX0, AY0, r(ii), r1, r2)
           Else
           X4 = X2: X5 = X2: Y4 = Y2: Y5 = Y2
           End If
        Call DLine(X1, Y1, X4, Y4)
        X1 = X5: Y1 = Y5
        Next ii
        Call DLine(X1, Y1, X(ni + 1), Y(ni + 1))
                      
    End Sub

Sub DLine2(XX1(), YY1(), XX2(), YY2(), ni, r)
    '  [X1(),Y1()] ���� [X2(),Y2()] �֐���`��
    ' ni ���̖{��
    ' r ��Ű�̔��a
    If ni < 1 Then Exit Sub
    If ni = 1 Then r = 0
    If r < 0 Then r = 0
    Select Case r
        Case 0
               For i = 1 To ni: Call DLine(XX1(i), YY1(i), XX2(i), YY2(i)): Next i
        Case Else:    X1 = XX1(1): Y1 = YY1(1)
               For i = 1 To ni - 1
                   X2 = XX2(i): Y2 = YY2(i): X3 = XX2(i + 1): Y3 = YY2(i + 1)
                   Call calu�ډ~���S1(X1, Y1, X2, Y2, X3, Y3, r, AX0, AY0, X4, Y4, X5, Y5, r1, r2)
                   Call Darc("", AX0, AY0, r, r1, r2)
                   Call DLine(X1, Y1, X4, Y4)
                   X1 = X5: Y1 = Y5
                   Next i
               Call DLine(X1, Y1, XX2(ni), YY2(ni))
        End Select
                      
    End Sub
'===================================================================================================================================
Sub DLine�_(X1, Y1, X2, Y2, SE$)
    ' SE$="S"   (X1,Y1)�ɓ_��`�� Start
    ' SE$="E"   (X2,Y2)�ɓ_��`�� End
    ' SE$="SE"  (X1,Y1),(X2,Y2)�ɓ_��`��
'===================================================================================================================================
    Call DLine(X1, Y1, X2, Y2)
    Select Case SE$
         Case "S": Call DPoint(X1, Y1)
         Case "E": Call DPoint(X2, Y2)
         Case "SE", "*": Call DPoint(X1, Y1): Call DPoint(X2, Y2)
         End Select
    End Sub
'===================================================================================================================================
Sub DLineX�͈�(X1, Y1, X2, Y2, ���[X�ʒu, �E�[X�ʒu)
    '���[X�ʒu<  X  <�E�[X�ʒu �͈̔͂̂ݐ���`��
'===================================================================================================================================
    Xp1 = X1: Yp1 = Y1: Xp2 = X2: Yp2 = Y2
    If Xp1 > Xp2 Then Xp1 = X2: Yp1 = Y2: Xp2 = X1: Yp2 = Y1
    If �E�[X�ʒu < Xp1 Then Exit Sub
    If Xp2 < ���[X�ʒu Then Exit Sub
    Select Case Xp2 - Xp1
    Case 0: Call DLine(Xp1, Yp1, Xp2, Yp2)
    Case Else: a = (Yp2 - Yp1) / (Xp2 - Xp1): b = Yp1 - a * Xp1
           If Xp1 < ���[X�ʒu Then Xp1 = ���[X�ʒu: Yp1 = a * Xp1 + b
           If �E�[X�ʒu < Xp2 Then Xp2 = �E�[X�ʒu: Yp2 = a * Xp2 + b
           Call DLine(Xp1, Yp1, Xp2, Yp2)
    End Select
    End Sub
'===================================================================================================================================
Sub DLine����(j, X1, Y1, X2, Y2, �ʒu$, Moj$)
    ' J <>0  ����`��
    ' ���ƕ�����`��
'===================================================================================================================================
    Ppos$ = �ʒu$
    �p�x = Calu�p�x(X1, Y1, X2, Y2): 'If �p�x >= 180 Then �p�x = �p�x - 180
         Select Case �p�x
         Case Is <= 90:
         Case Is <= 270: �p�x = �p�x���K��(�p�x + 180)
         Case Else:
         End Select
    If j <> 0 Then Call DLine(X1, Y1, X2, Y2)
    Select Case �ʒu$
        Case "L": X3 = X1: Y3 = Y1: MdxL = 0.3: MdyL = 0.1
        Case "C": X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2: MdxL = 0: MdyL = 0.1
        Case "R": X3 = X2: Y3 = Y2: MdxL = 0: MdyL = 0.1
        Case "EX": X3 = X2: Y3 = Y2: MdxL = 0.3: MdyL = -P_����_size_0 / 2: Ppos$ = "L":  ' ----����
        Case Else: er ("[Sub DLine����] �ʒu=" + �ʒu$): e = 1: If ����CK > 99 Then Stop
        End Select
    ' ** MdxL
    If e = 0 And Moj$ <> "" Then Call Dsym(X3, Y3, Ppos$, �p�x, Moj$)
    End Sub
'===================================================================================================================================
Sub DLine��(X1, Y1, X2, Y2, D, Moj$)
    ' ����`�� ���̏I�[���Ɂ���`������������ D=���̒��amm
'===================================================================================================================================
    Call calu�p�x1(X1, Y1, X2, Y2, �p�x)
    LLL = Abs(Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)) + �{�� * D / 2
    Call DLine(X1, Y1, X2, Y2)
    X3 = X1 + LLL * Dcos(�p�x): Y3 = Y1 + LLL * Dsin(�p�x)
    Call Dsym��(X3, Y3, D, 0, Moj$)
    End Sub
'===================================================================================================================================
Sub D_2�d��1(X(), Y(), ��t(), �Et(), ����, ��$)
    '  X(i),Y(i) �ɂ�� 2�d����`�� i=1 TO ����+1
    ' ����  ���̖{��
    ' ��t  :  �����̊Ԋu
    ' �Et  :  ���E�̊Ԋu
    ' ��=[  :  �ŏ������
    ' ��=]  :  �Ō�����
    ' ��=[] :  �ŏ��ƍŌ�����
'===================================================================================================================================
    ReDim X1(1000), Y1(1000), X2(1000), Y2(1000), �Et2(1000)
    NE = ���� + 1
                     
   For ii = 1 To ����: �Et2(ii) = -�Et(ii): Next ii
   
   '��ײ�
        Call CALU_�������W(X(), Y(), ��t(), X1(), Y1(), ���� + 1)
        Call DLine1(X1(), Y1(), ����, 0)
   '�Eײ�
        Call CALU_�������W(X(), Y(), �Et2(), X2(), Y2(), ���� + 1)
        Call DLine1(X2(), Y2(), ����, 0)
    
    
   '... �[��
    LL_S = Sqr((X2(1) - X1(1)) ^ 2 + (Y2(1) - Y1(1)) ^ 2)
    LL_E = Sqr((X2(NE) - X1(NE)) ^ 2 + (Y2(NE) - Y1(NE)) ^ 2)
               
           Select Case Mid(��$, 1, 1)
           Case "[": Call DLine(X1(1), Y1(1), X2(1), Y2(1))
           Case "]": Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
           Case "(":    Call Darc_H("", X1(1), Y1(1), X2(1), Y2(1), LL_S / 2)
           Case "�`":   H = 0.125 * LL_S:    Call D�ؒf_Arc1(X1(1), Y1(1), X2(1), Y2(1), H)
           Case Else:
           End Select
    
           Select Case Mid(��$, 2, 1)
           Case "]": Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
           Case ")":    Call Darc_H("", X1(NE), Y1(NE), X2(NE), Y2(NE), LL_E / 2)
           Case "�`": H = 0.125 * LL_E:   Call D�ؒf_Arc1(X2(NE), Y2(NE), X1(NE), Y1(NE), H)
           Case Else:
           End Select
    End Sub
'===================================================================================================================================
Sub D_2�d��2(�nCUT$, �ICUT$, SX1, SY1, SX2, SY2, EX1, EY1, EX2, EY2, X(), Y(), ��t(), �Et(), ����, ��$, e$)
    '  X(i),Y(i) �ɂ�� 2�d����`�� i=1 TO ����+1
    ' �nCUT$ (Y,N)   Y Start���� �_1(SX1,SY1),�_2(SX2,SY2) �Ŷ��
    ' �ICUT$ (Y,N)   Y End  ���� �_1(EX3,EY3),�_2(EX4,EY4) �Ŷ��
    ' Start���� �_1(SX1,SY1),�_2(SX2,SY2) �Ŷ��
    ' End  ���� �_1(EX3,EY3),�_2(EX4,EY4) �Ŷ��
    ' ����  ���̖{��
    ' ��t  :  �����̊Ԋu
    ' �Et  :  ���E�̊Ԋu
    ' ��=[  :  �ŏ������
    ' ��=]  :  �Ō�����
    ' ��=[] :  �ŏ��ƍŌ�����
'===================================================================================================================================
    ReDim X1(1000), Y1(1000), X2(1000), Y2(1000), �Et2(1000)
    NE = ���� + 1
   '���~�\��
   For i = 1 To ����: �Et2(i) = -�Et(i): Next i
   
   '��ײ�
        Call CALU_�������W(X(), Y(), ��t(), X1(), Y1(), ���� + 1)
        If �nCUT$ = "Y" Then Call CALUP2(SX1, SY1, SX2, SY2, X1(1), Y1(1), X1(2), Y1(2), X0, Y0, JA, e$): X1(1) = X0: Y1(1) = Y0: e$ = e$ + e$
        If �ICUT$ = "Y" Then Call CALUP2(EX1, EY1, EX2, EY2, X1(����), Y1(����), X1(���� + 1), Y1(���� + 1), X0, Y0, JA, e$): X1(���� + 1) = X0: Y1(���� + 1) = Y0: e$ = e$ + e$
        Call DLine1(X1(), Y1(), ����, 0)
   '�Eײ�
        Call CALU_�������W(X(), Y(), �Et2(), X2(), Y2(), ���� + 1)
        If �nCUT$ = "Y" Then Call CALUP2(SX1, SY1, SX2, SY2, X2(1), Y2(1), X2(2), Y2(2), X0, Y0, JA, e$): X2(1) = X0: Y2(1) = Y0: e$ = e$ + e$
        If �ICUT$ = "Y" Then Call CALUP2(EX1, EY1, EX2, EY2, X2(����), Y2(����), X2(���� + 1), Y2(���� + 1), X0, Y0, JA, e$): X2(���� + 1) = X0: Y2(���� + 1) = Y0: e$ = e$ + e$
        Call DLine1(X2(), Y2(), ����, 0)
    
    Select Case ��$
    Case "[": Call DLine(X1(1), Y1(1), X2(1), Y2(1))
    Case "]": Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
    Case "[]": Call DLine(X1(1), Y1(1), X2(1), Y2(1))
               Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
    Case Else:
    End Select
    End Sub
'===================================================================================================================================
Sub D_����(X(), Y(), �Ԋu(), ni)
    '  X(i),Y(i) �ɂ�� ������`�� i=1 TO ni+1
    ' ni  ���̖{��
    ' �Ԋu  :  ����̊Ԋu +�� -��
'===================================================================================================================================
    ReDim X1(1000), Y1(1000)
    NE = ni + 1
        Call CALU_�������W(X(), Y(), �Ԋu(), X1(), Y1(), ni + 1)
        Call DLine1(X1(), Y1(), ni, 0)
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   Point                                                                                                                          ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub DPoint(X0, Y0)
   '�� �ŏI sub
    Call Dxf_point(X0, Y0)
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   Circle                                                                                                                         ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dcircle(X0, Y0, r)
   '�� �ŏI sub
    ' ����`�� r=���̔��a
    Call Dxf_circle(X0 * Sub�{��, Y0 * Sub�{��, r * Sub�{��)
    End Sub
Sub D��(X0, Y0, D, Moj$)
    ' ����`�� D=���̒��a
   ' r = �{�� * D / 2
    r = �ϊ�M * D / 2
    Call Dcircle(X0, Y0, r)
    
    If Moj$ <> "" Then Call Dsym(X0, Y0, "CC", 0, Moj$)
    
    End Sub
Sub D��(X0, Y0, D)
    ' ����`�� D=���̒��a
    r = �ϊ�M * D / 2
    Do: If r <= 0 Then Exit Do
        r1 = r: Call Dcircle(X0, Y0, r1): r = r - 0.15 * �ϊ�M
        Loop
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��  Arc                                                                                                                             ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Darc(Amark$, X0, Y0, r, r1, r2)
   '�� �ŏI sub
    ' ���S(X0,Y0) r1,r2  �̉~��  r1 ���� r2
    ' Amark �[���_�̎w��
    
    r11 = �p�x���K��(r1)
    r22 = �p�x���K��(r2)
    
    Call Dxf_arc(X0 * Sub�{��, Y0 * Sub�{��, r * Sub�{��, r11, r22)
    X1 = X0 + r * Dcos(r11): Y1 = Y0 + r * Dsin(r11)
    X2 = X0 + r * Dcos(r22): Y2 = Y0 + r * Dsin(r22)
    
    X11 = X0 + r * Dcos(r11 + 15): Y11 = Y0 + r * Dsin(r11 + 15)
    X22 = X0 + r * Dcos(r22 - 15): Y22 = Y0 + r * Dsin(r22 - 15)
    
    rcen = �p�x���K��(r1 + (r2 - r1) / 2)
    If r1 > r2 Then rcen = �p�x���K��(r1 + (r2 + 360 - r1) / 2)
    Xcen = X0 + r * Dcos(rcen): Ycen = Y0 + r * Dsin(rcen)
    
    
    Moj$ = "": �[��Mark$ = Amark$
    ni = InStr(Amark$, ","): If ni > 2 Then �[��Mark$ = Mid(Amark$, 1, ni - 1): Moj$ = Mid(Amark$, ni + 1)
    ��r = P_���@_�[��_��_size
    Select Case �[��Mark$
        Case ""
        Case "<":
                   Select Case P_���@_�[��
                   Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X11, Y11, 0)
                   Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X11, Y11, 0)
                   Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X11, Y11, 0)
                   Case Else:   Call DPoint(X1, Y1)
                   End Select
        
        Case ">":
                   Select Case P_���@_�[��
                   Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X22, Y22, 0)
                   Case "���":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X22, Y22, 0)
                   Case "����":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X22, Y22, 0)
                   Case Else:   Call DPoint(X2, Y2)
                   End Select
        
        
        Case "<>":
                   Select Case P_���@_�[��
                   Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X11, Y11, 0): Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X22, Y22, 0)
                   Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X11, Y11, 0): Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X22, Y22, 0)
                   Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X11, Y11, 0): Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X22, Y22, 0)
                   Case Else:   Call DPoint(X1, Y1): Call DPoint(X2, Y2)
                   End Select
        
        Case Else: er ("[Darc] Amark=" + Amark$): If ����CK > 99 Then Stop
    
    End Select
        
    If Moj$ <> "" Then Call DsymC_D(Xcen, Ycen, ��������p�x��(rcen - 90), Moj$):    ' Call DPoint(Xcen, Ycen)
    
    End Sub
Sub Darc3(Amark$, X1, Y1, X2, Y2, X3, Y3)
    ' 3�_��ʂ�~��
    ' �ʒu                (X2,Y2)�͒��ԓ_
    '            (X1,Y1)              (X3,Y3)
    ' Amark �[���_�̎w��
    Call CALUCIR3(X1, Y1, X2, Y2, X3, Y3, AX0, AY0, Arc_r, r1, r2)
    Call Darc(Amark$, AX0, AY0, Arc_r, r1, r2)
    End Sub
Sub Darc_H(Amark$, X1, Y1, X2, Y2, H)
    ' 2�_��ʂ�  ����H�̉~��
    ' Amark �[���_�̎w��
    LL1 = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2) / 2
    HH1 = Abs(H): If HH1 > LL1 Then HH1 = LL1
         If HH1 = 0 Then HH1 = 1
         HH1 = HH1 * Sgn(H)
    �p�x = Calu�p�x(X1, Y1, X2, Y2): �p�x2 = �p�x + 90
    X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2
    X3D = X3 - HH1 * Dcos(�p�x2): Y3D = Y3 - HH1 * Dsin(�p�x2)
    Call Darc3(Amark$, X1, Y1, X3D, Y3D, X2, Y2)
    End Sub



'��������������������������������������������������������������������������������������������������������������������������������������
'��   Sym    ����                                                                                                                    ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dsym(X0, Y0, �����ʒu, �p�x, Moj$)
   '�� �ŏI sub
    If Moj$ = "" Then Exit Sub
    Call Dxf_sym(X0 * Sub�{��, Y0 * Sub�{��, �����ʒu, �p�x, Moj$)
    'Call Z_sym(X0, Y0, P_����_size_0, �����ʒu, MdxL, MdyL, �p�x, Moj$, P_Layer_0)
    End Sub


Sub DsymC(X0, Y0, �p�x, Moj$)
    ' X0,Y0 �������̒��c
    Call Dsym(X0, Y0, "CC", �p�x, Moj$)
    End Sub
Sub DsymL(X0, Y0, �p�x, Moj$)
    ' X0�������̍��[     Y0 �������̒��c
    Call Dsym(X0, Y0, "LC", �p�x, Moj$)
    End Sub
Sub DsymC_D(X0, Y0, �p�x, Moj$)
    ' X0 �������̒��c  Y0 �����̉�
    Call Dsym(X0, Y0, "C", �p�x, Moj$)
    End Sub
Sub DsymL_D(X0, Y0, �p�x, Moj$)
   Stop
    ' X0�������̍��[     Y0 �������̉�
     'MdyL = -P_����_size_0 / 2:  ' �{�� *�͕s�K�v
    Call Dsym(X0, Y0, "L", �p�x, Moj$)
    End Sub

'===================================================================================================================================
Sub Dsym_Ander_Line(X0, Y0, ��, �p�x, Moj$)
    ' X0,Y0 Moj �;���
    ' �� �����̔{��
       DL = �ϊ�M * �� * 0.5 * P_����_size_0 * (Len(Moj$) + N����(Moj$))
    XL = DL * Dcos(�p�x): YL = DL * Dsin(�p�x)
    X1 = X0 - XL / 2: Y1 = Y0 - YL / 2: X2 = X0 + XL / 2: Y2 = Y0 + YL / 2
    Call DLine(X1, Y1, X2, Y2)
    Call DsymC_D(X0, Y0, �p�x, Moj$)
    End Sub

'===================================================================================================================================
Sub Dsym��(X0, Y0, D, �p�x, Moj$)
    ' ����`������������ D=���̒��amm
'===================================================================================================================================
    D1 = D
    If D1 <= 0 Then
       D1 = P_����_size_0
       D2 = 0.5 * P_����_size_0 * (Len(Moj$) + N����(Moj$))
       If D1 < D2 Then D1 = D2
       D1 = D1 + 1
       End If
    Call D��(X0, Y0, D1, "")
    Call DsymC(X0, Y0, �p�x, Moj$)
    End Sub

'===================================================================================================================================
Sub Dsym��(X0, Y0, b, D, �ʒu, �p�x, Moj$)
    ' ����`������������  B*Dmm
'===================================================================================================================================
    ReDim X(6), Y(6)
    BB = b * �{��: DD = D * �{��
    If DD <= 0 Then DD = (P_����_size_0 + 0.6) * �{��
    If BB <= 0 Then BB = (0.5 * P_����_size_0 * (Len(Moj$) + N����(Moj$)) + 1#) * �{��
                      
    Select Case �ʒu
        Case "L", "LC": X(1) = X0: X(3) = X0 + BB: Y(1) = Y0 - DD / 2: Y(3) = Y0 + DD / 2
        Case "C", "CC": X(1) = X0 - BB / 2: X(3) = X0 + BB / 2: Y(1) = Y0 - DD / 2: Y(3) = Y0 + DD / 2
        Case "R", "RC": X(1) = X0 - BB: X(3) = X0: Y(1) = Y0 - DD / 2: Y(3) = Y0 + DD / 2
        Case "LD": X(1) = X0:  X(3) = X0 + BB: Y(1) = Y0:  Y(3) = Y0 + DD
        Case "CD": X(1) = X0 - BB / 2: X(3) = X0 + BB / 2: Y(1) = Y0: Y(3) = Y0 + DD
        Case "RD": X(1) = X0 - BB: X(3) = X0: Y(1) = Y0: Y(3) = Y0 + DD
        Case Else: er ("[Sub Dsym��] �ʒu=" + �ʒu): If ����CK > 99 Then Stop
        End Select
        X(2) = X(1): X(4) = X(3): Y(2) = Y(3): Y(4) = Y(1)
        X(5) = X(1): Y(5) = Y(1)
        X(6) = (X(1) + X(3)) / 2: Y(6) = (Y(1) + Y(3)) / 2
                          
    Call Thenkan(X0, Y0, �p�x, X(), Y(), 6)
    Call DLine1(X(), Y(), 4, 0)
    Call DsymC(X(6), Y(6), �p�x, Moj$)
    
    End Sub
'===================================================================================================================================
Sub D���L����(X0, Y0, ���LX, ���LY, ���Lpit, ���L������, ���L����$(), e$)
    ' X0, Y0
    ' ���LX, ���LY, ���Lpit mm
'===================================================================================================================================
               
    'Call PROTER�����l
    'Call D���C���ԍ�(17)
    X1 = ���LX:  Y1 = ���LY: Ypit = ���Lpit
    
    For ii = 1 To ���L������: Moj$ = ���L����$(ii)
    Select Case Mid$(Moj$, 1, 1)
    Case "#":  Call Ddata(",", Mid$(Moj$, 2), Ds$(), Di(), Nii)
               For iii = 1 To Nii
               D1$ = Mid$(Ds$(iii), 1, 1): ddd = Val(Mid$(Ds$(iii), 2))
               Select Case D1$
               Case "X": X1 = ddd
               Case "Y": Y1 = ddd
               Case "P": Ypit = ddd
               Case Else: e$ = "���L����  " & Moj$ & " ����������": Exit Sub
               End Select
               Next iii
'               Call D�}�`("P*")
               jX1 = X0 + X1 * ZU_Scale: jY1 = Y0 + Y1 * ZU_Scale
'               Call D�}�`("p:" & F9$(jX1) & "," & F9$(jY1))
'     Case "*": Call D�}�`(Mid$(Moj$, 2))
     Case Else:
               jX1 = X0 + X1 * ZU_Scale: jY1 = Y0 + Y1 * ZU_Scale
               Call DXY(jX1, jY1)
               Call DXFPmode(Moj$)
               Y1 = Y1 - Ypit
    End Select
    Next ii

    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   �}�`file                                                                                                                       ��
'��������������������������������������������������������������������������������������������������������������������������������������
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D�A�����@(X(), Y(), ���@��(), ���@�l$(), ni)
    '  ���@��`��
    '  X(i),Y(i)  : �_�̍��W
    '  ���@��()    : 0 ���@������                     [������]
    '  ���@�l$()   : ���@�l$()="" �̏ꍇ ���@�l���v�Z  [������]
    '  ni  �_�̐�
'===================================================================================================================================
    For i = 1 To ni: Call DPoint(X(i), Y(i)): Next i
    For i = 1 To ni - 1: l = Sqr((X(i + 1) - X(i)) ^ 2 + (Y(i + 1) - Y(i)) ^ 2)
        Moj$ = ���@�l$(i): If Moj$ = "" Then Moj$ = f0$(l)
        Call DLine����(1, X(i), Y(i), X(i + 1), Y(i + 1), "C", Moj$)
        �p�x = 90 + Calu�p�x(X(i), Y(i), X(i + 1), Y(i + 1))
        
        If ���@��(i) <> 0 Then
           L2 = �{�� * ���@��(i): �p�x = 90 + Calu�p�x(X(i), Y(i), X(i + 1), Y(i + 1))
           X2 = X(i) + L2 * Dcos(�p�x):  Y2 = Y(i) + L2 * Dsin(�p�x): Call DLine(X(i), Y(i), X2, Y2)
           End If
        Next i
        
        If ���@��(ni) <> 0 Then
           L2 = �{�� * ���@��(ni): X2 = X(ni) + L2 * Dcos(�p�x):  Y2 = Y(ni) + L2 * Dsin(�p�x): Call DLine(X(ni), Y(ni), X2, Y2)
           End If
    For i = 1 To ni: ���@��(i) = 0: ���@�l$(i) = "": Next i
    End Sub
'===================================================================================================================================
Sub D���@(X1, Y1, X2, Y2, ���@�l$, �_$, ���@��1, ���@��2, e$)
    ' H10.2.26
    ' �������۰ٗL�� *****
    '  ���@��`��
    '  (X1,Y1) (X2,Y2) : �_�̍��W
    '  ���@�l$   : ���@�l�ɂ�����`��     [������]
    '  ���@��1   : (X1,Y1)�ɐ��@����`��mm
    '  ���@��2   : (X2,Y2)�ɐ��@����`��mm
    '  �_  <  S   (X1,Y1)�ɓ_��`�� Start
    '  �_  >  E   (X2,Y2)�ɓ_��`�� End
    '  �_  <> SE   (X1,Y1),(X2,Y2)�ɓ_��`��
'===================================================================================================================================
    ' ���~�\��
    If ���@�l$ = "" Then ���@�l$ = f0$(Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2))
    �p�x = 90 + Calu�p�x(X1, Y1, X2, Y2)
    If ���@��1 <> 0 Then X3 = X1 + ZU_Scale * ���@��1 * Dcos(�p�x): Y3 = Y1 + ZU_Scale * ���@��1 * Dsin(�p�x): Call DLine(X1, Y1, X3, Y3)
    If ���@��2 <> 0 Then X3 = X2 + ZU_Scale * ���@��2 * Dcos(�p�x): Y3 = Y2 + ZU_Scale * ���@��2 * Dsin(�p�x): Call DLine(X2, Y2, X3, Y3)
    
    
    ��r = P_���@_�[��_��_size
    Select Case �_$
        Case "<", "S":
                   Select Case P_���@_�[��
                   Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0)
                   Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0)
                   Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0)
                   Case Else:   Call DPoint(X1, Y1)
                   End Select
        Case ">", "E":
                   Select Case P_���@_�[��
                   Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                   Case "���":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                   Case "����":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                   Case Else:   Call DPoint(X2, Y2)
                   End Select
        
        Case "<>", "SE":
                   Select Case P_���@_�[��
                   Case "��":     Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0): Call D��("<", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                   Case "���":   Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0): Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                   Case "����":   Call D��("L", 0, -��r, P_���@_�[��_��_�p�x, X1, Y1, X2, Y2, 0): Call D��("L", 0, ��r, P_���@_�[��_��_�p�x, X2, Y2, X1, Y1, 0)
                   Case Else:   Call DPoint(X1, Y1): Call DPoint(X2, Y2)
                   End Select
        
        Case Else: '�_����
        End Select
    
    Call DLine����(1, X1, Y1, X2, Y2, "C", ���@�l$)
    
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   �O�p�`                                                                                                                         ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D�O�p�`(X0, Y0, ��, ����, ��]�p, e$)
    ' �t�O�p�`��`��
    ' (X0,Y0) ���_
    ' ��]�p(��)
    'If ��]�p <> 0 Then ER ("D�O�p�` ��]�p <> 0"): Stop
    X1 = X0: Y1 = Y0: X2 = X1 - �� / 2: Y2 = Y1 + ����:: X3 = X1 + �� / 2: Y3 = Y1 + ����
    If ��]�p <> 0 Then Call ���W��](X1, Y1, ��]�p, X2, Y2): Call ���W��](X1, Y1, ��]�p, X3, Y3)
    Call DLine(X1, Y1, X2, Y2)
    Call DLine(X1, Y1, X3, Y3)
    Call DLine(X2, Y2, X3, Y3)
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   �n�b�`                                                                                                                         ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D�n�b�`4�_(X1, Y1, X2, Y2, X3, Y3, X4, Y4, �p�x, Pit, e$)
    ' ʯ���`��  -90<=  �p�x(��) <=90  Pit:�߯�mm
    ' ni �_�̐�
    ReDim X(10), Y(10)
    X(1) = X1: Y(1) = Y1: X(2) = X2: Y(2) = Y2: X(3) = X3: Y(3) = Y3: X(4) = X4: Y(4) = Y4
    pit2 = Pit * ZU_Scale: '**** ���  Rob_����ؽ�
    Call D_�n�b�`_1(X(), Y(), 4, �p�x, pit2, P_Layer_0, P_����_0, P_�F_0, e$)
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ��                                                                                                                             ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub P_D_Mark(X0, Y0, �p�x, Pdata$, �`���o���ʒu, �ړ�_����)
    ' Pdata$    exp  6x200+4x150+40x150+12x300
    ' X0,Y0 Start�ʒu�̒l���� End�ʒu�̒l�ɕς��
    ' �`���o���ʒu=2  1�Ԗڂ� ��`���Ȃ�
    ' �`���o���ʒu=-1  n�Ԗڂ̸�ٰ�� ��`���Ȃ�
    
    ' �ړ����� < 0 �̏ꍇ �t�����Ɉʒu���ړ�
    �ړ����� = 1: If �ړ�_���� < 0 Then �ړ����� = -1
    Mark$ = P_��_Mark$:  ��r = P_��_���� * �ϊ�M:  ���_�p�x = P_��_�p�x
    
    If �`���o���ʒu <> 2 Then Call P_Dmark(X0, Y0, �p�x)
    If Pdata$ <> "" Then
           Call Ddata("+", Pdata$, Ds$(), Di(), nni)
           For ii = 1 To nni: D1$ = UCase(Ds$(ii))
               Dpit = Di(ii): ni2 = 1:   ni = InStr(D1$, "X"): If ni > 1 Then ni2 = Val(D1$): Dpit = Val(Mid(D1$, ni + 1))
               For jj = 1 To ni2
                    X0 = X0 + �ړ����� * Dpit * Dcos(�p�x): Y0 = Y0 + �ړ����� * Dpit * Dsin(�p�x)
                    If ii = nni And jj = ni2 And �`���o���ʒu = -1 Then Exit For
                    Call P_Dmark(X0, Y0, �p�x)
                    Next jj
               Next ii
           End If
    End Sub






Sub P_Dmark(X0, Y0, �p�x)
    ' ni��  Mark ��`��
    ' X0,Y0 Start�ʒu�̒l���� End�ʒu�̒l�ɕς��
    Mark$ = P_��_Mark$:  ��r = P_��_���� * �ϊ�M:  ���_�p�x = P_��_�p�x
              Select Case Mark$
              Case ""
              Case "L": �p�x1 = �p�x + ���_�p�x: If ��r < 0 Then �p�x1 = �p�x - ���_�p�x
                        X3 = X0 + ��r * Dcos(�p�x1): Y3 = Y0 + ��r * Dsin(�p�x1): Call DLine(X0, Y0, X3, Y3)
        
              Case "<": �p�x1 = �p�x + ���_�p�x: �p�x2 = �p�x - ���_�p�x
                        X3 = X0 + ��r * Dcos(�p�x1): Y3 = Y0 + ��r * Dsin(�p�x1): Call DLine(X0, Y0, X3, Y3)
                        X3 = X0 + ��r * Dcos(�p�x2): Y3 = Y0 + ��r * Dsin(�p�x2): Call DLine(X0, Y0, X3, Y3)
              Case ".": Call DPoint(X0, Y0)
              Case Else: er ("Uxf [Sub D��] ��mark=" + ��mark): If ����CK > 99 Then Stop
              End Select
    End Sub




Sub D��(��mark$, D, ��r, ���_�p�x, X0, Y0, X2, Y2, ��L)
    ' D=���̒��amm   ��r ��󒷂�mm   ���W�Ŏw��
    ' ��mark     L, <,                ' Ng  ��L,  ��<
    ' ��L   ��L=0 �Ő���`���Ȃ�
    
    ��M$ = ��mark$
    X1 = X0: Y1 = Y0
    �p�x = Calu�p�x(X1, Y1, X2, Y2)
   ' If Mid$(��M$, 1, 1) = "��" Then
    If D > 0 Then
        '��M$ = Mid(��M$, 2)
        r = (D / 2) * �ϊ�M: Call Dcircle(X1, Y1, r)
        X1 = X1 + r * Dcos(�p�x): Y1 = Y1 + r * Dsin(�p�x):  ��mark = Mid$(��mark, 2)
        LL = F_�_AB��_����(X1, Y1, 0, X2, Y2, 0)
        If r > LL Then �p�x = �p�x + 180
        End If
    r = Abs(��r) * �ϊ�M
    Select Case ��M$
        Case ""
        Case "L": �p�x1 = �p�x + ���_�p�x: If ��r < 0 Then �p�x1 = �p�x - ���_�p�x
                  X3 = X1 + r * Dcos(�p�x1): Y3 = Y1 + r * Dsin(�p�x1): Call DLine(X1, Y1, X3, Y3)
        
        Case "<": �p�x1 = �p�x + ���_�p�x: �p�x2 = �p�x - ���_�p�x
                  X3 = X1 + r * Dcos(�p�x1): Y3 = Y1 + r * Dsin(�p�x1): Call DLine(X1, Y1, X3, Y3)
                  X3 = X1 + r * Dcos(�p�x2): Y3 = Y1 + r * Dsin(�p�x2): Call DLine(X1, Y1, X3, Y3)
        Case Else: er ("Uxf [Sub D��] ��mark=" + ��mark): If ����CK > 99 Then Stop
        End Select
    If ��L <> 0 Then Call DLine(X1, Y1, X2, Y2)
    End Sub
'===================================================================================================================================
Sub D��1(��mark$, D, ��r, ���_�p�x, X0, Y0, ����$, ����1, ����2, ����$)
    ' D=���̒��amm   ��r ��󒷂�mm   ���W�Ŏw��
    ' ��mark$     L, <,   NG ��L,  ��<
    ' ����$
    ' ����1,����2  mm
    ' 98.9.17
'===================================================================================================================================
    L1 = �{�� * ����1: L2 = �{�� * ����2: ��r1 = ��r
    Select Case ����$
    Case "U": X2 = X0: Y2 = Y0 + L1: X3 = X2 + L2: Y3 = Y2: �p�x = 0
    Case "D": X2 = X0: Y2 = Y0 - L1: X3 = X2 + L2: Y3 = Y2: �p�x = 0: ��r1 = -��r1
    Case "L": X2 = X0 - L1: Y2 = Y0: X3 = X2: Y3 = Y2 + L2: �p�x = 90
    Case "R": X2 = X0 + L1: Y2 = Y0: X3 = X2: Y3 = Y2 + L2: �p�x = 90: ��r1 = -��r1
    Case Else: Stop
    End Select
    Call D��(��mark$, D, ��r1, ���_�p�x, X0, Y0, X2, Y2, 1)
    Call DLine(X2, Y2, X3, Y3)
    Call Dsym(X2, Y2, "L", �p�x, ����$)
    
    End Sub
'===================================================================================================================================
Sub D��p�x(��mark, D, ��r, ���_�p�x, X0, Y0, �p�x, l, X2, Y2)
    ' D=���̒��amm   ��r ��󒷂�mm  �p�x(��)  �p�x�Ŏw��
'===================================================================================================================================
    X1 = X0: Y1 = Y0
    X2 = X0 + l * Dcos(�p�x): Y2 = Y0 + l * Dsin(�p�x)
    If Mid$(��mark, 1, 1) = "��" Then
        r = �{�� * D / 2: Call D��(X1, Y1, D, "")
        X1 = X1 + r * Dcos(�p�x): Y1 = Y1 + r * Dsin(�p�x):  ��mark = Mid$(��mark, 2)
        End If
    r = �{�� * ��r
    Select Case ��mark
        Case ""
        Case "L": �p�x1 = �p�x + ���_�p�x:  X3 = X1 + r * Dcos(�p�x1): Y3 = Y1 + r * Dsin(�p�x1): Call DLine(X1, Y1, X3, Y3)
        Case "<": �p�x1 = �p�x + ���_�p�x: �p�x2 = �p�x - ���_�p�x
                  X3 = X1 + r * Dcos(�p�x1): Y3 = Y1 + r * Dsin(�p�x1): Call DLine(X1, Y1, X3, Y3)
                  X3 = X1 + r * Dcos(�p�x2): Y3 = Y1 + r * Dsin(�p�x2): Call DLine(X1, Y1, X3, Y3)
        Case Else: er ("[Sub D��] ��mark=" + ��mark): If ����CK > 99 Then Stop
        End Select
    Call DLine(X1, Y1, X2, Y2)
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ���ؒf                                                                                                                         ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D�ؒf_Arc1(X1, Y1, X2, Y2, H)

'             Case "�ؒf�`1":     ' [�ؒf�`1:X1,Y1,X2,Y2,H]   �� (X1,Y1) - (X2,Y2) �ɐؒfMark�`1��t����  H ����mm
    ' H      : Arc �̍���
    '     �   �   �
    '     1   3   2
     
     LL1 = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2) / 4
     HH1 = H: If HH1 > LL1 Then HH1 = LL1
     �p�x = Calu�p�x(X1, Y1, X2, Y2): �p�x2 = �p�x + 90
     X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2
     Amark$ = ""
     Call Darc_H(Amark$, X1, Y1, X3, Y3, H)
     Call Darc_H(Amark$, X3, Y3, X2, Y2, H)
     Call Darc_H(Amark$, X3, Y3, X2, Y2, -H)
            
            

    End Sub




'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D�X���b�g(X0, Y0, ��, ����, ��]�p, Pit, e$)
    '[�د�:(Dx,Dy),XL,YL,�p�x,�߯�]
    ' �t�O�p�`��`��
    ' (X0,Y0) ���_
    ' ��]�p(��)
'===================================================================================================================================
    ReDim X(10), Y(10)
    X1 = X0: Y1 = Y0: X2 = X1 - �� / 2: Y2 = Y1 + ����: X3 = X1 + �� / 2: Y3 = Y1 + ����
    �n�b�`�p�x = 90 + ��]�p
    If ��]�p <> 0 Then Call ���W��](X1, Y1, ��]�p, X2, Y2): Call ���W��](X1, Y1, ��]�p, X3, Y3)
    Call DLine(X1, Y1, X2, Y2)
    Call DLine(X1, Y1, X3, Y3)
    Call DLine(X2, Y2, X3, Y3)
    X(1) = X1: Y(1) = Y1: X(2) = X2: Y(2) = Y2: X(3) = X3: Y(3) = Y3
    Call D_�n�b�`_1(X(), Y(), 3, �n�b�`�p�x, Pit, P_Layer_0, P_����_0, P_�F_0, e$)
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D�t�b�N(X0, Y0, X1, Y1, �p�x, D, l)
    ' (X0,Y0)         (X1,Y1) �Ȃ菉�߈ʒu
    ' D : ���a     L:�Ȃ�I�ʒu����̒��� 4d 6d �Ȃ�
    '
    '                  1
    '
    '      3    00     2
    '
    '      4
    '
    '                  0
    '
'===================================================================================================================================
    r = Abs(D / 2): Si = Sgn(�p�x)
    r1 = Calu�p�x(X0, Y0, X1, Y1): r3 = r1 + �p�x
    LLL = Sqr((X1 - X0) ^ 2 + (Y1 - Y0) ^ 2): LL2 = LLL - RR
    X2 = X0 + LL2 * Dcos(r1): Y2 = Y0 + LL2 * Dsin(r1)
    
    X00 = X2 + r * Dcos(r1 + Si * 90): Y00 = Y2 + r * Dsin(r1 + Si * 90)
    
    X3 = X00 + r * Dcos(�p�x + r1 - Si * 90): Y3 = Y00 + r * Dsin(�p�x + r1 - Si * 90)
    
    X4 = X3 + l * Dcos(r3): Y4 = Y3 + l * Dsin(r3)
    Call DLine(X0, Y0, X2, Y2):    Call DLine(X3, Y3, X4, Y4)
    Rs = r1 - Si * 90: RE = Rs + �p�x: If Si < 0 Then rS2 = Rs: Rs = RE: RE = rS2: '�p�x<0 �ŋt�ɂȂ�
    Call Darc("", X00, Y00, r, Rs, RE)
    
    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D_BOLT(X0, Y0, r, BOLT$, ALPKEI, Layer$, color$, er1$)
     ' X0,Y0 ���Ē��S
     'ALPKEI  �}�`�{��
'===================================================================================================================================
     ReDim Xp(10), Yp(10)
     
     P_Layer_0 = Layer$: P_����_0 = "CONTINUOUS":  P_�F_0 = color$
     
     kei = Val(Mid$(BOLT$, 2))
     If ALPKEI <= 0 Then er1$ = " �}�`�{�� <=0 ": Exit Sub
     D = ALPKEI * kei / 2: D2 = 1.3 * D: D3 = 0.5 * D
     
     
     Select Case BOLT$
     Case "M12": Call Dcircle(X0, Y0, D)
     Case "M16": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 Call Dcircle(X0, Y0, 0.3 * D)
     Case "M20": Call Dcircle(X0, Y0, D)
                 Xp(1) = X0 - D2: Yp(1) = Y0: Xp(2) = X0 + D2: Yp(2) = Y0
                 Call Thenkan(X0, Y0, r, Xp(), Yp(), 2)
                 Call DLine(Xp(1), Yp(1), Xp(2), Yp(2))
     Case "M22": Call Dcircle(X0, Y0, D)
                 Xp(1) = X0 - D2: Yp(1) = Y0: Xp(2) = X0 + D2: Yp(2) = Y0
                 Xp(3) = X0 - D2: Yp(3) = Y0 - D3: Xp(4) = X0 + D2: Yp(4) = Y0 + D3
                 Call Thenkan(X0, Y0, r, Xp(), Yp(), 4)
                 Call DLine(Xp(1), Yp(1), Xp(2), Yp(2))
                 Call DLine(Xp(3), Yp(3), Xp(4), Yp(4))
     Case "M24": Call Dcircle(X0, Y0, D)
                 Xp(1) = X0 - D2: Yp(1) = Y0: Xp(2) = X0 + D2: Yp(2) = Y0
                 Xp(3) = X0 - D2: Yp(3) = Y0 - D3: Xp(4) = X0 + D2: Yp(4) = Y0 + D3
                 Call Thenkan(X0, Y0, r, Xp(), Yp(), 4)
                 Call DLine(Xp(1), Yp(1), Xp(2), Yp(2))
                 Call DLine(Xp(3), Yp(3), Xp(4), Yp(4))
                 er ("M24 ******"): If ����CK > 99 Then Stop
     Case Else: er1$ = "���Ča���������� " + BOLT$
     End Select
     
End Sub
'===================================================================================================================================
Sub D_BOLTDANMEN(X0, Y0, r, Ztype, BOLT$, BL, ALPKEI, Layer$, color$, er1$)
     ' X0,Y0 ���ĉ����S
     ' BL ���Ē���
     ' Ztype   1:����������  2:�����Ȃ�����
     ' ALPKEI  �}�`�{��
     '
     '                   1
     '
     '                2  |  3
     '                   |
     '                   |
     '             4  5     6  7
     '                   |          D3
     '             8  9    10 11
     '                              D4
     '               12    13
     '                              D5
     '                  14
     '
     '              D2       D2
     '
'===================================================================================================================================
  Stop: '****
     ReDim Xp(15), Yp(15)
     kei = Val(Mid$(BOLT$, 2))
     If ALPKEI <= 0 Then er1$ = " �}�`�{�� <=0 ": Exit Sub
     D = ALPKEI * kei / 2: D2 = 1.5 * D: D3 = 0.8 * D: D4 = 0.5 * D: D5 = 0.5 * D
     Xp(1) = X0: Yp(1) = Y0
     Xp(2) = X0 - D: Yp(2) = Y0
     Xp(3) = X0 + D: Yp(3) = Y0
     
     Xp(4) = X0 - D2: Yp(4) = Y0 - BL
     Xp(5) = X0 - D:  Yp(5) = Y0 - BL
     Xp(6) = X0 + D:  Yp(6) = Y0 - BL
     Xp(7) = X0 + D2: Yp(7) = Y0 - BL
     
     Xp(8) = X0 - D2:  Yp(8) = Y0 - BL - D3
     Xp(9) = X0 - D:   Yp(9) = Y0 - BL - D3
     Xp(10) = X0 + D:  Yp(10) = Y0 - BL - D3
     Xp(11) = X0 + D2: Yp(11) = Y0 - BL - D3

     Xp(12) = X0 - D:  Yp(12) = Y0 - BL - D3 - D4
     Xp(13) = X0 + D:  Yp(13) = Y0 - BL - D3 - D4
     Xp(14) = X0:      Yp(14) = Y0 - BL - D3 - D4 - D5
                 
     Call Thenkan(X0, Y0, r, Xp(), Yp(), 14)
     
     '���ē�����
     Zline$ = "CONTINUOUS": If Ztype = 2 Then Zline$ = "DOT"
     r1 = r: r2 = 180 + r: Call Z_arc(Xp(1), Yp(1), D2, r1, r2, Layer$, Zline$, color$)
     
     '���Ď�����
     If Ztype = 1 Then
        Zline$ = "DOT"
        Call Dxf_Line(Xp(2), Yp(2), Xp(5), Yp(5))
        Call Dxf_Line(Xp(3), Yp(3), Xp(6), Yp(6))
        End If

     'ůĕ���
     Zline$ = "CONTINUOUS": If Ztype = 2 Then Zline$ = "DOT"
     Call Dxf_Line(Xp(4), Yp(4), Xp(8), Yp(8))
     Call Dxf_Line(Xp(8), Yp(8), Xp(11), Yp(11))
     Call Dxf_Line(Xp(11), Yp(11), Xp(7), Yp(7))

     '���ďo����
     Zline$ = "CONTINUOUS": If Ztype = 2 Then Zline$ = "DOT"
'     Call Dxf_Line(Xp(9), Yp(9), Xp(12), Yp(12), Layer$)
'     Call Dxf_Line(Xp(12), Yp(12), Xp(13), Yp(13), Layer$)
'     Call Dxf_Line(Xp(13), Yp(13), Xp(10), Yp(10), Layer$)
     
     '���Ď����S
     Zline$ = "CENTER1"
     Call Dxf_Line(X0, Y0, Xp(14), Yp(14))


End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub Z_JOINT(X0, Y0, ����Y�ʒu, ��]�p, Jname$, BOLT$, JSteel$, FraALP, �ڍ����J��, Ds$(), Layer$, Zcolor$, er1$)
    '
    ' ����Y�ʒu     : mm
    ' �ڍ����J��    : �ڍ����J�� 5mm
    '
    '
'===================================================================================================================================
       ReDim Xp(100), Yp(100)
       
       r = ��]�p
       ����Y�ʒu2 = ����Y�ʒu * �ϊ�M
       er2$ = "": '       er1$ = "�����ʒu=" + F1$(10 * �ϊ�M)
       ni = InStr(er1$, "="): If ni > 0 Then er2$ = Mid$(er1$, ni + 1): er1$ = Mid$(er1$, 1, ni)
       
       Select Case er1$
       Case "����NO": �����`��$ = "N"
       Case "�����ʒu=": ����Y�ʒu2 = Val(er2$) * �ϊ�M
       Case Else
       End Select

       �t�����W�� = 0
       ni = InStr(JSteel$, "|"): If ni > 1 Then �t�����W�� = Val(Mid$(JSteel$, ni + 1)): JSteel$ = Mid$(JSteel$, 1, ni - 1)
       
       
       er1$ = ""
          ni = InStr(JSteel$, "-"): Steel_H = Val(Mid$(JSteel$, ni + 1)): ' H�^�|��
          If ni = 0 Then er ("*Z_JOINT  �S�������ް����������� " + JSteel$): Stop
          ni = InStr(JSteel$, "x"): Steel_B = Val(Mid$(JSteel$, ni + 1)): ' H�^�|��
          ni = InStr(ni + 1, JSteel$, "x"): Web_t = Val(Mid$(JSteel$, ni + 1)): ' H�^web t
          ni = InStr(ni + 1, JSteel$, "x"): Fra_t = Val(Mid$(JSteel$, ni + 1)): ' H�^Fra t

          If �t�����W�� > Fra_t Then Fra_t = �t�����W��
              
              JboltM = Val(Mid$(BOLT$, 2))
              Select Case JboltM
                 Case 16, 20, 22: Fe1 = 40: We1 = 40: Bpit = 60: Bpit2 = 45: ': Bpit2 =�����߯�
                 Case 24: Fe1 = 45: We1 = 45: Bpit = 70: Bpit2 = 50
                 Case Else: er (Jname$ + " ���Ča���������� " + BOLT$): Stop
                 End Select

          Frabolt1$ = Ds$(1): FraboltnF = Val(Ds$(2)): FraP1 = Val(Ds$(3))
          Webbolt1$ = Ds$(4):
          WebboltnF1 = Val(Ds$(5)): WebboltnF2 = Val(Ds$(6)): WebboltnF = WebboltnF1 + WebboltnF2
          WebP2 = Val(Ds$(7))
          Frag1 = Val(Ds$(8)): Frag2 = Val(Ds$(9)): Webg3 = Val(Ds$(10))
          Frat1 = Val(Ds$(11)): Fraa1 = Val(Ds$(12)): Frat2 = Val(Ds$(13)): Fraa2 = Val(Ds$(14)): FraL1 = Val(Ds$(15))
          Webt3 = Val(Ds$(16)): Weba3 = Val(Ds$(17)): Weba4 = Val(Ds$(18)): WebL2 = Val(Ds$(19))

          Moj1$ = "$LT=0.55\[�ڍ��� " + Jname$ + "]"
          Moj2$ = "$LT=0.55\��ݼ� [�O]  SPL-" + F9$(Frat1) + " H.T.B " + F9$(FraboltnF) + "-" + BOLT$ + " " + Frabolt1$
          Moj3$ = "$LT=0.55\      [��]  SPL-" + F9$(Frat2)
          Moj4$ = "$LT=0.55\����   �@  2SPL-" + F9$(Webt3) + " H.T.B " + F9$(WebboltnF) + "-" + BOLT$ + " " + Webbolt1$
      
     Xp(1) = X0: Yp(1) = Y0: Xp(2) = X0: Yp(2) = Y0 - Steel_H
     Call Thenkan(X0, Y0, r, Xp(), Yp(), 2)
     Call Z_Line(Xp(1), Yp(1), Xp(2), Yp(2), Layer$, "DOT", "2")
      
     Frat1 = FraALP * Frat1: Frat2 = FraALP * Frat2
      '����ݼ�
          b = FraL1: H = Frat1: X1 = X0: Y1 = Y0 + H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
          b = FraL1: H = Frat2: X1 = X0: Y1 = Y0 - Fra_t - H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
      '����ݼ�
          b = FraL1: H = Frat1: X1 = X0: Y1 = Y0 - Steel_H - H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
          b = FraL1: H = Frat2: X1 = X0: Y1 = Y0 - Steel_H + Fra_t + H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
      '����
          WebY1 = 0: WebY2 = 0
          If WebboltnF1 * WebboltnF2 > 0 Then
             Weba100 = (Weba3 + Weba4) / 2
             WebY1 = Weba100 - Weba3 / 2 + 20
             WebY2 = Weba100 - Weba4 / 2 + 20
             End If
          
          If WebboltnF1 > 0 Then
             b = WebL2: H = Weba3: X1 = X0: Y1 = Y0 - Steel_H / 2 + WebY1
             Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
             End If
          If WebboltnF2 > 0 Then
             b = WebL2: H = Weba4: X1 = X0: Y1 = Y0 - Steel_H / 2 - WebY2
             Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
             End If
      '��ݼ�����
       'Call D_BOLTDANMEN(X0, Y0, R, ZTYPE, Bolt$, BL, ALPKEI, LAYER$, Zcolor$, er1$)
       BL = Frat1 + Frat2 + Fra_t
       Select Case Frabolt1$
       Case "1��"
                  '����ݼ�����
                  n2 = FraboltnF / 2: n3 = n2 + 1
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - �ڍ����J��) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 + Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = n3 To FraboltnF: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = 1 To FraboltnF: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
                  '����ݼ�����
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - �ڍ����J��) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 - Steel_H - Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = n3 To FraboltnF: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = 1 To FraboltnF: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r + 180, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
       Case "2��"
                  '����ݼ�����
                  n2 = FraboltnF / 4: n3 = n2 + 1
                  Xp(1) = (FraL1 - (FraboltnF / 2 - 2) * FraP1 - �ڍ����J��) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 + Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = n3 To FraboltnF / 2: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = 1 To FraboltnF / 2: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF / 2: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
                  '����ݼ�����
                  Xp(1) = (FraL1 - (FraboltnF / 2 - 2) * FraP1 - �ڍ����J��) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 - Steel_H - Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = n3 To FraboltnF / 2: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = 1 To FraboltnF / 2: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF / 2: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r + 180, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
       Case "�璹", "����"
                  '����ݼ�����
                  n2 = FraboltnF / 2: n3 = n2 + 1
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - �ڍ����J��) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 + Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = n3 To FraboltnF: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = 1 To FraboltnF: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  If n2 / 2 = Int(n2 / 2) Then Ztype = 2 Else Ztype = 1
                  For II9 = 1 To n2: If Ztype = 1 Then Ztype = 2 Else Ztype = 1
                     Call D_BOLTDANMEN(Xp(II9), Yp(II9), r, Ztype, BOLT$, BL, 1, Layer$, Zcolor$, er1$)
                     Next II9
                  If n2 / 2 = Int(n2 / 2) Then Ztype = 2 Else Ztype = 1
                  For II9 = n2 + 1 To FraboltnF: If Ztype = 1 Then Ztype = 2 Else Ztype = 1
                     Call D_BOLTDANMEN(Xp(II9), Yp(II9), r, Ztype, BOLT$, BL, 1, Layer$, Zcolor$, er1$)
                     Next II9
                  '����ݼ�����
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - �ڍ����J��) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 - Steel_H - Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = n3 To FraboltnF: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = 1 To FraboltnF: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  If n2 / 2 = Int(n2 / 2) Then Ztype = 2 Else Ztype = 1
                  For II9 = 1 To n2: If Ztype = 1 Then Ztype = 2 Else Ztype = 1
                     Call D_BOLTDANMEN(Xp(II9), Yp(II9), r + 180, Ztype, BOLT$, BL, 1, Layer$, Zcolor$, er1$)
                     Next II9
                  If n2 / 2 = Int(n2 / 2) Then Ztype = 2 Else Ztype = 1
                  For II9 = n2 + 1 To FraboltnF: If Ztype = 1 Then Ztype = 2 Else Ztype = 1
                     Call D_BOLTDANMEN(Xp(II9), Yp(II9), r + 180, Ztype, BOLT$, BL, 1, Layer$, Zcolor$, er1$)
                     Next II9
       Case Else: er ("��ݼ����� ���� " + Frabolt1$): Stop
       End Select
       
      '��������
       'Call D_BOLT(X0, Y0, R, Bolt$, ALPKEI, LAYER$, Zcolor$, er1$)
       Select Case Webbolt1$
       Case "1��"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (WebboltnF1 - 1) / 2
                  Xp(1) = (WebL2 - �ڍ����J��) / 4 + 2.5: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 + WebY1
                  For II9 = 2 To WebboltnF1: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  n3 = WebboltnF1 + 1: N4 = 2 * WebboltnF1
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
          If WebboltnF2 > 0 Then
                  N0 = WebboltnF2: n2 = (WebboltnF2 - 1) / 2
                  Xp(1) = (WebL2 - �ڍ����J��) / 4 + 2.5: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 - WebY2
                  For II9 = 2 To WebboltnF2: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  n3 = WebboltnF2 + 1: N4 = 2 * WebboltnF2
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
       Case "2��"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (Int(WebboltnF1 / 2 + 0.6) - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + �ڍ����J�� / 2: Xp(2) = Xp(1) + WebP2
                  Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 + WebY1: Yp(2) = Yp(1)
                  For II9 = 3 To WebboltnF1 Step 2
                      Xp(II9) = Xp(II9 - 2): Xp(II9 + 1) = Xp(II9 - 1): Yp(II9) = Yp(II9 - 2) + Webg3
                      Yp(II9 + 1) = Yp(II9)
                      Next II9
                  n3 = WebboltnF1 + 1: N4 = 2 * WebboltnF1
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
          If WebboltnF2 > 0 Then
                  N0 = WebboltnF2: n2 = (Int(WebboltnF2 / 2 + 0.6) - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + �ڍ����J�� / 2: Xp(2) = Xp(1) + WebP2
                  Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 - WebY2: Yp(2) = Yp(1)
                  For II9 = 3 To WebboltnF2 Step 2
                      Xp(II9) = Xp(II9 - 2): Xp(II9 + 1) = Xp(II9 - 1): Yp(II9) = Yp(II9 - 2) + Webg3
                      Yp(II9 + 1) = Yp(II9)
                      Next II9
                  n3 = WebboltnF2 + 1: N4 = 2 * WebboltnF2
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
       Case "3��"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (Int(WebboltnF1 / 2 + 0.6) - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + �ڍ����J�� / 2: Xp(2) = Xp(1) + WebP2
                  Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 + WebY1: Yp(2) = Yp(1)
                  For II9 = 3 To WebboltnF1 Step 2
                      Xp(II9) = Xp(II9 - 2): Xp(II9 + 1) = Xp(II9 - 1): Yp(II9) = Yp(II9 - 2) + Webg3
                      Yp(II9 + 1) = Yp(II9)
                      Next II9
                  n3 = WebboltnF1 + 1: N4 = 2 * WebboltnF1
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
          If WebboltnF2 > 0 Then
                  N0 = WebboltnF2: n2 = (Int(WebboltnF2 / 2 + 0.6) - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + �ڍ����J�� / 2: Xp(2) = Xp(1) + WebP2
                  Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 - WebY2: Yp(2) = Yp(1)
                  For II9 = 3 To WebboltnF2 Step 2
                      Xp(II9) = Xp(II9 - 2): Xp(II9 + 1) = Xp(II9 - 1): Yp(II9) = Yp(II9 - 2) + Webg3
                      Yp(II9 + 1) = Yp(II9)
                      Next II9
                  n3 = WebboltnF2 + 1: N4 = 2 * WebboltnF2
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
       Case "�璹", "����"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (WebboltnF1 - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 + WebY1
                  For II9 = 2 To WebboltnF1: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  For II9 = 2 To WebboltnF1 Step 2: Xp(II9) = Xp(1) + WebP2: Next II9
                  n3 = WebboltnF1 + 1: N4 = 2 * WebboltnF1
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
          If WebboltnF2 > 0 Then
                  N0 = WebboltnF2: n2 = (WebboltnF2 - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + �ڍ����J�� / 2: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 - WebY2
                  For II9 = 2 To WebboltnF2: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  For II9 = 2 To WebboltnF2 Step 2: Xp(II9) = Xp(1) + WebP2: Next II9
                  n3 = WebboltnF2 + 1: N4 = 2 * WebboltnF2
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
       Case Else: er ("�������� ���� " + Webbolt1$): Stop
       End Select

        
        jX1 = X0: jY1 = Y0 - Steel_H - ����Y�ʒu2 ':     Call Z_sym(jX1, jY1, 2, "C", 0, 0, 0, Moj1$, Layer$)
        
        If �����`��$ = "" Then

            jX1 = X0 - 20 * �ϊ�M: jY1 = jY1 - 2.8 * �ϊ�M ':      Call Z_sym(jX1, jY1, 2, "L", 0, 0, 0, Moj2$, Layer$)
            jY1 = jY1 - 2.5 * �ϊ�M ':        Call Z_sym(jX1, jY1, 2, "L", 0, 0, 0, Moj3$, Layer$)
            jY1 = jY1 - 2.8 * �ϊ�M ':        Call Z_sym(jX1, jY1, 2, "L", 0, 0, 0, Moj4$, Layer$)
            End If


      End Sub

Private Sub SC_�p�x(�p�x, SN, CS)
    ' �p�x�@(�x)
     r = �p�x
          Do:  If r >= 0 Then Exit Do
               r = r + 360
               Loop
          Do:  If r < 360 Then Exit Do
               r = r - 360
               Loop
          Select Case r
              Case 0:    SN = 0: CS = 1
              Case 90:   SN = 1: CS = 0
              Case 180:  SN = 0: CS = -1
              Case 270:  SN = -1: CS = 0
              Case Else: SN = Sin(3.141592653589 * r / 180): CS = Cos(3.141592653589 * r / 180)
              End Select
   End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D_Box(X1, Y1, ��]�p, b, H, Layer$, Zline$, Zcolor$)
     ' box���������_
     '��]�p : �}�`��] �����v����+
     'X1,Y1,B,  H
     
     ReDim X(50), Y(50)
     
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     
     XXi = X1: YYi = Y1
     X(1) = XXi - b / 2: X(4) = X(1)
     X(2) = XXi + b / 2: X(3) = X(2)
     Y(1) = YYi + H / 2: Y(2) = Y(1)
     Y(3) = YYi - H / 2: Y(4) = Y(3)

     If ��]�p <> 0 Then er ("��]�p<>0  "):  Stop
     Call DLine(X(1), Y(1), X(2), Y(2))
     Call DLine(X(2), Y(2), X(3), Y(3))
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(4), Y(4), X(1), Y(1))
     X1 = XXi: Y1 = YYi


End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D_ste_BH(X1, Y1, ��]�p, BH_U, BH_D, H, FrU, FrD, web, JCU, JCD, HR, Layer$, Zline$, Zcolor$)
     'JSTEBH: '.......
     '��]�p �}���S �����v���+, BH_U,BH_D, H, FrU, FrD, Web
     'JCU,JCD  : ���ވʒu����
     'HR : BH�̕ό`�p�x �� ���v���+
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     
     r = ��]�p
     
     If HR >= 90 Then er ("HR>=90�"): Stop
     XXi = X1: YYi = Y1: Jpi = 3.14159265 * HR / 180
     CS = Cos(Jpi): SN = Sin(Jpi): TN = Tan(Jpi)
     HRU = (H / 2 - FrU) * TN
     HRD = (H / 2 - FrD) * TN
     X(1) = -BH_U / 2 + JCU - HRU: X(16) = X(1)
     X(2) = -HRU: X(6) = X(2)
     X(3) = BH_U / 2 + JCU - HRU: X(4) = X(3)
     X(5) = web / 2 / CS + JCU - HRU
     X(7) = HRD: X(11) = X(7)
     X(8) = web / 2 / CS + JCD + HRD
     X(9) = BH_D / 2 + JCD + HRD: X(10) = X(9)
     X(12) = -BH_D / 2 + JCD + HRD: X(13) = X(12)
     X(14) = -web / 2 / CS + JCD + HRD
     X(15) = -web / 2 / CS + JCU - HRU
    
     Y(1) = H / 2: Y(2) = Y(1): Y(3) = Y(1)
     Y(4) = H / 2 - FrU: Y(5) = Y(4): Y(6) = Y(4): Y(15) = Y(4): Y(16) = Y(4)
     Y(7) = -H / 2 + FrD: Y(8) = Y(7): Y(9) = Y(7): Y(13) = Y(7): Y(14) = Y(7)
     Y(10) = -H / 2: Y(11) = Y(10): Y(12) = Y(10)
    
     If r <> 0 Then
          Call SC_�p�x(r, SN_B, CS_B)
          
          For i = 1 To 20
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 20: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     
     
     '����ݼ�
     Call DLine(X(1), Y(1), X(3), Y(3))
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(4), Y(4), X(16), Y(16))
     Call DLine(X(1), Y(1), X(16), Y(16))
    
     '����ݼ�
     Call DLine(X(9), Y(9), X(10), Y(10))
     Call DLine(X(10), Y(10), X(12), Y(12))
     Call DLine(X(12), Y(12), X(13), Y(13))
     Call DLine(X(9), Y(9), X(13), Y(13))

     '����
     Call DLine(X(5), Y(5), X(8), Y(8))
     Call DLine(X(14), Y(14), X(15), Y(15))
    
     X1 = XXi: Y1 = YYi



End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D_ste_box(X1, Y1, ��]�p, b, H, T, br, Layer$, Zline$, Zcolor$)
     'JSTEBOX: '.......
     '��]�p(�x) �}���S �����v���+,  B, H, t,BR
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     r = ��]�p

     XXi = X1: YYi = Y1
     X(1) = -b / 2 + br: X(6) = X(1): X(9) = X(1): X(14) = X(1)
                                  X(17) = X(1): X(20) = X(1)
     X(2) = b / 2 - br: X(5) = X(2): X(10) = X(2): X(13) = X(2)
                                  X(18) = X(2): X(19) = X(2)
     X(3) = b / 2: X(4) = X(3)
     X(7) = -b / 2: X(8) = X(7)
     X(11) = b / 2 - T: X(12) = X(11)
     X(15) = -b / 2 + T: X(16) = X(15)
    
     Y(1) = H / 2: Y(2) = Y(1)
     Y(3) = H / 2 - br: Y(8) = Y(3): Y(11) = Y(3): Y(16) = Y(3)
                                  Y(17) = Y(3): Y(18) = Y(3)
     Y(4) = -H / 2 + br: Y(7) = Y(4): Y(12) = Y(4): Y(15) = Y(4)
                                  Y(19) = Y(4): Y(20) = Y(4)
     Y(5) = -H / 2: Y(6) = Y(5)
     Y(9) = H / 2 - T: Y(10) = Y(9)
     Y(13) = -H / 2 + T: Y(14) = Y(13)
    
     
     If r <> 0 Then
          Call SC_�p�x(r, SN_B, CS_B)
          
          For i = 1 To 20
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 20: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     
     
     '��ݼ�
     Call DLine(X(1), Y(1), X(2), Y(2))
     Call DLine(X(9), Y(9), X(10), Y(10))
     Call DLine(X(5), Y(5), X(6), Y(6))
     Call DLine(X(13), Y(13), X(14), Y(14))
   
     '����
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(11), Y(11), X(12), Y(12))
     Call DLine(X(7), Y(7), X(8), Y(8))
     Call DLine(X(15), Y(15), X(16), Y(16))
     If br > 0 Then
        Call Darc("", X(17), Y(17), br, 90 + r, 180 + r)
        Call Darc("", X(18), Y(18), br, r, 90 + r)
        Call Darc("", X(19), Y(19), br, -90 + r, r)
        Call Darc("", X(20), Y(20), br, 180 + r, 270 + r)
        End If
     If br - T > 0 Then
        Call Darc("", X(17), Y(17), br - T, 90 + r, 180 + r)
        Call Darc("", X(18), Y(18), br - T, r, 90 + r)
        Call Darc("", X(19), Y(19), br - T, -90 + r, r)
        Call Darc("", X(20), Y(20), br - T, 180 + r, 270 + r)
        End If
   
     X1 = XXi: Y1 = YYi



End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D_ste_H(X1, Y1, ��]�p, b, H, Fr, web, HR, Layer$, Zline$, Zcolor$)
     ' JSTEH: '.......
     '��]�p(�x) �}���S �����v���+,  B,  H, Fr, Web, HR
     
     r = ��]�p
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     
     XXi = X1: YYi = Y1
     X(1) = -b / 2: X(12) = X(1): X(13) = X(1): X(20) = X(1)
     X(2) = b / 2: X(3) = X(2): X(10) = X(2): X(11) = X(2)
     X(4) = web / 2 + HR: X(5) = X(4): X(8) = X(4): X(9) = X(4)
     X(6) = web / 2: X(7) = X(6)
     X(14) = -web / 2 - HR: X(15) = X(14): X(18) = X(14): X(19) = X(14)
     X(16) = -web / 2: X(17) = X(16)
    
     Y(1) = H / 2: Y(2) = Y(1)
     Y(3) = H / 2 - Fr: Y(4) = Y(3): Y(19) = Y(3): Y(20) = Y(3)
     Y(5) = H / 2 - Fr - HR: Y(6) = Y(5): Y(17) = Y(5): Y(18) = Y(5)
     Y(7) = -H / 2 + Fr + HR: Y(8) = Y(7): Y(15) = Y(7): Y(16) = Y(7)
     Y(9) = -H / 2 + Fr: Y(10) = Y(9): Y(13) = Y(9): Y(14) = Y(9)
     Y(11) = -H / 2: Y(12) = Y(11)

     If r <> 0 Then
          Call SC_�p�x(r, SN_B, CS_B)
          
          For i = 1 To 20
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 20: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     
     '����ݼ�
     Call DLine(X(1), Y(1), X(2), Y(2))
     Call DLine(X(2), Y(2), X(3), Y(3))
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(19), Y(19), X(20), Y(20))
     Call DLine(X(1), Y(1), X(20), Y(20))
       
     '����ݼ�
     Call DLine(X(9), Y(9), X(10), Y(10))
     Call DLine(X(10), Y(10), X(11), Y(11))
     Call DLine(X(11), Y(11), X(12), Y(12))
     Call DLine(X(12), Y(12), X(13), Y(13))
     Call DLine(X(13), Y(13), X(14), Y(14))
       
     '����
     Call DLine(X(6), Y(6), X(7), Y(7))
     Call DLine(X(16), Y(16), X(17), Y(17))
    
     If HR > 0 Then
        D = HR
        Call Darc("", X(5), Y(5), HR, 90 + r, 180 + r)
        Call Darc("", X(8), Y(8), HR, 180 + r, 270 + r)
        Call Darc("", X(15), Y(15), HR, -90 + r, r)
        Call Darc("", X(18), Y(18), HR, r, 90 + r)
        End If
     X1 = XXi: Y1 = YYi

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D_ste_L(X1, Y1, ��]�p, b, H, T, Layer$, Zline$, Zcolor$)
     ' JSTEL: '.......
     '��]�p �}���S �����v���+,  B,  H, t
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     r = ��]�p
     
     XXi = X1: YYi = Y1: JLR = 1.2 * T
     X(1) = -b / 2: X(9) = X(1): X(10) = X(1)
     X(2) = -b / 2 + T: X(3) = X(2)
     X(4) = -b / 2 + T + JLR: X(5) = X(4)
     X(6) = b / 2 - T
     X(7) = b / 2
     X(8) = b / 2 - T
   
   
     Y(1) = H / 2:
     Y(2) = H / 2 - T: Y(10) = Y(2)
     Y(3) = -H / 2 + T + JLR
     Y(4) = -H / 2 + T + JLR
     Y(5) = -H / 2 + T: Y(6) = Y(5)
     Y(7) = -H / 2: Y(8) = Y(7): Y(9) = Y(7)

     If r <> 0 Then
          Call SC_�p�x(r, SN_B, CS_B)
          
          For i = 1 To 10
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 10: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     Call DLine(X(9), Y(9), X(1), Y(1))
     Call DLine(X(9), Y(9), X(7), Y(7))
     Call DLine(X(3), Y(3), X(2), Y(2))
     Call DLine(X(5), Y(5), X(6), Y(6))
      
   
     Call Darc("", X(4), Y(4), JLR, 180 + r, 270 + r)
     Call Darc("", X(10), Y(10), T, r, 90 + r)
     Call Darc("", X(8), Y(8), T, r, 90 + r)
     X1 = XXi: Y1 = YYi

    End Sub
Sub D_ste_L_r(X1, Y1, ��]�p, b, H, T, Layer$, Zline$, Zcolor$)
     ' JSTEL: '.......
     '��]�p �}���S �����v���+,  B,  H, t
     
     Stop
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     r = ��]�p
     
     XXi = X1: YYi = Y1: JLR = 1.2 * T
     X(1) = -b / 2: X(9) = X(1): X(10) = X(1)
     X(2) = b / 2 - T: X(4) = X(2)
     X(3) = b / 2
     X(5) = -b / 2 + T + JLR: X(6) = X(5)
     X(7) = -b / 2 + T: X(8) = X(7)
   
     Y(1) = H / 2: Y(2) = Y(1): Y(3) = Y(1)
     Y(4) = H / 2 - T: Y(5) = Y(4)
     Y(6) = H / 2 - T - JLR: Y(7) = Y(6)
     Y(8) = -H / 2 + T: Y(10) = Y(8)
     Y(9) = -H / 2

     If r <> 0 Then
          Call SC_�p�x(r, SN_B, CS_B)
          
          For i = 1 To 10
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 10: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     Call DLine(X(1), Y(1), X(3), Y(3))
     Call DLine(X(4), Y(4), X(5), Y(5))
     Call DLine(X(7), Y(7), X(8), Y(8))
     Call DLine(X(1), Y(1), X(9), Y(9))
      
   
     Call Darc("", X(6), Y(6), JLR, 90 + r, 180 + r)
     Call Darc("", X(2), Y(2), T, -90 + r, r)
     Call Darc("", X(10), Y(10), T, -90 + r, r)
     X1 = XXi: Y1 = YYi

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub D_ste_MIZO(X1, Y1, ��]�p, b, H, Fr, web, Layer$, Zline$, Zcolor$)

     ' JSTEMIZO: '....... [ �^�|
     '��]�p �}���S �����v���+,  B,  H, Fr, Web
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     r = ��]�p
     
     XXi = X1: YYi = Y1: Mi_r = 1.2 * Fr
     X(1) = -b / 2: X(14) = X(1)
     X(2) = b / 2 - Fr: X(4) = X(2): X(11) = X(2): X(13) = X(2)
     X(3) = b / 2: X(12) = X(3)
     X(5) = -b / 2 + web + Mi_r: X(6) = X(5): X(9) = X(5): X(10) = X(5)
     X(7) = -b / 2 + web: X(8) = X(7)
  
     Y(1) = H / 2: Y(2) = Y(1): Y(3) = Y(1)
     Y(4) = H / 2 - Fr: Y(5) = Y(4)
     Y(6) = H / 2 - Fr - Mi_r: Y(7) = Y(6)
     Y(8) = -H / 2 + Fr + Mi_r: Y(9) = Y(8)
     Y(10) = -H / 2 + Fr: Y(11) = Y(10)
     Y(12) = -H / 2: Y(13) = Y(12): Y(14) = Y(12)

     If r <> 0 Then
          Call SC_�p�x(r, SN_B, CS_B)
          
          For i = 1 To 15
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 15: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     Call DLine(X(1), Y(1), X(3), Y(3))
     Call DLine(X(4), Y(4), X(5), Y(5))
     Call DLine(X(7), Y(7), X(8), Y(8))
     Call DLine(X(10), Y(10), X(11), Y(11))
     Call DLine(X(12), Y(12), X(14), Y(14))
     Call DLine(X(1), Y(1), X(14), Y(14))
     
  
     D = Mi_r: X1 = X(6): Y1 = Y(6): r1 = 90 + r: r2 = 180 + r:  Call Darc("", X1, Y1, D, r1, r2)
               X1 = X(9): Y1 = Y(9): r1 = 180 + r: r2 = 270 + r: Call Darc("", X1, Y1, D, r1, r2)
     D = Fr: X1 = X(2): Y1 = Y(2): r1 = -90 + r: r2 = 0 + r: Call Darc("", X1, Y1, D, r1, r2)
              X1 = X(13): Y1 = Y(13): r1 = 0 + r: r2 = 90 + r: Call Darc("", X1, Y1, D, r1, r2)
     X1 = XXi: Y1 = YYi

End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D_���@(X1, Y1, X2, Y2, Moj$, jl, jld, Ldot$, Rdot$, Layer$, Zline$, Zcolor$)
     'Moj$  ���͂������ ���@�l��u��������
     'X1, X2, Y1, Y2(���@���[�̈ʒu����)
     'JL(�����o��������+-����),JLD(�����o�����omm)
     'Ldot$="N" ���[Point ż, Rdot$="N" �E�[Point ż,
  
  '�ύX�\��@===> D���@
'===================================================================================================================================
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     Xi1 = X1: Yi1 = Y1: XI2 = X2: Yi2 = Y2
     Rdot$ = UCase$(Rdot$): Ldot$ = UCase$(Ldot$)
     Spo_LL = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
     If X1 = X2 Then Spo_LL = Y2 - Y1
     If Y1 = Y2 Then Spo_LL = X2 - X1
     If Spo_LL = 0 Then er ("Spo_LL  ����=0"): Spo_LL = 1: If ����CK > 99 Then Stop: 'Stop
     SN = (Y2 - Y1) / Spo_LL: CS = (X2 - X1) / Spo_LL
     If CS <> 0 Then Moj_R = 180 * Atn(SN / CS) / 3.14159265
     If Y1 = Y2 Then Moj_R = 0: SN = 0: CS = 1
     If X1 = X2 Then Moj_R = 90: SN = 1: CS = 0
     Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
        If Ldot$ <> "N" Then Call DPoint(X1, Y1)
        If Rdot$ <> "N" Then Call DPoint(X2, Y2)
     '..... ���@�⏕��
     If jl <> 0 Then
        If Ldot$ <> "N" Then
           X1 = Xi1 - ZU_Scale * jl * SN: X2 = Xi1 + ZU_Scale * jld * SN
           Y1 = Yi1 + ZU_Scale * jl * CS: Y2 = Yi1 - ZU_Scale * jld * CS
           Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
           End If
        If Rdot$ <> "N" Then
           X1 = XI2 - ZU_Scale * jl * SN: X2 = XI2 + ZU_Scale * jld * SN
           Y1 = Yi2 + ZU_Scale * jl * CS: Y2 = Yi2 - ZU_Scale * jld * CS
           Call DLine(X1, Y1, X2, Y2)
           End If
        End If
     '..... ���@
     Spo_LL = Int(10000 * Abs(Spo_LL) + 0.5) / 10000
     Moj_pos$ = "C": Moj_type = 2.5: Moj_dxL = 0: Moj_dyL = 0.3
     X1 = (Xi1 + XI2) / 2: Y1 = (Yi1 + Yi2) / 2
     jDa$ = F9$(Spo_LL): If Moj$ <> "" Then jDa$ = Moj$
    ' Call Z_sym(X1, Y1, Moj_type, Moj_pos$, Moj_dxL, Moj_dyL, Moj_R, jDa$, Layer$)
     Call DsymC_D(X1, Y1, Moj_R, jDa$)
     X1 = Xi1: Y1 = Yi1: X2 = XI2: Y2 = Yi2
     Moj$ = ""
     End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D_�S��_���z(X0, Y0, Tekin$, ALPKEI, Layer$, Zline$, Zcolor$, er1$)
     'ALPKEI  �}�`�{��
'===================================================================================================================================
     ' �S�غݸذđ��z�؎w�j������  P67
     P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     
     Te_kei = Val(Mid$(Tekin$, 2))
     If ALPKEI <= 0 Then er1$ = " �}�`�{�� <=0 ": Exit Sub
     D = ALPKEI * Te_kei / 2: D2 = 1.1 * D: XXi = X0: YYi = Y0
     Select Case Tekin$
     Case "D10": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 Call Dcircle(X0, Y0, 0.3 * D)
     Case "D13": Call DLine(XXi - D, YYi - D, XXi + D, YYi + D)
                 Call DLine(XXi - D, YYi + D, XXi + D, YYi - D)
     Case "D16": Call Dcircle(X0, Y0, D)
                 Call DLine(XXi - D2, YYi + D2, XXi + D2, YYi - D2)
     Case "D19": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 Call Dcircle(X0, Y0, 0.3 * D)
     Case "D22": Call Dcircle(X0, Y0, D)
     Case "D25": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.15 * D)
     Case "D29": Call Dcircle(X0, Y0, D)
                 Call DLine(XXi - D2, YYi - D2, XXi + D2, YYi + D2)
                 Call DLine(XXi - D2, YYi + D2, XXi + D2, YYi - D2)
     Case "D32": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
     Case "D35": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.4 * D)
                 Call Dcircle(X0, Y0, 0.25 * D)
                 Call DLine(XXi - D2, YYi - D2, XXi + D2, YYi + D2)
                 Call DLine(XXi - D2, YYi + D2, XXi + D2, YYi - D2)
     Case "D38": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.6 * D)
     Case "D41": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.6 * D)
                 Call DLine(XXi - D2, YYi - D2, XXi + D2, YYi + D2)
     Case "D51": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.6 * D)
     Case Else: er1$ = "�S�،a���������� " + Tekin$
     End Select
     X0 = XXi: Y0 = YYi

     End Sub
'===================================================================================================================================
Sub D_�S��_���r(X0, Y0, �S�،a$)
     'ALPKEI  �}�`�{��
'===================================================================================================================================
     ' �S�غݸذđ��z�؎w�j������  P67
     'P_Layer_0 = Layer$: P_����_0 = Zline$:  P_�F_0 = Zcolor$
     ALPKEI = P_�S�،a_�{��
     Te_kei = Val(Mid$(�S�،a$, 2))
     If ALPKEI <= 0 Then er1$ = " �}�`�{�� <=0 ": Exit Sub
     D = ALPKEI * Te_kei / 2 + 8: D2 = 1.1 * D: XXi = X0: YYi = Y0
     Select Case �S�،a$
     Case "D10": Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 Call Dcircle(X0, Y0, 0.3 * D)
     Case "D13":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 
     Case "D16":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 
     Case "D19":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 
     Case "D22":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.7 * D)
     
     Case "D25":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.7 * D)
                 
     Case "D29":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.5 * D)
                 Call Dcircle(X0, Y0, 0.8 * D)
                 
     Case "D32":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.5 * D)
                 Call Dcircle(X0, Y0, 0.8 * D)
                 
     Case "D35":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.3 * D)
                 Call Dcircle(X0, Y0, 0.5 * D)
                 Call Dcircle(X0, Y0, 0.8 * D)
                 
     Case "D38":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.2 * D)
                 Call Dcircle(X0, Y0, 0.4 * D)
                 Call Dcircle(X0, Y0, 0.6 * D)
                 Call Dcircle(X0, Y0, 0.8 * D)
     
     Case "D41":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.2 * D)
                 Call Dcircle(X0, Y0, 0.4 * D)
                 Call Dcircle(X0, Y0, 0.6 * D)
                 Call Dcircle(X0, Y0, 0.8 * D)
                 
                 
     Case "D51":
                 Call Dcircle(X0, Y0, D)
                 Call Dcircle(X0, Y0, 0.2 * D)
                 Call Dcircle(X0, Y0, 0.4 * D)
                 Call Dcircle(X0, Y0, 0.6 * D)
                 Call Dcircle(X0, Y0, 0.8 * D)
                 
                 
     Case Else: 'er1$ = "�S�،a���������� " + �S�،a$: er (er1$): If ����CK > 99 Then Stop
               '��Á@2003.10.31  ��������̃o�O�Ή�
     End Select
     X0 = XXi: Y0 = YYi
     End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������
'===================================================================================================================================
Sub D_�n�b�`_1(X(), Y(), ni, �p�x, Pit, Layer$, Zline$, Zcolor$, er1$)
    ' ʯ���`��  -90<=  �p�x(��) <=90  Pit:�߯�
    ' ni �_�̐�
'===================================================================================================================================
    If Pit <= 0 Then er ("*ʯ��� �߯�<=0"): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
    'Bpit = Pit
    'If Abs(�p�x) > 90 Then ER ("*ʯ���  -90<= �p�x  <=90  �łȂ� "): Exit Sub
    ReDim X2(ni + 1), Y2(ni + 1)
    For i = 1 To ni: X2(i) = X(i + 1): Y2(i) = Y(i + 1): Next i
    X2(ni) = X(1): Y2(ni) = Y(1)
    Call D_�n�b�`_2(X(), Y(), X2(), Y2(), ni, �p�x, Pit, Layer$, Zline$, Zcolor$, er1$)
    
    End Sub
'===================================================================================================================================
Sub D_�n�b�`_2(X01(), Y01(), X02(), Y02(), ni, INP�p�x, Pit, Layer$, Zline$, Zcolor$, er1$)
    ' ʯ���`��  -90<=  �p�x(��) <=90  Pit:�߯�
    ' ni ���̐�  (X01,Y01),(X02,Y02)
    ' Bmax,Bmin �͐}�`�� Close ����Ă��Ȃ��ƌv�Z����������
    
'===================================================================================================================================
    If Pit <= 0 Then er ("*ʯ��� �߯�<=0"): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
    'Stop
    Bpit = Pit * �ϊ�M: If �ϊ�M = 0 Then Bpit = Pit: '******************** ���
    �v�Z�p�x = Abs(INP�p�x)
    Do: If �v�Z�p�x < 360 Then Exit Do
        �v�Z�p�x = �v�Z�p�x - 360
        Loop
        Do: If �v�Z�p�x < 180 Then Exit Do
            �v�Z�p�x = �v�Z�p�x - 180
            Loop
        Do: If �v�Z�p�x <= 90 Then Exit Do
        �v�Z�p�x = �v�Z�p�x - 180
        Loop
    �p�x = �v�Z�p�x: If INP�p�x < 0 Then �p�x = -�p�x
    If Abs(�p�x) > 90 Then er ("*ʯ���  -90<= �p�x  <=90  �łȂ� "):: If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
    
    ReDim b(ni + 1), NN(ni + 1), XX(ni + 1), YY(ni + 1), ����(ni + 1)
    Select Case �p�x
    Case 0:
         Call CALU����(Y01(), NN(), ni, Bmax, Bmin, e$)
         If Bmin > 0 Then Bstart = Bpit * (1 + Int(Bmin / Bpit)) Else Bstart = Bpit * Int(Bmin / Bpit)
         For BB = Bstart To Bmax Step Bpit
             N��_ = 0
             For i = 1 To ni: Call CALU��_AB(0, BB, X01(i), Y01(i), X02(i), Y02(i), X3, Y3, JA1)
                 If JA1 = 1 Then N��_ = N��_ + 1: XX(N��_) = X3: YY(N��_) = Y3
                 Next i
         
             If N��_ > 1 Then
                 Call CALU����(XX(), ����(), N��_, XLLmax, XLLmin, e$): If e$ <> "" Then er ("SUB D_�n�b�`_2  " & e$): If ����CK > 99 Then Stop
                 For i = 1 To N��_ Step 3:
                     KK1 = ����(i): KK2 = ����(i + 1)
                     X1 = XX(KK1): Y1 = YY(KK1): X2 = XX(KK2): Y2 = YY(KK2)
                    ' Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
                     Call DLine(X1, Y1, X2, Y2)
                     Next i
                 End If
             Next BB
    
    Case 90, -90:
         Call CALU����(X01(), NN(), ni, Bmax, Bmin, e$)
         If Bmin > 0 Then Bstart = Bpit * (1 + Int(Bmin / Bpit)) Else Bstart = Bpit * Int(Bmin / Bpit)
         'Bstart = Bstart + 0.001
         For BB = Bstart To Bmax Step Bpit
             N��_ = 0
             For i = 1 To ni: Call CALU��_XY(BB, X01(i), Y01(i), X02(i), Y02(i), X3, Y3, JA1)
                 If JA1 = 1 Then N��_ = N��_ + 1: XX(N��_) = X3: YY(N��_) = Y3
                 Next i
        
             If N��_ > 1 Then
                 Call CALU����(YY(), ����(), N��_, YLLmax, YLLmin, e$): If e$ <> "" Then er ("SUB D_�n�b�`_2  " & e$): If ����CK > 99 Then Stop
                 For i = 1 To N��_ Step 3:
                     KK1 = ����(i): KK2 = ����(i + 1)
                     X1 = XX(KK1): Y1 = YY(KK1): X2 = XX(KK2): Y2 = YY(KK2)
                     'Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
                     Call DLine(X1, Y1, X2, Y2)
                     Next i
                 End If
             Next BB
    
    
    Case Else:
         a1 = Tan(rad(�p�x)): Bpit = Abs(Bpit / Cos(rad(�p�x)))
         For i = 1 To ni: b(i) = Y01(i) - a1 * X01(i): Next i
         Call CALU����(b(), NN(), ni, Bmax, Bmin, e$)
         If Bmin > 0 Then Bstart = Bpit * (1 + Int(Bmin / Bpit)) Else Bstart = Bpit * Int(Bmin / Bpit)
         
         For BB = Bstart To Bmax Step Bpit
             N��_ = 0
             For i = 1 To ni: Call CALU��_AB(a1, BB, X01(i), Y01(i), X02(i), Y02(i), X3, Y3, JA1)
                 If JA1 = 1 Then N��_ = N��_ + 1: XX(N��_) = X3: YY(N��_) = Y3
                 Next i
         
             
            If N��_ > 1 Then
                 Call CALU����(XX(), ����(), N��_, XLLmax, XLLmin, e$): If e$ <> "" Then er ("SUB D_�n�b�`_2  " & e$): If ����CK > 99 Then Stop
                 For i = 1 To N��_ Step 3:
                     KK1 = ����(i): KK2 = ����(i + 1)
                     X1 = XX(KK1): Y1 = YY(KK1): X2 = XX(KK2): Y2 = YY(KK2)
                    ' Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
                     Call DLine(X1, Y1, X2, Y2)
                     Next i
                 End If
             
             Next BB
    End Select
    

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   ****                                                                                                                           ��
'��������������������������������������������������������������������������������������������������������������������������������������


'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Start AutoCad                                                                                                              ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dxf_start_AutoCad(outdxf$, LAYER_N, Zlayer$())
     '02_09_21
     ReDim Dxd1$(50)
     
     P_���_X = 0: P_���_Y = 0: ' DXF���_������
     
     If InStr(outdxf$, ":") = 0 Then outdxf$ = Dxf_dsk + outdxf$
     If InStr(outdxf$, ".") = 0 Then outdxf$ = outdxf$ + ".DXF"
     Open outdxf$ For Output As #19
  
     'Print #19, "  0": Print #19, "SECTION"
     'Print #19, "  2": Print #19, "HEADER"
     'Print #19, "  9": Print #19, "$ACADVER"
     
     'Print #19, "  1": Print #19, "AC1009"
     
     
     
     'Print #19, "  9": Print #19, "$INSBASE"
     
     'Print #19, " 10": Print #19, "0"
     'Print #19, " 20": Print #19, "0"
     'Print #19, " 30": Print #19, "0"
     
     �p��$ = "A1"
     Select Case �p��$
     Case "A1": �p��B = 841: �p��D = 594
     Case "A2": �p��B = 594: �p��D = 420
     Case "A3": �p��B = 594: �p��D = 420
     End Select
     
     'Print #19, "  9": Print #19, "$EXTMIN"
     'Print #19, " 10": Print #19, "0"
     'Print #19, " 20": Print #19, "0"
     
     'Print #19, "  9": Print #19, "$EXTMAX"
     'Print #19, " 10": Print #19, �p��B * ZU_Scale
     'Print #19, " 20": Print #19, �p��D * ZU_Scale
     
     'Print #19, "  9": Print #19, "$LIMMIN"
     'Print #19, " 10": Print #19, "0"
     'Print #19, " 20": Print #19, "0"
     
     'Print #19, "  9": Print #19, "$LIMMAX"
     'Print #19, " 10": Print #19, �p��B * ZU_Scale
     'Print #19, " 20": Print #19, �p��D * ZU_Scale
     
     
     
     'DDD1 = Int(ZU_Scale / 30): Da$ = "  " + F9$(50):   '����̃O���[�o���Ȏړx
     'Print #19, "  9": Print #19, "$LTSCALE": Print #19, " 40": Print #19, Da$
     
     'Print #19, "  9": Print #19, "$PDMODE": Print #19, " 70": Print #19, "  33": '�_�̕\�����[�h
     'Print #19, "  9": Print #19, "$PDSIZE": Print #19, " 40": Print #19, " 10": '�_�̕\���T�C�Y
     'Print #19, "  0": Print #19, "ENDSEC"
     
     

     
     '[[[      ]]]
         
    '  Dxd1$(1) = "  0\SECTION\  2\HEADER\  9\$ACADVER\  1\AC1015\  9\$ACADMAINTVER\ 70\     6\  9\$DWGCODEPAGE\  3\ANSI_932\  9\$INSBASE"
      Dxd1$(1) = "SECTION\  2\HEADER\  9\$ACADVER\  1\AC1015\  9\$ACADMAINTVER\ 70\     6\  9\$DWGCODEPAGE\  3\ANSI_932\  9\$INSBASE"
      Dxd1$(2) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$EXTMIN\ 10\1500.0\ 20\675.0\ 30\0.0\  9\$EXTMAX\ 10\41715.195313\ 20\29025.0\ 30\0.0\  9\$LIMMIN"
      Dxd1$(3) = " 10\20122.597656\ 20\13800.0\  9\$LIMMAX\ 10\60337.792969\ 20\42150.0\  9\$ORTHOMODE\ 70\     0\  9\$REGENMODE\ 70\     1\  9\$FILLMODE"
      Dxd1$(4) = " 70\     1\  9\$QTEXTMODE\ 70\     0\  9\$MIRRTEXT\ 70\     1\  9\$LTSCALE\ 40\50.0\  9\$ATTMODE\ 70\     1\  9\$TEXTSIZE\ 40\0.2\  9\$TRACEWID"
      Dxd1$(5) = " 40\0.05\  9\$TEXTSTYLE\  7\STANDARD\  9\$CLAYER\  8\0\  9\$CELTYPE\  6\Continuous\  9\$CECOLOR\ 62\     7\  9\$CELTSCALE\ 40\1.0\  9\$DISPSILH"
      Dxd1$(6) = " 70\     0\  9\$DIMSCALE\ 40\1.0\  9\$DIMASZ\ 40\0.18\  9\$DIMEXO\ 40\0.0625\  9\$DIMDLI\ 40\0.38\  9\$DIMRND\ 40\0.0\  9\$DIMDLE"
      Dxd1$(7) = " 40\0.0\  9\$DIMEXE\ 40\0.18\  9\$DIMTP\ 40\0.0\  9\$DIMTM\ 40\0.0\  9\$DIMTXT\ 40\0.18\  9\$DIMCEN\ 40\0.09\  9\$DIMTSZ"
      Dxd1$(8) = " 40\0.0\  9\$DIMTOL\ 70\     0\  9\$DIMLIM\ 70\     0\  9\$DIMTIH\ 70\     1\  9\$DIMTOH\ 70\     1\  9\$DIMSE1\ 70\     0\  9\$DIMSE2"
      Dxd1$(9) = " 70\     0\  9\$DIMTAD\ 70\     0\  9\$DIMZIN\ 70\     0\  9\$DIMBLK\  1\\  9\$DIMASO\ 70\     1\  9\$DIMSHO\ 70\     1\  9\$DIMPOST"
      Dxd1$(10) = "  1\\  9\$DIMAPOST\  1\\  9\$DIMALT\ 70\     0\  9\$DIMALTD\ 70\     2\  9\$DIMALTF\ 40\25.4\  9\$DIMLFAC\ 40\1.0\  9\$DIMTOFL"
      Dxd1$(11) = " 70\     0\  9\$DIMTVP\ 40\0.0\  9\$DIMTIX\ 70\     0\  9\$DIMSOXD\ 70\     0\  9\$DIMSAH\ 70\     0\  9\$DIMBLK1\  1\\  9\$DIMBLK2"
      Dxd1$(12) = "  1\\  9\$DIMSTYLE\  2\STANDARD\  9\$DIMCLRD\ 70\     0\  9\$DIMCLRE\ 70\     0\  9\$DIMCLRT\ 70\     0\  9\$DIMTFAC\ 40\1.0\  9\$DIMGAP"
      Dxd1$(13) = " 40\0.09\  9\$DIMJUST\ 70\     0\  9\$DIMSD1\ 70\     0\  9\$DIMSD2\ 70\     0\  9\$DIMTOLJ\ 70\     1\  9\$DIMTZIN\ 70\     0\  9\$DIMALTZ"
      Dxd1$(14) = " 70\     0\  9\$DIMALTTZ\ 70\     0\  9\$DIMUPT\ 70\     0\  9\$DIMDEC\ 70\     4\  9\$DIMTDEC\ 70\     4\  9\$DIMALTU\ 70\     2\  9\$DIMALTTD"
      Dxd1$(15) = " 70\     2\  9\$DIMTXSTY\  7\STANDARD\  9\$DIMAUNIT\ 70\     0\  9\$DIMADEC\ 70\     0\  9\$DIMALTRND\ 40\0.0\  9\$DIMAZIN"
      Dxd1$(16) = " 70\     0\  9\$DIMDSEP\ 70\     0\  9\$DIMATFIT\ 70\     3\  9\$DIMFRAC\ 70\     0\  9\$DIMLDRBLK\  1\\  9\$DIMLUNIT\ 70\     2\  9\$DIMLWD"
      Dxd1$(17) = " 70\     0\  9\$DIMLWE\ 70\     0\  9\$DIMTMOVE\ 70\     0\  9\$LUNITS\ 70\     2\  9\$LUPREC\ 70\     4\  9\$SKETCHINC\ 40\0.1\  9\$FILLETRAD"
      Dxd1$(18) = " 40\0.0\  9\$AUNITS\ 70\     0\  9\$AUPREC\ 70\     0\  9\$MENU\  1\acad\  9\$ELEVATION\ 40\0.0\  9\$PELEVATION\ 40\0.0\  9\$THICKNESS"
      Dxd1$(19) = " 40\0.0\  9\$LIMCHECK\ 70\     0\  9\$CHAMFERA\ 40\0.0\  9\$CHAMFERB\ 40\0.0\  9\$CHAMFERC\ 40\0.0\  9\$CHAMFERD\ 40\0.0\  9\$SKPOLY"
      Dxd1$(20) = " 70\     0\  9\$TDCREATE\ 40\0.000000000\  9\$TDUCREATE\ 40\0.000000000\  9\$TDUPDATE\ 40\0.000000000\  9\$TDUUPDATE"
      Dxd1$(21) = " 40\0.000000000\  9\$TDINDWG\ 40\0.0000000000\  9\$TDUSRTIMER\ 40\0.0000000000\  9\$USRTIMER\ 70\     1\  9\$ANGBASE"
      Dxd1$(22) = " 50\0.0\  9\$ANGDIR\ 70\     0\  9\$PDMODE\ 70\    33\  9\$PDSIZE\ 40\10.0\  9\$PLINEWID\ 40\0.0\  9\$SPLFRAME"
      Dxd1$(23) = " 70\     0\  9\$SPLINETYPE\ 70\     6\  9\$SPLINESEGS\ 70\     8\  9\$HANDSEED\  5\10C0\  9\$SURFTAB1"
      Dxd1$(24) = " 70\     6\  9\$SURFTAB2\ 70\     6\  9\$SURFTYPE\ 70\     6\  9\$SURFU\ 70\     6\  9\$SURFV\ 70\     6\  9\$UCSBASE"
      
      Dxd1$(25) = "  2\\  9\$UCSNAME\  2\\  9\$UCSORG\ 10\0.0\ 20\0.0\ 30\0.0\  9\$UCSXDIR\ 10\1.0\ 20\0.0\ 30\0.0\  9\$UCSYDIR"
      Dxd1$(26) = " 10\0.0\ 20\1.0\ 30\0.0\  9\$UCSORTHOREF\  2\\  9\$UCSORTHOVIEW\ 70\     0\  9\$UCSORGTOP\ 10\0.0\ 20\0.0\ 30\0.0\  9\$UCSORGBOTTOM"
      Dxd1$(27) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$UCSORGLEFT\ 10\0.0\ 20\0.0\ 30\0.0\  9\$UCSORGRIGHT\ 10\0.0\ 20\0.0\ 30\0.0\  9\$UCSORGFRONT"
      Dxd1$(28) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$UCSORGBACK\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSBASE\  2\\  9\$PUCSNAME\  2\\  9\$PUCSORG"
      Dxd1$(29) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSXDIR\ 10\1.0\ 20\0.0\ 30\0.0\  9\$PUCSYDIR\ 10\0.0\ 20\1.0\ 30\0.0\  9\$PUCSORTHOREF"
      Dxd1$(30) = "  2\\  9\$PUCSORTHOVIEW\ 70\     0\  9\$PUCSORGTOP\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSORGBOTTOM\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSORGLEFT"
      Dxd1$(31) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSORGRIGHT\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSORGFRONT\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PUCSORGBACK"
      Dxd1$(32) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$USERI1\ 70\     0\  9\$USERI2\ 70\     0\  9\$USERI3\ 70\     0\  9\$USERI4\ 70\     0\  9\$USERI5"
      Dxd1$(33) = " 70\     0\  9\$USERR1\ 40\0.0\  9\$USERR2\ 40\0.0\  9\$USERR3\ 40\0.0\  9\$USERR4\ 40\0.0\  9\$USERR5\ 40\0.0\  9\$WORLDVIEW"
      Dxd1$(34) = " 70\     1\  9\$SHADEDGE\ 70\     3\  9\$SHADEDIF\ 70\    70\  9\$TILEMODE\ 70\     1\  9\$MAXACTVP\ 70\    16\  9\$PINSBASE"
      Dxd1$(35) = " 10\0.0\ 20\0.0\ 30\0.0\  9\$PLIMCHECK\ 70\     0\  9\$PEXTMIN\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PEXTMAX\ 10\0.0\ 20\0.0\ 30\0.0\  9\$PLIMMIN"
      Dxd1$(36) = " 10\0.0\ 20\0.0\  9\$PLIMMAX\ 10\0.0\ 20\0.0\  9\$UNITMODE\ 70\     0\  9\$VISRETAIN\ 70\     0\  9\$PLINEGEN\ 70\     1\  9\$PSLTSCALE"
      Dxd1$(37) = " 70\     0\  9\$TREEDEPTH\ 70\  3020\  9\$CMLSTYLE\  2\STANDARD\  9\$CMLJUST\ 70\     0\  9\$CMLSCALE\ 40\1.0\  9\$PROXYGRAPHICS"
      Dxd1$(38) = " 70\     0\  9\$MEASUREMENT\ 70\     0\  9\$CELWEIGHT\370\     0\  9\$ENDCAPS\280\     0\  9\$JOINSTYLE\280\     0\  9\$LWDISPLAY"
      Dxd1$(39) = "290\     0\  9\$INSUNITS\ 70\     0\  9\$HYPERLINKBASE\  1\\  9\$XEDIT\290\     1\  9\$CEPSNTYPE\380\     0\  9\$PSTYLEMODE"
      Dxd1$(40) = "290\     1\  9\$FINGERPRINTGUID\  2\\  9\$VERSIONGUID\  2\\  9\$EXTNAMES\290\     1\  9\$PSVPSCALE\ 40\0.0"
      Dxd1$(41) = "  0\ENDSEC"
    
         
         Print #19, "  0"
         For ii = 1 To 41:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              
              For i2 = 1 To ni: D001$ = Ds(i2): 'If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
     
     
     
     
     '[[[      ]]]
    Dxd1$(1) = "  0\SECTION\  2\CLASSES"
    Dxd1$(2) = "  0\CLASS\  1\LWPOLYLINE\  2\AcDbPolyline\  3\AutoCAD\ 90\        0\280\     0\281\     1"
    Dxd1$(3) = "  0\CLASS\  1\IMAGE\  2\AcDbRasterImage\  3\ISM\ 90\      127\280\     0\281\     1"
    Dxd1$(4) = "  0\CLASS\  1\OLE2FRAME\  2\AcDbOle2Frame\  3\""\ 90\        0\280\     0\281\     1"
    Dxd1$(5) = "  0\CLASS\  1\HATCH\  2\AcDbHatch\  3\ACAD_SEDONA\ 90\        0\280\     0\281\     1"
    Dxd1$(6) = "  0\CLASS\  1\DICTIONARYVAR\  2\AcDbDictionaryVar\  3\AutoCAD\ 90\        0\280\     0\281\     0"
    Dxd1$(7) = "  0\CLASS\  1\RASTERVARIABLES\  2\AcDbRasterVariables\  3\ISM\ 90\        0\280\     0\281\     0"
    Dxd1$(8) = "  0\CLASS\  1\IMAGEDEF\  2\AcDbRasterImageDef\  3\ISM\ 90\        0\280\     0\281\     0"
    Dxd1$(9) = "  0\CLASS\  1\IMAGEDEF_REACTOR\  2\AcDbRasterImageDefReactor\  3\ISM\ 90\        1\280\     0\281\     0"
    Dxd1$(10) = "  0\CLASS\  1\IDBUFFER\  2\AcDbIdBuffer\  3\Acad\ 90\        0\280\     0\281\     0"
    Dxd1$(11) = "  0\CLASS\  1\SPATIAL_FILTER\  2\AcDbSpatialFilter\  3\Acad\ 90\        0\280\     0\281\     0"
    Dxd1$(12) = "  0\CLASS\  1\XRECORD\  2\AcDbXrecord\  3\<Built In>\ 90\        0\280\     0\281\     0"
    Dxd1$(13) = "  0\CLASS\  1\SORTENTSTABLE\  2\AcDbSortentsTable\  3\AutoCAD\ 90\        0\280\     0\281\     0"
    Dxd1$(14) = "  0\CLASS\  1\LAYER_INDEX\  2\AcDbLayerIndex\  3\Acad\ 90\        0\280\     0\281\     0"
    Dxd1$(15) = "  0\CLASS\  1\SPATIAL_INDEX\  2\AcDbSpatialIndex\  3\Acad\ 90\        0\280\     0\281\     0"
    Dxd1$(16) = "  0\CLASS\  1\OBJECT_PTR\  2\CAseDLPNTableRecord\  3\ASE-LPNTableRecord\ 90\        1\280\     0\281\     0"
    Dxd1$(17) = "  0\CLASS\  1\LAYOUT\  2\AcDbLayout\  3\AutoCAD 2000\ 90\        1\280\     0\281\     0"
    Dxd1$(18) = "  0\CLASS\  1\PLOTSETTINGS\  2\AcDbPlotSettings\  3\AutoCAD 2000\ 90\        1\280\     0\281\     0"
    Dxd1$(19) = "  0\CLASS\  1\ACDBDICTIONARYWDFLT\  2\AcDbDictionaryWithDefault\  3\AutoCAD 2000\ 90\        1\280\     0\281\     0"
    Dxd1$(20) = "  0\CLASS\  1\ACDBPLACEHOLDER\  2\AcDbPlaceHolder\  3\AutoCAD 2000\ 90\        1\280\     0\281\     0"
    Dxd1$(21) = "  0\CLASS\  1\VBA_PROJECT\  2\AcDbVbaProject\  3\acadvba\ 90\        1\280\     0\281\     0"
    Dxd1$(22) = "  0\CLASS\  1\WIPEOUT\  2\AcDbWipeout\  3\WipeOut|AutoCAD Express Tool|expresstools@autodesk.com\ 90\      127\280\     0\281\     1"
    Dxd1$(23) = "  0\CLASS\  1\WIPEOUTVARIABLES\  2\AcDbWipeoutVariables\  3\WipeOut|AutoCAD Express Tool|expresstools@autodesk.com\ 90\        0\280\     0\281\     0"
    Dxd1$(24) = "  0\CLASS\  1\RTEXT\  2\RText\  3\RText|AutoCAD Express Tool|expresstools@autodesk.com\ 90\        0\280\     0\281\     1"
    Dxd1$(25) = "  0\CLASS\  1\ARCALIGNEDTEXT\  2\AcDbArcAlignedText\  3\ATEXT|AutoCAD Express Tool|expresstools@autodesk.com\ 90\        0\280\     0\281\     1"
    Dxd1$(26) = "  0\ENDSEC"
         For ii = 1 To 26:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii

     
     
     
     
     '[[[      ]]]
        Dxd1$(1) = "  0\SECTION\  2\TABLES"
        Dxd1$(2) = "  0\TABLE\  2\VPORT\  5\7\100\AcDbSymbolTable\ 70\     1"
        Dxd1$(3) = "  0\VPORT\  5\15\100\AcDbSymbolTableRecord\100\AcDbViewportTableRecord\  2\*ACTIVE\ 70\     0\ 10\0.0\ 20\0.0\ 11\1.0\ 21\1.0\ 12\0.0\ 22\0.0\ 13\0.0\ 23\0.0\ 14\0.0\ 24\0.0\ 15\0.0\ 25\0.0\ 16\0.0\ 26\0.0\ 36\1.0\ 17\15693.197388\ 27\18159.500305\ 37\1.0\ 40\15751.389648\ 41\1.302091\ 42\50.0\ 43\0.0\ 44\0.0\ 50\0.0\ 51\0.0\ 71\     0\ 72\   100\ 73\     1\ 74\     1\ 75\     0\ 76\     0\ 77\     0\ 78\     0\281\     0\ 65\     0\110\0.0\120\0.0\130\0.0\111\1.0\121\0.0\131\0.0\112\0.0\122\1.0\132\0.0\345\0\346\0\ 79\     0\146\0.0"
        Dxd1$(4) = "  0\ENDTAB"
         For ii = 1 To 4:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii

     
     
     
     
     '[[[ Line Type ]]]
    
        ' Dxd1$(1) = "  0\SECTION\  2\TABLES"
        ' Dxd1$(2) = "  0\TABLE\  2\LTYPE\ 70\     9"
        ' Dxd1$(3) = "  0\LTYPE\  2\CONTINUOUS\ 70\    64\  3\����\ 72\    65\ 73\     0\ 40\0.0"
        ' Dxd1$(4) = "  0\LTYPE\  2\DASHED1\ 70\    64\  3\--  --  --  --  --  --  --  --  \ 72\    65\ 73\     2\ 40\2.5\ 49\1.25\ 49\-1.25"
        ' Dxd1$(5) = "  0\LTYPE\  2\DASHED2\ 70\    64\  3\----    ----    ----    ----    \ 72\    65\ 73\     2\ 40\5.0\ 49\2.5\ 49\-2.5"
        ' Dxd1$(6) = "  0\LTYPE\  2\DASHED3\ 70\    64\  3\------  ------  ------  ------  \ 72\    65\ 73\     2\ 40\5.0\ 49\3.75\ 49\-1.25"
        ' Dxd1$(7) = "  0\LTYPE\  2\CENTER1\ 70\    64\  3\----- - ----- - ----- - ----- - \ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(8) = "  0\LTYPE\  2\CENTER2\ 70\    64\  3\----------  --  ----------  --  \ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 49\-2.5\ 49\2.5\ 49\-2.5"
        ' Dxd1$(9) = "  0\LTYPE\  2\PHANTOM1\ 70\    64\  3\--- - - --- - - --- - - --- - - \ 72\    65\ 73\     6\ 40\10.0\ 49\3.25\ 49\-1.25\ 49\1.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(10) = "  0\LTYPE\  2\PHANTOM2\ 70\    64\  3\--------  -  -  --------  -  -  \ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 49\-2.5\ 49\1.25\ 49\-2.5\ 49\1.25\ 49\-2.5"
        ' Dxd1$(11) = "  0\LTYPE\  2\DOT\ 70\    64\  3\-   -   -   -   -   -   -   -   \ 72\    65\ 73\     2\ 40\2.5\ 49\0.625\ 49\-1.875"
        ' Dxd1$(12) = "  0\LTYPE\  2\DUMMY\ 70\    64\  3\�_�~�[\ 72\    65\ 73\     0\ 40\0.0"
        ' Dxd1$(13) = "  0\LTYPE\  2\RAND1\ 70\    64\  3\----- - ----- - ----- - ----- - \ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(14) = "  0\LTYPE\  2\RAND2\ 70\    64\  3\----------  --  ----------  --  \ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 49\-2.5\ 49\2.5\ 49\-2.5"
        ' Dxd1$(15) = "  0\LTYPE\  2\RAND3\ 70\    64\  3\--- - - --- - - --- - - --- - - \ 72\    65\ 73\     6\ 40\10.0\ 49\3.25\ 49\-1.25\ 49\1.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(16) = "  0\LTYPE\  2\RAND4\ 70\    64\  3\--------  -  -  --------  -  -  \ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 49\-2.5\ 49\1.25\ 49\-2.5\ 49\1.25\ 49\-2.5"
        ' Dxd1$(17) = "  0\LTYPE\  2\RAND5\ 70\    64\  3\----- - ----- - ----- - ----- - \ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(18) = "  0\LTYPE\  2\LONG1\ 70\    64\  3\----------  --  ----------  --  \ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 49\-2.5\ 49\2.5\ 49\-2.5"
        ' Dxd1$(19) = "  0\LTYPE\  2\LONG2\ 70\    64\  3\--- - - --- - - --- - - --- - - \ 72\    65\ 73\     6\ 40\10.0\ 49\3.25\ 49\-1.25\ 49\1.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(20) = "  0\LTYPE\  2\LONG3\ 70\    64\  3\--------  -  -  --------  -  -  \ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 49\-2.5\ 49\1.25\ 49\-2.5\ 49\1.25\ 49\-2.5"
        ' Dxd1$(21) = "  0\LTYPE\  2\LONG4\ 70\    64\  3\----- - ----- - ----- - ----- - \ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(22) = "  0\LTYPE\  2\LONG5\ 70\    64\  3\----------  --  ----------  --  \ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 49\-2.5\ 49\2.5\ 49\-2.5"
        ' Dxd1$(23) = "  0\ENDTAB"
         
         
   Dxd1$(1) = "  0\TABLE\  2\LTYPE\  5\4\100\AcDbSymbolTable\ 70\    30"
   Dxd1$(2) = "  0\LTYPE\  5\11\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\ByBlock\ 70\    64\  3\\ 72\    65\ 73\     0\ 40\0.0"
   Dxd1$(3) = "  0\LTYPE\  5\12\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\ByLayer\ 70\    64\  3\\ 72\    65\ 73\     0\ 40\0.0"
   Dxd1$(4) = "  0\LTYPE\  5\13\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\Continuous\ 70\    64\  3\Solid line\ 72\    65\ 73\     0\ 40\0.0"
   Dxd1$(5) = "  0\LTYPE\  5\25\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\BORDER\ 70\     0\  3\BORDER\ 72\    65\ 73\     6\ 40\1.75\ 49\0.5\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.5\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.0\ 74\     0\ 49\-0.25\ 74\     0"
   Dxd1$(6) = "  0\LTYPE\  5\26\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\CENTER\ 70\     0\  3\CENTER\ 72\    65\ 73\     4\ 40\2.0\ 49\1.25\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.25\ 74\     0\ 49\-0.25\ 74\     0"
   Dxd1$(7) = "  0\LTYPE\  5\27\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DASHDOT\ 70\     0\  3\DASHDOT\ 72\    65\ 73\     4\ 40\1.0\ 49\0.5\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.0\ 74\     0\ 49\-0.25\ 74\     0"
   Dxd1$(8) = "  0\LTYPE\  5\28\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DASHED\ 70\     0\  3\DASHED\ 72\    65\ 73\     2\ 40\0.75\ 49\0.5\ 74\     0\ 49\-0.25\ 74\     0"
   Dxd1$(9) = "  0\LTYPE\  5\29\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DIVIDE\ 70\     0\  3\DIVIDE\ 72\    65\ 73\     6\ 40\1.25\ 49\0.5\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.0\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.0\ 74\     0\ 49\-0.25\ 74\     0"
   Dxd1$(10) = "  0\LTYPE\  5\2A\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DOT\ 70\    64\  3\DOT\ 72\    65\ 73\     2\ 40\2.5\ 49\0.625\ 74\     0\ 49\-1.875\ 74\     0"
   Dxd1$(11) = "  0\LTYPE\  5\2B\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\HIDDEN\ 70\     0\  3\HIDDEN\ 72\    65\ 73\     2\ 40\0.375\ 49\0.25\ 74\     0\ 49\-0.125\ 74\     0"
   Dxd1$(12) = "  0\LTYPE\  5\2C\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\PHANTOM\ 70\     0\  3\PHANTOM\ 72\    65\ 73\     6\ 40\2.5\ 49\1.25\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.25\ 74\     0\ 49\-0.25\ 74\     0\ 49\0.25\ 74\     0\ 49\-0.25\ 74\     0"
   Dxd1$(13) = "  0\LTYPE\  5\2D\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DASHED1\ 70\    64\  3\DASHED1\ 72\    65\ 73\     2\ 40\2.5\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(14) = "  0\LTYPE\  5\2E\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DASHED2\ 70\    64\  3\DASHED2\ 72\    65\ 73\     2\ 40\5.0\ 49\2.5\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(15) = "  0\LTYPE\  5\2F\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DASHED3\ 70\    64\  3\DASHED3\ 72\    65\ 73\     2\ 40\5.0\ 49\3.75\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(16) = "  0\LTYPE\  5\30\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\CENTER1\ 70\    64\  3\CENTER1\ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(17) = "  0\LTYPE\  5\31\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\CENTER2\ 70\    64\  3\CENTER2\ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 74\     0\ 49\-2.5\ 74\     0\ 49\2.5\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(18) = "  0\LTYPE\  5\32\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\PHANTOM1\ 70\    64\  3\PHANTOM1\ 72\    65\ 73\     6\ 40\9.5\ 49\3.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(19) = "  0\LTYPE\  5\33\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\PHANTOM2\ 70\    64\  3\PHANTOM2\ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 74\     0\ 49\-2.5\ 74\     0\ 49\1.25\ 74\     0\ 49\-2.5\ 74\     0\ 49\1.25\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(20) = "  0\LTYPE\  5\34\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\DUMMY\ 70\    64\  3\DUMMY\ 72\    65\ 73\     0\ 40\0.0"
   Dxd1$(21) = "  0\LTYPE\  5\35\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\RAND1\ 70\    64\  3\RAND1\ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(22) = "  0\LTYPE\  5\36\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\RAND2\ 70\    64\  3\RAND2\ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 74\     0\ 49\-2.5\ 74\     0\ 49\2.5\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(23) = "  0\LTYPE\  5\37\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\RAND3\ 70\    64\  3\RAND3\ 72\    65\ 73\     6\ 40\9.5\ 49\3.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(24) = "  0\LTYPE\  5\38\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\RAND4\ 70\    64\  3\RAND4\ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 74\     0\ 49\-2.5\ 74\     0\ 49\1.25\ 74\     0\ 49\-2.5\ 74\     0\ 49\1.25\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(25) = "  0\LTYPE\  5\39\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\RAND5\ 70\    64\  3\RAND5\ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(26) = "  0\LTYPE\  5\3A\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\LONG1\ 70\    64\  3\LONG1\ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 74\     0\ 49\-2.5\ 74\     0\ 49\2.5\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(27) = "  0\LTYPE\  5\3B\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\LONG2\ 70\    64\  3\LONG2\ 72\    65\ 73\     6\ 40\9.5\ 49\3.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(28) = "  0\LTYPE\  5\3C\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\LONG3\ 70\    64\  3\LONG3\ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 74\     0\ 49\-2.5\ 74\     0\ 49\1.25\ 74\     0\ 49\-2.5\ 74\     0\ 49\1.25\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(29) = "  0\LTYPE\  5\3D\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\LONG4\ 70\    64\  3\LONG4\ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 74\     0\ 49\-1.25\ 74\     0\ 49\1.25\ 74\     0\ 49\-1.25\ 74\     0"
   Dxd1$(30) = "  0\LTYPE\  5\3E\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\LONG5\ 70\    64\  3\LONG5\ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 74\     0\ 49\-2.5\ 74\     0\ 49\2.5\ 74\     0\ 49\-2.5\ 74\     0"
   Dxd1$(31) = "  0\LTYPE\  5\3F\100\AcDbSymbolTableRecord\100\AcDbLinetypeTableRecord\  2\$SNAPEXT\ 70\     0\  3\$SNAPEXT\ 72\    65\ 73\     2\ 40\0.04\ 49\0.02\ 74\     0\ 49\-0.02\ 74\     0"
   Dxd1$(32) = "  0\ENDTAB"
         
         
         
         
         For ii = 1 To 32:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
    
    
    '[[[ Layer ]]]
   Dxd1$(1) = "  0\TABLE\  2\LAYER\  5\2\100\AcDbSymbolTable\ 70\    19"
   Dxd1$(2) = "  0\LAYER\  5\14\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0\ 70\     0\ 62\     7\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(3) = "  0\LAYER\  5\40\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\���\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(4) = "  0\LAYER\  5\41\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\���\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(5) = "  0\LAYER\  5\42\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Hoop\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(6) = "  0\LAYER\  5\43\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-3\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(7) = "  0\LAYER\  5\44\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\�S�ؒf��\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(8) = "  0\LAYER\  5\45\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\�S��Mark\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(9) = "  0\LAYER\  5\46\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Stoper\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(10) = "  0\LAYER\  5\47\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\�S�؉��H�}\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(11) = "  0\LAYER\  5\48\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-8\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(12) = "  0\LAYER\  5\49\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Mark\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(13) = "  0\LAYER\  5\4A\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\���@��\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(14) = "  0\LAYER\  5\4B\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-B\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(15) = "  0\LAYER\  5\4C\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\ETC\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(16) = "  0\LAYER\  5\4D\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Center-Line\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(17) = "  0\LAYER\  5\4E\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\�f�ʈʒu�w��\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(18) = "  0\LAYER\  5\4F\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-G\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(19) = "  0\LAYER\  5\50\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Title\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(20) = "  0\LAYER\  5\51\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\�}�g\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(21) = "  0\ENDTAB"
    
         For ii = 1 To 21:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
    
    
    '[[[ Moji ]]]
         Dxd1$(1) = "  0\TABLE\  2\STYLE\  5\3\100\AcDbSymbolTable\ 70\     1"
         Dxd1$(2) = "  0\STYLE\  5\10\100\AcDbSymbolTableRecord\100\AcDbTextStyleTableRecord\  2\STANDARD\ 70\     0\ 40\0.0\ 41\1.0\ 50\0.0\ 71\     0\ 42\0.2\  3\txt\  4\bigfont.shx"
         Dxd1$(3) = "  0\STYLE\  5\F7\100\AcDbSymbolTableRecord\100\AcDbTextStyleTableRecord\  2\_TCW_TXTSTY_1\ 70\     0\ 40\0.0\ 41\1.0\ 50\0.0\ 71\     0\ 42\250.0\  3\\  4\\1001\ACAD\1000\�l�r �S�V�b�N\1071\    32802"
         Dxd1$(4) = "  0\ENDTAB"
         For ii = 1 To 4:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
     
     
   Dxd1$(1) = "  0|TABLE|  2|VIEW|  5|5|100|AcDbSymbolTable| 70|     1"
   Dxd1$(2) = "  0|VIEW|  5|52|100|AcDbSymbolTableRecord|100|AcDbViewTableRecord|  2|�\��_0| 70|     0| 40|210.0| 10|148.5| 20|105.0| 41|297.0| 11|0.0| 21|0.0| 31|1.0| 12|0.0| 22|0.0| 32|0.0| 42|50.0| 43|0.0| 44|0.0| 50|0.0| 71|     0|281|     0| 72|     0|110|0.0|120|0.0|130|0.0|111|1.0|121|0.0|131|0.0|112|0.0|122|1.0|132|0.0"
   Dxd1$(3) = "  0|ENDTAB"
     
     
   Dxd1$(4) = "  0|TABLE|  2|UCS|  5|6|100|AcDbSymbolTable| 70|     0"
   Dxd1$(5) = "  0|ENDTAB"


   Dxd1$(6) = "  0|TABLE|  2|APPID|  5|8|100|AcDbSymbolTable| 70|     2"
   Dxd1$(7) = "  0|APPID|  5|16|100|AcDbSymbolTableRecord|100|AcDbRegAppTableRecord|  2|ACAD| 70|     0"
   Dxd1$(8) = "  0|APPID|  5|24|100|AcDbSymbolTableRecord|100|AcDbRegAppTableRecord|  2|TCAD| 70|     0"
   Dxd1$(9) = "  0|ENDTAB"

   Dxd1$(10) = "  0|TABLE|  2|DIMSTYLE|  5|9|100|AcDbSymbolTable| 70|     1|100|AcDbDimStyleTable| 71|     0"
   Dxd1$(11) = "  0|DIMSTYLE|105|18|100|AcDbSymbolTableRecord|100|AcDbDimStyleTableRecord|  2|STANDARD| 70|     0|  3||  4|| 40|1.0| 41|0.18| 42|0.0625| 43|0.38| 44|0.18| 45|0.0| 46|0.0| 47|0.0| 48|0.0| 71|     0| 72|     0| 73|     1| 74|     1| 75|     0| 76|     0| 77|     0| 78|     0| 79|     0|140|0.18|141|0.09|142|0.0|143|25.4|144|1.0|145|0.0|146|1.0|147|0.09|148|0.0|170|     0|171|     2|172|     0|173|     0|174|     0|175|     0|176|     0|177|     0|178|     0|179|     0|271|     4|272|     4|273|     2|274|     2|275|     0|276|     0|277|     2|278|    46|279|     0|280|     0|281|     0|282|     0|283|     1|284|     0|285|     0|286|     0|288|     0|340|17|341|0|342|0|343|0|344|0|371|    -2|372|    -2"

   Dxd1$(12) = "  0|ENDTAB"
   
   Dxd1$(13) = "  0|TABLE|  2|BLOCK_RECORD|  5|1|100|AcDbSymbolTable| 70|     0"


   Dxd1$(14) = "  0|BLOCK_RECORD|  5|A|100|AcDbSymbolTableRecord|100|AcDbBlockTableRecord|  2|*MODEL_SPACE|340|20"
   Dxd1$(15) = "  0|BLOCK_RECORD|  5|B|100|AcDbSymbolTableRecord|100|AcDbBlockTableRecord|  2|*PAPER_SPACE|340|21"
   Dxd1$(16) = "  0|ENDTAB"
   Dxd1$(17) = "  0|ENDSEC"


   Dxd1$(18) = "  0|SECTION|  2|BLOCKS"
   Dxd1$(19) = "  0|BLOCK|  5|D|100|AcDbEntity|  8|0|100|AcDbBlockBegin|  2|*MODEL_SPACE| 70|     0| 10|0.0| 20|0.0| 30|0.0|  3|*MODEL_SPACE|  1|"
   Dxd1$(20) = "  0|ENDBLK|  5|E|100|AcDbEntity|  8|0|100|AcDbBlockEnd"
   Dxd1$(21) = "  0|BLOCK|  5|F|100|AcDbEntity| 67|     1|  8|0|100|AcDbBlockBegin|  2|*PAPER_SPACE| 70|     0| 10|0.0| 20|0.0| 30|0.0|  3|*PAPER_SPACE|  1|"
   Dxd1$(22) = "  0|ENDBLK|  5|10|100|AcDbEntity| 67|     1|  8|0|100|AcDbBlockEnd"
   Dxd1$(23) = "  0|ENDSEC"
     
         For ii = 1 To 23:      Call Ddata("|", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
     
     
     
     '.... LAYER
     'Print #19, "  0": Print #19, "TABLE"
    ' Print #19, "  2": Print #19, "LAYER"
    ' Print #19, " 70": Print #19, "   10"
     
     'For ii = 1 To LAYER_N
     '   Print #19, "  0": Print #19, "LAYER"
     '   Print #19, "  2": Print #19, Zlayer$(ii)
     '   Print #19, " 70": Print #19, "   64"
     '   Print #19, " 62": Print #19, "   5":   'Zcolor$
     '   Print #19, "  6": Print #19, "CONTINUOUS"
     '   Next ii
        
     '**************
     'Print #19, "  0": Print #19, "VPORT"
     '   Print #19, " 72": Print #19, "  0.0"
     '**************
     
     
    ' Print #19, "  0": Print #19, "ENDTAB"
    ' Print #19, "  0": Print #19, "ENDSEC"
     Print #19, "  0": Print #19, "SECTION"
     Print #19, "  2": Print #19, "ENTITIES"
     End Sub



'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Start                                                                                                                      ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dxf_start(outdxf$, LAYER_N, Zlayer$())
     '02_09_21
     ReDim Dxd1$(50)
     
     P_���_X = 0: P_���_Y = 0: ' DXF���_������
     
     If InStr(outdxf$, ":") = 0 Then outdxf$ = Dxf_dsk + outdxf$
     If InStr(outdxf$, ".") = 0 Then outdxf$ = outdxf$ + ".DXF"
     Open outdxf$ For Output As #19
  
     Print #19, "  0": Print #19, "SECTION"
     Print #19, "  2": Print #19, "HEADER"
     Print #19, "  9": Print #19, "$ACADVER"
     
     Print #19, "  1": Print #19, "AC1009"
     
     
     
     Print #19, "  9": Print #19, "$INSBASE"
     
     Print #19, " 10": Print #19, "0"
     Print #19, " 20": Print #19, "0"
     Print #19, " 30": Print #19, "0"
     
     �p��$ = "A1"
     Select Case �p��$
     Case "A1": �p��B = 841: �p��D = 594
     Case "A2": �p��B = 594: �p��D = 420
     Case "A3": �p��B = 594: �p��D = 420
     End Select
     
     Print #19, "  9": Print #19, "$EXTMIN"
     Print #19, " 10": Print #19, "0"
     Print #19, " 20": Print #19, "0"
     
     Print #19, "  9": Print #19, "$EXTMAX"
     Print #19, " 10": Print #19, �p��B * ZU_Scale
     Print #19, " 20": Print #19, �p��D * ZU_Scale
     
     Print #19, "  9": Print #19, "$LIMMIN"
     Print #19, " 10": Print #19, "0"
     Print #19, " 20": Print #19, "0"
     
     Print #19, "  9": Print #19, "$LIMMAX"
     Print #19, " 10": Print #19, �p��B * ZU_Scale
     Print #19, " 20": Print #19, �p��D * ZU_Scale
     
     
     
     DDD1 = Int(ZU_Scale / 30): Da$ = "  " + F9$(50):   '����̃O���[�o���Ȏړx
     Print #19, "  9": Print #19, "$LTSCALE": Print #19, " 40": Print #19, Da$
     
     Print #19, "  9": Print #19, "$PDMODE": Print #19, " 70": Print #19, "  33": '�_�̕\�����[�h
     Print #19, "  9": Print #19, "$PDSIZE": Print #19, " 40": Print #19, " 10": '�_�̕\���T�C�Y
     Print #19, "  0": Print #19, "ENDSEC"
     
     
     '[[[ Line Type ]]]
    
         Dxd1$(1) = "  0|SECTION|  2|TABLES"
         Dxd1$(2) = "  0|TABLE|  2|LTYPE| 70|     9"
         Dxd1$(3) = "  0|LTYPE|  2|CONTINUOUS| 70|    64|  3|����| 72|    65| 73|     0| 40|0.0"
         Dxd1$(4) = "  0|LTYPE|  2|DASHED1| 70|    64|  3|--  --  --  --  --  --  --  --  | 72|    65| 73|     2| 40|2.5| 49|1.25| 49|-1.25"
         Dxd1$(5) = "  0|LTYPE|  2|DASHED2| 70|    64|  3|----    ----    ----    ----    | 72|    65| 73|     2| 40|5.0| 49|2.5| 49|-2.5"
         Dxd1$(6) = "  0|LTYPE|  2|DASHED3| 70|    64|  3|------  ------  ------  ------  | 72|    65| 73|     2| 40|5.0| 49|3.75| 49|-1.25"
         Dxd1$(7) = "  0|LTYPE|  2|CENTER1| 70|    64|  3|----- - ----- - ----- - ----- - | 72|    65| 73|     4| 40|10.0| 49|6.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(8) = "  0|LTYPE|  2|CENTER2| 70|    64|  3|----------  --  ----------  --  | 72|    65| 73|     4| 40|20.0| 49|12.5| 49|-2.5| 49|2.5| 49|-2.5"
         Dxd1$(9) = "  0|LTYPE|  2|PHANTOM1| 70|    64|  3|--- - - --- - - --- - - --- - - | 72|    65| 73|     6| 40|10.0| 49|3.25| 49|-1.25| 49|1.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(10) = "  0|LTYPE|  2|PHANTOM2| 70|    64|  3|--------  -  -  --------  -  -  | 72|    65| 73|     6| 40|20.0| 49|10.0| 49|-2.5| 49|1.25| 49|-2.5| 49|1.25| 49|-2.5"
         Dxd1$(11) = "  0|LTYPE|  2|DOT| 70|    64|  3|-   -   -   -   -   -   -   -   | 72|    65| 73|     2| 40|2.5| 49|0.625| 49|-1.875"
         Dxd1$(12) = "  0|LTYPE|  2|DUMMY| 70|    64|  3|�_�~�[| 72|    65| 73|     0| 40|0.0"
         Dxd1$(13) = "  0|LTYPE|  2|RAND1| 70|    64|  3|----- - ----- - ----- - ----- - | 72|    65| 73|     4| 40|10.0| 49|6.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(14) = "  0|LTYPE|  2|RAND2| 70|    64|  3|----------  --  ----------  --  | 72|    65| 73|     4| 40|20.0| 49|12.5| 49|-2.5| 49|2.5| 49|-2.5"
         Dxd1$(15) = "  0|LTYPE|  2|RAND3| 70|    64|  3|--- - - --- - - --- - - --- - - | 72|    65| 73|     6| 40|10.0| 49|3.25| 49|-1.25| 49|1.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(16) = "  0|LTYPE|  2|RAND4| 70|    64|  3|--------  -  -  --------  -  -  | 72|    65| 73|     6| 40|20.0| 49|10.0| 49|-2.5| 49|1.25| 49|-2.5| 49|1.25| 49|-2.5"
         Dxd1$(17) = "  0|LTYPE|  2|RAND5| 70|    64|  3|----- - ----- - ----- - ----- - | 72|    65| 73|     4| 40|10.0| 49|6.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(18) = "  0|LTYPE|  2|LONG1| 70|    64|  3|----------  --  ----------  --  | 72|    65| 73|     4| 40|20.0| 49|12.5| 49|-2.5| 49|2.5| 49|-2.5"
         Dxd1$(19) = "  0|LTYPE|  2|LONG2| 70|    64|  3|--- - - --- - - --- - - --- - - | 72|    65| 73|     6| 40|10.0| 49|3.25| 49|-1.25| 49|1.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(20) = "  0|LTYPE|  2|LONG3| 70|    64|  3|--------  -  -  --------  -  -  | 72|    65| 73|     6| 40|20.0| 49|10.0| 49|-2.5| 49|1.25| 49|-2.5| 49|1.25| 49|-2.5"
         Dxd1$(21) = "  0|LTYPE|  2|LONG4| 70|    64|  3|----- - ----- - ----- - ----- - | 72|    65| 73|     4| 40|10.0| 49|6.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(22) = "  0|LTYPE|  2|LONG5| 70|    64|  3|----------  --  ----------  --  | 72|    65| 73|     4| 40|20.0| 49|12.5| 49|-2.5| 49|2.5| 49|-2.5"
         Dxd1$(23) = "  0|ENDTAB"
         For ii = 1 To 23:      Call Ddata("|", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
    
    
    
    '[[[ Moji ]]]
         Dxd1$(1) = "  0|TABLE|  2|STYLE|  5|3|100|AcDbSymbolTable| 70|     1"
         Dxd1$(2) = "  0|STYLE|  5|10|100|AcDbSymbolTableRecord|100|AcDbTextStyleTableRecord|  2|STANDARD| 70|     0| 40|0.0| 41|1.0| 50|0.0| 71|     0| 42|0.2|  3|txt|  4|bigfont.shx"
         Dxd1$(3) = "  0|ENDTAB"
         For ii = 1 To 3:      Call Ddata("|", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
     
     '.... LAYER
     Print #19, "  0": Print #19, "TABLE"
     Print #19, "  2": Print #19, "LAYER"
     Print #19, " 70": Print #19, "   10"
     
     For ii = 1 To LAYER_N
        Print #19, "  0": Print #19, "LAYER"
        Print #19, "  2": Print #19, Zlayer$(ii)
        Print #19, " 70": Print #19, "   64"
        Print #19, " 62": Print #19, "   5":   'Zcolor$
        Print #19, "  6": Print #19, "CONTINUOUS"
        Next ii
        
     '**************
     'Print #19, "  0": Print #19, "VPORT"
     '   Print #19, " 72": Print #19, "  0.0"
     '**************
     
     
     Print #19, "  0": Print #19, "ENDTAB"
     Print #19, "  0": Print #19, "ENDSEC"
     Print #19, "  0": Print #19, "SECTION"
     Print #19, "  2": Print #19, "ENTITIES"
     End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_End                                                                                                                        ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dxf_End()
     'Jend: '..........
     Print #19, "  0": Print #19, "ENDSEC"
     Print #19, "  0": Print #19, "EOF"
     Close #19

     End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Line                                                                                                                       ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Z_Line(X1, Y1, X2, Y2, LAYER0$, Zline0$, Zcolor0$)
     'X1,X2,Y1,Y2
     Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Dxf_Line"): Stop
     
     Print #19, "  0": Print #19, "LINE"
     Print #19, "  8": Print #19, Layer$
     Print #19, "  6": Print #19, Zline$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": If P_���_X + X1 = 0 Then Print #19, "0.0" Else Print #19, P_���_X + X1
     Print #19, " 20": If P_���_Y + Y1 = 0 Then Print #19, "0.0" Else Print #19, P_���_Y + Y1
     Print #19, " 11": If P_���_X + X2 = 0 Then Print #19, "0.0" Else Print #19, P_���_X + X2
     Print #19, " 21": If P_���_Y + Y2 = 0 Then Print #19, "0.0" Else Print #19, P_���_Y + Y2

     End Sub
Sub Dxf_Line(X1, Y1, X2, Y2)
     'X1,X2,Y1,Y2
     'Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
  '   Call TTT(P_Layer_0, P_����_0, P_�F_0): If Layer$ = "" Then ER ("Dxf_Line"): Stop
     
     Print #19, "  0": Print #19, "LINE"
     Print #19, "  8": Print #19, P_Layer_��
     Print #19, "  6": Print #19, P_����_��
     Print #19, " 62": Print #19, P_�F_��
     Print #19, " 10": Print #19, P_���_X + X1
     Print #19, " 20": Print #19, P_���_Y + Y1
     Print #19, " 11": Print #19, P_���_X + X2
     Print #19, " 21": Print #19, P_���_Y + Y2

     End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Point                                                                                                                      ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Z_point(X1, Y1, LAYER0$, Zcolor0$)
     Layer$ = LAYER0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Z_Point"): Stop
     Print #19, "  0": Print #19, "POINT"
     Print #19, "  8": Print #19, Layer$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": Print #19, P_���_X + X1
     Print #19, " 20": Print #19, P_���_Y + Y1
     End Sub

Sub Dxf_point(X1, Y1)
     'Layer$ = LAYER0$: Zcolor$ = Zcolor0$
     'Call TTT(P_Layer_0, Zline$, Zcolor$): If Layer$ = "" Then ER ("Dxf_Point"): Stop
     Print #19, "  0": Print #19, "POINT"
     Print #19, "  8": Print #19, P_Layer_�_
     Print #19, " 62": Print #19, P_�F_�_
     Print #19, " 10": Print #19, P_���_X + X1
     Print #19, " 20": Print #19, P_���_Y + Y1
     End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Circle                                                                                                                     ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Z_circle(X0, Y0, D, LAYER0$, Zline0$, Zcolor0$)
     'X1,Y1,D(���a)
      Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Z_cir"): Stop
     Print #19, "  0": Print #19, "CIRCLE"
     Print #19, "  8": Print #19, Layer$
     Print #19, "  6": Print #19, Zline$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": Print #19, P_���_X + X0
     Print #19, " 20": Print #19, P_���_Y + Y0
     Print #19, " 40": Print #19, D
     'Print #19, " 39": Print #19, 1#: '*****
     End Sub
Sub Dxf_circle(X0, Y0, r)
     'X1,Y1,r(���a)
      'Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     'Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then ER ("Z_cir"): Stop
     Print #19, "  0": Print #19, "CIRCLE"
     Print #19, "  8": Print #19, P_Layer_�~
     Print #19, "  6": Print #19, P_����_�~
     Print #19, " 62": Print #19, P_�F_�~
     Print #19, " 10": Print #19, P_���_X + X0
     Print #19, " 20": Print #19, P_���_Y + Y0
     Print #19, " 40": Print #19, r
     'Print #19, " 39": Print #19, 1#: '*****
     End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   DXF_Arc                                                                                                                        ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Z_arc(X0, Y0, D, r1, r2, LAYER0$, Zline0$, Zcolor0$)
     'X1,Y1,D,r1,r2(��)
     Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Z_arc"): Stop
     Print #19, "  0": Print #19, "ARC"
     Print #19, "  8": Print #19, Layer$
     Print #19, "  6": Print #19, Zline$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": Print #19, P_���_X + X0
     Print #19, " 20": Print #19, P_���_Y + Y0
     Print #19, " 40": Print #19, D
     Print #19, " 50": If r1 = 0 Then Print #19, " 0.0" Else Print #19, r1
     Print #19, " 51": If r2 = 0 Then Print #19, " 0.0" Else Print #19, r2
     End Sub
Sub Dxf_arc(X0, Y0, D, r1, r2)
     'X1,Y1,D,r1,r2(��)
     'Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     'Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then ER ("Z_arc"): Stop
     Print #19, "  0": Print #19, "ARC"
     Print #19, "  8": Print #19, P_Layer_Arc
     Print #19, "  6": Print #19, P_����_Arc
     Print #19, " 62": Print #19, P_�F_Arc
     Print #19, " 10": Print #19, P_���_X + X0
     Print #19, " 20": Print #19, P_���_Y + Y0
     Print #19, " 40": Print #19, D
     Print #19, " 50": If r1 = 0 Then Print #19, " 0.0" Else Print #19, r1
     Print #19, " 51": If r2 = 0 Then Print #19, " 0.0" Else Print #19, r2
     End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Sym  AutoCad                                                                                                               ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dxf_sym_AutoCad(X0, Y0, �����ʒu, MR, jDa$)
     'X0,Y0,Msize,�����ʒu,MdxL,MdyL,MR,Jda$
      MdxL = P_Mdx: ' MdxL (mm)
      MdyL = P_Mdy: ' MdyL (mm)
     ' exp $LT=1.20\_______

     'MojWL$ = "0.55"
     
     Dxf_Msize = �ϊ�M * Sub�{��
     If Trim$(jDa$) = "" Then Exit Sub
     
     Msize = P_����_size_0
     MojWL$ = "1.0"
     NKANJI = N����(jDa$)
     If NKANJI > 0 Then MojWL$ = "1.0": ' ����
     
     ni = InStr(jDa$, "\")
     If Mid$(jDa$, 1, 4) = "$LT=" And ni > 0 Then MojWL$ = Mid$(jDa$, 5, ni - 5): jDa$ = Mid$(jDa$, ni + 1)

     Moj_n = Len(jDa$) + NKANJI
     SN2 = Dsin(MR): CS2 = Dcos(MR)
     
        MojH = Msize:   MojW = Msize / 2:  Moj_pit = 0.1
     
     Select Case Msize
        Case Is < 3.5:   Moj_pit = 0.1
        Case 3.5 To 4:  Moj_pit = 0.15
        Case 4 To 5:    Moj_pit = 0.2: 'MojH = 5
        Case 5 To 6:  Moj_pit = 0.25
        Case Is > 6: Moj_pit = 0.5
        End Select
     
     Select Case �����ʒu
        Case "L", "LD": Moj_LCR_XL = 0:                             ' �����
        Case "C", "CD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: ' ����
        Case "R", "RD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit):     ' �E���
        Case "LC": Moj_LCR_XL = 0: MdyL = MdyL - MojH / 2: ' ����
        Case "CC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: MdyL = MdyL - MojH / 2:  ' ����
        Case "RC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit): MdyL = MdyL - MojH / 2:   ' ����
        
        Case Else: er ("�����ʒu=" + �����ʒu + " L or C or R ��Ų"): Stop
        End Select
     
     'MdyL = -P_����_size_0 / 2:  ' �{�� *�͕s�K�v

     ' Autocad
     Moj_LL2 = Sqr(MdxL * MdxL + MdyL * MdyL)
     If Moj_LL2 <> 0 Then
        SN1 = MdyL / Moj_LL2: CS1 = MdxL / Moj_LL2
        Else
        SN1 = 0: CS1 = 0
        End If
     
     X2 = X0 + Dxf_Msize * Moj_LL2 * (CS1 * CS2 - SN1 * SN2): ' autocad
     Y2 = Y0 + Dxf_Msize * Moj_LL2 * (SN1 * CS2 + CS1 * SN2)
     
     ' Jwcad
     Moj_LL = Sqr((MdxL - Moj_LCR_XL) * (MdxL - Moj_LCR_XL) + MdyL * MdyL)
     If Moj_LL <> 0 Then
        SN1 = MdyL / Moj_LL: CS1 = (MdxL - Moj_LCR_XL) / Moj_LL
        Else
        SN1 = 0: CS1 = 0
        End If
     
     Moj_XL = Dxf_Msize * Moj_LL * (CS1 * CS2 - SN1 * SN2): ' jwcad
     Moj_YL = Dxf_Msize * Moj_LL * (SN1 * CS2 + CS1 * SN2)
     
     
     Print #19, "  0": Print #19, "TEXT"
     Print #19, "  8": Print #19, P_Layer_����
     
     Print #19, " 10": Print #19, P_���_X + X0 + Moj_XL
     Print #19, " 20": Print #19, P_���_Y + Y0 + Moj_YL

    Print #19, " 40": Print #19, MojH * Dxf_Msize:  '* ZU_Scale
   '  Print #19, " 40": Print #19, MojH * ZU_Scale
     Print #19, " 41": Print #19, MojWL$
     Print #19, " 50": Print #19, MR
     Print #19, "  1": Print #19, jDa$
     Select Case �����ʒu
        Case "L", "LC", "LD": ' �����
        Case "C", "CC", "CD": ' ����
                  Print #19, " 72": Print #19, "   1"
                  Print #19, " 11": Print #19, P_���_X + X2: Print #19, " 21": Print #19, P_���_Y + Y2
        
        Case "R", "RC", "RD": ' �E���
                  Print #19, " 72": Print #19, "   2"
                  Print #19, " 11": Print #19, P_���_X + X2: Print #19, " 21": Print #19, P_���_Y + Y2
        Case Else: er ("�����ʒu=" + �����ʒu + " L or C or R ��Ų"): Stop
        End Select
     
  '***********************
     Print #19, "  7": Print #19, "_TCW_TXTSTY_1"



     End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��   Dxf_Sym                                                                                                                        ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Dxf_sym(X0, Y0, �����ʒu, MR, jDa$)
     'X0,Y0,Msize,�����ʒu,MdxL,MdyL,MR,Jda$
      MdxL = P_Mdx: ' MdxL (mm)
      MdyL = P_Mdy: ' MdyL (mm)
     ' exp $LT=1.20\_______

     'MojWL$ = "0.55"
     
     Dxf_Msize = �ϊ�M * Sub�{��
     If Trim$(jDa$) = "" Then Exit Sub
     
     Msize = P_����_size_0
     MojWL$ = "1.0"
     NKANJI = N����(jDa$)
     If NKANJI > 0 Then MojWL$ = "1.0": ' ����
     
     ni = InStr(jDa$, "\")
     If Mid$(jDa$, 1, 4) = "$LT=" And ni > 0 Then MojWL$ = Mid$(jDa$, 5, ni - 5): jDa$ = Mid$(jDa$, ni + 1)

     Moj_n = Len(jDa$) + NKANJI
     SN2 = Dsin(MR): CS2 = Dcos(MR)
     
        MojH = Msize:   MojW = Msize / 2:  Moj_pit = 0.1
     
     Select Case Msize
        Case Is < 3.5:   Moj_pit = 0.1
        Case 3.5 To 4:  Moj_pit = 0.15
        Case 4 To 5:    Moj_pit = 0.2: 'MojH = 5
        Case 5 To 6:  Moj_pit = 0.25
        Case Is > 6: Moj_pit = 0.5
        End Select
     
     Select Case �����ʒu
        Case "L", "LD": Moj_LCR_XL = 0:                             ' �����
        Case "C", "CD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: ' ����
        Case "R", "RD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit):     ' �E���
        Case "LC": Moj_LCR_XL = 0: MdyL = MdyL - MojH / 2: ' ����
        Case "CC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: MdyL = MdyL - MojH / 2:  ' ����
        Case "RC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit): MdyL = MdyL - MojH / 2:   ' ����
        
        Case Else: er ("�����ʒu=" + �����ʒu + " L or C or R ��Ų"): Stop
        End Select
     
     'MdyL = -P_����_size_0 / 2:  ' �{�� *�͕s�K�v

     ' Autocad
     Moj_LL2 = Sqr(MdxL * MdxL + MdyL * MdyL)
     If Moj_LL2 <> 0 Then
        SN1 = MdyL / Moj_LL2: CS1 = MdxL / Moj_LL2
        Else
        SN1 = 0: CS1 = 0
        End If
     
     X2 = X0 + Dxf_Msize * Moj_LL2 * (CS1 * CS2 - SN1 * SN2): ' autocad
     Y2 = Y0 + Dxf_Msize * Moj_LL2 * (SN1 * CS2 + CS1 * SN2)
     
     ' Jwcad
     Moj_LL = Sqr((MdxL - Moj_LCR_XL) * (MdxL - Moj_LCR_XL) + MdyL * MdyL)
     If Moj_LL <> 0 Then
        SN1 = MdyL / Moj_LL: CS1 = (MdxL - Moj_LCR_XL) / Moj_LL
        Else
        SN1 = 0: CS1 = 0
        End If
     
     Moj_XL = Dxf_Msize * Moj_LL * (CS1 * CS2 - SN1 * SN2): ' jwcad
     Moj_YL = Dxf_Msize * Moj_LL * (SN1 * CS2 + CS1 * SN2)
     
     
     Print #19, "  0": Print #19, "TEXT"
     Print #19, "  8": Print #19, P_Layer_����
     
     Print #19, " 10": Print #19, P_���_X + X0 + Moj_XL
     Print #19, " 20": Print #19, P_���_Y + Y0 + Moj_YL

    Print #19, " 40": Print #19, MojH * Dxf_Msize:  '* ZU_Scale
   '  Print #19, " 40": Print #19, MojH * ZU_Scale
     Print #19, " 41": Print #19, MojWL$
     Print #19, " 50": Print #19, MR
     Print #19, "  1": Print #19, jDa$
     Select Case �����ʒu
        Case "L", "LC", "LD": ' �����
        Case "C", "CC", "CD": ' ����
                  Print #19, " 72": Print #19, "   1"
                  Print #19, " 11": Print #19, P_���_X + X2: Print #19, " 21": Print #19, P_���_Y + Y2
        
        Case "R", "RC", "RD": ' �E���
                  Print #19, " 72": Print #19, "   2"
                  Print #19, " 11": Print #19, P_���_X + X2: Print #19, " 21": Print #19, P_���_Y + Y2
        Case Else: er ("�����ʒu=" + �����ʒu + " L or C or R ��Ų"): Stop
        End Select
     
     

     End Sub

Private Sub TTT(Layer$, Zline$, Zcolor$)
    If Layer$ = "" Then Layer$ = Zlayer$(18)
    If Zline$ = "" Then Zline$ = "CONTINUOUS"
    If Zcolor$ = "" Then Zcolor$ = "2"
    End Sub

