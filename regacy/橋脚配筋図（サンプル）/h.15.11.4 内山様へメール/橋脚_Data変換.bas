Attribute VB_Name = "���r_Data�ϊ�"
'������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@���rData�ϊ�                                  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@  �@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��           2003.10.31                                  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@   �@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'������������������������������������������������������������������������������������������������������������������������
'�@���rData�ϊ�

Option Explicit

      Dim ��}File_s As String
      Dim ��}�ϊ�File_s As String


      '[[[ ���� ���rData ]]]
      Dim ����_Datas As String
      Dim E_SData(2000) As String, E_SDi As Integer
      Dim E_�YData(2000) As String, E_�YDi As Integer
      Dim E_��bData(2000) As String, E_��bDi As Integer
      Dim E_��Data(2000) As String, E_��Di As Integer
      Dim E_StoperData(2000) As String, E_StoperDi As Integer
      Dim E_����Data(2000) As String, E_����Di As Integer
      Dim E_��Data(2000) As String, E_��Di As Integer
      Dim E_�}�ݒ�Data(3000) As String, E_�}�ݒ�Di As Integer


      '[[[ �V�K ���rData ]]]
      Dim �YData(200) As String, �YDi As Integer
      Dim ��bData(200) As String, ��bDi As Integer
      Dim ��Data(200) As String, ��Di As Integer
      Dim StoperData(200) As String, StoperDi As Integer
      Dim ����Data(200) As String, ����Di As Integer
      Dim ��Data(200) As String, ��Di As Integer
      Dim �}�ݒ�Data(1000) As String, �}�ݒ�Di As Integer


         Dim ��_�N�_Loop��_Ty��i As Integer  ' ��_�N�_Loop��_Type ��ސ�i
         Dim ��_�I�_Loop��_Ty��i As Integer  ' ��_�I�_Loop��_Type ��ސ�i
         Dim �N�_Loop���ii(50) As Integer, �I�_Loop���ii(50) As Integer

          Dim ��_Loop�O����i As Integer
          Dim ��_Loop������i As Integer



Sub ���r��}���s()
     Dim ii As Integer
   ' ����CK = 200: er ("����CK = 200")
     ��er = ""
    
     Call ���rData�ϊ�
     
     If ��er <> "" Then er (" ��}���s���~���܂�"): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     
     
     Call ���rData�}�ݒ�
     
     ��}File_s = Data_dsk$ + "Text.dat"
     
     Open ��}File_s For Output As #31
     
     '[[[  Text Data �쐬 ]]]
     Print #31, "//���rData"
     For ii = 1 To �YDi:     Print #31, Text_�ϊ�s(�YData(ii)):  Next ii
     For ii = 1 To ��bDi:   Print #31, Text_�ϊ�s(��bData(ii)):  Next ii
     For ii = 1 To ��Di:     Print #31, Text_�ϊ�s(��Data(ii)):  Next ii
     For ii = 1 To StoperDi: Print #31, Text_�ϊ�s(StoperData(ii)):  Next ii
     For ii = 1 To ����Di:   Print #31, Text_�ϊ�s(����Data(ii)):  Next ii
     For ii = 1 To ��Di:     Print #31, Text_�ϊ�s(��Data(ii)):  Next ii
     For ii = 1 To �}�ݒ�Di: Print #31, Text_�ϊ�s(�}�ݒ�Data(ii)):  Next ii
  
     Close #31

    Call ���r�}��_�o��(��}File_s)

    
     
     
     '[[[  Text_2 Data �쐬 ]]]
     Call Read_����_���rData
     ��}�ϊ�File_s = Data_dsk$ + "Text_2.dat"
     
     Open ��}�ϊ�File_s For Output As #31
     
     Select Case E_SDi
     Case 0
            Print #31, "//���rData"
            For ii = 1 To �YDi:     Print #31, Text_�ϊ�s(�YData(ii)):  Next ii
            For ii = 1 To ��bDi:   Print #31, Text_�ϊ�s(��bData(ii)):  Next ii
            For ii = 1 To ��Di:     Print #31, Text_�ϊ�s(��Data(ii)):  Next ii
            For ii = 1 To StoperDi: Print #31, Text_�ϊ�s(StoperData(ii)):  Next ii
            For ii = 1 To ����Di:   Print #31, Text_�ϊ�s(����Data(ii)):  Next ii
            For ii = 1 To ��Di:     Print #31, Text_�ϊ�s(��Data(ii)):  Next ii
            For ii = 1 To �}�ݒ�Di: Print #31, Text_�ϊ�s(�}�ݒ�Data(ii)):  Next ii
     
     Case Else
            ����_Datas = "*"
            Print #31, "//���rData"
            For ii = 1 To E_SDi:      Call SP_����_Data_Memo_Write(E_SData(ii)):  Next ii


            '[[[ �YData ]]]
            Select Case pUpdate(5)
            Case 1:
                        For ii = 1 To �YDi: Print #31, Text_�ϊ�s(�YData(ii)): Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_�YDi:     Call SP_����_Data_Memo_Write(E_�YData(ii)): Next ii
            Case Else
                        For ii = 1 To E_�YDi:     Call SP_����_Data_ReWrite(E_�YData(ii)):  Next ii
            End Select

            '[[[ ��bData ]]]
            Select Case pUpdate(4)
            Case 1:
                        For ii = 1 To ��bDi: Print #31, Text_�ϊ�s(��bData(ii)): Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_��bDi:   Call SP_����_Data_Memo_Write(E_��bData(ii)): Next ii
            Case Else
                        For ii = 1 To E_��bDi:   Call SP_����_Data_ReWrite(E_��bData(ii)):  Next ii
            End Select
            
            
            
            '[[[ ��Data ]]]
            Select Case pUpdate(3)
            Case 1:
                        For ii = 1 To ��Di: Print #31, Text_�ϊ�s(��Data(ii)): Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_��Di:    Call SP_����_Data_Memo_Write(E_��Data(ii)): Next ii
            Case Else
                        For ii = 1 To E_��Di:    Call SP_����_Data_ReWrite(E_��Data(ii)):  Next ii
            End Select
            

            '[[[ StoperData ]]]
            Select Case pUpdate(2)
            Case 1:
                        For ii = 1 To StoperDi: Print #31, Text_�ϊ�s(StoperData(ii)): Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_StoperDi:  Call SP_����_Data_Memo_Write(E_StoperData(ii)): Next ii
            Case Else
                        For ii = 1 To E_StoperDi:  Call SP_����_Data_ReWrite(E_StoperData(ii)):  Next ii
            End Select
            
            
            '[[[ ����Data ]]]
            Select Case pUpdate(2)
            Case 1:
                        For ii = 1 To ����Di: Print #31, Text_�ϊ�s(����Data(ii)): Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_����Di:   Call SP_����_Data_Memo_Write(E_����Data(ii)): Next ii
            Case Else
                        For ii = 1 To E_����Di:   Call SP_����_Data_ReWrite(E_����Data(ii)):  Next ii
            End Select


            '[[[ ��Data ]]]
            Select Case pUpdate(1)
            Case 1:
                        For ii = 1 To ��Di: Print #31, Text_�ϊ�s(��Data(ii)): Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_��Di:     Call SP_����_Data_Memo_Write(E_��Data(ii)): Next ii
            Case Else
                        For ii = 1 To E_��Di:     Call SP_����_Data_ReWrite(E_��Data(ii)):  Next ii
            End Select
            
            '[[[ �}�ݒ� ]]]
                         For ii = 1 To �}�ݒ�Di: Print #31, Text_�ϊ�s(�}�ݒ�Data(ii)):  Next ii
                        Print #31, cr + cr + "         '[[[ ���� �ް��@]]]"
                        For ii = 1 To E_�}�ݒ�Di:  Call SP_����_Data_Memo_Write(E_�}�ݒ�Data(ii)): Next ii
  
     
     
     End Select
     Close #31
    
    
   ' Call ���rData�ύX
    
    End Sub




Private Function Text_�ϊ�s(ByVal Da As String) As String
     Dim D2s As String
     Da = Trim(Da)
     D2s = Mid(Da, 1, 2)
     Select Case D2s
     Case ""
     Case "'��": Da = cr + cr + Da
     Case "'��", "'��"
     Case "'[": Da = cr + Space(5) + Da
     Case "' ": Da = Space(15) + Da
     Case "'*": Da = Space(15) + Da
     Case "'?": Da = Space(15) + Da
     Case "'e": Da = Space(15) + Da
     Case "  "
     Case Else: Da = Space(10) + Da
     End Select
     Text_�ϊ�s = Da
     End Function

Sub SP_����_Data_ReWrite(ByVal Da As String)
   ' ����_Data�� ���� ���� re����
    Select Case Trim(Da)
    Case "":     ' If ����_Datas <> "" Then Print #31, ""
    Case Else:    Print #31, Text_�ϊ�s(Da)
    End Select
    ����_Datas = Trim(Da)
    End Sub

Sub SP_����_Data_Memo_Write(ByVal Da As String)
   ' ����_Data�� ���� ���� Memo����
    Dim D1s As String
    D1s = Mid(Trim(Da), 1, 1)
    Select Case D1s
    Case ""
    Case "'"
    Case Else:    Print #31, Text_�ϊ�s("'*   " + Da)
    End Select
   
    End Sub

Sub ���rData�ύX()
      ' ���r�}��.dat �̕ύX
      Dim Fn1 As String, Fn2 As String, Fn3 As String
    
      
      Fn1 = ��}�ϊ�File_s ' �쐬�ϊ�File
      Fn2 = Data_dsk$ + ���r_Data��$ + ".dat"  ' ���r�}��.dat
      Fn3 = Data_dsk$ + ���r_Data��$ + ".ba2"  ' ���r�}��.ba2

     If Dir(Fn1) = "" Then er ("Data �� �ϊ� ���ł��܂��� " + cr + "��}�J�n�����s���Ă�������  "): Exit Sub
      
      If Dir(Fn3) <> "" Then Kill Fn3
      If Dir(Fn2) <> "" Then Name Fn2 As Fn3
      
      If Dir(Fn1) <> "" Then Name Fn1 As Fn2
    
     er ("���rData�ύX ok")
    
    End Sub


Private Sub Read_����_���rData()
     Dim ni As Integer, ni2 As Integer
     Dim Da As String, Da2 As String, Fname1s As String
     Dim ����s As String, D2s As String
     
     E_SDi = 0
     ����s = "S": E_�YDi = 0: E_��bDi = 0: E_StoperDi = 0: E_����Di = 0: E_��Di = 0: E_�}�ݒ�Di = 0
     

     Fname1s = Data_dsk$ + ���r_Data��$ + ".dat"
     
     If Dir(Fname1s) = "" Then Exit Sub
     
     Open Fname1s For Input As #30
     Do: If EOF(30) Then Exit Do
          Line Input #30, Da
          D2s = Mid(Trim(Da), 1, 2)
          Select Case D2s
          Case "'��"
                   Do
                       If EOF(30) Then Da2 = "�� END" Else Line Input #30, Da2
                        ni = InStr(Da2, "��")
                       If ni > 1 Then
                            D2s = Trim(Mid(Da2, ni + 1))
                            ni = InStr(D2s, " "): If ni > 0 Then D2s = Mid(D2s, 1, ni - 1)
                            Exit Do
                            End If
                       Loop
                  Select Case D2s
                  Case "�Y":            E_�YData(1) = Da: E_�YData(2) = Da2: E_�YDi = 2: ����s = "�Y"
                  Case "��b":          E_��bData(1) = Da: E_��bData(2) = Da2: E_��bDi = 2: ����s = "��b"
                  Case "��":            E_��Data(1) = Da: E_��Data(2) = Da2: E_��Di = 2: ����s = "��"
                  Case "�į��":         E_StoperData(1) = Da: E_StoperData(2) = Da2: E_StoperDi = 2: ����s = "Stoper"
                  Case "�B��", "����":  E_����Data(1) = Da: E_����Data(2) = Da2: E_����Di = 2: ����s = "����"
                  Case "��":            E_��Data(1) = Da: E_��Data(2) = Da2: E_��Di = 2: ����s = "��"
                  Case "���r�}":        E_�}�ݒ�Data(1) = Da: E_�}�ݒ�Data(2) = Da2: E_�}�ݒ�Di = 2: ����s = "�}�ݒ�"
                  Case "END": Exit Do
                  Case Else:   'Stop
                              Exit Do
                  End Select
          
          
          Case Else
                 Select Case ����s
                 Case "S":       E_SDi = E_SDi + 1:            E_SData(E_SDi) = Da
                 Case "�Y":      E_�YDi = E_�YDi + 1:          E_�YData(E_�YDi) = Da
                 Case "��b":    E_��bDi = E_��bDi + 1:      E_��bData(E_��bDi) = Da
                 Case "��":      E_��Di = E_��Di + 1:          E_��Data(E_��Di) = Da
                 Case "Stoper":  E_StoperDi = E_StoperDi + 1:  E_StoperData(E_StoperDi) = Da
                 Case "����":    E_����Di = E_����Di + 1:      E_����Data(E_����Di) = Da
                 Case "��":      E_��Di = E_��Di + 1:          E_��Data(E_��Di) = Da
                 Case "�}�ݒ�":  E_�}�ݒ�Di = E_�}�ݒ�Di + 1:  E_�}�ݒ�Data(E_�}�ݒ�Di) = Da
                 Case Else: er ("Read_����_���rData" + cr + cr + Da2): Stop
                 End Select
          
          End Select
      
     Loop
     Close #30
     
     
     
    End Sub


Private Sub ���rData�ϊ�()
    Dim ii As Integer, i2 As Integer, ni As Integer, n1 As Integer, n2 As Integer, TYi As Integer
    Dim Wda As String, D1s As String, D2s As String, D3s As String, D4s As String, Ds(200) As String, CKs As String
    Dim Di(300) As Single, BB As Single, DD As Single, Piti As Single
                        
    Dim K1 As Single, K2 As Single, K3 As Single, K4 As Single, K5 As Single, h1 As Single, h2 As Single, h3 As Single, D0 As Single, D1 As Single, D2 As Single, L1 As Single, L2 As Single


   For ii = 0 To 6
   Di(ii) = pOutputPriority(ii)
   Next ii




