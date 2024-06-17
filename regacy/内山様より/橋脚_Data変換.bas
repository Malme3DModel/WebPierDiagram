Attribute VB_Name = "‹´‹r_Data•ÏŠ·"
'„¬„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„­
'„«@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@„«
'„«@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@„«
'„«@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@„«
'„«@@@@@@@‹´‹rData•ÏŠ·                                  @@@@@@@@@@@@@@@  @@@@@@@@@@@@„«
'„«@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@„«
'„«           2003.09.17                                  @@@@@@@@@@@@@@@@@@   @@@@@@@@@@@„«
'„«@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@„«
'„¯„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„®
'@‹´‹rData•ÏŠ·

Option Explicit

      Dim ì}File_s As String
      Dim ì}•ÏŠ·File_s As String


      '[[[ Šù‘¶ ‹´‹rData ]]]
      Dim E_SData(200) As String, E_SDi As Integer
      Dim E_YData(200) As String, E_YDi As Integer
      Dim E_Šî‘bData(200) As String, E_Šî‘bDi As Integer
      Dim E_’ŒData(200) As String, E_’ŒDi As Integer
      Dim E_StoperData(200) As String, E_StoperDi As Integer
      Dim E_“¥ÀData(200) As String, E_“¥ÀDi As Integer
      Dim E_—ÀData(200) As String, E_—ÀDi As Integer
      Dim E_}İ’èData(1000) As String, E_}İ’èDi As Integer


      '[[[ V‹K ‹´‹rData ]]]
      Dim YData(200) As String, YDi As Integer
      Dim Šî‘bData(200) As String, Šî‘bDi As Integer
      Dim ’ŒData(200) As String, ’ŒDi As Integer
      Dim StoperData(200) As String, StoperDi As Integer
      Dim “¥ÀData(200) As String, “¥ÀDi As Integer
      Dim —ÀData(200) As String, —ÀDi As Integer
      Dim }İ’èData(1000) As String, }İ’èDi As Integer


Sub ‹´‹rì}Às()
     Dim ii As Integer
     
     Call ‹´‹rData•ÏŠ·
     Call ‹´‹rData}İ’è
     
     ì}File_s = Data_dsk$ + "Text.dat"
     
     Open ì}File_s For Output As #31
     
     '[[[  Text Data ì¬ ]]]
     Print #31, "//‹´‹rData"
     For ii = 1 To YDi:     Print #31, Text_•ÏŠ·s(YData(ii)):  Next ii
     For ii = 1 To Šî‘bDi:   Print #31, Text_•ÏŠ·s(Šî‘bData(ii)):  Next ii
     For ii = 1 To ’ŒDi:     Print #31, Text_•ÏŠ·s(’ŒData(ii)):  Next ii
     For ii = 1 To StoperDi: Print #31, Text_•ÏŠ·s(StoperData(ii)):  Next ii
     For ii = 1 To “¥ÀDi:   Print #31, Text_•ÏŠ·s(“¥ÀData(ii)):  Next ii
     For ii = 1 To —ÀDi:     Print #31, Text_•ÏŠ·s(—ÀData(ii)):  Next ii
     For ii = 1 To }İ’èDi: Print #31, Text_•ÏŠ·s(}İ’èData(ii)):  Next ii
  
     Close #31

    Call ‹´‹r}‰»_o—Í(ì}File_s)

    
     
     
     
     '[[[  Text_2 Data ì¬ ]]]
     Call Read_Šù‘¶_‹´‹rData
     ì}•ÏŠ·File_s = Data_dsk$ + "Text_2.dat"
     
     Open ì}•ÏŠ·File_s For Output As #31
     
     Select Case E_SDi
     Case 0
            Print #31, "//‹´‹rData"
            For ii = 1 To YDi:     Print #31, Text_•ÏŠ·s(YData(ii)):  Next ii
            For ii = 1 To Šî‘bDi:   Print #31, Text_•ÏŠ·s(Šî‘bData(ii)):  Next ii
            For ii = 1 To ’ŒDi:     Print #31, Text_•ÏŠ·s(’ŒData(ii)):  Next ii
            For ii = 1 To StoperDi: Print #31, Text_•ÏŠ·s(StoperData(ii)):  Next ii
            For ii = 1 To “¥ÀDi:   Print #31, Text_•ÏŠ·s(“¥ÀData(ii)):  Next ii
            For ii = 1 To —ÀDi:     Print #31, Text_•ÏŠ·s(—ÀData(ii)):  Next ii
            For ii = 1 To }İ’èDi: Print #31, Text_•ÏŠ·s(}İ’èData(ii)):  Next ii
     
     Case Else
     
            For ii = 1 To E_SDi:      Print #31, Text_•ÏŠ·s(E_SData(ii)):  Next ii
     
     
            For ii = 1 To E_YDi:     Print #31, Text_•ÏŠ·s(E_YData(ii)):  Next ii
                If pUpdate(5) = 1 Then
                    For ii = 1 To YDi: Print #31, Text_•ÏŠ·s("'*  " + YData(ii)): Next ii
                    End If
     
            For ii = 1 To E_Šî‘bDi:   Print #31, Text_•ÏŠ·s(E_Šî‘bData(ii)):  Next ii
                If pUpdate(4) = 1 Then
                    For ii = 1 To Šî‘bDi: Print #31, Text_•ÏŠ·s("'*  " + Šî‘bData(ii)): Next ii
                    End If
     
            For ii = 1 To E_’ŒDi:     Print #31, Text_•ÏŠ·s(E_’ŒData(ii)):  Next ii
                If pUpdate(3) = 1 Then
                     For ii = 1 To ’ŒDi: Print #31, Text_•ÏŠ·s("'*  " + ’ŒData(ii)): Next ii
                     End If
     
            For ii = 1 To E_StoperDi: Print #31, Text_•ÏŠ·s(E_StoperData(ii)):  Next ii
                If pUpdate(2) = 1 Then
                    For ii = 1 To StoperDi: Print #31, Text_•ÏŠ·s("'*  " + StoperData(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_“¥ÀDi:   Print #31, Text_•ÏŠ·s(E_“¥ÀData(ii)):  Next ii
                If pUpdate(2) = 1 Then
                    For ii = 1 To “¥ÀDi: Print #31, Text_•ÏŠ·s("'*  " + “¥ÀData(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_—ÀDi:     Print #31, Text_•ÏŠ·s(E_—ÀData(ii)):  Next ii
                If pUpdate(1) = 1 Then
                    For ii = 1 To —ÀDi: Print #31, Text_•ÏŠ·s("'*  " + —ÀData(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_}İ’èDi: Print #31, Text_•ÏŠ·s(E_}İ’èData(ii)):  Next ii
  
     End Select
     Close #31
    
    
   ' Call ‹´‹rData•ÏX
    
    End Sub

Private Function Text_•ÏŠ·s(ByVal Da As String) As String
     Dim D2s As String
     Da = Trim(Da)
     D2s = Mid(Da, 1, 2)
     Select Case D2s
     Case ""
     Case "'„¡": Da = cr + cr + cr + Da
     Case "'„ ", "'„¤"
     Case "'[": Da = cr + Space(5) + Da
     Case "' ": Da = Space(15) + Da
     Case "'*": Da = Space(15) + Da
     Case "'?": Da = Space(15) + Da
     Case "'e": Da = Space(15) + Da
     Case "  "
     Case Else: Da = Space(7) + Da
     End Select
     Text_•ÏŠ·s = Da
     End Function

Sub ‹´‹rData•ÏX()
      ' ‹´‹r}‰».dat ‚Ì•ÏX
      Dim Fn1 As String, Fn2 As String, Fn3 As String
    
      
      Fn1 = ì}•ÏŠ·File_s ' ì¬•ÏŠ·File
      Fn2 = Data_dsk$ + ‹´‹r_Data–¼$ + ".dat"  ' ‹´‹r}‰».dat
      Fn3 = Data_dsk$ + ‹´‹r_Data–¼$ + ".ba2"  ' ‹´‹r}‰».ba2

     If Dir(Fn1) = "" Then er ("Data ‚Ì •ÏŠ· ‚ª‚Å‚«‚Ü‚¹‚ñ " + cr + "ì}ŠJn‚ğÀs‚µ‚Ä‚­‚¾‚³‚¢  "): Exit Sub
      
      If Dir(Fn3) <> "" Then Kill Fn3
      If Dir(Fn2) <> "" Then Name Fn2 As Fn3
      
      If Dir(Fn1) <> "" Then Name Fn1 As Fn2
    
     er ("‹´‹rData•ÏX ok")
    
    End Sub


Private Sub Read_Šù‘¶_‹´‹rData()
     Dim ni As Integer, ni2 As Integer
     Dim Da As String, Da2 As String, Fname1s As String
     Dim €–Ús As String, D2s As String
     
     
     E_SDi = 0
     €–Ús = "S": E_YDi = 0: E_Šî‘bDi = 0: E_StoperDi = 0: E_“¥ÀDi = 0: E_—ÀDi = 0: E_}İ’èDi = 0
     

     Fname1s = Data_dsk$ + ‹´‹r_Data–¼$ + ".dat"
     
     If Dir(Fname1s) = "" Then Exit Sub
     
     Open Fname1s For Input As #30
     Do: If EOF(30) Then Exit Do
          Line Input #30, Da
          D2s = Mid(Trim(Da), 1, 2)
          Select Case D2s
          Case "'„¡"
                   Do
                       If EOF(30) Then Da2 = "¡ END" Else Line Input #30, Da2
                        ni = InStr(Da2, "¡")
                       If ni > 1 Then
                            D2s = Trim(Mid(Da2, ni + 1))
                            ni = InStr(D2s, " "): If ni > 0 Then D2s = Mid(D2s, 1, ni - 1)
                            Exit Do
                            End If
                       Loop
                  Select Case D2s
                  Case "Y":            E_YData(1) = Da: E_YData(2) = Da2: E_YDi = 2: €–Ús = "Y"
                  Case "Šî‘b":          E_Šî‘bData(1) = Da: E_Šî‘bData(2) = Da2: E_Šî‘bDi = 2: €–Ús = "Šî‘b"
                  Case "’Œ":            E_’ŒData(1) = Da: E_’ŒData(2) = Da2: E_’ŒDi = 2: €–Ús = "’Œ"
                  Case "½Ä¯Êß":         E_StoperData(1) = Da: E_StoperData(2) = Da2: E_StoperDi = 2: €–Ús = "Stoper"
                  Case "ŒBÀ", "“¥À":  E_“¥ÀData(1) = Da: E_“¥ÀData(2) = Da2: E_“¥ÀDi = 2: €–Ús = "“¥À"
                  Case "—À":            E_—ÀData(1) = Da: E_—ÀData(2) = Da2: E_—ÀDi = 2: €–Ús = "—À"
                  Case "‹´‹r}":        E_}İ’èData(1) = Da: E_}İ’èData(2) = Da2: E_}İ’èDi = 2: €–Ús = "}İ’è"
                  Case "END": Exit Do
                  Case Else:   'Stop
                              Exit Do
                  End Select
          
          
          Case Else
                 Select Case €–Ús
                 Case "S":       E_SDi = E_SDi + 1:            E_SData(E_SDi) = Da
                 Case "Y":      E_YDi = E_YDi + 1:          E_YData(E_YDi) = Da
                 Case "Šî‘b":    E_Šî‘bDi = E_Šî‘bDi + 1:      E_Šî‘bData(E_Šî‘bDi) = Da
                 Case "’Œ":      E_’ŒDi = E_’ŒDi + 1:          E_’ŒData(E_’ŒDi) = Da
                 Case "Stoper":  E_StoperDi = E_StoperDi + 1:  E_StoperData(E_StoperDi) = Da
                 Case "“¥À":    E_“¥ÀDi = E_“¥ÀDi + 1:      E_“¥ÀData(E_“¥ÀDi) = Da
                 Case "—À":      E_—ÀDi = E_—ÀDi + 1:          E_—ÀData(E_—ÀDi) = Da
                 Case "}İ’è":  E_}İ’èDi = E_}İ’èDi + 1:  E_}İ’èData(E_}İ’èDi) = Da
                 End Select
          
          
          
          End Select
      
      
      
      
      
     Loop
     Close #30
     
     
     
    End Sub


Private Sub ‹´‹rData•ÏŠ·()
    Dim ii As Integer, i2 As Integer, ni As Integer, n1 As Integer, n2 As Integer
    Dim Wda As String, D1s As String, D2s As String, D3s As String, D4s As String
    Dim Di(300) As Single

