Attribute VB_Name = "���r_M�֐�"
'������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@���r_M�֐�                                    �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@  �@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��           2003.10.27                                  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@   �@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'������������������������������������������������������������������������������������������������������������������������
'
'
'
'*************************************************************************************************************************************************************
'
' gTips Library - www.vbvbvb.com
'
' ���̃T���v���v���O�����̎g�p�Ɋւ��āA���ړI�܂��͊ԐړI�ɐ����邢�������̑��Q�ɂ��āA���Ђ͔@���Ȃ�ӔC������
' �Ȃ����̂Ƃ��܂��B�����Ɍf����_�Ɋւ��ẮA���̃T���v���v���O�����̎g�p�������āA���ӂ��ꂽ���̂Ƃ݂Ȃ��܂��B
'
' (c)1996-2000 galliver, inc. all rights reserved.
'
'Option Explicit

' Form�\���Ŏg�p
' �Ǝ��̃L�����b�g���쐬����֐��̐錾
Declare Function CreateCaret Lib "user32.dll" (ByVal hwnd As Long, ByVal hBitmap As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long

' �L�����b�g��j������֐��̐錾
Declare Function DestroyCaret Lib "user32.dll" () As Long

' �L�����b�g���\���ɂ���֐��̐錾
Declare Function HideCaret Lib "user32.dll" (ByVal hwnd As Long) As Long

' �L�����b�g��\������֐��̐錾
Declare Function ShowCaret Lib "user32.dll" (ByVal hwnd As Long) As Long

'*************************************************************************************************************************************************************
'
'        [[[[[ Fuction    1993-08-07   ]]]]]
'
     Public ��_Form_�� As Integer
     Public �\��_Form(200) As New Form_���r
     Public ��_�\��Form_No As Integer

        Public SYS_dsk As String
        Public Data_dsk  As String
        Public Dxf_dsk  As String
        Public ���r_Data_dsk As String
        Public TEMP_Data_dsk As String
        Public SS1��_Data_dsk As String
              
       
        Public P_code_1$, P_code_2$, P_code_3$, P_code_4$, P_code_5$
        Public P_code_6$, P_code_7$, P_code_8$, P_code_9$, P_code_10$
        Public ����CK As Single
            ' ����CK  >=100   stop
        Public ��er As String
        
        Public ��_�OBranc$: '  UXF�@data �̑O�����ݸ
        Public ��NG$(2000), NG�� As Single
        
        Public ��f_end$: ' Ran File �̕����� End ϰ�
     Public ������_Type$, ������_����$, ������_OPTIONS:  ', Form�\���Ŏg�p
        
        Public ���E_�t�H���_��$
        
        Public ����_File$, ����_File2$, �\���o��$
       
        Public �� As Double
        Public ��_��Page$, Pend As Single, Pa As Single, Npage As Single, ���s�Ԋu As Single, br$
        Public LP_scale As Single: ' ������ GRAP ����
     
        Public �\���u���E�U$
        Type CRTDATA
             ���e As String * 350
             End Type
        Public Data_File��$, CRT_File��$
        
        Public ���r_Data��$
        Public ���r_Data����$
        Public ���E�o�͍���$
        
        Public ��������$, �d�����$
        Public ���\������SIZE As Single
        Public ��PROGRAM$
        Public ��SI�ϊ� As Single
        Public ���׏d�P��$
        
       Public ��View$:  ' CRT �o�� View
      Public ��_���s�ʒu$, ��_���s�ʒu2$
        
        Public ���׎��s�ʒu$
        
        Public �o��_CONT$

      Public EMS0$, EMS1$, EMS2$, EMS3$, EMS4$, EMS5$, EMS99$
       
      Public Ds$(1500), Ds1$(1500), Ds2$(1500), Ds3$(1500)
      Public Di(1500), Di1(1500), Di2(1500), Di3(1500), Di4(1500)
      Public IDi(1500) As Integer, IDi1(1500) As Integer, IDi2(1500) As Integer
      Public ADDi(100, 100)
      
      Public Dlp$(5000), ��Dlp$(5000), Lm As Integer, Dpit As Single
    '  Public Rob_Text$(1000)
      
      Public SDi1(1500) As Single, SDi2(1500) As Single, SDi3(1500) As Single: 'Test �p
      Public LDi1(1500) As Long, LDi2(1500) As Long, LDi3(1500) As Long:  'Test �p
       
      Public XY�ʒu$, Old_XY�ʒu$

      Public �eNG�ӏ��� As Integer, ��NG�ӏ��� As Integer, NG����$(5000)
        
      Public twip As Single

      Public cr As String
      Public ���r_Dir1$

      Dim oo

'������������������������������������������������������������������������������������������������������������������������
'��
'���@�@�@dsk2     ��ײ�ތ���  Robot �p
'��
'������������������������������������������������������������������������������������������������������������������������
Sub dsk2()
    
    
     ��f_end$ = Chr(9)
     cr = Chr(13) + Chr(10)
    
    'File1.Path = Dir1.Path
    'D1$ = MDIForm_���r.Pa
    ���r_Dir1$ = App.Path + "\"
    
    PROGRAM_data$ = ���r_Dir1$ + "���r_Dir.dat"
    
    ���\������SIZE = 9
    ����CK = 0: ��er = ""
     
     '����CK = 100:     ' �װ��Stop
     ' ����CK = 200:     ' Sub ٰ�ݓ�װ��Stop
    
    
    
    Dxf_dsk = ���r_Dir1$ + "Dxf_File\"
    ���r_Data_dsk = ���r_Dir1$ + "User\":     RET$ = Dir(���r_Data_dsk, 16): If RET$ = "" Then MkDir ���r_Data_dsk
    
    
    RET$ = Dir(PROGRAM_data$)
    If RET$ <> "" Then
    Open PROGRAM_data$ For Input As #1
    Do
    Input #1, D$: D$ = F_RAN(D$): D0$ = "": n = InStr(D$, "=")
        If n > 0 Then D0$ = Mid$(D$, 1, n - 1): D10$ = Mid$(D$, n + 1)
        If UCase(Mid$(D$, 1, 2)) = "/E" Then Exit Do
        Select Case UCase$(Trim$(D0$))
        Case "DXF_DSK":         Dxf_dsk = D10$
        End Select
    Loop Until EOF(1)
    Close #1
    End If
    
    
    SYS_dsk = ���r_Dir1$ + "System\":       RET$ = Dir(SYS_dsk, 16): If RET$ = "" Then MkDir SYS_dsk
    
    
    TEMP_Data_dsk = ���r_Dir1$ + "Temp\":   RET$ = Dir(TEMP_Data_dsk, 16): If RET$ = "" Then MkDir TEMP_Data_dsk
    
    
    '[[[ Dxf File ]]]
           RET$ = Dir(Dxf_dsk, 16): If RET$ = "" Then er (Dxf_dsk + " ������  "): 'MkDir Dxf_dsk
    
    
    

    RET$ = Dir(���r_Dir1$ + "File_user.dat")
    
    If RET$ = "" Then
         Open ���r_Dir1$ + "File_user.dat" For Output As #1
         Print #1, ���r_Data_dsk
         Close #1
         Else
         Open ���r_Dir1$ + "File_user.dat" For Input As #1
         Input #1, D10$
         ���r_Data_dsk = D10$
         Close #1
         End If
    
    
     
    Data_dsk = ���r_Data_dsk
    
    
   ' If Dir(���r_Data_dsk, 16) = "" Then ER (���r_Data_dsk + " ������  "): 'MkDir ���r_Data_dsk:    'User �����ިڸ�؂��Ȃ��̂ō��
    If Dir(���r_Data_dsk, 16) = "" Then MkDir ���r_Data_dsk:     'User �����ިڸ�؂��Ȃ��̂ō��
     
     
     
     ���r_Data��$ = "���r�}��"
     
     '���r_Data��$ = Data_dsk$ & "���r�}��.dat"
     'Fn$ = Data_dsk$ &+���r_Data��$+ ".dat"
     
     ���r_Data����$ = ""
    
    
    �� = 3.14159265359: ' 4*ATN(1)
    
    twip = 56.7: ' /cm
    
    End Sub



'������������������������������������������������������������������������������������������������������������������������
'��
'���@�@�@�v�Z����     Err ck �Ȍ�v�Z
'��
'������������������������������������������������������������������������������������������������������������������������
Sub �v�Z����(Cda$, dblResult As Double, err1$)
    ' 2001_5_24
'   Dim objScriptControl   As ScriptControl
    
    Dim ii As Integer, ni As Integer, ni3   As Integer, Sii As Integer
    Dim Moj_n As Integer
    Dim START_ni As Integer
    
    '***********************************************************
   ' Set objScriptControl = Form�֐�.ScriptControl1
    Set objScriptControl = Form_���r.ScriptControl1
    '***********************************************************
    
    
    
    ' ����ɁuVBScript�v��I��
    
    objScriptControl.Language = "VBScript" ' Form Load �ɂȂ�
    ' �����񎮂��v�Z
   ' Stop

    err1$ = ""
    dblResult = 0
   '    �����_���� = 3
    DD0$ = Trim(Cda$)
    
    If InStr(DD0$, "�@") > 0 Then err1$ = "�������ݸ": Exit Sub
    If InStr(DD0$, " ") > 0 Then err1$ = "�r�������ݸ": Exit Sub
    
    If InStr(DD0$, "++") > 0 Then err1$ = "++": Exit Sub
    If InStr(DD0$, "+-") > 0 Then err1$ = "+-": Exit Sub
    If InStr(DD0$, "-+") > 0 Then err1$ = "-+": Exit Sub
    If InStr(DD0$, "--") > 0 Then err1$ = "--": Exit Sub
    If InStr(DD0$, "*+") > 0 Then err1$ = "*+": Exit Sub
    If InStr(DD0$, "*-") > 0 Then err1$ = "*-": Exit Sub
    If InStr(DD0$, "/+") > 0 Then err1$ = "/+": Exit Sub
    If InStr(DD0$, "/-") > 0 Then err1$ = "/-": Exit Sub
    
    'If �d��_����_0_ck$ = "Y" Then  ' �v�Z���̕����� +. -. *. /. ck
         If InStr(DD0$, "+.") > 0 Then err1$ = "+.": Exit Sub
         If InStr(DD0$, "-.") > 0 Then err1$ = "-.": Exit Sub
         If InStr(DD0$, "*.") > 0 Then err1$ = "*.": Exit Sub
         If InStr(DD0$, "/.") > 0 Then err1$ = "/.": Exit Sub
     '    End If
    
    
    DD1$ = DD0$
    Do:  ni = InStr(DD1$, "��"):
         If ni = 0 Then Exit Do
         D1$ = Mid$(DD1$, 1, ni - 1):   D2$ = Mid(DD1$, ni + 1)
         DD1$ = D1$ + "SQR" + D2$
         Loop
    
    'If �d��_����ck$ = "Y" Then
         DD1$ = UCase(DD1$)
          Moj_n = Len(DD1$)
          For ii = 1 To Moj_n
              Moj_1$ = Mid$(DD1$, ii, 1)
              Select Case Moj_1$
              Case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0"
              Case "."
              Case "+", "-", "*", "/", "^"
              Case "(", ")"
              Case "A"
                       Moj_3$ = Mid(DD1$, ii, 4)
                       Select Case Moj_3$
                       Case "ATN(": ii = ii + 2
                       Case Else:  err1$ = Moj_1$: Exit Sub
                       End Select
              Case "C"
                       Moj_3$ = Mid(DD1$, ii, 4)
                       Select Case Moj_3$
                       Case "COS(": ii = ii + 2
                       Case Else:  err1$ = Moj_1$: Exit Sub
                       End Select
              Case "E":  ' OK �Ƃ���
              Case "S"
                       Moj_3$ = Mid(DD1$, ii, 4)
                       Select Case Moj_3$
                       Case "SQR(": ii = ii + 2
                       Case "SIN(": ii = ii + 2
                       Case Else:  err1$ = Moj_1$: Exit Sub
                       End Select
              Case "T"
                       Moj_3$ = Mid(DD1$, ii, 4)
                       Select Case Moj_3$
                       Case "TAN(": ii = ii + 2
                       Case Else:  err1$ = Moj_1$: Exit Sub
                       End Select
              Case Else: err1$ = Moj_1$: Exit Sub
              End Select
              Next ii
    
    
    
       '  End If
    
   ' If Lbl_�p�x.Caption = "�x" Then
        
        '[[[ sin  ]]]
        START_ni = 1
        Do:  ni = InStr(START_ni, DD1$, "SIN"):   If ni = 0 Then Exit Do
            START_ni = ni + 3: Moj_n = Len(DD1$):  Sii = 1: ni3 = 0
            For ii = ni + 4 To Moj_n
                Moj_1$ = Mid$(DD1$, ii, 1)
                Select Case Moj_1$
                Case "(":  Sii = Sii + 1
                Case ")": Sii = Sii - 1
                         If Sii = 0 Then ni3 = ii: Exit For
                Case Else:
                End Select
                Next ii
               If ni3 = 0 Then err1$ = " sin(  ) ���� ": Exit Sub
               D1$ = Mid$(DD1$, 1, ni + 3):
               D2$ = Mid$(DD1$, ni + 4, ni3 - ni - 4)
               D3$ = Mid(DD1$, ni3)
               DD1$ = D1$ + "(" + D2$ + ")*3.14159265358979/180" + D3$
          Loop
        
        '[[[ cos  ]]]
        START_ni = 1
        Do:  ni = InStr(START_ni, DD1$, "COS"):   If ni = 0 Then Exit Do
            START_ni = ni + 3: Moj_n = Len(DD1$):  Sii = 1: ni3 = 0
            For ii = ni + 4 To Moj_n
                Moj_1$ = Mid$(DD1$, ii, 1)
                Select Case Moj_1$
                Case "(":  Sii = Sii + 1
                Case ")": Sii = Sii - 1
                         If Sii = 0 Then ni3 = ii: Exit For
                Case Else:
                End Select
                Next ii
               If ni3 = 0 Then err1$ = " cos(  ) ���� ": Exit Sub
               D1$ = Mid$(DD1$, 1, ni + 3):
               D2$ = Mid$(DD1$, ni + 4, ni3 - ni - 4)
               D3$ = Mid(DD1$, ni3)
               DD1$ = D1$ + "(" + D2$ + ")*3.14159265358979/180" + D3$
          Loop
        
        '[[[ tan  ]]]
        START_ni = 1
        Do:  ni = InStr(START_ni, DD1$, "TAN"):   If ni = 0 Then Exit Do
            START_ni = ni + 3: Moj_n = Len(DD1$):  Sii = 1: ni3 = 0
            For ii = ni + 4 To Moj_n
                Moj_1$ = Mid$(DD1$, ii, 1)
                Select Case Moj_1$
                Case "(":  Sii = Sii + 1
                Case ")": Sii = Sii - 1
                         If Sii = 0 Then ni3 = ii: Exit For
                Case Else:
                End Select
                Next ii
               If ni3 = 0 Then err1$ = " tan(  ) ���� ": Exit Sub
               D1$ = Mid$(DD1$, 1, ni + 3):
               D2$ = Mid$(DD1$, ni + 4, ni3 - ni - 4)
               D3$ = Mid(DD1$, ni3)
               DD1$ = D1$ + "(" + D2$ + ")*3.14159265358979/180" + D3$
          Loop
        
       ' End If
    
    '******** �v�Z  ******************************************
    On Error GoTo Scripterr1
    dblResult = objScriptControl.Eval(DD1$)
    On Error GoTo 0
    '*********************************************************
    
    
    ' �v�Z���ʂ�\��
    'Select Case �����_����
    'Case Is < 0: �v�Z_����$ = Str(dblResult)
    'Case 0
    '            �v�Z_����$ = Format(dblResult, "##0")
    'Case Else:
    '            ����Format$ = "###0." + Mid("0000000000000000", 1, �����_����)
    '            �v�Z_����$ = Format(dblResult, ����Format$)
    'End Select

    ' With Clipboard
    '       .Clear
    '       .SetText �v�Z_����$:  '
    '       End With
    
    '����$ = �v�Z_����$
    
    Exit Sub
    
Scripterr1:
    err1$ = " (  " + Error$ + " ) "
    Resume 100: ' NEXT �͂���
    
100: ' Call �\��ERR(ERR1$)
     �v�Z_����$ = " �EError " + err1$ + " ���L��"
    On Error GoTo 0
    
    End Sub

Sub calu2(ByVal Cda As String, ByRef Scda As Variant, ByRef er1 As String)
    ' ���r��p 2003.9.1
    '  +  �̂ݍl��
    Dim ii As Integer, ni As Integer, Ds(200) As String, Di(200) As Variant
    er1 = F_����ck0s(Cda): If er1 <> "" Then Scda = 99999: Exit Sub
    Scda = 0: er1 = ""
    Call Ddata("+", Cda, Ds(), Di(), ni)
    For ii = 1 To ni
    Scda = Scda + Di(ii)
       Next ii
    
    End Sub

Sub calu(Cda$, Scda, er1$)
    Dim dblResult As Double
    
    Call �v�Z����(Cda$, dblResult, er1$)
    
    Scda = dblResult
    Select Case er1$
    Case "": If Abs(Val(Cda$) - Scda) > 0.000001 Then Cda$ = Cda$ + "=" + f3(Scda)
    Case Else:
            If InStr(Cda$, "O") > 0 Then er1$ = er1$ + " ( O ��) ���L�� "
            If InStr(Cda$, ",") > 0 Then er1$ = er1$ + " ( , ���) ���L�� "
            er1$ = er1$ + " �v�Z�� �װ"
    End Select
            
    End Sub

Function F_�덷(���l, �L����)
    ' Abs(���l) < �L����(�����_�ȉ�)  �̏ꍇ O �Ƃ���
    �ۂ� = 10 ^ �L����
    XXX0 = ���l:  XXX = 1: If ���l < 0 Then XXX = -1: XXX0 = -���l
    F_�덷 = XXX * Int(XXX0 * �ۂ�) / �ۂ�
    End Function

'======================================================================================================================
'======================================================================================================================
Sub CALU����(���l(), ����(), n, ���lmax, ���lmin, e$)
'======================================================================================================================
    ' n�� Data
    ' ���l���������ɏ��Ԃ�t����  ���lmax, ���lmin
    ' ����(i)   i�Ԗڂ̐��̏���    ���l(����(3)) 3�Ԗڂɒl�������l
    
    ReDim ����(n + 1)
    e$ = "": ���lmax = ���l(1): ���lmin = ���l(1)
    For i = 1 To n: ���� = 1
    For j = 1 To n
       Select Case ���l(i) - ���l(j)
       Case Is > 0: ���� = ���� + 1
       Case 0: If i > j Then ���� = ���� + 1
       Case Else
       End Select
       Next j
       If ���� = 0 Then e$ = "���� = 0"
       ����(����) = i
    Next i
    ���lmin = ���l(����(1)): ���lmax = ���l(����(n))
    
    End Sub

'======================================================================================================================
Sub CALUAB(X1, Y1, X2, Y2, l, a, b)
    '2�_��ʂ�֐��ɐ����� L �ړ���������  Y=A*X+B �� A��B���v�Z
    ' (X1,Y1),(X2,Y2)�̕������l��  L>0 �����̐i�s�����̍��Ɉړ�
    If X2 = X1 Then a = 0: b = 0: Exit Sub
    c = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): D = X2 - X1: H = l * c / D
    a = (Y2 - Y1) / (X2 - X1): b = Y1 - a * X1 + H
    End Sub