'����������������������������������������������������������������������������������������������������������������������������
'�� �� �Y                                                                                                                  ��
'����������������������������������������������������������������������������������������������������������������������������
      Lm = 0
      Lm = Lm + 1: �YData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
      Lm = Lm + 1: �YData(Lm) = "'�� �� �Y                                                                                                                  ��"
      Lm = Lm + 1: �YData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
      Lm = Lm + 1: �YData(Lm) = ".�Y"
      Lm = Lm + 1: �YData(Lm) = "D=" + F9(pKuikei)
      Lm = Lm + 1: �YData(Lm) = "L=" + F9(pKuinaga)
      
      Lm = Lm + 1: �YData(Lm) = "'[[[ S ��߰���� �ł�  ]]]"
                       Lm = Lm + 1: �YData(Lm) = "'     �ӏ���-�S��-�ގ�       exp  42-��13-SR235"
                       Lm = Lm + 1: �YData(Lm) = "' n    : ��߰���؂� �{���ł�      pkuispesa"
                       Lm = Lm + 1: �YData(Lm) = "' L    : ��߰���؂̌`��(����)�ł�   ���� �͉������̏��Ԃł�"
                       Lm = Lm + 1: �YData(Lm) = "' H    : ��߰���؂� �����ł�"
                       Lm = Lm + 1: �YData(Lm) = "' @    : ��߰���؂� �߯��ł�"
                       Lm = Lm + 1: �YData(Lm) = "'exp     S=42-��13-SR235_n6_L50+95+95+50_H70_@600+5700+5700+5700+5700+5700+5700_SR235           ' n ��߰���ӏ�=6   L �͉������"
           D1s = "_L50+95+95+50_H70"
           Wda = pKuiKumitateW(2)
           Call SP_Data��i(Wda, n1, Di)
           D2s = "_@" + F_Moj_s1(n1, Di)
           D3s = "_SR235"
      
           Lm = Lm + 1: �YData(Lm) = "S=" + f0(n1 * pKuiSpesaN) + "-��" + f0(pKuiKumiDai(2)) + "-SR235_n" + f0(pKuiSpesaN) + D1s + D2s + D3s


          
      Lm = Lm + 1: �YData(Lm) = "'[[[ K �� �Y��� �ł�  ]]]"
                       Lm = Lm + 1: �YData(Lm) = "' K    : ���� ��؈ʒu�ł�"
                       Lm = Lm + 1: �YData(Lm) = "' A    : ��b���̱ݶ������ł�"
                       Lm = Lm + 1: �YData(Lm) = "' L    : �S�ؒ����ł�  ���� �͏ォ�牺�̏��Ԃł�"
                       Lm = Lm + 1: �YData(Lm) = "'            ���� L____    ? W:�޽����   K:�@�B�p��   J: Joint�����ł�  exp +J1240+"
                       Lm = Lm + 1: �YData(Lm) = "' SD   : �ގ�s exp SD390"


                       Lm = Lm + 1: �YData(Lm) = "'exp  K=14-D32_K156_A1220_L12000+K+12000+K+10000+J1240+6360_SD390         '���"
                       Lm = Lm + 1: �YData(Lm) = "'exp  K=14-D32_K156_A1220_L11500+K+10000+K+10000+K+3800_SD390             '���"
                       Lm = Lm + 1: �YData(Lm) = "'exp  K=12-D29-D25_A1220_K156_L10000+J2000+4620_SD390                     '���   ��،a���قȂ�ꍇ"

           Dim �Y��ؔ��s As String, �Y���AnchorLs As String
           Dim �Y��؏���� As Single, �Y��ؐc��� As Single
           Dim �Y��؎�ސ�i As Integer
           Dim �Y���n(5) As Integer, �Y��،as(5) As String, �Y���Ls(5) As String, �Y��،p��s(5) As String
               �Y��؎�ސ�i = 0
               �Y��؏���� = pKuiKaburi
               �Y��ؐc��� = pKuiKaburi0
               �Y��ؔ��s = "_K" + F9(pKuiKaburi0)
               �Y���AnchorLs = "_A" + F9(pKuiTouNaga)
           For ii = 1 To 2
              If pKuiJiku(ii, 2) > 0 Then �Y��؎�ސ�i = �Y��؎�ސ�i + 1
           
              �Y��،as(ii) = "": �Y���Ls(ii) = ""
              For i2 = 1 To 13 Step 3: If pKuiJiku(ii, i2) = 0 Then Exit For
                 �Y��،as(ii) = �Y��،as(ii) + "-D" + f0(pKuiJiku(ii, i2))
                 �Y���Ls(ii) = �Y���Ls(ii) + "+" + F9(pKuiJiku(ii, i2 + 1))
                 Select Case pKuiJiku(ii, i2 + 2)
                 Case -1:  �Y���Ls(ii) = �Y���Ls(ii) + "+K"
                 Case -2:  �Y���Ls(ii) = �Y���Ls(ii) + "+W"
                 Case Is > 0: �Y���Ls(ii) = �Y���Ls(ii) + "+J" + F9(pKuiJiku(ii, i2 + 2))
                 Case Else
                 End Select
                 Next i2
              Next ii

           If �Y��؎�ސ�i = 0 Then er ("�Y��؎�ސ�=0"): Stop
           For ii = 1 To 2
              If pKuiJiku(ii, 2) = 0 Then Exit For
              �Y���n(ii) = pKuiHon / �Y��؎�ސ�i
              Lm = Lm + 1
              �YData(Lm) = "K=" + f0(�Y���n(ii)) + �Y��،as(ii) + �Y��ؔ��s + �Y���AnchorLs + "_L" + Mid(�Y���Ls(ii), 2) + "_SD390"
              Next ii



          Lm = Lm + 1: �YData(Lm) = "'[[[ HOOP �� ̰�ߓS�� �ł�  ]]]   ���̰�߂�  K03 ����"
                       Lm = Lm + 1: �YData(Lm) = "' Z    : ̰�߂� ���Ĉʒu�ł�(��b���[����)    �ŏ���̰�߂̂ݕK�v�ł�"
                       Lm = Lm + 1: �YData(Lm) = "' D    : �S�،a"
                       Lm = Lm + 1: �YData(Lm) = "' �a   : ̰�߂� ���a�ł�"
                       Lm = Lm + 1: �YData(Lm) = "' @    : ̰�߂� �߯��ł�   exp @3x200+4x125+48x125"
                       Lm = Lm + 1: �YData(Lm) = "' SD   : �ގ�"


                       Lm = Lm + 1: �YData(Lm) = "'exp   HOOP=Z-1100_D22_�a1242_@3x200+4x125+48x125_SD390            ' ���Ĉʒu_̰�ߓS��_���a_�߯�"
                       Lm = Lm + 1: �YData(Lm) = "'exp   HOOP=D19_�a1239_@56x150_SD390                "

           Dim ��Hoop��i As Integer, ��Hoop�ʒui(2000) As Single
           Dim Hoop��ސ�i As Integer, Hoop�S�،ai As Single
           Dim HoopStart�ʒui As Single, HoopStart�ʒus As String, Hoop���as(50) As String
           Dim Hoop�S�،as(50) As String
           Dim HoopPits(50) As String
           
           HoopStart�ʒui = pKuiStr(1, 2) * pKuiStr(1, 3) + pKuiStr(2, 2) * pKuiStr(2, 3)
           HoopStart�ʒus = "Z" + F9(-HoopStart�ʒui) + "_"
           ��Hoop��i = 1: ��Hoop�ʒui(1) = HoopStart�ʒui
           Hoop��ސ�i = 0:  Hoop�S�،ai = 0
           For ii = 1 To 15: If pKuiStr(ii, 1) = 0 Then Exit For
           
               If Hoop�S�،ai <> pKuiStr(ii, 1) Then
                    Hoop��ސ�i = Hoop��ސ�i + 1: Hoop�S�،ai = pKuiStr(ii, 1)
                    Hoop�S�،as(Hoop��ސ�i) = "D" + f0(Hoop�S�،ai): HoopPits(Hoop��ސ�i) = ""
                    End If
               HoopPits(Hoop��ސ�i) = HoopPits(Hoop��ސ�i) + "+" + f0(pKuiStr(ii, 2)) + "x" + F9(pKuiStr(ii, 3))
               For i2 = 1 To pKuiStr(ii, 2)
                    ��Hoop��i = ��Hoop��i + 1
                    ��Hoop�ʒui(��Hoop��i) = ��Hoop�ʒui(��Hoop��i - 1) + pKuiStr(ii, 3)
                    Next i2
               Next ii

           If Hoop��ސ�i = 0 Then er ("Hoop��ސ�=0"): Stop

           For ii = 1 To Hoop��ސ�i
                Hoop���as(ii) = "_�a" + F9(pKuikei - 2 * �Y��؏���� + Val(Mid(Hoop�S�،as(ii), 2)))
                Lm = Lm + 1:  �YData(Lm) = "HOOP=" + HoopStart�ʒus + Hoop�S�،as(ii) + Hoop���as(ii) + "_@" + Mid(HoopPits(ii), 2) + "_SD390"
                HoopStart�ʒus = ""
                Next ii



           Lm = Lm + 1: �YData(Lm) = "'[[[ �g���� ]]]"
                         Lm = Lm + 1: �YData(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: �YData(Lm) = "' SD   : �ގ�s"
                         Lm = Lm + 1: �YData(Lm) = "' �a   : ̰�߂� ���a�ł�"
                         Lm = Lm + 1: �YData(Lm) = "' �ʒu   exp 12_32_52  �ʒu(���Ԗ�)"

                        Lm = Lm + 1: �YData(Lm) = "'exp  �g����=D25_SD390_�a1245_12_32_52_69_86_99_112   "

           Dim �g���،as As String, �g���ؒ��as As String, �g���؈ʒus As String
                �g���،as = "D" + f0(pKuiKumiDai(1))
                �g���ؒ��as = "_�a" + F9(pKuikei - 2 * �Y��؏���� + pKuiKumiDai(1))
                �g���؈ʒus = ""

           D1s = pKuiKumitateW(1):     Call SP_Data��i(D1s, n1, Di): Di(0) = 0 ' D1s="3150+2550x6+2900+3000+2800+2600+2800"
               For ii = 1 To n1: Di(ii) = Di(ii - 1) + Di(ii):   Next ii
               For ii = 1 To n1: n2 = Hoop_�ʒu(Di(ii), ��Hoop��i, ��Hoop�ʒui)
                   �g���؈ʒus = �g���؈ʒus + "_" + f0(n2)
                   Next ii
              
              Lm = Lm + 1:  �YData(Lm) = "�g����=" + �g���،as + �g���ؒ��as + �g���؈ʒus + "_SD390"

          Lm = Lm + 1: �YData(Lm) = "'[[[ HOOP��� ]]]"
                         Lm = Lm + 1: �YData(Lm) = "' n"
                         Lm = Lm + 1: �YData(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: �YData(Lm) = "' SD   : �ގ�"
                         Lm = Lm + 1: �YData(Lm) = "' L    : �S�ؒ����ł�"
                         Lm = Lm + 1: �YData(Lm) = "'exp      HOOP��=8-D25_L837_SD390    "
              Lm = Lm + 1:  �YData(Lm) = "HOOP��=8-D25_L837_SD390"
           �YDi = Lm

     
'����������������������������������������������������������������������������������������������������������������������������
'�� �� ��b                                                                                                                ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim ��b_�㏃��� As Single, ��b_������� As Single, ��b_������� As Single
        ��b_�㏃��� = pKisoKaburi(1)
        ��b_������� = pKisoKaburi(2)
        ��b_������� = pKisoKaburi(3)
        
        Dim ��b_BX As Single, ��b_BY As Single, ��b_H1 As Single, ��b_H2 As Single, ��b_��H As Single
        ��b_BX = pW(7)
        ��b_BY = pB(7) + pB(8) + pB(9)
        ��b_H1 = pH(6): ��b_H2 = pH(5): ��b_��H = ��b_H1 + ��b_H2
        
        Lm = 0
        
        Lm = Lm + 1: ��bData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��bData(Lm) = "'�� �� ��b                                                                                                                ��"
        Lm = Lm + 1: ��bData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��bData(Lm) = ".��b"
    'Lm = Lm + 1: ��bData(Lm) = "errck" '***
        Lm = Lm + 1: ��bData(Lm) = "BX=" + F9(��b_BX)                                   '*  BX=   :   ��b X�������ł�   PW(7)                exp  BX=5250+5250
        Lm = Lm + 1: ��bData(Lm) = "BY=" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '*  BY=   :   ��b Y�������ł�   PB(7)+PB(8)+PB(9)    exp  BY=3650+1600+1600+3650
        Lm = Lm + 1: ��bData(Lm) = "H=" + F9(��b_H1) + "+" + F9(��b_H2)                '*  H=    :   ��b �����ł�      PH(6)+PH(5)          exp  H=2000+500

        Lm = Lm + 1: ��bData(Lm) = "�̺�=100" '         �̺�=100                '? �̺�=  :  ��b �̺݂̌����ł�                      exp  �̺�=100

        Lm = Lm + 1: ��bData(Lm) = "'[[[ �Y�ʒu �ł�  ]]]         '*?  X,Y  :  ��������̋���      pkuihaic1()    pkuihaic2()"
                   '    �Y�ʒu
                   '      -3750,3750     0,3750     3750,3750
                   '      -3750,0                   3750,0
                   '      -3750,-3750    0,-3750    3750,-3750

                Lm = Lm + 1: ��bData(Lm) = "�Y�ʒu"
                Call �Y_�ʒu(��bData)



        Lm = Lm + 1: ��bData(Lm) = "'[[[ Fn �� Y�����S�� �ł�  ]]]"
                         Lm = Lm + 1: ��bData(Lm) = "' D    : �S�،a     exp D32"
                         Lm = Lm + 1: ��bData(Lm) = "' K    : ���� �S�؈ʒu�ł�  �����"
                         Lm = Lm + 1: ��bData(Lm) = "' @    : �S���߯��ł�         exp @95+155+80x125+155"
                         Lm = Lm + 1: ��bData(Lm) = "' B    : �S�؂̒����ł�       W�� �K�X���ڈʒu�ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' H    : �S�؂̍����ł�"

                         Lm = Lm + 1: ��bData(Lm) = "'exp  F1=D32_K95_@95+155+80x125+155_BF+10014+F_SD390                          'Y ��S��  @�߯��͑��ʂ���"
                         Lm = Lm + 1: ��bData(Lm) = "'exp  F2=D32_K95_@95+155+80x125+155_B3563+1092+W+2092+3563_H2328+483_SD390    'Y ��S��  @�߯��͑��ʂ���"
                         Lm = Lm + 1: ��bData(Lm) = "'exp  F3=D19_K69.5_@200+9x200_B10361_H190_SD390                               'Y �����⋭��  @�߯��͉�����"

           Dim ��b�S�،as As String, ��b���s As String, ��b�S��Pits As String, ��b�S��Bs As String, ��b�S��Hs As String
           Dim ��b�S�؂̒���i As Single, ��b�S�؂̍���i As Single

        Lm = Lm + 1: ��bData(Lm) = "'<<< Y ��S�� >>>"  ' F1
                    ��b�S�،as = "D" + f0(pKisoDai(3))
                    ��b���s = "_K" + F9(��b_������� + pKisoDai(3) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(3))
                    ��b�S�؂̒���i = ��b_BY - 2 * ��b_������� '10014 '**********
                    ��b�S��Bs = "_BF+" + F9(��b�S�؂̒���i) + "+F"
                    Lm = Lm + 1: ��bData(Lm) = "F1=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + "_SD390"

        Lm = Lm + 1: ��bData(Lm) = "'<<< Y ��S�� >>>"   ' F2
                    ��b�S�،as = "D" + f0(pKisoDai(1))
                    ��b���s = "_K" + F9(��b_�㏃��� + pKisoDai(1) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(1))
                      '��b�S�؂̒���i = 10014 '**********
                    ��b�S��Bs = "_B" + F9(��b_BY - 2 * ��b_������� - pKisoDai(1))
                   ' If ��b_H2 > 0 Then ��b�S��Bs = "_B3563+1092+W+2092+3563" '***************
                    If ��b_H2 > 0 Then ��b�S��Bs = "_B" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '3563+1092+W+2092+3563" '***************
                    ��b�S�؂̍���i = ��b_H1 - ��b_�㏃��� - pKisoDai(1) '2320 '**************
                    ��b�S��Hs = "_H" + F9(��b�S�؂̍���i)
                    Lm = Lm + 1: ��bData(Lm) = "F2=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + ��b�S��Hs + "_SD390"

        Lm = Lm + 1: ��bData(Lm) = "'<<< Y �����⋭�� >>>"  ' F3
                    ��b�S�،as = "D" + f0(pKisoDai(9))
                    ��b���s = "_K" + F9(��b_������� + pKisoDai(9) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(9))
                    ��b�S�؂̒���i = ��b_BY - 2 * ��b_������� - pKisoDai(9) '10361 '**********
                    ��b�S��Bs = "_B" + F9(��b�S�؂̒���i)
                    ��b�S�؂̍���i = 30 * pKisoDai(9)
                    ��b�S��Hs = "_H" + F9(��b�S�؂̍���i)
                    Lm = Lm + 1: ��bData(Lm) = "F3=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + ��b�S��Hs + "_SD390"


        Lm = Lm + 1: ��bData(Lm) = "'[[[ F1n �� X�����S�� �ł�  ]]]"
                         Lm = Lm + 1: ��bData(Lm) = "' D    : �S�،a          exp D32"
                         Lm = Lm + 1: ��bData(Lm) = "' K    : ���� �S�؈ʒu�ł�  �����"
                         Lm = Lm + 1: ��bData(Lm) = "' @    : �S���߯��ł�         exp @127+123+80x125+123"
                         Lm = Lm + 1: ��bData(Lm) = "' B    : �S�؂̒����ł�       W�� �K�X���ڈʒu�ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' H    : �S�؂̍����ł�"

                         Lm = Lm + 1: ��bData(Lm) = "'exp   F11=D32_K127_@127+123+80x125+123_BF+10014+F_SD390              'X ��S��  @�߯��͑��ʂ���"
                         Lm = Lm + 1: ��bData(Lm) = "'exp   F12=D32_K127_@127+123+80x125+123_B5655+W+4655_H2746_SD390      'X ��S��  @�߯��͑��ʂ���"
                         Lm = Lm + 1: ��bData(Lm) = "'exp   F13=D32_K127_B5655+W+4655_H2746�`2246_SD390                    'X ��S��  @�߯��� F12 �Œ�`"
                         Lm = Lm + 1: ��bData(Lm) = "'***        F13=D32_K127_B5655+W+4655_HF+2746�`2246_SD390             'X ��S��  @�߯��� F12 �Œ�`"
                         Lm = Lm + 1: ��bData(Lm) = "'exp   F14=D19_K69.5_@300+8x200_B10361_H190_SD390                     'X �����⋭��  @�߯��͉�����"


        Lm = Lm + 1: ��bData(Lm) = "'<<< X ��S�� >>>"  ' F11
                    ��b�S�،as = "D" + f0(pKisoDai(7))
                    ��b���s = "_K" + F9(��b_������� + pKisoDai(7) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(7))
                      ��b�S�؂̒���i = ��b_BX - 2 * ��b_������� '10001 '**********
                    ��b�S��Bs = "_BF+" + F9(��b�S�؂̒���i) + "+F"
                    Lm = Lm + 1: ��bData(Lm) = "F11=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + "_SD390"

        Lm = Lm + 1: ��bData(Lm) = "'<<< X ��S�� >>>"  ' F12
                    ��b�S�،as = "D" + f0(pKisoDai(5))
                    ��b���s = "_K" + F9(��b_�㏃��� + pKisoDai(5) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(5))
                    ��b�S�؂̒���i = ��b_BX - 2 * ��b_������� - pKisoDai(5) '10014 '**********
                   ' ��b�S��Bs = "_B5655+W+4655" '***************
                    ��b�S��Bs = "_B" + F9(��b�S�؂̒���i) '5655+W+4655" '***************
                    ��b�S�؂̍���i = ��b_H1 - ��b_�㏃��� - pKisoDai(5) / 2 '2746 '**************
                    ��b�S��Hs = "_H" + F9(��b�S�؂̍���i)
                    Lm = Lm + 1: ��bData(Lm) = "F12=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + ��b�S��Hs + "_SD390"

        Lm = Lm + 1: ��bData(Lm) = "'<<< X ��S�� 2 >>>" ' F13    F12 ���쐬
                    ��b�S�،as = "D" + f0(pKisoDai(5))
                    ��b���s = "_K" + F9(��b_�㏃��� + pKisoDai(5) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(5))
                      '��b�S�؂̒���i = 10014 '**********
                    ��b�S�؂̒���i = ��b_BX - 2 * ��b_������� - pKisoDai(5)
                   ' ��b�S��Bs = "_B5655+W+4655" '***************
                    
                    ��b�S��Bs = "_B" + F9(��b�S�؂̒���i)
                      '��b�S�؂̍���i = 2746 '**************
                    ��b�S��Hs = "_H2746�`2246" '***********
                    Lm = Lm + 1: ��bData(Lm) = "F13=" + ��b�S�،as + ��b���s + ��b�S��Bs + ��b�S��Hs + "_SD390"

        Lm = Lm + 1: ��bData(Lm) = "'<<< X �����⋭�� >>>"  ' F14
                    ��b�S�،as = "D" + f0(pKisoDai(9))
                    ��b���s = "_K" + F9(��b_������� + pKisoDai(9) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(9))
                    ��b�S�؂̒���i = ��b_BX - 2 * ��b_������� - pKisoDai(9) '10361 '**********
                    ��b�S��Bs = "_B" + F9(��b�S�؂̒���i)
                    ��b�S�؂̍���i = 30 * pKisoDai(9)
                    ��b�S��Hs = "_H" + F9(��b�S�؂̍���i)
                    Lm = Lm + 1: ��bData(Lm) = "F14=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + ��b�S��Hs + "_SD390"


         '[[[ ��b ���ׯ�� ]]]
                    Dim ��b_St_�ai As Single, ��b_St_dts As String, ��b_St_Bs As String, ��b_St_Hs As String
                    Dim ��b_St_Bi As Single, ��b_St_Hi As Single, ��b_St_H2i As Single
                    
                    Lm = Lm + 1: ��bData(Lm) = "'[[[ fn �� �c�S�� �ł� ���ׯ�� ]]]"
                         Lm = Lm + 1: ��bData(Lm) = "' D    : �S�،a     exp D19"

                         Lm = Lm + 1: ��bData(Lm) = "' K    : ���� �S�؈ʒu(dt)�ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' B    : �S�؂̒����ł�             W�� �K�X���ڈʒu�ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' H    : �S�؂̍����ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' SD   : �ގ�"
                         ' Y���� ���H����
                         '       St_���H����=D19_K69_H2804+F_SD390
                         '       St_���H����Pit=750+16x125
                         '       St_���H�������t=250+5x(750+500)+1250
                         
                   ' Y���� ���H����
                         ��b_St_�ai = pKisoStrDai(1)
                         ��b_St_dts = "_K" + F9(pKisoKaburi(2) + ��b_St_�ai / 2)
                         D1s = Replace��s(pKisoStrPictW(2)): D1s = F_�v�Z_����(D1s)
                             Call Ddata_D("+", D1s, Di, ni)
                         ��b_St_Bi = Di(2)
                             ��b_St_Bs = "_B" + F9(��b_St_Bi)
                         ��b_St_Hi = ��b_��H - ��b_�㏃��� - ��b_������� - ��b_St_�ai / 2
                             ��b_St_Hs = "_H" + F9(��b_St_Hi) + "+F"
                         Lm = Lm + 1: ��bData(Lm) = "St_���H����=D" + f0(��b_St_�ai) + ��b_St_dts + ��b_St_Bs + ��b_St_Hs + "_SD390"
                         Lm = Lm + 1: ��bData(Lm) = "St_���H����Pit=" + Replace��s(pKisoStrPictW(1))
                         Lm = Lm + 1: ��bData(Lm) = "St_���H�������t=" + Replace��s(pKisoStrPictW(2))
                         If pKisoStrPictW(3) <> "" Then Lm = Lm + 1: ��bData(Lm) = "St_���H�������t=" + Replace��s(pKisoStrPictW(3))
                         
                   ' Y���� ���p����
                         ��b_St_�ai = pKisoStrDai(2)
                         ��b_St_dts = "_K" + F9(pKisoKaburi(2) + ��b_St_�ai / 2)
                         D1s = Replace��s(pKisoStrPictW(5)): D1s = F_�v�Z_����(D1s)
                             Call Ddata_D("+", D1s, Di, ni)
                         ��b_St_Bi = Di(2)
                             ��b_St_Bs = "_B" + F9(��b_St_Bi)
                         ��b_St_Hi = ��b_��H - ��b_�㏃��� - ��b_������� - ��b_St_�ai / 2
                             ��b_St_Hs = "_H" + F9(��b_St_Hi) + "+F"
                             ��b_St_H2i = ��b_H1 - ��b_�㏃��� - ��b_������� - ��b_St_�ai / 2
                             If ��b_H1 > 0 Then ��b_St_Hs = "_H" + F9(��b_St_H2i) + "�`" + F9(��b_St_Hi) + "+F"
                         
                         
                         Lm = Lm + 1: ��bData(Lm) = "St_���p����=D" + f0(��b_St_�ai) + ��b_St_dts + ��b_St_Bs + ��b_St_Hs + "_SD390"
                         Lm = Lm + 1: ��bData(Lm) = "St_���p����Pit=" + Replace��s(pKisoStrPictW(4))
                         Lm = Lm + 1: ��bData(Lm) = "St_���p�������t=" + Replace��s(pKisoStrPictW(5))
                         If pKisoStrPictW(6) <> "" Then Lm = Lm + 1: ��bData(Lm) = "St_���p�������t=" + Replace��s(pKisoStrPictW(6))
                         
                         
                         
                         
                         
'                         Lm = Lm + 1: ��bData(Lm) = "' n    : �S�ؖ{��"
'                         Lm = Lm + 1: ��bData(Lm) = "' D    : �S�،a     exp D19"
'
'                         Lm = Lm + 1: ��bData(Lm) = "' K    : ���� �S�؈ʒu�ł�"
'                         Lm = Lm + 1: ��bData(Lm) = "' @    : �S���߯��ł�"
'                         Lm = Lm + 1: ��bData(Lm) = "' B    : �S�؂̒����ł�             W�� �K�X���ڈʒu�ł�"
'                         Lm = Lm + 1: ��bData(Lm) = "' H    : �S�؂̍����ł�"
'                         Lm = Lm + 1: ��bData(Lm) = "' SD   : �ގ�"
'
'
'                         Lm = Lm + 1: ��bData(Lm) = "'exp   f1=314-D19_K69_B801_H2804+F_SD390                     '�c�S��"
'                         Lm = Lm + 1: ��bData(Lm) = "'exp   f2=314-D19_K69_B801_H2804�`2304+F_SD390               '�c�S��"
'
                    Lm = Lm + 1: ��bData(Lm) = "f1=314-D19_K69_B801_H2804+F_SD390"    '********************
                    Lm = Lm + 1: ��bData(Lm) = "f2=314-D19_K69_B801_H2804�`2304+F_SD390"

'                         Lm = Lm + 1: ��bData(Lm) = "' fpit : �c�S�؂̈ʒu�̒�` "
'                         Lm = Lm + 1: ��bData(Lm) = "' X    : ��bX���[�����L + Y�����S���߯� + �Ԋu1 + �Ԋu2 + �Ԋu3   (�Ԋu3�� �Ԋu1�̏I�[����̖߂�)"
'                         Lm = Lm + 1: ��bData(Lm) = "' Y    : ���W�� �t���� Y9 ����̒�`�ł�"
'
'                         Lm = Lm + 1: ��bData(Lm) = "' @    : ��bY���[����̓S���߯�"
'
'                         Lm = Lm + 1: ��bData(Lm) = "'exp   fpit=X375+125+6+2+2_@375+39x250_SD390              "
'
                    Lm = Lm + 1: ��bData(Lm) = "fpit=X375+125+6+2+2_@375+39x250_SD390" '****************
                  ��bDi = Lm


'����������������������������������������������������������������������������������������������������������������������������
'�� �� ��                                                                                                                  ��
'����������������������������������������������������������������������������������������������������������������������������
                       Dim ��_BX As Single, ��_BY As Single, ��_H As Single, ������i As Single
                       Dim �����_X�ai As Single, �����_Y�ai As Single, �����_TY_Xi As Integer, �����_TY_Yi As Integer
                       Dim �����_L As Single, �����_L2 As Single
                       Dim �����Start�ʒui As Single, �����Start�ʒus As String
                       Dim ��Hp_�O���ai As Single, ��Hp_����X�ai As Single, ��Hp_����Y�ai As Single
                       ��_BX = pW(6)
                       ��_BY = pB(6): If ��_BY = 0 Then er ("*System **** ��_BY=0 ***"): ��_BY = 2000
                       ��_H = pH(4) + pH(5) + pH(6)
                       ������i = pkuitaiKaburi(1)
                       �����_X�ai = pkuitaiDai(2): �����_Y�ai = pkuitaiDai(1)
                       ��Hp_�O���ai = pkuitaiStr(1, 2): ��Hp_����X�ai = pkuitaiStr(1, 4): ��Hp_����Y�ai = pkuitaiStr(1, 6)
        
        Lm = 0
        Lm = Lm + 1: ��Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��Data(Lm) = "'�� �� ��                                                                                                                  ��"
        Lm = Lm + 1: ��Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��Data(Lm) = ".��"

        Lm = Lm + 1: ��Data(Lm) = "BX=" + F9(��_BX)     ' BX=5000          '*   BX=   : ��X��                        pw(6)
        Lm = Lm + 1: ��Data(Lm) = "BY=" + F9(��_BY)     ' BY=2000          '*   BY=   : ��Y��                        pB(6)                  exp BY=1500+1500
        Lm = Lm + 1: ��Data(Lm) = "H=" + F9(��_H) ' H=7800           '*   H=    : ������  ��b�� �� �����܂�   pH(4)
        Lm = Lm + 1: ��Data(Lm) = "r=0"       ' r=0 'r=250        '?   r=    : ��r


                 '��������������������������������������������
                 '�� �� ��  ���                            ��
                 '��������������������������������������������
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ C �� ����� �ł�  ]]]"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a     "
                         Lm = Lm + 1: ��Data(Lm) = "' P    : ��؂� �S��Start�ʒu�ł�  ��b���[����ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ���� �S�؈ʒu�ł� "
                         Lm = Lm + 1: ��Data(Lm) = "' L    : �S�؂̒����ł�        W�� �K�X���ڈʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"

                         Lm = Lm + 1: ��Data(Lm) = "'exp  C=D38_P309_K101_LF+11420+W+2200_SD390        ' ���1"
                         Lm = Lm + 1: ��Data(Lm) = "'exp  C=D25_P309_K101_LF+11420+W+2200_SD390        ' ���2"
                         Lm = Lm + 1: ��Data(Lm) = "'exp  C=D38_P309_K196_LF+9420+W+2300_SD390         ' ���3"
                         Lm = Lm + 1: ��Data(Lm) = "'exp  C=D32_P309_K196_LF+9420+W+2300_SD390         ' ���4"
                      
                  �����_TY_Xi = 1: If pkuitaiPictW(2) <> "" Then �����_TY_Xi = 2
                  �����_TY_Yi = 1: If pkuitaiPictW(4) <> "" Then �����_TY_Yi = 2
                 
                 
                 '[[[ �����Type ]]]
                      Dim �����s As String, ����ؔ��s As String, �����_1�i�ڒ���s As String, �����_2�i�ڒ���s As String
                      �����s = "D" + f0(pkuitaiDai(1))
                      Call SP_��_���_H("SD390", �����s, �����Start�ʒui, �����_L, �����_L2)
                      
                      �����Start�ʒus = "_P" + F9(�����Start�ʒui)
                      ����ؔ��s = "_K" + F9(������i + ��Hp_�O���ai + pkuitaiDai(1) / 2)
                    '  �����_1�i�ڒ���s = "_LF+11420+W+2200"  '**********
                      �����_1�i�ڒ���s = "_LF+" + f0(�����_L)
                      �����_2�i�ڒ���s = "_LF+" + f0(�����_L2)
                      
                      
                      Select Case �����_TY_Xi
                           Case 1
                                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + �����_1�i�ڒ���s + "_SD390"
                           Case Else
                                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + �����_1�i�ڒ���s + "_SD390"
                                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + �����_2�i�ڒ���s + "_SD390"
                           End Select
                      
                      �����s = "D" + f0(pkuitaiDai(2))
                      Call SP_��_���_H("SD390", �����s, �����Start�ʒui, �����_L, �����_L2)
                      �����Start�ʒus = "_P" + F9(�����Start�ʒui)
                      ����ؔ��s = "_K" + F9(������i + ��Hp_�O���ai + pkuitaiDai(2) / 2)
                     ' �����_1�i�ڒ���s = "_LF+11420+W+2200"  '**********
                      �����_1�i�ڒ���s = "_LF+" + f0(�����_L)
                      �����_2�i�ڒ���s = "_LF+" + f0(�����_L2)
                      Select Case �����_TY_Yi
                           Case 1
                                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + �����_1�i�ڒ���s + "_SD390"
                           Case Else
                                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + �����_1�i�ڒ���s + "_SD390"
                                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + �����_2�i�ڒ���s + "_SD390"
                           End Select
                      
                         
                 '[[[ ������߯� ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'<<< ������߯� >>>"
                         Lm = Lm + 1: ��Data(Lm) = "' Xpit :X�������߯��ł�  Xpit=1�i���߯�_2�i���߯�"
                         Lm = Lm + 1: ��Data(Lm) = "' Ypit :Y�������߯��ł�  Ypit=1�i���߯�_2�i���߯�"
                         
                      Lm = Lm + 1: ��Data(Lm) = "'exp   Xpit=250+32x125_500+28x125"
                      Lm = Lm + 1: ��Data(Lm) = "'exp   Ypit=250+10x250"
                         
                      Dim Xpits As String, Ypits As String
                      
                      Xpits = "Xpit=" + Replace��s(pkuitaiPictW(1))
                           If pkuitaiPictW(2) <> "" Then Xpits = Xpits + "_" + Replace��s(pkuitaiPictW(2))
                      Ypits = "Ypit=" + Replace��s(pkuitaiPictW(3))
                           If pkuitaiPictW(4) <> "" Then Ypits = Ypits + "_" + Replace��s(pkuitaiPictW(4))
                         
                      Lm = Lm + 1: ��Data(Lm) = Xpits
                      Lm = Lm + 1: ��Data(Lm) = Ypits
                         
                 '[[[ ����ؔz�u ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'<<< ����ؔz�u >>>"
                         Lm = Lm + 1: ��Data(Lm) = "' X��� : X�����̎�ؖ{���ł�   X���=1�i�ږ{��_2�i�ږ{��"
                         Lm = Lm + 1: ��Data(Lm) = "' Y��� : Y�����̎�ؖ{���ł�   Y���=1�i�ږ{��_2�i�ږ{��"


                       Lm = Lm + 1: ��Data(Lm) = "'exp  X���=17xC2+16xC1_15xC4+14xC3"
                       Lm = Lm + 1: ��Data(Lm) = "'exp  Y���=6xC2+5xC1"
                      Dim X���i As Integer, Y���i As Integer, X���s As String, Y���s As String
                      X���i = FP_Data��i(pkuitaiPictW(1))
                      X���s = "X���=" + f0(X���i) + "xC1"
                             If Trim(pkuitaiPictW(2)) <> "" Then X���s = X���s + "_" + f0(FP_Data��i(pkuitaiPictW(1))) + "xC2"
                      
                      Y���i = FP_Data��i(pkuitaiPictW(3))
                      Y���s = "Y���=" + f0(Y���i) + "xC" + f0(�����_TY_Xi + 1)
                             If Trim(pkuitaiPictW(4)) <> "" Then Y���s = Y���s + "_" + f0(FP_Data��i(pkuitaiPictW(4))) + "xC" + f0(�����_TY_Xi + 2)
                      Lm = Lm + 1: ��Data(Lm) = X���s
                      Lm = Lm + 1: ��Data(Lm) = Y���s
                             
                 '[[[ �p��� ]]]
                       Lm = Lm + 1: ��Data(Lm) = "'<<< �p��� >>>"
                       Lm = Lm + 1: ��Data(Lm) = "'  �p���=C1                            '?  �p���=   : ��Ű�̎�ؖ{���ł�"
                       Lm = Lm + 1: ��Data(Lm) = "'  �p���XY=145_180                     '?  �p���XY= : ��Ű�̎�؂̍��W�ł�"


                 '[[[ CK �� �����̺�Ű�� ]]]
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ CK �� �����̺�Ű�� �ł�  ]]]"
                         Lm = Lm + 1: ��Data(Lm) = "' n    :"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ���� �S�؈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' r  �� �S�؂̊J���p�x�ł� �s�v"
                         Lm = Lm + 1: ��Data(Lm) = "' L    : �����̒����ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"


                         Lm = Lm + 1: ��Data(Lm) = "'exp   CK=11-D16_K101_L480_SD390          ' ### ������ �⋭��"
                         Lm = Lm + 1: ��Data(Lm) = "CK=11-D16_K101_L480_SD390                    ' ### ������ �⋭��"


                 '��������������������������������������������
                 '�� �� ��  ̰��                            ��
                 '��������������������������������������������
                  '[[[ �� ̰�� ]]]
                       Dim ��Hp_Start As Single ' ��b���ꂩ�� Hp Start �ʒu�� H
                       Dim ��Hp_��Ԓ�(5) As Single, ��Hp_�O��pit(5) As Single, ��Hp_����_X_pit(5) As Single, ��Hp_����_Y_pit(5) As Single
                       For ii = 1 To 5
                           ��Hp_��Ԓ�(ii) = pkuitaiStr(ii, 1)
                           ��Hp_�O��pit(ii) = pkuitaiStr(ii, 3)
                           ��Hp_����_X_pit(ii) = pkuitaiStr(ii, 5)
                           ��Hp_����_Y_pit(ii) = pkuitaiStr(ii, 7)
                           Next ii
                  
                      ��Hp_Start = ��_H - ��Hp_��Ԓ�(1) - ��Hp_��Ԓ�(2) - ��Hp_��Ԓ�(3) - ��Hp_��Ԓ�(4)
                      ��Hp_Start = 1200 '***********************************
                  
                  
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ ��̰��  ]]]"
                         Lm = Lm + 1: ��Data(Lm) = "Hp_��Ԓ�=" + F9(��Hp_��Ԓ�(1)) + "_" + F9(��Hp_��Ԓ�(2)) + "_" + F9(��Hp_��Ԓ�(3)) + "_" + F9(��Hp_��Ԓ�(4)) + "_" + F9(��Hp_��Ԓ�(5))
                  
                  
                  '[[[ �O��̰�� ]]]
                         
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ �OHp �� �O��̰�� �ł�  ]]]"

                         Lm = Lm + 1: ��Data(Lm) = "'*** ̰�ߓS�؂� Joint������ 2L1 <> L"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ���� �S�؈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' X    : ̰�ߓS�؂ł�    BxD   B�݂̂̏ꍇ�͋Ȃ��薳��"
                         Lm = Lm + 1: ��Data(Lm) = "' Y    : ̰�ߓS�؂ł�    BxD"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ̰�ߓS���߯��ł�    @�߯��͊�b������"
                         Lm = Lm + 1: ��Data(Lm) = "' R    : �S�؂� r<0 �̏ꍇ�@�ir-10 �œ���)   r1 �̒l�ł�   "
                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"

                         Lm = Lm + 1: ��Data(Lm) = "'exp   �OHp=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"
                         Dim ���O��St_Ds As String, ���O��St_Ks As String, ���O��St_Xs As String, ���O��St_Ys As String, ���O��St_Pits As String, ���O��St_Rs As String
                               ���O��St_Ds = "D" + f0(��Hp_�O���ai)
                               ���O��St_Ks = "_K" + F9(pkuitaiKaburi(1) + ��Hp_�O���ai / 2)
                               ���O��St_Xs = "_X" + F9(��_BX - 150)
                               ���O��St_Ys = "_Y" + F9(1000) + "x" + F9(��_BY - 150)
                               D1s = F9(��Hp_Start)
                               If ��Hp_�O��pit(1) > 0 Then D1s = D1s + "+" + f0(��Hp_��Ԓ�(1) / ��Hp_�O��pit(1)) + "x" + F9(��Hp_�O��pit(1))
                               If ��Hp_�O��pit(2) > 0 Then D1s = D1s + "+" + f0(��Hp_��Ԓ�(2) / ��Hp_�O��pit(2)) + "x" + F9(��Hp_�O��pit(2))
                               If ��Hp_�O��pit(3) > 0 Then D1s = D1s + "+" + f0(��Hp_��Ԓ�(3) / ��Hp_�O��pit(3)) + "x" + F9(��Hp_�O��pit(3))
                   'If ��Hp_�O��pit(4) = 0 Then ��Hp_�O��pit(4) = 150 '*************
                               If ��Hp_�O��pit(4) > 0 Then D1s = D1s + "+" + f0(��Hp_��Ԓ�(4) / ��Hp_�O��pit(4)) + "x" + F9(��Hp_�O��pit(4))
                               
                               ���O��St_Pits = "_@" + D1s
                     
                         Lm = Lm + 1: ��Data(Lm) = "�OHp=" + ���O��St_Ds + ���O��St_Ks + ���O��St_Xs + ���O��St_Ys + ���O��St_Pits + "_SD390"
                      '* Lm = Lm + 1: ��Data(Lm) = "c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"

                    '[[[ X����(���p����) ����̰�� ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'[[[ ��Hp_X �� ���p����(X����) ����̰�� �ł�  ]]]"
                          
                          '  ̰�ߕ��iSet    ---> Pit �w��
                          '    exp   ��Hp_X_���i=D25_B432_D1302+J+552_SD390
                          '          ��Hp_X_���i=D25_B557_D1302+J+557_SD390
                      
                          '    exp   ��Hp_X_Hpit=1200+6x200+4x150+72x150         ��b���[����
                          '          ��Hp_X_Ypit=750+5x625|1+500|2               �����[����   Pit|HpType    Pit ���S�̈ʒu    HpType�ȗ��̂΂��� 1
                          '          ��Hp_X_Ypit=500+5x625|1+500|2
                          '          ��Hp_X_�z�u=50x1,2+3x3                     Xpit �̎w�� ��-->��    �ȗ��̂΂���  Xpit(1)
                          '
                     
                           Dim ��Hp_X_�ai As Single, ��Hp_X_B As Single
                           Dim ��Hp_X_Pit_1s As String, ��Hp_X_Pit_2s As String
                           Dim ��Hp_X_HPitni As Integer
                           ��Hp_X_Pit_1s = pkuitaiStrPictW(3)
                           ��Hp_X_Pit_2s = pkuitaiStrPictW(4)
                      
                      
                          '[[[ X���� ����̰�� �a ]]]
                                ��Hp_X_�ai = pkuitaiStr(1, 6)
                          
                          '[[[ X���� ����̰�� D ]]]
                                '��Hp_X_B = pW(6) - (K1 - (D1 + D2) / 2) * 2
                                ��Hp_X_B = ��_BX - 2 * ������i - ��Hp_X_�ai
                          
                          '[[[ Y���� ����̰�ߕ��i Type ]]]
                                Dim ��Hp_X_Typei As Integer, ��Hp_X_D(90) As Single
                                ��Hp_X_Typei = 0
                                Wda = F_�v�Z_����(��Hp_X_Pit_1s):    Call Ddata_M("+", Wda, Ds, ni)
                                For ii = 2 To ni Step 2:      DD = Val(Ds(ii)): CKs = "New"
                                    For i2 = 1 To ��Hp_X_Typei:  If DD = ��Hp_X_D(i2) Then CKs = "": Exit For
                                         Next i2
                                         If CKs = "New" Then ��Hp_X_Typei = ��Hp_X_Typei + 1: ��Hp_X_D(��Hp_X_Typei) = DD
                                    Next ii
                                
                                Wda = F_�v�Z_����(��Hp_X_Pit_2s):    Call Ddata_M("+", Wda, Ds, ni)
                                For ii = 2 To ni Step 2:      DD = Val(Ds(ii)): CKs = "New"
                                    For i2 = 1 To ��Hp_X_Typei:  If DD = ��Hp_X_D(i2) Then CKs = "": Exit For
                                         Next i2
                                         If CKs = "New" Then ��Hp_X_Typei = ��Hp_X_Typei + 1: ��Hp_X_D(��Hp_X_Typei) = DD
                                    Next ii
                                For ii = 1 To ��Hp_X_Typei
                                    Wda = "D" + f0(��Hp_X_�ai)
                                   ' Wda = Wda + "_B" + F9(��Hp_X_B)
                                    Wda = Wda + "_B" + F9(0.7 * ��Hp_X_B) + "+J+" + F9(0.3 * ��Hp_X_B)
                                    Wda = Wda + "_D" + F9(��Hp_X_D(ii) + pkuitaiDai(2) + ��Hp_X_�ai)
                                    Lm = Lm + 1: ��Data(Lm) = "��Hp_X_���i=" + Wda + "_SD390"
                                    Next ii
                          
                          '[[[ X���� ����̰�� Ypit ]]]
                                Wda = F_�v�Z_����(��Hp_X_Pit_1s):    Call Ddata_D("+", Wda, Di, ni)
                                Wda = ""
                                For ii = 2 To ni Step 2:  TYi = 1: Piti = Di(ii - 2) / 2 + Di(ii - 1) + Di(ii) / 2
                                    For i2 = 1 To ��Hp_X_Typei:  If Di(ii) = ��Hp_X_D(i2) Then TYi = i2: Exit For
                                        Next i2
                                    Wda = Wda + "+" + F9(Piti) + "|" + f0(TYi)
                                    Next ii
                                Lm = Lm + 1: ��Data(Lm) = "��Hp_X_Ypit=" + Mid(Wda, 2)
                                If ��Hp_X_Pit_2s <> "" Then
                                Wda = F_�v�Z_����(��Hp_X_Pit_2s):    Call Ddata_D("+", Wda, Di, ni)
                                Wda = ""
                                For ii = 2 To ni Step 2:  TYi = 1: Piti = Di(ii - 2) / 2 + Di(ii - 1) + Di(ii) / 2
                                    For i2 = 1 To ��Hp_X_Typei:  If Di(ii) = ��Hp_X_D(i2) Then TYi = i2: Exit For
                                        Next i2
                                    Wda = Wda + "+" + F9(Piti) + "|" + f0(TYi)
                                    Next ii
                                Lm = Lm + 1: ��Data(Lm) = "��Hp_X_Ypit=" + Mid(Wda, 2)
                                End If
                     
                          '[[[ Y���� ����̰�� Hpit ]]]
                               Wda = F9(��Hp_Start)
                               If ��Hp_����_X_pit(1) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(1) / ��Hp_����_X_pit(1)) + "x" + F9(��Hp_����_X_pit(1))
                               If ��Hp_����_X_pit(2) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(2) / ��Hp_����_X_pit(2)) + "x" + F9(��Hp_����_X_pit(2))
                               If ��Hp_����_X_pit(3) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(3) / ��Hp_����_X_pit(3)) + "x" + F9(��Hp_����_X_pit(3))
                               If ��Hp_����_X_pit(4) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(4) / ��Hp_����_X_pit(4)) + "x" + F9(��Hp_����_X_pit(4))
                               
                             '  ��Hp_����_Y_pits = "_@" + Wda
                               Lm = Lm + 1: ��Data(Lm) = "��Hp_X_Hpit=" + Wda
                               Call Data_����(Wda, ��Hp_X_HPitni, Di)
                     
                          '[[[ Y���� ����̰�� �z�u ]]]
                              '��Hp_Y_HPitni
                     '          ��YHpH�z�u=50x1,2+3x3                     Xpit �̎w�� ��-->��    �ȗ��̂΂���  Xpit(1)
                               Lm = Lm + 1: ��Data(Lm) = "��Hp_X_�z�u=" + f0(��Hp_X_HPitni) + "x1,2"
                      
                      
                      
