Attribute VB_Name = "���r_Data�ϊ�"
'������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@���rData�ϊ�                                  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@  �@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��           2003.09.17                                  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@   �@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'������������������������������������������������������������������������������������������������������������������������
'�@���rData�ϊ�

Option Explicit

      Dim ��}File_s As String
      Dim ��}�ϊ�File_s As String


      '[[[ ���� ���rData ]]]
      Dim E_SData(200) As String, E_SDi As Integer
      Dim E_�YData(200) As String, E_�YDi As Integer
      Dim E_��bData(200) As String, E_��bDi As Integer
      Dim E_��Data(200) As String, E_��Di As Integer
      Dim E_StoperData(200) As String, E_StoperDi As Integer
      Dim E_����Data(200) As String, E_����Di As Integer
      Dim E_��Data(200) As String, E_��Di As Integer
      Dim E_�}�ݒ�Data(1000) As String, E_�}�ݒ�Di As Integer


      '[[[ �V�K ���rData ]]]
      Dim �YData(200) As String, �YDi As Integer
      Dim ��bData(200) As String, ��bDi As Integer
      Dim ��Data(200) As String, ��Di As Integer
      Dim StoperData(200) As String, StoperDi As Integer
      Dim ����Data(200) As String, ����Di As Integer
      Dim ��Data(200) As String, ��Di As Integer
      Dim �}�ݒ�Data(1000) As String, �}�ݒ�Di As Integer


Sub ���r��}���s()
     Dim ii As Integer
     
     Call ���rData�ϊ�
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
     
            For ii = 1 To E_SDi:      Print #31, Text_�ϊ�s(E_SData(ii)):  Next ii
     
     
            For ii = 1 To E_�YDi:     Print #31, Text_�ϊ�s(E_�YData(ii)):  Next ii
                If pUpdate(5) = 1 Then
                    For ii = 1 To �YDi: Print #31, Text_�ϊ�s("'*  " + �YData(ii)): Next ii
                    End If
     
            For ii = 1 To E_��bDi:   Print #31, Text_�ϊ�s(E_��bData(ii)):  Next ii
                If pUpdate(4) = 1 Then
                    For ii = 1 To ��bDi: Print #31, Text_�ϊ�s("'*  " + ��bData(ii)): Next ii
                    End If
     
            For ii = 1 To E_��Di:     Print #31, Text_�ϊ�s(E_��Data(ii)):  Next ii
                If pUpdate(3) = 1 Then
                     For ii = 1 To ��Di: Print #31, Text_�ϊ�s("'*  " + ��Data(ii)): Next ii
                     End If
     
            For ii = 1 To E_StoperDi: Print #31, Text_�ϊ�s(E_StoperData(ii)):  Next ii
                If pUpdate(2) = 1 Then
                    For ii = 1 To StoperDi: Print #31, Text_�ϊ�s("'*  " + StoperData(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_����Di:   Print #31, Text_�ϊ�s(E_����Data(ii)):  Next ii
                If pUpdate(2) = 1 Then
                    For ii = 1 To ����Di: Print #31, Text_�ϊ�s("'*  " + ����Data(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_��Di:     Print #31, Text_�ϊ�s(E_��Data(ii)):  Next ii
                If pUpdate(1) = 1 Then
                    For ii = 1 To ��Di: Print #31, Text_�ϊ�s("'*  " + ��Data(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_�}�ݒ�Di: Print #31, Text_�ϊ�s(E_�}�ݒ�Data(ii)):  Next ii
  
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
     Case "'��": Da = cr + cr + cr + Da
     Case "'��", "'��"
     Case "'[": Da = cr + Space(5) + Da
     Case "' ": Da = Space(15) + Da
     Case "'*": Da = Space(15) + Da
     Case "'?": Da = Space(15) + Da
     Case "'e": Da = Space(15) + Da
     Case "  "
     Case Else: Da = Space(7) + Da
     End Select
     Text_�ϊ�s = Da
     End Function

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
                 End Select
          
          
          
          End Select
      
      
      
      
      
     Loop
     Close #30
     
     
     
    End Sub