'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„  ¡ Y                                                                                                                  „ 
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
      Lm = 0
      Lm = Lm + 1: YData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
      Lm = Lm + 1: YData(Lm) = "'„  ¡ Y                                                                                                                  „ "
      Lm = Lm + 1: YData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
      Lm = Lm + 1: YData(Lm) = ".Y"
      Lm = Lm + 1: YData(Lm) = "D=" + F9(pKuikei)
      Lm = Lm + 1: YData(Lm) = "L=" + F9(pKuinaga)
      
      Lm = Lm + 1: YData(Lm) = "'[[[ S ½Íß°»°‹Ø ‚Å‚·  ]]]"
                       Lm = Lm + 1: YData(Lm) = "'     ‰ÓŠ”-“S‹Ø-Şí       exp  42-ƒÓ13-SR235"
                       Lm = Lm + 1: YData(Lm) = "' n    : ½Íß°»°‹Ø‚Ì –{”‚Å‚·      pkuispesa"
                       Lm = Lm + 1: YData(Lm) = "' L    : ½Íß°»°‹Ø‚ÌŒ`ó(’·‚³)‚Å‚·   ’·‚³ ‚Í‰º‚©‚çã‚Ì‡”Ô‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "' H    : ½Íß°»°‹Ø‚Ì ‚‚³‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "' @    : ½Íß°»°‹Ø‚Ì Ëß¯Á‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "'exp     S=42-ƒÓ13-SR235_n6_L50+95+95+50_H70_@600+5700+5700+5700+5700+5700+5700_SR235           ' n ½Íß°»°‰ÓŠ=6   L ‚Í‰º‚©‚çã"
           D1s = "_L50+95+95+50_H70"
           Wda = pKuiKumitateW(2)
           Call SP_DataŒÂ”i(Wda, n1, Di)
           D2s = "_@" + F_Moj_s1(n1, Di)
           D3s = "_SR235"
      
           Lm = Lm + 1: YData(Lm) = "S=" + f0(n1 * pKuiSpesaN) + "-ƒÓ" + f0(pKuiKumiDai(2)) + "-SR235_n" + f0(pKuiSpesaN) + D1s + D2s + D3s


          
      Lm = Lm + 1: YData(Lm) = "'[[[ K ‚Í Yå‹Ø ‚Å‚·  ]]]"
                       Lm = Lm + 1: YData(Lm) = "' K    : ”í‚è‚Ì å‹ØˆÊ’u‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "' A    : Šî‘b“à‚Ì±İ¶°’·‚³‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "' L    : “S‹Ø’·‚³‚Å‚·  ’·‚³ ‚Íã‚©‚ç‰º‚Ì‡”Ô‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "'            €–Ú L____    ? W:¶Ş½ˆ³Ú   K:‹@ŠBŒpè   J: Joint’·‚³‚Å‚·  exp +J1240+"
                       Lm = Lm + 1: YData(Lm) = "' SD   : Şís exp SD390"


                       Lm = Lm + 1: YData(Lm) = "'exp  K=14-D32_K156_A1220_L12000+K+12000+K+10000+J1240+6360_SD390         'å‹Ø"
                       Lm = Lm + 1: YData(Lm) = "'exp  K=14-D32_K156_A1220_L11500+K+10000+K+10000+K+3800_SD390             'å‹Ø"
                       Lm = Lm + 1: YData(Lm) = "'exp  K=12-D29-D25_A1220_K156_L10000+J2000+4620_SD390                     'å‹Ø   å‹ØŒa‚ªˆÙ‚È‚éê‡"

           Dim Yå‹Ø”í‚ès As String, Yå‹ØAnchorLs As String
           Dim Yå‹Øƒ”í‚è As Single, Yå‹Øc”í‚è As Single
           Dim Yå‹Øí—Ş”i As Integer
           Dim Yå‹Øn(5) As Integer, Yå‹ØŒas(5) As String, Yå‹ØLs(5) As String, Yå‹ØŒpès(5) As String
               Yå‹Øí—Ş”i = 0
               Yå‹Øƒ”í‚è = pKuiKaburi
               Yå‹Øc”í‚è = pKuiKaburi0
               Yå‹Ø”í‚ès = "_K" + F9(pKuiKaburi0)
               Yå‹ØAnchorLs = "_A" + F9(pKuiTouNaga)
           For ii = 1 To 2
              If pKuiJiku(ii, 2) > 0 Then Yå‹Øí—Ş”i = Yå‹Øí—Ş”i + 1
           
              Yå‹ØŒas(ii) = "": Yå‹ØLs(ii) = ""
              For i2 = 1 To 13 Step 3: If pKuiJiku(ii, i2) = 0 Then Exit For
                 Yå‹ØŒas(ii) = Yå‹ØŒas(ii) + "-D" + f0(pKuiJiku(ii, i2))
                 Yå‹ØLs(ii) = Yå‹ØLs(ii) + "+" + F9(pKuiJiku(ii, i2 + 1))
                 Select Case pKuiJiku(ii, i2 + 2)
                 Case -1:  Yå‹ØLs(ii) = Yå‹ØLs(ii) + "+K"
                 Case -2:  Yå‹ØLs(ii) = Yå‹ØLs(ii) + "+W"
                 Case Is > 0: Yå‹ØLs(ii) = Yå‹ØLs(ii) + "+J" + F9(pKuiJiku(ii, i2 + 2))
                 Case Else
                 End Select
                 Next i2
              Next ii

           If Yå‹Øí—Ş”i = 0 Then er ("Yå‹Øí—Ş”=0"): Stop
           For ii = 1 To 2
              If pKuiJiku(ii, 2) = 0 Then Exit For
              Yå‹Øn(ii) = pKuiHon / Yå‹Øí—Ş”i
              Lm = Lm + 1
              YData(Lm) = "K=" + f0(Yå‹Øn(ii)) + Yå‹ØŒas(ii) + Yå‹Ø”í‚ès + Yå‹ØAnchorLs + "_L" + Mid(Yå‹ØLs(ii), 2) + "_SD390"
              Next ii



          Lm = Lm + 1: YData(Lm) = "'[[[ HOOP ‚Í Ì°Ìß“S‹Ø ‚Å‚·  ]]]   ˆê”ÊÌ°Ìß‚Í  K03 ‚©‚ç"
                       Lm = Lm + 1: YData(Lm) = "' Z    : Ì°Ìß‚Ì ½À°ÄˆÊ’u‚Å‚·(Šî‘b‰º’[‚©‚ç)    Å‰‚ÌÌ°Ìß‚Ì‚İ•K—v‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "' D    : “S‹ØŒa"
                       Lm = Lm + 1: YData(Lm) = "' Œa   : Ì°Ìß‚Ì ’¼Œa‚Å‚·"
                       Lm = Lm + 1: YData(Lm) = "' @    : Ì°Ìß‚Ì Ëß¯Á‚Å‚·   exp @3x200+4x125+48x125"
                       Lm = Lm + 1: YData(Lm) = "' SD   : Şí"


                       Lm = Lm + 1: YData(Lm) = "'exp   HOOP=Z-1100_D22_Œa1242_@3x200+4x125+48x125_SD390            ' ½À°ÄˆÊ’u_Ì°Ìß“S‹Ø_’¼Œa_Ëß¯Á"
                       Lm = Lm + 1: YData(Lm) = "'exp   HOOP=D19_Œa1239_@56x150_SD390                "

           Dim ƒ°Hoop”i As Integer, ƒ°HoopˆÊ’ui(2000) As Single
           Dim Hoopí—Ş”i As Integer, Hoop“S‹ØŒai As Single
           Dim HoopStartˆÊ’ui As Single, HoopStartˆÊ’us As String, Hoop’¼Œas(50) As String
           Dim Hoop“S‹ØŒas(50) As String
           Dim HoopPits(50) As String
           
           HoopStartˆÊ’ui = pKuiStr(1, 2) * pKuiStr(1, 3) + pKuiStr(2, 2) * pKuiStr(2, 3)
           HoopStartˆÊ’us = "Z" + F9(-HoopStartˆÊ’ui) + "_"
           ƒ°Hoop”i = 1: ƒ°HoopˆÊ’ui(1) = HoopStartˆÊ’ui
           Hoopí—Ş”i = 0:  Hoop“S‹ØŒai = 0
           For ii = 1 To 15: If pKuiStr(ii, 1) = 0 Then Exit For
           
               If Hoop“S‹ØŒai <> pKuiStr(ii, 1) Then
                    Hoopí—Ş”i = Hoopí—Ş”i + 1: Hoop“S‹ØŒai = pKuiStr(ii, 1)
                    Hoop“S‹ØŒas(Hoopí—Ş”i) = "D" + f0(Hoop“S‹ØŒai): HoopPits(Hoopí—Ş”i) = ""
                    End If
               HoopPits(Hoopí—Ş”i) = HoopPits(Hoopí—Ş”i) + "+" + f0(pKuiStr(ii, 2)) + "x" + F9(pKuiStr(ii, 3))
               For i2 = 1 To pKuiStr(ii, 2)
                    ƒ°Hoop”i = ƒ°Hoop”i + 1
                    ƒ°HoopˆÊ’ui(ƒ°Hoop”i) = ƒ°HoopˆÊ’ui(ƒ°Hoop”i - 1) + pKuiStr(ii, 3)
                    Next i2
               Next ii

           If Hoopí—Ş”i = 0 Then er ("Hoopí—Ş”=0"): Stop

           For ii = 1 To Hoopí—Ş”i
                Hoop’¼Œas(ii) = "_Œa" + F9(pKuikei - 2 * Yå‹Øƒ”í‚è + Val(Mid(Hoop“S‹ØŒas(ii), 2)))
                Lm = Lm + 1:  YData(Lm) = "HOOP=" + HoopStartˆÊ’us + Hoop“S‹ØŒas(ii) + Hoop’¼Œas(ii) + "_@" + Mid(HoopPits(ii), 2) + "_SD390"
                HoopStartˆÊ’us = ""
                Next ii



           Lm = Lm + 1: YData(Lm) = "'[[[ ‘g—§‹Ø ]]]"
                         Lm = Lm + 1: YData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: YData(Lm) = "' SD   : Şís"
                         Lm = Lm + 1: YData(Lm) = "' Œa   : Ì°Ìß‚Ì ’¼Œa‚Å‚·"
                         Lm = Lm + 1: YData(Lm) = "' ˆÊ’u   exp 12_32_52  ˆÊ’u(‰½”Ô–Ú)"

                        Lm = Lm + 1: YData(Lm) = "'exp  ‘g—§‹Ø=D25_SD390_Œa1245_12_32_52_69_86_99_112   "

           Dim ‘g—§‹ØŒas As String, ‘g—§‹Ø’¼Œas As String, ‘g—§‹ØˆÊ’us As String
                ‘g—§‹ØŒas = "D" + f0(pKuiKumiDai(1))
                ‘g—§‹Ø’¼Œas = "_Œa" + F9(pKuikei - 2 * Yå‹Øƒ”í‚è + pKuiKumiDai(1))
                ‘g—§‹ØˆÊ’us = ""

           D1s = pKuiKumitateW(1):     Call SP_DataŒÂ”i(D1s, n1, Di): Di(0) = 0 ' D1s="3150+2550x6+2900+3000+2800+2600+2800"
               For ii = 1 To n1: Di(ii) = Di(ii - 1) + Di(ii):   Next ii
               For ii = 1 To n1: n2 = Hoop_ˆÊ’u(Di(ii), ƒ°Hoop”i, ƒ°HoopˆÊ’ui)
                   ‘g—§‹ØˆÊ’us = ‘g—§‹ØˆÊ’us + "_" + f0(n2)
                   Next ii
              
              Lm = Lm + 1:  YData(Lm) = "‘g—§‹Ø=" + ‘g—§‹ØŒas + ‘g—§‹Ø’¼Œas + ‘g—§‹ØˆÊ’us + "_SD390"

          Lm = Lm + 1: YData(Lm) = "'[[[ HOOP’ê‹Ø ]]]"
                         Lm = Lm + 1: YData(Lm) = "' n"
                         Lm = Lm + 1: YData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: YData(Lm) = "' SD   : Şí"
                         Lm = Lm + 1: YData(Lm) = "' L    : “S‹Ø’·‚³‚Å‚·"
                         Lm = Lm + 1: YData(Lm) = "'exp      HOOP’ê=8-D25_L837_SD390    "
              Lm = Lm + 1:  YData(Lm) = "HOOP’ê=8-D25_L837_SD390"
           YDi = Lm

     
