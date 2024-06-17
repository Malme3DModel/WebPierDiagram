Attribute VB_Name = "橋脚初期値"
'
'
'           橋脚初期値    2003.11.18 ﾒﾝﾃ
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　図化　初期値                        　　　  　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub 橋脚_初期値()
     
     橋脚原点表示$ = "N"
     
     For ii = 1 To 杭_No_Max + 1: 杭符号$(ii) = "": Next ii
     For ii = 1 To 基礎_No_Max + 1: 基礎符号$(ii) = "": Next ii
     For ii = 1 To 柱_No_Max + 1: 柱符号$(ii) = "": Next ii
     For ii = 1 To 梁_No_Max + 1: 梁符号$(ii) = "": Next ii
     
     
     杭_No_Max = 0:  基礎_No_Max = 0:  柱_No_Max = 0:  沓座_No_Max = 0: Stoper_No_Max = 0:  梁_No_Max = 0
     
             橋脚_layer$(1) = "躯体": 橋脚_layer$(2) = "主筋": 橋脚_layer$(3) = "Hoop"
             橋脚_layer$(4) = "0-3": 橋脚_layer$(5) = "鉄筋断面": 橋脚_layer$(6) = "鉄筋Mark"
             橋脚_layer$(7) = "Stoper": 橋脚_layer$(8) = "鉄筋加工図": 橋脚_layer$(9) = "0-8"
             橋脚_layer$(10) = "Mark": 橋脚_layer$(11) = "寸法線": 橋脚_layer$(12) = "0-B"
             橋脚_layer$(13) = "ETC": 橋脚_layer$(14) = "Center-Line": 橋脚_layer$(15) = "断面位置指定"
             橋脚_layer$(16) = "0-G": 橋脚_layer$(17) = "Title": 橋脚_layer$(18) = "図枠"
    
        橋脚_LAYER_N = 18
     
     
        '[[[ 文字 Size ]]]
                 図_題名_Msize = 8:     ' 図面上の Title
                 図名_Msize = 8:        ' 格図の Title
                 図_寸法_Msize = 4: ' 図の寸法線の文字
                 
                 図_表示_Msize = 4: ' 図の一般表示の文字
        
           
           
        '[[[      ]]]]
                 図_CenterLine_線種$ = "cen": '図のｾﾝﾀｰﾗｲﾝの線種
                 図_CenterLine_線色$ = "紫": '図のｾﾝﾀｰﾗｲﾝの線色
                 
              '   図_CenterLine_線種$ = "con": '図のｾﾝﾀｰﾗｲﾝの線種
              '   図_CenterLine_線色$ = "白": '図のｾﾝﾀｰﾗｲﾝの線色
           
           
           
           格図名開き位置 = 9:  ' mm
        
        
         
         
         
         橋脚_寸法線_Pit_躯体図 = 7:     ' 7mm  躯体図 寸法線の間隔
        
        
        '[[[ 杭図  寸法線位置mm ]]]
        
               寸法線位置_杭平面.U開き = 40
               寸法線位置_杭平面.D開き = 40
               寸法線位置_杭平面.L開き = 40
               寸法線位置_杭平面.R開き = 40
        
               寸法線位置_杭断面.U開き = 40
               寸法線位置_杭断面.D開き = 40
               寸法線位置_杭断面.L開き = 40
               寸法線位置_杭断面.R開き = 40
        
               寸法線位置_杭長断面.U開き = 40
               寸法線位置_杭長断面.D開き = 40
               寸法線位置_杭長断面.L開き = 40
               寸法線位置_杭長断面.R開き = 40
               
        
        '[[[ 基礎図  寸法線位置mm ]]]
               寸法線位置_基礎平面.U開き = 40
               寸法線位置_基礎平面.D開き = 40
               寸法線位置_基礎平面.L開き = 40
               寸法線位置_基礎平面.R開き = 40
               
               寸法線位置_基礎A断面.U開き = 40
               寸法線位置_基礎A断面.D開き = 40
               寸法線位置_基礎A断面.L開き = 40
               寸法線位置_基礎A断面.R開き = 40
               
               寸法線位置_基礎B断面.U開き = 40
               寸法線位置_基礎B断面.D開き = 40
               寸法線位置_基礎B断面.L開き = 40
               寸法線位置_基礎B断面.R開き = 40
        
        
        '[[[ 沓座図  寸法線位置mm ]]]
               寸法線位置_沓座A平面.U開き = 40
               寸法線位置_沓座A平面.D開き = 40
               寸法線位置_沓座A平面.L開き = 40
               寸法線位置_沓座A平面.R開き = 40
               
               寸法線位置_沓座E平面.U開き = 40
               寸法線位置_沓座E平面.D開き = 40
               寸法線位置_沓座E平面.L開き = 40
               寸法線位置_沓座E平面.R開き = 40
               
               寸法線位置_沓座B断面.U開き = 40
               寸法線位置_沓座B断面.D開き = 40
               寸法線位置_沓座B断面.L開き = 40
               寸法線位置_沓座B断面.R開き = 40
               
               寸法線位置_沓座D断面.U開き = 40
               寸法線位置_沓座D断面.D開き = 40
               寸法線位置_沓座D断面.L開き = 40
               寸法線位置_沓座D断面.R開き = 40
               
               寸法線位置_沓座F断面.U開き = 40
               寸法線位置_沓座F断面.D開き = 40
               寸法線位置_沓座F断面.L開き = 40
               寸法線位置_沓座F断面.R開き = 40
               
               寸法線位置_沓座H断面.U開き = 40
               寸法線位置_沓座H断面.D開き = 40
               寸法線位置_沓座H断面.L開き = 40
               寸法線位置_沓座H断面.R開き = 40
        
        
        
        
        '[[[ 柱図  寸法線位置mm ]]]
              寸法線位置_柱平面A.U開き = 40
              寸法線位置_柱平面A.D開き = 50
              寸法線位置_柱平面A.L開き = 40
              寸法線位置_柱平面A.R開き = 40
                 
              寸法線位置_柱平面B.U開き = 40
              寸法線位置_柱平面B.D開き = 60
              寸法線位置_柱平面B.L開き = 40
              寸法線位置_柱平面B.R開き = 40
                 
              寸法線位置_柱断面.U開き = 50
              寸法線位置_柱断面.D開き = 40
              寸法線位置_柱断面.L開き = 60
              寸法線位置_柱断面.R開き = 40
                 
              寸法線位置_柱長断面.U開き = 50
              寸法線位置_柱長断面.D開き = 20
              寸法線位置_柱長断面.L開き = 40
              寸法線位置_柱長断面.R開き = 40
                 
        '[[[ 梁図  寸法線位置mm ]]]
              寸法線位置_梁平面.U開き = 40
              寸法線位置_梁平面.D開き = 50
              寸法線位置_梁平面.L開き = 60
              寸法線位置_梁平面.R開き = 40
                 
              寸法線位置_梁断面.U開き = 40
              寸法線位置_梁断面.D開き = 50
              寸法線位置_梁断面.L開き = 40
              寸法線位置_梁断面.R開き = 40
                 
              寸法線位置_梁長断面.U開き = 40
              寸法線位置_梁長断面.D開き = 20
              寸法線位置_梁長断面.L開き = 50
              寸法線位置_梁長断面.R開き = 40
     
     
        '[[[ 鉄筋加工図 ]]]
              橋脚_J鉄筋開き = 0.5: ' Joint鉄筋図 開き mm
              橋脚_寸法線_開き_鉄筋図 = 7: '鉄筋図 寸法線_鉄筋から開き mm
              鉄筋_Joint線色$ = "空":    ' 鉄筋_Jointの線色
     
        '[[[ 鉄筋○名称 ]]]
              橋脚_鉄筋名称_Layer$ = 橋脚_layer$(1): '鉄筋名称のLayer
              橋脚_鉄筋名称_径 = 8: '鉄筋名称の円の直径 mm
              橋脚_鉄筋名称_Msize1 = 5: '鉄筋名称の文字のｻｲｽﾞ mm
              橋脚_鉄筋名称_Msize2 = 3: '鉄筋名称の文字のｻｲｽﾞ mm
              橋脚_鉄筋名称_Msize3 = 4: '鉄筋名称の文字のｻｲｽﾞ mm  exp D22
     
              名称_L1 = 20: '鉄筋名称の文字の下部線長さ mm
              名称_L2 = 26: '鉄筋名称の文字の下部線長さ mm
     
     
     
        '[[[ 柱ﾌｰﾌﾟ ]]]
                 Hoop_Dx = 0: ' 作図微調整 mm
                 Hoop_Dy = 0
     
     
     
        '[[[ 断面位置指定 ]]]
        
                断面位置指定_XL = 7: 'mm
                断面位置指定_YL = 6: 'mm
                断面位置指定_矢L = 2.5: 'mm
                断面位置指定_矢角 = 15: '度
                断面位置指定_Msize = 5: '
                断面位置指定開き = 15: ' mm
                断面位置指定_線色$ = "緑"
     
         '[[[ 直筋_Stoper開き   ]]]
                直筋_Stoper開き_X = 50:   '鉄筋_Stoperの X 開き 直筋の折り曲げ
                直筋_Stoper開き_Y = 50:   '鉄筋_Stoperの Y 開き 直筋cut ck用  *****
                直筋_折曲げ = 500:       '鉄筋の 折曲げ長さ
     
         '[[[ 柱内 梁筋幅止筋_Stoper開き ]]]
                柱内幅止筋_Stoper開き_X = 50  ' 柱内幅止筋_Stoper開き
                柱内幅止筋_Stoper開き_Y = 50  ' 柱内幅止筋_Stoper開き
     
     
         '[[[ Mark 鉄筋  ]]]
              土木_橋脚_用紙size$ = "A1"
              橋脚_鉄筋_Mark_D = 4#:       ' ○ 鉄筋_Mark_の直径mm
              橋脚_鉄筋_Mark_Msize = 2.5:  ' 鉄筋_Mark_の文字ｻｲｽﾞ
     
     
     
     
         '[[[            ]]]
          鉄筋材料表_Msize = 3
     
     
     
     
     橋脚_鉄筋θ = 0
     
     End Sub

