Attribute VB_Name = "橋脚_Data変換"
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　橋脚Data変換                                  　　　　　　　　　　　　　　　  　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃           2003.09.17                                  　　　　　　　　　　　　　　　　　　   　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'　橋脚Data変換

Option Explicit

      Dim 作図File_s As String
      Dim 作図変換File_s As String


      '[[[ 既存 橋脚Data ]]]
      Dim E_SData(200) As String, E_SDi As Integer
      Dim E_杭Data(200) As String, E_杭Di As Integer
      Dim E_基礎Data(200) As String, E_基礎Di As Integer
      Dim E_柱Data(200) As String, E_柱Di As Integer
      Dim E_StoperData(200) As String, E_StoperDi As Integer
      Dim E_踏座Data(200) As String, E_踏座Di As Integer
      Dim E_梁Data(200) As String, E_梁Di As Integer
      Dim E_図設定Data(1000) As String, E_図設定Di As Integer


      '[[[ 新規 橋脚Data ]]]
      Dim 杭Data(200) As String, 杭Di As Integer
      Dim 基礎Data(200) As String, 基礎Di As Integer
      Dim 柱Data(200) As String, 柱Di As Integer
      Dim StoperData(200) As String, StoperDi As Integer
      Dim 踏座Data(200) As String, 踏座Di As Integer
      Dim 梁Data(200) As String, 梁Di As Integer
      Dim 図設定Data(1000) As String, 図設定Di As Integer


Sub 橋脚作図実行()
     Dim ii As Integer
     
     Call 橋脚Data変換
     Call 橋脚Data図設定
     
     作図File_s = Data_dsk$ + "Text.dat"
     
     Open 作図File_s For Output As #31
     
     '[[[  Text Data 作成 ]]]
     Print #31, "//橋脚Data"
     For ii = 1 To 杭Di:     Print #31, Text_変換s(杭Data(ii)):  Next ii
     For ii = 1 To 基礎Di:   Print #31, Text_変換s(基礎Data(ii)):  Next ii
     For ii = 1 To 柱Di:     Print #31, Text_変換s(柱Data(ii)):  Next ii
     For ii = 1 To StoperDi: Print #31, Text_変換s(StoperData(ii)):  Next ii
     For ii = 1 To 踏座Di:   Print #31, Text_変換s(踏座Data(ii)):  Next ii
     For ii = 1 To 梁Di:     Print #31, Text_変換s(梁Data(ii)):  Next ii
     For ii = 1 To 図設定Di: Print #31, Text_変換s(図設定Data(ii)):  Next ii
  
     Close #31

    Call 橋脚図化_出力(作図File_s)

    
     
     
     
     '[[[  Text_2 Data 作成 ]]]
     Call Read_既存_橋脚Data
     作図変換File_s = Data_dsk$ + "Text_2.dat"
     
     Open 作図変換File_s For Output As #31
     
     Select Case E_SDi
     Case 0
            Print #31, "//橋脚Data"
            For ii = 1 To 杭Di:     Print #31, Text_変換s(杭Data(ii)):  Next ii
            For ii = 1 To 基礎Di:   Print #31, Text_変換s(基礎Data(ii)):  Next ii
            For ii = 1 To 柱Di:     Print #31, Text_変換s(柱Data(ii)):  Next ii
            For ii = 1 To StoperDi: Print #31, Text_変換s(StoperData(ii)):  Next ii
            For ii = 1 To 踏座Di:   Print #31, Text_変換s(踏座Data(ii)):  Next ii
            For ii = 1 To 梁Di:     Print #31, Text_変換s(梁Data(ii)):  Next ii
            For ii = 1 To 図設定Di: Print #31, Text_変換s(図設定Data(ii)):  Next ii
     
     Case Else
     
            For ii = 1 To E_SDi:      Print #31, Text_変換s(E_SData(ii)):  Next ii
     
     
            For ii = 1 To E_杭Di:     Print #31, Text_変換s(E_杭Data(ii)):  Next ii
                If pUpdate(5) = 1 Then
                    For ii = 1 To 杭Di: Print #31, Text_変換s("'*  " + 杭Data(ii)): Next ii
                    End If
     
            For ii = 1 To E_基礎Di:   Print #31, Text_変換s(E_基礎Data(ii)):  Next ii
                If pUpdate(4) = 1 Then
                    For ii = 1 To 基礎Di: Print #31, Text_変換s("'*  " + 基礎Data(ii)): Next ii
                    End If
     
            For ii = 1 To E_柱Di:     Print #31, Text_変換s(E_柱Data(ii)):  Next ii
                If pUpdate(3) = 1 Then
                     For ii = 1 To 柱Di: Print #31, Text_変換s("'*  " + 柱Data(ii)): Next ii
                     End If
     
            For ii = 1 To E_StoperDi: Print #31, Text_変換s(E_StoperData(ii)):  Next ii
                If pUpdate(2) = 1 Then
                    For ii = 1 To StoperDi: Print #31, Text_変換s("'*  " + StoperData(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_踏座Di:   Print #31, Text_変換s(E_踏座Data(ii)):  Next ii
                If pUpdate(2) = 1 Then
                    For ii = 1 To 踏座Di: Print #31, Text_変換s("'*  " + 踏座Data(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_梁Di:     Print #31, Text_変換s(E_梁Data(ii)):  Next ii
                If pUpdate(1) = 1 Then
                    For ii = 1 To 梁Di: Print #31, Text_変換s("'*  " + 梁Data(ii)): Next ii
                    End If
     
     
            For ii = 1 To E_図設定Di: Print #31, Text_変換s(E_図設定Data(ii)):  Next ii
  
     End Select
     Close #31
    
    
   ' Call 橋脚Data変更
    
    End Sub

Private Function Text_変換s(ByVal Da As String) As String
     Dim D2s As String
     Da = Trim(Da)
     D2s = Mid(Da, 1, 2)
     Select Case D2s
     Case ""
     Case "'┌": Da = cr + cr + cr + Da
     Case "'│", "'└"
     Case "'[": Da = cr + Space(5) + Da
     Case "' ": Da = Space(15) + Da
     Case "'*": Da = Space(15) + Da
     Case "'?": Da = Space(15) + Da
     Case "'e": Da = Space(15) + Da
     Case "  "
     Case Else: Da = Space(7) + Da
     End Select
     Text_変換s = Da
     End Function

Sub 橋脚Data変更()
      ' 橋脚図化.dat の変更
      Dim Fn1 As String, Fn2 As String, Fn3 As String
    
      
      Fn1 = 作図変換File_s ' 作成変換File
      Fn2 = Data_dsk$ + 橋脚_Data名$ + ".dat"  ' 橋脚図化.dat
      Fn3 = Data_dsk$ + 橋脚_Data名$ + ".ba2"  ' 橋脚図化.ba2

     If Dir(Fn1) = "" Then er ("Data の 変換 ができません " + cr + "作図開始を実行してください  "): Exit Sub
      
      If Dir(Fn3) <> "" Then Kill Fn3
      If Dir(Fn2) <> "" Then Name Fn2 As Fn3
      
      If Dir(Fn1) <> "" Then Name Fn1 As Fn2
    
     er ("橋脚Data変更 ok")
    
    End Sub


Private Sub Read_既存_橋脚Data()
     Dim ni As Integer, ni2 As Integer
     Dim Da As String, Da2 As String, Fname1s As String
     Dim 項目s As String, D2s As String
     
     
     E_SDi = 0
     項目s = "S": E_杭Di = 0: E_基礎Di = 0: E_StoperDi = 0: E_踏座Di = 0: E_梁Di = 0: E_図設定Di = 0
     

     Fname1s = Data_dsk$ + 橋脚_Data名$ + ".dat"
     
     If Dir(Fname1s) = "" Then Exit Sub
     
     Open Fname1s For Input As #30
     Do: If EOF(30) Then Exit Do
          Line Input #30, Da
          D2s = Mid(Trim(Da), 1, 2)
          Select Case D2s
          Case "'┌"
                   Do
                       If EOF(30) Then Da2 = "■ END" Else Line Input #30, Da2
                        ni = InStr(Da2, "■")
                       If ni > 1 Then
                            D2s = Trim(Mid(Da2, ni + 1))
                            ni = InStr(D2s, " "): If ni > 0 Then D2s = Mid(D2s, 1, ni - 1)
                            Exit Do
                            End If
                       Loop
                  Select Case D2s
                  Case "杭":            E_杭Data(1) = Da: E_杭Data(2) = Da2: E_杭Di = 2: 項目s = "杭"
                  Case "基礎":          E_基礎Data(1) = Da: E_基礎Data(2) = Da2: E_基礎Di = 2: 項目s = "基礎"
                  Case "柱":            E_柱Data(1) = Da: E_柱Data(2) = Da2: E_柱Di = 2: 項目s = "柱"
                  Case "ｽﾄｯﾊﾟ":         E_StoperData(1) = Da: E_StoperData(2) = Da2: E_StoperDi = 2: 項目s = "Stoper"
                  Case "沓座", "踏座":  E_踏座Data(1) = Da: E_踏座Data(2) = Da2: E_踏座Di = 2: 項目s = "踏座"
                  Case "梁":            E_梁Data(1) = Da: E_梁Data(2) = Da2: E_梁Di = 2: 項目s = "梁"
                  Case "橋脚図":        E_図設定Data(1) = Da: E_図設定Data(2) = Da2: E_図設定Di = 2: 項目s = "図設定"
                  Case "END": Exit Do
                  Case Else:   'Stop
                              Exit Do
                  End Select
          
          
          Case Else
                 Select Case 項目s
                 Case "S":       E_SDi = E_SDi + 1:            E_SData(E_SDi) = Da
                 Case "杭":      E_杭Di = E_杭Di + 1:          E_杭Data(E_杭Di) = Da
                 Case "基礎":    E_基礎Di = E_基礎Di + 1:      E_基礎Data(E_基礎Di) = Da
                 Case "柱":      E_柱Di = E_柱Di + 1:          E_柱Data(E_柱Di) = Da
                 Case "Stoper":  E_StoperDi = E_StoperDi + 1:  E_StoperData(E_StoperDi) = Da
                 Case "踏座":    E_踏座Di = E_踏座Di + 1:      E_踏座Data(E_踏座Di) = Da
                 Case "梁":      E_梁Di = E_梁Di + 1:          E_梁Data(E_梁Di) = Da
                 Case "図設定":  E_図設定Di = E_図設定Di + 1:  E_図設定Data(E_図設定Di) = Da
                 End Select
          
          
          
          End Select
      
      
      
      
      
     Loop
     Close #30
     
     
     
    End Sub


Private Sub 橋脚Data変換()
    Dim ii As Integer, i2 As Integer, ni As Integer, n1 As Integer, n2 As Integer
    Dim Wda As String, D1s As String, D2s As String, D3s As String, D4s As String
    Dim Di(300) As Single