'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„  ¡ Šî‘b                                                                                                                „ 
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
        Dim Šî‘b_ãƒ”í‚è As Single, Šî‘b_‰ºƒ”í‚è As Single, Šî‘b_‰¡ƒ”í‚è As Single
        Šî‘b_ãƒ”í‚è = pKisoKaburi(1)
        Šî‘b_‰ºƒ”í‚è = pKisoKaburi(2)
        Šî‘b_‰¡ƒ”í‚è = pKisoKaburi(3)
        
        Dim Šî‘b_BX As Single, Šî‘b_BY As Single, Šî‘b_H1 As Single, Šî‘b_H2 As Single
        Šî‘b_BX = pW(7)
        Šî‘b_BY = pB(7) + pB(8) + pB(9)
        Šî‘b_H1 = pH(6): Šî‘b_H2 = pH(5)
        
        Lm = 0
        
        Lm = Lm + 1: Šî‘bData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
        Lm = Lm + 1: Šî‘bData(Lm) = "'„  ¡ Šî‘b                                                                                                                „ "
        Lm = Lm + 1: Šî‘bData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
        Lm = Lm + 1: Šî‘bData(Lm) = ".Šî‘b"
    'Lm = Lm + 1: Šî‘bData(Lm) = "errck" '***
        Lm = Lm + 1: Šî‘bData(Lm) = "BX=" + F9(Šî‘b_BX) '         BX=8500                   '*  BX=   :   Šî‘b X•ûŒü•‚Å‚·   PW(7)                exp  BX=5250+5250
        Lm = Lm + 1: Šî‘bData(Lm) = "BY=" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '         BY=2900+2200+2900         '*  BY=   :   Šî‘b Y•ûŒü•‚Å‚·   PB(7)+PB(8)+PB(9)    exp  BY=3650+1600+1600+3650
        Lm = Lm + 1: Šî‘bData(Lm) = "H=" + F9(Šî‘b_H1) + "+" + F9(Šî‘b_H2) '         H=2000+500              '*  H=    :   Šî‘b ‚‚³‚Å‚·      PH(6)+PH(5)          exp  H=2000+500

        Lm = Lm + 1: Šî‘bData(Lm) = "Ìºİ=100" '         Ìºİ=100                '? Ìºİ=  :  Šî‘b Ìºİ‚ÌŒú‚³‚Å‚·                      exp  Ìºİ=100

        Lm = Lm + 1: Šî‘bData(Lm) = "'[[[ YˆÊ’u ‚Å‚·  ]]]         '*?  X,Y  :  ¾İÀ°‚©‚ç‚Ì‹——£      pkuihaic1()    pkuihaic2()"
                   '    YˆÊ’u
                   '      -3750,3750     0,3750     3750,3750
                   '      -3750,0                   3750,0
                   '      -3750,-3750    0,-3750    3750,-3750

                Lm = Lm + 1: Šî‘bData(Lm) = "YˆÊ’u"
                Call Y_ˆÊ’u(Šî‘bData)



        Lm = Lm + 1: Šî‘bData(Lm) = "'[[[ Fn ‚Í Y•ûŒü“S‹Ø ‚Å‚·  ]]]"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' D    : “S‹ØŒa     exp D32"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' K    : ”í‚è‚Ì “S‹ØˆÊ’u‚Å‚·  ƒ”íØ"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' @    : “S‹ØËß¯Á‚Å‚·         exp @95+155+80x125+155"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' B    : “S‹Ø‚Ì’·‚³‚Å‚·       W‚Í ƒKƒXˆ³ÚˆÊ’u‚Å‚·"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' H    : “S‹Ø‚Ì‚‚³‚Å‚·"

                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp  F1=D32_K95_@95+155+80x125+155_BF+10014+F_SD390                          'Y ’ê“S‹Ø  @Ëß¯Á‚Í‘¤–Ê‚©‚ç"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp  F2=D32_K95_@95+155+80x125+155_B3563+1092+W+2092+3563_H2328+483_SD390    'Y ã“S‹Ø  @Ëß¯Á‚Í‘¤–Ê‚©‚ç"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp  F3=D19_K69.5_@200+9x200_B10361_H190_SD390                               'Y ‘¤“S‹Ø  @Ëß¯Á‚Í‰º‚©‚ç"

           Dim Šî‘b“S‹ØŒas As String, Šî‘b”í‚ès As String, Šî‘b“S‹ØPits As String, Šî‘b“S‹ØBs As String, Šî‘b“S‹ØHs As String
           Dim Šî‘b“S‹Ø‚Ì’·‚³i As Single, Šî‘b“S‹Ø‚Ì‚‚³i As Single

        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< Y ’ê“S‹Ø >>>"  ' F1
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(3))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_‰ºƒ”í‚è + pKisoDai(3) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(3))
                    Šî‘b“S‹Ø‚Ì’·‚³i = Šî‘b_BY - 2 * Šî‘b_‰¡ƒ”í‚è '10014 '**********
                    Šî‘b“S‹ØBs = "_BF+" + F9(Šî‘b“S‹Ø‚Ì’·‚³i) + "+F"
                    Lm = Lm + 1: Šî‘bData(Lm) = "F1=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØPits + Šî‘b“S‹ØBs + "_SD390"

        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< Y ã“S‹Ø >>>"   ' F2
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(1))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_ãƒ”í‚è + pKisoDai(1) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(1))
                      'Šî‘b“S‹Ø‚Ì’·‚³i = 10014 '**********
                    Šî‘b“S‹ØBs = "_B" + F9(Šî‘b_BY - 2 * Šî‘b_‰¡ƒ”í‚è - pKisoDai(1))
                   ' If Šî‘b_H2 > 0 Then Šî‘b“S‹ØBs = "_B3563+1092+W+2092+3563" '***************
                    If Šî‘b_H2 > 0 Then Šî‘b“S‹ØBs = "_B" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '3563+1092+W+2092+3563" '***************
                    Šî‘b“S‹Ø‚Ì‚‚³i = Šî‘b_H1 - Šî‘b_ãƒ”í‚è - pKisoDai(1) '2320 '**************
                    Šî‘b“S‹ØHs = "_H" + F9(Šî‘b“S‹Ø‚Ì‚‚³i)
                    Lm = Lm + 1: Šî‘bData(Lm) = "F2=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØPits + Šî‘b“S‹ØBs + Šî‘b“S‹ØHs + "_SD390"

        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< Y ‘¤“S‹Ø >>>"  ' F3
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(9))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_‰¡ƒ”í‚è + pKisoDai(9) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(9))
                    Šî‘b“S‹Ø‚Ì’·‚³i = Šî‘b_BY - 2 * Šî‘b_‰¡ƒ”í‚è - pKisoDai(9) '10361 '**********
                    Šî‘b“S‹ØBs = "_B" + F9(Šî‘b“S‹Ø‚Ì’·‚³i)
                    Šî‘b“S‹Ø‚Ì‚‚³i = 30 * pKisoDai(9)
                    Šî‘b“S‹ØHs = "_H" + F9(Šî‘b“S‹Ø‚Ì‚‚³i)
                    Lm = Lm + 1: Šî‘bData(Lm) = "F3=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØPits + Šî‘b“S‹ØBs + Šî‘b“S‹ØHs + "_SD390"


        Lm = Lm + 1: Šî‘bData(Lm) = "'[[[ F1n ‚Í X•ûŒü“S‹Ø ‚Å‚·  ]]]"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' D    : “S‹ØŒa          exp D32"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' K    : ”í‚è‚Ì “S‹ØˆÊ’u‚Å‚·  ƒ”íØ"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' @    : “S‹ØËß¯Á‚Å‚·         exp @127+123+80x125+123"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' B    : “S‹Ø‚Ì’·‚³‚Å‚·       W‚Í ƒKƒXˆ³ÚˆÊ’u‚Å‚·"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' H    : “S‹Ø‚Ì‚‚³‚Å‚·"

                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   F11=D32_K127_@127+123+80x125+123_BF+10014+F_SD390              'X ’ê“S‹Ø  @Ëß¯Á‚Í‘¤–Ê‚©‚ç"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   F12=D32_K127_@127+123+80x125+123_B5655+W+4655_H2746_SD390      'X ã“S‹Ø  @Ëß¯Á‚Í‘¤–Ê‚©‚ç"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   F13=D32_K127_B5655+W+4655_H2746`2246_SD390                    'X ã“S‹Ø  @Ëß¯Á‚Í F12 ‚Å’è‹`"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'***        F13=D32_K127_B5655+W+4655_HF+2746`2246_SD390             'X ã“S‹Ø  @Ëß¯Á‚Í F12 ‚Å’è‹`"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   F14=D19_K69.5_@300+8x200_B10361_H190_SD390                     'X ‘¤“S‹Ø  @Ëß¯Á‚Í‰º‚©‚ç"


        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< X ’ê“S‹Ø >>>"  ' F11
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(7))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_‰ºƒ”í‚è + pKisoDai(7) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(7))
                      Šî‘b“S‹Ø‚Ì’·‚³i = Šî‘b_BX - 2 * Šî‘b_‰¡ƒ”í‚è '10001 '**********
                    Šî‘b“S‹ØBs = "_BF+" + F9(Šî‘b“S‹Ø‚Ì’·‚³i) + "+F"
                    Lm = Lm + 1: Šî‘bData(Lm) = "F11=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØPits + Šî‘b“S‹ØBs + "_SD390"

        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< X ã“S‹Ø >>>"  ' F12
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(5))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_ãƒ”í‚è + pKisoDai(5) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(5))
                    Šî‘b“S‹Ø‚Ì’·‚³i = Šî‘b_BX - 2 * Šî‘b_‰¡ƒ”í‚è - pKisoDai(5) '10014 '**********
                   ' Šî‘b“S‹ØBs = "_B5655+W+4655" '***************
                    Šî‘b“S‹ØBs = "_B" + F9(Šî‘b“S‹Ø‚Ì’·‚³i) '5655+W+4655" '***************
                    Šî‘b“S‹Ø‚Ì‚‚³i = Šî‘b_H1 - Šî‘b_ãƒ”í‚è - pKisoDai(5) / 2 '2746 '**************
                    Šî‘b“S‹ØHs = "_H" + F9(Šî‘b“S‹Ø‚Ì‚‚³i)
                    Lm = Lm + 1: Šî‘bData(Lm) = "F12=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØPits + Šî‘b“S‹ØBs + Šî‘b“S‹ØHs + "_SD390"

        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< X ã“S‹Ø 2 >>>" ' F13    F12 ‚æ‚èì¬
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(5))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_ãƒ”í‚è + pKisoDai(5) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(5))
                      'Šî‘b“S‹Ø‚Ì’·‚³i = 10014 '**********
                    Šî‘b“S‹Ø‚Ì’·‚³i = Šî‘b_BX - 2 * Šî‘b_‰¡ƒ”í‚è - pKisoDai(5)
                   ' Šî‘b“S‹ØBs = "_B5655+W+4655" '***************
                    
                    Šî‘b“S‹ØBs = "_B" + F9(Šî‘b“S‹Ø‚Ì’·‚³i)
                      'Šî‘b“S‹Ø‚Ì‚‚³i = 2746 '**************
                    Šî‘b“S‹ØHs = "_H2746`2246" '***********
                    Lm = Lm + 1: Šî‘bData(Lm) = "F13=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØBs + Šî‘b“S‹ØHs + "_SD390"

        Lm = Lm + 1: Šî‘bData(Lm) = "'<<< X ‘¤“S‹Ø >>>"  ' F14
                    Šî‘b“S‹ØŒas = "D" + f0(pKisoDai(9))
                    Šî‘b”í‚ès = "_K" + F9(Šî‘b_‰¡ƒ”í‚è + pKisoDai(9) / 2)
                    Šî‘b“S‹ØPits = "_@" + Replace®s(pKisoPictW(9))
                    Šî‘b“S‹Ø‚Ì’·‚³i = Šî‘b_BX - 2 * Šî‘b_‰¡ƒ”í‚è - pKisoDai(9) '10361 '**********
                    Šî‘b“S‹ØBs = "_B" + F9(Šî‘b“S‹Ø‚Ì’·‚³i)
                    Šî‘b“S‹Ø‚Ì‚‚³i = 30 * pKisoDai(9)
                    Šî‘b“S‹ØHs = "_H" + F9(Šî‘b“S‹Ø‚Ì‚‚³i)
                    Lm = Lm + 1: Šî‘bData(Lm) = "F14=" + Šî‘b“S‹ØŒas + Šî‘b”í‚ès + Šî‘b“S‹ØPits + Šî‘b“S‹ØBs + Šî‘b“S‹ØHs + "_SD390"


        Lm = Lm + 1: Šî‘bData(Lm) = "'[[[ fn ‚Í c“S‹Ø ‚Å‚· ½À°×¯Ìß ]]]"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' n    : “S‹Ø–{”"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' D    : “S‹ØŒa     exp D19"

                         Lm = Lm + 1: Šî‘bData(Lm) = "' K    : ”í‚è‚Ì “S‹ØˆÊ’u‚Å‚·"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' @    : “S‹ØËß¯Á‚Å‚·"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' B    : “S‹Ø‚Ì’·‚³‚Å‚·             W‚Í ƒKƒXˆ³ÚˆÊ’u‚Å‚·"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' H    : “S‹Ø‚Ì‚‚³‚Å‚·"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' SD   : Şí"


                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   f1=314-D19_K69_B801_H2804+F_SD390                     'c“S‹Ø"
                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   f2=314-D19_K69_B801_H2804`2304+F_SD390               'c“S‹Ø"

                    Lm = Lm + 1: Šî‘bData(Lm) = "f1=314-D19_K69_B801_H2804+F_SD390"    '********************
                    Lm = Lm + 1: Šî‘bData(Lm) = "f2=314-D19_K69_B801_H2804`2304+F_SD390"

                         Lm = Lm + 1: Šî‘bData(Lm) = "' fpit : c“S‹Ø‚ÌˆÊ’u‚Ì’è‹` "
                         Lm = Lm + 1: Šî‘bData(Lm) = "' X    : Šî‘bX¶’[‚©‚ç‚ÌL + Y•ûŒü“S‹ØËß¯Á + ŠÔŠu1 + ŠÔŠu2 + ŠÔŠu3   (ŠÔŠu3‚Í ŠÔŠu1‚ÌI’[‚©‚ç‚Ì–ß‚è)"
                         Lm = Lm + 1: Šî‘bData(Lm) = "' Y    : À•W‚Í ‹t•ûŒü Y9 ‚©‚ç‚Ì’è‹`‚Å‚·"

                         Lm = Lm + 1: Šî‘bData(Lm) = "' @    : Šî‘bY¶’[‚©‚ç‚Ì“S‹ØËß¯Á"

                         Lm = Lm + 1: Šî‘bData(Lm) = "'exp   fpit=X375+125+6+2+2_@375+39x250_SD390              '###"

                    Lm = Lm + 1: Šî‘bData(Lm) = "fpit=X375+125+6+2+2_@375+39x250_SD390" '****************
                  Šî‘bDi = Lm