'                      Lm = Lm + 1: ��Data(Lm) = "'[[[ c2 �� X���� ����̰�� �ł�  ]]]"
'                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
'                         Lm = Lm + 1: ��Data(Lm) = "' B    : ̰�ߓS�� X�������ł�    J�� Joint�����邱�Ƃ�����   exp B1678+J+2677"
'                         Lm = Lm + 1: ��Data(Lm) = "' D    : ̰�ߓS�� Y�������ł�"
'                         Lm = Lm + 1: ��Data(Lm) = "' Y    : ̰�ߓS�� Y�����̾����ʒu�ł�   ���ʂ���Start"
'                         Lm = Lm + 1: ��Data(Lm) = "' @    : ̰�ߓS���߯��ł�    @�߯��͉�����"
'                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"


                   '*      Lm = Lm + 1: ��Data(Lm) = "'exp   c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X����  ���� 1"
                   '*      Lm = Lm + 1: ��Data(Lm) = "'exp   c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X����  ���� 2   �į�ߕ�  ��߼��"

                   '*   Lm = Lm + 1: ��Data(Lm) = "c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X����  ���� 1"
                   '*   Lm = Lm + 1: ��Data(Lm) = "c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X����  ���� 2   �į�ߕ�  ��߼��"



                   '[[[ ���H���� Y���� ����̰�� ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'[[[ ��Hp_Y �� ���H����(Y���� ����̰��) �ł�  ]]]"
                          '  ̰�ߕ��iSet    ---> Pit �w��
                          '    exp   ��Hp_Y_���i=D25_B432_D1302+J+552_SD390
                          '          ��Hp_Y_���i=D25_B557_D1302+J+557_SD390
                      
                          '    exp   ��Hp_Y_Hpit=1200+6x200+4x150+72x150         ��b���[����
                          '          ��Hp_Y_Xpit=750+5x625|1+500|2               �����[����   Pit|HpType    Pit ���S�̈ʒu    HpType�ȗ��̂΂��� 1
                          '          ��Hp_Y_Xpit=500+5x625|1+500|2
                          '          ��Hp_Y_�z�u=50x1,2+3x3                     Xpit �̎w�� ��-->��    �ȗ��̂΂���  Xpit(1)
                          '
                     
                           Dim ��Hp_Y_�ai As Single, ��Hp_Y_D As Single
                           Dim ��Hp_Y_Pit_1s As String, ��Hp_Y_Pit_2s As String
                           Dim ��Hp_Y_HPitni As Integer
                           ��Hp_Y_Pit_1s = pkuitaiStrPictW(1)
                           ��Hp_Y_Pit_2s = pkuitaiStrPictW(2)
                          '[[[ Y���� ����̰�� �a ]]]
                                ��Hp_Y_�ai = pkuitaiStr(1, 4)
                          
                          '[[[ Y���� ����̰�� D ]]]
                                ��Hp_Y_D = ��_BY - 2 * ������i - ��Hp_Y_�ai
                          
                          '[[[ Y���� ����̰�� Type ]]]
                                Dim ��Hp_Y_Typei As Integer, ��Hp_Y_B(90) As Single
                                ��Hp_Y_Typei = 0
                                Wda = F_�v�Z_����(��Hp_Y_Pit_1s):    Call Ddata_M("+", Wda, Ds, ni)
                                For ii = 2 To ni Step 2:      BB = Val(Ds(ii)): CKs = "New"
                                    For i2 = 1 To ��Hp_Y_Typei:  If BB = ��Hp_Y_B(i2) Then CKs = "": Exit For
                                         Next i2
                                         If CKs = "New" Then ��Hp_Y_Typei = ��Hp_Y_Typei + 1: ��Hp_Y_B(��Hp_Y_Typei) = BB
                                    Next ii
                                Wda = F_�v�Z_����(��Hp_Y_Pit_2s):    Call Ddata_M("+", Wda, Ds, ni)
                                For ii = 2 To ni Step 2:      BB = Val(Ds(ii)): CKs = "New"
                                    For i2 = 1 To ��Hp_Y_Typei:  If BB = ��Hp_Y_B(i2) Then CKs = "": Exit For
                                         Next i2
                                         If CKs = "New" Then ��Hp_Y_Typei = ��Hp_Y_Typei + 1: ��Hp_Y_B(��Hp_Y_Typei) = BB
                                    Next ii
                                For ii = 1 To ��Hp_Y_Typei
                                    Wda = "D" + f0(��Hp_Y_�ai)
                                    Wda = Wda + "_B" + F9(��Hp_Y_B(ii) + pkuitaiDai(1) + ��Hp_Y_�ai)
                                  '  Wda = Wda + "_D" + F9(��Hp_Y_D)
                                    Wda = Wda + "_D" + F9(0.7 * ��Hp_Y_D) + "+J+" + F9(0.3 * ��Hp_Y_D)
                                    Lm = Lm + 1: ��Data(Lm) = "��Hp_Y_���i=" + Wda + "_SD390"
                                    Next ii
                          
                          '[[[ Y���� ����̰�� Xpit ]]]
                                Wda = F_�v�Z_����(��Hp_Y_Pit_1s):    Call Ddata_D("+", Wda, Di, ni)
                                Wda = ""
                                For ii = 2 To ni Step 2:  TYi = 1: Piti = Di(ii - 2) / 2 + Di(ii - 1) + Di(ii) / 2
                                    For i2 = 1 To ��Hp_Y_Typei:  If Di(ii) = ��Hp_Y_B(i2) Then TYi = i2: Exit For
                                        Next i2
                                    Wda = Wda + "+" + F9(Piti) + "|" + f0(TYi)
                                    Next ii
                                Lm = Lm + 1: ��Data(Lm) = "��Hp_Y_Xpit=" + Mid(Wda, 2)
                                If ��Hp_Y_Pit_2s <> "" Then
                                Wda = F_�v�Z_����(��Hp_Y_Pit_2s):    Call Ddata_D("+", Wda, Di, ni)
                                Wda = ""
                                For ii = 2 To ni Step 2:  TYi = 1: Piti = Di(ii - 2) / 2 + Di(ii - 1) + Di(ii) / 2
                                    For i2 = 1 To ��Hp_Y_Typei:  If Di(ii) = ��Hp_Y_B(i2) Then TYi = i2: Exit For
                                        Next i2
                                    Wda = Wda + "+" + F9(Piti) + "|" + f0(TYi)
                                    Next ii
                                Lm = Lm + 1: ��Data(Lm) = "��Hp_Y_Xpit=" + Mid(Wda, 2)
                                End If
                     
                          '[[[ Y���� ����̰�� Hpit ]]]
                               Wda = F9(��Hp_Start)
                               If ��Hp_����_Y_pit(1) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(1) / ��Hp_����_Y_pit(1)) + "x" + F9(��Hp_����_Y_pit(1))
                               If ��Hp_����_Y_pit(2) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(2) / ��Hp_����_Y_pit(2)) + "x" + F9(��Hp_����_Y_pit(2))
                               If ��Hp_����_Y_pit(3) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(3) / ��Hp_����_Y_pit(3)) + "x" + F9(��Hp_����_Y_pit(3))
                               If ��Hp_����_Y_pit(4) > 0 Then Wda = Wda + "+" + f0(��Hp_��Ԓ�(4) / ��Hp_����_Y_pit(4)) + "x" + F9(��Hp_����_Y_pit(4))
                               
                             '  ��Hp_����_Y_pits = "_@" + Wda
                               Lm = Lm + 1: ��Data(Lm) = "��Hp_Y_Hpit=" + Wda
                               Call Data_����(Wda, ��Hp_Y_HPitni, Di)
                     
                          '[[[ Y���� ����̰�� �z�u ]]]
                              '��Hp_Y_HPitni
                     '          ��YHpH�z�u=50x1,2+3x3                     Xpit �̎w�� ��-->��    �ȗ��̂΂���  Xpit(1)
                               Lm = Lm + 1: ��Data(Lm) = "��Hp_Y_�z�u=" + f0(��Hp_Y_HPitni) + "x1,2"
                     
                     