'┌─────────────────────────────────────────────┐
'│■ FP_橋脚_鉄筋_Data      　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function FP_橋脚_鉄筋_Data(項目$, 鉄筋材種$, 加工Type$, 鉄筋径$)
     ' 2003.9.24
     ' ﾒﾝﾃが必要です
     ' 鉄筋材種
     ' 加工Type$   "標準"    ete
     '  *** KHL = 500  杭ﾌｰﾌﾟ重ね
     
     ' 項目$  W   A   D1  b(l1)   L1(L1)  r1(r4)  L2(L4)    r2(r2)  L3(?)
     
     加工Type$ = Trim(加工Type$)
     Select Case 鉄筋材種$
     Case "SD295":  世er = " 鉄筋材種$  " + 鉄筋材種$ + " がおかしい": If 世誤CK > 99 Then er (世er): Stop
     Case "SD345":  世er = " 鉄筋材種$  " + 鉄筋材種$ + " がおかしい": If 世誤CK > 99 Then er (世er): Stop
     Case "SD390"
          Select Case 加工Type$
          Case "標準"
               Select Case UCase(F_RAN(鉄筋径$))
               Case "D10":  W1 = 0.56:  a1 = 0.7133: D1 = 70:   B1 = 60:  L1 = 170: r1 = 110: L2 = 173: r2 = 30: L3 = 110:  KHL = 500
               Case "D13":  W1 = 0.995: a1 = 1.267:  D1 = 93:   B1 = 64:  L1 = 210: r1 = 140: L2 = 220: r2 = 40: L3 = 150:  KHL = 390
               Case "D16":  W1 = 1.56:  a1 = 1.986:  D1 = 116:  B1 = 68:  L1 = 250: r1 = 170: L2 = 267: r2 = 50: L3 = 180:  KHL = 480
               Case "D19":  W1 = 2.25:  a1 = 2.865:  D1 = 139:  B1 = 82:  L1 = 300: r1 = 200: L2 = 314: r2 = 60: L3 = 220:  KHL = 570
     
               Case "D22":  W1 = 3.04:  a1 = 3.871:  D1 = 162:  B1 = 96:  L1 = 350: r1 = 240: L2 = 377: r2 = 70: L3 = 240:  KHL = 660
               Case "D25":  W1 = 3.98:  a1 = 5.067:  D1 = 175:  B1 = 105: L1 = 380: r1 = 270: L2 = 424: r2 = 75: L3 = 280:  KHL = 750
     
               Case "D29":  W1 = 5.04:  a1 = 6.424:  D1 = 209:  B1 = 122: L1 = 450: r1 = 310: L2 = 487: r2 = 90: L3 = 320:  KHL = 870
               Case "D32":  W1 = 6.23:  a1 = 7.942:  D1 = 232:  B1 = 136: L1 = 500: r1 = 340: L2 = 534: r2 = 100: L3 = 350:  KHL = 960

     
               Case "D35":  W1 = 7.51:  a1 = 9.566:  D1 = 245:  B1 = 145: L1 = 530: r1 = 370: L2 = 581: r2 = 105: L3 = 350::  KHL = 1050
               Case "D38":  W1 = 8.95:  a1 = 11.4:   D1 = 268:  B1 = 159: L1 = 580: r1 = 400: L2 = 628: r2 = 115: L3 = 350::  KHL = 1140
               Case "D41":  W1 = 10.5:  a1 = 13.4:   D1 = 291:  B1 = 173: L1 = 630: r1 = 440: L2 = 691: r2 = 125: L3 = 350::  KHL = 1230
               Case "D51":  W1 = 15.9:  a1 = 20.27:  D1 = 361:  B1 = 213: L1 = 780: r1 = 540: L2 = 848: r2 = 155: L3 = 350::  KHL = 1530
     
               Case "Φ13":  W1 = 1.04:  a1 = 1.33: D1 = 60:   B1 = 66:  L1 = 160: r1 = 110: L2 = 173: r2 = 30: L3 = 110:  KHL = 500
               Case Else:      W1 = 100: 世er = " 鉄筋径  " + 鉄筋径$ + " がおかしい": If 世誤CK > 99 Then er (世er): Stop
               End Select
          
          Case "帯筋"
               Select Case UCase(F_RAN(鉄筋径$))
               Case "D10":  W1 = 0.56:  a1 = 0.7133: D1 = 70:   B1 = 60:  L1 = 170: r1 = 110: L2 = 173: r2 = 30: L3 = 110:  KHL = 300
               Case "D13":  W1 = 0.995: a1 = 1.267:  D1 = 93:   B1 = 64:  L1 = 210: r1 = 140: L2 = 220: r2 = 40: L3 = 150:  KHL = 390
               Case "D16":  W1 = 1.56:  a1 = 1.986:  D1 = 116:  B1 = 68:  L1 = 250: r1 = 170: L2 = 267: r2 = 50: L3 = 180:  KHL = 480
               Case "D19":  W1 = 2.25:  a1 = 2.865:  D1 = 139:  B1 = 82:  L1 = 300: r1 = 200: L2 = 314: r2 = 60: L3 = 220:  KHL = 570
     
               Case "D22":  W1 = 3.04:  a1 = 3.871:  D1 = 162:  B1 = 96:  L1 = 350: r1 = 240: L2 = 377: r2 = 70: L3 = 240:  KHL = 660
               Case "D25":  W1 = 3.98:  a1 = 5.067:  D1 = 175:  B1 = 105: L1 = 380: r1 = 270: L2 = 424: r2 = 75: L3 = 280:  KHL = 750
     
               Case "D29":  W1 = 5.04:  a1 = 6.424:  D1 = 209:  B1 = 122: L1 = 450: r1 = 310: L2 = 487: r2 = 90: L3 = 320:  KHL = 870
               Case "D32":  W1 = 6.23:  a1 = 7.942:  D1 = 232:  B1 = 136: L1 = 500: r1 = 340: L2 = 534: r2 = 100: L3 = 350:  KHL = 960

     
               Case "D35":  W1 = 7.51:  a1 = 9.566:  D1 = 245:  B1 = 145: L1 = 530: r1 = 370: L2 = 581: r2 = 105: L3 = 350::  KHL = 1050
               Case "D38":  W1 = 8.95:  a1 = 11.4:   D1 = 268:  B1 = 159: L1 = 580: r1 = 400: L2 = 628: r2 = 115: L3 = 350::  KHL = 1140
               Case "D41":  W1 = 10.5:  a1 = 13.4:   D1 = 291:  B1 = 173: L1 = 630: r1 = 440: L2 = 691: r2 = 125: L3 = 350::  KHL = 1230
               Case "D51":  W1 = 15.9:  a1 = 20.27:  D1 = 361:  B1 = 213: L1 = 780: r1 = 540: L2 = 848: r2 = 155: L3 = 350::  KHL = 1530
     
               Case "Φ13":  W1 = 1.04:  a1 = 1.33: D1 = 60:   B1 = 66:  L1 = 160: r1 = 110: L2 = 173: r2 = 30: L3 = 110:  KHL = 500
               Case Else:      W1 = 100: 世er = " 鉄筋径  " + 鉄筋径$ + " がおかしい": If 世誤CK > 99 Then er (世er): Stop
               End Select
         
         
         Case Else
                世er = "System  加工Type$  [" + 加工Type$ + "] がおかしい": If 世誤CK > 99 Then er (世er): Stop
         End Select
     Case "SD490": 世er = " 鉄筋材種$  " + 鉄筋材種$ + " がおかしい": If 世誤CK > 99 Then er (世er): Stop
     Case Else:  世er = " 鉄筋材種$  " + 鉄筋材種$ + " がおかしい": If 世誤CK > 99 Then er (世er): Stop
     End Select
     
     Select Case UCase(項目$)
     Case "W": D11 = W1      ' * 使用
     Case "A": D11 = a1
     Case "D1": D11 = D1     ' * 使用
     Case "B": D11 = B1      ' * 使用
     Case "L1": D11 = L1     ' * 使用
     Case "L2": D11 = L2
     Case "L3": D11 = L3
     Case "R1": D11 = r1     ' * 使用
     Case "R2": D11 = r2
     Case "KHL": D11 = KHL   ' * 使用
     Case Else: Stop
     End Select
     
     FP_橋脚_鉄筋_Data = D11
     End Function