Sub CALUABD(X1, Y1, X2, Y2, l, a, b)
    '2�_��ʂ�֐��ɐ����� L �ړ���������  Y=A*X+B �� A��B���v�Z
    ' (X1,Y1),(X2,Y2)�̕������l�����Ȃ� L>0 �����̐�΍��W�̏�Ɉړ�
    If X2 = X1 Then a = 0: b = 0: Exit Sub
    c = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): D = X2 - X1: H = l * c / Abs(D)
    a = (Y2 - Y1) / (X2 - X1): b = Y1 - a * X1 + H
    End Sub
Sub CALUAB1(X1, Y1, X2, Y2, a, b)
    '2�_�̒��c��ʂ�2�_��ʂ钼���ɐ����Ȓ���  Y=A*X+B �� A��B���v�Z
    If Y1 = Y2 Then a = 0: b = 0: Exit Sub: 'X=(X1+X2)/2
    
    X0 = (X1 + X2) / 2: Y0 = (Y1 + Y2) / 2
    a = -(X2 - X1) / (Y2 - Y1): b = Y0 - a * X0
    End Sub
Sub CALUAB����(X1, Y1, X2, Y2, X3, Y3, a, b)
    '2�_(X1,Y1),(X2,Y2)�ɐ����� �_(X3,Y3)��ʂ钼��  Y=A*X+B �� A��B���v�Z
    If Y1 = Y2 Then a = 0: b = 0: Exit Sub: 'X=(X1+X2)/2
    Call CALUAB1(X1, Y1, X2, Y2, a, b)
    b = Y3 - a * X3
    End Sub
Sub CALUAB2���p(X0, Y0, X1, Y1, X2, Y2, a, b)
    '�_(X0,Y0)����2�_(X1,Y1),(X2,Y2)�ʂ钼���̊p�x��2���������p�x�� �_(X0,Y0)��ʂ钼��  Y=A*X+B �� A��B���v�Z
    Call calu�p�x1(X0, Y0, X1, Y1, r1)
    Call calu�p�x1(X0, Y0, X2, Y2, r2)
    a = (r1 + r2) / 2
    If a = 90 Or a = 180 Then a = 0: b = 0: Exit Sub
    a = Tan(3.1415927 * a / 180)
    b = Y0 - a * X0
    End Sub
'======================================================================================================================
Sub CALUCIR3(X1, Y1, X2, Y2, X3, Y3, X0, Y0, r, r1, r3)
    '97_9_12
    '3�_��ʂ�~�̒��c(X0,Y0), ���a(r),    �J�n�p(r1), �I�n�p(r3) �̌v�Z
    ' �ʒu                (X2,Y2)�͒��ԓ_
    '            (X1,Y1)              (X3,Y3)
    '
    ' R=0 �ʹװ
    
    If X1 = X2 And X2 = X3 Then X0 = X1: Y0 = X1: r = 0: r1 = 0: r3 = 0: Exit Sub
    If Y1 = Y2 And Y2 = Y3 Then X0 = X1: Y0 = X1: r = 0: r1 = 0: r3 = 0: Exit Sub
    Select Case Y3 - Y1
    Case 0:
            Call CALUAB1(X1, Y1, X2, Y2, a2, B2)
            X0 = (X1 + X3) / 2: Y0 = a2 * X0 + B2
    Case Else:
            Call CALUAB1(X1, Y1, X3, Y3, a1, B1)
            If Y1 = Y2 Then
               X0 = (X1 + X2) / 2: Y0 = a1 * X0 + B1
               Else
               Call CALUAB1(X1, Y1, X2, Y2, a2, B2)
               Call CALUP1(a1, B1, a2, B2, X0, Y0)
               End If
    End Select
    r = Sqr((X1 - X0) ^ 2 + (Y1 - Y0) ^ 2)
    Call calu�p�x1(X0, Y0, X1, Y1, r1)
    Call calu�p�x1(X0, Y0, X2, Y2, r2)
    Call calu�p�x1(X0, Y0, X3, Y3, r3)
    
    
    Select Case r3 - r1
    Case Is > 0: If r2 >= r1 And r2 < r3 Then BB = 1 Else BB = -1
    Case O: BB = 0
    Case Is < 0: If r2 >= r3 And r2 < r1 Then BB = -1 Else BB = 1
    End Select
    
    If BB < 0 Then r5 = r3: r3 = r1: r1 = r5
    End Sub
Sub calu�p�x1(X1, Y1, X2, Y2, D)
    '97_9_12
    '(X1,Y1),(X2,Y2) �Ԃ̊p�x(D��)���v�Z    0�� D <360
    D = Calu�p�x(X1, Y1, X2, Y2)
    End Sub
Sub calu�ډ~���S1(X1, Y1, X2, Y2, X3, Y3, r, X0, Y0, X4, Y4, X5, Y5, r4, r5)
    '97_9_12
    '�_1-2��ʂ钼�� �� �_3-4��ʂ钼���ɔ��a(r)�Őڂ��� �~�̒��c(X0,Y0)�� �ړ_(X4,Y4),(X5,Y5)�����߂�
    '
    '         1      (4)   2
    '
    '                     (5)
    '
    '                      3
    '
    CASE12 = 0
    If Y1 = Y2 Then CASE12 = 1
    If X1 = X2 Then CASE12 = 2

    Select Case CASE12
    
    Case 1:
        Y0 = Y1 + r: If Y1 > Y3 Then Y0 = Y1 - r
        CaseNo = 0
        If Y2 = Y3 Then CaseNo = 1
        If X2 = X3 Then CaseNo = 2
        
        Select Case CaseNo
        Case 1: X0 = X2: Y0 = Y2: er ("System  SUB calu�ډ~���S1  "):  If ����CK > 99 Then Stop
        Case 2: X0 = X2 + r: If X1 < X2 Then X0 = X2 - r
        Case Else: RD = r: If X1 < X2 Then RD = -r
                Call CALUABD(X2, Y2, X3, Y3, RD, A23, B23)
                X0 = (Y0 - B23) / A23
        End Select
    
    Case 2:
        X0 = X1 + r: If X1 > X3 Then X0 = X1 - r
        CaseNo = 0
        If Y2 = Y3 Then CaseNo = 1
        If X2 = X3 Then CaseNo = 2
        
        Select Case CaseNo
        Case 1: Y0 = Y2 + r: If Y1 < Y2 Then Y0 = Y2 - r
        Case 2: X0 = X2: Y0 = Y2: er ("System  SUB calu�ډ~���S1  "): If ����CK > 99 Then Stop:  'Else ��er = "*": Exit Sub
        Case Else: RD = r: If Y1 < Y2 Then RD = -r
                Call CALUABD(X2, Y2, X3, Y3, RD, A23, B23)
                Y0 = A23 * X0 + B23
        End Select
        
    Case Else
        Call CALUABD(X1, Y1, X2, Y2, 0, A12, B12)
        RD1 = r: If Y3 < A12 * X3 + B12 Then RD1 = -r
        Call CALUABD(X1, Y1, X2, Y2, RD1, A12, B12)
        
        CaseNo = 0
        If Y2 = Y3 Then CaseNo = 1
        If X2 = X3 Then CaseNo = 2
        
        Select Case CaseNo
        Case 1: Y0 = Y2 + r: If Y1 < Y2 Then Y0 = Y2 - r
                X0 = (Y0 - B12) / A12
        
        Case 2: X0 = X2 + r: If X1 < X2 Then X0 = X2 - r
                Y0 = A12 * X0 + B12
        Case Else:
                Call CALUABD(X2, Y2, X3, Y3, 0, A23, B23)
                RD2 = r: If Y1 < A23 * X1 + B23 Then RD2 = -r
                Call CALUABD(X2, Y2, X3, Y3, RD2, A23, B23)
                Call CALUP1(A12, B12, A23, B23, X0, Y0)
        End Select
        
    End Select
    Call CALUP���_(X1, Y1, X2, Y2, X0, Y0, X4, Y4)
    Call CALUP���_(X2, Y2, X3, Y3, X0, Y0, X5, Y5)
    
    Call calu�p�x1(X0, Y0, X4, Y4, r4)
    Call calu�p�x1(X0, Y0, X5, Y5, r5)
    Call calu�p�x1(X0, Y0, X2, Y2, r2)
    
    Select Case r5 - r4
    Case Is > 0: If r2 >= r4 And r2 < r5 Then BB = 1 Else BB = -1
    Case O: BB = 0
    Case Is < 0: If r2 >= r5 And r2 < r4 Then BB = -1 Else BB = 1
    End Select
    
    If BB < 0 Then r7 = r5: r5 = r4: r4 = r7
    
    End Sub
'======================================================================================================================
Sub CALU��_AB(a, b, X1, Y1, X2, Y2, X3, Y3, er1)
    ' ʯ���p
    '����  Y=A*X+B  ����(X1,Y1),(X2,Y2) �̌�_(X3,Y3)�����߂�
    ' ER1=-1 ��_�Ȃ�
    ' ER1=0 �������Ɍ�_�Ȃ�
    er1 = 0
    If X1 = X2 Then CaseNo = 1
    If Y1 = Y2 Then CaseNo = 2
    
    Select Case CaseNo
    Case 1:    ' X1=X2
               X3 = X1: Y3 = a * X3 + b
               j1 = Y1: j2 = Y2: If Y1 > Y2 Then j1 = Y2: j2 = Y1
               If j1 <= Y3 And Y3 <= j2 Then er1 = 1
    
    Case 2:    ' Y1=Y2
               If a = 0 Then
               Y3 = b: X3 = 0: er1 = -1: ' X3����ư
               Else
               Y3 = Y1: X3 = (Y3 - b) / a
               j1 = X1: j2 = X2: If X1 > X2 Then j1 = X2: j2 = X1
               If j1 <= X3 And X3 <= j2 Then er1 = 1
               End If
    
    Case Else: Call CALUABD(X1, Y1, X2, Y2, 0, a2, B2)
               Call CALUP1(a, b, a2, B2, X3, Y3)
               
               jX1 = X1: jX2 = X2: If X1 > X2 Then jX1 = X2: jX2 = X1
               If jX1 <= X3 And X3 <= jX2 Then er1 = 1
    End Select
    
    If X2 = X3 And Y2 = Y3 Then er1 = 0
    End Sub


Function CALU��_X(Y, X1, Y1, X2, Y2)
    '�_(X1,Y1),(X2,Y2)��ʂ钼�� ��  Y���W�̌�_�����߂�
    If Y1 = Y2 Then CALU��_X = -999990: Exit Function
    Select Case X2 - X1
    Case 0: CALU��_X = X1
    Case Else: a = (Y2 - Y1) / (X2 - X1): b = Y1 - a * X1: CALU��_X = (Y - b) / a
    End Select
    
    End Function


Sub CALU��_XY(a, X1, Y1, X2, Y2, X3, Y3, er1)
    ' ʯ���p
    '����  X=A  ����(X1,Y1),(X2,Y2) �̌�_(X3,Y3)�����߂�
    ' ER1=-1 ��_�Ȃ�
    ' ER1=0 �������Ɍ�_�Ȃ�
    er1 = 0
    If X1 = X2 Then CaseNo = 1
    If Y1 = Y2 Then CaseNo = 2
    
    X3 = a
    Select Case CaseNo
    Case 1:    ' X1=X2
               Y3 = 0: er1 = -1: ' Y3����ư
    
    Case 2:    ' Y1=Y2
               Y3 = Y1
               j1 = X1: j2 = X2: If X1 > X2 Then j1 = X2: j2 = X1
               If j1 <= X3 And X3 <= j2 Then er1 = 1
    
    Case Else: Call CALUABD(X1, Y1, X2, Y2, 0, a2, B2)
               Y3 = a2 * X3 + B2
               j1 = X1: j2 = X2: If X1 > X2 Then j1 = X2: j2 = X1
               If j1 <= X3 And X3 <= j2 Then er1 = 1
    End Select
    
    If X2 = X3 And Y2 = Y3 Then er1 = 0
       
    End Sub
Sub CALUP1(a1, B1, a2, B2, X, Y)
    '����  Y=A1*X+B1 �� Y=A2*X+B2 �̌�_�v�Z
    If a1 = a2 Then X = 0: Y = 0: Exit Sub
       
    X = -(B1 - B2) / (a1 - a2):  Y = a1 * X + B1
    End Sub
Sub CALUP2(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X0, Y0, JA, e$)
    ' ����(X1,Y1),(X2,Y2) �� ����(X3,Y3),(X4,Y4) �̌�_(X0,Y0)�����߂�
    'JA=-1 ��_����
    'JA=0 ����(X1,Y1),(X2,Y2) �O�ł܂������Ă���
    'JA=1 ����(X1,Y1),(X2,Y2) ���ł܂������Ă���
    'JA=2 ����(X3,Y3),(X4,Y4) ���ł܂������Ă���
    'JA=3 ��������_���Ă���
    JA = -1: e$ = "": X0 = -99999: Y0 = -99999
    a1 = 0: B1 = 0: C1 = 0: a2 = 0: B2 = 0: C2 = 0
    '2�_X(1),Y(1),X(2),Y(2)��ʂ�֐�  Y0=A1*X0+B1  A1��B1���v�Z
       If X1 <> X2 Then Call CALUAB(X1, Y1, X2, Y2, 0, a1, B1): C1 = 1

    '2�_X(3),Y(3),X(4),Y(4)��ʂ�֐�  Y0=A2*X0+B2  A2��B2���v�Z
       If X3 <> X4 Then Call CALUAB(X3, Y3, X4, Y4, 0, a2, B2): C2 = 1
    Select Case C1 + C2
    Case 0: e$ = "��_������": Exit Sub
    Case 1: If C1 = 0 Then X0 = X1: Y0 = a2 * X0 + B2
            If C2 = 0 Then X0 = X3: Y0 = a1 * X0 + B1
    Case 2: If B1 = B2 Then e$ = "��_������": Exit Sub
            If Y3 = Y4 Then
            If a1 = a2 Then X0 = 0 Else X0 = -(B1 - B2) / (a1 - a2): '***************************** 2001.5.17
            Y0 = Y3
            Else
            Call CALUP1(a1, B1, a2, B2, X0, Y0)
            End If
    End Select
    JA = 0
    X1J = X1: X2J = X2: If X1 > X2 Then X1J = X2: X2J = X1
    Y1J = Y1: Y2J = Y2: If Y1 > Y2 Then Y1J = Y2: Y2J = Y1
    If X0 >= X1J And X0 <= X2J And Y0 >= Y1J And Y0 <= Y2J Then JA = 1
    
    X3J = X3: X4J = X4: If X3 > X4 Then X3J = X4: X4J = X3
    Y3J = Y3: Y4J = Y4: If Y3 > Y4 Then Y3J = Y4: Y4J = Y3
    If X0 >= X3J And X0 <= X4J And Y0 >= Y3J And Y0 <= Y4J Then JA = JA + 2
     'Stop
    End Sub
Sub CALUP3(X1, Y1, X2, Y2, X3, Y3, D1, D2, X0, Y0, JA)
    ' 96_11_13
    ' JA �g�p���Ă��Ȃ�
    '�_1-2��ʂ钼��+D1 �� �_2-3��ʂ钼��+D2  �̌�_�����߂�
    '2�_X1,Y1,X2,Y2��ʂ�֐�  Y0=A1*X0+B1  A1��B1���v�Z
       If X1 = X2 Then C1 = 0 Else C1 = 1: Call CALUAB(X1, Y1, X2, Y2, D1, a1, B1)
    '2�_X2,Y2,X3,Y3��ʂ�֐�  Y0=A2*X0+B2  A2��B2���v�Z
       If X2 = X3 Then C2 = 0 Else C2 = 1: Call CALUAB(X2, Y2, X3, Y3, D2, a2, B2)
    Select Case C1 + C2
    Case 0: X0 = X2 - (D1 + D2) / 2: Y0 = Y2: If Y1 > Y3 Then X0 = X2 + (D1 + D2) / 2
    Case 1:
            If C1 = 0 Then
               X0 = X2 - D1: If Y1 > Y2 Then X0 = X2 + D1: '*ck  96_11_19
               Y0 = a2 * X0 + B2
               End If
            If C2 = 0 Then
               X0 = X2 - D2: If Y2 > Y3 Then X0 = X2 + D2
               Y0 = a1 * X0 + B1
               End If
    Case 2:
            If Y1 = Y2 And Y2 = Y3 Then
               X0 = X2: Y0 = Y2 + (D1 + D2) / 2
               Else
               Call CALUP1(a1, B1, a2, B2, X0, Y0)
               End If
    End Select
    End Sub