Private Sub ���rData�ϊ�()
    Dim ii As Integer, i2 As Integer, ni As Integer, n1 As Integer, n2 As Integer
    Dim Wda As String, D1s As String, D2s As String, D3s As String, D4s As String
    Dim Di(300) As Single

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
        
        Dim ��b_BX As Single, ��b_BY As Single, ��b_H1 As Single, ��b_H2 As Single
        ��b_BX = pW(7)
        ��b_BY = pB(7) + pB(8) + pB(9)
        ��b_H1 = pH(6): ��b_H2 = pH(5)
        
        Lm = 0
        
        Lm = Lm + 1: ��bData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��bData(Lm) = "'�� �� ��b                                                                                                                ��"
        Lm = Lm + 1: ��bData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��bData(Lm) = ".��b"
    'Lm = Lm + 1: ��bData(Lm) = "errck" '***
        Lm = Lm + 1: ��bData(Lm) = "BX=" + F9(��b_BX) '         BX=8500                   '*  BX=   :   ��b X�������ł�   PW(7)                exp  BX=5250+5250
        Lm = Lm + 1: ��bData(Lm) = "BY=" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '         BY=2900+2200+2900         '*  BY=   :   ��b Y�������ł�   PB(7)+PB(8)+PB(9)    exp  BY=3650+1600+1600+3650
        Lm = Lm + 1: ��bData(Lm) = "H=" + F9(��b_H1) + "+" + F9(��b_H2) '         H=2000+500              '*  H=    :   ��b �����ł�      PH(6)+PH(5)          exp  H=2000+500

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
                         Lm = Lm + 1: ��bData(Lm) = "'exp  F3=D19_K69.5_@200+9x200_B10361_H190_SD390                               'Y ���S��  @�߯��͉�����"

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

        Lm = Lm + 1: ��bData(Lm) = "'<<< Y ���S�� >>>"  ' F3
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
                         Lm = Lm + 1: ��bData(Lm) = "'exp   F14=D19_K69.5_@300+8x200_B10361_H190_SD390                     'X ���S��  @�߯��͉�����"


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

        Lm = Lm + 1: ��bData(Lm) = "'<<< X ���S�� >>>"  ' F14
                    ��b�S�،as = "D" + f0(pKisoDai(9))
                    ��b���s = "_K" + F9(��b_������� + pKisoDai(9) / 2)
                    ��b�S��Pits = "_@" + Replace��s(pKisoPictW(9))
                    ��b�S�؂̒���i = ��b_BX - 2 * ��b_������� - pKisoDai(9) '10361 '**********
                    ��b�S��Bs = "_B" + F9(��b�S�؂̒���i)
                    ��b�S�؂̍���i = 30 * pKisoDai(9)
                    ��b�S��Hs = "_H" + F9(��b�S�؂̍���i)
                    Lm = Lm + 1: ��bData(Lm) = "F14=" + ��b�S�،as + ��b���s + ��b�S��Pits + ��b�S��Bs + ��b�S��Hs + "_SD390"


        Lm = Lm + 1: ��bData(Lm) = "'[[[ fn �� �c�S�� �ł� ���ׯ�� ]]]"
                         Lm = Lm + 1: ��bData(Lm) = "' n    : �S�ؖ{��"
                         Lm = Lm + 1: ��bData(Lm) = "' D    : �S�،a     exp D19"

                         Lm = Lm + 1: ��bData(Lm) = "' K    : ���� �S�؈ʒu�ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' @    : �S���߯��ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' B    : �S�؂̒����ł�             W�� �K�X���ڈʒu�ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' H    : �S�؂̍����ł�"
                         Lm = Lm + 1: ��bData(Lm) = "' SD   : �ގ�"


                         Lm = Lm + 1: ��bData(Lm) = "'exp   f1=314-D19_K69_B801_H2804+F_SD390                     '�c�S��"
                         Lm = Lm + 1: ��bData(Lm) = "'exp   f2=314-D19_K69_B801_H2804�`2304+F_SD390               '�c�S��"

                    Lm = Lm + 1: ��bData(Lm) = "f1=314-D19_K69_B801_H2804+F_SD390"    '********************
                    Lm = Lm + 1: ��bData(Lm) = "f2=314-D19_K69_B801_H2804�`2304+F_SD390"

                         Lm = Lm + 1: ��bData(Lm) = "' fpit : �c�S�؂̈ʒu�̒�` "
                         Lm = Lm + 1: ��bData(Lm) = "' X    : ��bX���[�����L + Y�����S���߯� + �Ԋu1 + �Ԋu2 + �Ԋu3   (�Ԋu3�� �Ԋu1�̏I�[����̖߂�)"
                         Lm = Lm + 1: ��bData(Lm) = "' Y    : ���W�� �t���� Y9 ����̒�`�ł�"

                         Lm = Lm + 1: ��bData(Lm) = "' @    : ��bY���[����̓S���߯�"

                         Lm = Lm + 1: ��bData(Lm) = "'exp   fpit=X375+125+6+2+2_@375+39x250_SD390              '###"

                    Lm = Lm + 1: ��bData(Lm) = "fpit=X375+125+6+2+2_@375+39x250_SD390" '****************
                  ��bDi = Lm