'┌────────────────────────────────────────────────────────────┐
'│ ■ 杭                                                                                                                  │
'└────────────────────────────────────────────────────────────┘
      Lm = 0
      Lm = Lm + 1: 杭Data(Lm) = "'┌────────────────────────────────────────────────────────────┐"
      Lm = Lm + 1: 杭Data(Lm) = "'│ ■ 杭                                                                                                                  │"
      Lm = Lm + 1: 杭Data(Lm) = "'└────────────────────────────────────────────────────────────┘"
      Lm = Lm + 1: 杭Data(Lm) = ".杭"
      Lm = Lm + 1: 杭Data(Lm) = "D=" + F9(pKuikei)
      Lm = Lm + 1: 杭Data(Lm) = "L=" + F9(pKuinaga)
      
      Lm = Lm + 1: 杭Data(Lm) = "'[[[ S ｽﾍﾟｰｻｰ筋 です  ]]]"
                       Lm = Lm + 1: 杭Data(Lm) = "'     箇所数-鉄筋-材種       exp  42-φ13-SR235"
                       Lm = Lm + 1: 杭Data(Lm) = "' n    : ｽﾍﾟｰｻｰ筋の 本数です      pkuispesa"
                       Lm = Lm + 1: 杭Data(Lm) = "' L    : ｽﾍﾟｰｻｰ筋の形状(長さ)です   長さ は下から上の順番です"
                       Lm = Lm + 1: 杭Data(Lm) = "' H    : ｽﾍﾟｰｻｰ筋の 高さです"
                       Lm = Lm + 1: 杭Data(Lm) = "' @    : ｽﾍﾟｰｻｰ筋の ﾋﾟｯﾁです"
                       Lm = Lm + 1: 杭Data(Lm) = "'exp     S=42-φ13-SR235_n6_L50+95+95+50_H70_@600+5700+5700+5700+5700+5700+5700_SR235           ' n ｽﾍﾟｰｻｰ箇所=6   L は下から上"
           D1s = "_L50+95+95+50_H70"
           Wda = pKuiKumitateW(2)
           Call SP_Data個数i(Wda, n1, Di)
           D2s = "_@" + F_Moj_s1(n1, Di)
           D3s = "_SR235"
      
           Lm = Lm + 1: 杭Data(Lm) = "S=" + f0(n1 * pKuiSpesaN) + "-φ" + f0(pKuiKumiDai(2)) + "-SR235_n" + f0(pKuiSpesaN) + D1s + D2s + D3s


          
      Lm = Lm + 1: 杭Data(Lm) = "'[[[ K は 杭主筋 です  ]]]"
                       Lm = Lm + 1: 杭Data(Lm) = "' K    : 被りの 主筋位置です"
                       Lm = Lm + 1: 杭Data(Lm) = "' A    : 基礎内のｱﾝｶｰ長さです"
                       Lm = Lm + 1: 杭Data(Lm) = "' L    : 鉄筋長さです  長さ は上から下の順番です"
                       Lm = Lm + 1: 杭Data(Lm) = "'            項目 L____    ? W:ｶﾞｽ圧接   K:機械継手   J: Joint長さです  exp +J1240+"
                       Lm = Lm + 1: 杭Data(Lm) = "' SD   : 材種s exp SD390"


                       Lm = Lm + 1: 杭Data(Lm) = "'exp  K=14-D32_K156_A1220_L12000+K+12000+K+10000+J1240+6360_SD390         '主筋"
                       Lm = Lm + 1: 杭Data(Lm) = "'exp  K=14-D32_K156_A1220_L11500+K+10000+K+10000+K+3800_SD390             '主筋"
                       Lm = Lm + 1: 杭Data(Lm) = "'exp  K=12-D29-D25_A1220_K156_L10000+J2000+4620_SD390                     '主筋   主筋径が異なる場合"

           Dim 杭主筋被りs As String, 杭主筋AnchorLs As String
           Dim 杭主筋純被り As Single, 杭主筋芯被り As Single
           Dim 杭主筋種類数i As Integer
           Dim 杭主筋n(5) As Integer, 杭主筋径s(5) As String, 杭主筋Ls(5) As String, 杭主筋継手s(5) As String
               杭主筋種類数i = 0
               杭主筋純被り = pKuiKaburi
               杭主筋芯被り = pKuiKaburi0
               杭主筋被りs = "_K" + F9(pKuiKaburi0)
               杭主筋AnchorLs = "_A" + F9(pKuiTouNaga)
           For ii = 1 To 2
              If pKuiJiku(ii, 2) > 0 Then 杭主筋種類数i = 杭主筋種類数i + 1
           
              杭主筋径s(ii) = "": 杭主筋Ls(ii) = ""
              For i2 = 1 To 13 Step 3: If pKuiJiku(ii, i2) = 0 Then Exit For
                 杭主筋径s(ii) = 杭主筋径s(ii) + "-D" + f0(pKuiJiku(ii, i2))
                 杭主筋Ls(ii) = 杭主筋Ls(ii) + "+" + F9(pKuiJiku(ii, i2 + 1))
                 Select Case pKuiJiku(ii, i2 + 2)
                 Case -1:  杭主筋Ls(ii) = 杭主筋Ls(ii) + "+K"
                 Case -2:  杭主筋Ls(ii) = 杭主筋Ls(ii) + "+W"
                 Case Is > 0: 杭主筋Ls(ii) = 杭主筋Ls(ii) + "+J" + F9(pKuiJiku(ii, i2 + 2))
                 Case Else
                 End Select
                 Next i2
              Next ii

           If 杭主筋種類数i = 0 Then er ("杭主筋種類数=0"): Stop
           For ii = 1 To 2
              If pKuiJiku(ii, 2) = 0 Then Exit For
              杭主筋n(ii) = pKuiHon / 杭主筋種類数i
              Lm = Lm + 1
              杭Data(Lm) = "K=" + f0(杭主筋n(ii)) + 杭主筋径s(ii) + 杭主筋被りs + 杭主筋AnchorLs + "_L" + Mid(杭主筋Ls(ii), 2) + "_SD390"
              Next ii



          Lm = Lm + 1: 杭Data(Lm) = "'[[[ HOOP は ﾌｰﾌﾟ鉄筋 です  ]]]   一般ﾌｰﾌﾟは  K03 から"
                       Lm = Lm + 1: 杭Data(Lm) = "' Z    : ﾌｰﾌﾟの ｽﾀｰﾄ位置です(基礎下端から)    最初のﾌｰﾌﾟのみ必要です"
                       Lm = Lm + 1: 杭Data(Lm) = "' D    : 鉄筋径"
                       Lm = Lm + 1: 杭Data(Lm) = "' 径   : ﾌｰﾌﾟの 直径です"
                       Lm = Lm + 1: 杭Data(Lm) = "' @    : ﾌｰﾌﾟの ﾋﾟｯﾁです   exp @3x200+4x125+48x125"
                       Lm = Lm + 1: 杭Data(Lm) = "' SD   : 材種"


                       Lm = Lm + 1: 杭Data(Lm) = "'exp   HOOP=Z-1100_D22_径1242_@3x200+4x125+48x125_SD390            ' ｽﾀｰﾄ位置_ﾌｰﾌﾟ鉄筋_直径_ﾋﾟｯﾁ"
                       Lm = Lm + 1: 杭Data(Lm) = "'exp   HOOP=D19_径1239_@56x150_SD390                "

           Dim ΣHoop数i As Integer, ΣHoop位置i(2000) As Single
           Dim Hoop種類数i As Integer, Hoop鉄筋径i As Single
           Dim HoopStart位置i As Single, HoopStart位置s As String, Hoop直径s(50) As String
           Dim Hoop鉄筋径s(50) As String
           Dim HoopPits(50) As String
           
           HoopStart位置i = pKuiStr(1, 2) * pKuiStr(1, 3) + pKuiStr(2, 2) * pKuiStr(2, 3)
           HoopStart位置s = "Z" + F9(-HoopStart位置i) + "_"
           ΣHoop数i = 1: ΣHoop位置i(1) = HoopStart位置i
           Hoop種類数i = 0:  Hoop鉄筋径i = 0
           For ii = 1 To 15: If pKuiStr(ii, 1) = 0 Then Exit For
           
               If Hoop鉄筋径i <> pKuiStr(ii, 1) Then
                    Hoop種類数i = Hoop種類数i + 1: Hoop鉄筋径i = pKuiStr(ii, 1)
                    Hoop鉄筋径s(Hoop種類数i) = "D" + f0(Hoop鉄筋径i): HoopPits(Hoop種類数i) = ""
                    End If
               HoopPits(Hoop種類数i) = HoopPits(Hoop種類数i) + "+" + f0(pKuiStr(ii, 2)) + "x" + F9(pKuiStr(ii, 3))
               For i2 = 1 To pKuiStr(ii, 2)
                    ΣHoop数i = ΣHoop数i + 1
                    ΣHoop位置i(ΣHoop数i) = ΣHoop位置i(ΣHoop数i - 1) + pKuiStr(ii, 3)
                    Next i2
               Next ii

           If Hoop種類数i = 0 Then er ("Hoop種類数=0"): Stop

           For ii = 1 To Hoop種類数i
                Hoop直径s(ii) = "_径" + F9(pKuikei - 2 * 杭主筋純被り + Val(Mid(Hoop鉄筋径s(ii), 2)))
                Lm = Lm + 1:  杭Data(Lm) = "HOOP=" + HoopStart位置s + Hoop鉄筋径s(ii) + Hoop直径s(ii) + "_@" + Mid(HoopPits(ii), 2) + "_SD390"
                HoopStart位置s = ""
                Next ii



           Lm = Lm + 1: 杭Data(Lm) = "'[[[ 組立筋 ]]]"
                         Lm = Lm + 1: 杭Data(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: 杭Data(Lm) = "' SD   : 材種s"
                         Lm = Lm + 1: 杭Data(Lm) = "' 径   : ﾌｰﾌﾟの 直径です"
                         Lm = Lm + 1: 杭Data(Lm) = "' 位置   exp 12_32_52  位置(何番目)"

                        Lm = Lm + 1: 杭Data(Lm) = "'exp  組立筋=D25_SD390_径1245_12_32_52_69_86_99_112   "

           Dim 組立筋径s As String, 組立筋直径s As String, 組立筋位置s As String
                組立筋径s = "D" + f0(pKuiKumiDai(1))
                組立筋直径s = "_径" + F9(pKuikei - 2 * 杭主筋純被り + pKuiKumiDai(1))
                組立筋位置s = ""

           D1s = pKuiKumitateW(1):     Call SP_Data個数i(D1s, n1, Di): Di(0) = 0 ' D1s="3150+2550x6+2900+3000+2800+2600+2800"
               For ii = 1 To n1: Di(ii) = Di(ii - 1) + Di(ii):   Next ii
               For ii = 1 To n1: n2 = Hoop_位置(Di(ii), ΣHoop数i, ΣHoop位置i)
                   組立筋位置s = 組立筋位置s + "_" + f0(n2)
                   Next ii
              
              Lm = Lm + 1:  杭Data(Lm) = "組立筋=" + 組立筋径s + 組立筋直径s + 組立筋位置s + "_SD390"

          Lm = Lm + 1: 杭Data(Lm) = "'[[[ HOOP底筋 ]]]"
                         Lm = Lm + 1: 杭Data(Lm) = "' n"
                         Lm = Lm + 1: 杭Data(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: 杭Data(Lm) = "' SD   : 材種"
                         Lm = Lm + 1: 杭Data(Lm) = "' L    : 鉄筋長さです"
                         Lm = Lm + 1: 杭Data(Lm) = "'exp      HOOP底=8-D25_L837_SD390    "
              Lm = Lm + 1:  杭Data(Lm) = "HOOP底=8-D25_L837_SD390"
           杭Di = Lm

     
'┌────────────────────────────────────────────────────────────┐
'│ ■ 基礎                                                                                                                │
'└────────────────────────────────────────────────────────────┘
        Dim 基礎_上純被り As Single, 基礎_下純被り As Single, 基礎_横純被り As Single
        基礎_上純被り = pKisoKaburi(1)
        基礎_下純被り = pKisoKaburi(2)
        基礎_横純被り = pKisoKaburi(3)
        
        Dim 基礎_BX As Single, 基礎_BY As Single, 基礎_H1 As Single, 基礎_H2 As Single
        基礎_BX = pW(7)
        基礎_BY = pB(7) + pB(8) + pB(9)
        基礎_H1 = pH(6): 基礎_H2 = pH(5)
        
        Lm = 0
        
        Lm = Lm + 1: 基礎Data(Lm) = "'┌────────────────────────────────────────────────────────────┐"
        Lm = Lm + 1: 基礎Data(Lm) = "'│ ■ 基礎                                                                                                                │"
        Lm = Lm + 1: 基礎Data(Lm) = "'└────────────────────────────────────────────────────────────┘"
        Lm = Lm + 1: 基礎Data(Lm) = ".基礎"
    'Lm = Lm + 1: 基礎Data(Lm) = "errck" '***
        Lm = Lm + 1: 基礎Data(Lm) = "BX=" + F9(基礎_BX) '         BX=8500                   '*  BX=   :   基礎 X方向幅です   PW(7)                exp  BX=5250+5250
        Lm = Lm + 1: 基礎Data(Lm) = "BY=" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '         BY=2900+2200+2900         '*  BY=   :   基礎 Y方向幅です   PB(7)+PB(8)+PB(9)    exp  BY=3650+1600+1600+3650
        Lm = Lm + 1: 基礎Data(Lm) = "H=" + F9(基礎_H1) + "+" + F9(基礎_H2) '         H=2000+500              '*  H=    :   基礎 高さです      PH(6)+PH(5)          exp  H=2000+500

        Lm = Lm + 1: 基礎Data(Lm) = "捨ｺﾝ=100" '         捨ｺﾝ=100                '? 捨ｺﾝ=  :  基礎 捨ｺﾝの厚さです                      exp  捨ｺﾝ=100

        Lm = Lm + 1: 基礎Data(Lm) = "'[[[ 杭位置 です  ]]]         '*?  X,Y  :  ｾﾝﾀｰからの距離      pkuihaic1()    pkuihaic2()"
                   '    杭位置
                   '      -3750,3750     0,3750     3750,3750
                   '      -3750,0                   3750,0
                   '      -3750,-3750    0,-3750    3750,-3750

                Lm = Lm + 1: 基礎Data(Lm) = "杭位置"
                Call 杭_位置(基礎Data)



        Lm = Lm + 1: 基礎Data(Lm) = "'[[[ Fn は Y方向鉄筋 です  ]]]"
                         Lm = Lm + 1: 基礎Data(Lm) = "' D    : 鉄筋径     exp D32"
                         Lm = Lm + 1: 基礎Data(Lm) = "' K    : 被りの 鉄筋位置です  純被ﾘ"
                         Lm = Lm + 1: 基礎Data(Lm) = "' @    : 鉄筋ﾋﾟｯﾁです         exp @95+155+80x125+155"
                         Lm = Lm + 1: 基礎Data(Lm) = "' B    : 鉄筋の長さです       Wは ガス圧接位置です"
                         Lm = Lm + 1: 基礎Data(Lm) = "' H    : 鉄筋の高さです"

                         Lm = Lm + 1: 基礎Data(Lm) = "'exp  F1=D32_K95_@95+155+80x125+155_BF+10014+F_SD390                          'Y 底鉄筋  @ﾋﾟｯﾁは側面から"
                         Lm = Lm + 1: 基礎Data(Lm) = "'exp  F2=D32_K95_@95+155+80x125+155_B3563+1092+W+2092+3563_H2328+483_SD390    'Y 上鉄筋  @ﾋﾟｯﾁは側面から"
                         Lm = Lm + 1: 基礎Data(Lm) = "'exp  F3=D19_K69.5_@200+9x200_B10361_H190_SD390                               'Y 側鉄筋  @ﾋﾟｯﾁは下から"

           Dim 基礎鉄筋径s As String, 基礎被りs As String, 基礎鉄筋Pits As String, 基礎鉄筋Bs As String, 基礎鉄筋Hs As String
           Dim 基礎鉄筋の長さi As Single, 基礎鉄筋の高さi As Single

        Lm = Lm + 1: 基礎Data(Lm) = "'<<< Y 底鉄筋 >>>"  ' F1
                    基礎鉄筋径s = "D" + f0(pKisoDai(3))
                    基礎被りs = "_K" + F9(基礎_下純被り + pKisoDai(3) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(3))
                    基礎鉄筋の長さi = 基礎_BY - 2 * 基礎_横純被り '10014 '**********
                    基礎鉄筋Bs = "_BF+" + F9(基礎鉄筋の長さi) + "+F"
                    Lm = Lm + 1: 基礎Data(Lm) = "F1=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Pits + 基礎鉄筋Bs + "_SD390"

        Lm = Lm + 1: 基礎Data(Lm) = "'<<< Y 上鉄筋 >>>"   ' F2
                    基礎鉄筋径s = "D" + f0(pKisoDai(1))
                    基礎被りs = "_K" + F9(基礎_上純被り + pKisoDai(1) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(1))
                      '基礎鉄筋の長さi = 10014 '**********
                    基礎鉄筋Bs = "_B" + F9(基礎_BY - 2 * 基礎_横純被り - pKisoDai(1))
                   ' If 基礎_H2 > 0 Then 基礎鉄筋Bs = "_B3563+1092+W+2092+3563" '***************
                    If 基礎_H2 > 0 Then 基礎鉄筋Bs = "_B" + F9(pB(7)) + "+" + F9(pB(8)) + "+" + F9(pB(9)) '3563+1092+W+2092+3563" '***************
                    基礎鉄筋の高さi = 基礎_H1 - 基礎_上純被り - pKisoDai(1) '2320 '**************
                    基礎鉄筋Hs = "_H" + F9(基礎鉄筋の高さi)
                    Lm = Lm + 1: 基礎Data(Lm) = "F2=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Pits + 基礎鉄筋Bs + 基礎鉄筋Hs + "_SD390"

        Lm = Lm + 1: 基礎Data(Lm) = "'<<< Y 側鉄筋 >>>"  ' F3
                    基礎鉄筋径s = "D" + f0(pKisoDai(9))
                    基礎被りs = "_K" + F9(基礎_横純被り + pKisoDai(9) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(9))
                    基礎鉄筋の長さi = 基礎_BY - 2 * 基礎_横純被り - pKisoDai(9) '10361 '**********
                    基礎鉄筋Bs = "_B" + F9(基礎鉄筋の長さi)
                    基礎鉄筋の高さi = 30 * pKisoDai(9)
                    基礎鉄筋Hs = "_H" + F9(基礎鉄筋の高さi)
                    Lm = Lm + 1: 基礎Data(Lm) = "F3=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Pits + 基礎鉄筋Bs + 基礎鉄筋Hs + "_SD390"


        Lm = Lm + 1: 基礎Data(Lm) = "'[[[ F1n は X方向鉄筋 です  ]]]"
                         Lm = Lm + 1: 基礎Data(Lm) = "' D    : 鉄筋径          exp D32"
                         Lm = Lm + 1: 基礎Data(Lm) = "' K    : 被りの 鉄筋位置です  純被ﾘ"
                         Lm = Lm + 1: 基礎Data(Lm) = "' @    : 鉄筋ﾋﾟｯﾁです         exp @127+123+80x125+123"
                         Lm = Lm + 1: 基礎Data(Lm) = "' B    : 鉄筋の長さです       Wは ガス圧接位置です"
                         Lm = Lm + 1: 基礎Data(Lm) = "' H    : 鉄筋の高さです"

                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   F11=D32_K127_@127+123+80x125+123_BF+10014+F_SD390              'X 底鉄筋  @ﾋﾟｯﾁは側面から"
                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   F12=D32_K127_@127+123+80x125+123_B5655+W+4655_H2746_SD390      'X 上鉄筋  @ﾋﾟｯﾁは側面から"
                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   F13=D32_K127_B5655+W+4655_H2746〜2246_SD390                    'X 上鉄筋  @ﾋﾟｯﾁは F12 で定義"
                         Lm = Lm + 1: 基礎Data(Lm) = "'***        F13=D32_K127_B5655+W+4655_HF+2746〜2246_SD390             'X 上鉄筋  @ﾋﾟｯﾁは F12 で定義"
                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   F14=D19_K69.5_@300+8x200_B10361_H190_SD390                     'X 側鉄筋  @ﾋﾟｯﾁは下から"


        Lm = Lm + 1: 基礎Data(Lm) = "'<<< X 底鉄筋 >>>"  ' F11
                    基礎鉄筋径s = "D" + f0(pKisoDai(7))
                    基礎被りs = "_K" + F9(基礎_下純被り + pKisoDai(7) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(7))
                      基礎鉄筋の長さi = 基礎_BX - 2 * 基礎_横純被り '10001 '**********
                    基礎鉄筋Bs = "_BF+" + F9(基礎鉄筋の長さi) + "+F"
                    Lm = Lm + 1: 基礎Data(Lm) = "F11=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Pits + 基礎鉄筋Bs + "_SD390"

        Lm = Lm + 1: 基礎Data(Lm) = "'<<< X 上鉄筋 >>>"  ' F12
                    基礎鉄筋径s = "D" + f0(pKisoDai(5))
                    基礎被りs = "_K" + F9(基礎_上純被り + pKisoDai(5) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(5))
                    基礎鉄筋の長さi = 基礎_BX - 2 * 基礎_横純被り - pKisoDai(5) '10014 '**********
                   ' 基礎鉄筋Bs = "_B5655+W+4655" '***************
                    基礎鉄筋Bs = "_B" + F9(基礎鉄筋の長さi) '5655+W+4655" '***************
                    基礎鉄筋の高さi = 基礎_H1 - 基礎_上純被り - pKisoDai(5) / 2 '2746 '**************
                    基礎鉄筋Hs = "_H" + F9(基礎鉄筋の高さi)
                    Lm = Lm + 1: 基礎Data(Lm) = "F12=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Pits + 基礎鉄筋Bs + 基礎鉄筋Hs + "_SD390"

        Lm = Lm + 1: 基礎Data(Lm) = "'<<< X 上鉄筋 2 >>>" ' F13    F12 より作成
                    基礎鉄筋径s = "D" + f0(pKisoDai(5))
                    基礎被りs = "_K" + F9(基礎_上純被り + pKisoDai(5) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(5))
                      '基礎鉄筋の長さi = 10014 '**********
                    基礎鉄筋の長さi = 基礎_BX - 2 * 基礎_横純被り - pKisoDai(5)
                   ' 基礎鉄筋Bs = "_B5655+W+4655" '***************
                    
                    基礎鉄筋Bs = "_B" + F9(基礎鉄筋の長さi)
                      '基礎鉄筋の高さi = 2746 '**************
                    基礎鉄筋Hs = "_H2746〜2246" '***********
                    Lm = Lm + 1: 基礎Data(Lm) = "F13=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Bs + 基礎鉄筋Hs + "_SD390"

        Lm = Lm + 1: 基礎Data(Lm) = "'<<< X 側鉄筋 >>>"  ' F14
                    基礎鉄筋径s = "D" + f0(pKisoDai(9))
                    基礎被りs = "_K" + F9(基礎_横純被り + pKisoDai(9) / 2)
                    基礎鉄筋Pits = "_@" + Replace式s(pKisoPictW(9))
                    基礎鉄筋の長さi = 基礎_BX - 2 * 基礎_横純被り - pKisoDai(9) '10361 '**********
                    基礎鉄筋Bs = "_B" + F9(基礎鉄筋の長さi)
                    基礎鉄筋の高さi = 30 * pKisoDai(9)
                    基礎鉄筋Hs = "_H" + F9(基礎鉄筋の高さi)
                    Lm = Lm + 1: 基礎Data(Lm) = "F14=" + 基礎鉄筋径s + 基礎被りs + 基礎鉄筋Pits + 基礎鉄筋Bs + 基礎鉄筋Hs + "_SD390"


        Lm = Lm + 1: 基礎Data(Lm) = "'[[[ fn は 縦鉄筋 です ｽﾀｰﾗｯﾌﾟ ]]]"
                         Lm = Lm + 1: 基礎Data(Lm) = "' n    : 鉄筋本数"
                         Lm = Lm + 1: 基礎Data(Lm) = "' D    : 鉄筋径     exp D19"

                         Lm = Lm + 1: 基礎Data(Lm) = "' K    : 被りの 鉄筋位置です"
                         Lm = Lm + 1: 基礎Data(Lm) = "' @    : 鉄筋ﾋﾟｯﾁです"
                         Lm = Lm + 1: 基礎Data(Lm) = "' B    : 鉄筋の長さです             Wは ガス圧接位置です"
                         Lm = Lm + 1: 基礎Data(Lm) = "' H    : 鉄筋の高さです"
                         Lm = Lm + 1: 基礎Data(Lm) = "' SD   : 材種"


                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   f1=314-D19_K69_B801_H2804+F_SD390                     '縦鉄筋"
                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   f2=314-D19_K69_B801_H2804〜2304+F_SD390               '縦鉄筋"

                    Lm = Lm + 1: 基礎Data(Lm) = "f1=314-D19_K69_B801_H2804+F_SD390"    '********************
                    Lm = Lm + 1: 基礎Data(Lm) = "f2=314-D19_K69_B801_H2804〜2304+F_SD390"

                         Lm = Lm + 1: 基礎Data(Lm) = "' fpit : 縦鉄筋の位置の定義 "
                         Lm = Lm + 1: 基礎Data(Lm) = "' X    : 基礎X左端からのL + Y方向鉄筋ﾋﾟｯﾁ + 間隔1 + 間隔2 + 間隔3   (間隔3は 間隔1の終端からの戻り)"
                         Lm = Lm + 1: 基礎Data(Lm) = "' Y    : 座標は 逆方向 Y9 からの定義です"

                         Lm = Lm + 1: 基礎Data(Lm) = "' @    : 基礎Y左端からの鉄筋ﾋﾟｯﾁ"

                         Lm = Lm + 1: 基礎Data(Lm) = "'exp   fpit=X375+125+6+2+2_@375+39x250_SD390              '###"

                    Lm = Lm + 1: 基礎Data(Lm) = "fpit=X375+125+6+2+2_@375+39x250_SD390" '****************
                  基礎Di = Lm


'┌────────────────────────────────────────────────────────────┐
'│ ■ 柱                                                                                                                  │
'└────────────────────────────────────────────────────────────┘
        Dim 柱_BX As Single, 柱_BY As Single, 柱_H As Single
        柱_BX = pW(6)
        柱_BY = pB(6)
        柱_H = pH(4) + pH(5) + pH(6)
        
        
        Lm = 0
        Lm = Lm + 1: 柱Data(Lm) = "'┌────────────────────────────────────────────────────────────┐"
        Lm = Lm + 1: 柱Data(Lm) = "'│ ■ 柱                                                                                                                  │"
        Lm = Lm + 1: 柱Data(Lm) = "'└────────────────────────────────────────────────────────────┘"
        Lm = Lm + 1: 柱Data(Lm) = ".柱"

        Lm = Lm + 1: 柱Data(Lm) = "BX=" + F9(柱_BX)     ' BX=5000          '*   BX=   : 柱X幅                        pw(6)
        Lm = Lm + 1: 柱Data(Lm) = "BY=" + F9(柱_BY)     ' BY=2000          '*   BY=   : 柱Y幅                        pB(6)                  exp BY=1500+1500
        Lm = Lm + 1: 柱Data(Lm) = "H=" + F9(柱_H) ' H=7800           '*   H=    : 柱高さ  基礎上 ﾖﾘ 梁下まで   pH(4)
        Lm = Lm + 1: 柱Data(Lm) = "r=0"       ' r=0 'r=250        '?   r=    : 柱r


        Lm = Lm + 1: 柱Data(Lm) = "'[[[ C は 柱主筋 です  ]]]"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : 鉄筋径     "
                         Lm = Lm + 1: 柱Data(Lm) = "' P    : 主筋の 鉄筋Start位置です  基礎下端からです"
                         Lm = Lm + 1: 柱Data(Lm) = "' K    : 被りの 鉄筋位置です "
                         Lm = Lm + 1: 柱Data(Lm) = "' L    : 鉄筋の長さです        Wは ガス圧接位置です"
                         Lm = Lm + 1: 柱Data(Lm) = "' SD   : 材種"

                         Lm = Lm + 1: 柱Data(Lm) = "'exp  C=D38_P309_K101_LF+11420+W+2200_SD390        ' 主筋1"
                         Lm = Lm + 1: 柱Data(Lm) = "'exp  C=D25_P309_K101_LF+11420+W+2200_SD390        ' 主筋2"
                         Lm = Lm + 1: 柱Data(Lm) = "'exp  C=D38_P309_K196_LF+9420+W+2300_SD390         ' 主筋3"
                         Lm = Lm + 1: 柱Data(Lm) = "'exp  C=D32_P309_K196_LF+9420+W+2300_SD390         ' 主筋4"
                      
                      Dim 柱主筋s As String, 柱主筋Start位置s As String, 柱主筋被りs As String, 柱主筋の長さs As String
                      柱主筋s = "D" + f0(pkuitaiDai(1))
                      柱主筋Start位置s = "_P309" '***********
                      柱主筋被りs = "_K" + F9(pkuitaiKaburi(1)) ' ***************
                      柱主筋の長さs = "_LF+11420+W+2200"  '**********
                      Lm = Lm + 1: 柱Data(Lm) = "C=" + 柱主筋s + 柱主筋Start位置s + 柱主筋被りs + 柱主筋の長さs + "_SD390"
                      
                      柱主筋s = "D" + f0(pkuitaiDai(2))
                      柱主筋Start位置s = "_P309" '***********
                      柱主筋被りs = "_K" + F9(pkuitaiKaburi(1)) ' ***************
                      柱主筋の長さs = "_LF+11420+W+2200"  '**********
                      Lm = Lm + 1: 柱Data(Lm) = "C=" + 柱主筋s + 柱主筋Start位置s + 柱主筋被りs + 柱主筋の長さs + "_SD390"
                      
                         
                 '[[[ 柱主筋ﾋﾟｯﾁ ]]]
                      Lm = Lm + 1: 柱Data(Lm) = "'<<< 柱主筋ﾋﾟｯﾁ >>>"
                         Lm = Lm + 1: 柱Data(Lm) = "' Xpit :X方向のﾋﾟｯﾁです  Xpit=1段目ﾋﾟｯﾁ_2段目ﾋﾟｯﾁ"
                         Lm = Lm + 1: 柱Data(Lm) = "' Ypit :Y方向のﾋﾟｯﾁです  Ypit=1段目ﾋﾟｯﾁ_2段目ﾋﾟｯﾁ"
                         
                      Lm = Lm + 1: 柱Data(Lm) = "'exp   Xpit=250+32x125_500+28x125"
                      Lm = Lm + 1: 柱Data(Lm) = "'exp   Ypit=250+10x250"
                         
                      Dim Xpits As String, Ypits As String
                      
                      Xpits = "Xpit=" + pkuitaiPictW(1)
                           If pkuitaiPictW(2) <> "" Then Xpits = Xpits + "_" + pkuitaiPictW(2)
                      Ypits = "Ypit=" + pkuitaiPictW(3)
                           If pkuitaiPictW(4) <> "" Then Ypits = Ypits + "_" + pkuitaiPictW(4)
                         
                      Lm = Lm + 1: 柱Data(Lm) = Xpits
                      Lm = Lm + 1: 柱Data(Lm) = Ypits
                         
                 '[[[ 柱主筋配置 ]]]
                      Lm = Lm + 1: 柱Data(Lm) = "'<<< 柱主筋配置 >>>"
                         Lm = Lm + 1: 柱Data(Lm) = "' X主筋 : X方向の主筋本数です   X主筋=1段目本数_2段目本数"
                         Lm = Lm + 1: 柱Data(Lm) = "' Y主筋 : Y方向の主筋本数です   Y主筋=1段目本数_2段目本数"


                       Lm = Lm + 1: 柱Data(Lm) = "'exp  X主筋=17xC2+16xC1_15xC4+14xC3"
                       Lm = Lm + 1: 柱Data(Lm) = "'exp  Y主筋=6xC2+5xC1"
                      Dim X主筋i As Integer, Y主筋i As Integer, X主筋s As String, Y主筋s As String
                      X主筋i = FP_Data個数i(pkuitaiPictW(1))
                      X主筋s = "X主筋=" + f0(X主筋i) + "xC1"
                             If Trim(pkuitaiPictW(2)) <> "" Then X主筋s = X主筋s + "_" + f0(FP_Data個数i(pkuitaiPictW(1))) + "xC1"
                      
                      Y主筋i = FP_Data個数i(pkuitaiPictW(3))
                      Y主筋s = "Y主筋=" + f0(Y主筋i) + "xC2"
                             If Trim(pkuitaiPictW(4)) <> "" Then Y主筋s = Y主筋s + "_" + f0(FP_Data個数i(pkuitaiPictW(4))) + "xC2"
                      Lm = Lm + 1: 柱Data(Lm) = X主筋s
                      Lm = Lm + 1: 柱Data(Lm) = Y主筋s
                             
                 '[[[ 角主筋 ]]]
                       Lm = Lm + 1: 柱Data(Lm) = "'<<< 角主筋 >>>"
                       Lm = Lm + 1: 柱Data(Lm) = "'  角主筋=C1                            '?  角主筋=   : ｺｰﾅｰの主筋本数です"
                       Lm = Lm + 1: 柱Data(Lm) = "'  角主筋XY=145_180                     '?  角主筋XY= : ｺｰﾅｰの主筋の座標です"


                 '[[[ CK は 柱梁のｺｰﾅｰ筋 ]]]
                       Lm = Lm + 1: 柱Data(Lm) = "'[[[ CK は 柱梁のｺｰﾅｰ筋 です  ]]]"
                         Lm = Lm + 1: 柱Data(Lm) = "' n    :"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: 柱Data(Lm) = "' K    : 被りの 鉄筋位置です"
                         Lm = Lm + 1: 柱Data(Lm) = "' r  は 鉄筋の開き角度です 不要"
                         Lm = Lm + 1: 柱Data(Lm) = "' L    : 直線の長さです"
                         Lm = Lm + 1: 柱Data(Lm) = "' SD   : 材種"


                         Lm = Lm + 1: 柱Data(Lm) = "'exp   CK=11-D16_K101_L480_SD390          ' ### 梁下部 補強筋"
                        Lm = Lm + 1: 柱Data(Lm) = "CK=11-D16_K101_L480_SD390                    ' ### 梁下部 補強筋"


                  '[[[ 外周ﾌｰﾌﾟ ]]]
                      Lm = Lm + 1: 柱Data(Lm) = "'[[[ c1 は 外周ﾌｰﾌﾟ です  ]]]"

                       Lm = Lm + 1: 柱Data(Lm) = "'*** ﾌｰﾌﾟ鉄筋の Joint長さは 2L1 <> L"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: 柱Data(Lm) = "' K    : 被りの 鉄筋位置です"
                         Lm = Lm + 1: 柱Data(Lm) = "' X    : ﾌｰﾌﾟ鉄筋です    BxD   Bのみの場合は曲がり無し"
                         Lm = Lm + 1: 柱Data(Lm) = "' Y    : ﾌｰﾌﾟ鉄筋です    BxD"
                         Lm = Lm + 1: 柱Data(Lm) = "' @    : ﾌｰﾌﾟ鉄筋ﾋﾟｯﾁです    @ﾋﾟｯﾁは基礎下から"
                         Lm = Lm + 1: 柱Data(Lm) = "' R    : 鉄筋の r を指定する場合 ないばあい r1 の値です   r-10  で入力 ---> r=0 となる"
                         Lm = Lm + 1: 柱Data(Lm) = "' SD   : 材種"

                         Lm = Lm + 1: 柱Data(Lm) = "'exp   c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"
                     Dim 柱Hoop筋s As String, 柱Hoop被りs As String, 柱XHoop筋s As String, 柱YHoop筋s As String, 柱HoopPits As String, 柱Hoop_r_s As String
                     
                      Lm = Lm + 1: 柱Data(Lm) = "c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150_SD390"

                    '[[[ X方向 内側ﾌｰﾌﾟ ]]]
                      Lm = Lm + 1: 柱Data(Lm) = "'[[[ c2 は X方向 内側ﾌｰﾌﾟ です  ]]]"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: 柱Data(Lm) = "' B    : ﾌｰﾌﾟ鉄筋 X方向幅です    Jは Jointがあることを示す   exp B1678+J+2677"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : ﾌｰﾌﾟ鉄筋 Y方向幅です"
                         Lm = Lm + 1: 柱Data(Lm) = "' Y    : ﾌｰﾌﾟ鉄筋 Y方向のｾﾝﾀｰ位置です   柱面からStart"
                         Lm = Lm + 1: 柱Data(Lm) = "' @    : ﾌｰﾌﾟ鉄筋ﾋﾟｯﾁです    @ﾋﾟｯﾁは下から"
                         Lm = Lm + 1: 柱Data(Lm) = "' SD   : 材種"


                         Lm = Lm + 1: 柱Data(Lm) = "'exp   c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X方向  内側 1"
                         Lm = Lm + 1: 柱Data(Lm) = "'exp   c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X方向  内側 2   ｽﾄｯﾊﾟ部  ｵﾌﾟｼｮﾝ"

                      Lm = Lm + 1: 柱Data(Lm) = "c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057_SD390    '(c3) Hoop X方向  内側 1"
                      Lm = Lm + 1: 柱Data(Lm) = "c2-2=D19_B1678+J+2677_D557_SD390                                         '(c3) Hoop X方向  内側 2   ｽﾄｯﾊﾟ部  ｵﾌﾟｼｮﾝ"



                   '[[[ Y方向 内側ﾌｰﾌﾟ ]]]
                     Lm = Lm + 1: 柱Data(Lm) = "'[[[ c3 は Y方向 内側ﾌｰﾌﾟ です  ]]]"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: 柱Data(Lm) = "' B    : ﾌｰﾌﾟ鉄筋 X方向幅です    Jは Jointがあることを示す  J* は片側のみ Joint"
                         Lm = Lm + 1: 柱Data(Lm) = "' D    : ﾌｰﾌﾟ鉄筋 Y方向幅です"
                         Lm = Lm + 1: 柱Data(Lm) = "' X    : ﾌｰﾌﾟ鉄筋 Y方向のｾﾝﾀｰ位置です   柱面からStart"
                         Lm = Lm + 1: 柱Data(Lm) = "' @    : ﾌｰﾌﾟ鉄筋ﾋﾟｯﾁです    @ﾋﾟｯﾁは下から"
                         Lm = Lm + 1: 柱Data(Lm) = "' SD   : 材種"


                         Lm = Lm + 1: 柱Data(Lm) = "'exp   c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390       ' (c5) Hoop Y方向  内側 1"
                         Lm = Lm + 1: 柱Data(Lm) = "'exp   c3-2=D19_B1059_D1712+J+1143_SD390                                        ' (c5) Hoop Y方向  内側 2 ｽﾄｯﾊﾟ部 ｵﾌﾟｼｮﾝ"

                      Lm = Lm + 1: 柱Data(Lm) = "c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143_SD390      "
                      Lm = Lm + 1: 柱Data(Lm) = "c3-2=D19_B1059_D1712+J+1143_SD390               "
           
           
           柱Di = Lm

'┌────────────────────────────────────────────────────────────┐
'│ ■ ｽﾄｯﾊﾟ                                                                                                               │
'└────────────────────────────────────────────────────────────┘
        Dim Stoperi As Integer, Stoper鉄筋本数s As String, Stoper鉄筋径s As String, Stoper被りs As String, Stoperpits As String, StoperX位置s As String, StoperY位置s As String, Stoper鉄筋Bs As String, Stoper鉄筋Hs As String
        Stoperi = 1
        Lm = 0
        Lm = Lm + 1: StoperData(Lm) = "'┌────────────────────────────────────────────────────────────┐"
        Lm = Lm + 1: StoperData(Lm) = "'│ ■ ｽﾄｯﾊﾟ                                                                                                               │"
        Lm = Lm + 1: StoperData(Lm) = "'└────────────────────────────────────────────────────────────┘"
        Lm = Lm + 1: StoperData(Lm) = ".ｽﾄｯﾊﾟ"
        Lm = Lm + 1: StoperData(Lm) = "符号=ｽﾄｯﾊﾟ1"   '     符号=ｽﾄｯﾊﾟ1
        Lm = Lm + 1: StoperData(Lm) = "箱抜=" + F9(pStop1(1, 2)) + "x" + F9(pStop1(1, 1)) + "x" + F9(pStop1(1, 4))   '    箱抜=410x410x1430

               Lm = Lm + 1: StoperData(Lm) = "'[[[ ｽﾄｯﾊﾟ  鉄筋 です  ]]]"
                         Lm = Lm + 1: StoperData(Lm) = "' n    : 鉄筋本数"
                         Lm = Lm + 1: StoperData(Lm) = "' D    : 鉄筋径"
                         Lm = Lm + 1: StoperData(Lm) = "' K    : 梁上面からの被り位置です"
                         Lm = Lm + 1: StoperData(Lm) = "' @    : 鉄筋ののﾋﾟｯﾁ"
                         Lm = Lm + 1: StoperData(Lm) = "' X    : 鉄筋の位置のずれ ｽﾄｯﾊﾟ縁からの位置 +"
                         Lm = Lm + 1: StoperData(Lm) = "' Y    : 鉄筋の位置のずれ ｽﾄｯﾊﾟ縁からの位置 +"
                         Lm = Lm + 1: StoperData(Lm) = "' B    : ｽﾄｯﾊﾟ鉄筋の長さです"
                         Lm = Lm + 1: StoperData(Lm) = "' H    : ｽﾄｯﾊﾟ鉄筋の高さです"
                         Lm = Lm + 1: StoperData(Lm) = "' SD   : 材種s"



                       Lm = Lm + 1: StoperData(Lm) = "'exp   H1=10-D19_Y150_B410_H720_@109+4x100+5x200_SD390    '   角度45°で考慮"
                       Lm = Lm + 1: StoperData(Lm) = "'exp   H2=10-D16_X150_Y150_B150_H1200_@125+4x100+5x200_SD390"

                       Lm = Lm + 1: StoperData(Lm) = "'exp   H3=D16_H1400_@200_SD390"
              
              

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H1 鉄筋 ]]]"
              Call SP_Data個数i(pStopPictW2(1), ni, Di)
              Stoper鉄筋本数s = f0(ni)
              Stoper鉄筋径s = "-D" + f0(pStop2(1, 1))
              StoperY位置s = "_Y150"
              Stoper鉄筋Bs = "_B" + F9(pStop2(1, 2))
              Stoper鉄筋Hs = "_H" + F9(pStop2(1, 3)): If pStop2(1, 3) = 0 Then Stoper鉄筋Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper鉄筋本数s + Stoper鉄筋径s + StoperY位置s + Stoper鉄筋Bs + Stoper鉄筋Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H2 鉄筋 ]]]"
              Call SP_Data個数i(pStopPictW2(2), ni, Di)
              Stoper鉄筋本数s = f0(ni)
              Stoper鉄筋径s = "-D" + f0(pStop2(2, 1))
              StoperX位置s = "_X150"
              StoperY位置s = "_Y150"
              Stoper鉄筋Bs = "_B" + F9(pStop2(2, 2))
              Stoper鉄筋Hs = "_H" + F9(pStop2(3, 3)): If pStop2(3, 3) = 0 Then Stoper鉄筋Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper鉄筋本数s + Stoper鉄筋径s + StoperX位置s + StoperY位置s + Stoper鉄筋Bs + Stoper鉄筋Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H3 鉄筋 ]]]"
              Stoper鉄筋径s = "D" + f0(pStop2(3, 1))
              Stoper鉄筋Hs = "_H" + F9(pStop2(3, 2)): If pStop2(3, 2) = 0 Then Stoper鉄筋Hs = "_H900"
              Stoperpits = "_@200"
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper鉄筋径s + Stoper鉄筋Hs + Stoperpits + "_SD390"


             If pStop1(2, 1) + pStop1(2, 4) > 0 Then
             Stoperi = 2
             
              Lm = Lm + 1: StoperData(Lm) = ""
              Lm = Lm + 1: StoperData(Lm) = ".ｽﾄｯﾊﾟ"
              Lm = Lm + 1: StoperData(Lm) = "符号=ｽﾄｯﾊﾟ2"
              Lm = Lm + 1: StoperData(Lm) = "箱抜=" + F9(pStop1(2, 2)) + "x" + F9(pStop1(2, 1)) + "x" + F9(pStop1(2, 4))   '    箱抜=410x410x1430
              Lm = Lm + 1: StoperData(Lm) = "'[[[ H1 鉄筋 ]]]"
              Call SP_Data個数i(pStopPictW2(2), ni, Di)
              Stoper鉄筋本数s = f0(ni)
              Stoper鉄筋径s = "-D" + f0(pStop3(1, 1))
              StoperY位置s = "_Y150"
              Stoper鉄筋Bs = "_B" + F9(pStop3(1, 2))
              Stoper鉄筋Hs = "_H" + F9(pStop3(1, 3)): If pStop3(1, 3) = 0 Then Stoper鉄筋Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(1)
              Lm = Lm + 1: StoperData(Lm) = "H1=" + Stoper鉄筋本数s + Stoper鉄筋径s + StoperY位置s + Stoper鉄筋Bs + Stoper鉄筋Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H2 鉄筋 ]]]"
              Call SP_Data個数i(pStopPictW2(2), ni, Di)
              Stoper鉄筋本数s = f0(ni)
              Stoper鉄筋径s = "-D" + f0(pStop3(2, 1))
              StoperX位置s = "_X150"
              StoperY位置s = "_Y150"
              Stoper鉄筋Bs = "_B" + F9(pStop3(2, 2))
              Stoper鉄筋Hs = "_H" + F9(pStop3(3, 3)): If pStop3(3, 3) = 0 Then Stoper鉄筋Hs = "_H900"
              Stoperpits = "_@" + pStopPictW2(2)
              Lm = Lm + 1: StoperData(Lm) = "H2=" + Stoper鉄筋本数s + Stoper鉄筋径s + StoperX位置s + StoperY位置s + Stoper鉄筋Bs + Stoper鉄筋Hs + Stoperpits + "_SD390"

             Lm = Lm + 1: StoperData(Lm) = "'[[[ H3 鉄筋 ]]]"
              Stoper鉄筋径s = "D" + f0(pStop3(3, 1))
              Stoper鉄筋Hs = "_H" + F9(pStop3(3, 2)): If pStop3(3, 2) = 0 Then Stoper鉄筋Hs = "_H900"
              Stoperpits = "_@200"
              Lm = Lm + 1: StoperData(Lm) = "H3=" + Stoper鉄筋径s + Stoper鉄筋Hs + Stoperpits + "_SD390"

             End If
             
             StoperDi = Lm