'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„  ¡ ’Œ                                                                                                                  „ 
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
        Dim ’Œ_BX As Single, ’Œ_BY As Single, ’Œ_H As Single
        ’Œ_BX = pW(6)
        ’Œ_BY = pB(6)
        ’Œ_H = pH(4) + pH(5) + pH(6)
        
        
        Lm = 0
        Lm = Lm + 1: ’ŒData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
        Lm = Lm + 1: ’ŒData(Lm) = "'„  ¡ ’Œ                                                                                                                  „ "
        Lm = Lm + 1: ’ŒData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
        Lm = Lm + 1: ’ŒData(Lm) = ".’Œ"

        Lm = Lm + 1: ’ŒData(Lm) = "BX=" + F9(’Œ_BX)     ' BX=5000          '*   BX=   : ’ŒX•                        pw(6)
        Lm = Lm + 1: ’ŒData(Lm) = "BY=" + F9(’Œ_BY)     ' BY=2000          '*   BY=   : ’ŒY•                        pB(6)                  exp BY=1500+1500
        Lm = Lm + 1: ’ŒData(Lm) = "H=" + F9(’Œ_H) ' H=7800           '*   H=    : ’Œ‚‚³  Šî‘bã ÖØ —À‰º‚Ü‚Å   pH(4)
        Lm = Lm + 1: ’ŒData(Lm) = "r=0"       ' r=0 'r=250        '?   r=    : ’Œr


        Lm = Lm + 1: ’ŒData(Lm) = "'[[[ C ‚Í ’Œå‹Ø ‚Å‚·  ]]]"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : “S‹ØŒa     "
                         Lm = Lm + 1: ’ŒData(Lm) = "' P    : å‹Ø‚Ì “S‹ØStartˆÊ’u‚Å‚·  Šî‘b‰º’[‚©‚ç‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' K    : ”í‚è‚Ì “S‹ØˆÊ’u‚Å‚· "
                         Lm = Lm + 1: ’ŒData(Lm) = "' L    : “S‹Ø‚Ì’·‚³‚Å‚·        W‚Í ƒKƒXˆ³ÚˆÊ’u‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' SD   : Şí"

                         Lm = Lm + 1: ’ŒData(Lm) = "'exp  C=D38_P309_K101_LF+11420+W+2200_SD390        ' å‹Ø1"
                         Lm = Lm + 1: ’ŒData(Lm) = "'exp  C=D25_P309_K101_LF+11420+W+2200_SD390        ' å‹Ø2"
                         Lm = Lm + 1: ’ŒData(Lm) = "'exp  C=D38_P309_K196_LF+9420+W+2300_SD390         ' å‹Ø3"
                         Lm = Lm + 1: ’ŒData(Lm) = "'exp  C=D32_P309_K196_LF+9420+W+2300_SD390         ' å‹Ø4"
                      
                      Dim ’Œå‹Øs As String, ’Œå‹ØStartˆÊ’us As String, ’Œå‹Ø”í‚ès As String, ’Œå‹Ø‚Ì’·‚³s As String
                      ’Œå‹Øs = "D" + f0(pkuitaiDai(1))
                      ’Œå‹ØStartˆÊ’us = "_P309" '***********
                      ’Œå‹Ø”í‚ès = "_K" + F9(pkuitaiKaburi(1)) ' ***************
                      ’Œå‹Ø‚Ì’·‚³s = "_LF+11420+W+2200"  '**********
                      Lm = Lm + 1: ’ŒData(Lm) = "C=" + ’Œå‹Øs + ’Œå‹ØStartˆÊ’us + ’Œå‹Ø”í‚ès + ’Œå‹Ø‚Ì’·‚³s + "_SD390"
                      
                      ’Œå‹Øs = "D" + f0(pkuitaiDai(2))
                      ’Œå‹ØStartˆÊ’us = "_P309" '***********
                      ’Œå‹Ø”í‚ès = "_K" + F9(pkuitaiKaburi(1)) ' ***************
                      ’Œå‹Ø‚Ì’·‚³s = "_LF+11420+W+2200"  '**********
                      Lm = Lm + 1: ’ŒData(Lm) = "C=" + ’Œå‹Øs + ’Œå‹ØStartˆÊ’us + ’Œå‹Ø”í‚ès + ’Œå‹Ø‚Ì’·‚³s + "_SD390"
                      
                         
                 '[[[ ’Œå‹ØËß¯Á ]]]
                      Lm = Lm + 1: ’ŒData(Lm) = "'<<< ’Œå‹ØËß¯Á >>>"
                         Lm = Lm + 1: ’ŒData(Lm) = "' Xpit :X•ûŒü‚ÌËß¯Á‚Å‚·  Xpit=1’i–ÚËß¯Á_2’i–ÚËß¯Á"
                         Lm = Lm + 1: ’ŒData(Lm) = "' Ypit :Y•ûŒü‚ÌËß¯Á‚Å‚·  Ypit=1’i–ÚËß¯Á_2’i–ÚËß¯Á"
                         
                      Lm = Lm + 1: ’ŒData(Lm) = "'exp   Xpit=250+32x125_500+28x125"
                      Lm = Lm + 1: ’ŒData(Lm) = "'exp   Ypit=250+10x250"
                         
                      Dim Xpits As String, Ypits As String
                      
                      Xpits = "Xpit=" + pkuitaiPictW(1)
                           If pkuitaiPictW(2) <> "" Then Xpits = Xpits + "_" + pkuitaiPictW(2)
                      Ypits = "Ypit=" + pkuitaiPictW(3)
                           If pkuitaiPictW(4) <> "" Then Ypits = Ypits + "_" + pkuitaiPictW(4)
                         
                      Lm = Lm + 1: ’ŒData(Lm) = Xpits
                      Lm = Lm + 1: ’ŒData(Lm) = Ypits
                         
                 '[[[ ’Œå‹Ø”z’u ]]]
                      Lm = Lm + 1: ’ŒData(Lm) = "'<<< ’Œå‹Ø”z’u >>>"
                         Lm = Lm + 1: ’ŒData(Lm) = "' Xå‹Ø : X•ûŒü‚Ìå‹Ø–{”‚Å‚·   Xå‹Ø=1’i–Ú–{”_2’i–Ú–{”"
                         Lm = Lm + 1: ’ŒData(Lm) = "' Yå‹Ø : Y•ûŒü‚Ìå‹Ø–{”‚Å‚·   Yå‹Ø=1’i–Ú–{”_2’i–Ú–{”"


                       Lm = Lm + 1: ’ŒData(Lm) = "'exp  Xå‹Ø=17xC2+16xC1_15xC4+14xC3"
                       Lm = Lm + 1: ’ŒData(Lm) = "'exp  Yå‹Ø=6xC2+5xC1"
                      Dim Xå‹Øi As Integer, Yå‹Øi As Integer, Xå‹Øs As String, Yå‹Øs As String
                      Xå‹Øi = FP_DataŒÂ”i(pkuitaiPictW(1))
                      Xå‹Øs = "Xå‹Ø=" + f0(Xå‹Øi) + "xC1"
                             If Trim(pkuitaiPictW(2)) <> "" Then Xå‹Øs = Xå‹Øs + "_" + f0(FP_DataŒÂ”i(pkuitaiPictW(1))) + "xC1"
                      
                      Yå‹Øi = FP_DataŒÂ”i(pkuitaiPictW(3))
                      Yå‹Øs = "Yå‹Ø=" + f0(Yå‹Øi) + "xC2"
                             If Trim(pkuitaiPictW(4)) <> "" Then Yå‹Øs = Yå‹Øs + "_" + f0(FP_DataŒÂ”i(pkuitaiPictW(4))) + "xC2"
                      Lm = Lm + 1: ’ŒData(Lm) = Xå‹Øs
                      Lm = Lm + 1: ’ŒData(Lm) = Yå‹Øs
                             
                 '[[[ Špå‹Ø ]]]
                       Lm = Lm + 1: ’ŒData(Lm) = "'<<< Špå‹Ø >>>"
                       Lm = Lm + 1: ’ŒData(Lm) = "'  Špå‹Ø=C1                            '?  Špå‹Ø=   : º°Å°‚Ìå‹Ø–{”‚Å‚·"
                       Lm = Lm + 1: ’ŒData(Lm) = "'  Špå‹ØXY=145_180                     '?  Špå‹ØXY= : º°Å°‚Ìå‹Ø‚ÌÀ•W‚Å‚·"


                 '[[[ CK ‚Í ’Œ—À‚Ìº°Å°‹Ø ]]]
                       Lm = Lm + 1: ’ŒData(Lm) = "'[[[ CK ‚Í ’Œ—À‚Ìº°Å°‹Ø ‚Å‚·  ]]]"
                         Lm = Lm + 1: ’ŒData(Lm) = "' n    :"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: ’ŒData(Lm) = "' K    : ”í‚è‚Ì “S‹ØˆÊ’u‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' r  ‚Í “S‹Ø‚ÌŠJ‚«Šp“x‚Å‚· •s—v"
                         Lm = Lm + 1: ’ŒData(Lm) = "' L    : ’¼ü‚Ì’·‚³‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' SD   : Şí"


                         Lm = Lm + 1: ’ŒData(Lm) = "'exp   CK=11-D16_K101_L480_SD390          ' ### —À‰º•” •â‹­‹Ø"
                        Lm = Lm + 1: ’ŒData(Lm) = "CK=11-D16_K101_L480_SD390                    ' ### —À‰º•” •â‹­‹Ø"


                  '[[[ ŠOüÌ°Ìß ]]]
                      Lm = Lm + 1: ’ŒData(Lm) = "'[[[ c1 ‚Í ŠOüÌ°Ìß ‚Å‚·  ]]]"

                       Lm = Lm + 1: ’ŒData(Lm) = "'*** Ì°Ìß“S‹Ø‚Ì Joint’·‚³‚Í 2L1 <> L"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: ’ŒData(Lm) = "' K    : ”í‚è‚Ì “S‹ØˆÊ’u‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' X    : Ì°Ìß“S‹Ø‚Å‚·    BxD   B‚Ì‚İ‚Ìê‡‚Í‹È‚ª‚è–³‚µ"
                         Lm = Lm + 1: ’ŒData(Lm) = "' Y    : Ì°Ìß“S‹Ø‚Å‚·    BxD"
                         Lm = Lm + 1: ’ŒData(Lm) = "' @    : Ì°Ìß“S‹ØËß¯Á‚Å‚·    @Ëß¯Á‚ÍŠî‘b‰º‚©‚ç"
                         Lm = Lm + 1: ’ŒData(Lm) = "' R    : “S‹Ø‚Ì r ‚ğw’è‚·‚éê‡ ‚È‚¢‚Î‚ ‚¢ r1 ‚Ì’l‚Å‚·   r-10  ‚Å“ü—Í ---> r=0 ‚Æ‚È‚é"
                         Lm = Lm + 1: ’ŒData(Lm) = "' SD   : Şí"

                         Lm = Lm + 1: ’ŒData(Lm) = "'exp   c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"
                     Dim ’ŒHoop‹Øs As String, ’ŒHoop”í‚ès As String, ’ŒXHoop‹Øs As String, ’ŒYHoop‹Øs As String, ’ŒHoopPits As String, ’ŒHoop_r_s As String
                     
                      Lm = Lm + 1: ’ŒData(Lm) = "c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"

                    '[[[ X•ûŒü “à‘¤Ì°Ìß ]]]
                      Lm = Lm + 1: ’ŒData(Lm) = "'[[[ c2 ‚Í X•ûŒü “à‘¤Ì°Ìß ‚Å‚·  ]]]"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: ’ŒData(Lm) = "' B    : Ì°Ìß“S‹Ø X•ûŒü•‚Å‚·    J‚Í Joint‚ª‚ ‚é‚±‚Æ‚ğ¦‚·   exp B1678+J+2677"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : Ì°Ìß“S‹Ø Y•ûŒü•‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' Y    : Ì°Ìß“S‹Ø Y•ûŒü‚Ì¾İÀ°ˆÊ’u‚Å‚·   ’Œ–Ê‚©‚çStart"
                         Lm = Lm + 1: ’ŒData(Lm) = "' @    : Ì°Ìß“S‹ØËß¯Á‚Å‚·    @Ëß¯Á‚Í‰º‚©‚ç"
                         Lm = Lm + 1: ’ŒData(Lm) = "' SD   : Şí"


                         Lm = Lm + 1: ’ŒData(Lm) = "'exp   c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X•ûŒü  “à‘¤ 1"
                         Lm = Lm + 1: ’ŒData(Lm) = "'exp   c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X•ûŒü  “à‘¤ 2   ½Ä¯Êß•”  µÌß¼®İ"

                      Lm = Lm + 1: ’ŒData(Lm) = "c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X•ûŒü  “à‘¤ 1"
                      Lm = Lm + 1: ’ŒData(Lm) = "c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X•ûŒü  “à‘¤ 2   ½Ä¯Êß•”  µÌß¼®İ"



                   '[[[ Y•ûŒü “à‘¤Ì°Ìß ]]]
                     Lm = Lm + 1: ’ŒData(Lm) = "'[[[ c3 ‚Í Y•ûŒü “à‘¤Ì°Ìß ‚Å‚·  ]]]"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: ’ŒData(Lm) = "' B    : Ì°Ìß“S‹Ø X•ûŒü•‚Å‚·    J‚Í Joint‚ª‚ ‚é‚±‚Æ‚ğ¦‚·  J* ‚Í•Ğ‘¤‚Ì‚İ Joint"
                         Lm = Lm + 1: ’ŒData(Lm) = "' D    : Ì°Ìß“S‹Ø Y•ûŒü•‚Å‚·"
                         Lm = Lm + 1: ’ŒData(Lm) = "' X    : Ì°Ìß“S‹Ø Y•ûŒü‚Ì¾İÀ°ˆÊ’u‚Å‚·   ’Œ–Ê‚©‚çStart"
                         Lm = Lm + 1: ’ŒData(Lm) = "' @    : Ì°Ìß“S‹ØËß¯Á‚Å‚·    @Ëß¯Á‚Í‰º‚©‚ç"
                         Lm = Lm + 1: ’ŒData(Lm) = "' SD   : Şí"


                         Lm = Lm + 1: ’ŒData(Lm) = "'exp   c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390       ' (c5) Hoop Y•ûŒü  “à‘¤ 1"
                         Lm = Lm + 1: ’ŒData(Lm) = "'exp   c3-2=D19_B1059_D1712+J+1143_SD390                                        ' (c5) Hoop Y•ûŒü  “à‘¤ 2 ½Ä¯Êß•” µÌß¼®İ"

                      Lm = Lm + 1: ’ŒData(Lm) = "c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390      "
                      Lm = Lm + 1: ’ŒData(Lm) = "c3-2=D19_B1059_D1712+J+1143_SD390               "
           
           
           ’ŒDi = Lm