'����������������������������������������������������������������������������������������������������������������������������
'�� �� ��                                                                                                                  ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim ��_BX As Single, ��_BY As Single, ��_H As Single
        ��_BX = pW(6)
        ��_BY = pB(6)
        ��_H = pH(4) + pH(5) + pH(6)
        
        
        Lm = 0
        Lm = Lm + 1: ��Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��Data(Lm) = "'�� �� ��                                                                                                                  ��"
        Lm = Lm + 1: ��Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ��Data(Lm) = ".��"

        Lm = Lm + 1: ��Data(Lm) = "BX=" + F9(��_BX)     ' BX=5000          '*   BX=   : ��X��                        pw(6)
        Lm = Lm + 1: ��Data(Lm) = "BY=" + F9(��_BY)     ' BY=2000          '*   BY=   : ��Y��                        pB(6)                  exp BY=1500+1500
        Lm = Lm + 1: ��Data(Lm) = "H=" + F9(��_H) ' H=7800           '*   H=    : ������  ��b�� �� �����܂�   pH(4)
        Lm = Lm + 1: ��Data(Lm) = "r=0"       ' r=0 'r=250        '?   r=    : ��r


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
                      
                      Dim �����s As String, �����Start�ʒus As String, ����ؔ��s As String, ����؂̒���s As String
                      �����s = "D" + f0(pkuitaiDai(1))
                      �����Start�ʒus = "_P309" '***********
                      ����ؔ��s = "_K" + F9(pkuitaiKaburi(1)) ' ***************
                      ����؂̒���s = "_LF+11420+W+2200"  '**********
                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + ����؂̒���s + "_SD390"
                      
                      �����s = "D" + f0(pkuitaiDai(2))
                      �����Start�ʒus = "_P309" '***********
                      ����ؔ��s = "_K" + F9(pkuitaiKaburi(1)) ' ***************
                      ����؂̒���s = "_LF+11420+W+2200"  '**********
                      Lm = Lm + 1: ��Data(Lm) = "C=" + �����s + �����Start�ʒus + ����ؔ��s + ����؂̒���s + "_SD390"
                      
                         
                 '[[[ ������߯� ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'<<< ������߯� >>>"
                         Lm = Lm + 1: ��Data(Lm) = "' Xpit :X�������߯��ł�  Xpit=1�i���߯�_2�i���߯�"
                         Lm = Lm + 1: ��Data(Lm) = "' Ypit :Y�������߯��ł�  Ypit=1�i���߯�_2�i���߯�"
                         
                      Lm = Lm + 1: ��Data(Lm) = "'exp   Xpit=250+32x125_500+28x125"
                      Lm = Lm + 1: ��Data(Lm) = "'exp   Ypit=250+10x250"
                         
                      Dim Xpits As String, Ypits As String
                      
                      Xpits = "Xpit=" + pkuitaiPictW(1)
                           If pkuitaiPictW(2) <> "" Then Xpits = Xpits + "_" + pkuitaiPictW(2)
                      Ypits = "Ypit=" + pkuitaiPictW(3)
                           If pkuitaiPictW(4) <> "" Then Ypits = Ypits + "_" + pkuitaiPictW(4)
                         
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
                             If Trim(pkuitaiPictW(2)) <> "" Then X���s = X���s + "_" + f0(FP_Data��i(pkuitaiPictW(1))) + "xC1"
                      
                      Y���i = FP_Data��i(pkuitaiPictW(3))
                      Y���s = "Y���=" + f0(Y���i) + "xC2"
                             If Trim(pkuitaiPictW(4)) <> "" Then Y���s = Y���s + "_" + f0(FP_Data��i(pkuitaiPictW(4))) + "xC2"
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


                  '[[[ �O��̰�� ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'[[[ c1 �� �O��̰�� �ł�  ]]]"

                       Lm = Lm + 1: ��Data(Lm) = "'*** ̰�ߓS�؂� Joint������ 2L1 <> L"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ���� �S�؈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' X    : ̰�ߓS�؂ł�    BxD   B�݂̂̏ꍇ�͋Ȃ��薳��"
                         Lm = Lm + 1: ��Data(Lm) = "' Y    : ̰�ߓS�؂ł�    BxD"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ̰�ߓS���߯��ł�    @�߯��͊�b������"
                         Lm = Lm + 1: ��Data(Lm) = "' R    : �S�؂� r ���w�肷��ꍇ �Ȃ��΂��� r1 �̒l�ł�   r-10  �œ��� ---> r=0 �ƂȂ�"
                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"

                         Lm = Lm + 1: ��Data(Lm) = "'exp   c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"
                     Dim ��Hoop��s As String, ��Hoop���s As String, ��XHoop��s As String, ��YHoop��s As String, ��HoopPits As String, ��Hoop_r_s As String
                     
                      Lm = Lm + 1: ��Data(Lm) = "c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"

                    '[[[ X���� ����̰�� ]]]
                      Lm = Lm + 1: ��Data(Lm) = "'[[[ c2 �� X���� ����̰�� �ł�  ]]]"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : ̰�ߓS�� X�������ł�    J�� Joint�����邱�Ƃ�����   exp B1678+J+2677"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ̰�ߓS�� Y�������ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' Y    : ̰�ߓS�� Y�����̾����ʒu�ł�   ���ʂ���Start"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ̰�ߓS���߯��ł�    @�߯��͉�����"
                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"


                         Lm = Lm + 1: ��Data(Lm) = "'exp   c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X����  ���� 1"
                         Lm = Lm + 1: ��Data(Lm) = "'exp   c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X����  ���� 2   �į�ߕ�  ��߼��"

                      Lm = Lm + 1: ��Data(Lm) = "c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X����  ���� 1"
                      Lm = Lm + 1: ��Data(Lm) = "c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X����  ���� 2   �į�ߕ�  ��߼��"



                   '[[[ Y���� ����̰�� ]]]
                     Lm = Lm + 1: ��Data(Lm) = "'[[[ c3 �� Y���� ����̰�� �ł�  ]]]"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : ̰�ߓS�� X�������ł�    J�� Joint�����邱�Ƃ�����  J* �͕Б��̂� Joint"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ̰�ߓS�� Y�������ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' X    : ̰�ߓS�� Y�����̾����ʒu�ł�   ���ʂ���Start"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ̰�ߓS���߯��ł�    @�߯��͉�����"
                         Lm = Lm + 1: ��Data(Lm) = "' SD   : �ގ�"


                         Lm = Lm + 1: ��Data(Lm) = "'exp   c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390       ' (c5) Hoop Y����  ���� 1"
                         Lm = Lm + 1: ��Data(Lm) = "'exp   c3-2=D19_B1059_D1712+J+1143_SD390                                        ' (c5) Hoop Y����  ���� 2 �į�ߕ� ��߼��"

                      Lm = Lm + 1: ��Data(Lm) = "c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390      "
                      Lm = Lm + 1: ��Data(Lm) = "c3-2=D19_B1059_D1712+J+1143_SD390               "
           
           
           ��Di = Lm