Sub CALU_P4(X1, Y1, X2, Y2, X3, Y3, X4, Y4, D1, D2, X0, Y0, JA, e$)
    ' H10_2_18
    ' JA=-1   ��_����
    '�_(X1,Y1),(X2,Y2)��ʂ钼��+D1 �� �_(X3,Y3),(X4,Y4)��ʂ钼��+D2  �̌�_�����߂�
    e$ = "": JA = 0
    '2�_X1,Y1,X2,Y2��ʂ�֐�  Y0=A1*X0+B1  A1��B1���v�Z
       If X1 = X2 Then C1 = 0 Else C1 = 1: Call CALUAB(X1, Y1, X2, Y2, D1, a1, B1)
    '2�_X3,Y3,X4,Y4��ʂ�֐�  Y0=A2*X0+B2  A2��B2���v�Z
       If X3 = X4 Then C2 = 0 Else C2 = 1: Call CALUAB(X3, Y3, X4, Y4, D2, a2, B2)
    
    Select Case C1 + C2
    Case 0: JA = -1: e$ = "X=���Ō�_����": Exit Sub
    Case 1:
            If C1 = 0 Then
               X0 = X1 - D1:  If Y1 > Y2 Then X0 = X1 + D1: '*ck  96_11_19
               Y0 = a2 * X0 + B2
               End If
            If C2 = 0 Then
               X0 = X3 - D2: If Y3 > Y4 Then X0 = X3 + D2
               Y0 = a1 * X0 + B1
               End If
    Case 2:
            If a1 = 0 And a2 = 0 Then JA = -1: e$ = "Y=���Ō�_����": Exit Sub
            Call CALUP1(a1, B1, a2, B2, X0, Y0)
    End Select
    End Sub
Sub CALUPD1(X1, Y1, X2, Y2, D1, X, Y)
    '96_10_24
    '�_1-2��ʂ钼���� �_1 ���璼�p�� D1 ���ꂽ�_�����߂�
    ' D1>0 �_1-2��ʂ钼���ɑ΂��Ď��v��肪 +
    
    If Y1 = Y2 Then
       X = X1: Y = Y1 + D1: If X1 > X2 Then Y = Y1 - D1
       Else
       If X1 = X2 Then
          Y = Y1: X = X1 - D1: If Y1 > Y2 Then X = X1 + D1
          Else
          SSS = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): SN = (Y2 - Y1) / SSS: CS = (X2 - X1) / SSS
          DX = -SN * D1: DY = CS * D1
          X = X1 + DX: Y = Y1 + DY
          End If
       End If
   End Sub
Sub CALUP���_(X1, Y1, X2, Y2, X3, Y3, X4, Y4)
    '97_9_12
    '�_1-2��ʂ钼���� �_3 ���琂���̌�_(X4,Y4)�����߂�
    If Y1 = Y2 Then X4 = X3: Y4 = Y1: Exit Sub: ' Y=���
    If X1 = X2 Then X4 = X1: Y4 = Y3: Exit Sub: ' X=���
    Call CALUAB(X1, Y1, X2, Y2, 0, a1, B1)
    Call CALUP����(X1, Y1, X2, Y2, X3, Y3, a2, B2)
    Call CALUP1(a1, B1, a2, B2, X4, Y4)
    End Sub
Sub CALUP����(X1, Y1, X2, Y2, X3, Y3, a, b)
    '97_9_12
    '�_1-2��ʂ钼���� �_3��ʂ鐂��   Y=A*X+B �� A,B�����߂�
    If Y1 = Y2 Then a = X3: b = 0: Exit Sub:  '  X=A �̒���
    If X1 = X2 Then a = 0: b = Y3: Exit Sub:  ' Y=B �̒���
    Call CALUAB(X1, Y1, X2, Y2, 0, a1, B1)
    a = -1 / a1: b = Y3 - a * X3
    End Sub
Function CALU_�_�ʒu(X0, Y0, X9, Y9, X1, Y1)
    ' H10.2.18
    ' �_(X1,Y1)�� ����(X0,Y0),(X9,Y9)�̍����� �E�������𔻒f
    ' ���f$=�� or �E or �� �x�N�g�������̑΂���
    �_X = X1: �_Y = Y1
    �p�x = -Calu�p�x(X0, Y0, X9, Y9)
       'LLL = Sqr((X1 - X0) ^ 2 + (Y1 - Y0) ^ 2)
    Call ���W��](X0, Y0, �p�x, �_X, �_Y)
    Select Case �_Y - Y0
    Case Is > 0: CALU_�_�ʒu = "��"
    Case 0: CALU_�_�ʒu = "��"
    Case Is < 0: CALU_�_�ʒu = "�E"
    End Select
    End Function
Sub CALU_�������W(X(), Y(), D(), X1(), Y1(), ni)
    '98_2_2
    ' X,Y  ����D���ꂽ�_�̍��W�����߂�
    ' ni �_�̐�
    ' X(i),Y(i)   D(i)
    
    If ni < 2 Then er ("* CALU_�������W  n < 2 "): Exit Sub
    If ni > 1000 Then er ("* CALU_�������W  n > 1000 "): Exit Sub
    Call CALUPD1(X(1), Y(1), X(2), Y(2), D(1), X1(1), Y1(1))
    Call CALUPD1(X(ni), Y(ni), X(ni - 1), Y(ni - 1), -D(ni - 1), X1(ni), Y1(ni))
                         
    If ni >= 3 Then
        For i = 2 To ni - 1: Call CALUP3(X(i - 1), Y(i - 1), X(i), Y(i), X(i + 1), Y(i + 1), D(i - 1), D(i), X1(i), Y1(i), JA): Next i
        End If
                         
    End Sub
Sub CALU_�g��_(X1, Y1, X2, Y2, XL1, XL2, YL1, YL2, X3, Y3, e$)
      ' (X1,Y1) �� (X2,Y2) �����񂾒����Ƙg�Ƃ̌�_���v�Z
      ' (X1,Y1)  �g���_
      ' (X2,Y2)  �g�O�_
      ' (X3,Y3)    (X1,Y1) �� (X2,Y2) �����񂾒����Ƙg�Ƃ̌�_
               
      '
      '  2��������������������1     YL2
      '   ���@�@�@�@�@�@�@�@��
      '   ���@�@�@�@�@�@�@�@��
      '  3��������������������4     YL1
      '   XL1              XL2
      '
      '
         X3 = X2: Y3 = Y2: e$ = ""
         If XL1 < X2 And X2 < XL2 Then If YL1 < Y2 And Y2 < YL2 Then Exit Sub:  'e$ = "(X2,Y2)���g���_"
         If X1 < XL1 Or XL2 < X1 Then e$ = "(X1,Y1)�� X�g�O�_": Exit Sub
         If Y1 < YL1 Or YL2 < Y1 Then e$ = "(X1,Y1)�� Y�g�O�_": Exit Sub
         
         If X1 = X2 Then
              X3 = X1: If Y2 <= YL1 Then Y3 = YL1
                       If Y2 >= YL2 Then Y3 = YL2
              Exit Sub
              End If
         If Y1 = Y2 Then
              Y3 = Y1: If X2 <= XL1 Then X3 = XL1
                       If X2 >= XL2 Then X3 = XL2
              Exit Sub
              End If
         
         
         
         Call CALUP2(X1, Y1, X2, Y2, XL1, YL1, XL1, YL2, X0, Y0, JA, e$): ' 2---3
         If JA = 3 Then X3 = X0: Y3 = Y0: Exit Sub
         Call CALUP2(X1, Y1, X2, Y2, XL1, YL2, XL2, YL2, X0, Y0, JA, e$): ' 1---2
         If JA = 3 Then X3 = X0: Y3 = Y0: Exit Sub
         
         Call CALUP2(X1, Y1, X2, Y2, XL2, YL1, XL2, YL2, X0, Y0, JA, e$): ' 1---4
         If JA = 3 Then X3 = X0: Y3 = Y0: Exit Sub
         
         Call CALUP2(X1, Y1, X2, Y2, XL1, YL1, XL2, YL1, X0, Y0, JA, e$): ' 3---4
         If JA = 3 Then X3 = X0: Y3 = Y0: Exit Sub

         
         e$ = "��_������"
    End Sub



Sub CaluTH2(X0, Y0, SN, CS, X1, Y1)
    ' X0,Y0 �𒆐S�ɉ�]�������W�����߂�
    r = Sqr((X1 - X0) * (X1 - X0) + (Y1 - Y0) * (Y1 - Y0))
    SN1 = (Y1 - Y0) / r: CS1 = (X1 - X0) / r
    X1 = X0 + r * (CS1 * CS - SN1 * SN)
    Y1 = Y0 + r * (SN1 * CS + CS1 * SN)
    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��        �}�`�p�x                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
'======================================================================================================================
Function Calu�p�x(X1, Y1, X2, Y2)
    '97_9_20
    '���W(X1,Y1),(X2,Y2) �Ԃ̊p�x(D��)���v�Z    0�� D <360
    Select Case X2 - X1
    Case 0: If Y2 > Y1 Then D = 90 Else D = 270
            If Y2 = Y1 Then D = 0
    Case Else: a = (Y2 - Y1) / (X2 - X1): D = 180 * Atn(a) / 3.14159265358979
            If D < 0 Then D = 360 + D
            If X1 > X2 Then D = D + 180
            If D >= 360 Then D = D - 360
             D = Int(100000 * D + 0.5) / 100000
       ' If Y1 = Y2 Then D = 0
    End Select
    Calu�p�x = D
    If D > 360 Then er ("[Calu�p�x]  �p�x >360��"): Stop
    End Function


Function �p�x���K��(r)
    'r ��  0<= r <360 �ɏC������
    r1 = r
    If r1 < 0 Then
       Do: r1 = 360 + r1: If r1 >= 0 Then Exit Do
           Loop
       End If
    Do: If r1 < 360 Then Exit Do
        r1 = r1 - 360
        Loop
    �p�x���K�� = r1
    End Function
Function ��������p�x��(r)
    'r ��  0<= r <=90   270<= r <=360  �ɏC������
    r1 = �p�x���K��(r)
    Select Case r1
    Case Is <= 90:
    Case Is <= 270: r1 = �p�x���K��(r1 + 180)
    Case Else:
    End Select
    ��������p�x�� = r1
    End Function
Function rad(r)
    'r ��  0<= r <360 �ɏC������׼ޱ݂����߂�
    r1 = r
    If r1 < 0 Then
       Do: r1 = 360 + r1: If r1 >= 0 Then Exit Do
           Loop
       End If
    Do: If r1 < 360 Then Exit Do
        r1 = r1 - 360
        Loop
    rad = �� * r1 / 180
    End Function
Sub C_�O�p�֐�1(X1, Y1, X2, Y2, SN1, CS1, TAN1, RTAN1, l)
    ' RTAN1=1/TAN1
    SN1 = 0: CS1 = 0: TAN1 = 0: RTAN1 = 0
    l = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
    If l = 0 Then Exit Sub
    SN1 = (Y2 - Y1) / l
    CS1 = (X2 - X1) / l
    If X2 - X1 = 0 Then TAN1 = 9E+30 Else TAN1 = (Y2 - Y1) / (X2 - X1)
    If Y2 - Y1 = 0 Then RTAN1 = 9E+30 Else RTAN1 = (X2 - X1) / (Y2 - Y1)
    End Sub


Function Dsin(�p�x)
    D�p�x = �p�x���K��(�p�x)
    Select Case D�p�x
    Case 0, 180, -180: Dsin = 0
    Case 90, -270: Dsin = 1
    Case -90, 270: Dsin = -1
    Case Else:    Dsin = Sin(3.1415927 * D�p�x / 180)
    End Select
    End Function
Function Dcos(�p�x)
    D�p�x = �p�x���K��(�p�x)
    Select Case D�p�x
    Case 0: Dcos = 1
    Case 180, -180: Dcos = -1
    Case 90, -90, 270, -270: Dcos = 0
    Case Else:   Dcos = Cos(3.1415927 * D�p�x / 180)
    End Select
    End Function
Function Dtan(�p�x)
    D�p�x = �p�x���K��(�p�x)
    Dtan = Tan(3.1415927 * D�p�x / 180)
    End Function
Function C_SIN2(X1, Y1, X2, Y2)
    l = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
    If l = 0 Then C_SIN2 = 0: Exit Function
    C_SIN2 = (Y2 - Y1) / l
    End Function
Function C_COS2(X1, Y1, X2, Y2)
    l = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
    If l = 0 Then C_COS2 = 0: Exit Function
    C_COS2 = (X2 - X1) / l
    End Function
Function C_TAN2(X1, Y1, X2, Y2)
    If X2 - X1 = 0 Then C_TAN2 = 9E+30: Exit Function
    C_TAN2 = (Y2 - Y1) / (X2 - X1)
    End Function




'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��        ��Ԑ}�` (3D)  2002.5.28                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Function F_�O�ϕ��ʒ�`(cx, cy, CZ)
     '�O��_Vector(CX, CY, CZ) �ɂ�� �����ȕ��ʂ��`  XY  YZ  ZX
     CX1 = Abs(cx): CY1 = Abs(cy): CZ1 = Abs(CZ)
     Vector_Max = CX1: D1$ = "YZ"
     If Vector_Max <= CY1 Then Vector_Max = CY1: D1$ = "ZX"
     If Vector_Max <= CZ1 Then Vector_Max = CZ1: D1$ = "XY"
     F_�O�ϕ��ʒ�` = D1$
     End Function
Sub Calu_2�__Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
    ' 2�_�@A(XA1,YA1,ZA1) B(XB1,YB1,ZB1)  ��ʂ��޸��   AB(ABX,ABY,ABZ)�����߂�
     ABX = XB1 - XA1: ABY = YB1 - YA1: ABZ = ZB1 - ZA1
     End Sub

Sub Calu_2�_��ʂ�_����(XA1, YA1, ZA1, XB1, YB1, ZB1, LA1, LB1, LC1, LD1, LE1, LF1)
     '�@�_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)�@��ʂ�_������
     '
     '              | X | = | LA1 |    | LD1 |
     '  ����L1      | Y | = | LB1 | + t| LE1 |
     '              | Z | = | LC1 |    | LF1 |
     '
     LA1 = XA1: LB1 = YA1: LC1 = ZA1
     Call Calu_2�__Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, LD1, LE1, LF1)
     End Sub

Sub Calu_�O��_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
    ' Vector A(XA1,YA1,ZA1) B(XB1,YB1,ZB1) �̊O���޸��   C(CX,CY,CZ)�����߂�
     cx = YA1 * ZB1 - ZA1 * YB1:    cy = ZA1 * XB1 - XA1 * ZB1:    CZ = XA1 * YB1 - YA1 * XB1
     End Sub

Sub Calu_3�__�O��_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
    '�@�_P1(XP1,YP1,ZP1)���� �_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)   �޸��PA  �޸��PB �̊O���޸��   C(CX,CY,CZ)�����߂�
     Call Calu_2�__Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, PAX, PAY, PAZ)
     Call Calu_2�__Vector(Xp1, Yp1, Zp1, XB1, YB1, ZB1, PBX, PBY, PBZ)
    
     Call Calu_�O��_Vector(PAX, PAY, PAZ, PBX, PBY, PBZ, cx, cy, CZ)
     End Sub

Sub Calu_3�__���ʒ�`(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, a1, B1, C1, D1)
    'Calu_3�__���ʒ�`
    '�@�_P1(XP1,YP1,ZP1)���� �_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)   �޸��PA  �޸��PB ����镽�� Ax+By+Cy+D=0 �����߂�
    Call Calu_3�__�O��_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, a1, B1, C1)
    D1 = -(a1 * Xp1 + B1 * Yp1 + C1 * Zp1)
    End Sub


Sub Calu_Vector_����_��__���W(a1, B1, C1, D1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
    '�@���� Ax+By+Cy+D=0  �� 2�_�@A(XA1,YA1,ZA1) B(XB1,YB1,ZB1)  ��ʂ��޸��AB  �Ƃ̌�_�̍��W P1(Xp1,Yp1,Zp1) �����߂�
    Call Calu_2�__Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
         OO1 = a1 * ABX + B1 * ABY + C1 * ABZ
    If OO1 = 0 Then
         er ("*** System Calu_����_Vector_��_���W"): If ����CK > 99 Then Stop
         Xp1 = 999999999: Yp1 = 999999999: Zp1 = 999999999
         Else
         OO2 = a1 * XA1 + B1 * YA1 + C1 * ZA1 + D1
         OOt = -OO2 / OO1
         Xp1 = XA1 + ABX * OOt: Yp1 = YA1 + ABY * OOt: Zp1 = ZA1 + ABZ * OOt
         End If
    End Sub

Sub Calu_�__����_������_���W(Xp1, Yp1, Zp1, a1, B1, C1, D1, Xp2, Yp2, Zp2)
    '�@�_P1(Xp1,Yp1,Zp1)���� ���� Ax+By+Cy+D=0  �ɉ��낵���@�������̍��W P2(Xp2,Yp2,Zp2) �����߂�
    ' �޸��P1P2 (-A,-B,-C)  <---- �@���޸�� (A,B,C)
    ' �޸��OP2=�޸��OP1+�޸��P1P2
    HH = F_�__����_����(Xp1, Yp1, Zp1, a1, B1, C1, D1)
    LL = Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2)
    Select Case LL
    Case 0: Xp2 = Xp1: Yp2 = Yp1: Zp2 = Zp1
    Case Else:   kk = -HH / LL:    Xp2 = Xp1 + kk * a1: Yp2 = Yp1 + kk * B1: Zp2 = Zp1 + kk * C1
    End Select
    End Sub

Sub Calu_���ʂƕ���_���_Vector(a1, B1, C1, D1, a2, B2, C2, D2, cx, cy, CZ)
    ' ����1�ƕ���2�̌���� VectorC(CX,CY,CZ)�����߂�
    Call Calu_�O��_Vector(a1, B1, C1, a2, B2, C2, cx, cy, CZ)
    End Sub