'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„  ¡ ½Ä¯Êß                                                                                                               „ 
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
        Dim Stoperi As Integer, Stoper“S‹Ø–{”s As String, Stoper“S‹ØŒas As String, Stoper”í‚ès As String, Stoperpits As String, StoperXˆÊ’us As String, StoperYˆÊ’us As String, Stoper“S‹ØBs As String, Stoper“S‹ØHs As String
        Stoperi = 1
        Lm = 0
        Lm = Lm + 1: StoperData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
        Lm = Lm + 1: StoperData(Lm) = "'„  ¡ ½Ä¯Êß                                                                                                               „ "
        Lm = Lm + 1: StoperData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
        Lm = Lm + 1: StoperData(Lm) = ".½Ä¯Êß"
        Lm = Lm + 1: StoperData(Lm) = "•„†=½Ä¯Êß1"   '     •„†=½Ä¯Êß1
        Lm = Lm + 1: StoperData(Lm) = "” ”²=" + F9(pStop1(1, 2)) + "x" + F9(pStop1(1, 1)) + "x" + F9(pStop1(1, 4))   '    ” ”²=410x410x1430

               Lm = Lm + 1: StoperData(Lm) = "'[[[ ½Ä¯Êß  “S‹Ø ‚Å‚·  ]]]"
                         Lm = Lm + 1: StoperData(Lm) = "' n    : “S‹Ø–{”"
                         Lm = Lm + 1: StoperData(Lm) = "' D    : “S‹ØŒa"
                         Lm = Lm + 1: StoperData(Lm) = "' K    : —Àã–Ê‚©‚ç‚Ì”í‚èˆÊ’u‚Å‚·"
                         Lm = Lm + 1: StoperData(Lm) = "' @    : “S‹Ø‚Ì‚ÌËß¯Á"
                         Lm = Lm + 1: StoperData(Lm) = "' X    : “S‹Ø‚ÌˆÊ’u‚Ì‚¸‚ê ½Ä¯Êß‰‚©‚ç‚ÌˆÊ’u +"
                         Lm = Lm + 1: StoperData(Lm) = "' Y    : “S‹Ø‚ÌˆÊ’u‚Ì‚¸‚ê ½Ä¯Êß‰‚©‚ç‚ÌˆÊ’u +"
                         Lm = Lm + 1: StoperData(Lm) = "' B    : ½Ä¯Êß“S‹Ø‚Ì’·‚³‚Å‚·"
                         Lm = Lm + 1: StoperData(Lm) = "' H    : ½Ä¯Êß“S‹Ø‚Ì‚‚³‚Å‚·"
                         Lm = Lm + 1: StoperData(Lm) = "' SD   : Şís"



                       Lm = Lm + 1: StoperData(Lm) = "'exp   H1=10-D19_Y150_B410_H720_@109+4x100+5x200_SD390    '   Šp“x45‹‚Ål—¶"
                       Lm = Lm + 1: StoperData(Lm) = "'exp   H2=10-D16_X150_Y150_B150_H1200_@125+4x100+5x200_SD390"

                       Lm = Lm + 1: StoperData(Lm) = "'exp   H3=D16_H1400_@200_SD390"
              
              

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H1 “S‹Ø ]]]"
              Call SP_DataŒÂ”i(pStopPictW2(1), ni, Di)
              Stoper“S‹Ø–{”s = f0(ni)
              Stoper“S‹ØŒas = "-D" + f0(pStop2(1, 1))
              StoperYˆÊ’us = "_Y150"
              Stoper“S‹ØBs = "_B" + F9(pStop2(1, 2))
              Stoper“S‹ØHs = "_H" + F9(pStop2(1, 3)): If pStop2(1, 3) = 0 Then Stoper“S‹ØHs = "_H900"
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper“S‹Ø–{”s + Stoper“S‹ØŒas + StoperYˆÊ’us + Stoper“S‹ØBs + Stoper“S‹ØHs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H2 “S‹Ø ]]]"
              Call SP_DataŒÂ”i(pStopPictW2(2), ni, Di)
              Stoper“S‹Ø–{”s = f0(ni)
              Stoper“S‹ØŒas = "-D" + f0(pStop2(2, 1))
              StoperXˆÊ’us = "_X150"
              StoperYˆÊ’us = "_Y150"
              Stoper“S‹ØBs = "_B" + F9(pStop2(2, 2))
              Stoper“S‹ØHs = "_H" + F9(pStop2(3, 3)): If pStop2(3, 3) = 0 Then Stoper“S‹ØHs = "_H900"
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper“S‹Ø–{”s + Stoper“S‹ØŒas + StoperXˆÊ’us + StoperYˆÊ’us + Stoper“S‹ØBs + Stoper“S‹ØHs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H3 “S‹Ø ]]]"
              Stoper“S‹ØŒas = "D" + f0(pStop2(3, 1))
              Stoper“S‹ØHs = "_H" + F9(pStop2(3, 2)): If pStop2(3, 2) = 0 Then Stoper“S‹ØHs = "_H900"
              Stoperpits = "_@200"
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper“S‹ØŒas + Stoper“S‹ØHs + Stoperpits + "_SD390"


             If pStop1(2, 1) + pStop1(2, 4) > 0 Then
             Stoperi = 2
             
              Lm = Lm + 1: StoperData(Lm) = ""
              Lm = Lm + 1: StoperData(Lm) = ".½Ä¯Êß"
              Lm = Lm + 1: StoperData(Lm) = "•„†=½Ä¯Êß2"
              Lm = Lm + 1: StoperData(Lm) = "” ”²=" + F9(pStop1(2, 2)) + "x" + F9(pStop1(2, 1)) + "x" + F9(pStop1(2, 4))   '    ” ”²=410x410x1430
              Lm = Lm + 1: StoperData(Lm) = "'[[[ H1 “S‹Ø ]]]"
              Call SP_DataŒÂ”i(pStopPictW2(2), ni, Di)
              Stoper“S‹Ø–{”s = f0(ni)
              Stoper“S‹ØŒas = "-D" + f0(pStop3(1, 1))
              StoperYˆÊ’us = "_Y150"
              Stoper“S‹ØBs = "_B" + F9(pStop3(1, 2))
              Stoper“S‹ØHs = "_H" + F9(pStop3(1, 3)): If pStop3(1, 3) = 0 Then Stoper“S‹ØHs = "_H900"
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper“S‹Ø–{”s + Stoper“S‹ØŒas + StoperYˆÊ’us + Stoper“S‹ØBs + Stoper“S‹ØHs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H2 “S‹Ø ]]]"
              Call SP_DataŒÂ”i(pStopPictW2(2), ni, Di)
              Stoper“S‹Ø–{”s = f0(ni)
              Stoper“S‹ØŒas = "-D" + f0(pStop3(2, 1))
              StoperXˆÊ’us = "_X150"
              StoperYˆÊ’us = "_Y150"
              Stoper“S‹ØBs = "_B" + F9(pStop3(2, 2))
              Stoper“S‹ØHs = "_H" + F9(pStop3(3, 3)): If pStop3(3, 3) = 0 Then Stoper“S‹ØHs = "_H900"
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper“S‹Ø–{”s + Stoper“S‹ØŒas + StoperXˆÊ’us + StoperYˆÊ’us + Stoper“S‹ØBs + Stoper“S‹ØHs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H3 “S‹Ø ]]]"
              Stoper“S‹ØŒas = "D" + f0(pStop3(3, 1))
              Stoper“S‹ØHs = "_H" + F9(pStop3(3, 2)): If pStop3(3, 2) = 0 Then Stoper“S‹ØHs = "_H900"
              Stoperpits = "_@200"
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper“S‹ØŒas + Stoper“S‹ØHs + Stoperpits + "_SD390"

             End If
             
             StoperDi = Lm