'����������������������������������������������������������������������������������������������������������������������������
'�� �� �į��                                                                                                               ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim Stoperi As Integer, Stoper�S�ؖ{��s As String, Stoper�S�،as As String, Stoper���s As String, Stoperpits As String, StoperX�ʒus As String, StoperY�ʒus As String, Stoper�S��Bs As String, Stoper�S��Hs As String
        Stoperi = 1
        Lm = 0
        Lm = Lm + 1: StoperData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: StoperData(Lm) = "'�� �� �į��                                                                                                               ��"
        Lm = Lm + 1: StoperData(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: StoperData(Lm) = ".�į��"
        Lm = Lm + 1: StoperData(Lm) = "����=�į��1"   '     ����=�į��1
        Lm = Lm + 1: StoperData(Lm) = "����=" + F9(pStop1(1, 2)) + "x" + F9(pStop1(1, 1)) + "x" + F9(pStop1(1, 4))   '    ����=410x410x1430

               Lm = Lm + 1: StoperData(Lm) = "'[[[ �į��  �S�� �ł�  ]]]"
                         Lm = Lm + 1: StoperData(Lm) = "' n    : �S�ؖ{��"
                         Lm = Lm + 1: StoperData(Lm) = "' D    : �S�،a"
                         Lm = Lm + 1: StoperData(Lm) = "' K    : ����ʂ���̔��ʒu�ł�"
                         Lm = Lm + 1: StoperData(Lm) = "' @    : �S�؂̂��߯�"
                         Lm = Lm + 1: StoperData(Lm) = "' X    : �S�؂̈ʒu�̂��� �į�߉�����̈ʒu +"
                         Lm = Lm + 1: StoperData(Lm) = "' Y    : �S�؂̈ʒu�̂��� �į�߉�����̈ʒu +"
                         Lm = Lm + 1: StoperData(Lm) = "' B    : �į�ߓS�؂̒����ł�"
                         Lm = Lm + 1: StoperData(Lm) = "' H    : �į�ߓS�؂̍����ł�"
                         Lm = Lm + 1: StoperData(Lm) = "' SD   : �ގ�s"



                       Lm = Lm + 1: StoperData(Lm) = "'exp   H1=10-D19_Y150_B410_H720_@109+4x100+5x200_SD390    '   �p�x45���ōl��"
                       Lm = Lm + 1: StoperData(Lm) = "'exp   H2=10-D16_X150_Y150_B150_H1200_@125+4x100+5x200_SD390"

                       Lm = Lm + 1: StoperData(Lm) = "'exp   H3=D16_H1400_@200_SD390"
              
              

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H1 �S�� ]]]"
              Call SP_Data��i(pStopPictW2(1), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop2(1, 1))
              StoperY�ʒus = "_Y150"
              Stoper�S��Bs = "_B" + F9(pStop2(1, 2))
              Stoper�S��Hs = "_H" + F9(pStop2(1, 3)): If pStop2(1, 3) = 0 Then Stoper�S��Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperY�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H2 �S�� ]]]"
              Call SP_Data��i(pStopPictW2(2), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop2(2, 1))
              StoperX�ʒus = "_X150"
              StoperY�ʒus = "_Y150"
              Stoper�S��Bs = "_B" + F9(pStop2(2, 2))
              Stoper�S��Hs = "_H" + F9(pStop2(3, 3)): If pStop2(3, 3) = 0 Then Stoper�S��Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperX�ʒus + StoperY�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H3 �S�� ]]]"
              Stoper�S�،as = "D" + f0(pStop2(3, 1))
              Stoper�S��Hs = "_H" + F9(pStop2(3, 2)): If pStop2(3, 2) = 0 Then Stoper�S��Hs = "_H900"
              Stoperpits = "_@200"
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper�S�،as + Stoper�S��Hs + Stoperpits + "_SD390"


             If pStop1(2, 1) + pStop1(2, 4) > 0 Then
             Stoperi = 2
             
              Lm = Lm + 1: StoperData(Lm) = ""
              Lm = Lm + 1: StoperData(Lm) = ".�į��"
              Lm = Lm + 1: StoperData(Lm) = "����=�į��2"
              Lm = Lm + 1: StoperData(Lm) = "����=" + F9(pStop1(2, 2)) + "x" + F9(pStop1(2, 1)) + "x" + F9(pStop1(2, 4))   '    ����=410x410x1430
              Lm = Lm + 1: StoperData(Lm) = "'[[[ H1 �S�� ]]]"
              Call SP_Data��i(pStopPictW2(2), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop3(1, 1))
              StoperY�ʒus = "_Y150"
              Stoper�S��Bs = "_B" + F9(pStop3(1, 2))
              Stoper�S��Hs = "_H" + F9(pStop3(1, 3)): If pStop3(1, 3) = 0 Then Stoper�S��Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperY�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H2 �S�� ]]]"
              Call SP_Data��i(pStopPictW2(2), ni, Di)
              Stoper�S�ؖ{��s = f0(ni)
              Stoper�S�،as = "-D" + f0(pStop3(2, 1))
              StoperX�ʒus = "_X150"
              StoperY�ʒus = "_Y150"
              Stoper�S��Bs = "_B" + F9(pStop3(2, 2))
              Stoper�S��Hs = "_H" + F9(pStop3(3, 3)): If pStop3(3, 3) = 0 Then Stoper�S��Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper�S�ؖ{��s + Stoper�S�،as + StoperX�ʒus + StoperY�ʒus + Stoper�S��Bs + Stoper�S��Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H3 �S�� ]]]"
              Stoper�S�،as = "D" + f0(pStop3(3, 1))
              Stoper�S��Hs = "_H" + F9(pStop3(3, 2)): If pStop3(3, 2) = 0 Then Stoper�S��Hs = "_H900"
              Stoperpits = "_@200"
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper�S�،as + Stoper�S��Hs + Stoperpits + "_SD390"

             End If
             
             StoperDi = Lm