Function F橋脚s(ByVal X As Single) As String
    '土木橋脚用の切り上げ
    F橋脚s = Int(X + 0.9)
    End Function

Function F橋脚(X) As String
    '土木橋脚用の切り上げ
    F橋脚 = Int(X + 0.9)
    End Function
Function F橋2(X) As String
    F橋2 = F9(F橋脚2(X))
    End Function

Function F橋脚2(X) As String
    '土木橋脚用の切り上げ
    F橋脚2 = 10 * Int((X + 9) / 10)
    End Function

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　UXF 関数　                            　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　2002.10.6 　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

Private Function UF$(XXX)
     'UF$ = Format$(XX, "0.000")
     UF$ = Trim(str(XXX))
     End Function



Function UXF_用紙size(用紙size$)
    ' 図 の　用紙size  A2  A1
    UXF_用紙size = "[用紙size:" + 用紙size$ + "]"
    End Function
Function UXF_変換type(変換type$)
    ' 図 の　変換type  Dxf  Sxf
    UXF_変換type = "[変換type:" + 変換type$ + "]"
    End Function
Function UXF_Datatype(DataType$)
    ' 図 の Datatype Proter  Printer
    UXF_Datatype = "[Datatype:" + DataType$ + "]"
    End Function

Function UXF_Scale(図Scale)
    ' 図 の　Scaleを指定します  exp  100  40 ※ File のみでﾃﾞｰﾃを作成の場合
    UXF_Scale = "[Scale:" + UF(図Scale) + "]"
    End Function