'                     Lm = Lm + 1: ��Data(Lm) = "'[[[ c3 �� Y���� ����̰�� �ł�  ]]]"
'                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
'                         Lm = Lm + 1: ��Data(Lm) = "' B    : ̰�ߓS�� X�������ł�    J�� Joint�����邱�Ƃ�����  J* �͕Б��̂� Joint"
'                         Lm = Lm + 1: ��Data(Lm) = "' D    : ̰�ߓS�� Y�������ł�"
'                         Lm = Lm + 1: ��Data(Lm) = "' X    : ̰�ߓS�� Y�����̾����ʒu�ł�   ���ʂ���Start"
'                         Lm = Lm + 1: ��Data(Lm) = "' @    : ̰�ߓS���߯��ł�    @�߯��͉�����"
'                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"
'
'
'                         Lm = Lm + 1: ��Data(Lm) = "'exp   c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390       ' (c5) Hoop Y����  ���� 1"
'                         Lm = Lm + 1: ��Data(Lm) = "'exp   c3-2=D19_B1059_D1712+J+1143_SD390                                        ' (c5) Hoop Y����  ���� 2 �į�ߕ� ��߼��"
'
'                      Lm = Lm + 1: ��Data(Lm) = "c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390      "
'                      Lm = Lm + 1: ��Data(Lm) = "c3-2=D19_B1059_D1712+J+1143_SD390               "
           
           
           ��Di = Lm