'����������������������������������������������������������������������������������������������������������������������������
'�� �� �B��                                                                                                                ��
'����������������������������������������������������������������������������������������������������������������������������
        Dim ����i As Integer, �����S�ؖ{��s As String, �����S�،as As String, �������s As String, ����pits As String, ����Y�ʒus As String, �����S��Bs As String, �����S��Hs As String
        
        ����i = 1
        Lm = 0
        Lm = Lm + 1: ����Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ����Data(Lm) = "'�� �� �B��                                                                                                                ��"
        Lm = Lm + 1: ����Data(Lm) = "'����������������������������������������������������������������������������������������������������������������������������"
        Lm = Lm + 1: ����Data(Lm) = ".����"            '����

                     '** S1,S2  �̏㉺�֌W
                     '** S1 �̈ʒu

        Lm = Lm + 1: ����Data(Lm) = "����=�B��1"
                '* ��Ѽ��=410x260                         ' BX x BY  ���~ BD �� OK
        Lm = Lm + 1: ����Data(Lm) = "BD=" + F9(pSisyu1(1, 2)) + "x" + F9(pSisyu1(1, 1))   '  BD=810x560                             ' BX x BY  �j����

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
              ����Di = Lm

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
              ����Di = Lm
         End If

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

                 Lm = Lm + 1: ��Data(Lm) = "���z=10,-28"          ' ���z=�����̒l,�[�̒l    ���z=10,-28,-20
                 Lm = Lm + 1: ��Data(Lm) = "r=0"           'r=250
                 Lm = Lm + 1: ��Data(Lm) = "r2=" + F9(pRHanti(0)) ' 0 'r2=1500                ' ���Ɨ�����


              '[[[ �į�߈ʒu ]]]
                 Dim Stoper_LY As Double, Stoper_n As Integer, Stoper�ʒus As String
                 Lm = Lm + 1: ��Data(Lm) = "�į�߈ʒu"
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
                 Lm = Lm + 1: ��Data(Lm) = "�B���ʒu"
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



        Lm = Lm + 1: ��Data(Lm) = "'[[[ B1 �� ٰ�ߋ� �ł�  ]]]   Y�� �Ώۍl��"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ٰ�ߋ،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �������ʂ���̔��ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ����ꂩ��̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : �S�؂�X���������ł�      B L1 + JL + L2"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�؂�Y���������ł�"
                        
                        Dim Roop��Bi As Single, Roop��Di As Single
                        Dim Roop�،as As String, Roop�ؔ��s As String, Roop��Pits As String, Roop��Bs As String, Roop��Ds As String
                        Dim Roop��b As Single, Roop��L As Single

                     Lm = Lm + 1: ��Data(Lm) = "'exp    B1=D32_K136_@126+2x80_B4124+J960+5124_D1244_SD390         ' ٰ�ߓS��(���) 1"
                     Lm = Lm + 1: ��Data(Lm) = "'exp    B1=D32_K216_@126+3x80_B4044+J960+5044_D1084_SD390         ' ٰ�ߓS��(���) 2"

                       '[[[ ٰ�ߓS��(���) 1 ]]]
                       Roop�،as = "D" + f0(pHariDai(1))
                       Roop�ؔ��s = "_K" + F9(pHariKaburi(1))
                       Roop��Pits = "_@126+" + f0(pHariLoop(2, 2)) + "x80"
                       'pHari���[�v������(2)
                       Roop��Bi = pHari���[�v������(1) '   ��_BX - 800
                       Roop��Bs = "_B" + F9(Roop��Bi)
                    Roop��Bs = "_B4044+J960+5044"
                       Roop��Ds = "_D" + F9(pHariLoop(1, 2))
                       Lm = Lm + 1: ��Data(Lm) = "B1=" + Roop�،as + Roop�ؔ��s + Roop��Pits + Roop��Bs + Roop��Ds + "_SD390"

                       '[[[ ٰ�ߓS��(���) 2 ]]]
                       Roop�،as = "D" + f0(pHariDai(1))
                       Roop�ؔ��s = "_K" + F9(pHariKaburi(1))
                       Roop��Pits = "_@126+" + f0(pHariLoop(2, 3)) + "x80"
                       Roop��Bi = pHari���[�v������(1)   '��_BX - 800 - 300
                       Roop��Bs = "_B" + F9(Roop��Bi)
                       Roop��Ds = "_D" + F9(pHariLoop(1, 3))
                       
                     If Roop��Ds <> "_D0" Then Lm = Lm + 1: ��Data(Lm) = "B1=" + Roop�،as + Roop�ؔ��s + Roop��Pits + Roop��Bs + Roop��Ds + "_SD390"


        Lm = Lm + 1: ��Data(Lm) = "'[[[ B2 �� ����[�� �ł�  ]]]   Y�� �Ώۍl��  �į�ߕ����� ��Ă��܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ����[�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : ����ꂩ����̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : �����ʂ��犄��t���܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' L    : �S�؂̒����ł�     F ��̯��ł�"
                        Dim �����،as As String, �����ؔ��s As String, ������Pits As String, ������Ls As String

                      Lm = Lm + 1: ��Data(Lm) = "'exp   B2=D16_K126_@396.7+4x180.7_LF+8900+F_SD390"

                         Lm = Lm + 1: ��Data(Lm) = "' �� B2-2, B2-3 �͌v�Z���܂�"

                       �����،as = "D" + f0(pHariDai(2))
                       �����ؔ��s = "_K" + F9(pHariKaburi(1))
                       ������Pits = "_@396.7+" + f0(pHariN(1)) + "x180.7"
                       ������Ls = "_LF+8900+F"
                       Lm = Lm + 1: ��Data(Lm) = "B2=" + �����،as + �����ؔ��s + ������Pits + ������Ls


               Lm = Lm + 1: ��Data(Lm) = "'[[[ B3 �� ��  ���[�S��(��������) �ł�  ]]]   X�� �Ώۍl��"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �����[�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : �����ʂ���̒����ł�   �����+L"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ����ꂩ��̒����ł�   ����+L"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : �����ʂ��犄��t���܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' r    : ���a�ł�"

                        Dim ������،as As String, �������Bs As String, �������Ds As String, �������Pits As String, ������rs As String
                      
                      Lm = Lm + 1: ��Data(Lm) = "'exp   B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150_SD390"
                      Lm = Lm + 1: ��Data(Lm) = "'exp   B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1337.68+1378.04_r150_SD390"

                        ������،as = "D" + f0(pHariDai(4))
                        �������Bs = "_B95+3445.1"
                        �������Ds = "_D98+1337.68"
                        �������Pits = "_@" + pHariPictW(2)
                        ������rs = "_r=0"
                        Lm = Lm + 1: ��Data(Lm) = "B3=" + ������،as + �������Bs + �������Ds + �������Pits + ������rs + "_SD390"




        Lm = Lm + 1: ��Data(Lm) = "'[[[ B4 �� �� ���S�� �ł� (�����⋭��) ]]]       X�� �Ώۍl��"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ���S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �����ʂ���̔��ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' @    : ����ꂩ��̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : �S�؂�X���������ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : �S�؂�Y���������ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' r    : ���a�ł�"
                        
                        Dim ���S�،as As String, ���S�ؔ��s As String, ���S��Bs As String, ���S��Ds As String, ���S��Pits As String, ���S��rs As String
                        Dim ���S�ؔ�i As Single, ���S��Bi As Single, ���S��Di As Single

                      Lm = Lm + 1: ��Data(Lm) = "'exp    B4=D25_K73_@126+12x150_B3150_D2829_r270_SD390"
                      Lm = Lm + 1: ��Data(Lm) = "'exp    B4-2=D25_B2850�`1830_D2829_r270_SD390        ' **�`** �̏ꍇ�� ����(r=__ �͉����Ȃ�)"

                          '2850�`1830


                         ���S�،as = "D" + f0(pHariDai(5))
                             ���S�ؔ�i = pHariKaburi(3) + pHariDai(5) / 2
                         ���S�ؔ��s = "_K" + F9(���S�ؔ�i)
                             ���S��Bi = (��_BX - pW(6)) / 2 + pHariBon(2) - ���S�ؔ�i
                         ���S��Bs = "_B" + F9(���S��Bi) ' ���S��Bs = "_B"+F9(���S��Bi)
                             ���S��Di = ��_BY - 2 * ���S�ؔ�i
                         ���S��Ds = "_D" + F9(���S��Di)
                         ���S��Pits = "_@" + Replace��s(pHariPicth(2))
                         ���S��rs = "_r=270"
                         Lm = Lm + 1: ��Data(Lm) = "B4=" + ���S�،as + ���S�ؔ��s + ���S��Bs + ���S��Ds + ���S��Pits + ���S��rs + "_SD390"

                         ���S��Bs = "_B" + F9(���S��Bi) + "�`" + F9(���S��Bi) ' ���S��Bs = "_B"+F9(���S��Bi)
                         Lm = Lm + 1: ��Data(Lm) = "B4-2=" + ���S�،as + ���S�ؔ��s + ���S��Bs + ���S��Ds + ���S��Pits + ���S��rs + "_SD390"


        Lm = Lm + 1: ��Data(Lm) = "'[[[ B0 �� �� ���ׯ�� �ł�  ]]]      �į�ߕ����� ��Ă��܂�               2132~1335"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ��St�S�،a"
                         Lm = Lm + 1: ��Data(Lm) = "' K    : �����,�����ꂩ��̈ʒu(Z���W)�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' X    : �����ʂ���̈ʒu�ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' Spit : ���ׯ���߯�  �����ʂ��犄��t���܂�"
                         Lm = Lm + 1: ��Data(Lm) = "' B    : ������ׯ�ߓS�؂̒����ł�"
                         Lm = Lm + 1: ��Data(Lm) = "' D    : ������ׯ�ߓS�؂̍����ł�"

                        Dim ��St�S�،as As String, ��St�S�ؔ��s As String, ��St�S��Xs As String, ��St�S��Bs As String, ��St�S��Ds As String, ��St�S��Pits As String, ��St�S��rs As String
                        Dim ��St�S��Pit1s As String, ��St�S��Pit2s As String, ��St�S��Pit3s As String
                        Dim ��St�S��Xi As Single, ��St�S��Bi As Single

                       Lm = Lm + 1: ��Data(Lm) = "'exp   B01=D22_X109_K74.5_B1618_D2292�`1495+F_r160_SD390    �����ׯ��  Y�� �Ώۍl��  --> B01 ###"
                       Lm = Lm + 1: ��Data(Lm) = "'exp   B02=D22_X109_K99_B1618_DF+440_SD390                  ����ׯ��  Y�� �Ώۍl��  --> B02, B03, B04"
                       Lm = Lm + 1: ��Data(Lm) = "'exp   B03=D16_K99_B2776_D500_SD390                         ������ׯ��    --->  B5-1, B5-2, B5-3"

                       Lm = Lm + 1: ��Data(Lm) = "'exp   Spit=500+13x150+23x200+13x150"

                         Lm = Lm + 1: ��Data(Lm) = "' �� B5-2, B5-3 �͌v�Z���܂�"


                        '[[[ �����ׯ�� ]]]
                        ��St�S��Ds = "D" + f0(pHariStrD(1))
                        ��St�S��Xi = pHariKaburi(3) + pHariStrD(1) / 2:
                            ��St�S��Xs = "_X" + F9(��St�S��Xi)
                        
                        ��St�S�ؔ��s = "_K" + F9(pHariKaburi(2) + pHariStrD(1) / 2)
                       ' ��St�S��Bi = Val(pHariStrW(1)) + Val(pHariStrW(2))
                        ��St�S��Bi = Val(pHariStrW(1))
                            ��St�S��Bs = "_B" + F9(��St�S��Bi)
                        ��St�S��Ds = "_D2292�`1495+F"
                        ��St�S��rs = "_r160"
                        Lm = Lm + 1: ��Data(Lm) = "B01=" + ��St�S��Ds + ��St�S��Xs + ��St�S�ؔ��s + ��St�S��Bs + ��St�S��Ds + ��St�S��rs + "_SD390"
                       
                        '[[[ ����ׯ�� ]]]
                        ��St�S��Ds = "D" + f0(pHariStrD(1))
                     '   ��St�S��Xs = "_X109"
                        
                        ��St�S�ؔ��s = "_K" + F9(pHariKaburi(1) + pHariStrD(1) / 2)
                        ��St�S��Bs = "_B" + F9(��St�S��Bi)
                        ��St�S��Ds = "_DF+400"
                        Lm = Lm + 1: ��Data(Lm) = "B02=" + ��St�S��Ds + ��St�S��Xs + ��St�S�ؔ��s + ��St�S��Bs + ��St�S��Ds + "_SD390"
                       
                        '[[[ ������ׯ�� ]]]
                        ��St�S��Ds = "D" + f0(pHariStrD(2))
                        ��St�S�ؔ��s = "_K" + F9(pHariKaburi(2) + pHariStrD(2) / 2)
                        ��St�S��Bs = "_B" + F9(��St�S��Bi)
                        ��St�S��Ds = "_D" + F9(pHariStrBon(1))
                        Lm = Lm + 1: ��Data(Lm) = "B03=" + ��St�S��Ds + ��St�S�ؔ��s + ��St�S��Bs + ��St�S��Ds + "_SD390"
                       
                        '[[[ ���ׯ�� Pit ]]]
                        ��St�S��Pit1s = Replace��s(pHariPictW(3))
                            ��St�S��Pit3s = ��St�S��Pit1s
                            ni = InStr(��St�S��Pit3s, "+"): If ni > 0 Then ��St�S��Pit3s = Mid(��St�S��Pit3s, ni + 1)
                        ��St�S��Pit2s = "+" + Replace��s(pHariPictW(4))
                        
                        ��St�S��Pits = ��St�S��Pit1s + ��St�S��Pit2s + "+" + ��St�S��Pit3s
                        Lm = Lm + 1: ��Data(Lm) = "Spit=" + ��St�S��Pits
                       
                       
                       ��Di = Lm
                       

    ' Stop




    End Sub

Private Sub ���rData�}�ݒ�()
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
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,230             .f1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,150             .f2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=600,390             .F12"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=680,390             .F13      '*** F12  ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=750,390             .F11"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=780,390             .F14"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   �B���z�ؐ}.DXF    ���̔z�ؐ}(����1)    �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=�B��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,450             .�f��A-A"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,300             .�f��B-C"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=150,120             .�f��D-D"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=300,120             .�f��H-H"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=500,450             .�f��E-E"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=500,300             .�f��F-G"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=500,150   S=1/20    .�����k���ُڍא}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=680,500             .S1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=680,400             .S2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=770,500             .H1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=770,400             .H2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=770,300             .H3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   ���z�ؐ}.DXF     ���̔z�ؐ}(����3)    �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=130,190             .�f��A-B"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=330,190             .�f��C-D"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=700,485             .�f��a-a"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=700,365             .�f��b-b"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=700,240  S=1/20           .�f��b-b�S�ؔz�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=100,100             .c1-X       '***  c1 ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,100             .c1-Y       '***  c1 ��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=300,100             .c2-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=420,100             .c2-2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=520,100             .c3-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=590,100             .c3-2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=490,190             .C1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=515,190             .C2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=540,190             .C3"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=565,190             .C4"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,80              .CK"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "    /DXF   ���z�ؐ}.DXF     ���̔z�ؐ}(����2)    �t�m��       1/50"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            �}�`����=��"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,490             .�f��A-A"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,280             .�f��B-B"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=200,120             .�f��C-C"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=450,490             .�f��a-a"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=670,520  S=1/20     .�f��a-a�S�ؔz�ؐ}"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=450,300             .B1-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=450,230             .B1-2"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=450,150             .B2-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=400,100             .B2-2      '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=470,100             .B2-3      '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,310             .B4-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=750,310             .B4-2      '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=610,240             .B5-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=590,200             .B5-2      '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=640,200             .B5-3      '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=750,200             .B3-1"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=600,100             .B01"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=600,150             .B02"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,150             .B03       '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "            ���_=650,100             .B04       '***"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "//�S�؍ޗ��\�쐬"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "//�S�؍ޗ��\"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = "          READ=�S�؍ޗ��\.dat"
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""
        Lm = Lm + 1: �}�ݒ�Data(Lm) = ""


       �}�ݒ�Di = Lm
    
    
    End Sub


Private Function Replace��s(ByVal Moj As String) As String
   '  Moj   *  --->  x
   '        X  --->  x
   
    Moj = �����ϊ�(Moj, "*", "x")
    Replace��s = LCase(Moj)

   End Function

Function FP�v�ZX(ByVal Moj As String) As Double
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
    Dim ��n As Integer, L(900) As Single
    Call SP_Data��i(Wda, ��n, L)
    
    FP_Data��i = ��n
    End Function


Private Sub SP_Data��i(ByVal Wda As String, ByRef ��n As Integer, ByRef L() As Single)
      ' Wda �𕪉����� ���� �iL �����߂�
      Dim ii  As Integer, i2 As Integer, ni As Integer, n2 As Integer, Ds(200) As String, Di(200)
      Dim L1 As Single
      ' Wda="400+350x3+500x3+600"   ��n=8  L(1)=400 L(2)=350 ... L(5)=500
      ��n = 0
      Wda = Replace��s(Wda)
      Call Ddata("+", Wda, Ds, Di, ni)
      For ii = 1 To ni
          Call Data��x(Ds(ii), n2, L1)
          For i2 = 1 To n2:    ��n = ��n + 1: L(��n) = L1
          Next i2
          
      Next ii


End Sub

Private Sub Data��x(ByVal Wda As String, ByRef n As Integer, ByRef L As Single)
     ' Wda="400"    ni=1 L=400
     ' Wda="3x400"  ni=3 L=400
     ' Wda="400x3"  ni=3 L=400
     Dim ni As Integer, n1 As Single, n2 As Single
     Wda = LCase(Wda)
     ni = InStr(Wda, "x")
     Select Case ni
     Case 0:  n = 1: L = Val(Wda)
     Case Else
              n1 = Val(Mid(Wda, 1, ni - 1)): n2 = Val(Mid(Wda, ni + 1))
              n = n1: L = n2: If n > L Then n = n2: L = n1
     End Select
    End Sub

Private Function F_Moj_s1(n As Integer, L() As Single) As String
    ' 200+200+300 �����
    Dim ii As Integer, Wda As String
    Wda = ""
    For ii = 1 To n
        Wda = Wda + "+" + F9(L(ii))
        Next ii
    F_Moj_s1 = Mid(Wda, 2)

    End Function

Private Function Hoop_�ʒu(L As Single, n As Integer, �ʒu() As Single) As Integer
    '  L �� Hoop �̉��Ԗڂɂ��邩�������� �����ꍇ�͂P�ԋ߂��ʒu
    ' �g���؈ʒu�̌���
    Dim ii As Integer, L1 As Single
    For ii = 1 To n
       L1 = L - �ʒu(ii)
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