'┌────────────────────────────────────────────────────────────┐
'│ ■ 沓座                                                                                                                │
'└────────────────────────────────────────────────────────────┘
        Dim 踏座i As Integer, 踏座鉄筋本数s As String, 踏座鉄筋径s As String, 踏座被りs As String, 踏座pits As String, 踏座Y位置s As String, 踏座鉄筋Bs As String, 踏座鉄筋Hs As String
        
        踏座i = 1
        Lm = 0
        Lm = Lm + 1: 踏座Data(Lm) = "'┌────────────────────────────────────────────────────────────┐"
        Lm = Lm + 1: 踏座Data(Lm) = "'│ ■ 沓座                                                                                                                │"
        Lm = Lm + 1: 踏座Data(Lm) = "'└────────────────────────────────────────────────────────────┘"
        Lm = Lm + 1: 踏座Data(Lm) = ".踏座"            '踏座

                     '** S1,S2  の上下関係
                     '** S1 の位置

        Lm = Lm + 1: 踏座Data(Lm) = "符号=沓座1"
                '* ｺﾞﾑｼｭｳ=410x260                         ' BX x BY  中止 BD で OK
        Lm = Lm + 1: 踏座Data(Lm) = "BD=" + F9(pSisyu1(1, 2)) + "x" + F9(pSisyu1(1, 1))   '  BD=810x560                             ' BX x BY  破線部

                Lm = Lm + 1: 踏座Data(Lm) = "'[[[ 踏座  鉄筋 です  ]]]"

                          Lm = Lm + 1: 踏座Data(Lm) = "' n    : 鉄筋本数"
                          Lm = Lm + 1: 踏座Data(Lm) = "' D    : 鉄筋径"
                          Lm = Lm + 1: 踏座Data(Lm) = "' K    : 梁上面からの被り位置です"
                          Lm = Lm + 1: 踏座Data(Lm) = "' @    : 鉄筋ののﾋﾟｯﾁ   鉄筋本数-1"
                          Lm = Lm + 1: 踏座Data(Lm) = "' Y    : 鉄筋の位置のずれ ｾﾝﾀｰから外側に向かって +"
                          Lm = Lm + 1: 踏座Data(Lm) = "' B    : 沓座鉄筋の長さです"
                          Lm = Lm + 1: 踏座Data(Lm) = "' H    : 沓座鉄筋の高さです"
                          Lm = Lm + 1: 踏座Data(Lm) = "' SD   : 材種s"


                        Lm = Lm + 1: 踏座Data(Lm) = "'exp   S1=8-D19_K280_Y62.5_@7x125_B1050_H570_SD390   ' X方向"
                        Lm = Lm + 1: 踏座Data(Lm) = "'exp   S2=8-D22_K300_@7x150_B875_H660_SD390          ' Y方向"


             '[[[ S1 鉄筋 ]]]
              Call SP_Data個数i(pSisyu2(1, 2), ni, Di)
              踏座鉄筋本数s = f0(ni)
              踏座鉄筋径s = "-D" + f0(pSisyuD(1, 2))
              踏座被りs = "_K" + F9(pSisyukabu(1))
              踏座Y位置s = "" '踏座Y位置s = "_Y62.5" '********
              踏座鉄筋Bs = "_B" + F9(FP計算X(pSisyu2(1, 1)) + pSisyuD(1, 1))
              踏座鉄筋Hs = "_H" + f0(30 * pSisyuD(1, 2)) '30d
              踏座pits = "_@" + pSisyu2(1, 2)
              Lm = Lm + 1: 踏座Data(Lm) = "S1=" + 踏座鉄筋本数s + 踏座鉄筋径s + 踏座被りs + 踏座Y位置s + 踏座鉄筋Bs + 踏座鉄筋Hs + 踏座pits + "_SD390"

             '[[[ S2 鉄筋 ]]]
              Call SP_Data個数i(pSisyu2(1, 1), ni, Di)
              踏座鉄筋本数s = f0(ni)
              踏座鉄筋径s = "-D" + f0(pSisyuD(1, 1))
              踏座被りs = "_K" + F9(pSisyukabu(1) + (pSisyuD(1, 1) + pSisyuD(1, 2)) / 2)
              踏座鉄筋Bs = "_B" + F9(FP計算X(pSisyu2(1, 2)))
              踏座鉄筋Hs = "_H" + f0(30 * pSisyuD(1, 1))
              踏座pits = "_@" + pSisyu2(1, 1)
              Lm = Lm + 1: 踏座Data(Lm) = "S2=" + 踏座鉄筋本数s + 踏座鉄筋径s + 踏座被りs + 踏座鉄筋Bs + 踏座鉄筋Hs + 踏座pits + "_SD390"
              踏座Di = Lm

       If pSisyuD(2, 2) > 0 Then
        踏座i = 2
        Lm = Lm + 1: 踏座Data(Lm) = ""
        Lm = Lm + 1: 踏座Data(Lm) = ".踏座"            '踏座
        Lm = Lm + 1: 踏座Data(Lm) = "符号=沓座2"
        Lm = Lm + 1: 踏座Data(Lm) = "BD=" + F9(pSisyu1(2, 2)) + "x" + F9(pSisyu1(2, 1))   '  BD=810x560                             ' BX x BY  破線部


             '[[[ S1 鉄筋 ]]]
              Call SP_Data個数i(pSisyu2(2, 2), ni, Di)
              踏座鉄筋本数s = f0(ni)
              踏座鉄筋径s = "-D" + f0(pSisyuD(2, 2))
              踏座被りs = "_K" + F9(pSisyukabu(2))
              踏座Y位置s = "" '踏座Y位置s = "_Y62.5" '********
              踏座鉄筋Bs = "_B" + F9(FP計算X(pSisyu2(2, 1)) + pSisyuD(2, 1))
              踏座鉄筋Hs = "_H" + f0(30 * pSisyuD(2, 2))
              踏座pits = "_@" + pSisyu2(2, 2)
              Lm = Lm + 1: 踏座Data(Lm) = "S1=" + 踏座鉄筋本数s + 踏座鉄筋径s + 踏座被りs + 踏座Y位置s + 踏座鉄筋Bs + 踏座鉄筋Hs + 踏座pits + "_SD390"

             '[[[ S2 鉄筋 ]]]
              Call SP_Data個数i(pSisyu2(2, 1), ni, Di)
              踏座鉄筋本数s = f0(ni)
              踏座鉄筋径s = "-D" + f0(pSisyuD(2, 1))
              踏座被りs = "_K" + F9(pSisyukabu(2) + (pSisyuD(2, 1) + pSisyuD(2, 2)) / 2)
              踏座鉄筋Bs = "_B" + F9(FP計算X(pSisyu2(2, 2)))
              踏座鉄筋Hs = "_H" + f0(30 * pSisyuD(2, 1))
              踏座pits = "_@" + pSisyu2(2, 1)
              Lm = Lm + 1: 踏座Data(Lm) = "S2=" + 踏座鉄筋本数s + 踏座鉄筋径s + 踏座被りs + 踏座鉄筋Bs + 踏座鉄筋Hs + 踏座pits + "_SD390"
              踏座Di = Lm
         End If