Function UXF_Scale_sub(図Scale)
    ' 図 の Sub Scaleを指定します  exp  100  40 ※ File のみでﾃﾞｰﾃを作成の場合
    UXF_Scale_sub = "[Scaleｻﾌﾞ:" + UF(図Scale) + "]"
    End Function
Function UXF_Scale_Reset()
    ' 図 の　Scaleを ﾘｾｯﾄします
    UXF_Scale_Reset = "[Scaleﾘｾｯﾄ:]"
    End Function

Function UXF_Start(FN$)
     ' ※ File のみでﾃﾞｰﾃを作成の場合
     UXF_Start = "[Start:" + FN$ + "]"
     End Function


Function UXF_原点(X0, Y0)
    ' 用紙の原点の位置を指定する 単位mm
    UXF_原点 = "[原点:" + UF(X0) + "," + UF(Y0) + "]"
    End Function

'┌─────────────────────────────────────────────────────────────────┐
'│   Layer                                                                                                                          │
'└─────────────────────────────────────────────────────────────────┘

Function UXF_Layer名登録(Layer$)
    ' 図 の ﾚｲﾔ名の登録 ※ File のみでﾃﾞｰﾃを作成の場合
    UXF_Layer名登録 = "[Layer:" + Layer$ + "]"
    End Function