'����������������������������������������������������������������������������������������������������������������������������
'�� �� �į��                                                                                                               ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim Stoperi As Integer, Stoper�S�ؖ{��s As String, Stoper�S�،as As String, Stoper���s As String, Stoperpits As String
        Dim StoperX�ʒus As String, StoperY�ʒus As String, StoperZ�ʒus As String
        Dim Stoper_Tyi As Integer ' 1 ��       2 ��
        Dim Stoper�S��Bs As String, Stoper�S��Hs As String, Stoper_Pits As String
        Lm = 0
                       Lm = Lm + 1: StoperData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
                       Lm = Lm + 1: StoperData(Lm) = "'�� �� �į��                                                                                                               ��"
                       Lm = Lm + 1: StoperData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"

                       Lm = Lm + 1: StoperData(Lm) = "'[[[ �į��  �S�� �ł�  ]]]"
                       Lm = Lm + 1: StoperData(Lm) = "' n    : �S�ؖ{��"
                       Lm = Lm + 1: StoperData(Lm) = "' D    : �S�،a"
                       Lm = Lm + 1: StoperData(Lm) = "' K    : ����ʂ���̔��ʒu�ł�"
                       Lm = Lm + 1: StoperData(Lm) = "' @    : �S�؂̂��߯�"
                       Lm = Lm + 1: StoperData(Lm) = "' X    : �S�؂̈ʒu�̂��� �į�߉�����̈ʒu"
                       Lm = Lm + 1: StoperData(Lm) = "' Y    : �S�؂̈ʒu�̂��� �į�߉�����̈ʒu"
                       Lm = Lm + 1: StoperData(Lm) = "' B    : �į�ߓS�؂̒����ł�"
                       Lm = Lm + 1: StoperData(Lm) = "' H    : �į�ߓS�؂̍����ł�"
                       Lm = Lm + 1: StoperData(Lm) = "' SD   : �ގ�s"

                       Lm = Lm + 1: StoperData(Lm) = "'exp   H1=10-D19_Y150_B410_H720_@109+4x100+5x200_SD390    '   �p�x45���ōl��"
                       Lm = Lm + 1: StoperData(Lm) = "'exp   H2=10-D16_X150_Y150_B150_H1200_@125+4x100+5x200_SD390"
                       Lm = Lm + 1: StoperData(Lm) = "'exp   H3=D16_H1400_@200_SD390"
                       Lm = Lm + 1: StoperData(Lm) = ""
              

        Stoperi = 1
              Lm = Lm + 1: StoperData(Lm) = ".�į��"
              Lm = Lm + 1: StoperData(Lm) = "����=�į��1"
              Lm = Lm + 1: StoperData(Lm) = "����=" + F9(pStop1(1, 2)) + "x" + F9(pStop1(1, 1)) + "x" + F9(pStop1(1, 4))   '    ����=410x410x1430
              Stoper_Tyi = 1: If pStop1(1, 2) = 0 Then Stoper_Tyi = 2
              '[[[ H1 �S�� ]]]
              Call SP_Data��i(pStopPictW1(1), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop2(1, 1))
              StoperY�ʒus = "_Y150"    ' �į�߂̉������ YL
              Stoper�S��Bs = "_B" + F9(pStop2(1, 2))
              Stoper�S��Hs = "_H" + F9(pStop2(1, 3)): If pStop2(1, 3) = 0 Then Stoper�S��Hs = "_H900": If ����CK > 99 Then Stop
              Stoperpits = "_@" + pStopPictW1(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperY�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

              '[[[ H2 �S�� ]]]
              If pStopPictW1(2) = "" Then pStopPictW1(2) = "100": If ����CK > 99 Then Stop   '*****
              Call SP_Data��i(pStopPictW1(2), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop2(2, 1))
              StoperX�ʒus = "_X150"    ' �į�߂̉������ XL
              StoperY�ʒus = "_Y150"    ' �į�߂̉������ YL
              StoperZ�ʒus = "": If Stoper_Tyi = 2 Then StoperZ�ʒus = "_Z-150"
              Stoper�S��Bs = "_B" + F9(pStop2(2, 2))
              Stoper�S��Hs = "_H" + F9(pStop2(2, 3)): If pStop2(2, 3) = 0 Then Stoper�S��Hs = "_H900": If ����CK > 99 Then Stop
              Stoperpits = "_@" + pStopPictW1(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperX�ʒus + StoperY�ʒus + StoperZ�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

              '[[[ H3 �S�� ]]]
              Stoper�S�،as = "D" + f0(pStop2(3, 1))
              Stoper�S��Hs = "_H" + F9(pStop2(3, 2)): If pStop2(3, 2) = 0 Then Stoper�S��Hs = "_H900": If ����CK > 99 Then Stop
              
              StoperY�ʒus = "_Z-150"   ' ���ォ���ZL
              Stoper_Pits = pStopPictW1(3)
                  If Stoper_Pits = "" Then ��er = " pStopPictW1(3)=''    ": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
                  Stoper_Pits = FP_Stoper_H3��p(Stoper_Pits): If ��er <> "" Then If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
              Stoperpits = "_@" + Stoper_Pits
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper�S�،as + StoperY�ʒus + Stoper�S��Hs + Stoperpits + "_SD390"


        If pStop1(2, 1) + pStop1(2, 4) > 0 Then
              Stoperi = 2
             
              Lm = Lm + 1: StoperData(Lm) = ""
              Lm = Lm + 1: StoperData(Lm) = ".�į��"
              Lm = Lm + 1: StoperData(Lm) = "����=�į��2"
              Lm = Lm + 1: StoperData(Lm) = "����=" + F9(pStop1(2, 2)) + "x" + F9(pStop1(2, 1)) + "x" + F9(pStop1(2, 4))   '    ����=410x410x1430
              Stoper_Tyi = 1: If pStop1(2, 2) = 0 Then Stoper_Tyi = 2
              '[[[ H1 �S�� ]]]
              Call SP_Data��i(pStopPictW2(2), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop3(1, 1))
              StoperY�ʒus = "_Y150"
              Stoper�S��Bs = "_B" + F9(pStop3(1, 2))
              Stoper�S��Hs = "_H" + F9(pStop3(1, 3))
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperY�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

              '[[[ H2 �S�� ]]]
              Call SP_Data��i(pStopPictW2(2), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop3(2, 1))
              StoperX�ʒus = "_X150"
              StoperY�ʒus = "_Y150"
              StoperZ�ʒus = "": If Stoper_Tyi = 2 Then StoperZ�ʒus = "_Z-150"
              Stoper�S��Bs = "_B" + F9(pStop3(2, 2))
              Stoper�S��Hs = "_H" + F9(pStop3(2, 3))
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperX�ʒus + StoperY�ʒus + StoperZ�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

              '[[[ H3 �S�� ]]]
              Stoper�S�،as = "D" + f0(pStop3(3, 1))
              Stoper�S��Hs = "_H" + F9(pStop3(3, 2)): If pStop3(3, 2) = 0 Then Stoper�S��Hs = "_H300" '*****
              StoperY�ʒus = "_Z-150"
              Stoper_Pits = pStopPictW2(3)
                  If Stoper_Pits = "" Then ��er = " pStopPictW2(3)=''    ": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
                  Stoper_Pits = FP_Stoper_H3��p(Stoper_Pits): If ��er <> "" Then If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
              Stoperpits = "_@" + Stoper_Pits
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper�S�،as + StoperY�ʒus + Stoper�S��Hs + Stoperpits + "_SD390"

             End If
             
             StoperDi = Lm


'����������������������������������������������������������������������������������������������������������������������������
'�� �� �B��                                                                                                                ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim ����i As Integer, �����S�ؖ{��s As String, �����S�،as As String, �������s As String, ����pits As String, ����Y�ʒus As String, �����S��Bs As String, �����S��Hs As String
             Dim �A���S�،as As String, �A���S��Bs As String, �A���S��Hs As String, �A��Xpits As String, �A��Ypits As String, �A���S�ؐ�i As Integer
        
                       Lm = 0
                       Lm = Lm + 1: ����Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
                       Lm = Lm + 1: ����Data(Lm) = "'�� �� �B��                                                                                                                ��"
                       Lm = Lm + 1: ����Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
                       Lm = Lm + 1: ����Data(Lm) = "'[[[ ����  �S�� �ł�  ]]]"

                       Lm = Lm + 1: ����Data(Lm) = "' n    : �S�ؖ{��"
                       Lm = Lm + 1: ����Data(Lm) = "' D    : �S�،a"
                       Lm = Lm + 1: ����Data(Lm) = "' K    : ����ʂ���̔��ʒu�ł�"
                       Lm = Lm + 1: ����Data(Lm) = "' @    : �S�؂̂��߯�   �S�ؖ{��-1"
                       Lm = Lm + 1: ����Data(Lm) = "' Y    : �S�؂̈ʒu�̂��� ��������O���Ɍ������� +"
                       Lm = Lm + 1: ����Data(Lm) = "' B    : �B���S�؂̒����ł�"
                       Lm = Lm + 1: ����Data(Lm) = "' H    : �B���S�؂̍����ł�"
                       Lm = Lm + 1: ����Data(Lm) = "' SD   : �ގ�s"


                       Lm = Lm + 1: ����Data(Lm) = "'exp   S1=8-D19_K280_Y62.5_@7x125_B1050_H570_SD390   ' X����"
                       Lm = Lm + 1: ����Data(Lm) = "'exp   S2=8-D22_K300_@7x150_B875_H660_SD390          ' Y����"

        
        ����i = 1
        Lm = Lm + 1: ����Data(Lm) = ".����"            '����

              Lm = Lm + 1: ����Data(Lm) = "����=�B��1"
              Lm = Lm + 1: ����Data(Lm) = "BD=" + F9(pSisyu1(1, 2)) + "x" + F9(pSisyu1(1, 1))   '  BD=810x560                             ' BX x BY  �j����


             '[[[ S1 �S�� ]]]
              Call SP_Data��i(pSisyu2(1, 2), ni, Di)
              �����S�ؖ{��s = f0(ni)
              �����S�،as = "-D" + f0(pSisyuD(1, 2))
              �������s = "_K" + F9(pSisyukabu(1))
              ����Y�ʒus = "" '����Y�ʒus = "_Y62.5" '********
              �����S��Bs = "_B" + F9(FP�v�ZX(pSisyu2(1, 1)) + pSisyuD(1, 1))
              �����S��Hs = "_H" + f0(30 * pSisyuD(1, 2)) '30d
              ����pits = "_@" + pSisyu2(1, 2)
              Lm = Lm + 1: ����Data(Lm) = "S1=" + �����S�ؖ{��s + �����S�،as + �������s + ����Y�ʒus + �����S��Bs + �����S��Hs + ����pits + "_SD390"

             '[[[ S2 �S�� ]]]
              Call SP_Data��i(pSisyu2(1, 1), ni, Di)
              �����S�ؖ{��s = f0(ni)
              �����S�،as = "-D" + f0(pSisyuD(1, 1))
              �������s = "_K" + F9(pSisyukabu(1) + (pSisyuD(1, 1) + pSisyuD(1, 2)) / 2)
              �����S��Bs = "_B" + F9(FP�v�ZX(pSisyu2(1, 2)))
              �����S��Hs = "_H" + f0(30 * pSisyuD(1, 1))
              ����pits = "_@" + pSisyu2(1, 1)
              Lm = Lm + 1: ����Data(Lm) = "S2=" + �����S�ؖ{��s + �����S�،as + �������s + �����S��Bs + �����S��Hs + ����pits + "_SD390"

            '[[[ �����k���ٕ⋭�� ]]]
             �A��Xpits = Replace��s(pSisyu3(1, 3)):   �A��Ypits = Replace��s(pSisyu3(1, 4))
             �A���S�ؐ�i = 2 * (FP_Data��i(�A��Xpits) + 1) + 2 * (FP_Data��i(�A��Ypits) - 1)
             �A���S�،as = f0(�A���S�ؐ�i) + "-D" + f0(pSisyuDai(1))
             �A���S��Bs = "_B50"
             �A���S��Hs = "_H300"
             �A��Xpits = "_@X" + �A��Xpits:   �A��Ypits = "_@Y" + �A��Ypits
             Lm = Lm + 1: ����Data(Lm) = "�A����=" + �A���S�،as + �A���S��Bs + �A���S��Hs + �A��Xpits + �A��Ypits + "_SD390"

       If pSisyuD(2, 2) > 0 Then
             ����i = 2
             Lm = Lm + 1: ����Data(Lm) = ""
             Lm = Lm + 1: ����Data(Lm) = ".����"            '����
             Lm = Lm + 1: ����Data(Lm) = "����=�B��2"
             Lm = Lm + 1: ����Data(Lm) = "BD=" + F9(pSisyu1(2, 2)) + "x" + F9(pSisyu1(2, 1))   '  BD=810x560                             ' BX x BY  �j����


             '[[[ S1 �S�� ]]]
             Call SP_Data��i(pSisyu2(2, 2), ni, Di)
             �����S�ؖ{��s = f0(ni)
             �����S�،as = "-D" + f0(pSisyuD(2, 2))
             �������s = "_K" + F9(pSisyukabu(2))
             ����Y�ʒus = "" '����Y�ʒus = "_Y62.5" '********
             �����S��Bs = "_B" + F9(FP�v�ZX(pSisyu2(2, 1)) + pSisyuD(2, 1))
             �����S��Hs = "_H" + f0(30 * pSisyuD(2, 2))
             ����pits = "_@" + pSisyu2(2, 2)
             Lm = Lm + 1: ����Data(Lm) = "S1=" + �����S�ؖ{��s + �����S�،as + �������s + ����Y�ʒus + �����S��Bs + �����S��Hs + ����pits + "_SD390"

             '[[[ S2 �S�� ]]]
             Call SP_Data��i(pSisyu2(2, 1), ni, Di)
             �����S�ؖ{��s = f0(ni)
             �����S�،as = "-D" + f0(pSisyuD(2, 1))
             �������s = "_K" + F9(pSisyukabu(2) + (pSisyuD(2, 1) + pSisyuD(2, 2)) / 2)
             �����S��Bs = "_B" + F9(FP�v�ZX(pSisyu2(2, 2)))
             �����S��Hs = "_H" + f0(30 * pSisyuD(2, 1))
             ����pits = "_@" + pSisyu2(2, 1)
             Lm = Lm + 1: ����Data(Lm) = "S2=" + �����S�ؖ{��s + �����S�،as + �������s + �����S��Bs + �����S��Hs + ����pits + "_SD390"
         
             '[[[ �����k���ٕ⋭�� ]]]
             �A��Xpits = Replace��s(pSisyu3(2, 3)):   �A��Ypits = Replace��s(pSisyu3(2, 4))
             �A���S�ؐ�i = 2 * (FP_Data��i(�A��Xpits) + 1) + 2 * (FP_Data��i(�A��Ypits) - 1)
             �A���S�،as = f0(�A���S�ؐ�i) + "-D" + f0(pSisyuDai(1))
             �A���S��Bs = "_B50"
             �A���S��Hs = "_H300"
             �A��Xpits = "_@X" + �A��Xpits:   �A��Ypits = "_@Y" + �A��Ypits
             Lm = Lm + 1: ����Data(Lm) = "�A����=" + �A���S�،as + �A���S��Bs + �A���S��Hs + �A��Xpits + �A��Ypits + "_SD390"
         End If



         ����Di = Lm

'����������������������������������������������������������������������������������������������������������������������������
'�� �� ��                                                                                                                  ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim ��_BX As Single, ��_BY As Single, ��_H1 As Single, ��_H2 As Single
        ��_BX = pW(1): ��_BY = pB(1): ��_H1 = pH(3): ��_H2 = pH(2)
        
        Dim Stoper����s, �B������s As String
        Lm = 0
    ' Lm = Lm + 1: ��Data(Lm) = "errck'"
        Lm = Lm + 1: ��Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��Data(Lm) = "'�� �� ��                                                                                                                  ��"
        Lm = Lm + 1: ��Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��Data(Lm) = ".��" '����

                 Lm = Lm + 1: ��Data(Lm) = "BX=" + F9(��_BX) ' 8900              '��X���� BX=4750+4750
                 Lm = Lm + 1: ��Data(Lm) = "BY=" + F9(��_BY) ' 2000              '��Y���� BY=1500+1500
                 Lm = Lm + 1: ��Data(Lm) = "H=" + F9(��_H1) + "+" + F9(��_H2) ' 500 + 1500        '������

                ' Lm = Lm + 1: ��Data(Lm) = "���z=10,-28"          ' ���z=�����̒l,�[�̒l    ���z=10,-28,-20
                 Lm = Lm + 1: ��Data(Lm) = "���z=" + F9(��_BY / 80) + ",0"    ' ���z=�����̒l,�[�̒l    ���z=10,-28,-20
                 Lm = Lm + 1: ��Data(Lm) = "r=0"           'r=250
                 Lm = Lm + 1: ��Data(Lm) = "r2=" + F9(pRHanti(0)) ' 0 'r2=1500                ' ���Ɨ�����


            '[[[ �į�߈ʒu ]]]
                 Dim Stoper_LY As Double, Stoper_n As Integer, Stoper�ʒus As String
                 Lm = Lm + 1: ��Data(Lm) = "'  * �į�߈ʒu �� �I�_ �����E   �N�_ �����E �̏��� �ɓ��͂���"
                 Lm = Lm + 1: ��Data(Lm) = "�į�߈ʒu"
                         '  [[[ �į�߈ʒu �� ���L�̏��Ԃɓ��͂��� ]]]
                         '  �I�_ �����E   �N�_ �����E �̏���
                         
                         '   -2650,320   0,320    2650,320
                         '   -1300,-575,�į��2    1300,-575,�į��2      ' X,Y,�į�߰����
 
                         Stoper_LY = pB(1) / 2 - pStop1(2, 3)
                         D1s = pStopPictW(2):   Call SP_Data��i(D1s, Stoper_n, Di)
                 
                         Stoper�ʒus = ""
                         Stoper����s = "�į��1": If Stoperi > 1 Then Stoper����s = "�į��2"
                         For ii = 1 To Stoper_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             Stoper�ʒus = Stoper�ʒus + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(Stoper_LY) + "," + Stoper����s
                              Next ii
                         Lm = Lm + 1: ��Data(Lm) = Stoper�ʒus

                         Stoper_LY = pB(1) / 2 - pStop1(1, 3)
                         D1s = pStopPictW(1):   Call SP_Data��i(D1s, Stoper_n, Di)
                 
                         Stoper�ʒus = ""
                         Stoper����s = "�į��1"
                         For ii = 1 To Stoper_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             Stoper�ʒus = Stoper�ʒus + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(-Stoper_LY) + "," + Stoper����s
                              Next ii
                         Lm = Lm + 1: ��Data(Lm) = Stoper�ʒus


         '[[[ �B���ʒu ]]]
                 Dim �B��_LY As Double, �B��_n As Integer, �B���ʒus As String
                 Lm = Lm + 1: ��Data(Lm) = "'  * �B���ʒu �� �I�_ �����E   �N�_ �����E �̏��Ԃɓ��͂���"
                 Lm = Lm + 1: ��Data(Lm) = "�B���ʒu"
                         '  [[[ �B���ʒu �� ���L�̏��Ԃɓ��͂��� ]]]
                         '  �I�_ �����E   �N�_ �����E �̏���
                         '   -2650,320   0,320    2650,320
                         '   -1300,-575,�į��2    1300,-575,�į��2      ' X,Y,�į�߰����
 
                         �B��_LY = pB(1) / 2 - pSisyu1(2, 3)
                         D1s = pSisyuPictW(2):   Call SP_Data��i(D1s, �B��_n, Di)
                 
                         �B������s = "�B��1": If ����i > 1 Then �B������s = "�B��2"
                         �B���ʒus = ""
                         For ii = 1 To �B��_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                              �B���ʒus = �B���ʒus + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(�B��_LY) + "," + �B������s
                              Next ii
                         Lm = Lm + 1: ��Data(Lm) = �B���ʒus

                         �B��_LY = pB(1) / 2 - pSisyu1(1, 3)
                         D1s = pSisyuPictW(1):   Call SP_Data��i(D1s, �B��_n, Di)
                 
                         �B���ʒus = "": �B������s = "�B��1"
                         For ii = 1 To �B��_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             �B���ʒus = �B���ʒus + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(-�B��_LY) + "," + �B������s
                              Next ii
                         Lm = Lm + 1: ��Data(Lm) = �B���ʒus

         '[[[ Loop �� ٰ�ߋ� �ł�  ]]]   Y�� �Ώۍl��
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ Loop �� ٰ�ߋ� �ł�  ]]]  "
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ٰ�ߋ،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �������ʂ���̔��(dt)�ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ����ꂩ��̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : �S�؂�X���������ł�      B L1 + JL + L2  r �܂܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�؂�Y���������ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' r    : ٰ�ߋ� �́@r ���a�ł�  ���͂��Ȃ��ꍇ  r=D/2"
                         
                         Lm = Lm + 1: ��Data(Lm) = "'exp    �N�_Loop=D32_K136_@126+2x64_B4124+J960+5124_D1244_SD390"
                         Lm = Lm + 1: ��Data(Lm) = "'exp    �I�_Loop=D32_K216_@126+3x64_B4044+W+5044_D1084_r350_SD390"
                        
                         Dim �N�_��Loop��ri(2) As Single
                         Dim �I�_��Loop��ri(2) As Single
                                                  
                         �N�_��Loop��ri(1) = ���[�v�S��R(1): �N�_��Loop��ri(2) = ���[�v�S��R(2) '''03/11/01 nagase
                         �I�_��Loop��ri(1) = ���[�v�S��R(3): �I�_��Loop��ri(2) = ���[�v�S��R(4)
                         
                         
                         Dim Loop��Bi As Single, Loop��Di As Single, Loop��ri As Single
                         Dim Loop�،as As String, Loop�؉�dts As String, Loop��Pits As String, Loop��Bs As String, Loop��Ds As String, Loop��rs As String
                         Dim Loop�،ai As Single, Loop��b As Single, Loop��L As Single, Loop��Joint_L As Single, Loop��D�� As Single
                         Dim Loop�ؕ�i As Single, �N�_Loop�ؕ�i As Single, �I�_Loop�ؕ�i As Single
                         Dim Loop�؉�dti As Single, �N�_Loop�؉�dti As Single, �I�_Loop�؉�dti As Single
                         
                         For ii = 1 To 20: �N�_Loop���ii(ii) = 0: �I�_Loop���ii(ii) = 0: Next ii

                         Loop�،ai = pHariDai(1): If Loop�،ai = 0 Then Loop�،ai = 16: ��er = " pHariDai(1)=0    ": er (""): ��er = "": If ����CK > 99 Then Stop
                         Loop�،as = "D" + f0(Loop�،ai)
                         Loop��Joint_L = FP_���r_�S��_Data("KHL", "SD390", "�W��", Loop�،as)

          '[[[ ٰ�ߋ� �N�_�� ]]]
                  '[ �O Loop ]
                         Loop�؉�dti = pHariLoop(1, 1)
                         Loop�؉�dts = "_K" + F9(Loop�؉�dti)
                         Loop��Pits = "_@" + F9(pHariKaburi(1) + pHariStrD(1) + Loop�،ai / 2) + "+" + f0(pHariLoop(2, 2) - 1) + "x" + F9(2 * Loop�،ai)
                         Loop��Bi = pHari���[�v������(1)
                       ' Loop��Bs = "_B" + F9(0.3 * Loop��Bi) + "+J" + F9(Loop��Joint_L) + "+" + F9(0.7 * Loop��Bi)
                         Loop��Bs = "_B" + F9(0.3 * Loop��Bi) + "+W+" + F9(0.7 * Loop��Bi)
                         Loop��ri = �N�_��Loop��ri(1)
                         Loop��rs = "": If Loop��ri > 0 Then Loop��rs = "_r" + F9(Loop��ri)
                         Loop�ؕ�i = pHariLoop(1, 2): Loop��Ds = "_D" + F9(Loop�ؕ�i)
                         If Loop�ؕ�i > 0 Then
                               �N�_Loop�ؕ�i = Loop�ؕ�i: �N�_Loop�؉�dti = Loop�؉�dti: �N�_Loop���ii(1) = 1:
                               Lm = Lm + 1: ��Data(Lm) = "�N�_Loop=" + Loop�،as + Loop�؉�dts + Loop��Pits + Loop��Bs + Loop��Ds + Loop��rs + "_SD390"
                               End If
                       
                  '[ �� Loop ]
                         Loop��D�� = pHariLoop(1, 2) - pHariLoop(1, 3)
                         Loop�؉�dti = pHariKaburi(1) + Loop��D�� / 2
                         Loop�؉�dts = "_K" + F9(Loop�؉�dti)
                         Loop��Bi = Loop��Bi - Loop��D��
                         Loop��Bs = "_B" + F9(0.3 * Loop��Bi) + "+J" + F9(Loop��Joint_L) + "+" + F9(0.7 * Loop��Bi)
                         Loop��Pits = "_@" + F9(pHariKaburi(1) + pHariStrD(1) + Loop�،ai / 2) + "+" + f0(pHariLoop(2, 3) - 1) + "x" + F9(2 * Loop�،ai)
                         Loop��ri = �N�_��Loop��ri(2)
                         Loop��rs = "": If Loop��ri > 0 Then Loop��rs = "_r" + F9(Loop��ri)
                         Loop�ؕ�i = pHariLoop(1, 3): Loop��Ds = "_D" + F9(Loop�ؕ�i)
                         If Loop�ؕ�i > 0 Then
                               �N�_Loop�ؕ�i = Loop�ؕ�i: �N�_Loop�؉�dti = Loop�؉�dti: �N�_Loop���ii(2) = 1:
                               Lm = Lm + 1: ��Data(Lm) = "�N�_Loop=" + Loop�،as + Loop�؉�dts + Loop��Pits + Loop��Bs + Loop��Ds + Loop��rs + "_SD390"
                               End If
         
         
         
         '[[[ ٰ�ߋ� �I�_�� ]]]
                  '[ �O Loop ]
                         Loop�؉�dti = pHariLoop(1, 4)
                         Loop�؉�dts = "_K" + F9(Loop�؉�dti)
                         Loop��Pits = "_@" + F9(pHariKaburi(1) + pHariStrD(1) + Loop�،ai / 2) + "+" + f0(pHariLoop(2, 5) - 1) + "x" + F9(2 * Loop�،ai)
                         Loop��Bi = pHari���[�v������(2)
                         Loop��Bs = "_B" + F9(0.3 * Loop��Bi) + "+J" + F9(Loop��Joint_L) + "+" + F9(0.7 * Loop��Bi)
                         Loop��ri = �I�_��Loop��ri(1)
                         Loop��rs = "": If Loop��ri > 0 Then Loop��rs = "_r" + F9(Loop��ri)
                         Loop�ؕ�i = pHariLoop(1, 5):  Loop��Ds = "_D" + F9(Loop�ؕ�i)
                         If Loop�ؕ�i > 0 Then
                               �I�_Loop�ؕ�i = Loop�ؕ�i: �I�_Loop�؉�dti = Loop�؉�dti: �I�_Loop���ii(1) = 1:
                               Lm = Lm + 1: ��Data(Lm) = "�I�_Loop=" + Loop�،as + Loop�؉�dts + Loop��Pits + Loop��Bs + Loop��Ds + Loop��rs + "_SD390"
                               End If
                  '[ �� Loop ]
                         Loop��D�� = pHariLoop(1, 5) - pHariLoop(1, 6)
                         Loop�؉�dti = pHariLoop(1, 4) + Loop��D�� / 2
                         Loop�؉�dts = "_K" + F9(Loop�؉�dti)
                         Loop��Bi = Loop��Bi - Loop��D��
                         Loop��Bs = "_B" + F9(0.3 * Loop��Bi) + "+J" + F9(Loop��Joint_L) + "+" + F9(0.7 * Loop��Bi)
                         Loop��Pits = "_@" + F9(pHariKaburi(1) + pHariStrD(1) + Loop�،ai / 2) + "+" + f0(pHariLoop(2, 6) - 1) + "x" + F9(2 * Loop�،ai)
                         Loop�ؕ�i = pHariLoop(1, 6):  Loop��Ds = "_D" + F9(Loop�ؕ�i)
                         Loop��ri = �I�_��Loop��ri(2)
                         Loop��rs = "": If Loop��ri > 0 Then Loop��rs = "_r" + F9(Loop��ri)
                         If Loop�ؕ�i > 0 Then
                               �I�_Loop�ؕ�i = Loop�ؕ�i: �I�_Loop�؉�dti = Loop�؉�dti: �I�_Loop���ii(2) = 1:
                               Lm = Lm + 1: ��Data(Lm) = "�I�_Loop=" + Loop�،as + Loop�؉�dts + Loop��Pits + Loop��Bs + Loop��Ds + Loop��rs + "_SD390"
                               End If
        
        
        '[[[  ���� ٰ�ߊO����    ]]]    �į�ߕ����� ��Ă��܂�
                    '     Dim �N�_����piti As Single, �I�_����piti As Single, ����Starti As Single, ���؊Ԋui As Single
                         
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ ٰ�ߊO����    ]]]    �į�ߕ����� ��Ă��܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ����[�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ����ꂩ����̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : �����ʂ��犄��t���܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' L    : �S�؂̒����ł�     F ��̯��ł�"
                         Dim Loop�O���،as As String, Loop�O����dts As String, Loop�O����Pits As String, Loop�O����Ls As String

                         Lm = Lm + 1: ��Data(Lm) = "'exp   Loop�O����=D16_K126_@396.7+4x180.7_LF+8900+F_SD390"

                         Lm = Lm + 1: ��Data(Lm) = "'     �� Loop�O���ؒ[��, Loop�O���ؓ��� �͌v�Z���܂�"

                         Loop�O���،as = "D" + f0(pHariDai(3))
                         Loop�O����dts = "_K" + F9(pHariKaburi(1) + pHariStrD(1) + pHariDai(3) / 2)
                         Loop�O����Pits = "_@" + pHariPictW(1)
                         
                         Loop�O����Ls = "_LF+" + F9(��_BX - 600) + "+F"
                         ��_Loop�O����i = 0
                         If pHariDai(3) > 0 Then ��_Loop�O����i = 1: Lm = Lm + 1: ��Data(Lm) = "Loop�O����=" + Loop�O���،as + Loop�O����dts + Loop�O����Pits + Loop�O����Ls
        
        
        
        '[[[  ����  ٰ�ߓ�����   B2�ł�  ]]]    �į�ߕ����� ��Ă��܂�
                         Dim �N�_����piti As Single, �I�_����piti As Single, ����Starti As Single, ���؊Ԋui As Single
                         
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ ٰ�ߓ�����   �N�_��+�I�_�� ]]]    �į�ߕ����� ��Ă��܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ����[�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ����ꂩ����̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : �����ʂ��犄��t���܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' L    : �S�؂̒����ł�     F ��̯��ł�"
                         Dim Loop�����،as As String, Loop������dts As String, Loop������Pits As String, Loop������Ls As String

                         Lm = Lm + 1: ��Data(Lm) = "'exp   Loop������=D16_K126_@396.7+4x180.7_LF+8900+F_SD390"

                         Lm = Lm + 1: ��Data(Lm) = "'     �� Loop�����ؒ[��, Loop�����ؓ��� �͌v�Z���܂�"

                         Loop�����،as = "D" + f0(pHariDai(2))
                         Loop������dts = "_K" + F9(pHariKaburi(1) + pHariStrD(1) + pHariDai(2) / 2)
                        'Loop������Pits
                               �N�_����piti = �N�_Loop�ؕ�i / (pHariN(1) + 1)
                               �I�_����piti = �I�_Loop�ؕ�i / (pHariN(2) + 1)
                               ���؊Ԋui = ��_BY - �N�_Loop�؉�dti - �N�_Loop�ؕ�i - �I�_Loop�؉�dti - �I�_Loop�ؕ�i + �N�_����piti + �I�_����piti
                               ����Starti = �N�_Loop�؉�dti + �N�_����piti
                                    D3s = "+" + F9(���؊Ԋui)
                                    Select Case pHariN(1)
                                    Case 0:  D1s = "": D3s = "": ����Starti = ��_BY - �I�_Loop�؉�dti + �I�_����piti
                                    Case 1:  D1s = ""
                                    Case 2:  D1s = "+" + F9(�N�_����piti)
                                    Case Else:   D1s = "+" + f0(pHariN(1) - 1) + "x" + F9(�N�_����piti)
                                    End Select
                                    Select Case pHariN(2)
                                    Case 0:  D2s = ""
                                    Case 1:  D2s = D3s
                                    Case 2:  D2s = D3s + "+" + F9(�I�_����piti)
                                    Case Else:   D2s = D3s + "+" + f0(pHariN(2) - 1) + "x" + F9(�I�_����piti)
                                    End Select
                               
                               Loop������Pits = "_@" + F9(����Starti) + D1s + D2s
                         
                         Loop������Ls = "_LF+" + F9(��_BX - 900) + "+F"
                         ��_Loop������i = 0
                         ��_Loop������i = 1
                         Lm = Lm + 1: ��Data(Lm) = "Loop������=" + Loop�����،as + Loop������dts + Loop������Pits + Loop������Ls

        
        '[[[  ���[��(��������) �ł�  ]]]   X�� �Ώۍl��
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ ���[�� ]]] "
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �����[�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �����ʂ���� dt�ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' Z    : ����[�ʂ���� Z�ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : L2 �ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' H    : h3 �ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : �����ʂ��犄��t���܂�"
                         'Lm = Lm + 1: ��Data(Lm) = "' r    : ���a�ł�"
                      Lm = Lm + 1: ��Data(Lm) = "'exp   ���[��=D22_K95_Z-76_B3160_H1848_@130+5x180.6+3x211.3+203+130_SD390"
                      'Lm = Lm + 1: ��Data(Lm) = "'exp   ���[��=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1337.68+1378.04_r150_SD390"

                        Dim ������،as As String, �������dts As String, �������Bs As String, �������Hs As String, �������Pits As String, ������rs As String
                        Dim �������Zs As String
                        Dim ������،ai As Single
                        K1 = pHariKaburi(3)  '??? ��St�S��dts = "_K" + F9(pHariKaburi(2) + pHariStrD(1) / 2)
                        K2 = pHariKaburi(2)
                        K3 = pHariKaburi(4)
                        K4 = pkuitaiKaburi(1)
                        h1 = pKatamochi0(0): h1 = h1 + pKatamochi12(0)
                        h2 = K2 - pH(3) / pW(4) * K1
                        h3 = Int(pH(2) - (h1 + h2))
                        D1 = Sqr(pH(3) ^ 2 + pW(4) ^ 2) / pW(4)
                        L1 = K1 * D1 - Sqr(K2 ^ 2 - K3 ^ 2)
                        L2 = F��2(pHariBon(1) + (K4 + pW(4) - K1) * D1)


                        ������،ai = pHariDai(4): If pHariDai(4) = 0 Then ������،ai = 16: ��er = " pHariDai(4)=0    ": er (""): ��er = "": If ����CK > 99 Then Stop

                        ������،as = "D" + f0(������،ai)
                        �������dts = "_K" + F9(K1)
                        �������Zs = "_Z-" + F9(h1)
                        �������Bs = "_B" + F9(L2)
                        �������Hs = "_H" + F9(h3)
                        �������Pits = "_@" + pHariPictW(2)
                        '������rs = "_r=0"
                        Lm = Lm + 1: ��Data(Lm) = "���[��=" + ������،as + �������dts + �������Zs + �������Bs + �������Hs + �������Pits + "_SD390"
        
        
        '[[[ �����⋭�� �� �� ���S�� �ł�  (�����⋭��) ]]]
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ �����⋭��  ]]]"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �����⋭�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �����ʂ���́@dt�ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ����ꂩ��̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : �S�؂�X���������ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�؂�Y���������ł� �����ꍇ�����v�Z"
                         Lm = Lm + 1: ��Data(Lm) = "' r    : ���a�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' M1   St����     M2  St�O��   �ł�"
                        
                        
                         Dim �����⋭��_Propertys As String
                         Dim �����⋭�،as As String, �����⋭��dts As String, �����⋭��Bs As String, �����⋭��Ds As String, �����⋭��Pits As String, �����⋭��rs As String
                         Dim �����⋭�،ai As Single, �����⋭��dti As Single, �����⋭��Bi As Single, �����⋭��Di As Single

                         Lm = Lm + 1: ��Data(Lm) = "'exp    �����⋭��=D25_K73_@126+12x150_B3150_D2829_SD390"
                        ' Lm = Lm + 1: ��Data(Lm) = "'exp    �����⋭��2=D25_B2850�`1830_D2829_r270_SD390        ' **�`** �̏ꍇ�� ����(r=__ �͉����Ȃ�)"

                         L1 = pHariBon(2) + pkuitaiKaburi(1)
                         K5 = pKatamochi0(2) + pHariDai(4)
                         L2 = F��2(L1 + pW(4) - K5)
                         h1 = pB(1) - 100
                         
                         �����⋭�،ai = pHariDai(5): If �����⋭�،ai = 0 Then �����⋭�،ai = 16: ��er = " pHariDai(5)=0    ": er (""): ��er = "": If ����CK > 99 Then Stop
                         �����⋭�،as = "D" + f0(�����⋭�،ai)
                             
                             '�����⋭��dti = pHariKaburi(3) + �����⋭�،ai / 2
                         �����⋭��dts = "_K" + F9(K5)
                             '�����⋭��Bi = (��_BX - pW(6)) / 2 + pHariBon(2) - �����⋭��dti
                         �����⋭��Bs = "_B" + F9(L2)
                             '�����⋭��Di = ��_BY - 2 * �����⋭��dti
                         �����⋭��Ds = "_D" + F9(h1)
                         �����⋭��Ds = ""
                         
                         �����⋭��Pits = "_@" + Replace��s(pHariPicth(2))
                         
                         �����⋭��_Propertys = "_$" + f0(pHari������)
                         '�����⋭��rs = "_r=270"
                         Lm = Lm + 1: ��Data(Lm) = "�����⋭��=" + �����⋭�،as + �����⋭��dts + �����⋭��Bs + �����⋭��Ds + �����⋭��Pits + �����⋭��_Propertys + "_SD390"

'                         �����⋭��Bs = "_B" + F9(L2) + "�`" + F9(L2) ' �����⋭��Bs = "_B"+F9(�����⋭��Bi)
'                         Lm = Lm + 1: ��Data(Lm) = "�����⋭��2=" + �����⋭�،as + �����⋭��dts + �����⋭��Bs + �����⋭��Ds + �����⋭��Pits + "_SD390"
        


        '[[[  ���� ���~�� �ł�  ]]]      �į�ߕ����� ��Ă��܂�
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ ���~�� �ł�  ]]]      �į�ߕ����� ��Ă��܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ���~�ؓS�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ����ꂩ��̈ʒu(Z���W)�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : �߯�  �����ʂ��犄��t���܂�  n=Pit��-1 �Ƃ��܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' H    : ���~�� �蒅�����ł�"
                         Lm = Lm + 1: ��Data(Lm) = "'exp   ���~��=D16_K100_@15x300_H480_SD390"

                         Dim ���~��Ds As String, ���~��dts As String, ���~��Pits As String, ���~��Hs As String
        
                  '[[[ ���� ���~��  ]]]
                         ���~��Ds = "D" + f0(pHariStrD(1))
                         ���~��dts = "_K" + F9(pHariKaburi(1) + pHariStrD(1) / 2)
                         ���~��Pits = "_@" + Replace��s(pHariPictW(4))
                         ���~��Hs = "_H" + F9(pHariStrBon(1))
                         Lm = Lm + 1: ��Data(Lm) = "���~��=" + ���~��Ds + ���~��dts + ���~��Pits + ���~��Hs + "_SD390"
        
        
        '[[[  �� ���ׯ�� �ł�  ]]]      �į�ߕ����� ��Ă��܂�               2132~1335
                         Lm = Lm + 1: ��Data(Lm) = "'[[[ St �� �� ���ׯ�� �ł�  ]]]      �į�ߕ����� ��Ă��܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' Stpit : ���ׯ���߯�  �����ʂ���@---> �����ʂɌ������Ċ���t���܂� �擪�ɓ���"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ��St�S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �����,�����ꂩ��� dt�ł�"
                         'Lm = Lm + 1: ��Data(Lm) = "' Y    : �����ʂ���̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : ���ׯ�ߓS�؂̒����ł� �����ꍇ�����v�Z"
                         Lm = Lm + 1: ��Data(Lm) = "' H    : ���ׯ�ߓS�؂̍����ł�"

                        Dim ��St�S�،as As String, ��St�S��dts As String, ��St�S��Ys As String, ��St�S��Bs As String, ��St�S��Hs As String, ��St�S��Pits As String, ��St�S��rs As String
                        'Dim ��St�S��Pit1s As String, ��St�S��Pit2s As String, ��St�S��Pit3s As String
                        Dim ��St�S��Yi As Single, ��St�S��Bi As Single, ��St�S��Hi As Single


                       Lm = Lm + 1: ��Data(Lm) = "'exp   Stpit=500+13x150+23x200+13x150"
                       Lm = Lm + 1: ��Data(Lm) = "'exp   ��St=D22_X109_K74.5_B1618_H2292�`1495+F_r160_SD390"
                       Lm = Lm + 1: ��Data(Lm) = "'exp   ��St=D22_X109_K99_B1618_HF+440_SD390"


                         'Lm = Lm + 1: ��Data(Lm) = "' �� B5-2, B5-3 �͌v�Z���܂�"

                   
                   '[[[ �����ׯ�� ]]]
                        ��St�S�،as = "D" + f0(pHariStrD(1))
                        
                        ��St�S��dts = "_K" + F9(pHariKaburi(2) + pHariStrD(1) / 2)
                        '��St�S��Bs
                            Call SP_Pit_L(pHariPictW(2), Di, ni)
                            ��St�S��Bi = ��_BY - Di(1) - Di(ni) + ������،ai + ��St�S��Yi
                        
                            ��St�S��Bs = "_B" + F9(��St�S��Bi)
                        ��St�S��Bs = ""
                        ��St�S��Hs = "_H" + f0(20 * pHariStrD(1))
                        '��St�S��rs = "_r160"
                        Lm = Lm + 1: ��Data(Lm) = "��St=" + ��St�S�،as + ��St�S��dts + ��St�S��Bs + ��St�S��Hs + ��St�S��rs + "_SD390"
                       
                  '[[[ �N�_������ׯ�� ]]]
                        ��St�S��dts = "_K" + F9(pHariKaburi(1) + pHariStrD(1) / 2)
                        ��St�S��Yi = pHariKaburi(3) + pHariStrD(1) / 2:
                            ��St�S��Ys = "" ' "_Y" + F9(��St�S��Yi)
                        ��St�S��Bs = "_B" + F9(pHariStrW(1))
                        '��St�S��Hs
                            D0 = pHariStrD(1): D1 = Loop�،ai: D2 = ������،ai
                            ��St�S��Hi = pH(2) + pH(3) - pHariKaburi(1) + (D1 + D0) / 2 - (pHariKaburi(4) + (D2 + D0) / 2) * Sqr(pW(4) ^ 2 + pH(3) ^ 2) / pW(4)
                            ��St�S��Hs = "_H" + F9(��St�S��Hi)
                        Lm = Lm + 1: ��Data(Lm) = "�N�_����St=" + ��St�S�،as + ��St�S��dts + ��St�S��Ys + ��St�S��Bs + ��St�S��Hs + "_SD390"
                       
                  '[[[ �I�_������ׯ�� ]]]
                        ��St�S��Bs = "_B" + F9(pHariStrW(2))
                        Lm = Lm + 1: ��Data(Lm) = "�I�_����St=" + ��St�S�،as + ��St�S��dts + ��St�S��Ys + ��St�S��Bs + ��St�S��Hs + "_SD390"
                       
                  '[[[ ���ׯ�� Pit ]]]
                        ��St�S��Pits = "_@" + Replace��s(pHariPictW(3))
                        Lm = Lm + 1: ��Data(Lm) = "Stpit=" + ��St�S�،as + ��St�S��Pits

                       
                       
                    ��Di = Lm
                       

       

    ' Stop




    End Sub

Private Sub ���rData�}�ݒ�()
        Dim ii As Integer, X0 As Single, Y0 As Single
        
        Lm = 0
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "'��                                                                                                                        ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "'�� �� ���r�}                                                                                                              ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "'��                                                                                                                        ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "//���r�}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "' ���ق̕ύX     ���_=X0,Y0 �̓��͂̌��   S=1/___ �œ��͂���"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "' ���_�̕ύX�� ��޽��ق� ��{���قɖ߂�"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = " '/���_�\��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "/��{�ݒ�"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "             �p��=A1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "             ���@�[��=��   '���@�[��=���"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "           '  ���@Msize=3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "             ���@�[����size=2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���@�[����p�x=15"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���@�F=��       ' 1:       2:��   3:��   4:��   5:��   6:��   7:��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "                                ��size=1.5 ': P_��_���� = Val(����3s$): If P_��_���� < 0.1 Then P_��_���� = 0.1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "                                ��p�x=15  ': P_��_�p�x = Val(����3s$)"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /�g"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            READ�g=���r�g.D00"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   �Y�z�ؐ}.DXF     �Y�z�ؐ}   �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=�Y"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=100,450              .�z�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=100,380              .K1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=100,350              .K2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=100,250              .�f��a-a"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,250   S=1/20     .�f��a-a�z�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=300,250              .�f��b-b"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=400,250   S=1/20     .�f��b-b�z�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=100,120              .K01"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,120              .K03"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=300,120              .K04"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=400,120              .K02"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=600,150   S=1/10     .�ѓS�،p��ڍא}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=600,250   S=1/10     .��߰���ڍא}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=720,250   S=1/10     .���Ԃ�ڍא}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   ��b�z�ؐ}.DXF     ��b�z�ؐ}   �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=��b"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,390             .�z�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,120             .�f��a-a"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=480,390             .�f��b-b"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=470,200             .F2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=470,150             .F1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=470,110             .F3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,230             .St���H����"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,150             .St���p����"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=600,390             .F12"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=680,390             .F13      '*** F12  ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=750,390             .F11"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=780,390             .F14"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   �B���z�ؐ}.DXF    ���̔z�ؐ}(����1)    �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=�B��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,440             .�B������"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,260             .Stoper����"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=410,450             .�B���f��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=410,270             .�N�_Stoper�f��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=530,270             .�I�_Stoper�f��"
       'Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,300             .�f��B-C"
       'Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=500,300             .�f��F-G"
       'Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=500,150   S=1/20    .�����k���ُڍא}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=490,470             .S1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=560,470             .S2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=490,400             .S3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=560,400             .S4"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=660,300             .�A����"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=120,90              .H1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=210,90              .H2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=300,90              .H3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=120,160             .H4"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=210,160             .H5"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=300,160             .H6"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   ���z�ؐ}.DXF     ���̔z�ؐ}(����3)    �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,190             .���f��X"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,80              .���f��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,-120            .�������f��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=460,190             .���f��Y"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=450,-120  S=1/20    .���f�ʓS�ؔz�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=620,190             .C1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+30,190             .C2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+30,190             .C3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+30,190             .C4"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        'Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=770,220              .CK"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=420,140             .�OHpX"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=335,90              .�OHpY"
        
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=420,90              .��HpX1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=420,+-40            .��HpX2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=420,+-40            .��HpX3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=420,+-40            .��HpX4"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=520,100             .��HpY1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY4"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY5"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY6"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY7"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,100             .��HpY8"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   ���z�ؐ}.DXF     ���̔z�ؐ}(����2)    �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,490             .�����f��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,315             .���f��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,-120            .�f��C-C"  ' �g�O
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=450,490             .���Z�f��a"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+180,490             .���Z�f��b"
       ' Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+180,490             .���Z�f��c" ' ����  Stoper
       ' Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+180,490             .���Z�f��d" ' �����@Stoper
       
       ' Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=670,-120  S=1/20     .�f�ʓS�ؔz�ؐ}"    ' �g�O
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        
        Y0 = 210
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,210             .�N�_Loop1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-50            .�N�_Loop2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-50            .�N�_Loop3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-50            .�I�_Loop1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-50            .�I�_Loop2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-50            .�I�_Loop3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-40            .Loop�O����"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,+-40            .Loop������"
        
        
        If ��_Loop�O����i > 0 Then
            
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=370,320             .�I�_��Loop�O���ؒ[��"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,320             .�I�_��Loop�O���ؓ���2"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,320             .�I�_��Loop�O���ؓ���3"
        
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=370,240             .�N�_��Loop�O���ؒ[��"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,240             .�N�_��Loop�O���ؓ���2"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,240             .�N�_��Loop�O���ؓ���3"
            End If
        
        If ��_Loop������i > 0 Then
        
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=370,180             .�I�_��Loop�����ؒ[��"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,180             .�I�_��Loop�����ؓ���2"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,180             .�I�_��Loop�����ؓ���3"
        
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=370,100             .�N�_��Loop�����ؒ[��"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,100             .�N�_��Loop�����ؓ���2"
            Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+70,100             .�N�_��Loop�����ؓ���3"
            End If
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=550,310             .���[��"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=660,310             .�����⋭��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=750,310             .�����⋭��2"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=580,240             .���~��1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+60,240             .���~��2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+60,240             .���~��3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+60,240             .���~��4"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+60,240             .���~��5"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+60,240             .���~��6"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=580,100             .��St"
        
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=580,180             .��St1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,180             .��St2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,180             .��St3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,180             .��St4"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=+50,180             .��St5"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "//�S�؍ޗ��\�쐬"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "//�S�؍ޗ��\"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "          READ=�S�؍ޗ��\.dat"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""


       �}�ݒ�Di = Lm
    
    
    End Sub


Function FP_Stoper_H3��p(ByVal Moj As String)
      ' FP_Stoper_H3��p
      ' ( ) ���Ƃ�   (150+150+120)+(3*300)  ---> 150+150+120+3x300 �ɂ���
      Dim D1s As String
      
              If Mid(Moj, 1, 1) = "(" Then
                  If InStr(Moj, ")+(") < 1 Then ��er = "Stoper H3  pStopPictW1(3) ����������": er (""): If ����CK > 99 Then Stop: Exit Function Else Exit Function
                  End If
      
      D1s = Replace��s(Moj)
      D1s = �����ϊ�(D1s, "(", "")
      D1s = �����ϊ�(D1s, ")", "")
      FP_Stoper_H3��p = D1s

      End Function


'Public Function F_Total_L(ByVal Moj As String) As Single
'   '  �v�Z�� �̂����v�v�Z   ���������p
'
'    ' exp Moj="250+3*(1000+250)+2x(400+300)"  ---> 5400
'    Dim Ds(500) As String, Di(200), ii As Integer, ni As Integer, Mojn As Integer
'    Dim D1s As String, D2s As String, D3s As String, DDs As String
'    Dim K_in As Integer, n2i As Integer, ��i As Integer, ii2 As Integer
'    Dim Dii(900) As Single, ���v As Single
'
'    ���v = 0
'    K_in = 0
'    Moj = Replace��s(Moj)
'    Mojn = Len(Moj)
'    For ii = 1 To Mojn
'        D1s = Mid(Moj, ii, 1)
'        Select Case D1s
'        Case "+":
'                 Select Case K_in
'                 Case 0
'                 Case Else: D2s = Mid(Moj, 1, ii - 1): D3s = Mid(Moj, ii + 1):  Moj = D2s + "\" + D3s
'                 End Select
'        Case "(": K_in = K_in + 1: If K_in > 1 Then ��er = " (" + Moj + ")  ( ) ����������":  If ����CK > 99 Then Stop
'        Case ")": K_in = K_in - 1: If K_in < 0 Then ��er = " (" + Moj + ")  ( ) ����������":  If ����CK > 99 Then Stop
'        End Select
'        Next ii
'
'    DDs = "": Call Ddata("+", Moj, Ds, Di, ni)
'    For ii = 1 To ni
'        D1s = Ds(ii)
'        ��i = 1: n2i = InStr(D1s, "x"): If n2i > 1 Then ��i = Val(Mid(D1s, 1, n2i - 1)): D1s = Mid(D1s, n2i + 1)
'        Select Case Mid(D1s, 1, 1)
'        Case "(": n2i = Len(D1s): D1s = Mid(D1s, 2, n2i - 2)
'        Case Else
'        End Select
'
'        For ii2 = 1 To ��i:   DDs = DDs + "+" + D1s: Next ii2
'        Next ii
'
'    DDs = �����ϊ�(DDs, "\", "+")
'    Moj = Mid(DDs, 2)
'
'
'   Call Ddata_D("+", Moj, Dii, ni)
'   For ii = 1 To ni: ���v = ���v + Dii(ii): Next ii
'   F_Total_L = ���v
'
'   End Function


Public Function F_�v�Z_����(ByVal Moj As String)
   '  �v�Z�������ׂ� ___+___+___ �ɂ��܂�
    ' x �́@( ) �̑O�ɕt����
    ' exp 250+3*(1000+250)+2x(400+300)  ---> 250+1000+250+1000+250+1000+250+400+300+400+300
    Dim Ds(500) As String, Di(200), ii As Integer, ni As Integer, Mojn As Integer
    Dim D1s As String, D2s As String, D3s As String, DDs As String
    Dim K_in As Integer, n2i As Integer, ��i As Integer, ii2 As Integer
    K_in = 0
    Moj = Replace��s(Moj)
    Mojn = Len(Moj)
    For ii = 1 To Mojn
        D1s = Mid(Moj, ii, 1)
        Select Case D1s
        Case "+":
                 Select Case K_in
                 Case 0
                 Case Else: D2s = Mid(Moj, 1, ii - 1): D3s = Mid(Moj, ii + 1):  Moj = D2s + "\" + D3s
                 End Select
        Case "(": K_in = K_in + 1: If K_in > 1 Then ��er = " (" + Moj + ")  ( ) ����������": er (""): If ����CK > 99 Then Stop
        Case ")": K_in = K_in - 1: If K_in < 0 Then ��er = " (" + Moj + ")  ( ) ����������": er (""): If ����CK > 99 Then Stop
        End Select
        Next ii
   
    DDs = "": Call Ddata("+", Moj, Ds, Di, ni)
    For ii = 1 To ni
        D1s = Ds(ii)
        ��i = 1: n2i = InStr(D1s, "x"): If n2i > 1 Then ��i = Val(Mid(D1s, 1, n2i - 1)): D1s = Mid(D1s, n2i + 1)
        Select Case Mid(D1s, 1, 1)
        Case "(": n2i = Len(D1s): D1s = Mid(D1s, 2, n2i - 2)
        Case Else
        End Select
    
        For ii2 = 1 To ��i:   DDs = DDs + "+" + D1s: Next ii2
        Next ii
   
    DDs = �����ϊ�(DDs, "\", "+")
    F_�v�Z_���� = Mid(DDs, 2)
   
    End Function


Private Sub SP_Pit_L(ByVal Moj As String, Pit() As Single, ni As Integer)
   ' ni Pit ��  200+2*300+150 ni=4
   Moj = F_�v�Z_����(Moj)
   Call Ddata_D("+", Moj, Pit, ni)
   End Sub



Private Function FP�v�ZX(ByVal Moj As String) As Double
    '  8x150 ���v�Z����   1200
    Dim D1s As String, D2s As String
    Dim ni As Integer
    Moj = Replace��s(Moj)
    ni = InStr(Moj, "x")
    Select Case ni
    Case 0:  FP�v�ZX = Val(Moj)
    Case Else:  FP�v�ZX = Val(Mid(Moj, 1, ni - 1)) * Val(Mid(Moj, ni + 1))
    End Select
    

    End Function

Function FP_Data��i(ByVal Wda As String)
      ' Wda �𕪉����� L �� �����߂�
    Dim ��n As Integer, l(900) As Single
    Call SP_Data��i(Wda, ��n, l)
    
    FP_Data��i = ��n
    End Function


Private Sub SP_Data��i(ByVal Wda As String, ByRef ��n As Integer, ByRef l() As Single)
      ' Wda �𕪉����� ���� �iL �����߂�
      Dim ii  As Integer, i2 As Integer, ni As Integer, n2 As Integer, Ds(200) As String, Di(200)
      Dim L1 As Single
      ' Wda="400+350x3+500x3+600"   ��n=8  L(1)=400 L(2)=350 ... L(5)=500
      ��n = 0
      Wda = Replace��s(Wda)
      Call Ddata("+", Wda, Ds, Di, ni)
      For ii = 1 To ni
          Call Data��x(Ds(ii), n2, L1)
          For i2 = 1 To n2:    ��n = ��n + 1: l(��n) = L1
          Next i2
          
      Next ii


End Sub

Private Sub Data��x(ByVal Wda As String, ByRef n As Integer, ByRef l As Single)
     ' Wda="400"    ni=1 L=400
     ' Wda="3x400"  ni=3 L=400
     ' Wda="400x3"  ni=3 L=400
     Dim ni As Integer, n1 As Single, n2 As Single
     Wda = LCase(Wda)
     ni = InStr(Wda, "x")
     Select Case ni
     Case 0:  n = 1: l = Val(Wda)
     Case Else
              n1 = Val(Mid(Wda, 1, ni - 1)): n2 = Val(Mid(Wda, ni + 1))
              n = n1: l = n2: If n > l Then n = n2: l = n1
     End Select
    End Sub




Private Function F_Moj_s1(n As Integer, l() As Single) As String
    ' 200+200+300 �����
    Dim ii As Integer, Wda As String
    Wda = ""
    For ii = 1 To n
        Wda = Wda + "+" + F9(l(ii))
        Next ii
    F_Moj_s1 = Mid(Wda, 2)

    End Function

Private Function Hoop_�ʒu(l As Single, n As Integer, �ʒu() As Single) As Integer
    '  L �� Hoop �̉��Ԗڂɂ��邩�������� �����ꍇ�͂P�ԋ߂��ʒu
    ' �g���؈ʒu�̌���
    Dim ii As Integer, L1 As Single
    For ii = 1 To n
       L1 = l - �ʒu(ii)
       If L1 <= 0 Then Exit For
      Next ii
      Hoop_�ʒu = ii
    End Function

Private Sub �Y_�ʒu(ByRef ��bData() As String)
    ' �Y�{��  �Y�ʒu ���v�Z
    '
    '  pKuihaic1(0�`1, ii)  pKuihaic2(0�`1, ii)
    '
    Dim ii As Integer, i2 As Integer, XYi(30, 30) As Integer
    Dim Wda As String
    Dim �Y�{��i As Integer, X�ʒu��i As Single, Y�ʒu��i As Single, X�ʒui(20) As Single, Y�ʒui(20) As Single
    Dim X�ʒu�{��i(20) As Single, Y�ʒu�{��i(20) As Single
    Dim XcenterN As Integer
    Dim ��bBX2 As Single, ��bBY2 As Single
   
   
        ��bBX2 = pW(7) / 2:        ��bBY2 = (pB(7) + pB(8) + pB(9)) / 2
    
    For ii = 1 To 20: X�ʒu�{��i(ii) = 0: Y�ʒu�{��i(ii) = 0: X�ʒui(ii) = 0: Y�ʒui(ii) = 0: Next ii
    �Y�{��i = 0
    For ii = 0 To 10: If Val(pKuihaic2(1, ii)) = 0 Then Exit For
        X�ʒui(ii + 1) = Val(pKuihaic2(0, ii)) * 1000 - ��bBX2: If Abs(X�ʒui(ii + 1)) < 0.001 Then X�ʒui(ii + 1) = 0
        X�ʒu�{��i(ii + 1) = Val(pKuihaic2(1, ii))
        �Y�{��i = �Y�{��i + X�ʒu�{��i(ii + 1)
        Next ii
        X�ʒu��i = ii
    For ii = 0 To 10: If Val(pKuihaic1(1, ii)) = 0 Then Exit For
        Y�ʒui(ii + 1) = Val(pKuihaic1(0, ii)) * 1000 - ��bBY2: If Abs(Y�ʒui(ii + 1)) < 0.001 Then Y�ʒui(ii + 1) = 0
        Y�ʒu�{��i(ii + 1) = Val(pKuihaic1(1, ii))
        Next ii
        Y�ʒu��i = ii

    For ii = 1 To 30: For i2 = 1 To 30: XYi(ii, i2) = 0: Next i2: Next ii

    X�ʒu��i = Int(X�ʒu��i)
    XcenterN = Int(X�ʒu��i / 2) + 1
    For i2 = 1 To Y�ʒu��i
        Select Case Y�ʒu�{��i(i2)
        Case 1: XYi(XcenterN, i2) = 1
        Case 2: XYi(1, i2) = 1: XYi(Int(X�ʒu��i), i2) = 1
        Case 3: XYi(1, i2) = 1: XYi(XcenterN, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case 4: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(X�ʒu��i - 1, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case 5: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(Int(X�ʒu��i / 2), i2) = 1: XYi(X�ʒu��i - 1, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case 6: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(X�ʒu��i - 2, i2) = 1: XYi(X�ʒu��i - 1, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case 7: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(XcenterN, i2) = 1: XYi(X�ʒu��i - 2, i2) = 1: XYi(X�ʒu��i - 1, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case 8: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(4, i2) = 1: XYi(X�ʒu��i - 3, i2) = 1: XYi(X�ʒu��i - 2, i2) = 1: XYi(X�ʒu��i - 1, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case 9: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(4, i2) = 1: XYi(XcenterN, i2) = 1:
                        XYi(X�ʒu��i - 3, i2) = 1: XYi(X�ʒu��i - 2, i2) = 1: XYi(X�ʒu��i - 1, i2) = 1: XYi(X�ʒu��i, i2) = 1
        Case Else: er ("�Y_�ʒu �Ή��ł��܂���"): Stop
        End Select
        Next i2
    
    For i2 = 1 To Y�ʒu��i
        Wda = ""
        For ii = 1 To X�ʒu��i
            Select Case XYi(ii, i2)
            Case 1:  Wda = Wda + F��(F9(X�ʒui(ii)) + "," + F9(-Y�ʒui(i2)), 17) + " "
            Case Else: Wda = Wda + Space(18)
            End Select
            Next ii
        Lm = Lm + 1: ��bData(Lm) = Wda
        Next i2
    End Sub

Sub SP_��_���_H(ByVal �S�؍ގ�s As String, ByVal ��،as As String, ByRef Start�ʒui As Single, ByRef h0 As Single, ByRef h2_0 As Single)
    ' ��_��؂� H ���v�Z
    ' h0       1�i�ڎ��L
    ' h2_0     2�i�ڎ��L
    Dim ��،ai As Single
    
    Dim h1 As Single, h2 As Single, h3 As Single, h4 As Single, h5 As Single, h6 As Single, h7 As Single, h8 As Single, h9 As Single
    Dim h2_1 As Single, h2_8 As Single
        ��،ai = Val(Mid(��،as, 2))
        h1 = pH(2) + pH(3) + pH(4)
        h2 = pH(5) + pH(6)
        h3 = pKisoKaburi(2) + pKisoDai(3) + pKisoDai(7) + pKisoStrDai(1)
        h4 = ��،ai / 2 + FP_���r_�S��_Data("r1", �S�؍ގ�s, "�W��", ��،as)
        h5 = h2 - (h3 + h4)
        h8 = h1 + h2 - (h3 + h4 + pkuitaiKaburi(2))
        h6 = h8 - h5
        h7 = h1 - h6
        h0 = h5 + h6: h0 = Int(h0 / 10 + 0.9) * 10
        Start�ʒui = h3 + h4
        '[ 2�i��]
        h2_1 = pkuitaiJiknaga + h5
        h2_8 = h2_1 - h5
        h9 = h1 - h2_8
        h2_0 = h5 + h2_8: h2_0 = Int(h2_0 / 10 + 0.9) * 10

    End Sub