'┌────────────────────────────────────────────────────────────┐
'│ ■ 梁                                                                                                                  │
'└────────────────────────────────────────────────────────────┘
        Dim 梁_BX As Single, 梁_BY As Single, 梁_H1 As Single, 梁_H2 As Single
        梁_BX = pW(1): 梁_BY = pB(1): 梁_H1 = pH(3): 梁_H2 = pH(2)
        
        Dim Stoper符号s, 沓座符号s As String
        Lm = 0
    ' Lm = Lm + 1: 梁Data(Lm) = "errck'"
        Lm = Lm + 1: 梁Data(Lm) = "'┌────────────────────────────────────────────────────────────┐"
        Lm = Lm + 1: 梁Data(Lm) = "'│ ■ 梁                                                                                                                  │"
        Lm = Lm + 1: 梁Data(Lm) = "'└────────────────────────────────────────────────────────────┘"
        Lm = Lm + 1: 梁Data(Lm) = ".梁" '桁座

                 Lm = Lm + 1: 梁Data(Lm) = "BX=" + F9(梁_BX) ' 8900              '梁X長さ BX=4750+4750
                 Lm = Lm + 1: 梁Data(Lm) = "BY=" + F9(梁_BY) ' 2000              '梁Y長さ BY=1500+1500
                 Lm = Lm + 1: 梁Data(Lm) = "H=" + F9(梁_H1) + "+" + F9(梁_H2) ' 500 + 1500        '梁高さ

                 Lm = Lm + 1: 梁Data(Lm) = "勾配=10,-28"          ' 勾配=中央の値,端の値    勾配=10,-28,-20
                 Lm = Lm + 1: 梁Data(Lm) = "r=0"           'r=250
                 Lm = Lm + 1: 梁Data(Lm) = "r2=" + F9(pRHanti(0)) ' 0 'r2=1500                ' 柱と梁部分


              '[[[ ｽﾄｯﾊﾟ位置 ]]]
                 Dim Stoper_LY As Double, Stoper_n As Integer, Stoper位置s As String
                 Lm = Lm + 1: 梁Data(Lm) = "ｽﾄｯﾊﾟ位置"
                         '  終点 左→右   起点 左→右 の順番
                         
                         '   -2650,320   0,320    2650,320
                         '   -1300,-575,ｽﾄｯﾊﾟ2    1300,-575,ｽﾄｯﾊﾟ2      ' X,Y,ｽﾄｯﾊﾟｰ符号
 
                         Stoper_LY = pB(1) / 2 - pStop1(2, 3)
                         D1s = pStopPictW(2):   Call SP_Data個数i(D1s, Stoper_n, Di)
                 
                         Stoper位置s = ""
                         Stoper符号s = "ｽﾄｯﾊﾟ1": If Stoperi > 1 Then Stoper符号s = "ｽﾄｯﾊﾟ2"
                         For ii = 1 To Stoper_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             Stoper位置s = Stoper位置s + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(Stoper_LY) + "," + Stoper符号s
                              Next ii
                         Lm = Lm + 1: 梁Data(Lm) = Stoper位置s

                         Stoper_LY = pB(1) / 2 - pStop1(1, 3)
                         D1s = pStopPictW(1):   Call SP_Data個数i(D1s, Stoper_n, Di)
                 
                         Stoper位置s = ""
                         Stoper符号s = "ｽﾄｯﾊﾟ1"
                         For ii = 1 To Stoper_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             Stoper位置s = Stoper位置s + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(-Stoper_LY) + "," + Stoper符号s
                              Next ii
                         Lm = Lm + 1: 梁Data(Lm) = Stoper位置s


              '[[[ 沓座位置 ]]]
                 Dim 沓座_LY As Double, 沓座_n As Integer, 沓座位置s As String
                 Lm = Lm + 1: 梁Data(Lm) = "沓座位置"
                         '  終点 左→右   起点 左→右 の順番
                         '   -2650,320   0,320    2650,320
                         '   -1300,-575,ｽﾄｯﾊﾟ2    1300,-575,ｽﾄｯﾊﾟ2      ' X,Y,ｽﾄｯﾊﾟｰ符号
 
                         沓座_LY = pB(1) / 2 - pSisyu1(2, 3)
                         D1s = pSisyuPictW(2):   Call SP_Data個数i(D1s, 沓座_n, Di)
                 
                         沓座符号s = "沓座1": If 踏座i > 1 Then 沓座符号s = "沓座2"
                         沓座位置s = ""
                         For ii = 1 To 沓座_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                              沓座位置s = 沓座位置s + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(沓座_LY) + "," + 沓座符号s
                              Next ii
                         Lm = Lm + 1: 梁Data(Lm) = 沓座位置s

                         沓座_LY = pB(1) / 2 - pSisyu1(1, 3)
                         D1s = pSisyuPictW(1):   Call SP_Data個数i(D1s, 沓座_n, Di)
                 
                         沓座位置s = "": 沓座符号s = "沓座1"
                         For ii = 1 To 沓座_n - 1: Di(ii) = Di(ii) + Di(ii - 1)
                             沓座位置s = 沓座位置s + "    " + F9(Di(ii) - pW(1) / 2) + "," + F9(-沓座_LY) + "," + 沓座符号s
                              Next ii
                         Lm = Lm + 1: 梁Data(Lm) = 沓座位置s



        Lm = Lm + 1: 梁Data(Lm) = "'[[[ B1 は ﾙｰﾌﾟ筋 です  ]]]   Y軸 対象考慮"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : ﾙｰﾌﾟ筋径"
                         Lm = Lm + 1: 梁Data(Lm) = "' K    : 梁左側面からの被り位置です"
                         Lm = Lm + 1: 梁Data(Lm) = "' @    : 梁上場からの位置です"
                         Lm = Lm + 1: 梁Data(Lm) = "' B    : 鉄筋のX方向長さです      B L1 + JL + L2"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 鉄筋のY方向長さです"
                        
                        Dim Roop筋Bi As Single, Roop筋Di As Single
                        Dim Roop筋径s As String, Roop筋被りs As String, Roop筋Pits As String, Roop筋Bs As String, Roop筋Ds As String
                        Dim Roop筋b As Single, Roop筋L As Single

                     Lm = Lm + 1: 梁Data(Lm) = "'exp    B1=D32_K136_@126+2x80_B4124+J960+5124_D1244_SD390         ' ﾙｰﾌﾟ鉄筋(主筋) 1"
                     Lm = Lm + 1: 梁Data(Lm) = "'exp    B1=D32_K216_@126+3x80_B4044+J960+5044_D1084_SD390         ' ﾙｰﾌﾟ鉄筋(主筋) 2"

                       '[[[ ﾙｰﾌﾟ鉄筋(主筋) 1 ]]]
                       Roop筋径s = "D" + f0(pHariDai(1))
                       Roop筋被りs = "_K" + F9(pHariKaburi(1))
                       Roop筋Pits = "_@126+" + f0(pHariLoop(2, 2)) + "x80"
                       'pHariループ直線長(2)
                       Roop筋Bi = pHariループ直線長(1) '   梁_BX - 800
                       Roop筋Bs = "_B" + F9(Roop筋Bi)
                    Roop筋Bs = "_B4044+J960+5044"
                       Roop筋Ds = "_D" + F9(pHariLoop(1, 2))
                       Lm = Lm + 1: 梁Data(Lm) = "B1=" + Roop筋径s + Roop筋被りs + Roop筋Pits + Roop筋Bs + Roop筋Ds + "_SD390"

                       '[[[ ﾙｰﾌﾟ鉄筋(主筋) 2 ]]]
                       Roop筋径s = "D" + f0(pHariDai(1))
                       Roop筋被りs = "_K" + F9(pHariKaburi(1))
                       Roop筋Pits = "_@126+" + f0(pHariLoop(2, 3)) + "x80"
                       Roop筋Bi = pHariループ直線長(1)   '梁_BX - 800 - 300
                       Roop筋Bs = "_B" + F9(Roop筋Bi)
                       Roop筋Ds = "_D" + F9(pHariLoop(1, 3))
                       
                     If Roop筋Ds <> "_D0" Then Lm = Lm + 1: 梁Data(Lm) = "B1=" + Roop筋径s + Roop筋被りs + Roop筋Pits + Roop筋Bs + Roop筋Ds + "_SD390"


        Lm = Lm + 1: 梁Data(Lm) = "'[[[ B2 は 梁上端筋 です  ]]]   Y軸 対象考慮  ｽﾄｯﾊﾟ部分は ｶｯﾄします"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 梁上端筋径"
                         Lm = Lm + 1: 梁Data(Lm) = "' K    : 梁上場から被りの位置です"
                         Lm = Lm + 1: 梁Data(Lm) = "' @    : 梁側面から割り付けます"
                         Lm = Lm + 1: 梁Data(Lm) = "' L    : 鉄筋の長さです     F はﾌｯｸです"
                        Dim 梁上場筋径s As String, 梁上場筋被りs As String, 梁上場筋Pits As String, 梁上場筋Ls As String

                      Lm = Lm + 1: 梁Data(Lm) = "'exp   B2=D16_K126_@396.7+4x180.7_LF+8900+F_SD390"

                         Lm = Lm + 1: 梁Data(Lm) = "' ※ B2-2, B2-3 は計算します"

                       梁上場筋径s = "D" + f0(pHariDai(2))
                       梁上場筋被りs = "_K" + F9(pHariKaburi(1))
                       梁上場筋Pits = "_@396.7+" + f0(pHariN(1)) + "x180.7"
                       梁上場筋Ls = "_LF+8900+F"
                       Lm = Lm + 1: 梁Data(Lm) = "B2=" + 梁上場筋径s + 梁上場筋被りs + 梁上場筋Pits + 梁上場筋Ls


               Lm = Lm + 1: 梁Data(Lm) = "'[[[ B3 は 梁  下端鉄筋(あご部分) です  ]]]   X軸 対象考慮"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 梁下端筋径"
                         Lm = Lm + 1: 梁Data(Lm) = "' B    : 梁側面からの長さです   横被ﾘ+L"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 梁上場からの長さです   上被ﾘ+L"
                         Lm = Lm + 1: 梁Data(Lm) = "' @    : 梁側面から割り付けます"
                         Lm = Lm + 1: 梁Data(Lm) = "' r    : 半径です"

                        Dim 梁下場筋径s As String, 梁下場筋Bs As String, 梁下場筋Ds As String, 梁下場筋Pits As String, 梁上場筋rs As String
                      
                      Lm = Lm + 1: 梁Data(Lm) = "'exp   B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150_SD390"
                      Lm = Lm + 1: 梁Data(Lm) = "'exp   B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1337.68+1378.04_r150_SD390"

                        梁下場筋径s = "D" + f0(pHariDai(4))
                        梁下場筋Bs = "_B95+3445.1"
                        梁下場筋Ds = "_D98+1337.68"
                        梁下場筋Pits = "_@" + pHariPictW(2)
                        梁上場筋rs = "_r=0"
                        Lm = Lm + 1: 梁Data(Lm) = "B3=" + 梁下場筋径s + 梁下場筋Bs + 梁下場筋Ds + 梁下場筋Pits + 梁上場筋rs + "_SD390"




        Lm = Lm + 1: 梁Data(Lm) = "'[[[ B4 は 梁 側鉄筋 です (水平補強筋) ]]]       X軸 対象考慮"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 側鉄筋径"
                         Lm = Lm + 1: 梁Data(Lm) = "' K    : 梁側面からの被り位置です"
                         Lm = Lm + 1: 梁Data(Lm) = "' @    : 梁上場からの位置です"
                         Lm = Lm + 1: 梁Data(Lm) = "' B    : 鉄筋のX方向長さです"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 鉄筋のY方向長さです"
                         Lm = Lm + 1: 梁Data(Lm) = "' r    : 半径です"
                        
                        Dim 側鉄筋径s As String, 側鉄筋被りs As String, 側鉄筋Bs As String, 側鉄筋Ds As String, 側鉄筋Pits As String, 側鉄筋rs As String
                        Dim 側鉄筋被i As Single, 側鉄筋Bi As Single, 側鉄筋Di As Single

                      Lm = Lm + 1: 梁Data(Lm) = "'exp    B4=D25_K73_@126+12x150_B3150_D2829_r270_SD390"
                      Lm = Lm + 1: 梁Data(Lm) = "'exp    B4-2=D25_B2850〜1830_D2829_r270_SD390        ' **〜** の場合は 実長(r=__ は加えない)"

                          '2850〜1830


                         側鉄筋径s = "D" + f0(pHariDai(5))
                             側鉄筋被i = pHariKaburi(3) + pHariDai(5) / 2
                         側鉄筋被りs = "_K" + F9(側鉄筋被i)
                             側鉄筋Bi = (梁_BX - pW(6)) / 2 + pHariBon(2) - 側鉄筋被i
                         側鉄筋Bs = "_B" + F9(側鉄筋Bi) ' 側鉄筋Bs = "_B"+F9(側鉄筋Bi)
                             側鉄筋Di = 梁_BY - 2 * 側鉄筋被i
                         側鉄筋Ds = "_D" + F9(側鉄筋Di)
                         側鉄筋Pits = "_@" + Replace式s(pHariPicth(2))
                         側鉄筋rs = "_r=270"
                         Lm = Lm + 1: 梁Data(Lm) = "B4=" + 側鉄筋径s + 側鉄筋被りs + 側鉄筋Bs + 側鉄筋Ds + 側鉄筋Pits + 側鉄筋rs + "_SD390"

                         側鉄筋Bs = "_B" + F9(側鉄筋Bi) + "〜" + F9(側鉄筋Bi) ' 側鉄筋Bs = "_B"+F9(側鉄筋Bi)
                         Lm = Lm + 1: 梁Data(Lm) = "B4-2=" + 側鉄筋径s + 側鉄筋被りs + 側鉄筋Bs + 側鉄筋Ds + 側鉄筋Pits + 側鉄筋rs + "_SD390"


        Lm = Lm + 1: 梁Data(Lm) = "'[[[ B0 は 梁 ｽﾀｰﾗｯﾌﾟ です  ]]]      ｽﾄｯﾊﾟ部分は ｶｯﾄします               2132~1335"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 梁St鉄筋径"
                         Lm = Lm + 1: 梁Data(Lm) = "' K    : 梁上場,梁下場からの位置(Z座標)です"
                         Lm = Lm + 1: 梁Data(Lm) = "' X    : 梁横面からの位置です"
                         Lm = Lm + 1: 梁Data(Lm) = "' Spit : ｽﾀｰﾗｯﾌﾟﾋﾟｯﾁ  梁側面から割り付けます"
                         Lm = Lm + 1: 梁Data(Lm) = "' B    : 柱内ｽﾀｰﾗｯﾌﾟ鉄筋の長さです"
                         Lm = Lm + 1: 梁Data(Lm) = "' D    : 柱内ｽﾀｰﾗｯﾌﾟ鉄筋の高さです"

                        Dim 梁St鉄筋径s As String, 梁St鉄筋被りs As String, 梁St鉄筋Xs As String, 梁St鉄筋Bs As String, 梁St鉄筋Ds As String, 梁St鉄筋Pits As String, 梁St鉄筋rs As String
                        Dim 梁St鉄筋Pit1s As String, 梁St鉄筋Pit2s As String, 梁St鉄筋Pit3s As String
                        Dim 梁St鉄筋Xi As Single, 梁St鉄筋Bi As Single

                       Lm = Lm + 1: 梁Data(Lm) = "'exp   B01=D22_X109_K74.5_B1618_D2292〜1495+F_r160_SD390    下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01 ###"
                       Lm = Lm + 1: 梁Data(Lm) = "'exp   B02=D22_X109_K99_B1618_DF+440_SD390                  上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B02, B03, B04"
                       Lm = Lm + 1: 梁Data(Lm) = "'exp   B03=D16_K99_B2776_D500_SD390                         柱内ｽﾀｰﾗｯﾌﾟ    --->  B5-1, B5-2, B5-3"

                       Lm = Lm + 1: 梁Data(Lm) = "'exp   Spit=500+13x150+23x200+13x150"

                         Lm = Lm + 1: 梁Data(Lm) = "' ※ B5-2, B5-3 は計算します"


                        '[[[ 下ｽﾀｰﾗｯﾌﾟ ]]]
                        梁St鉄筋Ds = "D" + f0(pHariStrD(1))
                        梁St鉄筋Xi = pHariKaburi(3) + pHariStrD(1) / 2:
                            梁St鉄筋Xs = "_X" + F9(梁St鉄筋Xi)
                        
                        梁St鉄筋被りs = "_K" + F9(pHariKaburi(2) + pHariStrD(1) / 2)
                       ' 梁St鉄筋Bi = Val(pHariStrW(1)) + Val(pHariStrW(2))
                        梁St鉄筋Bi = Val(pHariStrW(1))
                            梁St鉄筋Bs = "_B" + F9(梁St鉄筋Bi)
                        梁St鉄筋Ds = "_D2292〜1495+F"
                        梁St鉄筋rs = "_r160"
                        Lm = Lm + 1: 梁Data(Lm) = "B01=" + 梁St鉄筋Ds + 梁St鉄筋Xs + 梁St鉄筋被りs + 梁St鉄筋Bs + 梁St鉄筋Ds + 梁St鉄筋rs + "_SD390"
                       
                        '[[[ 上ｽﾀｰﾗｯﾌﾟ ]]]
                        梁St鉄筋Ds = "D" + f0(pHariStrD(1))
                     '   梁St鉄筋Xs = "_X109"
                        
                        梁St鉄筋被りs = "_K" + F9(pHariKaburi(1) + pHariStrD(1) / 2)
                        梁St鉄筋Bs = "_B" + F9(梁St鉄筋Bi)
                        梁St鉄筋Ds = "_DF+400"
                        Lm = Lm + 1: 梁Data(Lm) = "B02=" + 梁St鉄筋Ds + 梁St鉄筋Xs + 梁St鉄筋被りs + 梁St鉄筋Bs + 梁St鉄筋Ds + "_SD390"
                       
                        '[[[ 柱内ｽﾀｰﾗｯﾌﾟ ]]]
                        梁St鉄筋Ds = "D" + f0(pHariStrD(2))
                        梁St鉄筋被りs = "_K" + F9(pHariKaburi(2) + pHariStrD(2) / 2)
                        梁St鉄筋Bs = "_B" + F9(梁St鉄筋Bi)
                        梁St鉄筋Ds = "_D" + F9(pHariStrBon(1))
                        Lm = Lm + 1: 梁Data(Lm) = "B03=" + 梁St鉄筋Ds + 梁St鉄筋被りs + 梁St鉄筋Bs + 梁St鉄筋Ds + "_SD390"
                       
                        '[[[ ｽﾀｰﾗｯﾌﾟ Pit ]]]
                        梁St鉄筋Pit1s = Replace式s(pHariPictW(3))
                            梁St鉄筋Pit3s = 梁St鉄筋Pit1s
                            ni = InStr(梁St鉄筋Pit3s, "+"): If ni > 0 Then 梁St鉄筋Pit3s = Mid(梁St鉄筋Pit3s, ni + 1)
                        梁St鉄筋Pit2s = "+" + Replace式s(pHariPictW(4))
                        
                        梁St鉄筋Pits = 梁St鉄筋Pit1s + 梁St鉄筋Pit2s + "+" + 梁St鉄筋Pit3s
                        Lm = Lm + 1: 梁Data(Lm) = "Spit=" + 梁St鉄筋Pits
                       
                       
                       梁Di = Lm
                       

    ' Stop




    End Sub