Function UXF_Layer(Layer$)
    ' 図 の 線,点,円,arc,文字 Layerを指定します  exp
    UXF_Layer = "[ﾚ:" + Layer$ + "]"
    End Function
Function UXF_Layer_線(Layer$):    UXF_Layer_線 = "[ﾚ線:" + Layer$ + "]":    End Function
Function UXF_Layer_点(Layer$):    UXF_Layer_点 = "[ﾚ点:" + Layer$ + "]":    End Function
Function UXF_Layer_円(Layer$):    UXF_Layer_円 = "[ﾚ円:" + Layer$ + "]":    End Function
Function UXF_Layer_arc(Layer$):    UXF_Layer_arc = "[ﾚarc:" + Layer$ + "]":    End Function
Function UXF_Layer_文字(Layer$):   UXF_Layer_文字 = "[ﾚ文字:" + Layer$ + "]":    End Function
Function UXF_Layer_寸法(Layer$):   UXF_Layer_寸法 = "[ﾚ寸法:" + Layer$ + "]":    End Function
Function UXF_Layer_ハッチ(Layer$): UXF_Layer_ハッチ = "[ﾚﾊｯﾁ:" + Layer$ + "]":   End Function


'┌─────────────────────────────────────────────────────────────────┐
'│   線種                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Function UXF_線種(線種$)
    ' 図 の 線種を指定します  exp  CON  DOT  CHA
    '
    UXF_線種 = "[線種:" + 線種$ + "]"
    End Function
Function UXF_線種_寸法(寸法線種$):    UXF_線種_寸法 = "[線種寸法:" + 寸法線種$ + "]":    End Function
Function UXF_線種_ハッチ(ハッチ線種$):    UXF_線種_ハッチ = "[線種ﾊｯﾁ:" + ハッチ線種$ + "]":    End Function

'┌─────────────────────────────────────────────────────────────────┐
'│   色                                                                                                                             │
'└─────────────────────────────────────────────────────────────────┘
Function UXF_色(色$)
    ' 図 (線,点,円,arc,文字)の 色を指定します  exp    黄   緑   空   青   紫   白
    '
    UXF_色 = "[色:" + 色$ + "]"
    End Function
Function UXF_色_線(色$):  UXF_色_線 = "[色線:" + 色$ + "]": End Function
Function UXF_色_点(色$):  UXF_色_点 = "[色点:" + 色$ + "]": End Function
Function UXF_色_円(色$):  UXF_色_円 = "[色円:" + 色$ + "]": End Function
Function UXF_色_arc(色$):  UXF_色_arc = "[色arc:" + 色$ + "]": End Function
Function UXF_色_文字(文字色$): UXF_色_文字 = "[色文字:" + 文字色$ + "]": End Function
Function UXF_色_寸法(寸法色$): UXF_色_寸法 = "[色寸法:" + 寸法色$ + "]": End Function
Function UXF_色_ハッチ(ハッチ色$): UXF_色_ハッチ = "[色ﾊｯﾁ:" + ハッチ色$ + "]": End Function