'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„  ¡ ŒBÀ                                                                                                                „ 
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
        Dim “¥Ài As Integer, “¥À“S‹Ø–{”s As String, “¥À“S‹ØŒas As String, “¥À”í‚ès As String, “¥Àpits As String, “¥ÀYˆÊ’us As String, “¥À“S‹ØBs As String, “¥À“S‹ØHs As String
        
        “¥Ài = 1
        Lm = 0
        Lm = Lm + 1: “¥ÀData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
        Lm = Lm + 1: “¥ÀData(Lm) = "'„  ¡ ŒBÀ                                                                                                                „ "
        Lm = Lm + 1: “¥ÀData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
        Lm = Lm + 1: “¥ÀData(Lm) = ".“¥À"            '“¥À

                     '** S1,S2  ‚Ìã‰ºŠÖŒW
                     '** S1 ‚ÌˆÊ’u

        Lm = Lm + 1: “¥ÀData(Lm) = "•„†=ŒBÀ1"
                '* ºŞÑ¼­³=410x260                         ' BX x BY  ’†~ BD ‚Å OK
        Lm = Lm + 1: “¥ÀData(Lm) = "BD=" + F9(pSisyu1(1, 2)) + "x" + F9(pSisyu1(1, 1))   '  BD=810x560                             ' BX x BY  ”jü•”

                Lm = Lm + 1: “¥ÀData(Lm) = "'[[[ “¥À  “S‹Ø ‚Å‚·  ]]]"

                          Lm = Lm + 1: “¥ÀData(Lm) = "' n    : “S‹Ø–{”"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' D    : “S‹ØŒa"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' K    : —Àã–Ê‚©‚ç‚Ì”í‚èˆÊ’u‚Å‚·"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' @    : “S‹Ø‚Ì‚ÌËß¯Á   “S‹Ø–{”-1"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' Y    : “S‹Ø‚ÌˆÊ’u‚Ì‚¸‚ê ¾İÀ°‚©‚çŠO‘¤‚ÉŒü‚©‚Á‚Ä +"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' B    : ŒBÀ“S‹Ø‚Ì’·‚³‚Å‚·"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' H    : ŒBÀ“S‹Ø‚Ì‚‚³‚Å‚·"
                          Lm = Lm + 1: “¥ÀData(Lm) = "' SD   : Şís"


                        Lm = Lm + 1: “¥ÀData(Lm) = "'exp   S1=8-D19_K280_Y62.5_@7x125_B1050_H570_SD390   ' X•ûŒü"
                        Lm = Lm + 1: “¥ÀData(Lm) = "'exp   S2=8-D22_K300_@7x150_B875_H660_SD390          ' Y•ûŒü"


             '[[[ S1 “S‹Ø ]]]
              Call SP_DataŒÂ”i(pSisyu2(1, 2), ni, Di)
              “¥À“S‹Ø–{”s = f0(ni)
              “¥À“S‹ØŒas = "-D" + f0(pSisyuD(1, 2))
              “¥À”í‚ès = "_K" + F9(pSisyukabu(1))
              “¥ÀYˆÊ’us = "" '“¥ÀYˆÊ’us = "_Y62.5" '********
              “¥À“S‹ØBs = "_B" + F9(FPŒvZX(pSisyu2(1, 1)) + pSisyuD(1, 1))
              “¥À“S‹ØHs = "_H" + f0(30 * pSisyuD(1, 2)) '30d
              “¥Àpits = "_@" + pSisyu2(1, 2)
              Lm = Lm + 1: “¥ÀData(Lm) = "S1=" + “¥À“S‹Ø–{”s + “¥À“S‹ØŒas + “¥À”í‚ès + “¥ÀYˆÊ’us + “¥À“S‹ØBs + “¥À“S‹ØHs + “¥Àpits + "_SD390"

             '[[[ S2 “S‹Ø ]]]
              Call SP_DataŒÂ”i(pSisyu2(1, 1), ni, Di)
              “¥À“S‹Ø–{”s = f0(ni)
              “¥À“S‹ØŒas = "-D" + f0(pSisyuD(1, 1))
              “¥À”í‚ès = "_K" + F9(pSisyukabu(1) + (pSisyuD(1, 1) + pSisyuD(1, 2)) / 2)
              “¥À“S‹ØBs = "_B" + F9(FPŒvZX(pSisyu2(1, 2)))
              “¥À“S‹ØHs = "_H" + f0(30 * pSisyuD(1, 1))
              “¥Àpits = "_@" + pSisyu2(1, 1)
              Lm = Lm + 1: “¥ÀData(Lm) = "S2=" + “¥À“S‹Ø–{”s + “¥À“S‹ØŒas + “¥À”í‚ès + “¥À“S‹ØBs + “¥À“S‹ØHs + “¥Àpits + "_SD390"
              “¥ÀDi = Lm

       If pSisyuD(2, 2) > 0 Then
        “¥Ài = 2
        Lm = Lm + 1: “¥ÀData(Lm) = ""
        Lm = Lm + 1: “¥ÀData(Lm) = ".“¥À"            '“¥À
        Lm = Lm + 1: “¥ÀData(Lm) = "•„†=ŒBÀ2"
        Lm = Lm + 1: “¥ÀData(Lm) = "BD=" + F9(pSisyu1(2, 2)) + "x" + F9(pSisyu1(2, 1))   '  BD=810x560                             ' BX x BY  ”jü•”


             '[[[ S1 “S‹Ø ]]]
              Call SP_DataŒÂ”i(pSisyu2(2, 2), ni, Di)
              “¥À“S‹Ø–{”s = f0(ni)
              “¥À“S‹ØŒas = "-D" + f0(pSisyuD(2, 2))
              “¥À”í‚ès = "_K" + F9(pSisyukabu(2))
              “¥ÀYˆÊ’us = "" '“¥ÀYˆÊ’us = "_Y62.5" '********
              “¥À“S‹ØBs = "_B" + F9(FPŒvZX(pSisyu2(2, 1)) + pSisyuD(2, 1))
              “¥À“S‹ØHs = "_H" + f0(30 * pSisyuD(2, 2))
              “¥Àpits = "_@" + pSisyu2(2, 2)
              Lm = Lm + 1: “¥ÀData(Lm) = "S1=" + “¥À“S‹Ø–{”s + “¥À“S‹ØŒas + “¥À”í‚ès + “¥ÀYˆÊ’us + “¥À“S‹ØBs + “¥À“S‹ØHs + “¥Àpits + "_SD390"

             '[[[ S2 “S‹Ø ]]]
              Call SP_DataŒÂ”i(pSisyu2(2, 1), ni, Di)
              “¥À“S‹Ø–{”s = f0(ni)
              “¥À“S‹ØŒas = "-D" + f0(pSisyuD(2, 1))
              “¥À”í‚ès = "_K" + F9(pSisyukabu(2) + (pSisyuD(2, 1) + pSisyuD(2, 2)) / 2)
              “¥À“S‹ØBs = "_B" + F9(FPŒvZX(pSisyu2(2, 2)))
              “¥À“S‹ØHs = "_H" + f0(30 * pSisyuD(2, 1))
              “¥Àpits = "_@" + pSisyu2(2, 1)
              Lm = Lm + 1: “¥ÀData(Lm) = "S2=" + “¥À“S‹Ø–{”s + “¥À“S‹ØŒas + “¥À”í‚ès + “¥À“S‹ØBs + “¥À“S‹ØHs + “¥Àpits + "_SD390"
              “¥ÀDi = Lm
         End If

'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„  ¡ —À                                                                                                                  „ 
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
        Dim —À_BX As Single, —À_BY As Single, —À_H1 As Single, —À_H2 As Single
        —À_BX = pW(1): —À_BY = pB(1): —À_H1 = pH(3): —À_H2 = pH(2)
        
        Dim Stoper•„†s, ŒBÀ•„†s As String
        Lm = 0
    ' Lm = Lm + 1: —ÀData(Lm) = "errck'"
        Lm = Lm + 1: —ÀData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
        Lm = Lm + 1: —ÀData(Lm) = "'„  ¡ —À                                                                                                                  „ "
        Lm = Lm + 1: —ÀData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
        Lm = Lm + 1: —ÀData(Lm) = ".—À" 'Œ…À

                 Lm = Lm + 1: —ÀData(Lm) = "BX=" + F9(—À_BX) ' 8900              '—ÀX’·‚³ BX=4750+4750
                 Lm = Lm + 1: —ÀData(Lm) = "BY=" + F9(—À_BY) ' 2000              '—ÀY’·‚³ BY=1500+1500
                 Lm = Lm + 1: —ÀData(Lm) = "H=" + F9(—À_H1) + "+" + F9(—À_H2) ' 500 + 1500        '—À‚‚³

                 Lm = Lm + 1: —ÀData(Lm) = "Œù”z=10,-28"          ' Œù”z=’†‰›‚Ì’l,’[‚Ì’l    Œù”z=10,-28,-20
                 Lm = Lm + 1: —ÀData(Lm) = "r=0"           'r=250
                 Lm = Lm + 1: —ÀData(Lm) = "r2=" + F9(pRHanti(0)) ' 0 'r2=1500                ' ’Œ‚Æ—À•”•ª


              '[[[ ½Ä¯ÊßˆÊ’u ]]]
                 Dim Stoper_LY As Double, Stoper_n As Integer, StoperˆÊ’us As String
                 Lm = Lm + 1: —ÀData(Lm) = "½Ä¯ÊßˆÊ’u"
                         '  I“_ ¶¨‰E   ‹N“_ ¶¨‰E ‚Ì‡”Ô
                         
                         '   -2650,320   0,320    2650,320
                         '   -1300,-575,½Ä¯Êß2    1300,-575,½Ä¯Êß2      ' X,Y,½Ä¯Êß°•„†
 
                         Stoper_LY = pB(1) / 2 - pStop1(2, 3)
                         D1s = pStopPictW(2):   Call SP_DataŒÂ”i(D1s, Stoper_n, Di)
                 
                         StoperˆÊ’us = ""
                         Stoper•„†s = "½Ä¯Êß1": If Stoperi > 1 Then Stoper•„†s = "½Ä¯Êß2"
                         For ii = 1 To Stoper_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             StoperˆÊ’us = StoperˆÊ’us + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(Stoper_LY) + "," + Stoper•„†s
                              Next ii
                         Lm = Lm + 1: —ÀData(Lm) = StoperˆÊ’us

                         Stoper_LY = pB(1) / 2 - pStop1(1, 3)
                         D1s = pStopPictW(1):   Call SP_DataŒÂ”i(D1s, Stoper_n, Di)
                 
                         StoperˆÊ’us = ""
                         Stoper•„†s = "½Ä¯Êß1"
                         For ii = 1 To Stoper_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             StoperˆÊ’us = StoperˆÊ’us + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(-Stoper_LY) + "," + Stoper•„†s
                              Next ii
                         Lm = Lm + 1: —ÀData(Lm) = StoperˆÊ’us


              '[[[ ŒBÀˆÊ’u ]]]
                 Dim ŒBÀ_LY As Double, ŒBÀ_n As Integer, ŒBÀˆÊ’us As String
                 Lm = Lm + 1: —ÀData(Lm) = "ŒBÀˆÊ’u"
                         '  I“_ ¶¨‰E   ‹N“_ ¶¨‰E ‚Ì‡”Ô
                         '   -2650,320   0,320    2650,320
                         '   -1300,-575,½Ä¯Êß2    1300,-575,½Ä¯Êß2      ' X,Y,½Ä¯Êß°•„†
 
                         ŒBÀ_LY = pB(1) / 2 - pSisyu1(2, 3)
                         D1s = pSisyuPictW(2):   Call SP_DataŒÂ”i(D1s, ŒBÀ_n, Di)
                 
                         ŒBÀ•„†s = "ŒBÀ1": If “¥Ài > 1 Then ŒBÀ•„†s = "ŒBÀ2"
                         ŒBÀˆÊ’us = ""
                         For ii = 1 To ŒBÀ_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                              ŒBÀˆÊ’us = ŒBÀˆÊ’us + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(ŒBÀ_LY) + "," + ŒBÀ•„†s
                              Next ii
                         Lm = Lm + 1: —ÀData(Lm) = ŒBÀˆÊ’us

                         ŒBÀ_LY = pB(1) / 2 - pSisyu1(1, 3)
                         D1s = pSisyuPictW(1):   Call SP_DataŒÂ”i(D1s, ŒBÀ_n, Di)
                 
                         ŒBÀˆÊ’us = "": ŒBÀ•„†s = "ŒBÀ1"
                         For ii = 1 To ŒBÀ_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             ŒBÀˆÊ’us = ŒBÀˆÊ’us + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(-ŒBÀ_LY) + "," + ŒBÀ•„†s
                              Next ii
                         Lm = Lm + 1: —ÀData(Lm) = ŒBÀˆÊ’us



        Lm = Lm + 1: —ÀData(Lm) = "'[[[ B1 ‚Í Ù°Ìß‹Ø ‚Å‚·  ]]]   Y² ‘ÎÛl—¶"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : Ù°Ìß‹ØŒa"
                         Lm = Lm + 1: —ÀData(Lm) = "' K    : —À¶‘¤–Ê‚©‚ç‚Ì”í‚èˆÊ’u‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' @    : —Àãê‚©‚ç‚ÌˆÊ’u‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' B    : “S‹Ø‚ÌX•ûŒü’·‚³‚Å‚·      B L1 + JL + L2"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : “S‹Ø‚ÌY•ûŒü’·‚³‚Å‚·"
                        
                        Dim Roop‹ØBi As Single, Roop‹ØDi As Single
                        Dim Roop‹ØŒas As String, Roop‹Ø”í‚ès As String, Roop‹ØPits As String, Roop‹ØBs As String, Roop‹ØDs As String
                        Dim Roop‹Øb As Single, Roop‹ØL As Single

                     Lm = Lm + 1: —ÀData(Lm) = "'exp    B1=D32_K136_@126+2x80_B4124+J960+5124_D1244_SD390         ' Ù°Ìß“S‹Ø(å‹Ø) 1"
                     Lm = Lm + 1: —ÀData(Lm) = "'exp    B1=D32_K216_@126+3x80_B4044+J960+5044_D1084_SD390         ' Ù°Ìß“S‹Ø(å‹Ø) 2"

                       '[[[ Ù°Ìß“S‹Ø(å‹Ø) 1 ]]]
                       Roop‹ØŒas = "D" + f0(pHariDai(1))
                       Roop‹Ø”í‚ès = "_K" + F9(pHariKaburi(1))
                       Roop‹ØPits = "_@126+" + f0(pHariLoop(2, 2)) + "x80"
                       'pHariƒ‹[ƒv’¼ü’·(2)
                       Roop‹ØBi = pHariƒ‹[ƒv’¼ü’·(1) '   —À_BX - 800
                       Roop‹ØBs = "_B" + F9(Roop‹ØBi)
                    Roop‹ØBs = "_B4044+J960+5044"
                       Roop‹ØDs = "_D" + F9(pHariLoop(1, 2))
                       Lm = Lm + 1: —ÀData(Lm) = "B1=" + Roop‹ØŒas + Roop‹Ø”í‚ès + Roop‹ØPits + Roop‹ØBs + Roop‹ØDs + "_SD390"

                       '[[[ Ù°Ìß“S‹Ø(å‹Ø) 2 ]]]
                       Roop‹ØŒas = "D" + f0(pHariDai(1))
                       Roop‹Ø”í‚ès = "_K" + F9(pHariKaburi(1))
                       Roop‹ØPits = "_@126+" + f0(pHariLoop(2, 3)) + "x80"
                       Roop‹ØBi = pHariƒ‹[ƒv’¼ü’·(1)   '—À_BX - 800 - 300
                       Roop‹ØBs = "_B" + F9(Roop‹ØBi)
                       Roop‹ØDs = "_D" + F9(pHariLoop(1, 3))
                       
                     If Roop‹ØDs <> "_D0" Then Lm = Lm + 1: —ÀData(Lm) = "B1=" + Roop‹ØŒas + Roop‹Ø”í‚ès + Roop‹ØPits + Roop‹ØBs + Roop‹ØDs + "_SD390"


        Lm = Lm + 1: —ÀData(Lm) = "'[[[ B2 ‚Í —Àã’[‹Ø ‚Å‚·  ]]]   Y² ‘ÎÛl—¶  ½Ä¯Êß•”•ª‚Í ¶¯Ä‚µ‚Ü‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : —Àã’[‹ØŒa"
                         Lm = Lm + 1: —ÀData(Lm) = "' K    : —Àãê‚©‚ç”í‚è‚ÌˆÊ’u‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' @    : —À‘¤–Ê‚©‚çŠ„‚è•t‚¯‚Ü‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' L    : “S‹Ø‚Ì’·‚³‚Å‚·     F ‚ÍÌ¯¸‚Å‚·"
                        Dim —Àãê‹ØŒas As String, —Àãê‹Ø”í‚ès As String, —Àãê‹ØPits As String, —Àãê‹ØLs As String

                      Lm = Lm + 1: —ÀData(Lm) = "'exp   B2=D16_K126_@396.7+4x180.7_LF+8900+F_SD390"

                         Lm = Lm + 1: —ÀData(Lm) = "' ¦ B2-2, B2-3 ‚ÍŒvZ‚µ‚Ü‚·"

                       —Àãê‹ØŒas = "D" + f0(pHariDai(2))
                       —Àãê‹Ø”í‚ès = "_K" + F9(pHariKaburi(1))
                       —Àãê‹ØPits = "_@396.7+" + f0(pHariN(1)) + "x180.7"
                       —Àãê‹ØLs = "_LF+8900+F"
                       Lm = Lm + 1: —ÀData(Lm) = "B2=" + —Àãê‹ØŒas + —Àãê‹Ø”í‚ès + —Àãê‹ØPits + —Àãê‹ØLs


               Lm = Lm + 1: —ÀData(Lm) = "'[[[ B3 ‚Í —À  ‰º’[“S‹Ø(‚ ‚²•”•ª) ‚Å‚·  ]]]   X² ‘ÎÛl—¶"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : —À‰º’[‹ØŒa"
                         Lm = Lm + 1: —ÀData(Lm) = "' B    : —À‘¤–Ê‚©‚ç‚Ì’·‚³‚Å‚·   ‰¡”íØ+L"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : —Àãê‚©‚ç‚Ì’·‚³‚Å‚·   ã”íØ+L"
                         Lm = Lm + 1: —ÀData(Lm) = "' @    : —À‘¤–Ê‚©‚çŠ„‚è•t‚¯‚Ü‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' r    : ”¼Œa‚Å‚·"

                        Dim —À‰ºê‹ØŒas As String, —À‰ºê‹ØBs As String, —À‰ºê‹ØDs As String, —À‰ºê‹ØPits As String, —Àãê‹Ørs As String
                      
                      Lm = Lm + 1: —ÀData(Lm) = "'exp   B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150_SD390"
                      Lm = Lm + 1: —ÀData(Lm) = "'exp   B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1337.68+1378.04_r150_SD390"

                        —À‰ºê‹ØŒas = "D" + f0(pHariDai(4))
                        —À‰ºê‹ØBs = "_B95+3445.1"
                        —À‰ºê‹ØDs = "_D98+1337.68"
                        —À‰ºê‹ØPits = "_@" + pHariPictW(2)
                        —Àãê‹Ørs = "_r=0"
                        Lm = Lm + 1: —ÀData(Lm) = "B3=" + —À‰ºê‹ØŒas + —À‰ºê‹ØBs + —À‰ºê‹ØDs + —À‰ºê‹ØPits + —Àãê‹Ørs + "_SD390"




        Lm = Lm + 1: —ÀData(Lm) = "'[[[ B4 ‚Í —À ‘¤“S‹Ø ‚Å‚· (…•½•â‹­‹Ø) ]]]       X² ‘ÎÛl—¶"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : ‘¤“S‹ØŒa"
                         Lm = Lm + 1: —ÀData(Lm) = "' K    : —À‘¤–Ê‚©‚ç‚Ì”í‚èˆÊ’u‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' @    : —Àãê‚©‚ç‚ÌˆÊ’u‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' B    : “S‹Ø‚ÌX•ûŒü’·‚³‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : “S‹Ø‚ÌY•ûŒü’·‚³‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' r    : ”¼Œa‚Å‚·"
                        
                        Dim ‘¤“S‹ØŒas As String, ‘¤“S‹Ø”í‚ès As String, ‘¤“S‹ØBs As String, ‘¤“S‹ØDs As String, ‘¤“S‹ØPits As String, ‘¤“S‹Ørs As String
                        Dim ‘¤“S‹Ø”íi As Single, ‘¤“S‹ØBi As Single, ‘¤“S‹ØDi As Single

                      Lm = Lm + 1: —ÀData(Lm) = "'exp    B4=D25_K73_@126+12x150_B3150_D2829_r270_SD390"
                      Lm = Lm + 1: —ÀData(Lm) = "'exp    B4-2=D25_B2850`1830_D2829_r270_SD390        ' **`** ‚Ìê‡‚Í À’·(r=__ ‚Í‰Á‚¦‚È‚¢)"

                          '2850`1830


                         ‘¤“S‹ØŒas = "D" + f0(pHariDai(5))
                             ‘¤“S‹Ø”íi = pHariKaburi(3) + pHariDai(5) / 2
                         ‘¤“S‹Ø”í‚ès = "_K" + F9(‘¤“S‹Ø”íi)
                             ‘¤“S‹ØBi = (—À_BX - pW(6)) / 2 + pHariBon(2) - ‘¤“S‹Ø”íi
                         ‘¤“S‹ØBs = "_B" + F9(‘¤“S‹ØBi) ' ‘¤“S‹ØBs = "_B"+F9(‘¤“S‹ØBi)
                             ‘¤“S‹ØDi = —À_BY - 2 * ‘¤“S‹Ø”íi
                         ‘¤“S‹ØDs = "_D" + F9(‘¤“S‹ØDi)
                         ‘¤“S‹ØPits = "_@" + Replace®s(pHariPicth(2))
                         ‘¤“S‹Ørs = "_r=270"
                         Lm = Lm + 1: —ÀData(Lm) = "B4=" + ‘¤“S‹ØŒas + ‘¤“S‹Ø”í‚ès + ‘¤“S‹ØBs + ‘¤“S‹ØDs + ‘¤“S‹ØPits + ‘¤“S‹Ørs + "_SD390"

                         ‘¤“S‹ØBs = "_B" + F9(‘¤“S‹ØBi) + "`" + F9(‘¤“S‹ØBi) ' ‘¤“S‹ØBs = "_B"+F9(‘¤“S‹ØBi)
                         Lm = Lm + 1: —ÀData(Lm) = "B4-2=" + ‘¤“S‹ØŒas + ‘¤“S‹Ø”í‚ès + ‘¤“S‹ØBs + ‘¤“S‹ØDs + ‘¤“S‹ØPits + ‘¤“S‹Ørs + "_SD390"


        Lm = Lm + 1: —ÀData(Lm) = "'[[[ B0 ‚Í —À ½À°×¯Ìß ‚Å‚·  ]]]      ½Ä¯Êß•”•ª‚Í ¶¯Ä‚µ‚Ü‚·               2132~1335"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : —ÀSt“S‹ØŒa"
                         Lm = Lm + 1: —ÀData(Lm) = "' K    : —Àãê,—À‰ºê‚©‚ç‚ÌˆÊ’u(ZÀ•W)‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' X    : —À‰¡–Ê‚©‚ç‚ÌˆÊ’u‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' Spit : ½À°×¯ÌßËß¯Á  —À‘¤–Ê‚©‚çŠ„‚è•t‚¯‚Ü‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' B    : ’Œ“à½À°×¯Ìß“S‹Ø‚Ì’·‚³‚Å‚·"
                         Lm = Lm + 1: —ÀData(Lm) = "' D    : ’Œ“à½À°×¯Ìß“S‹Ø‚Ì‚‚³‚Å‚·"

                        Dim —ÀSt“S‹ØŒas As String, —ÀSt“S‹Ø”í‚ès As String, —ÀSt“S‹ØXs As String, —ÀSt“S‹ØBs As String, —ÀSt“S‹ØDs As String, —ÀSt“S‹ØPits As String, —ÀSt“S‹Ørs As String
                        Dim —ÀSt“S‹ØPit1s As String, —ÀSt“S‹ØPit2s As String, —ÀSt“S‹ØPit3s As String
                        Dim —ÀSt“S‹ØXi As Single, —ÀSt“S‹ØBi As Single

                       Lm = Lm + 1: —ÀData(Lm) = "'exp   B01=D22_X109_K74.5_B1618_D2292`1495+F_r160_SD390    ‰º½À°×¯Ìß  Y² ‘ÎÛl—¶  --> B01 ###"
                       Lm = Lm + 1: —ÀData(Lm) = "'exp   B02=D22_X109_K99_B1618_DF+440_SD390                  ã½À°×¯Ìß  Y² ‘ÎÛl—¶  --> B02, B03, B04"
                       Lm = Lm + 1: —ÀData(Lm) = "'exp   B03=D16_K99_B2776_D500_SD390                         ’Œ“à½À°×¯Ìß    --->  B5-1, B5-2, B5-3"

                       Lm = Lm + 1: —ÀData(Lm) = "'exp   Spit=500+13x150+23x200+13x150"

                         Lm = Lm + 1: —ÀData(Lm) = "' ¦ B5-2, B5-3 ‚ÍŒvZ‚µ‚Ü‚·"


                        '[[[ ‰º½À°×¯Ìß ]]]
                        —ÀSt“S‹ØDs = "D" + f0(pHariStrD(1))
                        —ÀSt“S‹ØXi = pHariKaburi(3) + pHariStrD(1) / 2:
                            —ÀSt“S‹ØXs = "_X" + F9(—ÀSt“S‹ØXi)
                        
                        —ÀSt“S‹Ø”í‚ès = "_K" + F9(pHariKaburi(2) + pHariStrD(1) / 2)
                       ' —ÀSt“S‹ØBi = Val(pHariStrW(1)) + Val(pHariStrW(2))
                        —ÀSt“S‹ØBi = Val(pHariStrW(1))
                            —ÀSt“S‹ØBs = "_B" + F9(—ÀSt“S‹ØBi)
                        —ÀSt“S‹ØDs = "_D2292`1495+F"
                        —ÀSt“S‹Ørs = "_r160"
                        Lm = Lm + 1: —ÀData(Lm) = "B01=" + —ÀSt“S‹ØDs + —ÀSt“S‹ØXs + —ÀSt“S‹Ø”í‚ès + —ÀSt“S‹ØBs + —ÀSt“S‹ØDs + —ÀSt“S‹Ørs + "_SD390"
                       
                        '[[[ ã½À°×¯Ìß ]]]
                        —ÀSt“S‹ØDs = "D" + f0(pHariStrD(1))
                     '   —ÀSt“S‹ØXs = "_X109"
                        
                        —ÀSt“S‹Ø”í‚ès = "_K" + F9(pHariKaburi(1) + pHariStrD(1) / 2)
                        —ÀSt“S‹ØBs = "_B" + F9(—ÀSt“S‹ØBi)
                        —ÀSt“S‹ØDs = "_DF+400"
                        Lm = Lm + 1: —ÀData(Lm) = "B02=" + —ÀSt“S‹ØDs + —ÀSt“S‹ØXs + —ÀSt“S‹Ø”í‚ès + —ÀSt“S‹ØBs + —ÀSt“S‹ØDs + "_SD390"
                       
                        '[[[ ’Œ“à½À°×¯Ìß ]]]
                        —ÀSt“S‹ØDs = "D" + f0(pHariStrD(2))
                        —ÀSt“S‹Ø”í‚ès = "_K" + F9(pHariKaburi(2) + pHariStrD(2) / 2)
                        —ÀSt“S‹ØBs = "_B" + F9(—ÀSt“S‹ØBi)
                        —ÀSt“S‹ØDs = "_D" + F9(pHariStrBon(1))
                        Lm = Lm + 1: —ÀData(Lm) = "B03=" + —ÀSt“S‹ØDs + —ÀSt“S‹Ø”í‚ès + —ÀSt“S‹ØBs + —ÀSt“S‹ØDs + "_SD390"
                       
                        '[[[ ½À°×¯Ìß Pit ]]]
                        —ÀSt“S‹ØPit1s = Replace®s(pHariPictW(3))
                            —ÀSt“S‹ØPit3s = —ÀSt“S‹ØPit1s
                            ni = InStr(—ÀSt“S‹ØPit3s, "+"): If ni > 0 Then —ÀSt“S‹ØPit3s = Mid(—ÀSt“S‹ØPit3s, ni + 1)
                        —ÀSt“S‹ØPit2s = "+" + Replace®s(pHariPictW(4))
                        
                        —ÀSt“S‹ØPits = —ÀSt“S‹ØPit1s + —ÀSt“S‹ØPit2s + "+" + —ÀSt“S‹ØPit3s
                        Lm = Lm + 1: —ÀData(Lm) = "Spit=" + —ÀSt“S‹ØPits
                       
                       
                       —ÀDi = Lm
                       

    ' Stop




    End Sub

Private Sub ‹´‹rData}İ’è()
        Lm = 0
        Lm = Lm + 1: }İ’èData(Lm) = "'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢"
        Lm = Lm + 1: }İ’èData(Lm) = "'„                                                                                                                         „ "
        Lm = Lm + 1: }İ’èData(Lm) = "'„  ¡ ‹´‹r}                                                                                                              „ "
        Lm = Lm + 1: }İ’èData(Lm) = "'„                                                                                                                         „ "
        Lm = Lm + 1: }İ’èData(Lm) = "'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£"
        Lm = Lm + 1: }İ’èData(Lm) = "//‹´‹r}"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "' ½¹°Ù‚Ì•ÏX     Œ´“_=X0,Y0 ‚Ì“ü—Í‚ÌŒã‚É   S=1/___ ‚Å“ü—Í‚·‚é"
        Lm = Lm + 1: }İ’èData(Lm) = "' Œ´“_‚Ì•ÏX‚Å »ÌŞ½¹°Ù‚Í Šî–{½¹°Ù‚É–ß‚é"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = " '/Œ´“_•\¦"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "/Šî–{İ’è"
        Lm = Lm + 1: }İ’èData(Lm) = "             —p†=A1"
        Lm = Lm + 1: }İ’èData(Lm) = "             ¡–@’[•”=–î   '¡–@’[•”=ã–î"
        Lm = Lm + 1: }İ’èData(Lm) = "           '  ¡–@Msize=3"
        Lm = Lm + 1: }İ’èData(Lm) = "             ¡–@’[•”–îsize=2"
        Lm = Lm + 1: }İ’èData(Lm) = "            ¡–@’[•”–îŠp“x=15"
        Lm = Lm + 1: }İ’èData(Lm) = "            ¡–@F=‹ó       ' 1:       2:‰©   3:—Î   4:‹ó   5:Â   6:‡   7:”’"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "                                –îsize=1.5 ': P_–î_’·‚³ = Val(€–Ú3s$): If P_–î_’·‚³ < 0.1 Then P_–î_’·‚³ = 0.1"
        Lm = Lm + 1: }İ’èData(Lm) = "                                –îŠp“x=15  ': P_–î_Šp“x = Val(€–Ú3s$)"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "    /˜g"
        Lm = Lm + 1: }İ’èData(Lm) = "            READ˜g=‹´‹r˜g.D00"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "    /DXF   Y”z‹Ø}.DXF     Y”z‹Ø}   —tƒm“à       1/50"
        Lm = Lm + 1: }İ’èData(Lm) = "            }Œ`€–Ú=Y"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=100,450              .”z‹Ø}"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=100,380              .K1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=100,350              .K2"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=100,250              .’f–Êa-a"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,250   S=1/20     .’f–Êa-a”z‹Ø}"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=300,250              .’f–Êb-b"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=400,250   S=1/20     .’f–Êb-b”z‹Ø}"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=100,120              .K01"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,120              .K03"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=300,120              .K04"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=400,120              .K02"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=600,150   S=1/10     .‘Ñ“S‹ØŒpèÚ×}"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=600,250   S=1/10     .½Íß°»°Ú×}"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=720,250   S=1/10     .‚©‚Ô‚èÚ×}"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "    /DXF   Šî‘b”z‹Ø}.DXF     Šî‘b”z‹Ø}   —tƒm“à       1/50"
        Lm = Lm + 1: }İ’èData(Lm) = "            }Œ`€–Ú=Šî‘b"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,390             .”z‹Ø}"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,120             .’f–Êa-a"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=480,390             .’f–Êb-b"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=470,200             .F2"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=470,150             .F1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=470,110             .F3"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=650,230             .f1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=650,150             .f2"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=600,390             .F12"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=680,390             .F13      '*** F12  ÖØ"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=750,390             .F11"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=780,390             .F14"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "    /DXF   ŒBÀ”z‹Ø}.DXF    ‚­‘Ì”z‹Ø}(‚»‚Ì1)    —tƒm“à       1/50"
        Lm = Lm + 1: }İ’èData(Lm) = "            }Œ`€–Ú=ŒBÀ"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,450             .’f–ÊA-A"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,300             .’f–ÊB-C"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=150,120             .’f–ÊD-D"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=300,120             .’f–ÊH-H"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=500,450             .’f–ÊE-E"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=500,300             .’f–ÊF-G"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=500,150   S=1/20    .–³ûkÓÙÀÙÚ×}"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=680,500             .S1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=680,400             .S2"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=770,500             .H1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=770,400             .H2"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=770,300             .H3"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "    /DXF   ’Œ”z‹Ø}.DXF     ‚­‘Ì”z‹Ø}(‚»‚Ì3)    —tƒm“à       1/50"
        Lm = Lm + 1: }İ’èData(Lm) = "            }Œ`€–Ú=’Œ"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=130,190             .’f–ÊA-B"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=330,190             .’f–ÊC-D"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=700,485             .’f–Êa-a"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=700,365             .’f–Êb-b"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=700,240  S=1/20           .’f–Êb-b“S‹Ø”z‹Ø}"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=100,100             .c1-X       '***  c1 ÖØ"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,100             .c1-Y       '***  c1 ÖØ"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=300,100             .c2-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=420,100             .c2-2"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=520,100             .c3-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=590,100             .c3-2"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=490,190             .C1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=515,190             .C2"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=540,190             .C3"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=565,190             .C4"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=650,80              .CK"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "    /DXF   —À”z‹Ø}.DXF     ‚­‘Ì”z‹Ø}(‚»‚Ì2)    —tƒm“à       1/50"
        Lm = Lm + 1: }İ’èData(Lm) = "            }Œ`€–Ú=—À"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,490             .’f–ÊA-A"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,280             .’f–ÊB-B"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=200,120             .’f–ÊC-C"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=450,490             .’f–Êa-a"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=670,520  S=1/20     .’f–Êa-a“S‹Ø”z‹Ø}"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=450,300             .B1-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=450,230             .B1-2"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=450,150             .B2-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=400,100             .B2-2      '***"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=470,100             .B2-3      '***"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=650,310             .B4-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=750,310             .B4-2      '***"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=610,240             .B5-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=590,200             .B5-2      '***"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=640,200             .B5-3      '***"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=750,200             .B3-1"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=600,100             .B01"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=600,150             .B02"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=650,150             .B03       '***"
        Lm = Lm + 1: }İ’èData(Lm) = "            Œ´“_=650,100             .B04       '***"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = "//“S‹ØŞ—¿•\ì¬"
        Lm = Lm + 1: }İ’èData(Lm) = "//“S‹ØŞ—¿•\"
        Lm = Lm + 1: }İ’èData(Lm) = "          READ=“S‹ØŞ—¿•\.dat"
        Lm = Lm + 1: }İ’èData(Lm) = ""
        Lm = Lm + 1: }İ’èData(Lm) = ""


       }İ’èDi = Lm
    
    
    End Sub