Private Sub 橋脚Data図設定()
        Lm = 0
        Lm = Lm + 1: 図設定Data(Lm) = "'┌────────────────────────────────────────────────────────────┐"
        Lm = Lm + 1: 図設定Data(Lm) = "'│                                                                                                                        │"
        Lm = Lm + 1: 図設定Data(Lm) = "'│ ■ 橋脚図                                                                                                              │"
        Lm = Lm + 1: 図設定Data(Lm) = "'│                                                                                                                        │"
        Lm = Lm + 1: 図設定Data(Lm) = "'└────────────────────────────────────────────────────────────┘"
        Lm = Lm + 1: 図設定Data(Lm) = "//橋脚図"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "' ｽｹｰﾙの変更     原点=X0,Y0 の入力の後に   S=1/___ で入力する"
        Lm = Lm + 1: 図設定Data(Lm) = "' 原点の変更で ｻﾌﾞｽｹｰﾙは 基本ｽｹｰﾙに戻る"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = " '/原点表示"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "/基本設定"
        Lm = Lm + 1: 図設定Data(Lm) = "             用紙=A1"
        Lm = Lm + 1: 図設定Data(Lm) = "             寸法端部=矢   '寸法端部=上矢"
        Lm = Lm + 1: 図設定Data(Lm) = "           '  寸法Msize=3"
        Lm = Lm + 1: 図設定Data(Lm) = "             寸法端部矢size=2"
        Lm = Lm + 1: 図設定Data(Lm) = "            寸法端部矢角度=15"
        Lm = Lm + 1: 図設定Data(Lm) = "            寸法色=空       ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "                                矢size=1.5 ': P_矢_長さ = Val(項目3s$): If P_矢_長さ < 0.1 Then P_矢_長さ = 0.1"
        Lm = Lm + 1: 図設定Data(Lm) = "                                矢角度=15  ': P_矢_角度 = Val(項目3s$)"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "    /枠"
        Lm = Lm + 1: 図設定Data(Lm) = "            READ枠=橋脚枠.D00"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "    /DXF   杭配筋図.DXF     杭配筋図   葉ノ内       1/50"
        Lm = Lm + 1: 図設定Data(Lm) = "            図形項目=杭"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=100,450              .配筋図"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=100,380              .K1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=100,350              .K2"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=100,250              .断面a-a"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,250   S=1/20     .断面a-a配筋図"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=300,250              .断面b-b"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=400,250   S=1/20     .断面b-b配筋図"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=100,120              .K01"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,120              .K03"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=300,120              .K04"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=400,120              .K02"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=600,150   S=1/10     .帯鉄筋継手詳細図"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=600,250   S=1/10     .ｽﾍﾟｰｻｰ詳細図"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=720,250   S=1/10     .かぶり詳細図"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "    /DXF   基礎配筋図.DXF     基礎配筋図   葉ノ内       1/50"
        Lm = Lm + 1: 図設定Data(Lm) = "            図形項目=基礎"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,390             .配筋図"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,120             .断面a-a"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=480,390             .断面b-b"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=470,200             .F2"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=470,150             .F1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=470,110             .F3"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=650,230             .f1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=650,150             .f2"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=600,390             .F12"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=680,390             .F13      '*** F12  ﾖﾘ"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=750,390             .F11"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=780,390             .F14"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "    /DXF   沓座配筋図.DXF    く体配筋図(その1)    葉ノ内       1/50"
        Lm = Lm + 1: 図設定Data(Lm) = "            図形項目=沓座"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,450             .断面A-A"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,300             .断面B-C"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=150,120             .断面D-D"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=300,120             .断面H-H"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=500,450             .断面E-E"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=500,300             .断面F-G"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=500,150   S=1/20    .無収縮ﾓﾙﾀﾙ詳細図"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=680,500             .S1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=680,400             .S2"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=770,500             .H1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=770,400             .H2"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=770,300             .H3"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "    /DXF   柱配筋図.DXF     く体配筋図(その3)    葉ノ内       1/50"
        Lm = Lm + 1: 図設定Data(Lm) = "            図形項目=柱"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=130,190             .断面A-B"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=330,190             .断面C-D"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=700,485             .断面a-a"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=700,365             .断面b-b"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=700,240  S=1/20           .断面b-b鉄筋配筋図"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=100,100             .c1-X       '***  c1 ﾖﾘ"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,100             .c1-Y       '***  c1 ﾖﾘ"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=300,100             .c2-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=420,100             .c2-2"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=520,100             .c3-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=590,100             .c3-2"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=490,190             .C1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=515,190             .C2"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=540,190             .C3"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=565,190             .C4"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=650,80              .CK"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "    /DXF   梁配筋図.DXF     く体配筋図(その2)    葉ノ内       1/50"
        Lm = Lm + 1: 図設定Data(Lm) = "            図形項目=梁"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,490             .断面A-A"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,280             .断面B-B"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=200,120             .断面C-C"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=450,490             .断面a-a"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=670,520  S=1/20     .断面a-a鉄筋配筋図"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=450,300             .B1-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=450,230             .B1-2"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=450,150             .B2-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=400,100             .B2-2      '***"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=470,100             .B2-3      '***"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=650,310             .B4-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=750,310             .B4-2      '***"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=610,240             .B5-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=590,200             .B5-2      '***"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=640,200             .B5-3      '***"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=750,200             .B3-1"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=600,100             .B01"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=600,150             .B02"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=650,150             .B03       '***"
        Lm = Lm + 1: 図設定Data(Lm) = "            原点=650,100             .B04       '***"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = "//鉄筋材料表作成"
        Lm = Lm + 1: 図設定Data(Lm) = "//鉄筋材料表"
        Lm = Lm + 1: 図設定Data(Lm) = "          READ=鉄筋材料表.dat"
        Lm = Lm + 1: 図設定Data(Lm) = ""
        Lm = Lm + 1: 図設定Data(Lm) = ""


       図設定Di = Lm
    
    
    End Sub