'┌─────────────────────────────────────────────────────────────────┐
'│   移動                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Function Uxf_P(X, Y)
    ' 位置指定絶対座標 ﾎﾟｲﾝﾄ移動
    Uxf_P = "[P:" + UF(X) + "," + UF(Y) + "]"
    End Function
Function Uxf_sP(DX, DY)
    ' 現在位置からの位置指定(相対座標) (Dx,Dy) ﾎﾟｲﾝﾄ移動
    Uxf_sP = "[p:" + UF(DX) + "," + UF(DY) + "]"
    End Function
Function Uxf_sPm(DX, DY)
    ' 現在位置からの位置指定(相対座標) (Dx,Dy) ﾎﾟｲﾝﾄ移動  (Dx,Dy)は用紙のmm
    Uxf_sPm = "[pm:" + UF(DX) + "," + UF(DY) + "]"
    End Function

Function Uxf_me(No)
    ' 現在位置(X,Y座標)の位置をＭemoryに記憶
    Uxf_me = "[me:" + UF(No) + "]"
    End Function
Function Uxf_mx(No)
    ' 現在位置(X座標)の位置をＭemoryに記憶
    Uxf_mx = "[mx:" + UF(No) + "]"
    End Function
Function Uxf_my(No)
    ' 現在位置(X座標)の位置をＭemoryに記憶
    Uxf_my = "[my:" + UF(No) + "]"
    End Function
Function Uxf_re(No)
    ' ﾎﾟｲﾝﾄ位置(X,Y座標)を Ｍemoryの記憶位置にｾｯﾄ
    Uxf_re = "[re:" + UF(No) + "]"
    End Function
Function Uxf_rx(No)
    ' ﾎﾟｲﾝﾄ位置(X座標)を Ｍemoryの記憶位置にｾｯﾄ
    Uxf_rx = "[rx:" + UF(No) + "]"
    End Function
Function Uxf_ry(No)
    ' ﾎﾟｲﾝﾄ位置(Y座標)を Ｍemoryの記憶位置にｾｯﾄ
    Uxf_ry = "[ry:" + UF(No) + "]"
    End Function



'┌─────────────────────────────────────────────────────────────────┐
'│   線                                                                                                                             │
'└─────────────────────────────────────────────────────────────────┘
Function Uxf_線(XL, YL)
    ' 現在位置から線を描く　ﾎﾟｲﾝﾄ移動
    Uxf_線 = "[L:" + UF(XL) + "," + UF(YL) + "]"
    End Function
Function Uxf_Li(X1, Y1, X2, Y2)
    ' (X1,Y1) - (X2,Y2) に線を描く　 (X2, Y2)にﾎﾟｲﾝﾄ移動
    Uxf_Li = "[Li:" + UF(X1) + "," + UF(Y1) + "," + UF(X2) + "," + UF(Y2) + "]"
    End Function
Function Uxf_線_切断(X1, Y1, X2, Y2, b, D)
    ' (X1,Y1) - (X2,Y2) に線の切断を描く　 (X2, Y2)にﾎﾟｲﾝﾄ移動
    ' B 切断幅 mm    D 切断線高さmm
    Uxf_線_切断 = "[線切断:" + UF(X1) + "," + UF(Y1) + "," + UF(X2) + "," + UF(Y2) + "," + UF(b) + "," + UF(D) + "]"
    End Function


'┌─────────────────────────────────────────────────────────────────┐
'│   点                                                                                                                             │
'└─────────────────────────────────────────────────────────────────┘
Function UXF_点()
    ' 現在位置に点を描く
    UXF_点 = "[点:]"
    End Function
'┌─────────────────────────────────────────────────────────────────┐
'│   円,ｱｰﾁ                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Function Uxf_Cir(r)
    ' 現在位置に円(半径 r)を描く
    Uxf_Cir = "[Cir:" + UF(r) + "]"
    End Function
Function Uxf_○(D)
    ' 現在位置に円(直径 D)を描く D 用紙mm
    Uxf_○ = "[○:" + UF(D) + "]"
    End Function
Function Uxf_●(D)
    ' 現在位置に●(直径 D)を描く D 用紙mm
    Uxf_● = "[●:" + UF(D) + "]"
    End Function

Function Uxf_Arc_1(r, r1, r2)
    ' 現在位置に 半径rのｱｰﾁを  r1(ﾄﾞ) から r2(ﾄﾞ) へ描く
    Uxf_Arc_1 = "[Arc1:" + UF(r) + "," + UF(r1) + "," + UF(r2) + "]"
    End Function