Private Function Replace®s(ByVal Moj As String) As String
   '  Moj   *  --->  x
   '        X  --->  x
   
    Moj = •¶š•ÏŠ·(Moj, "*", "x")
    Replace®s = LCase(Moj)

   End Function

Function FPŒvZX(ByVal Moj As String) As Double
    '  8x150 ‚ğŒvZ‚·‚é   1200
    Dim D1s As String, D2s As String
    Dim ni As Integer
    Moj = Replace®s(Moj)
    ni = InStr(Moj, "x")
    Select Case ni
    Case 0:  FPŒvZX = Val(Moj)
    Case Else:  FPŒvZX = Val(Mid(Moj, 1, ni - 1)) * Val(Mid(Moj, ni + 1))
    End Select
    

    End Function

Function FP_DataŒÂ”i(ByVal Wda As String)
      ' Wda ‚ğ•ª‰ğ‚µ‚Ä L ŒÂ” ‚ğ‹‚ß‚é
    Dim ƒ°n As Integer, L(900) As Single
    Call SP_DataŒÂ”i(Wda, ƒ°n, L)
    
    FP_DataŒÂ”i = ƒ°n
    End Function


Private Sub SP_DataŒÂ”i(ByVal Wda As String, ByRef ƒ°n As Integer, ByRef L() As Single)
      ' Wda ‚ğ•ª‰ğ‚µ‚Ä ŒÂ”‚Æ ŠiL ‚ğ‹‚ß‚é
      Dim ii  As Integer, i2 As Integer, ni As Integer, n2 As Integer, Ds(200) As String, Di(200)
      Dim L1 As Single
      ' Wda="400+350x3+500x3+600"   ƒ°n=8  L(1)=400 L(2)=350 ... L(5)=500
      ƒ°n = 0
      Wda = Replace®s(Wda)
      Call Ddata("+", Wda, Ds, Di, ni)
      For ii = 1 To ni
          Call DataŒÂ”x(Ds(ii), n2, L1)
          For i2 = 1 To n2:    ƒ°n = ƒ°n + 1: L(ƒ°n) = L1
          Next i2
          
      Next ii