Private Function Replace式s(ByVal Moj As String) As String
   '  Moj   *  --->  x
   '        X  --->  x
   
    Moj = 文字変換(Moj, "*", "x")
    Replace式s = LCase(Moj)

   End Function

Function FP計算X(ByVal Moj As String) As Double
    '  8x150 を計算する   1200
    Dim D1s As String, D2s As String
    Dim ni As Integer
    Moj = Replace式s(Moj)
    ni = InStr(Moj, "x")
    Select Case ni
    Case 0:  FP計算X = Val(Moj)
    Case Else:  FP計算X = Val(Mid(Moj, 1, ni - 1)) * Val(Mid(Moj, ni + 1))
    End Select
    

    End Function

Function FP_Data個数i(ByVal Wda As String)
      ' Wda を分解して L 個数 を求める
    Dim Σn As Integer, L(900) As Single
    Call SP_Data個数i(Wda, Σn, L)
    
    FP_Data個数i = Σn
    End Function


Private Sub SP_Data個数i(ByVal Wda As String, ByRef Σn As Integer, ByRef L() As Single)
      ' Wda を分解して 個数と 格L を求める
      Dim ii  As Integer, i2 As Integer, ni As Integer, n2 As Integer, Ds(200) As String, Di(200)
      Dim L1 As Single
      ' Wda="400+350x3+500x3+600"   Σn=8  L(1)=400 L(2)=350 ... L(5)=500
      Σn = 0
      Wda = Replace式s(Wda)
      Call Ddata("+", Wda, Ds, Di, ni)
      For ii = 1 To ni
          Call Data個数x(Ds(ii), n2, L1)
          For i2 = 1 To n2:    Σn = Σn + 1: L(Σn) = L1
          Next i2
          
      Next ii