Sub Calu_�_AB��_A�__����L_���W(L1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
    '�@�޸��AB �_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1) �����   �_A ���狗�� L1�̍��W �_P1(Xp1,Yp1,Zp1)�����߂�
    '
    Call Calu_2�__Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, a1, B1, C1)
    D1 = L1 * Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2) - (a1 * XA1 + B1 * YA1 + C1 * ZA1)
    Call Calu_Vector_����_��__���W(a1, B1, C1, D1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
 
    
    Call Calu_2�__Vector(XA1, YA1, ZA1, Xp1, Yp1, Zp1, AP1, BP1, CP1)
    If F_Vector_�p�x(a1, B1, C1, AP1, BP1, CP1) < 1 Then Exit Sub
 
    D1 = -L1 * Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2) - (a1 * XA1 + B1 * YA1 + C1 * ZA1)
    Call Calu_Vector_����_��__���W(a1, B1, C1, D1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
 
    End Sub


Function F_�_ABC_�ʐ�(XA1, YA1, ZA1, XB1, YB1, ZB1, XC1, YC1, ZC1)
    '3�_ABC A(XA1,YA1,ZA1), B(XB1,YB1,ZB1)�AC(XC1,YC1,ZC1) �ň͂܂ꂽ�ʐς̌v�Z
     Call Calu_2�__Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
     Call Calu_2�__Vector(XA1, YA1, ZA1, XC1, YC1, ZC1, ACX, ACY, ACZ)
     
     F_�_ABC_�ʐ� = Sqr((ABY * ACZ - ABZ * ACY) ^ 2 + (ABZ * ACX - ABX * ACZ) ^ 2 + (ABX * ACY - ABY * ACX) ^ 2) / 2
     End Function


Function F_�_AB��_����(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '2�_AB�� A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) �Ԃ̋������v�Z
     F_�_AB��_���� = Sqr((XB1 - XA1) ^ 2 + (YB1 - YA1) ^ 2 + (ZB1 - ZA1) ^ 2)
     F_�_AB��_���� = F_�덷(F_�_AB��_����, 9)
     End Function

Function F_�__����_����(Xp1, Yp1, Zp1, a1, B1, C1, D1)
    '�_ P1(Xp1,Yp1,Zp1) �ƕ��� Ax+By+Cy+D=0   �Ԃ̋������v�Z
    ' + - �L��
     OO1 = Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2)
     If OO1 = 0 Then F_�__����_���� = 0: Exit Function
     F_�__����_���� = (a1 * Xp1 + B1 * Yp1 + C1 * Zp1 + D1) / OO1
     End Function


Function F_Vector��_�˂��ꋗ��(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '2���޸�� A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) �Ԃ̂˂���ɂ�萶���鋗��
    '
    
    Stop
    
    End Function

Function F_3�__�p�x(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' �_P1(XP1,YP1,ZP1)���� �_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)   �޸��PA  �޸��PB �Ԃ̊p�x(�Ɓ�)���v�Z    0�� �� ��180
    Call Calu_2�__Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, PAX, PAY, PAZ)
    Call Calu_2�__Vector(Xp1, Yp1, Zp1, XB1, YB1, ZB1, PBX, PBY, PBZ)
    F_3�__�p�x = F_Vector_�p�x(PAX, PAY, PAZ, PBX, PBY, PBZ)
    End Function

Function F_3�__�p�x2(����$, Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' ����$   ""  "XY"  "YZ"  "ZX"    �p�x���v�Z��������
    ' �_P1(XP1,YP1,ZP1)���� �_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)   �޸��PA  �޸��PB �Ԃ̊p�x(�Ɓ�)���v�Z    0�� �� ��360  �����v���
    ' �p�x�́@�޸��PA ���� �޸��PB �ւ̊p�x �����v��� +
    Call Calu_2�__Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, PAX, PAY, PAZ)
    Call Calu_2�__Vector(Xp1, Yp1, Zp1, XB1, YB1, ZB1, PBX, PBY, PBZ)
    F_3�__�p�x2 = F_Vector_�p�x2(����$, PAX, PAY, PAZ, PBX, PBY, PBZ)
    End Function


Function F_Vector_�p�x(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '02_5_11
    '2���޸�� A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) �Ԃ̊p�x(�Ɓ�)���v�Z    0�� �� ��180
     AB = XA1 * XB1 + YA1 * YB1 + ZA1 * ZB1
     AA = Sqr(XA1 ^ 2 + YA1 ^ 2 + ZA1 ^ 2)
     BB = Sqr(XB1 ^ 2 + YB1 ^ 2 + ZB1 ^ 2)
     Select Case AA * BB
     Case 0: C�� = 0
     Case Else:
               COS�� = AB / (AA * BB)
               If COS�� > 1 Then COS�� = 1
               Select Case CSng(COS��)
               Case 0: C�� = 90
               Case 1: C�� = 0
               Case -1: C�� = 180
               Case Else:   Tan�� = Sqr(Abs(1 - COS�� ^ 2)) / COS��
                            C�� = 180 * Atn(Tan��) / 3.14159265358979
                  If C�� < 0 Then C�� = 180 + C��
               C�� = CSng(C��)
               End Select
     End Select
     F_Vector_�p�x = C��
     End Function

Function F_Vector_�p�x2(����$, XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' ����$   ""  "XY"  "YZ"  "ZX"    �p�x���v�Z��������
    ' 2���޸�� A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) �Ԃ̊p�x(�Ɓ�)���v�Z    0�� �� ��360  �����v���
    ' �p�x�́@�޸��PA ���� �޸��PB �ւ̊p�x �����v��� +
        
        C�� = F_Vector_�p�x(XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' �޸��A,�޸��B �̖@���޸�ق����
         Call Calu_�O��_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
     
     ����2$ = ����$:  If ����2$ = "" Then ����2$ = F_�O�ϕ��ʒ�`(cx, cy, CZ)
     Select Case ����2$
     Case "XY": If CZ < 0 Then C�� = 360 - C��
     Case "YZ": If cx < 0 Then C�� = 360 - C��
     Case "ZX": If cy > 0 Then C�� = 360 - C��
     Case Else: er ("*System F_Vector_�p�x2"): Stop
     End Select
     
     F_Vector_�p�x2 = C��
    ' Stop
     End Function

Function F_Vector_�J���p�x(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '2���޸�� A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) �Ԃ� �J���p�x(�Ɓ�)���v�Z    -90< �� ��90
     �J���p�x = F_Vector_�p�x(XA1, YA1, ZA1, XB1, YB1, ZB1)
     If �J���p�x > 90 Then �J���p�x = �J���p�x - 180
     F_Vector_�J���p�x = �J���p�x
     End Function

Function F_Vector_����_�p�x(Xp1, Yp1, Zp1, a1, B1, C1, D1)
    '�@���� Ax+By+Cy+D=0  �� �޸�� P(Xp1,Yp1,Zp1) �̊p�x(�Ɓ�)���v�Z    -90�� �� ��90
    '  D �͊֌W���Ȃ�
    H�� = F_Vector_�p�x(a1, B1, C1, Xp1, Yp1, Zp1)
    F_Vector_����_�p�x = 90 - H��
    End Function


Sub Calu_2����_Vector(XP0, YP0, ZP0, XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
    ' 3�_�@O(XP0,YP0,ZP0) A(XA1,YA1,ZA1) B(XB1,YB1,ZB1)   O���� �޸��0A,�޸��OB ��2�������� �޸��   OC(CX,CY,CZ)
     Call Calu_2�__Vector(XP0, YP0, ZP0, XA1, YA1, ZA1, AX1, AY1, AZ1)
     Call Calu_2�__Vector(XP0, YP0, ZP0, XB1, YB1, ZB1, BX1, BY1, BZ1)
     AL1 = Sqr(AX1 * AX1 + AY1 * AY1 + AZ1 * AZ1)
     BL1 = Sqr(BX1 * BX1 + BY1 * BY1 + BZ1 * BZ1)
     Select Case AL1 * BL1
     Case 0:     cx = 0:  cy = 0:     CZ = 0
     Case Else:     cx = AX1 / AL1 + BX1 / BL1:   cy = AY1 / AL1 + BY1 / BL1:     CZ = AZ1 / AL1 + BZ1 / BL1
     End Select
     End Sub

Sub Calu_�__����_������_���W(Xp1, Yp1, Zp1, a1, B1, C1, BX1, BY1, BZ1, Xp2, Yp2, Zp2)
    '�@�_P1(XP1,YP1,ZP1)���� ����AB�ɉ��낵�������̑��̍��WP2(XP2,YP2,ZP2)�����߂�
    '
    '              | X | = | A1 |    | BX1 |
    '  ����AB      | Y | = | B1 | + t| BY1 |
    '              | Z | = | C1 |    | BZ1 |
    '
    '  ���WP2 (a1+BX1*t,b1+BY1*t,c1+BZ1*t)
    '
     DD1 = BX1 * BX1 + BY1 * BY1 + BZ1 * BZ1: If DD1 = 0 Then Xp2 = Xp1: Yp2 = Yp1: Zp2 = Zp1: Exit Sub
     ����T = (-BX1 * a1 - BY1 * B1 - BZ1 * C1 + BX1 * Xp1 + BY1 * Yp1 + BZ1 * Zp1) / DD1
     Xp2 = a1 + BX1 * ����T: Yp2 = B1 + BY1 * ����T: Zp2 = C1 + BZ1 * ����T
     End Sub
Function F_�__����_������_����(Xp1, Yp1, Zp1, a1, B1, C1, BX1, BY1, BZ1)
    '�@�_P1(XP1,YP1,ZP1���� ����AB�ɉ��낵�������̑��̍��WP2(XP2,YP2,ZP2)�Ƃ̋��������߂�
    '
    '              | X | = | A1 |    | BX1 |
    '  ����AB      | Y | = | B1 | + t| BY1 |
    '              | Z | = | C1 |    | BZ1 |
    '
    '  ���WP2 (XP2,YP2,ZP2)
    '
'     Call Calu_�__������_���W(Xp1, Yp1, Zp1, A1, B1, C1, BX1, BY1, BZ1, Xp2, Yp2, Zp2)
     F_�__������_���� = Sqr((Xp2 - Xp1) ^ 2 + (Yp2 - Yp1) ^ 2 + (Zp2 - Zp1) ^ 2)
     End Function

Sub Calu_3�__������_���W_����(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp2, Yp2, Zp2, ������_����, ����$)
    '�@�_P1(XP1,YP1,ZP1)���� �_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)��ʂ钼���ɉ��낵�������̑��̍��WP2(XP2,YP2,ZP2)�����߂�
    '  ������_���� �����߂�
    '  ���������W��  ����$   *(A,B�͈͓̔�)   *A(A�_)    *B(B�_)     >A  >B�@(�͈͊O)
     Call Calu_2�__Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
     Call Calu_�__����_������_���W(Xp1, Yp1, Zp1, XA1, YA1, ZA1, ABX, ABY, ABZ, Xp2, Yp2, Zp2)
     ������_���� = Sqr((Xp2 - Xp1) ^ 2 + (Yp2 - Yp1) ^ 2 + (Zp2 - Zp1) ^ 2)
     
     LAB = Sqr((XB1 - XA1) ^ 2 + (YB1 - YA1) ^ 2 + (ZB1 - ZA1) ^ 2)
     LP2A = Sqr((Xp2 - XA1) ^ 2 + (Yp2 - YA1) ^ 2 + (Zp2 - ZA1) ^ 2)
     LP2B = Sqr((Xp2 - XB1) ^ 2 + (Yp2 - YB1) ^ 2 + (Zp2 - ZB1) ^ 2)
     LPmax = LP2A: �[��$ = "B": If LPmax < LP2B Then LPmax = LP2B: �[��$ = "A"
     Select Case LPmax
     Case LAB:      ����$ = "*" + �[��$
     Case Is < LAB: ����$ = "*"
     Case Else:     ����$ = ">" + �[��$
     End Select
     End Sub

Sub Calu_2�_����_2�_����_��__���W(����$, XA1, YA1, ZA1, XB1, YB1, ZB1, XC1, YC1, ZC1, XD1, YD1, ZD1, Xp1, Yp1, Zp1, �덷)
     '  ����$  XY  YZ  ZX   �v�Z�Ɏg�p���镽�ʂ̎w��i�ʂ̂˂�����l��)
     '�@�_A(XA1,YA1,ZA1),�_B(XB1,YB1,ZB1)�@��ʂ�_������
     '�@�_C(XC1,YC1,ZC1),�_D(XD1,YD1,ZD1)�@��ʂ�_������
     '�@2�����̌�_�̍��W(XP1,YP1,ZP1)�����߂�
     '
     ' �덷  ���ʂ̂˂���ɂ�� ���W�̌덷

     Call Calu_2�_��ʂ�_����(XA1, YA1, ZA1, XB1, YB1, ZB1, LA1, LB1, LC1, LD1, LE1, LF1)
     Call Calu_2�_��ʂ�_����(XC1, YC1, ZC1, XD1, YD1, ZD1, MA1, MB1, MC1, MD1, ME1, MF1)
     
     Call Calu_2������__���W(����$, LA1, LB1, LC1, LD1, LE1, LF1, MA1, MB1, MC1, MD1, ME1, MF1, Xp1, Yp1, Zp1, �덷)
     End Sub



Sub Calu_2������__���W(����$, LA1, LB1, LC1, LD1, LE1, LF1, MA1, MB1, MC1, MD1, ME1, MF1, Xp1, Yp1, Zp1, �덷)
     '  ����$  XY  YZ  ZX   �v�Z�Ɏg�p���镽�ʂ̎w��i�ʂ̂˂�����l��)
     '�@2�����̌�_�̍��W(XP1,YP1,ZP1)�����߂�   ZP2 �� ����M1��Z���W    ZP1<>ZP2 �͓��ꕽ�ʂłȂ�
     '
     '              | X | = | LA1 |    | LD1 |
     '  ����L1      | Y | = | LB1 | + t| LE1 |
     '              | Z | = | LC1 |    | LF1 |
     '
     '              | X | = | MA1 |    | MD1 |
     '  ����M1      | Y | = | MB1 | + s| ME1 |
     '              | Z | = | MC1 |    | MF1 |
     '
     ' X���W   LA1+LD1*t = MA1+MD1*s  (1)   a+d*t = A+D*s    s=(a+d*t-A)/D
     ' Y���W   LB1+LE1*t = MB1+ME1*s  (2)   b+e*t = B+E*s    s=(b+e*t-B)/E
     ' Z���W   LC1+LF1*t = MC1+MF1*s  (3)   c+f*t = C+F*s    s=(c+f*t-C)/F
     
     ' �덷  ���ʂ̂˂���ɂ�� ���W�̌덷
    
    
     ����2$ = ����$
     If ����$ = "" Then
          Call Calu_�O��_Vector(LD1, LE1, LF1, MD1, ME1, MF1, cx, cy, CZ)
          ����2$ = F_�O�ϕ��ʒ�`(cx, cy, CZ)
          End If
     
     Select Case ����2$
     Case "XY":  'XY����  (d*E-e*D)*t=A*E-B*D-a*E+b*D
                 aat = LD1 * ME1 - LE1 * MD1
                 If aat <> 0 Then
                 ����T = (MA1 * ME1 - MB1 * MD1 - LA1 * ME1 + LB1 * MD1) / aat
                 Xp1 = LA1 + LD1 * ����T:  Yp1 = LB1 + LE1 * ����T:   Zp1 = LC1 + LF1 * ����T
                     Select Case ME1
                     Case 0:       ����S = (LA1 + LD1 * ����T - MA1) / MD1: ' MD1=0 + MF1=0 �͖���
                     Case Else:    ����S = (LB1 + LE1 * ����T - MB1) / ME1
                     End Select
                 Zp2 = MC1 + MF1 * ����S: �덷 = Zp1 - Zp2
                 Zp1 = (Zp1 + Zp2) / 2
                 End If
     Case "YZ":  'YZ����  (e*F-f*E)*t=B*F-C*E-b*F+c*E
                 aat = LE1 * MF1 - LF1 * ME1
                 If aat <> 0 Then
                 ����T = (MB1 * MF1 - MC1 * ME1 - LB1 * MF1 + LC1 * ME1) / aat
                 Xp1 = LA1 + LD1 * ����T:  Yp1 = LB1 + LE1 * ����T:   Zp1 = LC1 + LF1 * ����T
                     Select Case MF1
                     Case 0:       ����S = (LB1 + LE1 * ����T - MB1) / ME1: ' ME1=0 + MF1=0 �͖���
                     Case Else:    ����S = (LC1 + LF1 * ����T - MC1) / MF1
                     End Select
                 Xp2 = MA1 + MD1 * ����S: �덷 = Xp1 - Xp2
                 Xp1 = (Xp1 + Xp2) / 2
                 End If
     
     Case "ZX":  'ZX����  (f*D-d*F)*t=C*D-A*F-c*D+a*F
                 aat = LF1 * MD1 - LD1 * MF1
                 If aat <> 0 Then
                 ����T = (MC1 * MD1 - MA1 * MF1 - LC1 * MD1 + LA1 * MF1) / aat
                 Xp1 = LA1 + LD1 * ����T:  Yp1 = LB1 + LE1 * ����T:   Zp1 = LC1 + LF1 * ����T
                     Select Case MD1
                     Case 0:       ����S = (LC1 + LF1 * ����T - MC1) / MF1: ' ME1=0 + MD1=0 �͖���
                     Case Else:    ����S = (LA1 + LD1 * ����T - MA1) / MD1
                     End Select
                 Yp2 = MB1 + ME1 * ����S: �덷 = Yp1 - Yp2
                 Yp1 = (Yp1 + Yp2) / 2
                 End If
     
     Case Else: er ("*System Calu_2������__���W"): Stop
     End Select
     �덷 = F_�덷(�덷, 10)
     If aat = 0 Then Xp1 = 0: Yp1 = 0: Zp1 = 0: �덷 = 99999999999#
     End Sub

Sub Calu_4�_�ʓ�_P5_P6_���W(����$, Xp1, Yp1, Zp1, Xp2, Yp2, Zp2, XP3, YP3, ZP3, XP4, YP4, ZP4, XP5, YP5, ZP5, XP6, YP6, ZP6, �덷P5, �덷P6)
     '  ����$  XY  YZ  ZX   �v�Z�Ɏg�p���镽�ʂ̎w��i�ʂ̂˂�����l��)
     '  ����$=""   ���� �����v�Z
     '  P1,P2,P3,P4  ���� P5,P6 XYZ�̍��W���v�Z
     '
     '           �P2 --------------- �P3
     '           |�_               �^|
     '           |  �P5---------- �P6|
     '           |�^               �_|
     '           �P1 --------------- �P4
     '
     ' �덷  ���ʂ̂˂���ɂ�� ���W�̌덷
     '
     ����2$ = ����$
     If ����$ = "" Then
          Call Calu_3�__�O��_Vector(Xp1, Yp1, Zp1, Xp2, Yp2, Zp2, XP4, YP4, ZP4, cx, cy, CZ)
          ����2$ = F_�O�ϕ��ʒ�`(cx, cy, CZ)
          End If
     
     ' P5 �̌v�Z
     Call Calu_2����_Vector(Xp1, Yp1, Zp1, XP4, YP4, ZP4, Xp2, Yp2, Zp2, BX1, BY1, BZ1)
     Call Calu_2����_Vector(Xp2, Yp2, Zp2, Xp1, Yp1, Zp1, XP3, YP3, ZP3, BX2, BY2, BZ2)
     Call Calu_2������__���W(����2$, Xp1, Yp1, Zp1, BX1, BY1, BZ1, Xp2, Yp2, Zp2, BX2, BY2, BZ2, XP5, YP5, ZP5, �덷P5)
     
     ' P6 �̌v�Z
     Call Calu_2����_Vector(XP3, YP3, ZP3, Xp2, Yp2, Zp2, XP4, YP4, ZP4, BX3, BY3, BZ3)
     Call Calu_2����_Vector(XP4, YP4, ZP4, XP3, YP3, ZP3, Xp1, Yp1, Zp1, BX4, BY4, BZ4)
     Call Calu_2������__���W(����2$, XP3, YP3, ZP3, BX3, BY3, BZ3, XP4, YP4, ZP4, BX4, BY4, BZ4, XP6, YP6, ZP6, �덷P6)
    ' �덷 = �덷5: If Abs(�덷) < Abs(�덷6) Then �덷 = �덷6
     End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��        �͈�                                                                                                                      ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Function Rob_�͈�(Dp, Dmin, Dmax)
     ' 2002.1.26
     ' <        �͈͊O
     ' *=<      �͈͓�
     ' *        �͈͓�
     ' *=>      �͈͓�
     ' >        �͈͊O
     D1$ = ""
     Select Case Dp
     Case Dmin: D1$ = "*=<"
     Case Dmax: D1$ = "*=>"
     Case Is < Dmin: D1$ = "<"
     Case Is > Dmax: D1$ = ">"
     Case Else: D1$ = "*"
     End Select

     Rob_�͈� = D1$
     
     End Function

Function Rob_�͈�XY(Xp, Yp, Xmin, Ymin, Xmax, Ymax)
     ' 2002.1.26
     ' ***    �͈͓�
     ' **<    <>>    <*<    �͈͊O
     D1$ = Mid(Rob_�͈�(Xp, Xmin, Xmax), 1, 1)
     D2$ = Mid(Rob_�͈�(Yp, Ymin, Ymax), 1, 1)
     Rob_�͈�XY = D1$ + D2$
     
     End Function
Function Rob_�͈�XYZ(Xp, Yp, Zp, Xmin, Ymin, Zmin, Xmax, Ymax, Zmax)
     ' 2002.1.26
     ' ***    �͈͓�
     ' **<    <>>    <*<    �͈͊O
     D1$ = Mid(Rob_�͈�(Xp, Xmin, Xmax), 1, 1)
     D2$ = Mid(Rob_�͈�(Yp, Ymin, Ymax), 1, 1)
     D3$ = Mid(Rob_�͈�(Zp, Zmin, Zmax), 1, 1)
     Rob_�͈�XYZ = D1$ + D2$ + D3$
     
     End Function


'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@                                                                                                                          ��
'���@�@�@�@����Data����                                                                                                              ��
'��                                                                                                                                  ��
'���@�@�@�@                                                                                                                          ��
'��������������������������������������������������������������������������������������������������������������������������������������
'������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@ROB_S_����
'������������������������������������������������������������������������������������������������������������������������
Sub ROB_S_����(STE_�^�|$, �f��type$, H, b, tw, tf, r1, r2, er1$)
     'STE_�^�|�𕪉�����  H,B,tw,tf,r(cm) ���擾����
     'Exp H-200x100x5.5x8 r=8     H-200x100x5.5x8 r8    ��-216.3x8.2
     ' �f��type$ ��  H,[,I �Ȃ�
     ' H, B, tw, tf, r1, r2  cm
     ' Rob_�֐��ɒu��
     
     er1$ = ""
     
  'F_RAN(
     STE_�^�|$ = F_RAN(STE_�^�|$)
     Sname$ = STE_�^�|$: H = 0: b = 0: r1 = 0: r2 = 0
     ReDim Ste_Ds$(20), Ste_Di(20)
    
     
     
     ni = InStr(Sname$, "r="): If ni > 2 Then r1 = Val(Mid(Sname$, ni + 2)) / 10: Sname$ = Mid(Sname$, 1, ni - 1)
     ni = InStr(Sname$, "r1="): If ni > 2 Then r1 = Val(Mid(Sname$, ni + 3)) / 10: Sname$ = Mid(Sname$, 1, ni - 1)
     ni = InStr(Sname$, "r2="): If ni > 2 Then r2 = Val(Mid(Sname$, ni + 3)) / 10: Sname$ = Mid(Sname$, 1, ni - 1)
     ni = InStr(Sname$, "r"):
        If ni > 2 Then If Val(Mid(Sname$, ni + 1)) > 0 Then r1 = Val(Mid(Sname$, ni + 1)) / 10: Sname$ = Mid(Sname$, 1, ni - 1):   ' r13
        
     
      If Mid$(Sname$, 1, 1) = "M" Then
             H = Val(Mid(Sname$, 2)) / 10: If Len(Sname$) > 3 Then er1$ = EMS0$: Exit Sub
             b = H: tw = H / 2: tf = H / 2
             �f��type$ = "M":   Exit Sub
             End If
     
     n = InStr(Sname$, "-"):
          If n = 0 Then er1$ = EMS0$ + " S�f�ʂŖ���": Exit Sub
     
     
     �f��type$ = Mid$(Sname$, 1, n - 1): Da$ = Mid$(Sname$, n + 1):
      If InStr(Da$, "*") > 0 Then er1$ = EMS0$ + " �ް��� [*] �������L��": Exit Sub
      eck$ = Rob_����ck$(Da$): If eck$ <> "" Then er1$ = EMS0$ + " �ް��� [" + eck$ + "] �������L��": Exit Sub
     
     Call Ddata("x", Da$, Ste_Ds$(), Ste_Di(), Nii)
     
     Select Case �f��type$
     Case "H":        If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      If r1 <= 0 Then er1$ = EMS0$ + " r=0":  Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case "BH":      If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case "T":      If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     Case "��":
                    Select Case Nii
                    Case 3: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(3) / 10
                    Case 4: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
                    Case Else: er1$ = EMS0$: Exit Sub
                    End Select
     
     
     Case "��":     If Nii <> 2 Then er1$ = EMS0$: Exit Sub
                    H = Ste_Di(1) / 10: b = Ste_Di(1) / 10: tw = Ste_Di(2) / 10: tf = Ste_Di(2) / 10
     
     
     Case "I", "[", "2[":  If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case "L", "2L":       If Nii <> 3 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(3) / 10
     
     Case "PL":       If Nii <> 2 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(2) / 10: tf = 0
     
     Case "C", "2C": If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case Else: 'ER (" ROB_S_����  [" + STE_�^�|$ + "]"): If ����CK > 99 Then Stop Else ��er = "*": Exit Sub

                    Select Case Nii
                    Case 1:               er1$ = EMS0$: Exit Sub
                    Case 2: H = Ste_Di(1) / 10: b = Ste_Di(1) / 10: tw = Ste_Di(2) / 10: tf = Ste_Di(2) / 10
                    Case 3: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(3) / 10
                    Case 4: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
                    Case Else: 'er1$ = EMS0$: Exit Sub
                    End Select
                  er1$ = EMS0$ + "�f��type������": If ����CK > 99 Then Stop
     
     End Select
     
    

     End Sub





'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@                                                                                                                          ��
'���@�@�@�@Data����                                                                                                                  ��
'��                                                                                                                                  ��
'���@�@�@�@                                                                                                                          ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Data����(Da$, ����1$, Data1$, ���l1)
   ' INP����3(ByVal da$, ����s$, ����2s$, ����3s$)
      ' 2001.2.16
     ' ����=DATA1  ���ڂ�DATA �𕪊�����
     ' =  �������ꍇ�@����1$ �� �S������
     ' / .  $  ������
     
     ni = InStr(Da$, "="):
     If ni > 1 Then
           ����1$ = Mid$(Da$, 1, ni - 1): ���l1 = Val(Mid$(Da$, ni + 1)): Data1$ = Mid$(Da$, ni + 1)
           Else
           ����1$ = Da$: ���l1 = 0: Data1$ = ""
           End If
    
     If Mid(Da$, 1, 1) = "/" Then ����1$ = "/": Data1$ = Mid$(Da$, 2)
     If Mid(Da$, 1, 2) = "//" Then ����1$ = "//": Data1$ = Mid$(Da$, 3)
     If Mid(Da$, 1, 1) = "." Then ����1$ = ".": Data1$ = Mid$(Da$, 2)
     If Mid(Da$, 1, 1) = "$" Then ����1$ = "$": Data1$ = Mid$(Da$, 2)
     If Mid(Da$, 1, 2) = "$=" Then ����1$ = "$": Data1$ = Mid$(Da$, 3)
    
    End Sub




Sub Dda(D$, Wda$, Ds$(), ni As Integer)
     ' 2001.9.29 renew ����
     ' D$ ��������󕶎�
     ' Wda$ �������镶��
     ' D$=" " �̎���  ���ݸ�ŕ���  2001.9.21
     'ni = 1: DD$ = LTrim$(Wda$)
     ni = 1: DD$ = Trim$(Wda$)
     For i = 1 To 9: Ds$(i) = "": Next i
     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(ni) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(ni) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1): If D$ = " " Then DD$ = Trim(DD$)
        End If
        ni = ni + 1
     Loop
     Ds$(ni) = DD$
End Sub

Sub Ddata_LP(D$, Wda$, Ds$(), Di(), n)
     ' D$ ��������󕶎�
     ' Wda$ �������镶��
     'N = 1: DD$ = LTrim$(Wda$)
     n = 1: DD$ = Wda$ ' Data �̑O�����ݸ���c��  *****************************
     For i = 1 To 19: Ds$(i) = "": Di(i) = 0: Next i
     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(n) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(n) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1)
        End If
        n = n + 1
     Loop
     Ds$(n) = DD$
     For i = 1 To n: Di(i) = Val(Ds$(i)): Next i

     End Sub
Sub Ddata(D$, Wda$, Ds$(), Di(), n)
     ' 2002.3.23
     ' D$ ��������󕶎�
     ' Wda$ �������镶��
     ' D$=" " �̎���  ���ݸ�ŕ���  2001.9.21
     'N = 1: DD$ = LTrim$(Wda$)
     n = 1: DD$ = Trim$(Wda$)
     For i = 1 To 19: Ds$(i) = "": Di(i) = 0: Next i
     If Wda$ = "" Then n = 0: Exit Sub
     
     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(n) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(n) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1): If D$ = " " Then DD$ = Trim(DD$)
        End If
        n = n + 1
     Loop
     Ds$(n) = DD$
     For i = 1 To n: Di(i) = Val(Ds$(i)): Next i

     End Sub
Sub Ddata_M(D$, Wda$, Ds$(), n As Integer)
     ' 2002.3.23
     ' D$ ��������󕶎�
     ' Wda$ �������镶��
     ' D$=" " �̎���  ���ݸ�ŕ���  2001.9.21
     'N = 1: DD$ = LTrim$(Wda$)
     n = 1: DD$ = Trim$(Wda$)
     For i = 1 To 19: Ds$(i) = "":  Next i
     If Wda$ = "" Then n = 0: Exit Sub
     
     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(n) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(n) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1): If D$ = " " Then DD$ = Trim(DD$)
        End If
        n = n + 1
     Loop
     Ds$(n) = DD$

     End Sub
Sub Ddata_D(D$, Wda$, Di() As Single, n As Integer)
     ' 2002.3.23
     ' D$ ��������󕶎�
     ' Wda$ �������镶��
     ' D$=" " �̎���  ���ݸ�ŕ���  2001.9.21
     'N = 1: DD$ = LTrim$(Wda$)
     Dim Ds(900)  As String
     n = 1: DD$ = Trim$(Wda$)
     For i = 1 To 19: Ds$(i) = "": Di(i) = 0: Next i
     If Wda$ = "" Then n = 0: Exit Sub
     
     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(n) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(n) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1): If D$ = " " Then DD$ = Trim(DD$)
        End If
        n = n + 1
     Loop
     Ds$(n) = DD$
     For i = 1 To n: Di(i) = Val(Ds$(i)): Next i
     
     

     End Sub


Sub Ddata1(D$, Wda$, Ds$(), Di(), n, er1$)
     ' Di() ��  Ds$() �̌v�Z����
     er1$ = "": n = 1: DD$ = LTrim$(Wda$)
     For i = 1 To 30: Ds$(i) = "": Di(i) = 0: Next i

     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(n) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(n) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1)
        End If
        n = n + 1
     Loop
     Ds$(n) = DD$
     For i = 1 To n: DD$ = Ds$(i)
         If Mid$(DD$, 1, 1) = "$" Then Di(i) = 0 Else Call calu(DD$, Di(i), er2$)
         er1$ = er1$ + er2$
         Next i
     'Ds$(N + 1) = "": Di(N+1) = 0
    End Sub

Sub Ddata2(D$, Wda$, Ds$(), Di(), n, er1$)
     ' Ds$() �� X or Y or $ �Ŏn�܂�
     ' Di() ��  MID$(Ds$(),2) �̌v�Z����
     er1$ = "": n = 1: DD$ = LTrim$(Wda$)
     For i = 1 To 30: Ds$(i) = "": Di(i) = 0: Next i

     Do: T% = InStr(DD$, D$)
     If T% = 0 Then Exit Do
     If T% = 1 Then
        Ds$(n) = "": DD$ = Mid$(DD$, T% + 1)
        Else
        Ds$(n) = Mid$(DD$, 1, T% - 1): DD$ = Mid$(DD$, T% + 1)
        End If
        n = n + 1
     Loop
     Ds$(n) = DD$
     For i = 1 To n:
     If Mid$(Ds$(i), 1, 1) <> "$" Then DD$ = Mid$(Ds$(i), 2): Call calu(DD$, Di(i), er2$): er1$ = er1$ + er2$
     Next i

    End Sub
Public Sub Data_����(ByVal Moj As String, ByRef n As Integer, ByRef l() As Single)
    'Wda="3x400+500+34+150"   --->  n=38  L(1)=400  L(4)=500  L(5)=150
    ' () �� NG
    Dim Ds(500) As String, D1s As String, ii As Integer, ni As Integer, i2 As Integer, i3 As Integer, jj As Integer, LL As Single
    n = 0: Moj = Replace��s(Moj)
    Call Ddata_M("+", Moj, Ds, ni)
    For ii = 1 To ni
        D1s = Ds(ii): i2 = 1: LL = Val(D1s)
        i3 = InStr(D1s, "x")
        If i3 > 1 Then i2 = Val(Mid(D1s, 1, i3 - 1)): LL = Val(Mid(D1s, i3 + 1))
        For jj = 1 To i2
            n = n + 1: l(n) = LL
            Next jj
        Next ii
    l(n + 1) = 0: l(n + 2) = 0: l(n + 3) = 0
    End Sub

Function Replace��s(ByVal Moj As String) As String
   '  Moj   *  --->  x
   '        X  --->  x
   
    Moj = �����ϊ�(Moj, "*", "x")
    Moj = �����ϊ�(Moj, "-", "") '********************** ��Á@2003.10.31  ��������̃o�O�Ή�
    
    
    Replace��s = LCase(Moj)

   End Function

'======================================================================================================================
Sub DSPACE(Da1$, Ds$(), Kosu)
      ' Kosu ��
      ' DA1$ ���@Space �ŕ�������
      For i = 1 To 15: Ds$(i) = "": Next i
      Kosu = 0: Da$ = Trim$(Da1$)
      Do
         Da$ = LTrim$(Da$)
         Kosu = Kosu + 1
         ni = InStr(Da$, " "): If ni = 0 Then Exit Do
         Ds$(Kosu) = Mid$(Da$, 1, ni - 1): Da$ = Mid$(Da$, ni + 1)
         Loop
         Ds$(Kosu) = Da$

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@                                                                                                                          ��
'���@�@�@�@NG  ����                                                                                                                  ��
'��                                                                                                                                  ��
'���@�@�@�@                                                                                                                          ��
'��������������������������������������������������������������������������������������������������������������������������������������

Sub er(ByVal Xs As String)
        Select Case Xs
            Case "0"
                Xs = "[[[ " + EMS0 + " ]]]" + cr
                Xs = Xs + ��er
            Case "1"
                Xs = "[[[ " + EMS0 + " ]]]" + cr
                Xs = Xs + EMS1 + cr
                Xs = Xs + ��er
            Case "", "2"
                Xs = "[[[ " + EMS0 + " ]]]" + cr
                Xs = Xs + EMS1 + cr
                Xs = Xs + EMS2 + cr
                Xs = Xs + ��er
            Case Else
        End Select

'        MsgBox (Xs)  '''''''''''''' nagase
        
     '����CK=200
    End Sub


Sub NG�\��(����$, N_NG�W��, M_NG�W��, Q_NG�W��)
     If NG�� > 0 Then
        If Pa + (NG�� + 18) * ���s�Ԋu > Pend Then Call Page
         Print #40, ""
         Print #40, "[QB:12]"
         Print #40, Tab(20); String$(50, "*")
         Print #40, ""
         Print #40, Tab(25); ����$; "��  NG "
         Print #40, ""
         Print #40, Tab(20); String$(50, "*")
         Print #40, ""
         Print #40, ""
         
         For i = 1 To NG��
         Print #40, " �@�@   "; ��NG$(i)
         Next i
         Print #40, "[QB:0]"
         Pa = Pa + (NG�� + 8) * ���s�Ԋu
     
     Else
         
         Print #40, ""
         Print #40, ""
         Print #40, Tab(20); "'"; String$(50, "*")
         Print #40, ""
         Print #40, Tab(25); "'"; ����$; "��  NG �͂���܂���"
         Print #40, ""
         Print #40, Tab(20); "'"; String$(50, "*")
         Print #40, ""
         
         Pa = Pa + 9 * ���s�Ԋu
     End If
     NG�� = 0

     End Sub


Sub �XNG�\��(�XNG��)
    If �XNG�� = NG�� Then Exit Sub
    
        If Pa + (�XNG�� + 3) * ���s�Ԋu > Pend Then Call Page
    Print #40, "[QB:12]"
    For i = �XNG�� + 1 To NG��
         Print #40, " �@�@  ***** "; ��NG$(i)
         Next i
    Print #40, "[QB:0]"
    Print #40, "":
    Pa = Pa + (�XNG�� + 3) * ���s�Ԋu

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�v�Z
'��������������������������������������������������������������������������������������������������������������������������������������
Function F��N(���$, Da$)
      ' ���$="/"    DA$="5/4/2"  F��N=11
      ' F��N=5+4+2=11 �ƂȂ�
      ��n = 0: DN$ = Da$
      Do: ��n = ��n + Val(DN$)
           ni = InStr(DN$, ���$): If ni < 1 Then Exit Do
           DN$ = Mid(DN$, ni + 1)
           Loop
     F��N = ��n
     End Function
'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'���@�@�@�@����
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Function Rob_No_space$(Moji$)
    ' ���ݸ����菜��
    D0$ = Trim(Moji$)
    Do: ni = InStr(D0$, " "): If ni = 0 Then Exit Do
        D1$ = Mid(D0$, 1, ni - 1): D2$ = Mid(D0$, ni + 1)
        D0$ = D1$ + D2$
        Loop
    Rob_No_space$ = D0$
    End Function
Function Rob_�OM(D1$, Moji$)
    ' D1$ ������T���Ă��̕������O�̕������Ԃ�
    ' D1$="x"  Moji$="100x500"   --->  "100"
    D0$ = Moji$
    ni = InStr(D0$, D1$): If ni > 1 Then D0$ = Mid(D0$, 1, ni - 1)
    Rob_�OM = D0$
    End Function
Function Rob_��M(D1$, Moji$)
    ' D1$ ������T���Ă��̕�������̕������Ԃ�
    ' D1$="*x"  Moji$="100*x500"   --->  "500"
    D0$ = Moji$
    ni = InStr(D0$, D1$): If ni > 1 Then D0$ = Mid(D0$, ni + Len(D1$))
    Rob_��M = D0$
    End Function


Function Rob_No_ck$(Moji$)
    ' �ߓ_�ԍ�,���ޔԍ��� Ck �p�ł�
    ' MOJI$ �̒��� Moj���L��̂�{��  ������΁@Data ��( exp "2"  "1") ��Ԃ�
    ReDim S_Ds$(500), S_Di(500)
    
    D1$ = Moji$:     ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case "(", ")"
       Case " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "�@": Rob_No_ck$ = " �������ݸ ������܂�": Exit Function
       Case "O", "o": Rob_No_ck$ = " O(�) ������܂�": Exit Function
       Case Else: D2$ = Mid(D1$, i, 1)
            If N����(D2$) > 0 Then D2$ = "����" + Mid(D1$, i, 1)
            Rob_No_ck$ = "" + D2$ + " ������܂�": Exit Function
       End Select
       Next i
    
    
    Call Ddata(" ", D1$, S_Ds$(), S_Di(), ni)
        For ii = 1 To ni
            D1$ = S_Ds$(ii): Lnn = Len(D1$)
            If Mid(D1$, 1, 1) = "(" Then
                  If Right(D1$, 1) <> ")" Then Rob_No_ck$ = " �ԍ� " + S_Ds$(ii) + "�� (___) �łȂ�": Exit Function
                  D1$ = Mid(D1$, 2, Lnn - 2)
                  End If
            
            If InStr(D1$, "(") > 0 Then Rob_No_ck$ = " �ԍ� " + S_Ds$(ii) + " ����������": Exit Function
            If InStr(D1$, ")") > 0 Then Rob_No_ck$ = " �ԍ� " + S_Ds$(ii) + " ����������": Exit Function
            If Mid(D1$, 1, 1) = "0" Then Rob_No_ck$ = " �ԍ� " + S_Ds$(ii) + "�� 0 �ł�": Exit Function
            �ԍ� = Val(D1$)
            
            If �ԍ� <= 0 Then Rob_No_ck$ = " �ԍ� " + S_Ds$(ii) + " ����������": Exit Function
            If �ԍ� > 990000 Then Rob_No_ck$ = " �ԍ� " + S_Ds$(ii) + " > 990000": Exit Function
            Next ii
    Rob_No_ck$ = f0(ni)
    End Function

Function F_����ck0s(Moji As String) As String
    ' ���r��p MOJI$ �̒��� Moj���L��̂�{��  ������΁@"" ��Ԃ�
    Dim D1s As String, D2s As String
    F_����ck0s = ""
    D1s = Moji
    ni = Len(D1s)
    For i = 1 To ni
       Select Case Mid(D1s, i, 1)
       Case ".", "+", "-"
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "�@": F_����ck0s = "�������ݸ": Exit For
       Case "O", "o": F_����ck0s = "O(�)": Exit For
       Case Else: D2s = Mid(D1s, i, 1)
            If N����(D2s) > 0 Then D2s = "����" + Mid(D1s, i, 1)
            F_����ck0s = D2s: Exit For
       End Select
       Next i
    
    End Function
Function Rob_����ck0$(Moji$)
    ' MOJI$ �̒��� Moj���L��̂�{��  ������΁@"" ��Ԃ�
    Rob_����ck0$ = ""
    D1$ = Moji$
    ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case "."
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "�@": Rob_����ck0$ = "�������ݸ": Exit For
       Case "O", "o": Rob_����ck0$ = "O(�)": Exit For
       Case Else: D2$ = Mid(D1$, i, 1)
            If N����(D2$) > 0 Then D2$ = "����" + Mid(D1$, i, 1)
            Rob_����ck0$ = D2$: Exit For
       End Select
       Next i
    
    End Function

Function Rob_����ck$(Moji$)
    ' MOJI$ �̒��� Moj���L��̂�{��  ������΁@"" ��Ԃ�
    Rob_����ck$ = ""
    D1$ = Moji$
    ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case " "
       Case "x"
       Case "=", "\", "|", "@"
       Case ".", "-", "+", "/", "*":
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "�@": Rob_����ck$ = "�������ݸ": Exit For
       Case "O", "o": Rob_����ck$ = "O(�)": Exit For
       Case Else: D2$ = Mid(D1$, i, 1)
            If N����(D2$) > 0 Then D2$ = "����" + Mid(D1$, i, 1)
            Rob_����ck$ = D2$: Exit For
       End Select
       Next i
    
    End Function

Function J����$(Moji$)
    ' MOJI$ ���@����(M) �� ���l(1) ���𔻒f����
    D1$ = Moji$
    J����$ = "1"
    ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case ".", "-":
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case Else: J����$ = "M": Exit For
       End Select
       Next i
    
    End Function



Function �����ϊ�$(Moji$, D1$, D2$)
    ' Moji$ ���� D1$ ��{���� D2$ �ɕϊ�����
    ' D1$ �� 2�޲Ĉȏ�ł���
    ' ? �����ϊ�("H-300*150*6.5*9","*","x")  ---> H-300x150x6.5x9
    
    If InStr(D2$, D1$) > 0 Then er ("ERR �����ϊ�  "): Stop: ��er = "*": Exit Function
    Moj$ = Moji$
    n1 = Len(D1$)
    Do: ni = InStr(Moj$, D1$): If ni = 0 Then Exit Do
         Moj1$ = Mid(Moj$, 1, ni - 1): Moj2$ = Mid$(Moj$, ni + n1)
         Moj$ = Moj1$ + D2$ + Moj2$
         Loop
    �����ϊ�$ = Moj$
    End Function



Function N����(Moji$)
   ' �܂܂�銿���̐���Ԃ�
   NSU = 0: LNi = Len(Moji$)
   For i = 1 To LNi: ni = Asc(Mid$(Moji$, i, 1)): If ni < 1 Then NSU = NSU + 1
      Next i
   N���� = NSU
   End Function

'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'���@�@�@�@Fomat �֐�
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Function f$(X, n)
   ' n=6.2   ###.##    n=2  ##
   D$ = str(n): NN = InStr(D$, ".")
   Select Case NN
        Case Is <= 1: n1 = Int(n): n2 = 0
        Case Else:   n1 = Val(Mid$(D$, 1, NN - 1)): n2 = Val(Mid$(D$, NN + 1))
        End Select
   If n2 > 0 Then D$ = "." + Mid$("0000000000", 1, n2) Else D$ = ""
   D$ = "0" + D$
   D$ = Format$(X, D$)
   mn = Len(Trim(D$))
   If n1 < mn Then n1 = mn
   f$ = Right$("                     " + D$, n1)
   End Function
Function fe$(X, n)
   ' n   E�\��
   Select Case X
   Case 0: fe$ = " 0.0000E+00"
   Case Is > 0: fe$ = " " + Format(X, "0.0000E+00")
   Case Is < 0: fe$ = "-" + Format(-X, "0.0000E+00")
   End Select
   End Function
Function f0$(X):  f0$ = Format$(X, "0"):   End Function

Function f1$(X):  f1$ = Format$(X, "0.0"):  End Function

Function f2$(X):  f2$ = Format$(X, "0.00"):   End Function

Function f3$(X):  f3$ = Format$(X, "0.000"):   End Function

Function f4$(X): f4$ = Format$(X, "0.0000"):   End Function

Function F20$(X):   XXXii = Int(100 * X) / 100:  F20$ = Trim$(str$(XXXii)):   End Function

Function F30$(X): XXXii = Int(1000 * X) / 1000:     F30$ = Trim$(str$(XXXii)):   End Function

Function F8$(���l)
   ' ���l�̑O�� (,)��t����
   F8$ = "," + F9(���l)
   End Function


Function F9$(���l)
   'XXXii = F_�덷(���l, 10)
   XXXii = CSng(���l)
   Ds11$ = Trim$(str$(XXXii))
   If Mid$(Ds11$, 1, 1) = "." Then Ds11$ = "0" + Ds11$
   If Mid$(Ds11$, 1, 2) = "-." Then Ds11$ = "-0." + Mid$(Ds11$, 3)
   F9$ = Ds11$
   End Function
Function FP1$(���l)
   FP1$ = "+" + F9(���l)
   End Function

Function FD1$(���l1)
   FD1$ = F9(���l1)
   End Function
Function FD2$(���l1, ���l2)
   FD2$ = F9(���l1) + F8(���l2)
   End Function
Function FD3$(���l1, ���l2, ���l3)
   FD3$ = F9(���l1) + F8(���l2) + F8(���l3)
   End Function
Function FD4$(���l1, ���l2, ���l3, ���l4)
   FD4$ = F9(���l1) + F8(���l2) + F8(���l3) + F8(���l4)
   End Function
Function FD5$(���l1, ���l2, ���l3, ���l4, ���l5)
   FD5$ = F9(���l1) + F8(���l2) + F8(���l3) + F8(���l4) + F8(���l5)
   End Function
Function FD6$(���l1, ���l2, ���l3, ���l4, ���l5, ���l6)
   FD6$ = F9(���l1) + F8(���l2) + F8(���l3) + F8(���l4) + F8(���l5) + F8(���l6)
   End Function
Function FDn$(n, ���l())
   ' n<0 �̏ꍇ  ���l�� -���l�Ƃ���
   D1$ = ""
   ni = n: ���� = 1: If ni < 0 Then ni = -n: ���� = -1
   For ii = 1 To ni: D1$ = D1$ + F8(���� * ���l(ii)):  Next ii
   FDn$ = Mid(D1$, 2)
   End Function



Function FABC$(X)
   ' X(���l) �� 123456789ABCDEFGHIJKLMNOPQRSTUXYZ(����) �ɕϊ�
   Select Case X
   Case Is < 1: FABC$ = "-"
   Case Is < 10: FABC$ = f0$(X)
   Case 10: FABC$ = "0"
   Case 11: FABC$ = "A"
   Case 12: FABC$ = "B"
   Case 13: FABC$ = "C"
   Case 14: FABC$ = "D"
   Case 15: FABC$ = "E"
   Case 16: FABC$ = "F"
   Case 17: FABC$ = "G"
   Case 18: FABC$ = "H"
   Case 19: FABC$ = "I"
   Case 20: FABC$ = "J"
   Case 21: FABC$ = "K"
   Case 22: FABC$ = "L"
   Case 23: FABC$ = "M"
   Case 24: FABC$ = "N"
   Case 25: FABC$ = "O"
   Case 26: FABC$ = "P"
   Case 27: FABC$ = "Q"
   Case 28: FABC$ = "R"
   Case 29: FABC$ = "S"
   Case 30: FABC$ = "T"
   Case 31: FABC$ = "U"
   Case 32: FABC$ = "X"
   Case 33: FABC$ = "Y"
   Case 34: FABC$ = "Z"
   Case Else: FABC$ = "*"
   End Select
   End Function

Function Fmoj$(Moj$, n)
   Stop
   ' 2000.12.18
   ' Moj$ �� n �޲Ă̕����ɂ��� �������l���@�@������2�޲�
   ����$ = Trim$(Moj$): mn = N����(����$) + Len(����$): sp$ = "": If mn < n Then sp$ = Space$(n - mn)
   Fmoj$ = ����$ + sp$
   End Function

Function ��21(X)
   'H12.01.25   format 00_00_21 �̓� 1���ڂ�2���ڂ̐��l
   XX = Int(X):   ��21 = XX - 100 * Int(XX / 100)
   End Function
Function ��43(X)
   'H12.01.25   format 00_43_00 �̓� 3���ڂ�4���ڂ̐��l
   XX = Int(X / 100): ��43 = XX - 100 * Int(XX / 100)
   End Function
Function ��65(X)
   'H12.01.25   format 65_00_00 �̓� 5���ڂ�6���ڂ̐��l
   XX = Int(X / 10000): ��65 = XX - 100 * Int(XX / 100)
   End Function
Function F��$(Da$, ni)
   ' H10.9.21 ��������� ni ��
   ' Da$ �� n �޲Ă̕����ɂ��� �������l���@�@������2�޲�
   Da2$ = RTrim$(Da$): N�� = N����(Da2$)
   'Stop
   'LL = Len(DA2$): If Mid(DA2$, LL - 1) = " " Then DA2$ = RTrim(Mid$(DA2$, 1, LL - 1))
   If Len(Da2$) + N�� > ni Then F��$ = Da$: Exit Function
   F��$ = Mid$(Da2$ + Space$(ni), 1, ni - N��)
   End Function
Function F��$(Da$, ni)
   ' H10.9.24 ��������� ni ��
   Da2$ = Trim$(Da$): N�� = N����(Da2$)
   N0 = Len(Da2$) + N��: If N0 >= ni Then F��$ = Da$: Exit Function
   n1 = Int((ni - N0) / 2)
   n2 = ni - N0 - n1
   F��$ = Space$(n1) + Da2$ + Space$(n2)
   End Function
Function F�E$(Da$, ni)
   ' ���ݸ�łȂ��ꍇ�L����
   Da2$ = LTrim$(Da$): N�� = N����(Da2$)
   N0 = Len(Da2$) + N��: If N0 >= ni Then F�E$ = Da$: Exit Function
  
   F�E$ = Right$(Space$(ni) + Da2$, ni - N��)
  ' F�E$ = Right$(Space$(ni) + Da2$, ni)
  
  End Function

Function FD(Da$)
   ' B*D  BxD  �Ȃǂ�   D�̒l���v�Z
      Wda$ = UCase(Da$)
        Do
             ni = InStr(Wda$, "X"): If ni > 1 Then Exit Do
             ni = InStr(Wda$, "*"): If ni > 1 Then Exit Do
             Exit Do
             Loop
   If ni < 1 Then FD = 0: Exit Function
   FD = Val(Mid$(Wda$, ni + 1))

   End Function



'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��
'���@�@�@�@�l min  max �֐�
'��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Calu_����min(��, ���l() As Single, ����() As Integer)
    ' �l�̏��������Ԃ̔ԍ�������
    ' ����(1)=1�Ԗڂ́@���l(n1) ��n1  ����(3)=3�Ԗڂ́@���l(n3) ��n3
    For ii = 1 To ��
        ����1 = 1:  ���l1 = ���l(ii)
        For jj = 1 To ��
        Select Case ���l(jj) - ���l1
        Case 0:     If ii > jj Then ����1 = ����1 + 1
        Case Is < 0: ����1 = ����1 + 1
        Case Else
        End Select
        Next jj
        ����(����1) = ii
    Next ii
    End Sub

Sub Calu_����max(��, ���l() As Single, ����() As Integer)
    ' �l�̑傫�����Ԃ̔ԍ�������
    ' ����(1)=1�Ԗڂ́@���l(n1) ��n1  ����(3)=3�Ԗڂ́@���l(n3) ��n3
    For ii = 1 To ��
        ����1 = 1:  ���l1 = ���l(ii)
        For jj = 1 To ��
        Select Case ���l(jj) - ���l1
        Case 0:     If ii > jj Then ����1 = ����1 + 1
        Case Is > 0: ����1 = ����1 + 1
        Case Else
        End Select
        Next jj
        ����(����1) = ii
    Next ii
    End Sub



Function �lmax(X1, X2, X3, X4, X5)
    Stop: ' 2001.12.5 Rob OK
    X0 = X1
    If X2 > X0 Then X0 = X2
    If X3 > X0 Then X0 = X3
    If X4 > X0 Then X0 = X4
    If X5 > X0 Then X0 = X5
    �lmax = X0
    End Function
Function Fmax3(a1, a2, A3)
    ' A1, A2, A3 �̍ő�l��Ԃ�
    A0 = a1
    If A0 < a2 Then A0 = a2
    If A0 < A3 Then A0 = A3
    Fmax3 = A0
    End Function
Function Fmax5(a1, a2, A3, A4, A5)
    ' A1, A2, A3, A4, A5 �̍ő�l��Ԃ�
    A0 = a1
    If A0 < a2 Then A0 = a2
    If A0 < A3 Then A0 = A3
    If A0 < A4 Then A0 = A4
    If A0 < A5 Then A0 = A5
    Fmax5 = A0
    End Function

Function Fmax_N(D1$, Wda$)
    '�ő�l��Ԃ�
    ' D1$="/"  Wda$="5/6/2"  ---> 6
    ' Fmax_n
    
    Call Ddata(D1$, Wda$, Ds$(), Di(), ni)
    Fmax_N = Di(1)
    For ii = 1 To ni: If Fmax_N < Di(ii) Then Fmax_N = Di(ii)
         Next ii
    
    End Function

Function Fmin3(a1, a2, A3)
    ' A1, A2, A3 �̍ŏ��l��Ԃ�
    A0 = a1
    If A0 > a2 Then A0 = a2
    If A0 > A3 Then A0 = A3
    Fmin3 = A0
    
    End Function


Function �lmin(X1, X2, X3, X4, X5)
    X0 = X1
    If X2 < X0 Then X0 = X2
    If X3 < X0 Then X0 = X3
    If X4 < X0 Then X0 = X4
    If X5 < X0 Then X0 = X5
    �lmin = X0
    End Function
'��������������������������������������������������������������������������������������������������������������������������������������
'��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��
'��
'��������������������������������������������������������������������������������������������������������������������������������������
'======================================================================================================================
'======================================================================================================================
'======================================================================================================================
Sub LP_Circle(X0, Y0, r, e$)
     ' LP_scale
     '��΍��W(X0,Y0)�� ���aR�� �~��`��
     Xiii = X0 / LP_scale: Yiii = 296 - Y0 / LP_scale
     Print #40, "[P:"; f2$(Xiii); ","; f2$(Yiii); "]\[Cir:"; f2$(r / LP_scale); "]"
   End Sub

Sub LP_Line(X(), Y(), n, e$)
     '��΍��W(X(i),Y(i))���� ��΍��W(X(i+1),Y(i+1))�ւ�`��
     If n < 1 Then e$ = "�װ N<1 ": Exit Sub
     ReDim Xiii(500), Yiii(500)

     For i = 1 To n: Xiii(i) = X(i) / LP_scale: Yiii(i) = 296 - Y(i) / LP_scale: Next i

     Print #40, "[P:"; f2$(Xiii(1)); ","; f2$(Yiii(1)); "]\";
     For i = 2 To n
        Print #40, "[L:"; f2$(Xiii(i) - Xiii(i - 1)); ","; f2$(Yiii(i) - Yiii(i - 1)); "]";
        If i < n Then Print #40, "\";
        Next i
     Print #40, ""
    End Sub

Sub LP_Moj(X0, Y0, Moj$, e$)
     '��΍��W(X0,Y0)�� ������`��
     Xiii = X0 / LP_scale: Yiii = 296 - Y0 / LP_scale

     Print #40, "[P:"; f2$(Xiii); ","; f2$(Yiii); "]\"; Moj$

End Sub

Sub LP_Poly(X(), Y(), n, e$)
     '��΍��W(X(i),Y(i))���� ���΍��W(X(i+1),Y(i+1))�ւ�`��
     If n < 1 Then e$ = "�װ N<1 ": Exit Sub
     ReDim Xiii(500), Yiii(500)
     For i = 1 To n: Xiii(i) = X(i): Yiii(i) = Y(i): Next i
     Xiii(1) = Xiii(1) / LP_scale: Yiii(1) = 296 - Yiii(1) / LP_scale

     SLX = 0: SLY = 0
     For i = 2 To n: SLX = SLX + Xiii(i): SLY = SLY + Yiii(i): Next i
     Xiii(n + 1) = -SLX: Yiii(n + 1) = -SLY

     Print #40, "[P:"; f2$(Xiii(1)); ","; f2$(Yiii(1)); "]\";
     For i = 2 To n + 1
        Print #40, "[L:"; f2$(Xiii(i) / LP_scale); ","; f2$(-Yiii(i) / LP_scale); "]";
        If i < n + 1 Then Print #40, "\";
        Next i
     Print #40, ""

End Sub

Sub LP_Rect(X1, Y1, X2, Y2, e$)
     '��΍��W(X1,Y1)���� (X2,Y2)�� Box ��`��

     X1i = X1 / LP_scale: Y1i = 296 - Y1 / LP_scale
     X2i = X2 / LP_scale: Y2i = 296 - Y2 / LP_scale
     Print #40, "[P:"; f2$(X1i); ","; f2$(Y1i); "]\";
     Print #40, "[B:"; f2$(X2i - X1i); ","; f2$(Y2i - Y1i); "]"
End Sub


Function �u�����N(Moj$)
    ' _ �� ���ݸ �ɕς���
    D$ = Moj$
    Do: ni = InStr(D$, "_"): If ni = 0 Then Exit Do
        D$ = Mid$(D$, 1, ni - 1) & " " & Mid$(D$, ni + 1)
        Loop
    �u�����N = D$
    End Function
Function �t�u�����N(Moj$)
    ' ���ݸ �� _ �ɕς���
    D$ = Moj$
    Do: ni = InStr(D$, " "): If ni = 0 Then Exit Do
        D$ = Mid$(D$, 1, ni - 1) & "_" & Mid$(D$, ni + 1)
        Loop
    �t�u�����N = D$
    End Function
Function �V�t�g7(Moj$)
    ' ���7 �� _ �ɕς���
    D$ = Moj$
    Do: ni = InStr(D$, "'"): If ni = 0 Then Exit Do
        D$ = Mid$(D$, 1, ni - 1) & "_" & Mid$(D$, ni + 1)
        Loop
    �V�t�g7 = D$
    End Function
Function F_RAN(Moj$)
    ' RANDAN File ���� �O������ݸ�������Ƃ�
    D$ = Moj$
    ni = InStr(D$, Chr$(0)): If ni > 1 Then D$ = Mid$(D$, 1, ni - 1)
    ni = InStr(D$, ��f_end$): If ni > 1 Then D$ = Mid$(D$, 1, ni - 1): ' �����̏ꍇ
    F_RAN = Trim$(D$)
    End Function
Sub Page()
    Npage = Npage + 1: Pa = 13: ' �m�F���.Cls
    Print #40, ""
    Print #40, "/"; String$(84, "��"); Npage
    ��_��Page$ = "New"
    LP_Y�ʒu = 13
    End Sub
Sub �o�͑薼(�薼$, n)
    Call Page
     Print #40, "/LmM "; �薼$
    If n > 0 Then For i = 1 To n: Print #40, "": Pa = Pa + 2.5: Next i
    End Sub
Sub P_�Ԋ|(���$)
         
    Select Case ���$
    Case ".": Print #40, "/"; String$(165, ".")
    Case "-": Print #40, "/"; String$(165, "-")
    Case Else: Print #40, "/"; String$(165, "="): '1ײݖԊ|
    End Select
    End Sub
Function F�Ԋ|$(���$)
    
    Select Case ���$
    Case ".": F�Ԋ|$ = "/" + String$(165, ".")
    Case "-": F�Ԋ|$ = "/" + String$(165, "-")
    Case Else: F�Ԋ|$ = "/" + String$(165, "="): '1ײݖԊ|
    End Select

    End Function


Sub TEMPFILE(iFN$, Temp$, �I�L��$)
     Open iFN$ For Input As #80
     Open Temp$ For Output As #81
     Do: If EOF(80) Then Exit Do Else Line Input #80, Da$
        Da$ = Trim$(Da$)
        Select Case Mid$(Da$, 1, 1)
           Case ""
           Case "'"
           Case "$": Print #81, �u�����N(Da$)
           Case Else
              Do: ni = InStr(Da$, " "): If ni = 0 Then Exit Do
              If Mid$(Da$, 1, 1) = "'" Then Exit Do
              Da1$ = Mid$(Da$, 1, ni - 1): Print #81, �u�����N(Da1$)
              Da$ = LTrim$(Mid$(Da$, ni))
              Loop
              If Mid$(Da$, 1, 1) <> "'" Then Print #81, �u�����N(Da$)
           End Select
        Loop
        Print #81, �I�L��$: Print #81, �I�L��$: Print #81, �I�L��$: Print #81, �I�L��$
     Close #80
     Close #81

    End Sub

Sub Thenkan(X0, Y0, �p�x, Xiii(), Yiii(), n)
    'X0,Y0 ��]���S���W   �p�x ��
    '�����v���� +
    If �p�x <> 0 Then
    C�p�x = �p�x
    Select Case C�p�x
       Case 0, 360, -360: CS = 1: SN = 0
       Case 90, -270: CS = 0: SN = 1
       Case 180, -180: CS = -1: SN = 0
       Case 270, -90: CS = 0: SN = -1
       Case Else: CS = Cos(3.1415926 * C�p�x / 180): SN = Sin(3.1415926 * C�p�x / 180)
       End Select
    For i = 1 To n
    LX1 = Xiii(i) - X0: LY1 = Yiii(i) - Y0
    LLL = Sqr(LX1 * LX1 + LY1 * LY1)
    If LLL > 0 Then CS1 = LX1 / LLL: SN1 = LY1 / LLL Else CS1 = 0: SN1 = 0
    Xiii(i) = X0 + LLL * (CS1 * CS - SN1 * SN)
    Yiii(i) = Y0 + LLL * (SN1 * CS + CS1 * SN)
    Next i
    End If
    End Sub
Sub ���W��](X0, Y0, �p�x, X1, Y1)
    'X0,Y0 ��]���S���W   �p�x ��
    '�����v���� +
    If �p�x <> 0 Then
    Select Case �p�x
       Case 0, 360, -360: CS = 1: SN = 0
       Case 90, -270: CS = 0: SN = 1
       Case 180, -180: CS = -1: SN = 0
       Case 270, -90: CS = 0: SN = -1
       Case Else: CS = Cos(3.1415926 * �p�x / 180): SN = Sin(3.1415926 * �p�x / 180)
       End Select
    LX1 = X1 - X0: LY1 = Y1 - Y0
    LLL = Sqr(LX1 * LX1 + LY1 * LY1)
    If LLL > 0 Then CS1 = LX1 / LLL: SN1 = LY1 / LLL Else CS1 = 0: SN1 = 0
    X1 = X0 + LLL * (CS1 * CS - SN1 * SN)
    Y1 = Y0 + LLL * (SN1 * CS + CS1 * SN)
    End If

    End Sub


'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@Text �o��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub TEXT(Temp$)
    ' 2001_2_19
    '
    '    //TEXT �̏o��
    '
   Open Temp$ For Input As #2
     Do: Line Input #2, Da$
         If UCase$(Mid$(Da$, 1, 2)) = "/E" Then Exit Do
         Da2$ = Da$: If UCase$(Mid$(Da$, 1, 5)) = "READ=" Then Da2$ = "READ"
         Select Case Da2$
         Case "READ": ifn2$ = Mid$(Da$, 6): If InStr(ifn2$, ":") = 0 Then ifn2$ = Data_dsk$ + ifn2$
               Open ifn2$ For Input As #3
                    Do: If EOF(3) Then Exit Do Else Line Input #3, Da$
                    Select Case Mid(Da$, 1, 1)
                    Case "'":
                   ' Case "$": Print #40, Mid(Da$, 2)
                    Case Else: Print #40, Da$
                    End Select
                    Loop
                    Close #3
         Case Else:
                    Select Case Mid(Da$, 1, 1)
                   ' Case "'":
                    Case "$": Print #40, Mid(Da$, 2)
                    Case Else: Print #40, Da$
                    End Select
         End Select
     Loop
     Close #2
     End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'���@�@�@�@����DATA����
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub ����DATA����(WTYPE$, Da$)
          ' 2001.12.30
           'Data0$ = �u�����N(Da$)
           Data0$ = �����ϊ�$(Da$, "�@", "  "): ' �������ݸ��u��������
           Select Case WTYPE$
           Case "D": ' ���DATA  Data�� ���ݸ�ŕ������� Return �ɂ���
                     ' ��data �� ���
                     ' (') �̌�� ���
                     ' ($) �̌��S�� ���� Data �Ƃ���@  �A�� $=___ ������
                       ni = InStr(Data0$, "'"): If ni > 1 Then Data0$ = Mid(Data0, 1, ni - 1): ' (') ���@���
                       If Mid(Data0$, 1, 1) = "'" Then Data0$ = ""
                     '**********************************************************************
                     '**********************************************************************
                       Do:  Data0$ = Trim(Data0$)
                           Ck_Data_Type$ = "**"
                           If Data0$ = "" Then Ck_Data_Type$ = ""
                           If Mid$(Data0$, 1, 1) = "'" Then Ck_Data_Type$ = "'"
                           If UCase(Mid$(Data0$, 1, 5)) = "READ=" Then Ck_Data_Type$ = "READ="
                           If UCase(Mid$(Data0$, 1, 6)) = "READ�g=" Then Ck_Data_Type$ = "READ�g="
                           If Mid$(Data0$, 1, 1) = "$" Then
                                   Ck_Data_Type$ = "$"
                                    ni = InStr(Data0$, ":")
                                    If ni = 2 Then Ck_Data_Type$ = "$:"
                                    If ni > 2 And ni < 6 Then
                                             '  $123:
                                         D1$ = Mid(Data0$, 2, ni - 2):   D1$ = Rob_����ck0$(D1$):  If D1$ = "" Then Ck_Data_Type$ = "$:"
                                         End If
                                   End If
                           
                           If UCase(Mid$(Trim(Data0$), 1, 4)) = "READ=" Then Stop
                           
                           Select Case Ck_Data_Type$
                           Case "", "'": Exit Do
                           Case "$:": Print #5, �u�����N(Data0$): Exit Do
                           Case "READ=":
                                     ni = InStr(Data0$, " "):
                                     If ni = 0 Then Data1$ = Data0$: Data0$ = "" Else Data1$ = Mid$(Data0$, 1, ni - 1): Data0$ = Mid$(Data0$, ni + 1)
                                     Call Data_Read_����(WTYPE$, Data1$)
                                  Data0$ = ""
                           Case "READ�g=": ifn2$ = Mid$(Data0$, 7): If InStr(ifn2$, ":") = 0 Then ifn2$ = Data_dsk$ + ifn2$
                                     RET$ = Dir(ifn2$)
                                     If RET$ = "" Then
                                          er ("Data File " + ifn2$ + " ������ �������܂�"): If ����CK > 99 Then Stop
                                          Else
                                          Open ifn2$ For Input As #2
                                               Do: If EOF(2) Then Exit Do
                                               Line Input #2, Data0$
                                               Print #5, �u�����N(Data0$)
                                               Loop
                                               Close #2
                                          End If
                                  Data0$ = ""
                           Case Else:   'Case "$" ���܂�
                                     ni = InStr(Data0$, " "):  If ni = 0 Then Print #5, �u�����N(Data0$):  Exit Do
                                     Data1$ = Mid$(Data0$, 1, ni - 1): Data0$ = Mid$(Data0$, ni + 1)
                                     Print #5, �u�����N(Data1$)
                           End Select
                           Loop
           
           
           
           
           
           
           Case "*", "TEXT": ' Robot input
                     
                     
                     ni = InStr(Data0$, "'")
                           Select Case ni
                           Case 0:
                           Case 1: Data0$ = "'"
                           Case Else: Data0$ = Mid(Data0, 1, ni - 1): If Trim(Data0$) = "" Then Data0$ = "'"
                           End Select
                     
                     Do
                     Data1$ = Trim(Data0$)
                     
                     ni = InStr(Data1$, " "): If ni > 1 Then Data1$ = Mid$(Data1$, 1, ni - 1)
                     
                     Select Case Mid$(Data1$, 1, 1)
                     Case "'":          Exit Do
                     Case "":           If WTYPE$ = "TEXT" Then Print #5, "$"
                                        Exit Do
                     'Case "<":          Print #5, DATA1$: If ni < 1 Then Exit Do
                     
                     Case "*":      Print #5, �u�����N(Data1$): If ni < 1 Then Exit Do
                     Case "/":      Print #5, �u�����N(Data0$):  Exit Do
                     
                     Case "$":          Print #5, Trim(Data0$): Exit Do
                     Case "[":          n2 = InStr(Data0$, ":"): n3 = InStr(Data0$, "]"):
                                        If n2 = 0 Or n2 >= n3 Then Print #5, Data0$: Exit Do
                                        Print #5, Trim(Data0$): Exit Do
                     Case Else:         Print #5, "$"; Data0$: Exit Do
                     End Select
                     Data0$ = Trim(Data0$)
                     Data0$ = Mid$(Data0$, ni + 1)
                     Loop
           
           Case "*1": '�@�\��
           
                     ni = InStr(Data0$, "'")
                           Select Case ni
                           Case 0:
                           Case 1: Data0$ = "'"
                           Case Else: Data0$ = Mid(Data0, 1, ni - 1): If Trim(Data0$) = "" Then Data0$ = "'"
                           End Select
                     
                     Data1$ = Data0$
                     
                     Select Case Mid$(Data1$, 1, 1)
                     Case "'":
                     Case "":           Print #5, ""
                     Case Else:         Print #5, �u�����N(Data1$)
                     End Select
           
           
           
           
           Case Else: Da2$ = Data0$: '*************
                 If UCase$(Mid$(Data0$, 1, 5)) = "READ=" Then Da2$ = "READ"
                Select Case Da2$
                Case "READ": ifn2$ = Mid$(Data0$, 6): If InStr(ifn2$, ":") = 0 Then ifn2$ = Data_dsk$ + ifn2$
                     Open ifn2$ For Input As #2
                        Do: If EOF(2) Then Exit Do Else Line Input #2, Data0$
                        GoSub 100
                        Loop
                        Close #2
                Case Else: GoSub 100
                End Select
            End Select

            Exit Sub

100:
     Data0$ = Trim(Data0$)
          ni = InStr(Data0$, "'"): If ni > 0 Then Data0$ = Mid(Data0$, 1, ni - 1): ' ���Ă̍폜
     
     D1$ = Mid(Data0$, 1, 1)
     ni = InStr(Data0$, ":")
     If D1$ = "$" Then If ni > 0 And ni < 6 Then D1$ = "$:"
     If Mid(Data0$, 1, 2) = "/C" Then If ni > 0 And ni < 7 Then D1$ = "/C:"
     
     Select Case D1$
     Case "'", ""
     Case "$:": Print #5, Data0$
     Case "/C:": Print #5, Data0$
     Case Else
       Data0$ = Trim$(Data0$)
       Do: ni = InStr(Data0$, " "): If ni = 0 Then Exit Do
           'If Mid$(DATA0$, 1, 1) = "'" Then Exit Do
           Da1$ = Mid$(Data0$, 1, ni - 1): DD1$ = �u�����N(Da1$): If DD1$ <> "" Then Print #5, DD1$
           Data0$ = LTrim$(Mid$(Data0$, ni))
           Loop
           
       'If Mid$(DATA0$, 1, 1) <> "'" Then DD1$ = �u�����N(DATA0$): If DD1$ <> "" Then Print #5, DD1$
           DD1$ = �u�����N(Data0$): If DD1$ <> "" Then Print #5, DD1$
     End Select
   Return
      
      End Sub

Private Sub Data_Read_����(WTYPE$, Input_File$)
     ' Read=Fn$ �̏���
      iFN$ = Mid(Input_File$, 6)
      ni = InStr(iFN$, ":"): If ni = 0 Then iFN$ = Data_dsk + iFN$
      RET$ = Dir(iFN$)
      If RET$ = "" Then er1$ = EMS0$ + " ̧�� [ " + iFN$ + " } ������": er (er1$): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
      Open iFN$ For Input As #3
      Do: If EOF(3) Then Exit Do
           Line Input #3, Da$
           Call ����DATA����(WTYPE$, Da$)
           Loop
      Close #3
      End Sub




'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@INP����
'��������������������������������������������������������������������������������������������������������������������������������������
Sub INP����(ByVal Da$, ����s$, ����2s$)
    ' 2001.06.13
    ' ����s$     /  .   $   [   M=
    ' ����2s$    DA$=FF=123   ����2s$=125
    '            DA$=/FF=123  ����2s$=FF=125
    '            DA$=[KKK     ����2s$=""
    
     Da$ = Trim(Da$)
     ����s$ = Da$: ����2s$ = ""
          ni = InStr(Da$, "="): If ni > 1 Then ����s$ = Mid$(Da$, 1, ni): ����2s$ = Mid$(Da$, ni + 1)
          Select Case Mid$(Da$, 1, 1)
          Case "/", ".", "$": ����s$ = Mid$(Da$, 1, 1): ����2s$ = Mid$(Da$, 2)
          Case "[": ����s$ = Mid$(Da$, 1, 1): ����2s$ = ""
          End Select

    End Sub
'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@INP����3
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub INP����3(ByVal Da$, ����s$, ����2s$, ����3s$)
    ' 2002.1.12
    '(1) , ��{�� �@ni<7   exp DA$="P,1.235,300"  ����s$="P"  ����2s$="P"  ����3s$="1.235,300"
    
    '(2) = ��{��   ����s$="___=" �ƒ�`
    
    '(3) /  .  $   [  ��   exp�@����s$="/" �Ƃ���
    
    ' ����s$    /  .   $    $:   M=   *   **     $*
    ' ����2s$   /M=    .K=  $:   /MIDA  /END   *  **   $*
    ' ����3s$   exp  /Mida=ABCD   ����3s$="ABCD"
    
     DA0$ = Trim(Da$)
     ����s$ = DA0$: ����2s$ = "": ����3s$ = ""
          ni = InStr(DA0$, ","):
               If ni > 1 And ni < 7 Then
                   ����s$ = Mid$(DA0$, 1, ni): ����2s$ = ����s$: ����3s$ = Mid$(DA0$, ni + 1)
                   End If
          
          ni = InStr(DA0$, "="): If ni > 1 Then ����s$ = Mid$(DA0$, 1, ni): ����2s$ = ����s$: ����3s$ = Mid$(DA0$, ni + 1)
          
          
          Select Case Mid$(DA0$, 1, 1)
          Case "/", ".": ����s$ = Mid$(DA0$, 1, 1): If ����2s$ = "" Then ����2s$ = DA0$
                                              '   If ����3s$ = "" Then ����3s$ = Mid(Da0$, 2)
          Case "$": ����s$ = "$": ����2s$ = "$": ����3s$ = Mid(DA0$, 2)
                    ni = InStr(DA0$, ":")
                    If ni > 2 And ni < 6 Then
                        TAB1$ = Mid$(DA0$, 2, ni - 2)
                        If Rob_����ck0$(TAB1$) = "" Then ����s$ = "$:": ����2s$ = "$:": ����3s$ = Mid$(DA0$, 2)
                        End If
                    If Mid(DA0$, 1, 2) = "$*" Then
                        ����s$ = "$*": ����2s$ = "$*": ����3s$ = Mid(DA0$, 3)
                        End If
          
          Case "[": ����s$ = "[": '����3s$ = ""
          Case "*": ����s$ = "*": ����2s$ = "*": ����3s$ = ""
                    If Mid$(DA0$, 1, 2) = "**" Then
                         ����s$ = "**": ����2s$ = "**"
                         ����3s$ = "�� User ����  " + Mid(DA0$, 3)
                         End If
          
          
          End Select

    End Sub

'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@Rob �o��_Lp
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub �o��_Lp(���ڐ�, �o��DATA$(), Dpit)
     ' �o��DATA �� File�ɏo��   ���߰�ނ��l��
     ' ���ڐ�         End�� ���ڐ�=0 �Ƃ���
     ' �o��DATA
     ' �o��DATA�� 1 �߰�� �ɓ���Ȃ��� ���߰��
     ' ��_��Page$ = "New" �͉�Page �ς�
        
        A_pit = 0
        Mpit = Dpit * 4
        For ii = 1 To ���ڐ�: A_pit = A_pit + Dpit
              If UCase(Mid$(Data1$, 1, 4)) = "/LMM" Then A_pit = A_pit + Mpit - Dpit
              Next ii
        If Pa + A_pit > Pend Then If UCase(��_��Page$) <> "NEW" Then Call Page
        'Call P_�Ԋ|("")
        For ii = 1 To ���ڐ�: Pit = Dpit
              Data1$ = RTrim$(�o��DATA(ii))
              
              If UCase(Mid$(Data1$, 1, 4)) = "/LMM" Then Pit = Mpit
              If Pa + Pit > 270 Then Page
              Print #40, Data1$: Pa = Pa + Pit
              ��_��Page$ = ""
            Next ii

     ���ڐ� = 0
     End Sub




'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@���L�R�����g
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub ���L�R�����g(���Lcome��, ���Lcome$(), �����ύX$)
     Print #40, ""
     If ���Lcome�� > 0 Then
         For i = 1 To ���Lcome��:
         Moj$ = �u�����N(���Lcome$(i)): Call P_���L����(Moj$):
         Next i
         End If
     If �����ύX$ = "" Then Print #40, "" Else Print #40, "'          <<<<< "; �����ύX$; " >>>>>"
     
     Pa = Pa + ���Lcome�� * ���s�Ԋu
     ���Lcome�� = 0
     End Sub
Sub P_���L����(���L$)
    'exp    ���L$="15:___________"
    D$ = ���L$: Ntab = Val(D$)
    'D$ = �u�����N(D$)
    ni = InStr(D$, ":"): If Ntab > 0 And ni > 0 And ni < 6 Then Print #40, Tab(Ntab);: D$ = Mid$(D$, ni + 1)
    Print #40, D$
    End Sub

Function ���L_Dlp$(���L_come$, �����ύX$)
    ' 2001_7_25
    ' �����ύX$ ���g�p
    'exp    ���L_come$="15:___________"
    'exp    ���L_come$="100:___________"
    
    D$ = Trim(���L_come$): D$ = �u�����N(D$)
 '    Ntab = Val(D$)

    
    '$12:___ �� ck
    ni = InStr(D$, ":"):
    If ni > 0 And ni < 5 Then
          TAB1$ = Mid$(D$, 1, ni - 1)
          If Rob_����ck0$(TAB1$) = "" Then
               Ntab = Val(D$)
               If Ntab > 0 Then D$ = Space$(Ntab) + Mid$(D$, ni + 1)
               End If
          End If
    
    ���L_Dlp$ = D$

    End Function

'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'���@�@�@�@NG_�o��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub NG_�o��(�v�Z����$, NG�ӏ��� As Integer, NG���e$(), Dpit)
     '  500 ���� �����o�͏o���܂���
    ReDim �o��DATA$(510)
    Dim �ӏ��� As Integer
    D1$ = Space$(15)
    �ӏ��� = NG�ӏ���: If �ӏ��� > 500 Then �ӏ��� = 500
    
     ni = Len(�v�Z����$) + N����(�v�Z����$) + 3 + 18 + 5
    
    Select Case NG�ӏ���
    Case 0:
                �o��DATA$(1) = D1$ + String$(ni, "=")
                �o��DATA$(2) = D1$ + "   " + �v�Z����$ + " �� NG�͂���܂���"
                �o��DATA$(3) = D1$ + String$(ni, "=")
                �o��DATA$(4) = ""
                �o��DATA$(5) = ""
                
                �ӏ��� = 5
    
    Case Else:
                �o��DATA$(1) = D1$ + String$(ni, "=")
                �o��DATA$(2) = D1$ + "   " + �v�Z����$ + " �� NG ���X�g"
                �o��DATA$(3) = D1$ + String$(ni, "=")
                For ii = 1 To �ӏ���
                    �o��DATA$(3 + ii) = D1$ + NG���e$(ii)
                    Next ii
                �o��DATA$(�ӏ��� + 4) = ""
                �o��DATA$(�ӏ��� + 5) = ""
                �ӏ��� = �ӏ��� + 5
    End Select
    
    Call �o��_Lp(�ӏ���, �o��DATA$(), Dpit)
    End Sub
           
'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��        ���w�v�Z                                                                                                                  ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
Sub Calu_Gauss(NN1, aa1(), Y1(), X1())
    ' Gauss �̏����@
    ' AA1(i,j)   i �s  j ��
    ' �Ίp�v�f�� 0�̏ꍇ�v�Z�ł��Ȃ� �́@Err �Ŏ~�܂�
    '     A(1,1)*X(1)+A(1,2)*X(2)+A(1,3)*X(3)����+A(1,j)*X(j)+=Y(1)
    '     A(2,1)*X(1)+A(2,2)*X(2)+A(2,3)*X(3)����+A(2,j)*X(j)+=Y(2)
    '     A(3,1)*X(1)+A(3,2)*X(2)+A(3,3)*X(3)����+A(3,j)*X(j)+=Y(3)
    '     A(i,1)*X(1)+A(i,2)*X(2)+A(i,3)*X(3)����+A(i,j)*X(j)+=Y(i)
    '
    ' X1(i) ����
    Mm = NN1 - 1
    For i = 1 To Mm:        LL = i + 1
        For j = LL To NN1
           If aa1(j, i) <> 0 Then
                 For kk = LL To NN1:      aa1(j, kk) = aa1(j, kk) - aa1(i, kk) * aa1(j, i) / aa1(i, i):    Next kk
                End If
           Y1(j) = Y1(j) - Y1(i) * aa1(j, i) / aa1(i, i)
           Next j
    Next i
    
    X1(NN1) = Y1(NN1) / aa1(NN1, NN1)
    
    For i = 1 To Mm
        kk = NN1 - i: LL = kk + 1
        For j = LL To NN1:    Y1(kk) = Y1(kk) - X1(j) * aa1(kk, j):  Next j
        X1(kk) = Y1(kk) / aa1(kk, kk)
        Next i
    'Stop
    End Sub

Sub CALU_KH()
    ' ���M�G���W�j�A�����O��p
    ReDim Data1(100)
    INP_Fn$ = "C:\Robot_User\Kh.dat": ' input data
    OUT_Fn$ = "C:\Robot_User\Kh.res": ' Output data
    NN = 0: a1 = 0: B1 = 0
    Open INP_Fn$ For Input As #5
    Open OUT_Fn$ For Output As #6


    Do
        If EOF(5) Then Da$ = "/END" Else Line Input #5, Da$
        Print #6, Da$
        NN = NN + 1: Da$ = Trim(Da$)
        Select Case Trim(UCase(Mid(Da$, 1, 2)))
        Case "/E": Exit Do
        Case "*": Da$ = Trim(Mid(Da$, 3))
                   �� = 1
                   Do
                       ni = InStr(Da$, " ")
                       If ni = 0 Then Data1(��) = Val(Da$): Exit Do
                       Data1(��) = Val(Mid(Da$, 1, ni)): Da$ = Trim(Mid(Da$, ni + 1))
                       �� = �� + 1
                       Loop

           If �� = 4 Then
                Call Calu_AB(Data1(1), Data1(2), Data1(3), Data1(4), a, b, a2, B2)
                If a1 <> 0 Or B1 <> 0 Then
                     XX = -(B1 - B2) / (a1 - a2)
                     YY = a1 * XX + B1
                     Print #6, Space$(15); "T="; XX; ",  Kh="; YY

                     End If
                a1 = a2: B1 = B2
                Print #6, ""
                Else
                er1$ = "*�װ " + str(NN) + " �Ԗ� �ް��   ��<>4 �ł���"
                MsgBox er1$
                Stop
                End If
        Case Else: a1 = 0: B1 = 0
        End Select

        Loop
    Close

    On Error GoTo NG1
        Unload ShoriTyuuX
NG1:
      er1$ = "�v�Z�I��"
      MsgBox er1$


    End Sub

Private Sub Calu_AB(T1, KH1, T2, KH2, a, b, a2, B2)
    ' ���M�G���W�j�A�����O��p
    '
    '  T1,Kh1,   T2,Kh2
    '
    '  Kh=A*T^B        A,B  �����߂�
    '

    b = Log(KH1 / KH2) / Log(T1 / T2)
    a = KH1 / T1 ^ b
    res$ = Space$(15) + "Kh =" + str(a) + " * T ^" + str(b)
    Print #6, res$

    a2 = (KH1 - KH2) / (T1 - T2)
    B2 = KH1 - a2 * T1
    Print #6, Space$(15); "A="; a2; ",   B="; B2
    End Sub




'��������������������������������������������������������������������������������������������������������������������������������������
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��            UXF �֐�                                                                                                              ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��                                                                                                                                  ��
'��        2002.7.20                                                                                                                 ��
'��                                                                                                                                  ��
'��������������������������������������������������������������������������������������������������������������������������������������
'
' ���W�n�� 1�ی��̍��W�Ƃ��܂� �������_
' ���W�͑S�� UXF_���_(X0, Y0) ����̍��W�ł�
' �p�x�� X���W+����Ƃ� �����v���� + �Ƃ���

Sub �}������(�}�ʖ�$, �k��$, ZU_Scale, �}�ԍ�$)
     Line Input #2, �}�ʖ�$: ' �m�F���.Print �}�ʖ�$; "  ";
         
     Line Input #2, �}�ԍ�$: ' �m�F���.Print �}�ԍ�$
     
     Line Input #2, �k��$: ' �m�F���.Print �k��$; "  ";
         ni = InStr(�k��$, ":")
         If ni = 0 Then ni = InStr(�k��$, "/")
         If ni = 0 Then ��er = "   [" & �k��$ & "] �}�ʃX�P�[����   1:____ 1/____   S 1:____   S 1/____    S=1:___   or  S=1/___ �łȂ�"
         
         ZU_Scale = Val(Mid$(�k��$, ni + 1))
          
         If ZU_Scale <= 0 Then ��er = ��er & "  �}�ʃX�P�[��  <= 0":
         If ��er <> "" Then If ����CK > 99 Then er (��er): Stop: Exit Sub Else Exit Sub

    End Sub