Function Uxf_Arc_3(X2, Y2, X3, Y3)
    ' 3点を通るｱｰﾁを描く  X1,Y1は現在のPoint  PointはX3,Y3に移動
    Uxf_Arc_3 = "[Arc3:" + UF(X2) + "," + UF(Y2) + "," + UF(X3) + "," + UF(Y3) + "]"
    End Function




'┌─────────────────────────────────────────────────────────────────┐
'│   文字                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Function Uxf_Msize(文字size)
    ' 文字Sizeを指定します　mm
    Uxf_Msize = "[Msize:" + UF(文字size) + "]"
    End Function
Function Uxf_Msize_寸法(文字size)
    ' 文字Sizeを指定します　mm
    Uxf_Msize_寸法 = "[Msize寸法:" + UF(文字size) + "]"
    End Function

Function UXF_M_Ofset(文字位置$, MdxL, MdyL)
    ' MdxL, MdyL  Ofset mm
    ' 文字位置 LU  CU  RU
    ' 文字位置 LC  CC  RC
    ' 文字位置 LD  CC  RD
    UXF_M_Ofset = "[文字ofset:" + 文字位置$ + "," + UF(MdxL) + "," + UF(MdyL) + "]"
    End Function
Function Uxf_M(角度, 文字位置$, Moj$)
    ''[字:Dx,Dy,角度,文字位置,Moj$]
    ' MdxL, MdyL  Ofset mm で定義
    ' 角度(度) 文字の角度
    ' 文字位置 LU  CU  RU
    ' 文字位置 LC  CC  RC
    ' 文字位置 LD  CC  RD
    Uxf_M = "[字:0,0," + UF(角度) + "," + 文字位置$ + "," + Moj$ + "]"
    End Function
Function UXF_M_○(D, 角度, Moj$)
    ' 文字は ○ のｾﾝﾀｰ
    ' D 円の直径mm
    ' 角度(度) 文字の角度
    UXF_M_○ = "[文字○:" + UF(D) + "," + UF(角度) + "," + Moj$ + "]"
    End Function
Function UXF_M_□(b, D, 角度, Moj$)
    ' 文字は □ のｾﾝﾀｰ
    ' B 幅mm         D 高さmm
    ' 角度(度) 文字の角度
    UXF_M_□ = "[文字□:" + UF(b) + "," + UF(D) + "," + UF(角度) + "," + Moj$ + "]"
    End Function
Function UXF_M_Line(l, 角度, Moj$)
    ' 文字は Line のｾﾝﾀｰ
    ' L  Under Line 幅mm  L=0 の場合 文字幅+4mm
    ' 角度(度) 文字の角度
    UXF_M_Line = "[文字Line:" + UF(l) + "," + UF(角度) + "," + Moj$ + "]"
    End Function



'┌─────────────────────────────────────────────────────────────────┐
'│   図形                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'
    ' 現在位置に 図形を描く
    ' 角度 (度)  時計回り　+
    ' Hat$   Y   図形に ﾊｯﾁを入れる

Function Uxf_断面(断面$, 角度, Hat$, Optional 幅倍率 As Single, Optional 成倍率 As Single)
    If 幅倍率 = 0 Then 幅倍率 = 1
    If 成倍率 = 0 Then 成倍率 = 1
    Uxf_断面 = "[断面:" + 断面$ + "," + UF(角度) + "," + Hat$ + "," + UF(幅倍率) + "," + UF(成倍率) + "]"
    End Function


Function Uxf_B(BX, BY)
    Uxf_B = "[B:" + UF(BX) + "," + UF(BY) + "]"
    End Function
Function UXF_□(b, D, 角度, Hat$)
    UXF_□ = "[□:" + UF(b) + "," + UF(D) + "," + UF(角度) + "," + Hat$ + "]"
    End Function
Function UXF_□鋼(□鋼$, 角度, Hat$)
    UXF_□鋼 = "[□鋼:" + □鋼$ + "," + UF(角度) + "," + Hat$ + "]"
    End Function
Function UXF_H鋼(H鋼$, 角度, Hat$)
    UXF_H鋼 = "[H鋼:" + H鋼$ + "," + UF(角度) + "," + Hat$ + "]"
    End Function
Function UXF_L鋼(L鋼$, 角度, Hat$)
    UXF_L鋼 = "[L鋼:" + L鋼$ + "," + UF(角度) + "," + Hat$ + "]"
    End Function
Function UXF_溝鋼(溝鋼$, 角度, Hat$)
    UXF_溝鋼 = "[溝鋼:" + 溝鋼$ + "," + UF(角度) + "," + Hat$ + "]"
    End Function
Function UXF_I鋼(I鋼$, 角度, Hat$)
    UXF_I鋼 = "[I鋼:" + I鋼$ + "," + UF(角度) + "," + Hat$ + "]"
    End Function