End Sub

Private Sub Data個数x(ByVal Wda As String, ByRef n As Integer, ByRef L As Single)
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
    ' 200+200+300 を作る
    Dim ii As Integer, Wda As String
    Wda = ""
    For ii = 1 To n
        Wda = Wda + "+" + F9(L(ii))
        Next ii
    F_Moj_s1 = Mid(Wda, 2)

    End Function

Private Function Hoop_位置(L As Single, n As Integer, 位置() As Single) As Integer
    '  L が Hoop の何番目にあるかをかえす 無い場合は１番近い位置
    ' 組立筋位置の検索
    Dim ii As Integer, L1 As Single
    For ii = 1 To n
       L1 = L - 位置(ii)
       If L1 <= 0 Then Exit For
      Next ii
      Hoop_位置 = ii
    End Function

Private Sub 杭_位置(ByRef 基礎Data() As String)
    ' 杭本数  杭位置 を計算
    '
    '  pKuihaic1(0〜1, ii)  pKuihaic2(0〜1, ii)
    '
    Dim ii As Integer, i2 As Integer, XYi(30, 30) As Integer
    Dim Wda As String
    Dim 杭本数i As Integer, X位置数i As Single, Y位置数i As Single, X位置i(20) As Single, Y位置i(20) As Single
    Dim X位置本数i(20) As Single, Y位置本数i(20) As Single
    Dim XcenterN As Integer
    Dim 基礎BX2 As Single, 基礎BY2 As Single
   
   
        基礎BX2 = pW(7) / 2:        基礎BY2 = (pB(7) + pB(8) + pB(9)) / 2
    
    For ii = 1 To 20: X位置本数i(ii) = 0: Y位置本数i(ii) = 0: X位置i(ii) = 0: Y位置i(ii) = 0: Next ii
    杭本数i = 0
    For ii = 0 To 10: If Val(pKuihaic2(1, ii)) = 0 Then Exit For
        X位置i(ii + 1) = Val(pKuihaic2(0, ii)) * 1000 - 基礎BX2: If Abs(X位置i(ii + 1)) < 0.001 Then X位置i(ii + 1) = 0
        X位置本数i(ii + 1) = Val(pKuihaic2(1, ii))
        杭本数i = 杭本数i + X位置本数i(ii + 1)
        Next ii
        X位置数i = ii
    For ii = 0 To 10: If Val(pKuihaic1(1, ii)) = 0 Then Exit For
        Y位置i(ii + 1) = Val(pKuihaic1(0, ii)) * 1000 - 基礎BY2: If Abs(Y位置i(ii + 1)) < 0.001 Then Y位置i(ii + 1) = 0
        Y位置本数i(ii + 1) = Val(pKuihaic1(1, ii))
        Next ii
        Y位置数i = ii

    For ii = 1 To 30: For i2 = 1 To 30: XYi(ii, i2) = 0: Next i2: Next ii

    X位置数i = Int(X位置数i)
    XcenterN = Int(X位置数i / 2) + 1
    For i2 = 1 To Y位置数i
        Select Case Y位置本数i(i2)
        Case 1: XYi(XcenterN, i2) = 1
        Case 2: XYi(1, i2) = 1: XYi(Int(X位置数i), i2) = 1
        Case 3: XYi(1, i2) = 1: XYi(XcenterN, i2) = 1: XYi(X位置数i, i2) = 1
        Case 4: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(X位置数i - 1, i2) = 1: XYi(X位置数i, i2) = 1
        Case 5: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(Int(X位置数i / 2), i2) = 1: XYi(X位置数i - 1, i2) = 1: XYi(X位置数i, i2) = 1
        Case 6: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(X位置数i - 2, i2) = 1: XYi(X位置数i - 1, i2) = 1: XYi(X位置数i, i2) = 1
        Case 7: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(XcenterN, i2) = 1: XYi(X位置数i - 2, i2) = 1: XYi(X位置数i - 1, i2) = 1: XYi(X位置数i, i2) = 1
        Case 8: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(4, i2) = 1: XYi(X位置数i - 3, i2) = 1: XYi(X位置数i - 2, i2) = 1: XYi(X位置数i - 1, i2) = 1: XYi(X位置数i, i2) = 1
        Case 9: XYi(1, i2) = 1: XYi(2, i2) = 1: XYi(3, i2) = 1: XYi(4, i2) = 1: XYi(XcenterN, i2) = 1:
                        XYi(X位置数i - 3, i2) = 1: XYi(X位置数i - 2, i2) = 1: XYi(X位置数i - 1, i2) = 1: XYi(X位置数i, i2) = 1
        Case Else: er ("杭_位置 対応できません"): Stop
        End Select
        Next i2
    
    For i2 = 1 To Y位置数i
        Wda = ""
        For ii = 1 To X位置数i
            Select Case XYi(ii, i2)
            Case 1:  Wda = Wda + F左(F9(X位置i(ii)) + "," + F9(-Y位置i(i2)), 17) + " "
            Case Else: Wda = Wda + Space(18)
            End Select
            Next ii
        Lm = Lm + 1: 基礎Data(Lm) = Wda
        Next i2
    End Sub