Sub �}_File_��(Ofn$, Input_F$, Output_F$)
    ' ̧�ٖ������߂�
    ' Input_F$   UXF File �̏o��̧�ٖ�
    ' Output_F$  DXF File �̏o��̧�ٖ�
     
     FN$ = Ofn$
     ni = InStr(FN$, "."):     If ni > 1 Then FN$ = Mid(FN$, 1, ni - 1)
     
     Input_F$ = FN$ + ".UXF"
          Do: ni = InStr(Input_F$, ":"): If ni = 0 Then Exit Do
              Input_F$ = Mid(Input_F$, ni + 1)
              Loop
              Input_F$ = TEMP_Data_dsk + Input_F$
     
     If �ϊ�type$ = "" Then �ϊ�type$ = "Dxf"
     Output_F$ = FN$ + "." + �ϊ�type$
     ni = InStr(Output_F$, ":"):     If ni = 0 Then Output_F$ = Dxf_dsk + Output_F$
     
    End Sub

Sub �}_File_Start(Input_F$, �ϊ�type$, DataType$, �p��size$, �}_Scale, �}LAYER_N, �}Zlayer$())
    
           '**************************************************************************
           On Error Resume Next
                Close #60
                On Error GoTo 0
           '**************************************************************************
    
    Open Input_F$ For Output As #60
          Print #60, UXF_�p��size(�p��size$)
          Print #60, UXF_�ϊ�type(�ϊ�type$)
          Print #60, UXF_Datatype(DataType$)
          Print #60, UXF_Scale(�}_Scale)
          For ii = 1 To �}LAYER_N
          Print #60, "     " + UXF_Layer���o�^(�}Zlayer$(ii))
          Next ii
          
          Print #60, UXF_Start("")
   
   
   End Sub


Sub �}_���_(���_X, ���_Y)
  '[[[[[  ���_ ]]]]]
      
      Print #60, "'"
      Print #60, "'����������������������������������������������������������������������������������������������������������"
      Print #60, "'��   ���_                                                                                               ��"
      Print #60, "'����������������������������������������������������������������������������������������������������������"
      Print #60, UXF_���_(���_X, ���_Y)

   End Sub