Function UXF_矢印_size(矢印size)
    ' 矢印のsizeを指定 mm
    UXF_矢印_size = "[矢印size:" + UF(矢印size) + "]"
    End Function

Function UXF_矢印_角度(矢印角度)
    ' 矢印の角度 (度) を指定
    UXF_矢印_角度 = "[矢印角度:" + UF(矢印角度) + "]"
    End Function

Function UXF_矢印(矢Type$, 角度)
    ' 現在位置に 矢印を描く
    ' 矢Type$  LR  L R
    ' 角度 (度)  角度=0 X軸 +方向
    UXF_矢印 = "[矢印:" + 矢Type$ + "," + UF(角度) + "]"
    End Function


Function Uxf_橋脚鉄筋(橋脚鉄筋径$)
    ' 現在位置に  鉄筋 を描く
    Uxf_橋脚鉄筋 = "[橋脚鉄筋:" + 橋脚鉄筋径$ + "]"
    End Function

'橋脚鉄筋
'┌─────────────────────────────────────────────────────────────────┐
'│   寸法線                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Function UXF_寸法_小数点桁数(小数点桁数)
    ' 矢印のsizeを指定 mm
    UXF_寸法_小数点桁数 = "[寸小数点桁数:" + UF(小数点桁数) + "]"
    End Function
Function UXF_寸法_矢印_size(矢印size)
    ' 矢印のsizeを指定 mm
    UXF_寸法_矢印_size = "[寸矢印size:" + UF(矢印size) + "]"
    End Function

Function UXF_寸法_矢印_角度(矢印角度)
    ' 角度 (度) を指定
    UXF_寸法_矢印_角度 = "[寸矢印角度:" + UF(矢印角度) + "]"
    End Function
Function UXF_寸法_端部(端部Mark$)
    ' 寸法線の端部Mark$ の指定   exp  .  矢  上矢   下矢
    UXF_寸法_端部 = "[寸端部:" + 端部Mark$ + "]"
    End Function
Function UXF_寸法_2点(X1, Y1, X2, Y2, S引出線, E引出線, 文字$)
    ' (X1,Y1) - (X2,Y2) に寸法線を描く　 (X2, Y2)にﾎﾟｲﾝﾄ移動
    ' S引出線  Startの引出線の長さ mm
    ' E引出線  Endの引出線の長さ mm
    ' 点$ = "SE"
    ' 文字$ の入力がある場合は 寸法値を文字に置き換える
    UXF_寸法_2点 = "[寸:" + UF(S引出線) + ":" + UF(X1) + "," + UF(Y1) + "," + UF(X2) + "," + UF(Y2) + "," + UF(E引出線) + "," + 文字$ + "]"
    End Function
Function UXF_寸法_Arc(r, r1, r2, S引出線, E引出線, 点$, 文字$)
    ' 現在位置に 半径rのｱｰﾁを  r1(ﾄﾞ) から r2(ﾄﾞ) へ描く
    ' ﾎﾟｲﾝﾄ移動
    ' S引出線  Startの引出線の長さ mm
    ' E引出線  Endの引出線の長さ mm
    ' 点$ = "<>"
    ' 文字$ の入力がある場合は 寸法値を文字に置き換える
    UXF_寸法_Arc = "[寸Arc1:" + UF(r) + "," + UF(r1) + "," + UF(r2) + "," + UF(S引出線) + "," + UF(E引出線) + "," + 点$ + "," + 文字$ + "]"
    End Function

'┌─────────────────────────────────────────────────────────────────┐
'│   Mark                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Function UXF_Mark(Mark$, 倍率)
    ' Mark$　　　exp  D13  D22
    ' 倍率    Markの図倍率
    UXF_Mark = "[Mark:" + Mark$ + "," + UF(倍率) + "]"
    End Function
Function UXF_鉄筋_建築(鉄筋$, 倍率)
    ' 鉄筋$　　　exp  D13  D22
    ' 倍率    Markの図倍率
    UXF_鉄筋_建築 = "[鉄筋建築:" + 鉄筋$ + "," + UF(倍率) + "]"
    End Function
Function Uxf_鉄筋_土木(鉄筋$, 倍率)
    ' 鉄筋$　　　exp  D13  D22
    ' 倍率    Markの図倍率
    Uxf_鉄筋_土木 = "[鉄筋土木:" + 鉄筋$ + "," + UF(倍率) + "]"
    End Function
Function Uxf_切断M1(X1, Y1, X2, Y2, W1, h1)
    '[切断M1:X1,Y1,X2,Y2,W,H]   線 (X1,Y1) - (X2,Y2) に切断Mark1を付ける W 幅mm  H 高さmm
    Uxf_切断M1 = "[切断M1:" + UF(X1) + "," + UF(Y1) + "," + UF(X2) + "," + UF(Y2) + "," + UF(W1) + "," + UF(h1) + "]"
    End Function