End Sub

Private Sub DataŒÂ”x(ByVal Wda As String, ByRef n As Integer, ByRef L As Single)
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
    ' 200+200+300 ‚ğì‚é
    Dim ii As Integer, Wda As String
    Wda = ""
    For ii = 1 To n
        Wda = Wda + "+" + F9(L(ii))
        Next ii
    F_Moj_s1 = Mid(Wda, 2)

    End Function

Private Function Hoop_ˆÊ’u(L As Single, n As Integer, ˆÊ’u() As Single) As Integer
    '  L ‚ª Hoop ‚Ì‰½”Ô–Ú‚É‚ ‚é‚©‚ğ‚©‚¦‚· –³‚¢ê‡‚Í‚P”Ô‹ß‚¢ˆÊ’u
    ' ‘g—§‹ØˆÊ’u‚ÌŒŸõ
    Dim ii As Integer, L1 As Single
    For ii = 1 To n
       L1 = L - ˆÊ’u(ii)
       If L1 <= 0 Then Exit For
      Next ii
      Hoop_ˆÊ’u = ii
    End Function

Private Sub Y_ˆÊ’u(ByRef Šî‘bData() As String)
    ' Y–{”  YˆÊ’u ‚ğŒvZ
    '
    '  pKuihaic1(0`1, ii)  pKuihaic2(0`1, ii)
    '
    Dim ii As Integer, i2 As Integer, XYi(30, 30) As Integer
    Dim Wda As String
    Dim Y–{”i As Integer, XˆÊ’u”i As Single, YˆÊ’u”i As Single, XˆÊ’ui(20) As Single, YˆÊ’ui(20) As Single
    Dim XˆÊ’u–{”i(20) As Single, YˆÊ’u–{”i(20) As Single
    Dim XcenterN As Integer
    Dim Šî‘bBX2 As Single, Šî‘bBY2 As Single
   
   
        Šî‘bBX2 = pW(7) / 2:        Šî‘bBY2 = (pB(7) + pB(8) + pB(9)) / 2
    
    For ii = 1 To 20: XˆÊ’u–{”i(ii) = 0: YˆÊ’u–{”i(ii) = 0: XˆÊ’ui(ii) = 0: YˆÊ’ui(ii) = 0: Next ii
    Y–{”i = 0
    For ii = 0 To 10: If Val(pKuihaic2(1, ii)) = 0 Then Exit For
        XˆÊ’ui(ii + 1) = Val(pKuihaic2(0, ii)) * 1000 - Šî‘bBX2: If Abs(XˆÊ’ui(ii + 1)) < 0.001 Then XˆÊ’ui(ii + 1) = 0
        XˆÊ’u–{”i(ii + 1) = Val(pKuihaic2(1, ii))
        Y–{”i = Y–{”i + XˆÊ’u–{”i(ii + 1)
        Next ii
        XˆÊ’u”i = ii
    For ii = 0 To 10: If Val(pKuihaic1(1, ii)) = 0 Then Exit For
        YˆÊ’ui(ii + 1) = Val(pKuihaic1(0, ii)) * 1000 - Šî‘bBY2: If Abs(YˆÊ’ui(ii + 1)) < 0.001 Then YˆÊ’ui(ii + 1) = 0
        YˆÊ’u–{”i(ii + 1) = Val(pKuihaic1(1, ii))
        Next ii
        YˆÊ’u”i = ii

    For ii = 1 To 30: For i2 = 1 To 30: XYi(ii, i2) = 0: Next i2: Next ii

    XˆÊ’u”i = Int(XˆÊ’u”i)
    XcenterN = Int(XˆÊ’u”i / 2) + 1
    For i2 = 1 To YˆÊ’u”i
        Select Case YˆÊ’u–{”i(i2)
        Case 1: XYi(XcenterN, i2) = 1
        Case 2: XYi(1, i2) = 1: XYi(Int(XˆÊ’u”i), i2) = 1
        Case 3: XYi(1, i2) = 1: XYi(XcenterN, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case 4: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(XˆÊ’u”i - 1, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case 5: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(Int(XˆÊ’u”i / 2), i2) = 1: XYi(XˆÊ’u”i - 1, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case 6: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(XˆÊ’u”i - 2, i2) = 1: XYi(XˆÊ’u”i - 1, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case 7: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(XcenterN, i2) = 1: XYi(XˆÊ’u”i - 2, i2) = 1: XYi(XˆÊ’u”i - 1, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case 8: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(4, i2) = 1: XYi(XˆÊ’u”i - 3, i2) = 1: XYi(XˆÊ’u”i - 2, i2) = 1: XYi(XˆÊ’u”i - 1, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case 9: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(4, i2) = 1: XYi(XcenterN, i2) = 1:
                        XYi(XˆÊ’u”i - 3, i2) = 1: XYi(XˆÊ’u”i - 2, i2) = 1: XYi(XˆÊ’u”i - 1, i2) = 1: XYi(XˆÊ’u”i, i2) = 1
        Case Else: er ("Y_ˆÊ’u ‘Î‰‚Å‚«‚Ü‚¹‚ñ"): Stop
        End Select
        Next i2
    
    For i2 = 1 To YˆÊ’u”i
        Wda = ""
        For ii = 1 To XˆÊ’u”i
            Select Case XYi(ii, i2)
            Case 1:  Wda = Wda + F¶(F9(XˆÊ’ui(ii)) + "," + F9(-YˆÊ’ui(i2)), 17) + " "
            Case Else: Wda = Wda + Space(18)
            End Select
            Next ii
        Lm = Lm + 1: Šî‘bData(Lm) = Wda
        Next i2
    End Sub
