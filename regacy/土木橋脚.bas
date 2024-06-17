Attribute VB_Name = "土木橋脚"
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　土木橋脚    　　　　                                      　　　　　　　　　　　  　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　2003.11.18   　　　　　　　　　　　　　　　               　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
'      ERR*  2箇所
  'Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)

        ' 加工Type$    標準   帯筋  Joint長さ 及び ﾌｯｸ r に影響する
    
    
    
    '世_柱筋間隔倍率i=2.5
    
    'Sub P_橋脚_柱_主筋(Data1$)
         ' exp  17xC2+16xC1+15xC4+14xC3
         ' exp  C1

         ' 柱筋_柱筋種類数
         ' 柱筋_Ddata$(i)          Data i番目の Data
         ' 柱筋_D柱筋本数(i)       Data i番目の柱筋本数
         ' 柱筋_D柱筋番号(i)       Data i番目の柱筋番号
         ' 柱筋_柱筋Noi(i)        i番目の柱筋番号
         ' 柱筋_柱筋Σ数           全柱筋本数
     

    'Sub 橋脚_鉄筋_ck(項目$,加工Type$, 鉄筋Data$)
        ' 項目$
        ' 鉄筋_Data数           Dataの個数
        ' 鉄筋_Property$        鉄筋特性     exp  $梁下補強筋
        ' 鉄筋_平面$            XY  YZ  ZX   鉄筋の加工平面
        ' 鉄筋_径本数$          鉄筋本数,径  exp  6+5+1-D38    18-φ13-SR235    12-D29-D25
        ' 鉄筋_径$              径  exp  D38    φ13
        ' 鉄筋_径i              D22 --> 22
        ' 鉄筋_位置$            鉄筋_位置    exp  P127
        ' 鉄筋_S位置
        ' 鉄筋_X位置$           鉄筋_X方向位置    exp  PX127
        
        ' 鉄筋_pit$             鉄筋 ﾋﾟｯﾁ    exp  @1200+6x200+4x150+40x150+12x300
        ' 鉄筋_X_pit$           鉄筋 X方向 ﾋﾟｯﾁ    exp  @X-1850+15x250
        ' 鉄筋_Y_pit$           鉄筋 Y方向 ﾋﾟｯﾁ    exp  @Y-1000+4x500
        
        ' 鉄筋_L$               鉄筋 長さ    exp  Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
        ' 鉄筋_B$               鉄筋 長さ    exp  B1678+J+2677
        ' 鉄筋_D$               鉄筋 長さ    exp  D1678+J+2677
        ' 鉄筋_G$               鉄筋 長さ    exp  D1678+J+2677
        
        
        ' 鉄筋_X$               C Hoop 鉄筋 長さ    exp  X3850       X750+5x625    混用
        ' 鉄筋_Y$               C Hoop 鉄筋 長さ    exp  Y1120x2850
        
        
        ' 鉄筋_H$               鉄筋 高さ    exp  H70
        ' 鉄筋_n$               鉄筋 個数 ｽﾍﾟｰｻ   exp  n6
        ' 鉄筋_定着$            鉄筋 定着長さ  exp A1220
        ' 鉄筋_H径$             鉄筋 ﾌｰﾌﾟ直径  exp 径1242
        ' 鉄筋_K位置$           鉄筋 被ﾘ位置   exp K101   鉄筋_SK位置=101
          
        ' 鉄筋_Z位置            杭ﾌｰﾌﾟ Start位置  exp Z-1100
          
        ' 鉄筋_r                鉄筋_r   梁  下鉄筋(あご部分) です    CHoop r
          
         ' 鉄筋_種別$           exp SD390  SD290
    
    
    
    'Sub 橋脚_鉄筋_径_数_ck(Data1$)
        ' Data1$                 入力exp 16+5+1-D38     24-D38-D32-D29
        ' 橋脚鉄筋径$(i)         鉄筋径   exp  D22  D32  φ13
        ' 鉄筋径_種別$           SR235
        ' 鉄筋数_n               鉄筋本数の指定数
        ' 鉄筋数_n1              1番目(X方向鉄筋)の鉄筋本数
        ' 鉄筋数_n2              2番目(Y方向鉄筋)の鉄筋本数
        ' 鉄筋数_n3              3番目(角ｺｰﾅｰ筋)の鉄筋本数
        ' 鉄筋数_Σn             全 鉄筋本数
        ' 鉄筋径_種別数i         鉄筋径の入力_種別数i   exp 24-D38-D32-D29 --> 3
    
    
    ' Sub 橋脚_鉄筋_位置_ck(Data1$)
        ' Data1$     入力exp 155+40x125+40x125+155    ±125+7x250
        ' 鉄筋位置_Data数        Dataの個数
        ' 鉄筋位置_頭符号$       ""  OR  "±"
        ' 鉄筋位置_Data$(i)      i番目の位置のData
        ' 鉄筋位置_n(i)          i番目の位置の個数
        ' 鉄筋位置_p(i)          i番目の位置 mm
        ' 鉄筋位置_L(i)
        ' 鉄筋位置_ΣL           全 Data_位置_L
     
        ' 鉄筋位置_Σ数          位置(部品)のΣ部品個数
        ' 鉄筋位置_位置(ii)      部品の Startからの位置  ii=1 To Σ部品個数
     
    'Sub 橋脚_鉄筋_X位置_ck(Data1$)
        ' Data1$     入力exp 155+40x125+40x125+155    ±125+7x250
        ' 鉄筋X位置_Data数        Dataの個数
        ' 鉄筋X位置_頭符号$       ""  OR  "±"
        ' 鉄筋X位置_Data$(i)      i番目のX位置のData
        ' 鉄筋X位置_n(i)          i番目のX位置の個数
        ' 鉄筋X位置_p(i)          i番目のX位置 mm
        ' 鉄筋X位置_L(i)
        ' 鉄筋X位置_ΣL           全 Data_X位置_L
     
        ' 鉄筋X位置_Σ数          X位置(部品)のΣ部品個数
        ' 鉄筋X位置_位置(ii)      部品の StartからのX位置  ii=1 To Σ部品個数
        ' 鉄筋X位置_Typei(ii)     加工Type (部品番号)
     
     
     'Sub 橋脚_鉄筋_Pit_ck(Data1$)
        ' Data1$     入力exp 155+40x125+40x125+155      中止 ±125+7x250
        '                    300|1+4x150|2+3x200    __x__|Typei
        
        ' 鉄筋P_Data数        Dataの個数
        ' 鉄筋P_頭符号$       ""  OR  "±"
        ' 鉄筋P_Data$(i)      i番目のﾋﾟｯﾁのData
        ' 鉄筋P_n(i)          i番目のﾋﾟｯﾁの個数
        ' 鉄筋P_p(i)          i番目のﾋﾟｯﾁ mm
        ' 鉄筋P_L(i)
        ' 鉄筋P_Σ数           全 Data_Pit  ±
     
        ' 鉄筋P_Σ数           Pit(部品)のΣ部品個数
        ' 鉄筋P_位置(ii)      部品の Startからの位置  ii=1 To Σ部品個数
        ' 鉄筋P_ΣL           全 Data_Pit の合計
        ' 鉄筋P_Typei(ii)     加工Type (部品番号)
     
     'Sub 橋脚_鉄筋_L_ck(加工Type$,Data1$)
                ' ﾌｯｸ長さの計算の橋脚鉄筋径$(鉄筋L_部品数) が必要
        ' 橋脚_鉄筋θ で X,Y 方向考慮
        
        ' Data1$                  exp 2746～2246+(5655+4655)+2746～2246
        ' 鉄筋L_Data1$          : ﾃﾞｯﾊﾞｯｸ用 に使用  exp 2746～2246+(5655+4655)+2746～2246
        ' 鉄筋L_Data数           Dataの個数
        ' 鉄筋L_Data$(i)        i番目のData$    exp  F   2746～2246    (5655+4655)
        ' 鉄筋L_Type$(i)        i番目のData_Type   L  F  W  K  J  r
        ' 鉄筋L_L(i)            i番目のData_L
        ' 鉄筋L_r(i)            i番目の　Data　r
        ' 鉄筋L_r角度(i)        i番目の  Data  r角度
        ' 鉄筋L_r_X0(i)         i番目の　Data　r の中心 X0
        ' 鉄筋L_r_Y0(i)         i番目の　Data　r の中心 Y0
        
        ' 鉄筋L_曲角度(i)       i番目の  Data  曲げ角度
        ' 鉄筋L_全ΣL           全 Data_L    Joint  ﾌｯｸ含まず
        
        ' 鉄筋L_Start角度       鉄筋加工のStart鉄筋の角度　　入力がない場合 90
        ' 鉄筋L_X(i)            i番目のData$ Start X座標  Dataの個数+1  [座標 注意]
        ' 鉄筋L_Y(i)            i番目のData$ Start Y座標  Dataの個数+1  [座標 注意]
       
       
        ' 鉄筋L_Xmin            X座標min
        ' 鉄筋L_Xmax            X座標max
        ' 鉄筋L_Ymin            Y座標min
        ' 鉄筋L_Ymax            Y座標max
        ' 鉄筋L_Xcen            X座標center
        ' 鉄筋L_Ycen            Y座標center
        ' 鉄筋L_XL              鉄筋L_XL=鉄筋L_Xmax-鉄筋L_Xmin   [座標 注意]
        ' 鉄筋L_YL              鉄筋L_YL=鉄筋L_Ymax-鉄筋L_Ymin   [座標 注意]
           
        ' 鉄筋L_部品数      　  鉄筋L_部品数 鉄筋の分割数  ﾙｰﾌﾟ筋は +1
        ' 鉄筋L_ΣL(i)          格鉄筋の合計長さ  Jointによる分割
        ' 鉄筋L_部品位置(i) 　  鉄筋L_部品のStart位置    ﾙｰﾌﾟ筋は は別
           
         '鉄筋L_W数           ' ｶﾞｽ圧接数
         '鉄筋L_K数           ' 機械継ぎ手
           

     
     
     
    
    
    
              
         Public EER1 As Integer
'Public ShoriTyuuX               As ShoriTyuu
Private ZZZ5 As Integer
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の 設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
         Dim Project_Titles As String
         Dim Project_契約番号s As String
         
         
         
         Dim 世_柱筋間隔倍率i As Single
         
         '■ 躯体
                 Dim 躯体_Data数 As Integer:        'Dataの個数
                 Dim 躯体_Data$(50):                'i番目のData
                 Dim 躯体_D(50) As Single:          'i番目のDataの値
                 Dim Σ躯体L:                       '躯体Data$ を計算したもの

         '■ 鉄筋 被り Data
                 Dim 被り_Data数 As Integer:        'Dataの個数
                 Dim 被り_Data$(50):                'i番目のData
                 Dim 被り_D(50) As Single:          'i番目のDataの値
        
                 
         '■ 鉄筋 Data
                 '                                   P  @  L  H  n  は Data$ には入れない
                 Dim 鉄筋_Data数:                   'Dataの個数
        
                 Dim 鉄筋Ds$(60):                   ' Temp
                 Dim 鉄筋Di(60):                    ' Temp
                 Dim 鉄筋_Property$:                '鉄筋特性     exp  $梁下補強筋
                 Dim 鉄筋_平面$:                    'XY  YZ  ZX   鉄筋の加工平面
                 Dim 鉄筋_径本数$:                  '鉄筋本数,径  exp  6+5+1-D38    18-φ13-SR235
                 Dim 鉄筋_径$:                      ' 径  exp  D38    φ13
                 Dim 鉄筋_径i As Single             ' D19    ---> 19    D22 --> 22
                 Dim 鉄筋_位置$:                    '鉄筋_位置    exp  P127
                 Dim 鉄筋_S位置 As Single:          '鉄筋_位置 の計算結果
                 
                 Dim 鉄筋_X位置$:                   '鉄筋_X位置    exp  PX127
                 Dim 鉄筋_定着$:                    '鉄筋_定着    exp A=1220
                 Dim 鉄筋_S定着 As Single:          '鉄筋_定着 の計算結果
                 Dim 鉄筋_H径$:                     '鉄筋 ﾌｰﾌﾟ直径  exp 径1242
                 Dim 鉄筋_SH径 As Single:           '鉄筋_H径 の計算結果
                 Dim 鉄筋_K位置$:                   '鉄筋 被ﾘ位置  exp K101
                 Dim 鉄筋_SK位置 As Single:         '鉄筋_K位置 の計算結果
        
                 Dim 鉄筋_pit$:                     '鉄筋 ﾋﾟｯﾁ    exp  @1200+6x200+4x150+40x150+12x300
                 
                 Dim 鉄筋_L$:                       '鉄筋 長さ    exp  Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
                 Public 鉄筋_B$:                       '鉄筋 長さ    exp  B340+J564+340
                 Dim 鉄筋_D$:                       '鉄筋 長さ    exp  D340+J564+340
                 Dim 鉄筋_G$:                       '鉄筋 長さ    exp  D340+J564+340
                 Dim 鉄筋_X$:                       'C Hoop鉄筋 長さ    exp
                 Dim 鉄筋_Y$:                       'C Hoop鉄筋 長さ    exp
                 
                 Dim 鉄筋_XX As Single:             '  VAL(鉄筋_X$)  修正あり
                 Dim 鉄筋_YY As Single:             '  VAL(鉄筋_Y$)　修正あり
                 
                 Public 鉄筋_H$:                        '鉄筋 高さ    exp  H70
                 
                 Dim 鉄筋_n$:                       '鉄筋 個数    exp  n6
                 Dim 鉄筋_Z位置 As Single:          '杭ﾌｰﾌﾟ Start位置  exp Z-1100
                 Dim 鉄筋_r As Single:                 '鉄筋_r   梁  下鉄筋(あご部分) です
       
                 Dim 橋脚_鉄筋_Mark$(300):
                 Dim 鉄筋_種別$:                    ' exp SD390
         
         
         '■ 鉄筋 etc
         
                 Dim 鉄筋_横被り As Single:         '  鉄筋の横被り   基礎
         
         
         
         '■ 鉄筋_あご筋
                 
                 Dim あご筋_X1 As Single:           ' 梁横面より Start X 位置の距離
                 Dim あご筋_Y1 As Single:           ' 梁上面より Start Y 位置の距離
                 Dim あご筋_X2 As Single:           ' 梁横面より 曲ﾘ点 X座標
                 Dim あご筋_Y2 As Single:           ' 梁上面より 曲ﾘ点 Y座標
                 Dim あご筋_角度  As Single
                 Dim あご筋_LX  As Single
                 Dim あご筋_LY  As Single
                 Dim あご筋_r  As Single
         
         '■ 鉄筋_躯体
                 
                 Dim 鉄筋_○_符号$:                       '○字の   鉄筋符号   Moj1_Moj2_Moj3_Moj4   exp   B_0_2
                 Dim 鉄筋_○_符号1$:                      '○字の   鉄筋符号   D22
                 Dim 鉄筋_○_符号2$:                      '○字の   鉄筋符号   3-D22
                 Dim 鉄筋_○_符号3$:                      '○字の   鉄筋符号   4-D16 x 9400
                 Dim 鉄筋_○_符号4$:                      '○字の   鉄筋符号   D16 x 9400
                 
                 
         '■ 梁 直筋_Stoper開き
                 Public 直筋_Stoper開き_Y As Single:     ' 梁 直筋_Stoperの Y 開き 　ck用
                 Public 直筋_Stoper開き_X As Single:      '直筋_Stoper   の X 開き
         
                 Public 直筋_折曲げ As Single:          '鉄筋の 折曲げ長さ
         
         '■ 柱内 梁筋幅止筋_Stoper開き
                Public 柱内幅止筋_Stoper開き_X As Single   ' 柱内幅止筋_Stoper開き
                Public 柱内幅止筋_Stoper開き_Y As Single   ' 柱内幅止筋_Stoper開き

         
         '■ 柱筋 Data     Sub P_橋脚_柱_主筋2(Data1$)
         
                 Dim 柱筋段差_段差数 As Integer
                 Dim 柱筋段差_Ddata$(30):            'Data i番目の Data
         
         
                 Dim 柱筋_柱筋種類数 As Integer
                 Dim 柱筋_Ddata$(90):               'Data i番目の Data
                 Dim 柱筋_D柱筋本数(90) As Integer: 'Data i番目の柱筋本数
                 Dim 柱筋_D柱筋番号(90) As Integer: 'Data i番目の柱筋番号
                 Dim 柱筋_柱筋Noi(500) As Integer: 'i番目の柱筋番号
                 Dim 柱筋_柱筋Σ数 As Integer:      '全柱筋本数
         
         
         '■ 鉄筋 径本数 Data     Sub 橋脚_鉄筋_径_数_ck(鉄筋_径本数$)
                 Dim 橋脚鉄筋径$(50):               '鉄筋径   exp  D22  D32  φ13
                 Dim 鉄筋径_種別$:                  'SR235
                 Dim 鉄筋数_n As Integer:           '鉄筋数の指定数
                 Dim 鉄筋数_n1 As Integer:          '1番目(X方向鉄筋)の鉄筋数
                 Dim 鉄筋数_n2 As Integer:          '2番目(Y方向鉄筋)の鉄筋数
                 Dim 鉄筋数_n3 As Integer:          '3番目(角ｺｰﾅｰ筋)の鉄筋数
                 Dim 鉄筋数_Σn As Integer:         '全 鉄筋数
                 Dim 鉄筋径_種別数i As Integer:     '鉄筋径の入力_種別数i   exp 24-D38-D32-D29 --> 3
        
         '■ 鉄筋 配置 位置 Data     鉄筋_位置$
                 Dim 鉄筋位置_Data数 As Integer:    '   Dataの個数
                 Dim 鉄筋位置_頭符号$:              ' ""  OR  "±"
                 Dim 鉄筋位置_Data$(200):           'i番目の位置のData
                 Dim 鉄筋位置_n(200) As Integer:    'i番目の位置の個数
                 Dim 鉄筋位置_p(200) As Single:     'i番目の位置 mm
                 Dim 鉄筋位置_L(200) As Single:
                 Dim 鉄筋位置_ΣL As Single:        '全 Data_位置_L
        
                 Dim 鉄筋位置_Σ数 As Integer:      '位置(部品)のΣ部品個数
                 Dim 鉄筋位置_位置(2000) As Single: '部品の Startからの位置  ii=1 To Σ部品個数
        
         '■ 鉄筋 配置 X位置 Data     鉄筋_X位置$
                 Dim 鉄筋X位置_Data数 As Integer:    '   Dataの個数
                 Dim 鉄筋X位置_頭符号$:              ' ""  OR  "±"
                 Dim 鉄筋X位置_Data$(200):           'i番目の位置のData
                 Dim 鉄筋X位置_n(200) As Integer:    'i番目の位置の個数
                 Dim 鉄筋X位置_p(200) As Single:     'i番目の位置 mm
                 Dim 鉄筋X位置_L(200) As Single:
                 Dim 鉄筋X位置_ΣL As Single:        '全 Data_位置_L
        
                 Dim 鉄筋X位置_Σ数 As Integer:      '位置(部品)のΣ部品個数
                 Dim 鉄筋X位置_位置(2000) As Single: '部品の Startからの位置  ii=1 To Σ部品個数
                 Dim 鉄筋X位置_Typei(2000) As Integer     ' 加工Type (部品番号)
        
        
        
         '■ 鉄筋 配置　Pit Data 2    鉄筋_Pit$        ' Data1$       入力exp   250+32x125 500+28x125
                 Dim 鉄筋P段差_Data数 As Integer:       '段差 Dataの個数
                 Dim 鉄筋P段差_Data$(30):      'P段差 i番目の位置のData
         
         
         '■ 鉄筋 配置　Pit Data     鉄筋_Pit$
                 Dim 鉄筋P_Data数 As Integer:       'Dataの個数
                 Dim 鉄筋P_頭符号$:                 ' ""  OR  "±"
                 Dim 鉄筋P_Data$(900):              'i番目のﾋﾟｯﾁのData
                 Dim 鉄筋P_n(900) As Integer:       'i番目のﾋﾟｯﾁの個数
                 Dim 鉄筋P_p(900) As Single:        'i番目のﾋﾟｯﾁ mm
                 Dim 鉄筋P_L(900) As Single:
                 Dim 鉄筋P_ΣL As Single:           '全 Data_Pit の合計
                 Dim 鉄筋P_Σ数 As Integer:         'Pit(部品)のΣ部品個数
                 Dim 鉄筋P_位置(3000) As Single:    '部品の Startからの位置  ii=1 To Σ部品個数
                 Dim 鉄筋P_Typei(900) As Integer    '部品番号
       
       
         '■ 鉄筋加工図 Data      Sub 橋脚_鉄筋_L_ck(加工Type$,鉄筋_L$)
                 
                 Dim 橋脚_鉄筋θ As Single:         '鉄筋加工方向の Start角度
                 Dim 鉄筋L_加工調整$:               ' c3-1,  c3-2   長さ調整    *2002.11.4
                 
                 
                 Dim 鉄筋L_Data1$:                  ' Data Cope
                 Dim 鉄筋L_Data数 As Integer:       'Dataの個数
                 Dim 鉄筋L_Data$(200):              'i番目のData$    exp  F   2746～2246    5655+4655
                 Dim 鉄筋L_Type$(200):              'i番目のData_Type   L  F  W  J  r
                 Public 鉄筋L_L(200) As Single:        'i番目のData_L
                 Dim 鉄筋L_r(200) As Single:        'i番目の　Data　r       Arcの場合
                 Dim 鉄筋L_r角度(200) As Single:    'i番目の  Data  r角度   Arcの場合
                 Dim 鉄筋L_r_X0(200) As Single:     'i番目の　Data　r の中心 X0
                 Dim 鉄筋L_r_Y0(200) As Single:     'i番目の　Data　r の中心 Y0
                 
                 Dim 鉄筋L_曲角度(200) As Single:   'i番目の  Data  曲げ角度　入力がない場合 90
                 Dim 鉄筋L_全ΣL  As Single:            '全 Data_L
       
                 Dim 鉄筋L_Start角度 As Single:     '鉄筋加工のStart鉄筋の角度　　入力がない場合 90
                 Public 鉄筋L_X(201) As Single:        'i番目のData$ Start X座標  Dataの個数+1
                 Public 鉄筋L_Y(201) As Single:         'i番目のData$ Start Y座標  Dataの個数+1
       
                 Dim 鉄筋L_Xmin As Single:          ' X座標min
                 Dim 鉄筋L_Xmax As Single:          ' X座標max
                 Dim 鉄筋L_Ymin As Single:          ' Y座標min
                 Dim 鉄筋L_Ymax As Single:          ' Y座標max
                 Dim 鉄筋L_Xcen As Single:          ' X座標center
                 Dim 鉄筋L_Ycen As Single:          ' Y座標center
                 Dim 鉄筋L_XL As Single:            '鉄筋L_XL=鉄筋L_Xmax-鉄筋L_Xmin
                 Dim 鉄筋L_YL As Single:            '鉄筋L_YL=鉄筋L_Ymax-鉄筋L_Ymin
        
                 Dim 鉄筋L_部品数 As Integer:       '鉄筋の分割数  ﾙｰﾌﾟ筋は +1
                 Dim 鉄筋L_ΣL(50) As Single:       '鉄筋L_ΣL(鉄筋L_部品数) 格鉄筋の合計長さ  Jointによる分割
       
                 Dim 鉄筋L_部品位置(50) As Integer: '鉄筋L_部品のStart位置    ﾙｰﾌﾟ筋は は別
       
                 Dim 鉄筋L_W数 As Integer:           ' ｶﾞｽ圧接数
                 Dim 鉄筋L_K数 As Integer:           ' 機械継ぎ手
                 
                 
                 
                 
         '■ 鉄筋加工図 Data2     鉄筋L_Data$(i)
                 Dim 鉄筋L_L1 As Single:            '鉄筋 L1 長さ   L1～L2
                 Dim 鉄筋L_L2 As Single:            '鉄筋 L2 長さ
                 Dim 鉄筋L_r1 As Single:            '鉄筋 r  半径
                 Dim 鉄筋L_r角度1 As Single:        '鉄筋 r  角度
       
       
         '■ 杭位置
                 Dim 杭位置_Data数 As Integer:      'Dataの個数
                 
                 Dim 杭位置_Data$(100):             'i番目のData
                 
                 Dim 杭位置_X(100) As Single:       'i番目のDataのX座標
                 Dim 杭位置_Y(100) As Single:       'i番目のDataのY座標
                 Dim 杭位置_No(100) As Integer:     'i番目のDataの杭no
                 Dim 杭位置_径(100) As Single:       'i番目のDataの杭径
                 
                 '[[[ ** 2 ** ]]]
                 Dim 杭位置_X個数 As Integer:         '杭のX方向個数
                 Dim 杭位置_Y個数 As Integer:         '杭のY方向個数
    
                 Dim 杭位置_Xpos(100) As Single:      '杭のX方向 位置
                 Dim 杭位置_Ypos(100) As Single:      '杭のY方向 位置
    
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃                                                                                                                                    ┃
     '┃　■ Stoper
     '┃                                                                                                                                    ┃
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
           ' Stoper部品
                 Dim Stoper_Ty数i As Integer:       'Stoper_Ty数i
                 
                 Dim Stoper_符号s(6) As String
                 Dim Stoper_Tyi(6) As Integer   ' 0  無し  　 1 □            2 ○
                 Dim Stoper_Cuti(6) As Integer   '  鉄筋の Cut 0  Cut  　 1 cut なし
                 Dim Stoper_箇所i(6) As Integer   ' Stoper_使用箇所数
                 Dim Stoper_箱抜s(6) As String    ' exp  箱抜=0x100x1300    箱抜=410x410x1080
                 Dim Stoper_BXi(6) As Single
                 Dim Stoper_BYi(6) As Single
                 Dim Stoper_Hi(6) As Single
                 
                 Dim Stoper_H1s(6) As String      ' exp H1=10-D19_Y150_B150_H640_@108+5x100+4x200_SD390
                 Dim Stoper_H2s(6) As String      ' exp H2=10-D13_X150_Y150_B200_H900_@108+5x100+4x200_SD390
                 Dim Stoper_H3s(6) As String      ' exp H3=D13_H900_@200_SD390
       
                 Dim 図H1_Data1s As String  ' 丸Stoper 図
       
       
                 '[[[ Stoper部品 H2, H5, H8, H11 のﾃﾞｰﾀｰ解析　]]]
                 Dim Stoper_H2_LY As Single '○Type Stoper  Stoper_LY/2 からの 鉄筋位置(H2) YL
          
                 '[[[ Stoper部品 H3, H6, H9, H12 のﾃﾞｰﾀｰ解析　]]]
                 Dim H3_平_i As Integer     ' ﾌﾗｯﾄ部分 鉄筋数    Data (145+190+145)  ---> 4
                 Dim H3_平_L As Single      ' ﾌﾗｯﾄ部分 水平長さ   Data (145+190+145)  ---> 480
                 Dim H3_鉛直_i As Integer   ' 鉛直部分 鉄筋数(片側)   Data (3x150)  ---> 4
                 Dim H3_鉛直_Pit As Single  ' 鉛直部分 鉄筋Pit    Data (3x150)  ---> 150
          
                 Dim Stoper_H3水平_LY As Single  'Stoper_LY/2 からの 鉄筋位置(H3の水平配筋) YL
                 Dim Stoper_H3鉛直_LY As Single  'Stoper_LY/2 からの Start鉄筋位置(H3の鉛直配筋) YL
          
          
           
           
                '■ Stoper位置
                 
                 Dim Stoper位置_Data数 As Integer:  'Dataの個数
                 Dim Stoper起点側位置数i As Integer:  'Stoper起点側位置数
                 Dim Stoper終点側位置数i As Integer:  'Stoper終点側位置数
                 
                 Dim Stoper起点側_部品i As Integer:   'Stoper起点側の部品No
                 Dim Stoper終点側_部品i As Integer:   'Stoper終点側の部品No　　　条件 部品数<=2 の場合
                
                 Dim Stoper起点側_Y As Single:      'Stoper起点側のY座標
                 Dim Stoper終点側_Y As Single:      'Stoper終点側のY座標
                 
                 Dim Stoper位置_Data$(100):         'i番目のData
                 
                 Dim Stoper位置_鉄筋Cut(100) As Integer: ' i番目のDataの 鉄筋Cut    0 Cut    1 NOCut
                 Dim Stoper位置_X(100) As Single:   'i番目のDataのX座標
                 Dim Stoper位置_Y(100) As Single:   'i番目のDataのY座標
                 Dim Stoper位置_No(100) As Integer: 'i番目のDataのStoper 部品no
                 Dim Stoper位置_BX(100) As Single:  'i番目のDataの ｽﾄｯﾊﾟBX
                 Dim Stoper位置_BY(100) As Single:  'i番目のDataの ｽﾄｯﾊﾟBY
                 Dim Stoper位置_H(100) As Single:   'i番目のDataの ｽﾄｯﾊﾟH
    
                 Dim Stoper位置_開きX As Single:     'ｽﾄｯﾊﾟ開き X方向   1 - 2 間
                 Dim Stoper位置_開きY As Single:     'ｽﾄｯﾊﾟ開き Y方向   1 - (n/2+1) 間
    
                 Dim Stoper位置_端開きX As Single:   'ｽﾄｯﾊﾟ端部開き X方向   1 - 2 間
                 Dim Stoper位置_端開きY As Single:   'ｽﾄｯﾊﾟ端部開き Y方向   1 - (n/2+1) 間
          
                '[[[ ** 2 ** ]]]
                 Dim Stoper位置_X個数 As Integer:          'ｽﾄｯﾊﾟのX方向個数
                 Dim Stoper位置_Y個数 As Integer:          'ｽﾄｯﾊﾟのY方向個数
    
                 Dim Stoper位置_起点Xpit(30) As Single:  'ｽﾄｯﾊﾟのX方向 Pit 左端から  ｽﾄｯﾊﾟのX方向個数
                 Dim Stoper位置_終点Xpit(30) As Single:  'ｽﾄｯﾊﾟのX方向 Pit 左端から  ｽﾄｯﾊﾟのX方向個数
                 Dim Stoper位置_Ypit(10) As Single:  'ｽﾄｯﾊﾟのY方向 Pit 左端から  ｽﾄｯﾊﾟのY方向個数
         
                 Dim Stoper位置_起点_X(30) As Single:   'ｽﾄｯﾊﾟのX方向  左端から  ｽﾄｯﾊﾟのX方向位置
                 Dim Stoper位置_終点_X(30) As Single:   'ｽﾄｯﾊﾟのX方向  左端から  ｽﾄｯﾊﾟのX方向位置
         
     
          Type 土木_橋脚_Stoper_Data
                 ',ｽﾄｯﾊﾟｰ
                 符号 As String * 200:     '符号=ｽﾄｯﾊﾟｰ1
                 No As Integer:             '   1  2  3
                 Typei As Integer:          ' 1  □   2 ○
                 箱抜 As String * 200:     '箱抜=410x410x1430
                       BX As Single:
                       BY As Single:
                       H As Single:
                                       
                
                 被り As String * 200:     '被ﾘ=300
                 h1 As String * 200:       'H1=10-D19     L720+419+720    @109+4x100+5x200
                 h2 As String * 200:       'H2=10-D16     L1200+150+1200  @109+4x100+5x200
                 h3 As String * 200:       'H3=4+2+3-D16  L1400
                 End Type
                 Public 土木橋脚_Stoper As 土木_橋脚_Stoper_Data
           
     
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃                                                                                                                                    ┃
     '┃　■ 沓座
     '┃                                                                                                                                    ┃
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
           ' 沓座部品
           
                 Dim 沓座_Ty数i As Integer:         '沓座_Ty数i
                 Dim 沓座_符号s(10) As String
                 Dim 沓座_箇所i(10) As Integer   ' 沓座_使用箇所数
                 Dim 沓座_Gomsyus(10) As String  ' exp BD=820x370
                 Dim 沓座_S1s(10) As String      ' exp S1=5-D22_K172_B1019_H660_@5x125_SD390
                 Dim 沓座_S2s(10) As String      ' exp S2=8-D19_K192.5_B625_H570_@8x125_SD390
                 Dim 沓座_連結筋s(10) As String   ' exp 連結筋=16-D13_B50_H300_@X6x162.5_@Y2x150_SD390
       
       
            Type 土木_橋脚_沓座_Data
                 ' .沓座     '踏座
                 符号 As String * 200:     '符号=沓座1
                 No As Integer:             '   1  2  3
                 Gomsyu As String * 200:   'ｺﾞﾑｼｭｳ=650x450     中止 BD で OK        ' BX x BY
                 BD As String * 200:       'BD=650x450                             ' BX x BY
                 被り As String * 200:     '被ﾘ=300
                 S1 As String * 200:       'S1=9-D19 @50+8x100 L600+941+600        ' X方向    @50 桁ｾﾝﾀｰから  **
                 S2 As String * 200:       'S2=10-D22 @9x100 L690+800+690          ' Y方向    @ 沓座ｾﾝﾀｰ
                 End Type
                 Public 土木橋脚_沓座 As 土木_橋脚_沓座_Data
         
         '■ 沓座位置
                 Dim 沓座位置_Data数 As Integer:    'Dataの個数
                 Dim 沓座終点側位置数i As Integer:  '沓座終点側位置数
                 Dim 沓座起点側位置数i As Integer:  '沓座起点側位置数
                 
                 Dim 沓座終点側_部品i As Integer:   '沓座終点側の部品No     条件 部品数<=2 の場合
                 Dim 沓座起点側_部品i As Integer:   '沓座起点側の部品No
                 
                 Dim 沓座終点側_Y As Single:        '沓座終点側のY座標
                 Dim 沓座起点側_Y As Single:        '沓座起点側のY座標
                 
                 
                 Dim 沓座位置_Data$(100):           'i番目のData
                 Dim 沓座位置_X(100) As Single:     'i番目のDataのX座標
                 Dim 沓座位置_Y(100) As Single:     'i番目のDataのY座標
                 Dim 沓座位置_No(100) As Integer:   'i番目のDataの沓座 部品no
       
                '[[[ ** 2 ** ]]]
                 Dim 沓座位置_X個数  As Integer:        '沓座のX方向個数
                 Dim 沓座位置_Y個数  As Integer:        '沓座のY方向個数
    
                 Dim 沓座位置_終点Xpit(100) As Single:       '沓座のX方向 Pit 左端から  沓座のX方向個数  +1
                 Dim 沓座位置_起点Xpit(100) As Single:       '沓座のX方向 Pit 左端から  沓座のX方向個数  +1
                 Dim 沓座位置_Ypit(100) As Single:       '沓座のY方向 Pit 左端から  沓座のY方向個数  +1
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の出力設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
       'Dim 土木_Data_dsk As String
       
       Public 杭_No_Max As Integer, 基礎_No_Max As Integer, 柱_No_Max As Integer
       Public 梁_No_Max As Integer
       Public 杭符号$(200), 基礎符号$(200), 柱符号$(200), 梁符号$(200)
       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃                                                                                                                                    ┃
     '┃　■ 杭
     '┃                                                                                                                                    ┃
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
       
       Dim 杭_符号s As String
       Dim 杭_Noi As Integer
       Dim 杭_Ds As String
       Dim 杭_Di As Single
       Dim 杭_Ls As String
       Dim 杭_Li As Single
       
       Dim 杭_Speser種数i As Integer
       Dim 杭_Spesers(10)  As String
       
       Dim 杭_主筋_種類数i As Integer
       Dim 杭_主筋_Σ本数i As Integer
       Dim 杭_主筋_s(20) As String
           Dim 杭_主筋_部品数i(20) As Integer
           
           Dim 杭_主筋_本数i(20) As Integer
           Dim 杭_主筋_dti(20) As Single
           Dim 杭_主筋_径i(20) As Single  ' 杭頭部　主筋_径i
           Dim 杭_主筋_部品_s(20, 50) As String
           Dim 杭_主筋_部品_径i(20, 50) As Single
           
           Dim 杭_主筋_部品_接合数i(20) As Integer    ' W K W  の数+1
           Dim 杭_主筋_部品_分割数i(20) As Integer    ' K1-1  K1-2   の no の数
           Dim 杭_主筋_部品_分割位置i(20, 10) As Integer   ' 分割位置i の 部品_noi
           Dim 杭_主筋_部品_分割径i(20, 10) As Single    ' 分割後の 部品 主筋径
           Dim 杭_主筋_部品_分割L(20, 10) As Single    ' 分割後の 部品L
           Dim 杭_主筋_部品_W箇所数i(20, 10) As Integer   ' 分割位置i の W箇所数i
           Dim 杭_主筋_部品_K箇所数i(20, 10) As Integer   ' 分割位置i の K箇所数i
           Dim 杭_主筋_部品_表示_Xi(20, 10) As Single    ' 分割位置i の 表示_Xi
       Dim 杭_主筋_ΣL(20) As Single    '杭_主筋_ΣL
       Dim 杭_主筋_Cut_ck_L(20) As Single    '杭_主筋 断面 Cut Ck 用長さ　基礎下端からの L
       Dim 杭_主筋_Anchor_L(20) As Single    '杭_主筋 Anchor_L
       
       Dim 杭_主筋_Yi_位置数i As Integer      ' Yi_位置数i=Int(主筋本数 / 2 + 1)
       Dim 杭_主筋_Yi(320) As Single    ' 図 Y座標
       Dim 杭_主筋_No(320) As Integer   ' K1  K2  K3
       
       
       Dim 杭_底鉄筋s As String   '杭底の鉄筋
       
       Dim 杭_HpD_種類数i As Integer:         ' ﾌｰﾌﾟの Data 種類数
       Dim 杭_Hp_ΣPits As String
       Dim 杭_Hp_Start_Zi As Single      ' 基礎下場からの Z ( - )
       
       Dim 杭_Hp_Σ数i As Integer:         ' ﾌｰﾌﾟのΣ数
       Dim 杭_Hp_Zi(9999) As Single       ' 基礎下場からの Z
       Dim 杭_Hp_Typei(9999) As Integer   ' 1 2 --- 10   -組立筋
       Dim 杭_Hp_径i(9999) As Single
       Dim 杭_Hp_部品Noi(9999) As Integer   ' 1 2 --- 10   -組立筋
       
       
       Dim 杭_HpD_s(30) As String
           Dim 杭_HpD_径i(30) As Single  ' 　Hp_径i
           Dim 杭_HpD_Di(30) As Single  '    Hp_直径
           Dim 杭_HpD_Pits(30) As String  '    Hp Pit   exp @96x150+14x200+10x150+42x200+1x100
           Dim 杭_HpD_Zi(15) As Single  '    基礎下場からの Z Start Hp
           Dim 杭_HpD_ZL(30) As Single  '    Hp 区間 L
           Dim 杭_HpD_部品Noi(30) As Integer   '    部品Noi
       
       
       
       Dim 杭_Hp部品_種類数i As Integer:         ' ﾌｰﾌﾟの 部品 種類数
       Dim 杭_Hp部品_cut位置i(15) As Single      ' 　Z 断面表示位置
       Dim 杭_Hp部品_主筋_配筋Typei(15) As Integer     ' 　1 K1 のみ       2 K1 K2      3 K1 K2 K3
       
       Dim 杭_Hp部品_s(15) As String
       Dim 杭_Hp部品_径i(15) As Single  ' 　Hp_径i
       Dim 杭_Hp部品_Di(15) As Single  '    Hp_直径
       Dim 杭_Hp部品_数i(15) As Integer
       
       Dim 杭_Hp部品_Zi(15) As Single  '    基礎下場からの Z Start Hp
       Dim 杭_Hp部品_ZL(15) As Single  '    Hp 区間 L
       Dim 杭_Hp部品_組立筋i(15) As Integer   '  0     1 組立筋と同径
       
       
       Dim 杭_Hp_組立筋s As String     ' 組立筋
           Dim 杭_Hp_組立筋径i As Single  ' 　組立筋_径i
           Dim 杭_Hp_組立筋Di As Single  '    組立筋_直径
           Dim 杭_Hp_組立筋Pits As String  '    組立筋 Pit   exp @96x150+14x200+10x150+42x200+1x100
           Dim 杭_Hp_組立筋数i As Integer
      Dim 杭_Hp_組立筋_Typei As Integer    '  <20   Hp部品no            =100  独立
       
       

       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃                                                                                                                                    ┃
     '┃　■ 基礎
     '┃                                                                                                                                    ┃
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
          
          Dim 基礎_符号s As String
          Dim 基礎_Noi As Integer
          Dim 基礎_BXs As String 'BX=5250+5250          BX=10500
              Dim 基礎_BXi As Single, 基礎_BXLi As Single, 基礎_BXRi As Single

          Dim 基礎_BYs As String  'BY=3650+3200+3650
              Dim 基礎_BYi As Single, 基礎_BYLi As Single, 基礎_BYL端i As Single, 基礎_BYL柱i As Single, 基礎_BYRi As Single, 基礎_BYR端i As Single, 基礎_BYR柱i As Single
          
          Dim 基礎_Hs As String   'H=2500+500   H=HU+H_D
              Dim 基礎_Hi As Single, 基礎_HUi As Single, 基礎_HDi As Single
          
          '[[[  ｽﾀｰﾗｯﾌﾟ ]]]
           ' 線路方向 --- 配筋   f1
           Dim 基礎_St_線路方向_部品数i As Integer       '基礎_St_線路方向_部品数  基礎_St_線路方向_部品数i
           Dim 基礎_St_線路方向_部品s As String        'St_線路方向=D22_K71_B500_B500_SD390
           
           Dim 基礎_St_線路方向_部品_径i As Single       ' 径i
           Dim 基礎_St_線路方向_部品_関係径i As Single       ' 関係 鉄筋 径i
           Dim 基礎_St_線路方向_部品_B0i As Single       ' 幅 B
           Dim 基礎_St_線路方向_部品_Bi As Single       ' 幅 B
           Dim 基礎_St_線路方向_部品_Hi As Single       '  H
           Dim 基礎_St_線路方向_部品_Hs As String       '  H s
           Dim 基礎_St_線路方向_部品_dti As Single       '  dt
           
           Dim 基礎_St_線路方向_部品_Hmini As Single       '  H
           Dim 基礎_St_線路方向_部品_Hmaxi As Single       '  H
           
           Dim 基礎_St_線路方向_部品_Y位置_Hi(999) As Single       '  H
           
           Dim 基礎_St_線路方向_Pit数i As Integer           ' Pit数i
           Dim 基礎_St_線路方向_Pits As String         'St_線路方向Pit=625+4x375
           
           Dim 基礎_St_線路方向_Pit_Yi(999) As Integer  ' 基礎 Y0端からの Yi
           
           Dim 基礎_St_線路方向_配置i(300) As Integer   ' 基礎_St_線路方向_割付s(i) の 基礎_St_線路方向_配置i(Pit)=i
           
           Dim 基礎_St_線路方向_割付種類数i As Integer       ' 基礎_St_線路方向_割付の種類数    基礎_St_線路方向_割付種類数i
           Dim 基礎_St_線路方向_割付s(10) As String    'St_線路方向割付=425+8x(750+250)      'St_線路方向割付=550+8x(750+250)
           Dim 基礎_St_線路方向_割付Pits(10) As String  '   exp 550+750+250+750+250+750+250+750+250+750+250+750+250+750+250+750+250
           Dim 基礎_St_線路方向_割付数i(10) As Integer  '  割付数i
           
           ' 直角方向 | 配筋  f2
           Dim 基礎_St_直角方向_部品数i As Integer       '基礎_St_直角方向_部品数     基礎_St_直角方向_部品数i
           Dim 基礎_St_直角方向_部品s As String        'St_直角方向 = D22_K71_B500_B500_SD390
           
           Dim 基礎_St_直角方向_部品_径i As Single       ' 径i
           Dim 基礎_St_直角方向_部品_関係径i As Single       ' 関係 鉄筋 径i
           Dim 基礎_St_直角方向_部品_B0i As Single       ' 幅 B 鉄筋芯
           Dim 基礎_St_直角方向_部品_Bi As Single       ' 幅 B
           Dim 基礎_St_直角方向_部品_Hi As Single       '  H
           Dim 基礎_St_直角方向_部品_Hs As String       '  H s
           Dim 基礎_St_直角方向_部品_dti As Single       '  dt
           
           Dim 基礎_St_直角方向_部品_Hmini As Single       '  H
           Dim 基礎_St_直角方向_部品_Hmaxi As Single       '  H
           
           
           Dim 基礎_St_直角方向_Pit数i As Integer           ' Pit数i
           Dim 基礎_St_直角方向_Pits As String         'St_直角方向Pit=800+4x375
           
           Dim 基礎_St_直角方向_Pit_Xi(999) As Integer  ' 基礎 X0端からの Xi
           Dim 基礎_St_直角方向_配置i(300) As Integer   ' 基礎_St_直角方向_割付s(i) の 基礎_St_直角方向_配置i(Pit)=i
           
           Dim 基礎_St_直角方向_割付種類数i As Integer       ' 基礎_St_直角方向_割付の種類数   基礎_St_直角方向_割付種類数i
           Dim 基礎_St_直角方向_割付s(10) As String    'St_直角方向割付=2375+2x(750+250)        'St_直角方向割付 = 2875 + (750 + 250)
           Dim 基礎_St_直角方向_割付Pits(10) As String  ' exp 2375+750+250+750+250
           Dim 基礎_St_直角方向_割付数i(10) As Integer  '  割付数i
       
           
           
           Dim 基礎_捨cons As String, 基礎_捨con_t As Single
       
           Dim 基礎_杭位置s As String   ''ｾﾝﾀｰからの距離
                                           '     -3750,3750     0,3750     3750,3750,P2
                                           '     -3750,0                   3750,0
                                           '     -3750,-3750    0,-3750    3750,-3750
           
           Dim 基礎_FYs(4) As String   '[[[  Y方向 鉄筋 ]]]    1 底鉄筋  2 上鉄筋    3 側鉄筋    4 予備
               Dim 基礎_FY_符号s(4) As String
               Dim 基礎_FY_径i(4) As Single
               Dim 基礎_FY_dti(4) As Single
               Dim 基礎_FY_Bi(4) As Single
               Dim 基礎_FY_Gs(4) As String
               Dim 基礎_FY_GRs(4) As String   ' Gs の Reverse
               Dim 基礎_FY_Hi(4) As Single
               Dim 基礎_FY_Zi(4) As Single   ' h1   基礎最上端からの h  上鉄筋の交点までの ZL
               Dim 基礎_FY_部品数i(4) As Integer
               
               Dim 基礎_FY3_部品数i As Integer
               Dim 基礎_FY3_Zi(100) As Single
           
           
           Dim 基礎_FXs(4) As String   '[[[  X方向 鉄筋 ]]]    1 底鉄筋  2 上鉄筋    3 側鉄筋    4 予備
               Dim 基礎_FX_符号s(4) As String
               Dim 基礎_FX_径i(4) As Single
               Dim 基礎_FX_dti(4) As Single
               Dim 基礎_FX_Bi(4) As Single
               Dim 基礎_FX_Bs(4) As String
               Dim 基礎_FX_BRs(4) As String    ' Gs の Reverse
               
               Dim 基礎_FX_Hi(4) As Single
               Dim 基礎_FX_Hs(4) As String
               Dim 基礎_FX_部品数i(4) As Integer
       
               Dim 基礎_FX4_部品数i As Integer
               Dim 基礎_FX4_Zi(100) As Single
           
           
           
           Dim 基礎_傾斜_D_s As String
           Dim 基礎_傾斜_K3 As Single
           Dim 基礎_傾斜_K5 As Single
           Dim 基礎_傾斜_L1 As Single
           Dim 基礎_傾斜_L2 As Single
           Dim 基礎_傾斜_h1 As Single
           
           
           Dim 基礎_FX上筋_∑数i As Integer      ' F12 F13 の ∑数i
           Dim 基礎_FX上筋_Tyi(999) As Single    ' 1 F12    2   F13
           Dim 基礎_FX上筋_Xi(999) As Single     ' 平面図作図 BY 方向 座標
           Dim 基礎_FX上筋_Hi(999) As Single     ' H  F12  F13
           Dim 基礎_FX上筋_F13_Hmaxi As Single     ' F13_Hmax
           Dim 基礎_FX上筋_F13_Hmini As Single     ' F13_Hmin
          
          

       
                 Type 基礎縦鉄筋
                        Start_X As Single:  '基礎X左端からのL + Y方向鉄筋ﾋﾟｯﾁ + 間隔1 + 間隔2 + 間隔3   (間隔3は 間隔1の終端からの戻り)
                        Y鉄筋pit As Single:  '
                        鉄筋間隔X1 As Single:  '
                        鉄筋間隔X2 As Single:  '
                        鉄筋間隔X3 As Single:  '
                        Start_Y As Single:  '基礎Y左端からのL + X方向鉄筋ﾋﾟｯﾁ + 間隔1 + 間隔2 + 間隔3   (間隔3は 間隔1の終端からの戻り)
                        X鉄筋pit As Single:  '
                        鉄筋間隔Y1 As Single:  '
                        End Type
                 
                 Dim 基縦筋 As 基礎縦鉄筋
       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃                                                                                                                                    ┃
     '┃　■ 柱
     '┃                                                                                                                                    ┃
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
           
           '[[[ 柱_主筋 ]]]
           Dim 柱_主筋_Ty数i As Integer  ' 柱_主筋_Type 種類数i
           Dim 柱_主筋_部品s(50) As String  ' exp  C=D25_P309_K101_LF+11420+W+2200_SD390
           
               Dim 柱_主筋本数Sets As String    ' 部品　　="Y" 部品あり
               Dim 柱_主筋_径s(50) As String    ' exp D29
               Dim 柱_主筋_SDs(50) As String    ' 部品　　SD390
               
               Dim 柱_主筋_数i(50) As Integer   ' 部品数
               Dim 柱_主筋_L(50) As Single      ' 部品 全ΣL
               Dim 柱_主筋_dt(50) As Single
           
           
           Dim 柱_X_1段_主筋代表i As Integer  ' 柱_主筋_X　代表主筋No
           Dim 柱_X_2段_主筋代表i As Integer  ' 柱_主筋_X　代表主筋No
           Dim 柱_Y_1段_主筋代表i As Integer  ' 柱_主筋_Y　代表主筋No
           Dim 柱_Y_2段_主筋代表i As Integer  ' 柱_主筋_Y　代表主筋No
           
           Dim 柱_主筋_開き倍率 As Single ' 2段筋の場合  開き=D*柱_主筋_開き倍率
           
           Dim 柱_主筋_段数_Xi As Integer  ' 柱_主筋_Xpit  段数
           Dim 柱_主筋_段数_Yi As Integer  ' 柱_主筋_Ypit  段数
           
           Dim 柱_主筋_ΣXpits As String  ' exp Xpit=101+149+7*125+250+14*125+7*125+149+101_500+5*125+250+14*125+250+5*125+500
           Dim 柱_主筋_ΣYpits As String
           Dim 柱_主筋_Xpits(10) As String
           Dim 柱_主筋_Ypits(10) As String
           
           Dim 柱_主筋_配置_ΣXs As String  ' exp  X主筋=17xC2+16xC1_15xC4+14xC3
           Dim 柱_主筋_配置_ΣYs As String
           Dim 柱_主筋_配置_Xs(10) As String
           Dim 柱_主筋_配置_Ys(10) As String
           
           '[[[ 柱_ｺｰﾅｰ主筋 ]]]
           
           Dim 柱_主筋_角s As String ' ="Y"  ｺｰﾅｰ主筋あり
           
           
           
           
           '[[[ 柱 Hoop ]]]
           Dim 柱_Hp_区間L(50) As Single ' 柱_Hp_区間長  下-->上  1--5 まで
           
           '[[[ 柱_外側 Hoop ]]]
           
           Dim 柱_外Hp_X_部品_Ty数i As Integer  ' 柱_外Hp_X_部品_Type  種類数i
           Dim 柱_外Hp_Y_部品_Ty数i As Integer  ' 柱_外Hp_X_部品_Type  種類数i
           Dim 柱_外Hp_部品s As String
           Dim 柱_外Hp_dt As String
           Dim 柱_外Hp_r As Single
           
           
           '[[[ 柱_内側 Hoop_X方向 ]]]
           Dim 柱_内Hp_X_部品_Ty数i As Integer     ' 柱_内Hp_X_部品_Type  種類数i
           Dim 柱_内Hp_X_部品s(50) As String       ' exp 内Hp_X_部品=D25_B432_D1302+J+552_SD390
               Dim 柱_内Hp_X_部品i(50) As Integer  ' 柱_内Hp_X_部品s(i) の使用箇所数
               Dim 柱_内Hp_X_部品L(50) As Single   ' 柱_内Hp_X_部品s(i) の長さ
           
           Dim 柱_内Hp_X_Xpit数i As Integer
           Dim 柱_内Hp_X_Ypit_Ty数i As Integer
           Dim 柱_内Hp_X_Ypits(40) As String       ' exp 内Hp_X_Xpit=750+5x625|1+500|2               柱下端から   Pit|HpType    Pit 中心の位置    HpType省略のばあい 1
           Dim 柱_内Hp_X_Hpit数i As Integer
           Dim 柱_内Hp_X_Hpits As String           ' exp 内Hp_X_HPit=1200+6x200+4x150+72x150         基礎下端から
           Dim 柱_内Hp_X_配置i(900) As Integer     ' 柱_内Hp_X_Hpit の位置の 柱_内Hp_X_Ypits(i)　i の番号
           Dim 柱_内Hp_X_配置s As String           ' exp 内Hp_X_配置=50x1,2+3x3                      Hpit の指定 下-->上    省略のばあい  Hpit(1)
       
           '[[[ 柱_内側 Hoop_Y方向 ]]]
           Dim 柱_内Hp_Y_部品_Ty数i As Integer     ' 柱_内Hp_Y_部品_Type  種類数i
           Dim 柱_内Hp_Y_部品s(50) As String       ' exp 内Hp_Y_部品=D25_B432_D1302+J+552_SD390
               Dim 柱_内Hp_Y_部品i(50) As Integer  ' 柱_内Hp_Y_部品s(i) の使用箇所数
               Dim 柱_内Hp_Y_部品L(50) As Single   ' 柱_内Hp_Y_部品s(i) の長さ
           
           Dim 柱_内Hp_Y_Xpit数i As Integer
           Dim 柱_内Hp_Y_Xpit_Ty数i As Integer
           Dim 柱_内Hp_Y_Xpits(40) As String       ' exp 内Hp_Y_Xpit=750+5x625|1+500|2               柱左端から   Pit|HpType    Pit 中心の位置    HpType省略のばあい 1
           Dim 柱_内Hp_Y_Hpit数i As Integer
           Dim 柱_内Hp_Y_Hpits As String           ' exp 内Hp_Y_HPit=1200+6x200+4x150+72x150         基礎下端から
           Dim 柱_内Hp_Y_配置i(900) As Integer     ' 柱_内Hp_Y_Hpit の位置の 柱_内Hp_Y_Xpits(i)　i の番号
           Dim 柱_内Hp_Y_配置s As String           ' exp 内Hp_Y_配置=50x1,2+3x3                      Hpit の指定 下-->上    省略のばあい  Hpit(1)
       
     ' 柱組立筋 Begin
           '[[[ 柱_組立筋 ]]]
           
           Dim 柱_組立筋_部品s As String
           Dim 柱_組立筋_径i As Single
           Dim 柱_組立筋_dti As Single
           Dim 柱_組立筋_L As Single
           Dim 柱_組立筋_Pit数i As Integer
           Dim 柱_組立筋_Pits As String
           Dim 柱_組立筋_Zi(99) As Single
       
     ' 柱組立筋 End
       
       Type 土木_橋脚_柱_Data
                
                
                符号 As String * 200:      '符号=C1
                No As Integer:             '   1  2  3
                Da_BX As String * 200:        'BX=4500
                       BX As Single:           ' BX=BXL+BXR
                       BXL As Single
                       BXR As Single
                
                Da_BY As String * 200:        'BY=1500+1500
                       BY As Single:           ' BY=BYL+BYR
                       BYL As Single
                       BYR As Single
                
                Da_H As String * 200:         'H=8700
                       H As Single:            ' H
                
                Da_r As String * 200:         'r=250
                       r As Single
              
              '[[[ 主筋 ]]]
                
                C種数 As Integer:         ' 主筋の種類数
                C1 As String * 200:        'C1=16+5+1-D38 P309 K101 @X-1850+15x250 @Y-1000+4x500 LF+(11420+2200)                ' 主筋1
                C2 As String * 200:
                C3 As String * 200:
                C4 As String * 200:
                C5 As String * 200:
                C6 As String * 200:
                
                CXpit段数 As Integer
                CXpit1 As String * 200
                CXpit2 As String * 200
                
                
                CYpit段数 As Integer
                CYpit1 As String * 200
                CYpit2 As String * 200
                
                CX主筋段数 As Integer
                CX主筋1 As String * 200
                CX主筋2 As String * 200
                
                CY主筋段数 As Integer
                CY主筋1 As String * 200
                CY主筋2 As String * 200
                
                C角主筋 As String * 200
                C角主筋X As Single: '角主筋XY=145_200
                C角主筋Y As Single
                
               '[[[ CK は 柱梁のｺｰﾅｰ筋 です  ]]]
                CK As String * 200:        'CK=22-D16_K101_L480_r63.5                                       ' 梁下部 補強筋
                

              '[[[ Hoop 外側  ]]]
                CH1 As String * 200:       '
                Choop_鉄筋 As String * 5:   ' D22
                'CHoop_dt As Single
               ' CHoop_r As Single


              '[[[ Hoop 内側 X方向  ]]]
                CHX1 As String * 200:      'c2-1=63-D19 P0 @1200+6x200+4x150+40x150+12x300 L1057+(1678+F+J570+F+3234)+1057+(1574+F+J570+F+3247)    '(c3) Hoop X方向  内側 1
                CX_1_Hoop_Jtype As String * 5: ' U   D   片側Joint   ｿﾉﾀ  両側Joint
                
                CHX2 As String * 200:
                CX_2_Hoop_Jtype As String * 5: ' U   D   片側Joint   ｿﾉﾀ  両側Joint

              '[[[ Hoop 内側 Y方向  ]]]
                CHY1 As String * 200:      'c3-1=34+34+34-D19 P-1500+125+1250 @1200+3x400+2x300+20x300+8x600 L2855+807+(1713+F+J570+F+1712)+807    '(c5) Hoop Y方向  内側 1
                CY_1_Hoop_Jtype As String * 5: ' L   R   片側Joint   ｿﾉﾀ  両側Joint
                
                CHY2 As String * 200:
                CY_2_Hoop_Jtype As String * 5: ' L   R   片側Joint   ｿﾉﾀ  両側Joint
                
                CHY3 As String * 200:
                CY_3_Hoop_Jtype As String * 5: ' L   R   片側Joint   ｿﾉﾀ  両側Joint
                
                End Type
                Public 土木橋脚_柱 As 土木_橋脚_柱_Data
       

       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃                                                                                                                                    ┃
     '┃　■ 梁
     '┃                                                                                                                                    ┃
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
         Dim 梁_BX As Single, 梁_BY As Single, 梁_BYL As Single, 梁_BYR As Single, 梁_H As Single
         Dim 梁下勾配i As Single       '梁下勾配i = 土木橋脚_梁.h1 / (土木橋脚_梁.BXL - 土木橋脚_柱.BXL)
         Dim 梁下勾配2i As Single      '梁下勾配2i = (土木橋脚_梁.BXL - 土木橋脚_柱.BXL) / 土木橋脚_梁.h1
       
         ' Function FP_梁_X筋数i() As Integer で有効
         Dim 梁_X筋数i As Integer          ' 梁　X方向鉄筋本数i
         Dim 梁_X筋_Tyi(50) As Integer     ' 1 起点Loop   2 終点Loop   3 外直筋  4 起点Loop内直筋  5 終点Loop内直筋
         Dim 梁_X筋_位置i(50) As Integer    ' 1 起点Ｓtoper外側  2 Stoperの間   3 終点Stoper外側
         Dim 梁_X筋_Ty_cuti(50) As Integer ' 0 cut なし  1 cit 有り
         Dim 梁_X筋_Yi(50) As Single
         Dim 梁_X筋_Ypiti(50) As Single    '  梁_X筋_Yi(i+1)-梁_X筋_Yi(i)
       
       
       '[[[ 梁Loop筋 ]]]
         Dim 梁起点Loop筋_径i As Single
         Dim 梁終点Loop筋_径i As Single
         
         Dim 梁_起点Loop筋_Ty数i As Integer  ' 梁_起点Loop筋_Type 種類数i
         Dim 梁_終点Loop筋_Ty数i As Integer  ' 梁_終点Loop筋_Type 種類数i
         Dim 梁_起点Loop筋_部品s(50) As String   ' exp  =D32_K92_@126+3x80_B2481.6+J900+5790.4_D680_SD390
         Dim 梁_終点Loop筋_部品s(50) As String   ' exp  =D32_K92_@126+3x80_B2481.6+J900+5790.4_D680_SD390
         
         Dim 梁_起点Loop筋_部品_D(50) As Single
         Dim 梁_終点Loop筋_部品_D(50) As Single
         Dim 梁_起点Loop筋_部品_dti(50) As Single
         Dim 梁_終点Loop筋_部品_dti(50) As Single
         
         
         
         Dim 梁_起点Loop筋_部品_r(50) As Single      ' r
         Dim 梁_終点Loop筋_部品_r(50) As Single      ' r
         Dim 梁_起点Loop筋_部品_Bs(50) As String     ' 鉄筋_B$
         Dim 梁_終点Loop筋_部品_Bs(50) As String     ' 鉄筋_B$
         Dim 梁_起点Loop筋_部品_B2s(50) As String     ' 鉄筋_B$  長断面用
         Dim 梁_終点Loop筋_部品_B2s(50) As String     ' 鉄筋_B$
         
         
         
         Dim 梁_起点Loop筋_部品数i(50) As Integer            ' Loop筋 個数
         Dim 梁_終点Loop筋_部品数i(50) As Integer            ' Loop筋 個数
         
         Dim 梁_起点Loop筋_部品_Yi(50) As Single  ' 梁_起点 からの YL
         Dim 梁_終点Loop筋_部品_Yi(50) As Single  ' 梁_起点 からの YL
         Dim 梁_Loop筋_Y方向寸法s As String
         Dim 梁_起点Loop筋_Z方向寸法s As String
         Dim 梁_終点Loop筋_Z方向寸法s As String
    
    
    
       '[[[ 梁_直筋 Loop内,外 共通 ]]]
        
         Dim 梁終点側_直筋_Ty数i As Integer                ' 直筋から 作成する部品種類数 起点側と同じ物を除く
         Dim 梁起点側_直筋_Ty数i As Integer                ' 直筋から 作成する部品種類数
         Dim 梁終点側_直筋_Σ部品数i As Integer            ' 直筋から 作成するΣ部品個数　　Stoper終点側位置数i+1
         Dim 梁起点側_直筋_Σ部品数i As Integer            ' 直筋から 作成するΣ部品個数　　Stoper起点側位置数i+1
    
         Dim 梁終点側_直筋_部品L(20) As Single             ' 直筋から 作成する部品の L
         Dim 梁起点側_直筋_部品L(20) As Single             ' 直筋から 作成する部品の L
         Dim 梁終点側_直筋_部品Noi(20) As Integer          ' 直筋 左から iの位置 部品Type No   Is<0 参考　部品Type -No  起点側+ 1,2,3... 起点側と同じ物を除く
         Dim 梁起点側_直筋_部品Noi(20) As Integer          ' 直筋 左から iの位置 部品Type No   Is<0 参考　部品Type -No
       
       
       '[[[ 梁 直筋 Loop外 ]]]
        
         Dim 梁_Loop外直筋_部品s As String                 ' exp  Loop内直筋=D16_K116_@359.6667+226.6667+613.6667+2x170_LF+8600+F
         Dim 梁_Loop外直筋_径i As Single                   ' 径i
         Dim 梁_Loop外直筋_部品L As Single                 ' L 長さ
         Dim 梁_Loop外直筋_部品_Fooks As String            ' Y 端部ﾌｯｸ有り  N なし
        
         
         Dim 梁_Loop外直筋_Ty数i As Integer
         Dim 梁_Loop外直筋_Start_Noi As Integer            ' 梁_Loop外直筋 Start No
         Dim 梁_Loop外直筋_本数i As Integer                ' 梁_直筋_Σ本数
         Dim 梁起点側_Loop外直筋_本数i As Integer          ' 梁起点側_直筋_Σ本数  Cut直筋含む
         Dim 梁終点側_Loop外直筋_本数i As Integer          ' 梁終点側_直筋_Σ本数  Cut直筋含む
         Dim 梁起点側_Loop外直筋_cut本数i As Integer
         Dim 梁終点側_Loop外直筋_cut本数i As Integer
         Dim 梁_Loop外直筋_Yi(50) As Single                 ' 梁_起点 からの YL
         Dim 梁_Loop外直筋_cuti(50) As Integer             ' 0 NO cut   1 cut
         Dim 梁終点側_Loop外直筋_部品Noi(20) As Integer    ' 直筋 左から iの位置 部品Type No   Is<0 参考　部品Type -No  起点側+ 1,2,3... 起点側と同じ物を除く
         Dim 梁起点側_Loop外直筋_部品Noi(20) As Integer    ' 直筋 左から iの位置 部品Type No   Is<0 参考　部品Type -No
       
       
       '[[[ 梁 直筋 Loop内 ]]]
         Dim 梁_Loop内直筋_部品s As String                 ' exp  Loop内直筋=D16_K116_@359.6667+226.6667+613.6667+2x170_LF+8600+F
         Dim 梁_Loop内直筋_径i As Single                   ' 径i
         Dim 梁_Loop内直筋_部品L As Single                 ' L 長さ
         Dim 梁_Loop内直筋_部品_Fooks As String            ' Y 端部ﾌｯｸ有り  N なし
        
         Dim 梁_起点Loop内直筋_部品Noi(9) As Integer       ' 部品nNo   1,2,3
       
         Dim 梁_終点Loop内直筋_部品Noi(9) As Integer       ' 部品nNo   1,2,3
        
         Dim 梁_Loop内直筋_Ty数i As Integer
         Dim 梁_Loop内直筋_Start_Noi As Integer            ' 梁_Loop内直筋 Start No
         Dim 梁_Loop内直筋_本数i As Integer                ' 梁_直筋_Σ本数
         Dim 梁起点側_Loop内直筋_本数i As Integer          ' 梁起点側_直筋_Σ本数  Cut直筋含む
         Dim 梁終点側_Loop内直筋_本数i As Integer          ' 梁終点側_直筋_Σ本数  Cut直筋含む
         Dim 梁起点側_Loop内直筋_cut本数i As Integer
         Dim 梁終点側_Loop内直筋_cut本数i As Integer
         Dim 梁起点側_Loop内直筋_cuti(50) As Integer             ' 0 NO cut   1 cut
         Dim 梁終点側_Loop内直筋_cuti(50) As Integer             ' 0 NO cut   1 cut
       
       
         Dim 梁起点側_Loop内直筋_Piti As Single
         Dim 梁終点側_Loop内直筋_Piti As Single
         Dim 梁起点側_Loop内直筋_Loop筋幅 As Single
         Dim 梁終点側_Loop内直筋_Loop筋幅 As Single
         Dim 梁起点側_Loop内直筋_Y As Single              ' Loop筋 梁_起点 からの YL
         Dim 梁終点側_Loop内直筋_Y As Single              ' Loop筋 梁_起点 からの YL
       
         Dim 梁終点側_Loop内直筋_部品Noi(20) As Integer    ' 直筋 左から iの位置 部品Type No   Is<0 参考　部品Type -No  起点側+ 1,2,3... 起点側と同じ物を除く
         Dim 梁起点側_Loop内直筋_部品Noi(20) As Integer    ' 直筋 左から iの位置 部品Type No   Is<0 参考　部品Type -No
       
       
      '[[[ 梁_下端筋 ]]]
         Dim 梁_下端筋_Start_Noi As Integer            ' 梁_下端筋 Start No
         Dim 梁_下端筋_Ty数i As Integer
         Dim 梁_下端筋_片側本数i As Integer                 ' 片側の本数　　梁_下端筋_片側本数i
         Dim 梁_下端筋_部品s As String
         Dim 梁_下端筋_Zi As Single                   ' Z
         Dim 梁_下端筋_Bi As Single                   ' B
         Dim 梁_下端筋_Hi As Single                   ' H
         Dim 梁_下端筋_dti As Single                   ' dt
         Dim 梁_下端筋_位置数i As Integer
         Dim 梁_下端筋_Yi(50) As Single               ' 起点側からの Y
       
       
      '[[[ 梁_水平補強筋 ]]]
         Dim 梁_水平補強筋_Start_Noi As Integer            ' 梁_水平補強筋 Start No
         Dim 梁_水平補強筋_Ty数i As Integer
         
         Dim 梁_水平補強筋_Ck_H As Single                ' 梁上端から_下端筋の折り曲げ位置までの L
         Dim 梁_水平補強筋_部品1数i As Integer           ' Cut なし 部品数
         Dim 梁_水平補強筋_部品2数i As Integer
         
         Dim 梁_水平補強筋_部品s As String
         Dim 梁_水平補強筋_部品2s As String
         Dim 梁_水平補強筋_Bi As Single                  ' B X
         Dim 梁_水平補強筋_Cut_Bmax As Single                  ' B X
         Dim 梁_水平補強筋_Cut_Bmin As Single                  ' B X
         Dim 梁_水平補強筋_径i As Single                  ' 径i
         Dim 梁_水平補強筋_Di As Single                  ' D Y
         Dim 梁_水平補強筋_ri As Single                  ' r
         Dim 梁_水平補強筋_dti As Single                  ' dt  梁 端部から
         
         Dim 梁_水平補強筋_位置数i As Integer           ' 片側 配置 位置数
         Dim 梁_水平補強筋_位置_Tyi(90) As Integer      ' 1 Cut なし   2 Cut
         Dim 梁_水平補強筋_位置_Bi(90) As Single         ' Y 位置 での B
         Dim 梁_水平補強筋_位置_Zi(90) As Single         ' Z 位置
         Dim 梁_水平補強筋_位置_Yi As Single             ' 梁起点側からの Y
         Dim 梁_水平補強筋_内外i As Single             ' 1 Stの内側    2 Stの外側
         
         
         
         
      '[[[ 梁_主筋 位置  st計算 ]]]
         Dim 梁起点側_主筋_横dti(3) As Single  '1 梁起点側 1番外側  主筋 位置  2 梁起点側 Stopre側 主筋 位置  3 梁起点側 Stopre中 主筋 位置
         Dim 梁終点側_主筋_横dti(3) As Single  '1 梁終点側 1番外側  主筋 位置  2 梁終点側 Stoper側 主筋 位置  3 梁終点側 Stoper中 主筋 位置
      
         Dim 梁起点側_主筋_径i(3) As Single    '1 梁起点側 1番外側  主筋 径  2 梁起点側 Stoper側 主筋 径  3 梁起点側 Stoper中 主筋 径
         Dim 梁終点側_主筋_径i(3) As Single    '1 梁終点側 1番外側  主筋 径   2 梁終点側 Stoper側 主筋 径  3 梁終点側 Stoper中 主筋 径
            
         Dim 梁起点側_ni(3) As Integer, 梁終点側_ni(3) As Integer  ' 止鉄筋の 番目
   
      
      '[[[ 梁_幅止筋 ]]]
         Dim 梁_幅止筋_Datas  As String
         Dim 梁_幅止筋_Start_Noi As Integer            ' 梁_幅止筋 Start No
         Dim 梁_幅止筋_Ty数i As Integer             ' 幅止筋 種類数i  1+2+2+1=6
         
         Dim 梁_幅止筋_部品s As String              'exp   幅止筋=D16_K100_@15x300_H480_SD390
         Dim 梁_幅止筋_Pits As String
         Dim 梁_幅止筋_dti As Single
         Dim 梁_幅止筋_Hi As Single                 ' 幅止筋 高さ  H480  ---> 480
         Dim 梁_幅止筋_部品Noi(9) As Integer        ' 部品nNo   1,2,3,4,5,6    1  2  3  4 -->3  5 -->2   6 -->4
         Dim 梁_幅止筋_部品L(9) As Single           ' 部品L 長さ
                                                    ' cutなし      1 部品基準L cutなし長さ
                                                    ' 起点側cut    2 起点側       3 終点側
                                                    ' 終点側cut    4 起点側       5 終点側
                                                    ' 両側cut      2* 起点側      6 中        5* 終点側
         
         Dim 梁_幅止筋_個数i(9) As Single       ' 部品nNo   の 個数倍率   =0 部品なし
         Dim 梁_幅止筋_部品_Y(9) As Single
         
         
         Dim 梁_幅止筋_位置数i As Integer           ' 配置 位置数
         Dim 梁_幅止筋_位置_Tyi(300) As Integer     ' 1 cut なし   2 起点側cut   3 終点側cut  4 両側cut
         Dim 梁_幅止筋_位置_Xi(300) As Single
         
         Dim 梁_幅止筋_位置_Ty数i(4) As Integer    ' 1,2,3,4 の数
         Dim 梁_幅止筋_位置_表示Yi(10) As Single   ' 平面図
      
      
      
      
      
      '[[[ 梁_St 上,下  ]]]
         
         Dim 梁_St_Pits As String
         
         Dim 梁_下St_部品s As String          ' exp 下St=D16_X103_K104_B897_H320_SD390
         Dim 梁_下St_径i As Single            ' 下 径i
         Dim 梁_下St_Bi As Single             ' St の幅
         Dim 梁_下St_dti As Single            ' dt
         Dim 梁_下St_Hi As Single             ' St の高さ
         Dim 梁_下St_Yi As Single                   ' 梁起点側からの Y 梁_下St_Yi
         Dim 梁_下St_Fook_r As Single         ' St Fook の r 半径
         
         Dim 梁_上St_Datas As String
         Dim 梁_上St_LoopX座標 As Single      ' ﾙｰﾌﾟ筋の rの初めのX座標
         
         Dim 梁_上St起点側_部品s As String   ' 標準  起点側上St=D19_K94.5_B1125_SD390
         Dim 梁_上St終点側_部品s As String   ' 標準  終点側上St=D19_K94.5_B1125_SD390
         Dim 梁_上St起点側_部品L As Single
         Dim 梁_上St終点側_部品L As Single
         
         Dim 梁_上St_径i As Single            ' 上 径i
         Dim 梁_上S_Z_dti As Single            ' 上 dt
         
         Dim 梁_上St_Hi As Single            ' St の高さ
         Dim 梁_上St_Fook_r As Single      ' St Fook の r 半径

         
         Dim 梁_上St_部品Ty数i As Integer
         Dim 梁_上St_部品Noi(6) As Integer       ' 部品nNo   1, 3,4,5,6,7    1    3 --> 1    4 -->3  5 -->4
         Dim 梁_上St_部品L(6) As Single          ' 部品L 長さ   (1) 起点側標準  (2) 終点側標準  (3) 起点側Stoper部分     (4) 中部Stoper部分    (5) 終点側Stoper部分   (6) ﾙｰﾌﾟ端部部分
         Dim 梁_上St_部品s(6) As String          ' 部品s        (1) 起点側標準  (2) 終点側標準  (3) 起点側Stoper部分     (4) 中部Stoper部分    (5) 終点側Stoper部分   (6) ﾙｰﾌﾟ端部部分
         Dim 梁_上St_個数i(6) As Integer         ' 部品数i      (1) 起点側標準  (2) 終点側標準  (3) 起点側Stoper部分     (4) 中部Stoper部分    (5) 終点側Stoper部分   (6) ﾙｰﾌﾟ端部部分
         Dim 梁_上St_部品_Y(6) As Single         ' 部品 Y位置   (1) 起点側標準  (2) 終点側標準  (3) 起点側Stoper部分     (4) 中部Stoper部分    (5) 終点側Stoper部分   (6) ﾙｰﾌﾟ端部部分
         
         
         Dim 梁_St_位置数i As Integer           ' 配置 位置数
         Dim 梁_St_位置_Xi(300) As Single        ' 柱面からの X位置
         Dim 梁_上St_位置_H(300) As Single        ' St  (i)位置での  _H
         Dim 梁_上St_位置_Tyi(300) As Integer     ' 1 cut なし   2 起点側cut   3 終点側cut  4 両側cut
         Dim 梁_上St_位置_Ty数i(6) As Integer     ' 1,2,3,4 の数
         Dim 梁_上St_Ty_Hmax(6) As Single    ' (Type) Type別の H
         Dim 梁_上St_Ty_Hmin(6) As Single    ' (Type)
         Dim 梁_上St_位置_表示Yi(10) As Single   ' 平面図
         
         
       
       
       
       
       
       
       
       Type 土木_橋脚_梁_Data
                 ' .梁        '桁座
                
                符号 As String * 200:       '符号=梁1
                No As Integer:             '   1  2  3
                Da_BX As String * 200:         'BX=4500+4500
                       BX As Single:           ' BX=BXL+BXR
                       BXL As Single
                       BXR As Single
                       BXL2 As Single:         ' BXL2=BXL-CXL
                       BXR2 As Single:         ' BXR2=BXR-CXR
                
                Da_BY As String * 200:         'BY=1500+1500
                       BY As Single:           ' BY=BYL+BYR
                       BYL As Single
                       BYR As Single
                       BYL2 As Single:         ' BYL2=BYL-CYL    *** CYL の定義が必要
                       BYR2 As Single:         ' BYR2=BYR-CYR　　*** CYR の定義が必要
                
                Da_H As String * 200:          'H=1000+1500
                       H As Single:            ' H=H1+H2
                       h1 As Single:           ' H1=0 傾きなし
                       h2 As Single:           ' 先端　H
                
                Da_勾配 As String * 200:       '勾配=10,-28,-28        ' 勾配=中央の値,左端の値,右端の値
                
                Da_r As String * 200:          'r=250
                Da_r2 As String * 200:         'r=1500
                
                       
                       r As Single
                       r2 As Single
                       
                       勾配C As Single:        '  中央の勾配
                       勾配L As Single:        '  左端の勾配
                       勾配R As Single:        '  右端の勾配
                
                Stoper位置 As String * 400: 'ｽﾄｯﾊﾟｰ位置
                                            '　　　　　　-2750,520   0,520    2750,520,ｽﾄｯﾊﾟｰ1
                                            '            -2750,-520  0,-520   2750,-520      ' X,Y,ｽﾄｯﾊﾟｰ符号
                沓座位置 As String * 400:   '沓座位置
                                            '           -4100,400   -1400,400   1400,400   4100,400,沓座1
                                            '           -4100,-400  -1400,-400  1400,-400  4100,-400     ' X,Y,沓座符号

                

                '[[[ 下鉄筋(あご部分)  ]]]
               ' BD1 As String * 200:        'B3-1=12+12-D25 P98 @±200+4x250+164 L3750+r150[236]+1225                                                  ' 下鉄筋(あご部分)   L-R
                BD2 As String * 200:        '予備

                '[[[ 側鉄筋  ]]]
               ' 水平補強筋 As String * 200:       'B4-1=9+9-D25 @98+8x150 L2880+r270+2289+r270+2880                                                          '(B4) 側鉄筋 1
                水平補強筋2 As String * 200:       '予備


                
                
                End Type
                Public 土木橋脚_梁 As 土木_橋脚_梁_Data

       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の 図面出力設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
       
        Public Dxf_No As Integer
        
        Public 土木_橋脚_DXF_F名$, 土木_橋脚_図面名$, 土木_橋脚_縮尺$, 土木_橋脚_図番号$
       
        Dim 原点X As Single, 原点Y As Single
        Dim 元原点X As Single, 元原点Y As Single
        
        Public 土木_橋脚_用紙size$:   ' A3 A2 A1
        Public 図基本_Scale As Single:  ' 50
        Public 現作図_Scale As Single:  ' 現作図_Scale
        
        Public 橋脚_LAYER_N As Integer, 橋脚_layer$(500)
        Public 橋脚図_基本設定数 As Integer, 橋脚図_基本設定$(900)
        
        Public 図_名称$, 縮尺$, 図番号$
        
        Dim 橋脚原点表示$
        
        Public 図_杭_No As Integer, 図_基礎_No As Integer, 図_柱_No     As Integer, 図_梁_No   As Integer
       
         '[[[ 図面枠 ]]]
                 Public 図面枠Data_max As Integer
                 Public 図面枠Data$(1100)
        
        
        '[[[ 文字 Size ]]]
                 Public 図_題名_Msize As Single:    ' 図面上の Title
                 Public 図名_Msize As Single:       ' 格図の Title
                 Public 図_寸法_Msize As Single:  ' 図の寸法線の文字
        
                 Public 図_表示_Msize As Single:  ' 図の一般表示の文字
        
        
        '[[[ 格図名開き位置 ]]]
        
                Public 格図名開き位置 As Single
        
        
        '[[[ ｾﾝﾀｰﾗｲﾝ  ]]]]
                Public 図_CenterLine_線種$:    '図のｾﾝﾀｰﾗｲﾝの線種
                Public 図_CenterLine_線色$:    '図のｾﾝﾀｰﾗｲﾝの線色
        
        
        '[[[ 躯体図 ]]]
        Public 橋脚_寸法線_Pit_躯体図 As Single:   ' 5mm  躯体図 寸法線の間隔
        
        Type 土木橋脚_寸法線位置
                 U開き As Single:  ' 40mm  躯体図 上寸法線_躯体から開き
                 D開き As Single:  ' 40mm  躯体図 下寸法線_躯体から開き
                 L開き As Single:  ' 40mm  躯体図 左寸法線_躯体から開き
                 R開き As Single:  ' 40mm  躯体図 右寸法線_躯体から開き
                 End Type
                 
                 Public 寸法線位置_杭平面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_杭断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_杭長断面 As 土木橋脚_寸法線位置
            
                 Public 寸法線位置_基礎平面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_基礎A断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_基礎B断面 As 土木橋脚_寸法線位置
            
                 
                 Public 寸法線位置_沓座A平面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_沓座E平面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_沓座B断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_沓座D断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_沓座F断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_沓座H断面 As 土木橋脚_寸法線位置
                 
                 
                 
                 Public 寸法線位置_柱平面A As 土木橋脚_寸法線位置
                 Public 寸法線位置_柱平面B As 土木橋脚_寸法線位置
                 Public 寸法線位置_柱断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_柱長断面 As 土木橋脚_寸法線位置
            
                 Public 寸法線位置_梁平面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_梁断面 As 土木橋脚_寸法線位置
                 Public 寸法線位置_梁長断面 As 土木橋脚_寸法線位置
            
        '[[[ 柱ﾌｰﾌﾟ ]]]
                 Public Hoop_Dx As Single:  ' 作図微調整 mm
                 Public Hoop_Dy As Single:  ' 作図微調整 mm
       
       
       
       
       
        '[[[ 鉄筋加工図  Mark ]]]
                 Public 橋脚_鉄筋_Mark_D As Single:   ' 橋脚_鉄筋_Markの直径 mm 中に数値あり
                 Public 橋脚_鉄筋_Mark_Msize As Single:   ' 橋脚_鉄筋_Markの Msize mm
        
                 Public 橋脚_J鉄筋開き As Single:   ' 0.5mm   鉄筋の接合部作図の 鉄筋と鉄筋 のすき間
                 Public 橋脚_寸法線_開き_鉄筋図 As Single:   ' 7mm  鉄筋加工図 寸法線_鉄筋から開き mm
                 Public 鉄筋_Joint線色$:     ' 鉄筋_Jointの線色
        
        ' 鉄筋名称 Mark
                 Public 橋脚_鉄筋名称_Layer$:    '鉄筋名称のLayer
                 Public 橋脚_鉄筋名称_径 As Single:  '鉄筋名称の円の直径 mm
                 Public 橋脚_鉄筋名称_Msize1 As Single:  '鉄筋名称の文字のｻｲｽﾞ mm
                 Public 橋脚_鉄筋名称_Msize2 As Single:  '鉄筋名称の文字のｻｲｽﾞ mm
                 Public 橋脚_鉄筋名称_Msize3 As Single:  '鉄筋名称の文字のｻｲｽﾞ mm
              
                 Public 名称_L1 As Single:  ' 鉄筋名称の文字の下部線長さ 20mm
                 Public 名称_L2 As Single:   '鉄筋名称の文字の下部線長さ 25mm
              
       
        '[[[ 断面位置指定 ]]]
        
                 Public 断面位置指定_XL As Single:   'mm
                 Public 断面位置指定_YL As Single:   'mm
                 Public 断面位置指定_矢L As Single:   'mm
                 Public 断面位置指定_矢角 As Single:   '度
                 Public 断面位置指定_Msize As Single:    '
                 Public 断面位置指定開き As Single:  ' mm
                 Public 断面位置指定_線色$
       
       
        '[[[ Mark 位置 ]]]
                 Public 表示位置_X個数 As Integer, 表示位置_Y個数 As Integer, 表示位置_Z個数 As Integer
                 Public 表示位置_Z_Start As Single
                 Public 表示位置_XPit As Single, 表示位置_Ypit As Single, 表示位置_Zpit As Single
                 Public 表示位置_X(500) As Single, 表示位置_Y(500) As Single, 表示位置_Z(500) As Single

       
       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の 鉄筋表 出力設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
                Public 鉄筋表項目s(30) As String, 鉄筋表項目2s(30) As String, 鉄筋表L(30) As Single, 鉄筋表X(30) As Single
                Public 鉄筋表_XN As Integer, 鉄筋表_YN As Integer
                Public 鉄筋表_Ypit As Single, 鉄筋表_YL As Single, 鉄筋表_XL As Single
       
                Public 鉄筋表_現Y As Single:       '   現在のY座標
 
                Public 鉄筋材料表_Msize As Single
                Public 鉄筋表_項目s As String
                Public 表部材箇所i As Integer
                
                Public 前鉄筋符号s As String, 前鉄筋径s As String, 前前鉄筋径s As String, 前鉄筋材質s As String
       
                Public 表_鉄筋径$(30), 表_Σ鉄筋重量(30) As Single, 表_ΣΣ鉄筋重量(30) As Single
                Public 表_鉄筋W箇所(30) As Integer, 表_鉄筋ΣW箇所(30) As Integer
                Public 表_鉄筋K箇所(30) As Integer, 表_鉄筋ΣK箇所(30) As Integer
       
       
                Dim 表符号s As String, 表鉄筋径s As String
                Dim 表鉄筋L As Single, 表鉄筋本数 As Single, 表鉄筋重量 As Single, 表鉄筋Σ重量 As Single
                Dim 表鉄筋適用s As String, 表鉄筋材質s As String, 表鉄筋W箇所 As Integer, 表鉄筋K箇所 As Integer
                Dim 表鉄筋Marki As Integer
       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　追加
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
                 Dim 橋脚_鉄筋L計算_max$  ' 鉄筋L 最大長さSet   700～900 の場合 　　L=900 とする
                 Dim 現Stoper_No As Integer ' 現在 使用中の Stoper No
       
       
                 Dim 寸法表示基準L As Single '  L < 寸法表示基準L   寸法表示方法変更  外側に表示
       
       
       
       
       
       Dim oo


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　出力　コントロール　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
Sub 橋脚図化_出力(F_Name$)
    ZZZ5 = 0
  '  Set ShoriTyuuX = ShoriTyuu
  '  Load ShoriTyuuX
  '  ShoriTyuuX.Text1.TEXT = "加工図作成中"
  '  ShoriTyuuX.Show
      '橋脚原点表示$ = "Y"
        世er = ""
         EER1 = 100: ' *2002.11.23
        現Stoper_No = 1
        世_柱筋間隔倍率i = 2.5
        '**************
    '世誤CK = 200: er ("世誤CK = 200")
    Close
        
          表示Form_図面画面s = ""
          
          Project_Titles = pEtc(0)
          Project_契約番号s = pEtc(1)
        
        
        梁_上St_LoopX座標 = 999999999
        
        柱_主筋_開き倍率 = 2.5
        寸法表示基準L = 200 '150 'mm
        Stoper_Ty数i = 0: Stoper終点側位置数i = 0: Stoper起点側位置数i = 0
        For ii = 1 To 6: Stoper_符号s(ii) = "": Next ii
        
        沓座_Ty数i = 0: 沓座終点側位置数i = 0: 沓座起点側位置数i = 0
        For ii = 1 To 10: 沓座_符号s(ii) = "": Next ii
    
     Temp$ = TEMP_Data_dsk + "DATA1.TMP"
     

     WTYPE$ = "D"
    AllCount = 0
    Open F_Name$ For Input As #1
    Do
        If EOF(1) Then
            Da$ = "//END"
            Exit Do
        Else
            AllCount = AllCount + 1
            Line Input #1, Da$
            Da1$ = Da$
            Da$ = Trim$(Da$)
            If Mid$(Da$, 1, 2) <> "//" Then
            Else
                Select Case UCase(CTYPE$)
                Case ""
                Case "//橋脚DATA"
                Case "//橋脚図"
                Case "//END"
                    Exit Do
                Case Else:
                End Select
            End If
        End If
    Loop
    Close #1
'    ShoriTyuuX.ProgressBar1.min = 0
 '   ShoriTyuuX.ProgressBar1.max = Int(AllCount * 1.2)
     Open F_Name$ For Input As #1
     
     Open Temp$ For Output As #5
     
     
     Do: If EOF(1) Then Da$ = "//END" Else Line Input #1, Da$
        Call ProAddOn1
        Da1$ = Da$
        Da$ = Trim$(Da$)
        If Mid$(Da$, 1, 2) <> "//" Then
              Call 入力DATA処理(WTYPE$, Da1$)
              Else
              Print #5, "/END": Print #5, "/END": Print #5, "/END"
              Close #5
           
           
           
           EMS0 = CTYPE$ + "  ": EMS1 = "": EMS2 = ""
           Select Case UCase(CTYPE$)
                  Case "":  ' 初め
                  '
                  Case "//橋脚DATA"
                                        Call 土木_橋脚_Data_Read(Temp$)
                  Case "//橋脚図"
                                        Call 土木_橋脚_図Data_Read(Temp$)
                  
                  Case "//END": Exit Do
                  Case Else: er ("出力項目  [" + CTYPE$ + "] は無い   "): If 世誤CK > 99 Then Stop: 'Else 世er = "*": Exit Sub
                        
             End Select
             

           '************************************************************
           If 世er <> "" Then er ("** Err のため 以後の処理を中断します  "):  Exit Do
           '************************************************************
           
           CTYPE$ = Da$:   連続data$ = ""
                     CTYPE$ = 文字変換$(CTYPE$, "　", "  "): ' 漢字ﾌﾞﾗﾝｸを置きかえる
                     ni = InStr(CTYPE$, " "): If ni > 1 Then CTYPE$ = Mid(CTYPE$, 1, ni - 1): 連続data$ = Trim(Mid(Da$, ni + 1))
                     If Mid$(連続data$, 1, 1) = "'" Then 連続data$ = ""
                     If 連続data$ <> "" Then er (Da$ + " 計算項目の後に ﾃﾞｰﾀｰがある"): If 世誤CK > 99 Then Stop
           
           
           Open Temp$ For Output As #5

          End If
        
             Loop
   
       If 世er = "" Then 表示Form_図面画面s = "Y"
       '
       表示Form_図面画面s = "Y" ''''''''''''''''''''''' 05/05/08 nagase
       '
       世er = ""
        '
        Close #1
   
    ' Call OUT_ProgressBar(1, "")
   
       
    On Error GoTo NG1
        Unload ShoriTyuuX
NG1:
    er ("計算終了")
End Sub



'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　土木橋脚        DATA READ Control 　　　  　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
Public Sub 土木_橋脚_Data_Read(読込Data$)
     
     Dim 項目3s As String
    ' 世誤CK = 200

     EMS0 = "土木橋脚 Data Read": EMS1 = "": EMS2 = ""
       
     Call 橋脚_初期値
       
     Open 読込Data$ For Input As #2
       
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
     
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case UCase$(項目2s$)
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/END": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        
        Case ".杭":                Call Read_橋脚_杭(Da$):    INP$ = "N"
        Case ".基礎":              Call Read_橋脚_基礎(Da$):  INP$ = "N"
        Case ".柱":                Call Read_橋脚_柱(Da$):    INP$ = "N"
        Case ".沓座", ".踏座":     Call Read_橋脚_沓座(Da$):  INP$ = "N"
        Case ".ｽﾄｯﾊﾟ", ".ｽﾄｯﾊﾟｰ":  Call Read_橋脚_Stoper(Da$): INP$ = "N"
        Case ".梁":                Call Read_橋脚_梁(Da$):    INP$ = "N"
     
        Case Else: 世er = "ｺﾏﾝﾄﾞ位置で (" + Da$ + ") は 理解できません"
        End Select
        世er = "" '''05/05/08   nagase
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
     Loop
    
     Close #2
    
     End Sub
 
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　 　　　                        　　　  　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　             　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛




Private Sub Read_橋脚_杭(Da$)
     
          Dim 項目3s As String, D1s As String, ii As Integer, jj As Integer, kk As Integer, 主筋L As Single, i1 As Integer, i2 As Integer

     杭_No_Max = 杭_No_Max + 1: 杭_Na$ = "杭" + F9(杭_No_Max)
     EMS1 = "Data Read 杭 [No=" + F9(杭_No_Max) + "]": EMS2 = ""

 
                  杭_Noi = 杭_No_Max
                  杭_符号s = "": 杭_Ds = "": 杭_Ls = "": 杭_Di = 0
                  杭_Speser種数i = 0:
                  For ii = 1 To 10: 杭_Spesers(ii) = "": Next ii
                  杭_主筋_種類数i = 0:
                  For ii = 1 To 20: 杭_主筋_s(ii) = "": Next ii
                  杭_主筋_Σ本数i = 0
                  杭_底鉄筋s = ""
     
                  杭_HpD_種類数i = 0: 杭_Hp_ΣPits = "": 杭_Hp_Start_Zi = 0
                  杭_Hp部品_種類数i = 0
                  For ii = 1 To 20: 杭_HpD_s(ii) = "":  Next ii
                  杭_Hp_組立筋s = ""
                  杭_Hp_組立筋数i = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS2 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       杭_Na$ = Trim(項目3s)
        Case "D=":          杭_Ds = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            杭_Di = Val(杭_Ds)
        Case "L=":          杭_Ls = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            杭_Li = Val(杭_Ls)
        Case "S=":          杭_Speser種数i = 杭_Speser種数i + 1: Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                            
                            杭_Spesers(杭_Speser種数i) = 項目3s
        
        Case "K=":          杭_主筋_種類数i = 杭_主筋_種類数i + 1: Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                            ii = 杭_主筋_種類数i
                            杭_主筋_Σ本数i = 杭_主筋_Σ本数i + 鉄筋数_Σn
                            杭_主筋_s(ii) = 項目3s
                            杭_主筋_Anchor_L(ii) = 鉄筋_S定着
                            杭_主筋_ΣL(ii) = 鉄筋L_全ΣL
                            杭_主筋_Cut_ck_L(ii) = 鉄筋L_全ΣL - 鉄筋_S定着
                            杭_主筋_本数i(ii) = 鉄筋数_Σn
                            杭_主筋_dti(ii) = 鉄筋_SK位置
                            杭_主筋_径i(ii) = Val(Mid(橋脚鉄筋径$(1), 2))
                            杭_主筋_部品_接合数i(ii) = 鉄筋径_種別数i
                            For jj = 1 To 鉄筋径_種別数i: 杭_主筋_部品_径i(ii, jj) = Val(Mid(橋脚鉄筋径$(jj), 2)): Next jj
                            
                            杭_主筋_部品数i(ii) = 鉄筋L_Data数
                            For jj = 1 To 鉄筋L_Data数: 杭_主筋_部品_s(ii, jj) = 鉄筋L_Data$(jj): Next jj
                                                      
                            
                            ni = 1: 径i = 杭_主筋_径i(1): 杭_主筋_部品_分割位置i(ii, 1) = 1: 杭_主筋_部品_分割径i(ii, 1) = 径i
                            For jj = 1 To 鉄筋径_種別数i:
                                If 径i <> 杭_主筋_部品_径i(ii, jj) Then
                                    ni = ni + 1: 杭_主筋_部品_分割位置i(ii, ni) = jj
                                    径i = 杭_主筋_部品_径i(ii, jj)
                                     杭_主筋_部品_分割径i(ii, ni) = 径i
                                    End If
                                Next jj
                            杭_主筋_部品_分割数i(ii) = ni
                            杭_主筋_部品_分割位置i(ii, ni + 1) = 鉄筋径_種別数i + 1
                            
                            '[[[ 分割部品 ]]]
                            表示Xi = 0
                            For jj = 1 To 杭_主筋_部品_分割数i(ii)
                                i1 = 2 * (杭_主筋_部品_分割位置i(ii, jj) - 1): i2 = 2 * (杭_主筋_部品_分割位置i(ii, jj + 1) - 1) - 1
                                主筋L = 0: W数i = 0: K数i = 0: J数i = 0
                                For kk = i1 To i2
                                   Select Case Mid(杭_主筋_部品_s(ii, kk), 1, 1)
                                   Case "W": W数i = W数i + 1
                                   Case "K": K数i = K数i + 1
                                   Case "J": J数i = J数i + 1: 表示Xi = 表示Xi - Val(Mid(杭_主筋_部品_s(ii, kk), 2))
                                   Case Else: 主筋L = 主筋L + Val(杭_主筋_部品_s(ii, kk)): 表示Xi = 表示Xi + Val(杭_主筋_部品_s(ii, kk))
                                   End Select
                                   Next kk
                                
                                杭_主筋_部品_分割L(ii, jj) = 主筋L
                                杭_主筋_部品_W箇所数i(ii, jj) = W数i
                                杭_主筋_部品_K箇所数i(ii, jj) = K数i
                                杭_主筋_部品_表示_Xi(ii, jj) = 表示Xi - 主筋L
                                Next jj
                                
                            
        
        Case "Hp底=":       杭_底鉄筋s = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
        
        Case "Hp=":         杭_HpD_種類数i = 杭_HpD_種類数i + 1:     Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                            ii = 杭_HpD_種類数i
                            杭_HpD_s(ii) = 項目3s
                            杭_HpD_径i(ii) = Val(Mid(橋脚鉄筋径$(1), 2))
                            杭_HpD_Di(ii) = 鉄筋_SH径
                            杭_HpD_Pits(ii) = 鉄筋_pit$
                            杭_HpD_ZL(ii) = 鉄筋P_ΣL
                            If 杭_Hp_Start_Zi = 0 Then 杭_Hp_Start_Zi = 鉄筋_Z位置
        
                            杭_Hp_ΣPits = 杭_Hp_ΣPits + "+" + 鉄筋_pit$
        
        ii = 0
        
        Case "Hp組立筋=":     杭_Hp_組立筋s = 項目3s: D1s = 項目3s: ' ni = InStr(6, D1s, " "): D1s = Mid(D1s, 1, ni - 1)
                            Call 橋脚_鉄筋_ck(項目s$, "帯筋", D1s)
                            杭_Hp_組立筋径i = Val(Mid(橋脚鉄筋径$(1), 2))
                            杭_Hp_組立筋Di = 鉄筋_SH径
                            杭_Hp_組立筋Pits = 鉄筋_pit$
        ii = 0
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub

        Loop
     
        For ii = 1 To 杭_No_Max: If 杭符号$(ii) = 杭_Na$ Then 世er = "杭符号 (" + 杭_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        杭符号$(杭_No_Max) = 杭_Na$:     杭_符号s = 杭_Na$
     
     
       Call SP_杭_主筋_Yi_定義
       Call SP_杭_Hp_定義
       
  ' D1s   D1 $  D1$
     End Sub


Sub SP_杭_主筋_Yi_定義()
      Dim Kno As Integer, 主筋本数 As Single, 主筋角度 As Single, 角度 As Single, 鉄筋r As Single, Y0 As Single
      '[[[ 主筋 ]]]
'            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            Kno = 0
            For ii = 1 To 主筋本数:  Kno = Kno + 1: If Kno > 杭_主筋_種類数i Then Kno = 1
                杭_主筋_No(ii) = Kno
                Next ii
            角度 = 0: 杭_主筋_Yi_位置数i = Int(主筋本数 / 2 + 1): 鉄筋r = 杭_Di / 2 - 杭_主筋_dti(1)
            For ii = 1 To 杭_主筋_Yi_位置数i:
                Y0 = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                杭_主筋_Yi(ii) = Y0
                Next ii

End Sub


Sub SP_杭_Hp_定義()
    Dim ii As Integer, i2 As Integer, i3 As Integer, ini As Integer, jj As Integer, ZZi As Single, Hp径i As Single, ni As Integer, ZLi As Single
    
       ini = 1: ZZi = 杭_Hp_Start_Zi
       杭_Hp_Zi(1) = ZZi: 杭_Hp_Typei(1) = 1
       杭_Hp_径i(1) = 杭_HpD_径i(1)
       
       For ii = 1 To 杭_HpD_種類数i
            Call 橋脚_鉄筋_Pit_ck(杭_HpD_Pits(ii))
            Hp径i = 杭_HpD_径i(ii)
            For i2 = 1 To 鉄筋P_Σ数
                 杭_Hp_Zi(ini + i2) = ZZi + 鉄筋P_位置(i2)
                 杭_Hp_Typei(ini + i2) = ii
                 杭_Hp_径i(ini + i2) = Hp径i
                 Next i2
                 ini = ini + 鉄筋P_Σ数
                 ZZi = ZZi + 鉄筋P_ΣL
            Next ii
            杭_Hp_Σ数i = ini
 
       '[[[ 杭_HpD_Zi ]]]
       ZZi = 杭_Hp_Start_Zi
       For ii = 1 To 杭_HpD_種類数i
           杭_HpD_Zi(ii) = ZZi
           ZZi = ZZi + 杭_HpD_ZL(ii)
           Next ii
           杭_HpD_Zi(杭_HpD_種類数i + 1) = ZZi


       '[[[ 組立筋 ]]]
       Dim 組立筋Zi As Single
       Call 橋脚_鉄筋_Pit_ck(杭_Hp_組立筋Pits)
       For i2 = 1 To 鉄筋P_Σ数
            組立筋Zi = 鉄筋P_位置(i2)
            For i3 = 1 To 杭_Hp_Σ数i
                If 杭_Hp_Zi(i3) >= 組立筋Zi Then 杭_Hp_Typei(i3) = -杭_Hp_Typei(i3): 杭_Hp_径i(i3) = 杭_Hp_組立筋径i: Exit For
                Next i3
            Next i2
    
    
       '[[[ 杭_Hp部品_種類数i ]]]
       jj = 0: Hp径i = 0:
       For ii = 1 To 杭_HpD_種類数i
           If Hp径i <> 杭_HpD_径i(ii) Then
                jj = jj + 1
                杭_Hp部品_s(jj) = 杭_HpD_s(ii)
                杭_Hp部品_径i(jj) = 杭_HpD_径i(ii)
                杭_Hp部品_Di(jj) = 杭_HpD_Di(ii)
                杭_Hp部品_Zi(jj) = 杭_HpD_Zi(ii)
                Hp径i = 杭_HpD_径i(ii)
                End If
           杭_HpD_部品Noi(ii) = jj
           Next ii
       
       杭_Hp部品_種類数i = jj: 杭_Hp部品_Zi(杭_Hp部品_種類数i + 1) = 杭_HpD_Zi(杭_HpD_種類数i + 1)
    
       For ii = 1 To 杭_HpD_種類数i
           杭_Hp部品_ZL(ii) = 杭_Hp部品_Zi(ii + 1) - 杭_Hp部品_Zi(ii)
           Next ii
    
    
      ' [ 杭_Hp部品_数i(i)  杭_Hp_部品Noi(i) ]
      For jj = 1 To 15: 杭_Hp部品_数i(jj) = 0: Next jj
      杭_Hp_組立筋数i = 0
      
      For ii = 1 To 杭_Hp_Σ数i
           Select Case 杭_Hp_Typei(ii)
           Case Is < 0: 杭_Hp_組立筋数i = 杭_Hp_組立筋数i + 1
                   杭_Hp_部品Noi(ii) = 杭_Hp_Typei(ii)
           Case Else
                   jj = 杭_HpD_部品Noi(杭_Hp_Typei(ii))
                   杭_Hp部品_数i(jj) = 杭_Hp部品_数i(jj) + 1
                   杭_Hp_部品Noi(ii) = jj
           End Select
           Next ii
    
    ' [ 杭_Hp_組立筋_Typei ]
     杭_Hp_組立筋_Typei = 100
     For ii = 1 To 杭_Hp部品_種類数i: 杭_Hp部品_組立筋i(ii) = 0
         If 杭_Hp_組立筋径i = 杭_Hp部品_径i(ii) Then 杭_Hp_組立筋_Typei = ii: 杭_Hp部品_組立筋i(ii) = 1: 杭_Hp部品_数i(ii) = 杭_Hp部品_数i(ii) + 杭_Hp_組立筋数i
         Next ii
    
    
    '[ 杭_Hp部品_cut位置i(i) ]
    For ii = 1 To 杭_Hp部品_種類数i
        杭_Hp部品_cut位置i(ii) = 杭_Hp部品_Zi(ii) + 杭_Hp部品_ZL(ii) / 2
        Next ii
        杭_Hp部品_cut位置i(杭_Hp部品_種類数i + 1) = 杭_Li - 200 ' 杭先端
    
    ' [ 杭_Hp部品_主筋_配筋Typei(i) ]
    For ii = 1 To 杭_Hp部品_種類数i + 1
        ZLi = 杭_Hp部品_cut位置i(ii): ni = 0
        For i2 = 1 To 杭_主筋_種類数i
             If ZLi < 杭_主筋_Cut_ck_L(i2) Then ni = ni + 1
             Next i2
        杭_Hp部品_主筋_配筋Typei(ii) = ni
    
        Next ii
        If 杭_Hp部品_主筋_配筋Typei(杭_Hp部品_種類数i) > 1 Then 杭_Hp部品_主筋_配筋Typei(杭_Hp部品_種類数i) = 1
    
    End Sub



Private Sub Read_橋脚_基礎(Da$)
     Dim 項目3s As String, Di(50) As Single, D1s As String
     Dim ii As Integer, i1 As Integer, i2 As Integer, ni As Integer
     
     基礎_No_Max = 基礎_No_Max + 1: 基礎_Na$ = "基礎" + F9(基礎_No_Max)
     EMS1 = "Data Read 基礎 [No=" + F9(基礎_No_Max) + "]": EMS2 = ""

     基礎_St_線路方向_部品s = "": 基礎_St_線路方向_Pits = "": 基礎_St_線路方向_割付種類数i = 0
     基礎_St_直角方向_部品s = "": 基礎_St_直角方向_Pits = "": 基礎_St_直角方向_割付種類数i = 0
 
                  基礎_St_線路方向_部品_Hs = "": 基礎_St_直角方向_部品_Hs = ""
                   
                   基礎_BXs = "": 基礎_BYs = "": 基礎_Hs = "": 基礎_杭位置s = ""
                  For ii = 1 To 4:    基礎_FYs(ii) = "":  基礎_FXs(ii) = "": 基礎_FX_Hs(ii) = "":   Next ii
                  基礎_傾斜_K3 = 0: 基礎_傾斜_K5 = 0: 基礎_傾斜_L1 = 0: 基礎_傾斜_L2 = 0: 基礎_傾斜_h1 = 0
                  基礎_BXi = 0: 基礎_BXLi = 0: 基礎_BXRi = 0
                  基礎_BYi = 0: 基礎_BYLi = 0: 基礎_BYRi = 0: 基礎_BYL端i = 0: 基礎_BYL柱i = 0: 基礎_BYR端i = 0: 基礎_BYR柱i = 0
                  基礎_Hi = 0: 基礎_HDi = 0: 基礎_HUi = 0
                  基礎_捨cons = "": 基礎_捨con_t = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS2 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       基礎_Na$ = Trim(項目3s)
        Case "BX=":        基礎_BXs = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                          Select Case 躯体_Data数
                          Case 1:   基礎_BXi = 躯体_D(1): 基礎_BXLi = 基礎_BXi / 2: 基礎_BXRi = 基礎_BXi / 2
                          Case 2:   基礎_BXLi = 躯体_D(1): 基礎_BXRi = 躯体_D(2): 基礎_BXi = 基礎_BXLi + 基礎_BXRi
                          Case Else: 世er = " (" + Da$ + ") は ﾃﾞｰﾀｰの個数があわない": If 世誤CK > 99 Then er (""): Stop
                          End Select
        
        Case "BY=":        基礎_BYs = 項目3s:       Call 橋脚_躯体_ck(項目s$, 項目3s)
                          Select Case 躯体_Data数
                          Case 1:   基礎_BYi = 躯体_D(1): 基礎_BYLi = 基礎_BYi / 2: 基礎_BYRi = 基礎_BYi / 2
                          Case 2:   基礎_BYLi = 躯体_D(1): 基礎_BYRi = 躯体_D(2): 基礎_BYi = 基礎_BYLi + 基礎_BYRi
                          Case 3:   基礎_BYL端i = 躯体_D(1): 基礎_BYL柱i = 躯体_D(2) / 2: 基礎_BYR柱i = 躯体_D(2) / 2: 基礎_BYR端i = 躯体_D(3):
                                    基礎_BYLi = 基礎_BYL端i + 基礎_BYL柱i: 基礎_BYRi = 基礎_BYR端i + 基礎_BYR柱i: 基礎_BYi = 基礎_BYLi + 基礎_BYRi
                          Case 4:   基礎_BYL端i = 躯体_D(1): 基礎_BYL柱i = 躯体_D(2): 基礎_BYR柱i = 躯体_D(3): 基礎_BYR端i = 躯体_D(4):
                                    基礎_BYLi = 基礎_BYL端i + 基礎_BYL柱i: 基礎_BYRi = 基礎_BYR端i + 基礎_BYR柱i: 基礎_BYi = 基礎_BYLi + 基礎_BYRi
                          Case Else: 世er = " (" + Da$ + ") は ﾃﾞｰﾀｰの個数があわない": If 世誤CK > 99 Then er (""): Stop
                          End Select
        
        
        
        Case "H=":         基礎_Hs = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                          Select Case 躯体_Data数
                          Case 1:   基礎_Hi = 躯体_D(1): 基礎_HDi = 基礎_Hi: 基礎_HUi = 0
                          Case 2:   基礎_HDi = 躯体_D(1): 基礎_HUi = 躯体_D(2): 基礎_Hi = 基礎_HDi + 基礎_HUi
                          Case Else: 世er = " (" + Da$ + ") は ﾃﾞｰﾀｰの個数があわない": If 世誤CK > 99 Then er (""): Stop
                          End Select
        
       Case "捨ｺﾝ=":      基礎_捨cons = 項目3s:          Call 橋脚_躯体_ck(項目s$, 項目3s)
                          基礎_捨con_t = 躯体_D(1)
        
        Case "杭位置":    D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          基礎_杭位置s = D1$: Call 橋脚_杭位置_ck(D1$)
                          INP$ = "N"
        
        Case "傾斜=":      基礎_傾斜_D_s = 項目3s:  Call Ddata_D(" ", 基礎_傾斜_D_s, Di, ni)
                          基礎_傾斜_K3 = Di(1): 基礎_傾斜_K5 = Di(2): 基礎_傾斜_L1 = Di(3): 基礎_傾斜_L2 = Di(4): 基礎_傾斜_h1 = Di(5)
                          
        Case "FY1=", "FY2=", "FY3=": '  F1  F2  F3
                           ii = Val(Mid(項目s$, 3))
                           基礎_FYs(ii) = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)  ' F1
                           '基礎_FY_符号s(ii) = "F" + f0(ii)
                           基礎_FY_径i(ii) = 鉄筋_径i
                           基礎_FY_dti(ii) = 鉄筋_SK位置
                           橋脚_鉄筋θ = 0: Call 橋脚_鉄筋_L_ck("標準", 鉄筋_B$):  基礎_FY_Bi(ii) = 鉄筋L_XL
                          ' 基礎_FY_Bi(ii) = Val(鉄筋_B$)
                           
                           基礎_FY_Gs(ii) = 鉄筋_G$
                           基礎_FY_GRs(ii) = FP_Bs_Reverse(鉄筋_G$)
                           基礎_FY_Hi(ii) = Val(鉄筋_H$)
                           基礎_FY_Zi(ii) = 鉄筋_Z位置
                           基礎_FY_部品数i(ii) = 鉄筋P_Σ数 - 1
                           
                           If ii = 3 Then
                                  基礎_FY_部品数i(ii) = 鉄筋P_Σ数
                                  基礎_FY3_部品数i = 鉄筋P_Σ数
                                  For i2 = 1 To 基礎_FY3_部品数i: 基礎_FY3_Zi(i2) = 鉄筋P_位置(i2):  Next i2
                                  End If
        
        Case "FX1=", "FX2=", "FX3=", "FX4=":  ' F11  F12  F13  F14
                           ii = Val(Mid(項目s$, 3))
                           基礎_FXs(ii) = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s) ' F11
                           基礎_FX_径i(ii) = 鉄筋_径i
                           基礎_FX_dti(ii) = 鉄筋_SK位置
                           基礎_FX_Bs(ii) = 鉄筋_B$
                           基礎_FX_BRs(ii) = FP_Bs_Reverse(鉄筋_B$)
                           橋脚_鉄筋θ = 0: Call 橋脚_鉄筋_L_ck("標準", 鉄筋_B$):  基礎_FX_Bi(ii) = 鉄筋L_XL
                           基礎_FX_Hi(ii) = Val(鉄筋_H$)
                           基礎_FX_Hs(ii) = 鉄筋_H$
                           基礎_FX_部品数i(ii) = 鉄筋P_Σ数 - 1:
                           
                           If ii = 4 Then
                                  基礎_FX_部品数i(ii) = 鉄筋P_Σ数
                                  基礎_FX4_部品数i = 鉄筋P_Σ数
                                  For i2 = 1 To 基礎_FX4_部品数i:  基礎_FX4_Zi(i2) = 鉄筋P_位置(i2):  Next i2
                                  End If
        
        
        Case "St 線路方向=":      ' f1
                                  基礎_St_線路方向_部品s = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                                  
                                  基礎_St_線路方向_部品_径i = 鉄筋_径i
                                  基礎_St_線路方向_部品_関係径i = 基礎_FY_径i(1)
                                  基礎_St_線路方向_部品_B0i = Val(鉄筋_B$)
                                  基礎_St_線路方向_部品_Bi = Val(鉄筋_B$) + 基礎_St_線路方向_部品_関係径i + 鉄筋_径i
                                  基礎_St_線路方向_部品_Hi = Val(鉄筋_H$)
                                  基礎_St_線路方向_部品_Hs = 鉄筋_H$
                                  If 基礎_St_線路方向_部品_Hi < 0 Then 基礎_St_線路方向_部品_Hs = ""
                                  
                                  基礎_St_線路方向_部品_dti = 鉄筋_SK位置
        
        Case "St 線路方向Pit=":   基礎_St_線路方向_Pits = 項目3s:       Call 橋脚_鉄筋_Pit_ck(項目3s)
                                  基礎_St_線路方向_Pit数i = 鉄筋P_Σ数
                                  For ii = 1 To 鉄筋P_Σ数: 基礎_St_線路方向_Pit_Yi(ii) = 鉄筋P_位置(ii): Next ii
                                  For ii = 1 To 鉄筋P_Σ数 Step 2: 基礎_St_線路方向_配置i(ii) = 1: 基礎_St_線路方向_配置i(ii + 1) = 2:  Next ii
        
        
        
        Case "St 線路方向割付=":  基礎_St_線路方向_割付種類数i = 基礎_St_線路方向_割付種類数i + 1: ii = 基礎_St_線路方向_割付種類数i
                                  基礎_St_線路方向_割付s(ii) = 項目3s
                                  D1s = F_計算_分解(項目3s)
                                  基礎_St_線路方向_割付Pits(ii) = D1s
                                  Call 橋脚_鉄筋_位置_ck(D1s): 基礎_St_線路方向_割付数i(ii) = (鉄筋位置_Σ数 - 1) / 2
        
        
        Case "St 直角方向=":      ' f2
                                  基礎_St_直角方向_部品s = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                                  
                                  基礎_St_直角方向_部品_径i = 鉄筋_径i
                                  基礎_St_直角方向_部品_関係径i = 基礎_FX_径i(1)
                                  基礎_St_直角方向_部品_B0i = Val(鉄筋_B$)
                                  基礎_St_直角方向_部品_Bi = Val(鉄筋_B$) + 基礎_St_直角方向_部品_関係径i + 鉄筋_径i
                                  基礎_St_直角方向_部品_Hi = Val(鉄筋_H$)
                                  基礎_St_直角方向_部品_Hs = 鉄筋_H$
                                  基礎_St_直角方向_部品_dti = 鉄筋_SK位置
        
        
        Case "St 直角方向Pit=":   基礎_St_直角方向_Pits = 項目3s:       Call 橋脚_鉄筋_Pit_ck(項目3s)
                                  基礎_St_直角方向_Pit数i = 鉄筋P_Σ数
                                  For ii = 1 To 鉄筋P_Σ数: 基礎_St_直角方向_Pit_Xi(ii) = 鉄筋P_位置(ii): Next ii
                                  For ii = 1 To 鉄筋P_Σ数 Step 2: 基礎_St_直角方向_配置i(ii) = 1: 基礎_St_直角方向_配置i(ii + 1) = 2:  Next ii
        
        
        Case "St 直角方向割付=":  基礎_St_直角方向_割付種類数i = 基礎_St_直角方向_割付種類数i + 1:       ii = 基礎_St_直角方向_割付種類数i
                                  基礎_St_直角方向_割付s(ii) = 項目3s
                                  D1s = F_計算_分解(項目3s)
                                  基礎_St_直角方向_割付Pits(ii) = D1s
        
                                  Call 橋脚_鉄筋_位置_ck(D1s): 基礎_St_直角方向_割付数i(ii) = (鉄筋位置_Σ数 - 1) / 2
        
            ii = 0
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To 基礎_No_Max: If 基礎符号$(ii) = 基礎_Na$ Then 世er = "基礎符号 (" + 基礎_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop
               Next ii
        基礎符号$(基礎_No_Max) = 基礎_Na$:    基礎_符号s = 基礎_Na$
     
     
     Call SP_FX2数_Count
     
     Call SP_基礎_St_定義
     
     End Sub

Function FP_Bs_Reverse(ByVal Bs As String)
    ' Bs の Reverse を作る
     Dim D1s As String, ii As Integer, ni As Integer, Ds(50) As String
     
     Call Ddata_M("+", Bs, Ds, ni)
     D1s = ""
     For ii = ni To 1 Step -1:     D1s = D1s + "+" + Ds(ii):    Next ii
     
     FP_Bs_Reverse = Mid(D1s, 2)
     
     End Function


Sub SP_基礎_St_定義()
     Dim Hi As Single, Hmini As Single, Hmaxi As Single, Del_Hi As Single, 基礎傾斜i As Single, Hx0 As Single
     Dim ii As Integer, i2 As Integer, ik As Integer, ni As Integer, ip As Integer
     
     '[ f1  H ]
          基礎傾斜i = 基礎_傾斜_h1 / 基礎_傾斜_L1
          Hx0 = Abs(基礎_St_線路方向_部品_Hi)
          
          Hmini = 9999999: Hmaxi = 0
          For ii = 1 To 基礎_St_線路方向_Pit数i
                X1 = 基礎_St_線路方向_Pit_Yi(ii)
                Del_Hi = X1 * 基礎傾斜i
                Hi = Hx0 + Del_Hi
                If Hi < Hmini Then Hmini = Hi
                If Hi > Hmaxi Then Hmaxi = Hi
                基礎_St_線路方向_部品_Y位置_Hi(ii) = Hi
                Next ii
          基礎_St_線路方向_部品_Hmini = Hmini
          基礎_St_線路方向_部品_Hmaxi = Hmaxi
          
          If 基礎_St_線路方向_部品_Hs = "" Then
               基礎_St_線路方向_部品_Hi = Hmini
               基礎_St_線路方向_部品_Hs = F橋脚(Hmini) + "～" + F橋脚(Hmaxi) + "+F"   ' 図時計周り
               If 基礎_傾斜_h1 = 0 Then 基礎_St_線路方向_部品_Hs = F橋脚(Hmaxi) + "+F"
               End If
     
     '[ f1 ]
          ni = 0
          For ii = 1 To 基礎_St_線路方向_Pit数i
              ip = 基礎_St_線路方向_配置i(ii)
              ni = ni + 基礎_St_線路方向_割付数i(ip)
              Next ii
          基礎_St_線路方向_部品数i = ni * 2
     
     '[ f2 ]
          ni = 0
          For ii = 1 To 基礎_St_直角方向_Pit数i
              ip = 基礎_St_直角方向_配置i(ii)
              ni = ni + 基礎_St_直角方向_割付数i(ip)
              Next ii
  
          基礎_St_直角方向_部品数i = ni * 2
  
     
     
     End Sub



Sub SP_FX2数_Count()
    ' 柱区間の 鉄筋数   基礎_FXs(3) 作成
     Dim D1s As String, ii As Integer, FX2数 As Integer, FX2Hi As Integer, XX1 As Single, XX2 As Single, 基礎傾斜i As Single, Del_L As Single, Hi As Single
                                    
       
              D1s = 基礎_FXs(2):    Call 橋脚_鉄筋_ck("*", "標準", D1s) ' F12
              基礎_FX上筋_∑数i = 鉄筋P_Σ数 - 1

       
       Select Case 基礎_傾斜_h1
       Case 0:      XX1 = -基礎_BYRi + 基礎_傾斜_K3 + 基礎_傾斜_L1: XX2 = XX1 + 基礎_傾斜_L2
       Case Else:   XX1 = -基礎_BYRi + 基礎_傾斜_K3 + 基礎_傾斜_L1: XX2 = XX1 + 基礎_傾斜_L2
       End Select
       
       基礎傾斜i = 基礎_傾斜_h1 / 基礎_傾斜_L1
       
       FX2Hi = 基礎_FX_Hi(2)
       基礎_FX上筋_F13_Hmini = FX2Hi: 基礎_FX上筋_F13_Hmaxi = 0
       
       FX2数 = 0
              
              For ii = 1 To 基礎_FX上筋_∑数i:   X0 = -基礎_BYRi + 鉄筋P_位置(ii)
                    基礎_FX上筋_Xi(ii) = X0
              
                    Select Case X0
                    Case Is < XX1:     基礎_FX上筋_Tyi(ii) = 2
                                       Del_L = XX1 - X0: Hi = FX2Hi - Del_L * 基礎傾斜i
                                       基礎_FX上筋_Hi(ii) = Hi
                                       If 基礎_FX上筋_F13_Hmini > Hi Then 基礎_FX上筋_F13_Hmini = Hi
                                       If 基礎_FX上筋_F13_Hmaxi < Hi Then 基礎_FX上筋_F13_Hmaxi = Hi
              
                    Case Is <= XX2:    FX2数 = FX2数 + 1
                                       基礎_FX上筋_Tyi(ii) = 1
                                       基礎_FX上筋_Hi(ii) = FX2Hi
              
                    Case Else:         基礎_FX上筋_Tyi(ii) = 2
                                       Del_L = X0 - XX2: Hi = FX2Hi - Del_L * 基礎傾斜i
                                       基礎_FX上筋_Hi(ii) = Hi
                                       If 基礎_FX上筋_F13_Hmini > Hi Then 基礎_FX上筋_F13_Hmini = Hi
                                       If 基礎_FX上筋_F13_Hmaxi < Hi Then 基礎_FX上筋_F13_Hmaxi = Hi
                    End Select
                    Next ii
       
             ' 基礎_FXs(3) 作成
             If 基礎_FX_Hs(3) = "" Then
                   基礎_FX_Hs(3) = F橋脚(基礎_FX上筋_F13_Hmini) + "～" + F橋脚(基礎_FX上筋_F13_Hmaxi)
                   If 基礎_FX上筋_F13_Hmini = 基礎_FX上筋_F13_Hmaxi Then 基礎_FX_Hs(3) = F橋脚(基礎_FX上筋_F13_Hmini)
                   
                   基礎_FXs(3) = "D" + F9(基礎_FX_径i(3)) + " K" + F9(基礎_FX_dti(3)) + " B" + 基礎_FX_Bs(3) + " H" + 基礎_FX_Hs(3) + " SD390"
                   End If

       
       基礎_FX_部品数i(2) = FX2数
       基礎_FX_部品数i(3) = 基礎_FX上筋_∑数i - FX2数
       

End Sub

Function FP_Zi_基礎_FX4(ii As Integer)
    ' FX4 の Z位置をかえす  表示用   ii は 上からの順
    Dim i1 As Integer
    i1 = 基礎_FX4_部品数i - ii + 1
    If i1 < 2 Then i1 = 2
    FP_Zi_基礎_FX4 = (基礎_FX4_Zi(i1) + 基礎_FX4_Zi(i1 - 1)) / 2
    End Function

Function FP_Zi_基礎_FY3(ii As Integer)
    ' FY3 の Z位置をかえす  表示用   ii は 上からの順
    Dim i1 As Integer
    i1 = 基礎_FX4_部品数i - ii + 1
    If i1 < 2 Then i1 = 2
    FP_Zi_基礎_FY3 = (基礎_FY3_Zi(i1) + 基礎_FY3_Zi(i1 - 1)) / 2
    End Function


Private Sub Read_橋脚_柱(Da$)
     Dim 項目3s As String, ii As Integer, ni As Integer
     
     柱_No_Max = 柱_No_Max + 1: 柱_Na$ = "柱" + F9(柱_No_Max)
     EMS1 = "Data Read  柱 [No=" + F9(柱_No_Max) + "]  ": EMS2 = ""

         柱_主筋本数Sets = "Y"
         柱_主筋_Ty数i = 0: 柱_主筋_ΣXpits = "": 柱_主筋_ΣYpits = ""
                            柱_主筋_配置_ΣXs = "": 柱_主筋_配置_ΣYs = ""
         柱_外Hp_X_部品_Ty数i = 0: 柱_外Hp_Y_部品_Ty数i = 0
         柱_外Hp_r = 0
         柱_内Hp_X_部品_Ty数i = 0:   柱_内Hp_X_Xpit_Ty数i = 0: 柱_内Hp_X_Hpit数i = 0
         柱_内Hp_Y_部品_Ty数i = 0:   柱_内Hp_Y_Xpit_Ty数i = 0: 柱_内Hp_Y_Hpit数i = 0
 
     ' 柱組立筋 Begin
         柱_組立筋_部品s = ""
     ' 柱組立筋 End
 
     With 土木橋脚_柱
                  .No = 柱_No_Max
                  .符号 = "":  .Da_BX = "": .Da_BY = "": .Da_H = "": .Da_r = ""
                  .BX = 0: .BXL = 0: .BXR = 0
                  .BY = 0: .BYL = 0: .BYR = 0
                  .H = 0: .r = 0
                  
                  .C種数 = 0:   .C1 = "": .C2 = "": .C3 = "": .C4 = "": .C5 = "": .C6 = ""
                  .CXpit段数 = 0:  .CXpit1 = "": .CXpit2 = "":
                  .CYpit段数 = 0:  .CYpit1 = "": .CYpit2 = "":
                  
                  .CX主筋段数 = 0: .CX主筋1 = "": .CX主筋2 = ""
                  .CY主筋段数 = 0: .CY主筋1 = "": .CY主筋2 = ""
                  .C角主筋 = "": .C角主筋X = 0: .C角主筋Y = 0:
                  .CK = ""
                  .Choop_鉄筋 = "": .CH1 = "":

                  .CHX1 = "": .CX_1_Hoop_Jtype = "B":
                  .CHX2 = "": .CX_2_Hoop_Jtype = "B":
                  
                  .CHY1 = "": .CY_1_Hoop_Jtype = "R":
                  .CHY2 = "": .CY_2_Hoop_Jtype = "R":
                  .CHY3 = "": .CY_3_Hoop_Jtype = "R":
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS2 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       柱_Na$ = Trim(項目3s)
        Case "BX=":        .Da_BX = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                           .BXL = 躯体_D(1): .BXR = 躯体_D(2): If 躯体_Data数 = 1 Then .BXL = 躯体_D(1) / 2: .BXR = .BXL
                           .BX = .BXL + .BXR
        
        Case "BY=":        .Da_BY = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                           .BYL = 躯体_D(1): .BYR = 躯体_D(2): If 躯体_Data数 = 1 Then .BYL = 躯体_D(1) / 2: .BYR = .BYL
                           .BY = .BYL + .BYR
        
        Case "H=":         .Da_H = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                           .H = 躯体_D(1):
        
        Case "r=":         .Da_r = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                           .r = 躯体_D(1)
        
        Case "C=":    .C種数 = .C種数 + 1: Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                            Select Case .C種数
                            Case 1: .C1 = 項目3s
                            Case 2: .C2 = 項目3s
                            Case 3: .C3 = 項目3s
                            Case 4: .C4 = 項目3s
                            Case 5: .C5 = 項目3s
                            Case 6: .C6 = 項目3s
                            Case Else: 世er = " (" + Da$ + ")  主筋の種類が多すぎます": If 世誤CK > 99 Then er (""): Stop
                            End Select
        
                            柱_主筋_Ty数i = 柱_主筋_Ty数i + 1
                            柱_主筋_部品s(柱_主筋_Ty数i) = 項目3s
                            柱_主筋_径s(柱_主筋_Ty数i) = 鉄筋_径$
                            柱_主筋_L(柱_主筋_Ty数i) = 鉄筋L_全ΣL
                            柱_主筋_数i(柱_主筋_Ty数i) = 0
                            柱_主筋_dt(柱_主筋_Ty数i) = 鉄筋_SK位置
                            柱_主筋_SDs(柱_主筋_Ty数i) = 鉄筋_種別$
        
        
        Case "Xpit=":       Call 橋脚_鉄筋_Pit_ck2(項目3s)
                           .CXpit段数 = 鉄筋P段差_Data数: .CXpit1 = 鉄筋P段差_Data$(1): .CXpit2 = 鉄筋P段差_Data$(2)
                            柱_主筋_ΣXpits = 項目3s:  柱_主筋_段数_Xi = 鉄筋P段差_Data数
                            For ii = 1 To 柱_主筋_段数_Xi: 柱_主筋_Xpits(ii) = 鉄筋P段差_Data$(ii): Next ii
                            
                            
        Case "Ypit=":       Call 橋脚_鉄筋_Pit_ck2(項目3s)
                           .CYpit段数 = 鉄筋P段差_Data数: .CYpit1 = 鉄筋P段差_Data$(1): .CYpit2 = 鉄筋P段差_Data$(2)
                            柱_主筋_ΣYpits = 項目3s:  柱_主筋_段数_Yi = 鉄筋P段差_Data数
                            For ii = 1 To 柱_主筋_段数_Yi: 柱_主筋_Ypits(ii) = 鉄筋P段差_Data$(ii): Next ii
        
        Case "X主筋=":      Call P_橋脚_柱_主筋2(項目3s)
                           .CX主筋段数 = 柱筋段差_段差数: .CX主筋1 = 柱筋段差_Ddata$(1): .CX主筋2 = 柱筋段差_Ddata$(2)
                            柱_主筋_配置_ΣXs = 項目3s
                            For ii = 1 To 柱筋段差_段差数: 柱_主筋_配置_Xs(ii) = 柱筋段差_Ddata$(ii): Next ii
                            Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(1)): 柱_X_1段_主筋代表i = 柱筋_柱筋Noi(1)
                            柱_X_2段_主筋代表i = 0
                            If 柱_主筋_配置_Xs(2) <> "" Then Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(2)): 柱_X_2段_主筋代表i = 柱筋_柱筋Noi(1)
        
        Case "Y主筋=":      Call P_橋脚_柱_主筋2(項目3s)
                           .CY主筋段数 = 柱筋段差_段差数: .CY主筋1 = 柱筋段差_Ddata$(1): .CY主筋2 = 柱筋段差_Ddata$(2)
                            柱_主筋_配置_ΣYs = 項目3s
                            For ii = 1 To 柱筋段差_段差数: 柱_主筋_配置_Ys(ii) = 柱筋段差_Ddata$(ii): Next ii
                            Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(1)): 柱_Y_1段_主筋代表i = 柱筋_柱筋Noi(1)
                            柱_Y_2段_主筋代表i = 0
                            If 柱_主筋_配置_Ys(2) <> "" Then Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(2)): 柱_Y_2段_主筋代表i = 柱筋_柱筋Noi(1)
        
        
        Case "角主筋=":      Call P_橋脚_柱_主筋2(項目3s)
                            .C角主筋 = 柱筋段差_Ddata$(1)
        
        Case "角主筋XY=":    Call Ddata(" ", 項目3s, Ds$(), Di(), ni)
                            .C角主筋X = Di(1): .C角主筋Y = Di(2)
        
                            If ni <> 2 Then 世er = "角主筋XY (" + Da$ + ")  Dataがおかしい": If 世誤CK > 99 Then er (""): Stop

        Case "CK=":         'C5 ---> CK は 柱梁のｺｰﾅｰ筋 です
                            .CK = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
        
        Case "Hp 区間長=":   Call Ddata_D(" ", 項目3s, 柱_Hp_区間L(), ni)
        
        Case "外Hp=":         'c1 は 外周ﾌｰﾌﾟ です
                            .CH1 = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                            .Choop_鉄筋 = 橋脚鉄筋径$(1):  ' .CHoop_r = FP_橋脚_鉄筋_Data("r1", "SD390", "標準", .Choop_鉄筋)
                           ' .CHoop_dt = 鉄筋_SK位置: ' If 鉄筋_r <> 0 Then .CHoop_r = 鉄筋_r
                             
                             柱_外Hp_部品s = 項目3s
                             Select Case 鉄筋_r
                             Case Is < 0:  柱_外Hp_r = FP_橋脚_鉄筋_Data("r1", "SD390", "帯筋", 橋脚鉄筋径$(1))
                             Case Else: 柱_外Hp_r = 鉄筋_r
                             End Select
                             
                             柱_外Hp_X_部品_Ty数i = 1:  柱_外Hp_Y_部品_Ty数i = 1
                             柱_外Hp_dt = 鉄筋_SK位置
        
        
        
        Case "内Hp X 部品=": 柱_内Hp_X_部品_Ty数i = 柱_内Hp_X_部品_Ty数i + 1: Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                             柱_内Hp_X_部品s(柱_内Hp_X_部品_Ty数i) = 項目3s
                             
                             
        Case "内Hp X Ypit=": 柱_内Hp_X_Ypit_Ty数i = 柱_内Hp_X_Ypit_Ty数i + 1: Call 橋脚_鉄筋_Pit_ck(項目3s)
                             柱_内Hp_X_Ypits(柱_内Hp_X_Ypit_Ty数i) = 項目3s
                     
        Case "内Hp X Hpit=": 柱_内Hp_X_Hpits = 項目3s: Call 橋脚_鉄筋_Pit_ck(項目3s)
                             柱_内Hp_X_Hpit数i = 鉄筋P_Σ数
        
        Case "内Hp X 配置=": 柱_内Hp_X_配置s = 項目3s
                     
                     
        
        Case "内Hp Y 部品=": 柱_内Hp_Y_部品_Ty数i = 柱_内Hp_Y_部品_Ty数i + 1: Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                             柱_内Hp_Y_部品s(柱_内Hp_Y_部品_Ty数i) = 項目3s
                             
        Case "内Hp Y Xpit=": 柱_内Hp_Y_Xpit_Ty数i = 柱_内Hp_Y_Xpit_Ty数i + 1: Call 橋脚_鉄筋_Pit_ck(項目3s)
                             柱_内Hp_Y_Xpits(柱_内Hp_Y_Xpit_Ty数i) = 項目3s
                     
        Case "内Hp Y Hpit=": 柱_内Hp_Y_Hpits = 項目3s: Call 橋脚_鉄筋_Pit_ck(項目3s)
                             柱_内Hp_Y_Hpit数i = 鉄筋P_Σ数
        
        Case "内Hp Y 配置=": 柱_内Hp_Y_配置s = 項目3s
                     
     ' 柱組立筋 Begin
        Case "組立筋=":      柱_組立筋_部品s = 項目3s: Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                             柱_組立筋_径i = 鉄筋_径i
                             柱_組立筋_L = Val(鉄筋_L$)
                             
                             主筋_径i = Val(Mid(柱_主筋_径s(柱_X_2段_主筋代表i), 2))
                             柱_組立筋_dti = 柱_主筋_dt(柱_X_2段_主筋代表i) + 2.5 * 主筋_径i - 主筋_径i / 2 - 柱_組立筋_径i / 2
                             
                             柱_組立筋_Pits = 鉄筋_pit$
                             柱_組立筋_Pit数i = 鉄筋P_Σ数
                             
                             For ii = 1 To 柱_組立筋_Pit数i: 柱_組立筋_Zi(ii) = 鉄筋P_位置(ii): Next ii
                             
     ' 柱組立筋 End
                     
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
      '  If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        If 世er <> "" Then If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To 柱_No_Max: If 柱符号$(ii) = 柱_Na$ Then 世er = "柱符号 (" + 柱_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        柱符号$(柱_No_Max) = 柱_Na$:     .符号 = 柱_Na$
     End With
     
     Call 橋脚_柱_Put(柱_No_Max)
     
     
     
     
     '[[[ 内Hp X 部品 ]]]
          For ii = 1 To 柱_内Hp_X_Hpit数i 'Step 2
              柱_内Hp_X_配置i(ii) = 1: ' 柱_内Hp_X_配置i(ii + 1) = 2
              Next ii
     
          For ii = 1 To 柱_内Hp_X_部品_Ty数i: 柱_内Hp_X_部品i(ii) = 0
              Call SP_柱_内Hp_作図準備_X(ii)
              柱_内Hp_X_部品L(ii) = 鉄筋L_全ΣL  '**********
              Next ii
     
          For ii = 1 To 柱_内Hp_X_Hpit数i
              Pii = 柱_内Hp_X_配置i(ii)
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Ypits(Pii))
              For i1 = 1 To 鉄筋P_Σ数: i2 = 鉄筋P_Typei(i1):  柱_内Hp_X_部品i(i2) = 柱_内Hp_X_部品i(i2) + 1
              Next i1
              Next ii
     
     
     '[[[ 内Hp Y 部品 ]]]
          For ii = 1 To 柱_内Hp_Y_Hpit数i Step 2
              柱_内Hp_Y_配置i(ii) = 1: 柱_内Hp_Y_配置i(ii + 1) = 2
              Next ii
     
          For ii = 1 To 柱_内Hp_Y_部品_Ty数i: 柱_内Hp_Y_部品i(ii) = 0
              Call SP_柱_内Hp_作図準備_Y(ii)
              柱_内Hp_Y_部品L(ii) = 鉄筋L_全ΣL  '**********
              Next ii
     
          For ii = 1 To 柱_内Hp_Y_Hpit数i
              Pii = 柱_内Hp_Y_配置i(ii)
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_Y_Xpits(Pii))
              For i1 = 1 To 鉄筋P_Σ数: i2 = 鉄筋P_Typei(i1):  柱_内Hp_Y_部品i(i2) = 柱_内Hp_Y_部品i(i2) + 1
              Next i1
              Next ii
     
     柱_主筋本数Sets = ""
     End Sub

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_柱_主筋    解析   　　  　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘

Sub P_橋脚_柱_主筋2(Data1$)
     ' X主筋=17xC2+16xC1_15xC4+14xC3        'X方向の主筋本数です   X主筋=1段目本数_2段目本数
     ' Y主筋=6xC2+5xC1                      'Y方向の主筋本数です   Y主筋=1段目本数_2段目本数
     ' 角主筋 = C1                          'ｺｰﾅｰの主筋本数です
     
     ' 柱筋段差_段差数
     ' 柱筋段差_Ddata$(i)          Data i番目の Data

        Call Ddata(" ", Data1$, 柱筋段差_Ddata$(), Di(), 柱筋段差_段差数)
        For ii = 1 To 柱筋段差_段差数: Call P_橋脚_柱_主筋(柱筋段差_Ddata$(ii)): Next ii
    End Sub


Sub P_橋脚_柱_主筋(Data1$)
     ' exp  17xC2+16xC1+15xC4+14xC3
     ' exp  C1

     ' 柱筋_柱筋種類数
     ' 柱筋_Ddata$(i)          Data i番目の Data
     ' 柱筋_D柱筋本数(i)       Data i番目の柱筋本数
     ' 柱筋_D柱筋番号(i)       Data i番目の柱筋番号
     ' 柱筋_柱筋Noi(i)        i番目の柱筋番号
     ' 柱筋_柱筋Σ数           全柱筋本数
     
     柱筋_柱筋Σ数 = 0
     Call Ddata("+", Data1$, 柱筋_Ddata$(), Di(), 柱筋_柱筋種類数)
     For ii = 1 To 柱筋_柱筋種類数
           D1$ = 柱筋_Ddata$(ii): 柱筋本数 = 1
           ni = InStr(D1$, "x"): If ni > 1 Then 柱筋本数 = Val(D1$): D1$ = Mid(D1$, ni + 1)
           柱筋番号 = Val(Mid(D1$, 2))
           If 柱筋本数 <= 0 Then 世er = "柱符号 柱筋本数 (" + Data1$ + ") が おかしい": If 世誤CK > 99 Then er (""): Stop
           If Mid(D1$, 1, 1) <> "C" Then 世er = "柱柱筋符号 (" + Data1$ + ") が おかしい": If 世誤CK > 99 Then er (""): Stop
           If 柱筋番号 <= 0 Or 柱筋番号 > 土木橋脚_柱.C種数 Then 世er = "柱筋符号 (" + Data1$ + ") が おかしい": If 世誤CK > 99 Then er (""): Stop
           
           柱筋_D柱筋本数(ii) = 柱筋本数:  柱筋_D柱筋番号(ii) = 柱筋番号
           
           柱筋_柱筋Σ数 = 柱筋_柱筋Σ数 + 柱筋本数
           If 柱_主筋本数Sets = "Y" Then 柱_主筋_数i(柱筋番号) = 柱_主筋_数i(柱筋番号) + 2 * 柱筋本数
           Next ii
     ii = 0: kk = 0
     Do: ii = ii + 1: kk = kk + 1
          柱筋番号 = 柱筋_D柱筋番号(kk)
          If kk >= 柱筋_柱筋種類数 Then kk = 0
          
          柱筋_柱筋Noi(ii) = 柱筋番号
          If ii >= 柱筋_柱筋Σ数 Then Exit Do
          Loop
     End Sub
Function FP_柱_主筋間隔(ByVal 部品i As Integer) As Single
    ' 柱_主筋間隔を計算
   FP_柱_主筋間隔 = Val(Mid(柱_主筋_径s(部品i), 2)) * 柱_主筋_開き倍率
   End Function


Private Sub Read_橋脚_Stoper(Da$)
     
          Dim 項目3s As String, TYi As Integer

     Stoper_Ty数i = Stoper_Ty数i + 1: Stoper_Na$ = "ｽﾄｯﾊﾟ" + F9(Stoper_Ty数i)
     EMS1 = "Data Read  ｽﾄｯﾊﾟｰ [No=" + F9(Speser_No) + "]  ": EMS2 = ""

     Stoper_箇所i(Stoper_Ty数i) = 0
     Stoper_Na$ = ""
     With 土木橋脚_Stoper
                  TYi = Stoper_Ty数i
                  .No = Stoper_Ty数i
                  .符号 = "": .箱抜 = "": .被り = "": .h1 = "": .h2 = "": .h3 = ""
                  .BX = 0: .BY = 0: .H = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS2 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       Stoper_Na$ = Trim(項目3s): Stoper_Cuti(TYi) = 0
        Case "箱抜=":       .箱抜 = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            Stoper_BXi(TYi) = 躯体_D(1): Stoper_BYi(TYi) = 躯体_D(2): Stoper_Hi(TYi) = 躯体_D(3)
                            .Typei = 1: If Stoper_BXi(TYi) <= 0 Then .Typei = 2: Stoper_BXi(TYi) = 躯体_D(2)
                             Stoper_Tyi(TYi) = .Typei
                             Stoper_箱抜s(TYi) = 項目3s
        Case "Cut=":        If 項目3s = "N" Then Stoper_Cuti(TYi) = 1
        
                        
     '   Case "被ﾘ=", "被り=":     .被り = 項目3s:        Call 橋脚_被り_ck(項目s$, 項目3s)
        Case "H1=":        .h1 = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                            Stoper_H1s(TYi) = 項目3s
        Case "H2=":        .h2 = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                            Stoper_H2s(TYi) = 項目3s
        Case "H3=":        .h3 = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                            Stoper_H3s(TYi) = 項目3s
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        If Stoper_Na$ = "" Then 世er = "ｽﾄｯﾊﾟ符号 が入力されていません": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
        For ii = 1 To Stoper_Ty数i: If Stoper_符号s(ii) = Stoper_Na$ Then 世er = "ｽﾄｯﾊﾟ符号 (" + Stoper_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        Stoper_符号s(Stoper_Ty数i) = Stoper_Na$:     .符号 = Stoper_Na$
     End With
     
     Call 橋脚_Stoper_Put(Stoper_Ty数i)
     
     End Sub

Private Sub Read_橋脚_沓座(Da$)
     
     Dim 項目3s As String
     沓座_Ty数i = 沓座_Ty数i + 1: 沓座_Na$ = "沓座" + F9(沓座_Ty数i)
     EMS1 = "Data Read  沓座 [No=" + F9(沓座_Ty数i) + "]  ": EMS2 = ""
     沓座_箇所i(沓座_Ty数i) = 0
 
     沓座_Na$ = ""
     With 土木橋脚_沓座
                  .No = 沓座_Ty数i
                  .符号 = "": .Gomsyu = "": .BD = "": .被り = "": .S1 = "": .S2 = ""
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS2 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       沓座_Na$ = Trim(項目3s)
        Case "BD=":         .BD = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                             沓座_Gomsyus(沓座_Ty数i) = 項目3s
        Case "S1=":        .S1 = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                             沓座_S1s(沓座_Ty数i) = 項目3s
        Case "S2=":        .S2 = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                             沓座_S2s(沓座_Ty数i) = 項目3s
        Case "連結筋=":      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                             沓座_連結筋s(沓座_Ty数i) = 項目3s
        
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        If 沓座_Na$ = "" Then 世er = "沓座符号 の入力が無い": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
        
        For ii = 1 To 沓座_Ty数i: If 沓座_符号s(ii) = 沓座_Na$ Then 世er = "沓座符号 (" + 沓座_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        沓座_符号s(沓座_Ty数i) = 沓座_Na$:     .符号 = 沓座_Na$
     End With
     
     Call 橋脚_沓座_Put(沓座_Ty数i)
     
     End Sub

Private Sub Read_橋脚_梁(Da$)
     
          Dim D1s As String
          Dim 項目3s As String, Ds(200) As String, ii As Integer, ni As Integer, Typei As Integer
          Dim n0i As Integer, n1i As Integer, n2i As Integer
          Dim Loop_D As Single, Loop_r As Single
          Dim 外dt As Single
          Dim 鉄筋_B2$
    
     梁_No_Max = 梁_No_Max + 1: 梁_Na$ = "梁" + F9(梁_No_Max)
     EMS1 = "Data Read  梁 [No=" + F9(梁_No_Max) + "]  ": EMS2 = ""
     梁_起点Loop筋_Ty数i = 0: 梁_終点Loop筋_Ty数i = 0
     梁_Loop外直筋_Ty数i = 0: 梁_Loop内直筋_Ty数i = 0
     梁_下端筋_Ty数i = 0: 梁_水平補強筋_Ty数i = 0: 梁_幅止筋_Ty数i = 0
     
     
     
     For ii = 1 To 20: 梁_起点Loop筋_部品s(ii) = "": 梁_終点Loop筋_部品s(ii) = "": Next ii
 
     With 土木橋脚_梁
                  .No = 梁_No_Max
                  .符号 = "": .Da_BX = "": .Da_BY = "": .Da_勾配 = ""
                  .Da_r = "": .Da_r2 = "": .Da_H = ""
                  .BX = 0: .BXL = 0: .BXR = 0:  .BXL2 = 0: .BXR2 = 0
                  .BY = 0: .BYL = 0: .BYR = 0:  .BYL2 = 0: .BYR2 = 0
                  .H = 0: .h1 = 0: .h2 = 0
                  .r = 0: .r2 = 0
                  .勾配C = 0: .勾配L = 0: .勾配R = 0
                  
                  .Stoper位置 = "": .沓座位置 = ""
                  
                  梁_Loop外直筋_本数i = 0: 梁終点側_Loop外直筋_本数i = 0: 梁起点側_Loop外直筋_本数i = 0
                                           梁終点側_Loop外直筋_cut本数i = 0: 梁起点側_Loop外直筋_cut本数i = 0
                  梁_Loop外直筋_部品s = "": 梁_Loop外直筋_部品_Fooks = "": 梁_Loop外直筋_部品L = 0
                  
                  梁_Loop内直筋_本数i = 0: 梁終点側_Loop内直筋_本数i = 0: 梁起点側_Loop内直筋_本数i = 0
                                           梁終点側_Loop内直筋_cut本数i = 0: 梁起点側_Loop内直筋_cut本数i = 0
                  梁_Loop内直筋_部品s = "": 梁_Loop内直筋_部品_Fooks = "": 梁_Loop内直筋_部品L = 0
                  
                   .BD2 = ""
                   
                  梁下勾配i = 0
                  梁終点側_主筋_横dti(1) = 3000: 梁起点側_主筋_横dti(1) = 3000
                  梁終点側_主筋_径i(1) = 0: 梁起点側_主筋_径i(1) = 0
                  梁終点側_主筋_径i(2) = 0: 梁起点側_主筋_径i(2) = 0
                  梁終点側_主筋_径i(3) = 0: 梁起点側_主筋_径i(3) = 0
      
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS2 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       梁_Na$ = Trim(項目3s)
        Case "BX=":         .Da_BX = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            .BXL = 躯体_D(1): .BXR = 躯体_D(2): If 躯体_Data数 = 1 Then .BXL = 躯体_D(1) / 2: .BXR = .BXL
                            .BX = .BXL + .BXR:  .BXL2 = .BXL - 土木橋脚_柱.BXL: .BXR2 = .BXR - 土木橋脚_柱.BXR
                             梁_BX = .BX

        Case "BY=":         .Da_BY = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
        
        
                            .BYL = 躯体_D(1): .BYR = 躯体_D(2): If 躯体_Data数 = 1 Then .BYL = 躯体_D(1) / 2: .BYR = .BYL
                            .BY = .BYL + .BYR: .BYL2 = .BYL - 土木橋脚_柱.BYL: .BYR2 = .BYR - 土木橋脚_柱.BYR
                            Stoper起点側_Y = -.BY / 4: Stoper終点側_Y = .BY / 4
                            梁_BY = .BY: 梁_BYL = .BYL: 梁_BYR = .BYR
        
        Case "勾配=":       .Da_勾配 = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            .勾配C = 躯体_D(1): .勾配L = 躯体_D(2): .勾配R = 躯体_D(3): If 躯体_Data数 < 3 Then .勾配R = .勾配L
        
        Case "r=":          .Da_r = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            .r = 躯体_D(1)
        Case "r2=":         .Da_r2 = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            .r2 = 躯体_D(1)
        Case "H=":          .Da_H = 項目3s:        Call 橋脚_躯体_ck(項目s$, 項目3s)
                            .h1 = 躯体_D(1): .h2 = 躯体_D(2): If 躯体_Data数 = 1 Then .h2 = 躯体_D(1): .h1 = 0
                            .H = .h1 + .h2
                                   
                            梁_H = .H
                                   梁下勾配i = 土木橋脚_梁.h1 / (土木橋脚_梁.BXL - 土木橋脚_柱.BXL)
                                   梁下勾配2i = 0: If 土木橋脚_梁.h1 > 0 Then 梁下勾配2i = (土木橋脚_梁.BXL - 土木橋脚_柱.BXL) / 土木橋脚_梁.h1
        
        
        Case "ｽﾄｯﾊﾟ位置", "ｽﾄｯﾊﾟｰ位置": D1s = ""
                          If .BY <= 0 Then 世er = "*** 土木橋脚_梁   BY=0": er (""):: If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1s = D1s + Da$ + " "
                          Call Ddata_M(",", Da, Ds, ni)
                               Typei = 1
                               If ni = 3 Then Typei = 橋脚_Stoper_No(Ds(3))
                               If Typei = 0 Then 世er = " ｽﾄｯﾊﾟの符号 (" + Da$ + ") がありません": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                               Stoper_箇所i(Typei) = Stoper_箇所i(Typei) + 1
                          Loop
                          .Stoper位置 = D1s
                          Call 橋脚_Stoper位置_ck(D1s)
                          INP$ = "N"
        
        
        Case "沓座位置":  D1s = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1s = D1s + Da$ + " "
                          Call Ddata_M(",", Da, Ds, ni)
                               Typei = 1
                               If ni = 3 Then Typei = 橋脚_沓座_No(Ds(3))
                               If Typei = 0 Then 世er = " 沓座の符号 (" + Da$ + ") がありません": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                               沓座_箇所i(Typei) = 沓座_箇所i(Typei) + 1
                          Loop
                          .沓座位置 = D1s
                          INP$ = "N"
        
        
        Case "起点Loop=":      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s): If 世er <> "" Then If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                            梁_起点Loop筋_Ty数i = 梁_起点Loop筋_Ty数i + 1
                            梁_起点Loop筋_部品s(梁_起点Loop筋_Ty数i) = 項目3s
                            梁起点Loop筋_径i = 鉄筋_径i
                            Loop_D = Val(鉄筋_D$): Loop_r = Loop_D / 2: If 鉄筋_r > 0 Then Loop_r = 鉄筋_r
                            梁_起点Loop筋_部品_D(梁_起点Loop筋_Ty数i) = Loop_D
                            梁_起点Loop筋_部品_r(梁_起点Loop筋_Ty数i) = Loop_r
                            
                            梁_起点Loop筋_部品_dti(梁_起点Loop筋_Ty数i) = 鉄筋_SK位置
                            梁_起点Loop筋_部品_Yi(梁_起点Loop筋_Ty数i) = 鉄筋_SK位置
                            梁_起点Loop筋_部品数i(梁_起点Loop筋_Ty数i) = 鉄筋P_Σ数
                            
                            Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                            If 梁_上St_LoopX座標 > 鉄筋L_XL / 2 Then 梁_上St_LoopX座標 = 鉄筋L_XL / 2
                            
                            Select Case 鉄筋L_Data数
                            Case 1:   鉄筋_B$ = F9(鉄筋L_L(1)): 鉄筋_B2$ = F9(鉄筋L_L(1) + Loop_D)
                            Case 3:   鉄筋_B$ = F9(鉄筋L_L(1)) + "+" + 鉄筋L_Data$(2) + "+" + F9(鉄筋L_L(3))
                                      鉄筋_B2$ = F9(Loop_r + 鉄筋L_L(1)) + "+" + 鉄筋L_Data$(2) + "+" + F9(鉄筋L_L(3) + Loop_r)
                            Case Else: 世er = "橋脚_梁 項目 ﾙｰﾌﾟ筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                            End Select
                            
                            梁_起点Loop筋_部品_Bs(梁_起点Loop筋_Ty数i) = 鉄筋_B$
                            梁_起点Loop筋_部品_B2s(梁_起点Loop筋_Ty数i) = 鉄筋_B2$
                            
                            If 鉄筋_SK位置 < 梁起点側_主筋_横dti(1) Then 梁起点側_主筋_径i(1) = 鉄筋_径i: 梁起点側_主筋_横dti(1) = 鉄筋_SK位置
                                  梁起点側_主筋_径i(2) = 鉄筋_径i: 梁起点側_主筋_横dti(2) = 鉄筋_SK位置
                                  梁起点側_主筋_径i(3) = 鉄筋_径i: 梁起点側_主筋_横dti(3) = 鉄筋_SK位置 + Val(鉄筋_D$)
        
        
        Case "終点Loop=":      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s): If 世er <> "" Then If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                            梁_終点Loop筋_Ty数i = 梁_終点Loop筋_Ty数i + 1
                            梁_終点Loop筋_部品s(梁_終点Loop筋_Ty数i) = 項目3s
                            梁終点Loop筋_径i = 鉄筋_径i
                            Loop_D = Val(鉄筋_D$):: Loop_r = Loop_D / 2: If 鉄筋_r > 0 Then Loop_r = 鉄筋_r
                            梁_終点Loop筋_部品_D(梁_終点Loop筋_Ty数i) = Loop_D
                            梁_終点Loop筋_部品_r(梁_終点Loop筋_Ty数i) = Loop_r
                            梁_終点Loop筋_部品_dti(梁_終点Loop筋_Ty数i) = 鉄筋_SK位置
                            梁_終点Loop筋_部品_Yi(梁_終点Loop筋_Ty数i) = 梁_BY - (鉄筋_SK位置 + Val(鉄筋_D$))
                            梁_終点Loop筋_部品数i(梁_終点Loop筋_Ty数i) = 鉄筋P_Σ数
        
                            Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                            If 梁_上St_LoopX座標 > 鉄筋L_XL / 2 Then 梁_上St_LoopX座標 = 鉄筋L_XL / 2
                            Select Case 鉄筋L_Data数
                            Case 1:   鉄筋_B$ = F9(鉄筋L_L(1)): 鉄筋_B2$ = F9(鉄筋L_L(1) + Loop_D)
                            Case 3:   鉄筋_B$ = F9(鉄筋L_L(1)) + "+" + 鉄筋L_Data$(2) + "+" + F9(鉄筋L_L(3))
                                      鉄筋_B2$ = F9(Loop_r + 鉄筋L_L(1)) + "+" + 鉄筋L_Data$(2) + "+" + F9(鉄筋L_L(3) + Loop_r)
                            Case Else: 世er = "橋脚_梁 項目 ﾙｰﾌﾟ筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                            End Select
                            
                            梁_終点Loop筋_部品_Bs(梁_終点Loop筋_Ty数i) = 鉄筋_B$
                            梁_終点Loop筋_部品_B2s(梁_終点Loop筋_Ty数i) = 鉄筋_B2$
                            
                            
                            If 鉄筋_SK位置 < 梁終点側_主筋_横dti(1) Then 梁終点側_主筋_径i(1) = 鉄筋_径i: 梁終点側_主筋_横dti(1) = 鉄筋_SK位置
                                  梁終点側_主筋_径i(2) = 鉄筋_径i: 梁終点側_主筋_横dti(2) = 鉄筋_SK位置
                                  梁終点側_主筋_径i(3) = 鉄筋_径i: 梁終点側_主筋_横dti(3) = 鉄筋_SK位置 + Val(鉄筋_D$)
        
        
        Case "Loop外直筋=":        梁_Loop外直筋_部品s = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                                   梁_Loop外直筋_径i = 鉄筋_径i
                                   Select Case 鉄筋L_Data$(1)
                                   Case "F":    梁_Loop外直筋_部品_Fooks = "Y": 梁_Loop外直筋_部品L = 鉄筋L_L(2)
                                   Case Else:   梁_Loop外直筋_部品_Fooks = "N": 梁_Loop外直筋_部品L = 鉄筋L_L(1)
                                   End Select
                                   梁_Loop外直筋_本数i = 鉄筋P_Σ数 - 1
        
                                   For ii = 1 To 鉄筋P_Σ数 - 1: 梁_Loop外直筋_Yi(ii) = 鉄筋P_位置(ii): 梁_Loop外直筋_cuti(ii) = 0
                                       Y0 = -.BYL + 鉄筋P_位置(ii)
                                       Select Case Y0
                                       Case Is >= 0: 梁終点側_Loop外直筋_本数i = 梁終点側_Loop外直筋_本数i + 1
                                                     If FP_Stoper_Y位置i(Y0) > 0 Then 梁終点側_Loop外直筋_cut本数i = 梁終点側_Loop外直筋_cut本数i + 1: 梁_Loop外直筋_cuti(ii) = 1
                                       
                                                     外dt = .BY - 鉄筋P_位置(ii)
                                                     If 外dt < 梁終点側_主筋_横dti(1) Then 梁終点側_主筋_径i(1) = 鉄筋_径i: 梁終点側_主筋_横dti(1) = 外dt
                                       
                                       
                                       Case Else:    梁起点側_Loop外直筋_本数i = 梁起点側_Loop外直筋_本数i + 1
                                                     If FP_Stoper_Y位置i(Y0) > 0 Then 梁起点側_Loop外直筋_cut本数i = 梁起点側_Loop外直筋_cut本数i + 1: 梁_Loop外直筋_cuti(ii) = 1
                                                     外dt = 鉄筋P_位置(ii)
                                                     If 外dt < 梁起点側_主筋_横dti(1) Then 梁起点側_主筋_径i(1) = 鉄筋_径i: 梁起点側_主筋_横dti(1) = 外dt
                                       
                                       End Select
                                       Next ii
        
                                       n0i = 1: If 梁_Loop外直筋_本数i - 梁起点側_Loop外直筋_cut本数i - 梁終点側_Loop外直筋_cut本数i <= 0 Then n0i = 0
                                       n1i = 梁起点側_直筋_Ty数i: If 梁起点側_Loop外直筋_cut本数i = 0 Then n1i = 0
                                       n2i = 梁終点側_直筋_Ty数i: If 梁終点側_Loop外直筋_cut本数i = 0 Then n2i = 0
        
                                   梁_Loop外直筋_Ty数i = n0i + n1i + n2i
                                   梁_Loop外直筋_Start_Noi = 梁_起点Loop筋_Ty数i + 梁_終点Loop筋_Ty数i
                                   If n0i > 0 Then 梁_Loop外直筋_Start_Noi = 梁_Loop外直筋_Start_Noi + 1
        
        
        
                                  '[[[ No Set ]]]
                                  For ii = 1 To 梁起点側_直筋_Σ部品数i:  梁起点側_Loop外直筋_部品Noi(ii) = 梁起点側_直筋_部品Noi(ii): Next ii
                                  For ii = 1 To 梁終点側_直筋_Σ部品数i:  梁終点側_Loop外直筋_部品Noi(ii) = 梁終点側_直筋_部品Noi(ii): Next ii
        
                                  '[[[ 起点の部品無し ]]]
                                  If n1i = 0 Then
                                       For ii = 1 To 梁終点側_直筋_Σ部品数i:
                                            Select Case 梁終点側_Loop外直筋_部品Noi(ii)
                                            Case Is > 0: 梁終点側_Loop外直筋_部品Noi(ii) = 梁終点側_Loop外直筋_部品Noi(ii) - 梁起点側_直筋_Ty数i
                                            Case Else: 梁終点側_Loop外直筋_部品Noi(ii) = 梁終点側_Loop外直筋_部品Noi(ii) + 梁起点側_直筋_Ty数i
                                            End Select
                                       
                                            Next ii
                                       End If
        
        
        Case "Loop内直筋=":        梁_Loop内直筋_部品s = 項目3s:      Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s)
                                   
                                   梁_Loop内直筋_径i = 鉄筋_径i
                                   Select Case 鉄筋L_Data$(1)
                                   Case "F":    梁_Loop内直筋_部品_Fooks = "Y": 梁_Loop内直筋_部品L = 鉄筋L_L(2)
                                   Case Else:   梁_Loop内直筋_部品_Fooks = "N": 梁_Loop内直筋_部品L = 鉄筋L_L(1)
                                   End Select
                                   梁_Loop内直筋_本数i = 鉄筋P_Σ数
        
                                   For ii = 1 To 鉄筋P_Σ数: Y0 = -.BYL + 鉄筋P_位置(ii)
                                       Select Case Y0
                                       Case Is >= 0: 梁終点側_Loop内直筋_本数i = 梁終点側_Loop内直筋_本数i + 1
                                                     梁終点側_Loop内直筋_cuti(梁終点側_Loop内直筋_本数i) = 0
                                                     If FP_Stoper_Y位置i(Y0) > 0 Then 梁終点側_Loop内直筋_cut本数i = 梁終点側_Loop内直筋_cut本数i + 1: 梁終点側_Loop内直筋_cuti(梁終点側_Loop内直筋_本数i) = 1
                                       Case Else:    梁起点側_Loop内直筋_本数i = 梁起点側_Loop内直筋_本数i + 1
                                                     梁起点側_Loop内直筋_cuti(梁起点側_Loop内直筋_本数i) = 0
                                                     If FP_Stoper_Y位置i(Y0) > 0 Then 梁起点側_Loop内直筋_cut本数i = 梁起点側_Loop内直筋_cut本数i + 1: 梁起点側_Loop内直筋_cuti(梁起点側_Loop内直筋_本数i) = 1
                                       End Select
                                       Next ii
                                  
                                  
                                       n0i = 1: If 梁_Loop内直筋_本数i - 梁起点側_Loop内直筋_cut本数i - 梁終点側_Loop内直筋_cut本数i <= 0 Then n0i = 0
                                       n1i = 梁起点側_直筋_Ty数i: If 梁起点側_Loop内直筋_cut本数i = 0 Then n1i = 0
                                       n2i = 梁終点側_直筋_Ty数i: If 梁終点側_Loop内直筋_cut本数i = 0 Then n2i = 0
                                   梁_Loop内直筋_Ty数i = n0i + n1i + n2i
                                   梁_Loop内直筋_Start_Noi = 梁_起点Loop筋_Ty数i + 梁_終点Loop筋_Ty数i + 梁_Loop外直筋_Ty数i
                                   If n0i > 0 Then 梁_Loop内直筋_Start_Noi = 梁_Loop内直筋_Start_Noi + 1
        
                                   梁起点側_Loop内直筋_Loop筋幅 = 梁_起点Loop筋_部品_D(梁_起点Loop筋_Ty数i)
                                   梁終点側_Loop内直筋_Loop筋幅 = 梁_終点Loop筋_部品_D(梁_終点Loop筋_Ty数i)
                                   梁起点側_Loop内直筋_Y = 梁_起点Loop筋_部品_Yi(梁_起点Loop筋_Ty数i)
                                   梁終点側_Loop内直筋_Y = 梁_終点Loop筋_部品_Yi(梁_終点Loop筋_Ty数i)
                                   
                                   
                                   梁起点側_Loop内直筋_Piti = 梁起点側_Loop内直筋_Loop筋幅 / (梁起点側_Loop内直筋_本数i + 1)
                                   梁終点側_Loop内直筋_Piti = 梁終点側_Loop内直筋_Loop筋幅 / (梁終点側_Loop内直筋_本数i + 1)
        
                                  '[[[ No Set ]]]
                                  For ii = 1 To 梁起点側_直筋_Σ部品数i:  梁起点側_Loop内直筋_部品Noi(ii) = 梁起点側_直筋_部品Noi(ii): Next ii
                                  For ii = 1 To 梁終点側_直筋_Σ部品数i:  梁終点側_Loop内直筋_部品Noi(ii) = 梁終点側_直筋_部品Noi(ii): Next ii
        
                                  '[[[ 起点の部品無し ]]]
                                  If n1i = 0 Then
                                       For ii = 1 To 梁終点側_直筋_Σ部品数i:
                                            Select Case 梁終点側_Loop内直筋_部品Noi(ii)
                                            Case Is > 0: 梁終点側_Loop内直筋_部品Noi(ii) = 梁終点側_Loop内直筋_部品Noi(ii) - 梁起点側_直筋_Ty数i
                                            Case Else: 梁終点側_Loop内直筋_部品Noi(ii) = 梁終点側_Loop内直筋_部品Noi(ii) + 梁起点側_直筋_Ty数i
                                            End Select
                                       
                                            Next ii
                                       End If
           
        
        Case "下端筋=":           Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s):  梁_下端筋_部品s = 項目3s
                                       梁_下端筋_Start_Noi = 梁_起点Loop筋_Ty数i + 梁_終点Loop筋_Ty数i + 梁_Loop外直筋_Ty数i + 梁_Loop内直筋_Ty数i + 1
                                       梁_下端筋_Ty数i = 1
                                       梁_下端筋_片側本数i = 鉄筋P_Σ数 - 1
                                       梁_下端筋_Zi = 鉄筋_Z位置
                                       梁_下端筋_Bi = Val(鉄筋_B$)
                                       梁_下端筋_Hi = Val(鉄筋_H$)
                                       梁_下端筋_dti = 鉄筋_SK位置
                                       梁_下端筋_位置数i = 鉄筋P_Σ数 - 1
                                  For ii = 1 To 梁_下端筋_位置数i + 1: 梁_下端筋_Yi(ii) = 鉄筋P_位置(ii)
                                       Next ii
        
        
        Case "水平補強筋=":       Call 橋脚_鉄筋_ck(項目s$, "標準", 項目3s):    梁_水平補強筋_部品s = 項目3s
                                       梁_水平補強筋_部品1数i = 0: 梁_水平補強筋_部品2数i = 0: 梁_水平補強筋_Cut_Bmax = 0: 梁_水平補強筋_Cut_Bmin = 0
                                       
                                       梁_水平補強筋_Start_Noi = 梁_下端筋_Start_Noi + 1
                                       梁_水平補強筋_Ty数i = 1
                                       梁_水平補強筋_径i = 鉄筋_径i
                                       梁_水平補強筋_Bi = Val(鉄筋_B$)
                                       梁_水平補強筋_Di = Val(鉄筋_D$)
                                       梁_水平補強筋_ri = 鉄筋_r
                                       梁_水平補強筋_dti = 鉄筋_SK位置
                                       梁_水平補強筋_位置_Yi = (梁_BY - 梁_水平補強筋_Di) / 2
                   
                                    梁_水平補強筋_内外i = 1:   If Val(鉄筋_Property$) = 2 Then 梁_水平補強筋_内外i = 2
                                  
                                  
                                  梁_水平補強筋_Ck_H = -梁_下端筋_Zi + 梁_下端筋_Hi
                                  梁_水平補強筋_位置数i = 鉄筋P_Σ数
                                  For ii = 1 To 梁_水平補強筋_位置数i
                                       梁_水平補強筋_位置_Tyi(ii) = 1: 梁_水平補強筋_位置_Bi(ii) = 梁_水平補強筋_Bi
                                       梁_水平補強筋_位置_Zi(ii) = 鉄筋P_位置(ii)
                                       Select Case 梁_水平補強筋_位置_Zi(ii)
                                       Case Is <= 梁_水平補強筋_Ck_H: 梁_水平補強筋_部品1数i = 梁_水平補強筋_部品1数i + 1
                                       
                                       Case Else: 梁_水平補強筋_部品2数i = 梁_水平補強筋_部品2数i + 1: 梁_水平補強筋_Ty数i = 2
                                            DEL_H = 梁_水平補強筋_位置_Zi(ii) - 梁_水平補強筋_Ck_H
                                            梁_水平補強筋_位置_Bi(ii) = 梁_水平補強筋_Bi - DEL_H * 梁下勾配2i
                                            If 梁_水平補強筋_Cut_Bmax = 0 Then 梁_水平補強筋_Cut_Bmax = 梁_水平補強筋_位置_Bi(ii)
                                            梁_水平補強筋_Cut_Bmin = 梁_水平補強筋_位置_Bi(ii)
                                       End Select
                                       
                                       Next ii
        
        
        Case "幅止筋=":           梁_幅止筋_Datas = 項目3s
                                   
                                  Call SP_梁_幅止筋_定義
        
        
        Case "下St=":             Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                                  梁_下St_部品s = 項目3s:
                                  梁_下St_Bi = Val(鉄筋_B$):
                                  梁_下St_Hi = Val(鉄筋_H$)
                                  梁_下St_Fook_r = FP_橋脚_鉄筋_Data("D1", "SD390", "帯筋", 鉄筋_径$) / 2
                                  梁_下St_径i = 鉄筋_径i
                                  梁_下St_dti = 鉄筋_SK位置
                                  梁_下St_Yi = (梁_BY - 梁_下St_Bi) / 2
        
        Case "起点側上St=":       Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                                  梁_上St起点側_部品s = 項目3s: 梁_上St起点側_部品L = Val(鉄筋_B$)
                                  梁_上St_Fook_r = FP_橋脚_鉄筋_Data("D1", "SD390", "帯筋", 鉄筋_径$) / 2
                                  梁_上St_Hi = Val(鉄筋_H$) '- 梁_上St_Fook_r
                                  梁_上St_径i = 鉄筋_径i
                                  梁_上S_Z_dti = 鉄筋_SK位置
        
        Case "終点側上St=":       Call 橋脚_鉄筋_ck(項目s$, "帯筋", 項目3s)
                                  梁_上St終点側_部品s = 項目3s: 梁_上St終点側_部品L = Val(鉄筋_B$)
                                  梁_上St_Fook_r = FP_橋脚_鉄筋_Data("D1", "SD390", "帯筋", 鉄筋_径$) / 2
                                  梁_上St_Hi = Val(鉄筋_H$) '- 梁_上St_Fook_r

                                  梁_上St_径i = 鉄筋_径i
                                  梁_上S_Z_dti = 鉄筋_SK位置
        
        Case "Stpit=":            梁_上St_Datas = 項目3s$
        
                                  Call SP_梁_上St_定義
        
        
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To 梁_No_Max: If 梁符号$(ii) = 梁_Na$ Then 世er = "梁符号 (" + 梁_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        梁符号$(梁_No_Max) = 梁_Na$:     .符号 = 梁_Na$
     End With
     
     
     '[[[ 寸法 ]]]
        梁_X筋数i = FP_梁_X筋数i  '** 梁_主筋位置の_定義
             Call SP_梁St_止鉄筋_定義
        梁_Loop筋_Y方向寸法s = FP_Loop筋_Y方向寸法s
        梁_起点Loop筋_Z方向寸法s = FP_起点Loop筋_Z方向寸法s
        梁_終点Loop筋_Z方向寸法s = FP_終点Loop筋_Z方向寸法s
     
     
     '[[[ 梁_幅止筋_定義 ]]]
         Call SP_梁_幅止筋_定義
     
     
     
     '[[[ 上St ]]]]
         Call SP_梁_上St_定義
     
     
     
     '[[[ 下St B 修正 ]]]
            If 梁_下St_Bi = 0 Then
                 梁_下St_Bi = 梁_BY - 梁起点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 梁_下St_径i
                 梁_下St_Yi = 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 梁_下St_径i / 2
                 End If
                 
     '[[[ 梁_水平補強筋_Di ]]]
            If 梁_水平補強筋_Di = 0 Then
                 Select Case 梁_水平補強筋_内外i
                 Case 1: '内側
                          梁_水平補強筋_Di = 梁_BY - 梁起点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 - 梁_水平補強筋_径i
                          梁_水平補強筋_位置_Yi = 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 + 梁_水平補強筋_径i / 2
                 Case 2:  '外側
                          梁_水平補強筋_Di = 梁_BY - 梁起点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 2 * 梁_上St_径i + 梁_水平補強筋_径i
                          梁_水平補強筋_位置_Yi = 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 梁_上St_径i - 梁_水平補強筋_径i / 2
                 End Select
                 End If
     
     Call 橋脚_梁_Put(梁_No_Max)
     
     End Sub

Function FP_梁_X筋_鉄筋径i(ByVal YL As Single) As Single
     ' FP_梁_X筋数i Set 以後
     ' 梁起点から YL の一番近い 梁_X方向の 位置の番目の 鉄筋径iを　を求める
     Dim ii As Integer, 鉄筋径i As Single
     ii = 梁_X筋_Tyi(FP_梁_X筋_Noi(YL))
     Select Case ii
     Case 1:  鉄筋径i = 梁起点Loop筋_径i
     Case 2:  鉄筋径i = 梁終点Loop筋_径i
     Case 3:  鉄筋径i = 梁_Loop外直筋_径i
     Case 4:  鉄筋径i = 梁_Loop内直筋_径i
     Case 5:  鉄筋径i = 梁_Loop内直筋_径i
     End Select
     FP_梁_X筋_鉄筋径i = 鉄筋径i
     End Function


Function FP_梁_X筋_Noi(ByVal YL As Single) As Integer
     ' FP_梁_X筋数i Set 以後
     ' 梁起点から YL の一番近い 梁_X方向の 位置の番目 を求める
     Dim ii As Integer, Noi As Integer, LL As Single, LL2 As Single
     Noi = 0: LL2 = 9999999
     For ii = 1 To 梁_X筋数i
         LL1 = Abs(梁_X筋_Yi(ii) - YL)
         If LL2 > LL1 Then LL2 = LL1: Noi = ii
         Next ii
     
     FP_梁_X筋_Noi = Noi
     End Function

Function FP_梁_X筋数i() As Integer
     ' 梁_X方向の Σ鉄筋数i
     Dim ii As Integer, ni As Integer, Y2(99) As Single, Ty2i(50) As Integer, Cuti(50) As Integer
        '定義　 梁_X筋_Tyi(i) As Integer     ' 1 起点Loop   2 終点Loop   3 外直筋  4 起点Loop内直筋  5 終点Loop内直筋
        '定義   梁_X筋_位置i(i) As Integer    ' 1 起点Ｓtoper外側  2 Stoperの間   3 終点Stoper外側    Stoper ｾﾝﾀｰ基準
        '定義　 梁_X筋_Yi(i) As Single
        '定義　 梁_X筋_Ypiti(i) As Single    '  梁_X筋_Yi(i+1)-梁_X筋_Yi(i)
        '定義　 梁_X筋_Ty_cuti(i) As Integer    ' 0 Nocut   1 cut
     
     ni = 0
     For ii = 1 To 梁_起点Loop筋_Ty数i
         ni = ni + 1: Y2(ni) = 梁_起点Loop筋_部品_Yi(ii):  Ty2i(ni) = 1: Cuti(ni) = 0
         ni = ni + 1: Y2(ni) = 梁_起点Loop筋_部品_Yi(ii) + 梁_起点Loop筋_部品_D(ii):  Ty2i(ni) = 1: Cuti(ni) = 0
         Next ii
     For ii = 1 To 梁_終点Loop筋_Ty数i
         ni = ni + 1: Y2(ni) = 梁_終点Loop筋_部品_Yi(ii):  Ty2i(ni) = 2: Cuti(ni) = 0
         ni = ni + 1: Y2(ni) = 梁_終点Loop筋_部品_Yi(ii) + 梁_終点Loop筋_部品_D(ii):  Ty2i(ni) = 2: Cuti(ni) = 0
         Next ii
     For ii = 1 To 梁_Loop外直筋_本数i
         ni = ni + 1: Y2(ni) = 梁_Loop外直筋_Yi(ii):  Ty2i(ni) = 3
         Cuti(ni) = 梁_Loop外直筋_cuti(ii)
         
         Next ii
     
     For ii = 1 To 梁起点側_Loop内直筋_本数i
         ni = ni + 1: Y2(ni) = 梁起点側_Loop内直筋_Y + ii * 梁起点側_Loop内直筋_Piti:  Ty2i(ni) = 4
         Cuti(ni) = 梁起点側_Loop内直筋_cuti(ii)
         
         Next ii
     For ii = 1 To 梁終点側_Loop内直筋_本数i
         ni = ni + 1: Y2(ni) = 梁終点側_Loop内直筋_Y + ii * 梁終点側_Loop内直筋_Piti:  Ty2i(ni) = 5
         Cuti(ni) = 梁終点側_Loop内直筋_cuti(ii)
         Next ii
     

     
     Dim jj As Integer, YL As Single, Noi As Integer ', Y1(99) As Single, Ty1i(50) As Integer
     For ii = 1 To ni: YL = 999999: Noi = 0
         For jj = 1 To ni: If YL > Y2(jj) Then YL = Y2(jj): Noi = jj
         Next jj
         梁_X筋_Yi(ii) = YL: 梁_X筋_Tyi(ii) = Ty2i(Noi): Y2(Noi) = 999999
         梁_X筋_Ty_cuti(ii) = Cuti(Noi)
         Next ii
     梁_X筋_Yi(ni + 1) = 梁_BY
     
     
     For ii = 1 To ni
         Select Case -土木橋脚_梁.BYL + 梁_X筋_Yi(ii)
         Case Is < Stoper起点側_Y: 梁_X筋_位置i(ii) = 1
         Case Is < Stoper終点側_Y: 梁_X筋_位置i(ii) = 2
         Case Else: 梁_X筋_位置i(ii) = 3
         End Select
        Next ii
     
     
     
     For ii = 0 To ni
        梁_X筋_Ypiti(ii) = 梁_X筋_Yi(ii + 1) - 梁_X筋_Yi(ii)
        Next ii
     
     FP_梁_X筋数i = ni
     
     
     End Function

Sub SP_梁St_止鉄筋_定義()
    ' 梁St 梁幅止筋      止鉄筋の定義
      Dim ii As Integer, i2 As Integer, i3 As Integer

        梁起点側_ni(1) = 1: 梁終点側_ni(1) = 梁_X筋数i
        
        梁起点側_ni(2) = 1
        For ii = 梁_X筋数i To 1 Step -1
            If 梁_X筋_位置i(ii) = 1 Then
                If 梁_X筋_Ty_cuti(ii) = 0 Then 梁起点側_ni(2) = ii: Exit For
                End If
            Next ii
        
        梁起点側_ni(3) = 1
        For ii = 1 To 梁_X筋数i
            If 梁_X筋_位置i(ii) <> 1 Then
                If 梁_X筋_Ty_cuti(ii) = 0 Then 梁起点側_ni(3) = ii: Exit For
                End If
            Next ii
        
        梁終点側_ni(2) = 梁_X筋数i
        For ii = 1 To 梁_X筋数i
            If 梁_X筋_位置i(ii) = 3 Then
                If 梁_X筋_Ty_cuti(ii) = 0 Then 梁終点側_ni(2) = ii: Exit For
                End If
            Next ii
        
        梁終点側_ni(3) = 梁_X筋数i
        For ii = 梁_X筋数i To 1 Step -1
            If 梁_X筋_位置i(ii) <> 3 Then
                If 梁_X筋_Ty_cuti(ii) = 0 Then 梁終点側_ni(3) = ii: Exit For
                End If
            Next ii
        
        
        
        For ii = 1 To 3: i2 = 梁起点側_ni(ii): i3 = 梁終点側_ni(ii)
        
             Select Case 梁_X筋_Tyi(i2)
                  Case 1: 梁起点側_主筋_径i(ii) = 梁起点Loop筋_径i
                  Case 2: 梁起点側_主筋_径i(ii) = 梁終点Loop筋_径i
                  Case 3: 梁起点側_主筋_径i(ii) = 梁_Loop外直筋_径i
                  Case 4, 5: 梁起点側_主筋_径i(ii) = 梁_Loop内直筋_径i
                  End Select
             
             Select Case 梁_X筋_Tyi(i3)
                  Case 1: 梁終点側_主筋_径i(ii) = 梁起点Loop筋_径i
                  Case 2: 梁終点側_主筋_径i(ii) = 梁終点Loop筋_径i
                  Case 3: 梁終点側_主筋_径i(ii) = 梁_Loop外直筋_径i
                  Case 4, 5: 梁終点側_主筋_径i(ii) = 梁_Loop内直筋_径i
                  End Select
             
             
             梁起点側_主筋_横dti(ii) = 梁_X筋_Yi(i2)
             梁終点側_主筋_横dti(ii) = 梁_BY - 梁_X筋_Yi(i3)
             Next ii
             


    End Sub



Function FP_Loop筋_Y方向寸法s() As String
    '  Loop筋_Y方向寸法     Loop外 直筋含む
    '  exp 133+680+137+80+680+80+210
    Dim ii As Integer, ni As Integer, n1 As Integer, n2 As Integer, n3 As Integer, Y1(50) As Single, Wda As String
    'Dim Start_Y As Single, End_Y As Single
    
    ni = (梁_起点Loop筋_Ty数i + 梁_終点Loop筋_Ty数i) * 2 + 梁_Loop外直筋_本数i
   ' n1 = 2 * 梁_起点Loop筋_Ty数i: n2 = 2 * 梁_終点Loop筋_Ty数i
    
    n1 = 0
    For ii = 1 To 梁_Loop外直筋_本数i
        Select Case 梁_Loop外直筋_Yi(ii)
        Case Is < 土木橋脚_梁.BYL: Y1(ii) = 梁_Loop外直筋_Yi(ii): n1 = n1 + 1
        Case Else
        End Select
        Next ii
    
    
    For ii = 1 To 梁_起点Loop筋_Ty数i
         Y1(n1 + ii) = 梁_起点Loop筋_部品_Yi(ii)
         Y1(n1 + 1 + (2 * 梁_起点Loop筋_Ty数i - ii)) = 梁_起点Loop筋_部品_Yi(ii) + 梁_起点Loop筋_部品_D(ii)
         Next ii
         n1 = n1 + 梁_起点Loop筋_Ty数i * 2
    
    For ii = 1 To 梁_終点Loop筋_Ty数i
         Y1(n1 + ii) = 梁_終点Loop筋_部品_Yi(ii)
         Y1(n1 + 1 + (2 * 梁_終点Loop筋_Ty数i - ii)) = 梁_終点Loop筋_部品_Yi(ii) + 梁_終点Loop筋_部品_D(ii)
         Next ii
         n1 = n1 + 梁_終点Loop筋_Ty数i * 2
         
         
    For ii = 1 To 梁_Loop外直筋_本数i
        Select Case 梁_Loop外直筋_Yi(ii)
        Case Is < 土木橋脚_梁.BYL
        Case Else:      n1 = n1 + 1: Y1(n1) = 梁_Loop外直筋_Yi(ii)
        End Select
        Next ii
    
    
    Y1(n1 + 1) = 梁_BY
    Wda = ""
    For ii = 1 To n1 + 1
         Wda = Wda + "+" + F9(Y1(ii) - Y1(ii - 1))
         Next ii
    
    
    FP_Loop筋_Y方向寸法s = Mid(Wda, 2)
    End Function

Function FP_起点Loop筋_Z方向寸法s() As String
    ' 起点Loop筋_Z方向寸法  下端筋寸法 含む
    Dim ii As Integer, ni As Integer, Z1i(50) As Single, Z1s(50) As String, Wda As String
    Dim D1s As String
    D1s = 梁_起点Loop筋_部品s(梁_起点Loop筋_Ty数i)
    Call 橋脚_鉄筋_ck("*", "標準", D1s)
    
    Z1i(1) = 梁_下端筋_dti
    Z1i(2) = 土木橋脚_梁.H - 梁_下端筋_dti - 鉄筋P_ΣL
    Z1s(1) = F9(Z1i(1)): Z1s(2) = F9(Z1i(2))
    Select Case 鉄筋P_Data数
    Case O: ni = 2
    Case Else: ni = 2 + 鉄筋P_Data数
           For ii = 1 To 鉄筋P_Data数: Z1s(2 + ii) = 鉄筋P_Data$(鉄筋P_Data数 + 1 - ii): Next ii
    End Select
    Wda = ""
    For ii = 1 To ni: Wda = Wda + "+" + Z1s(ii): Next ii
    FP_起点Loop筋_Z方向寸法s = Mid(Wda, 2)

    End Function
    
Public Sub ProAddOn1()
    '
    ZZZ5 = ZZZ5 + 1
 '   If ShoriTyuuX.ProgressBar1.max < ZZZ5 Then
'        ShoriTyuuX.ProgressBar1.max = ZZZ5
 '   End If
  '  ShoriTyuuX.ProgressBar1.Value = ZZZ5
    '
End Sub
    
Public Sub ProAddOn11()
    '
    ZZZ5 = ShoriTyuuX.ProgressBar1.max
    If ShoriTyuuX.ProgressBar1.max < ZZZ5 Then
        ShoriTyuuX.ProgressBar1.max = ZZZ5
    End If
    ShoriTyuuX.ProgressBar1.Value = ZZZ5
    '
End Sub

Function FP_終点Loop筋_Z方向寸法s() As String
    ' 終点Loop筋_Z方向寸法  下端筋寸法 含む
    Dim ii As Integer, ni As Integer, Z1i(50) As Single, Z1s(50) As String, Wda As String
    Dim D1s As String
    D1s = 梁_終点Loop筋_部品s(梁_終点Loop筋_Ty数i)
    Call 橋脚_鉄筋_ck("*", "標準", D1s)
    
    Z1i(1) = 梁_下端筋_dti
    Z1i(2) = 土木橋脚_梁.H - 梁_下端筋_dti - 鉄筋P_ΣL
    Z1s(1) = F9(Z1i(1)): Z1s(2) = F9(Z1i(2))
    Select Case 鉄筋P_Data数
    Case O: ni = 2
    Case Else: ni = 2 + 鉄筋P_Data数
           For ii = 1 To 鉄筋P_Data数: Z1s(2 + ii) = 鉄筋P_Data$(鉄筋P_Data数 + 1 - ii):  Next ii
    End Select
    Wda = ""
    For ii = 1 To ni: Wda = Wda + "+" + Z1s(ii): Next ii
    FP_終点Loop筋_Z方向寸法s = Mid(Wda, 2)

    End Function


Sub SP_梁_幅止筋_定義()

            'Dim 項目3s As String
                                   Call 橋脚_鉄筋_ck("*", "帯筋", 梁_幅止筋_Datas):        梁_幅止筋_部品s = 梁_幅止筋_Datas
                                       梁_幅止筋_Start_Noi = 梁_水平補強筋_Start_Noi + 梁_水平補強筋_Ty数i
                                       梁_幅止筋_Hi = Val(鉄筋_H$)
                                       梁_幅止筋_dti = 鉄筋_SK位置
                                       
                                   梁_幅止筋_Pits = 鉄筋_pit$
                                       
                                   梁_幅止筋_位置数i = 鉄筋P_Σ数 - 1
                                   梁_幅止筋_位置_Ty数i(1) = 0: 梁_幅止筋_位置_Ty数i(2) = 0: 梁_幅止筋_位置_Ty数i(3) = 0: 梁_幅止筋_位置_Ty数i(4) = 0
                                   For ii = 1 To 梁_幅止筋_位置数i: X0 = -土木橋脚_柱.BXL + 鉄筋P_位置(ii)
                                                n1i = 0: If FP_起点側Stoper_X位置i(X0) > 0 Then n1i = 1
                                                n2i = 0: If FP_終点側Stoper_X位置i(X0) > 0 Then n2i = 2
                                        Select Case n1i + n2i
                                        Case 0:   梁_幅止筋_位置_Tyi(ii) = 1: 梁_幅止筋_位置_Ty数i(1) = 梁_幅止筋_位置_Ty数i(1) + 1
                                        Case 1:   梁_幅止筋_位置_Tyi(ii) = 2: 梁_幅止筋_位置_Ty数i(2) = 梁_幅止筋_位置_Ty数i(2) + 1
                                        Case 2:   梁_幅止筋_位置_Tyi(ii) = 3: 梁_幅止筋_位置_Ty数i(3) = 梁_幅止筋_位置_Ty数i(3) + 1
                                        Case 3:   梁_幅止筋_位置_Tyi(ii) = 4: 梁_幅止筋_位置_Ty数i(4) = 梁_幅止筋_位置_Ty数i(4) + 1
                                        End Select
                                       梁_幅止筋_位置_Xi(ii) = 鉄筋P_位置(ii)
                                       Next ii
                                 
          '[[[ 部品L Stoperで決定  ]]]
'                                       SBY1 = Stoper位置_BY(Stoper終点側位置数i + 1): SBY2 = Stoper位置_BY(1)
'                                       L1 = .BYL + Stoper位置_Y(Stoper終点側位置数i + 1): L2 = -Stoper位置_Y(Stoper終点側位置数i + 1) + Stoper位置_Y(1): L3 = .BYR - Stoper位置_Y(1)
        
'                                       梁_幅止筋_部品L(1) = .BY - 梁起点側_主筋_横dti(1) - 梁終点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i
'
'                                       梁_幅止筋_部品L(2) = L1 - (梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2) + SBY1 / 2 - 柱内幅止筋_Stoper開き_Y
'                                       梁_幅止筋_部品L(3) = L2 + L3 - SBY1 / 2 - 柱内幅止筋_Stoper開き_Y - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i / 2
'
'                                       梁_幅止筋_部品L(4) = L1 + L2 - (梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2) + SBY2 / 2 - 柱内幅止筋_Stoper開き_Y
'                                       梁_幅止筋_部品L(5) = L3 - SBY2 / 2 - 柱内幅止筋_Stoper開き_Y - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i / 2
'
'                                       梁_幅止筋_部品L(6) = L2 - SBY1 / 2 - SBY2 / 2 - 2 * 柱内幅止筋_Stoper開き_Y
        
                                       
         '[[[ 部品L 主筋で決定  ]]]
                                       梁_幅止筋_部品L(1) = 土木橋脚_梁.BY - 梁起点側_主筋_横dti(1) - 梁終点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i
                                       
                                       梁_幅止筋_部品L(2) = 梁起点側_主筋_横dti(2) - 梁起点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 + 梁起点側_主筋_径i(2) / 2 + 鉄筋_径i
                                       梁_幅止筋_部品L(3) = 梁_BY - 梁起点側_主筋_横dti(3) - 梁終点側_主筋_横dti(1) + 梁起点側_主筋_径i(3) / 2 + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i

                                       梁_幅止筋_部品L(4) = 梁_BY - 梁起点側_主筋_横dti(1) - 梁終点側_主筋_横dti(3) + 梁起点側_主筋_径i(1) / 2 + 梁終点側_主筋_径i(3) / 2 + 鉄筋_径i
                                       梁_幅止筋_部品L(5) = 梁終点側_主筋_横dti(2) - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 梁終点側_主筋_径i(2) / 2 + 鉄筋_径i
                                       
                                       梁_幅止筋_部品L(6) = 梁_BY - 梁起点側_主筋_横dti(3) - 梁終点側_主筋_横dti(3) + 梁起点側_主筋_径i(3) / 2 + 梁終点側_主筋_径i(3) / 2 + 鉄筋_径i
                                       
                                      '********* CK
                                      For ii = 1 To 5
                                      梁_幅止筋_部品L(ii) = Abs(梁_幅止筋_部品L(ii))
                                       Next ii
                                      
                                      
         '[[[ 部品_Y ]]] 起点側端の Y座標
                                       梁_幅止筋_部品_Y(1) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2
                                       梁_幅止筋_部品_Y(2) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2
                                       梁_幅止筋_部品_Y(3) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(3) - 梁起点側_主筋_径i(3) / 2 - 鉄筋_径i / 2
                                       梁_幅止筋_部品_Y(4) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2
                                       梁_幅止筋_部品_Y(5) = 土木橋脚_梁.BYR - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i / 2 - 梁_幅止筋_部品L(5)
                                       梁_幅止筋_部品_Y(6) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(3) - 梁起点側_主筋_径i(3) / 2 - 鉄筋_径i / 2
                                       
                                       
         '[[[ 個数i ]]]
                                       梁_幅止筋_個数i(1) = 梁_幅止筋_位置_Ty数i(1)
                                       梁_幅止筋_個数i(2) = 梁_幅止筋_位置_Ty数i(2) + 梁_幅止筋_位置_Ty数i(4)
                                       梁_幅止筋_個数i(3) = 梁_幅止筋_位置_Ty数i(2)
                                       梁_幅止筋_個数i(4) = 梁_幅止筋_位置_Ty数i(3)
                                       梁_幅止筋_個数i(5) = 梁_幅止筋_位置_Ty数i(3) + 梁_幅止筋_位置_Ty数i(4)
                                       梁_幅止筋_個数i(6) = 梁_幅止筋_位置_Ty数i(4)
        
        
                                       If 梁_幅止筋_部品L(2) = 梁_幅止筋_部品L(5) Then 梁_幅止筋_部品L(5) = -梁_幅止筋_部品L(5): 梁_幅止筋_個数i(2) = 梁_幅止筋_個数i(2) + 梁_幅止筋_個数i(5): 梁_幅止筋_個数i(5) = 0
                                       If 梁_幅止筋_部品L(3) = 梁_幅止筋_部品L(4) Then 梁_幅止筋_部品L(4) = -梁_幅止筋_部品L(4): 梁_幅止筋_個数i(3) = 梁_幅止筋_個数i(3) + 梁_幅止筋_個数i(4): 梁_幅止筋_個数i(4) = 0
        
                                       
         '[[[ L ck 部品数i ]]]
                                      If 梁_幅止筋_部品L(1) < 52 Then 梁_幅止筋_個数i(1) = 0
                                      If 梁_幅止筋_部品L(2) < 52 Then 梁_幅止筋_個数i(2) = 0
                                      If 梁_幅止筋_部品L(3) < 52 Then 梁_幅止筋_個数i(3) = 0
                                      If 梁_幅止筋_部品L(4) < 52 Then 梁_幅止筋_個数i(4) = 0
                                      If 梁_幅止筋_部品L(5) < 52 Then 梁_幅止筋_個数i(5) = 0
                                      If 梁_幅止筋_部品L(6) < 52 Then 梁_幅止筋_個数i(6) = 0
                                       
                                       
         '[[[ 部品Noi ]]]
                                       梁_幅止筋_Ty数i = 0
                                       梁_幅止筋_部品Noi(1) = 0: If 梁_幅止筋_個数i(1) > 0 Then 梁_幅止筋_Ty数i = 梁_幅止筋_Ty数i + 1: 梁_幅止筋_部品Noi(1) = 梁_幅止筋_Ty数i
                                       梁_幅止筋_部品Noi(2) = 0: If 梁_幅止筋_個数i(2) > 0 Then 梁_幅止筋_Ty数i = 梁_幅止筋_Ty数i + 1: 梁_幅止筋_部品Noi(2) = 梁_幅止筋_Ty数i
                                       梁_幅止筋_部品Noi(3) = 0: If 梁_幅止筋_個数i(3) > 0 Then 梁_幅止筋_Ty数i = 梁_幅止筋_Ty数i + 1: 梁_幅止筋_部品Noi(3) = 梁_幅止筋_Ty数i
                                       梁_幅止筋_部品Noi(4) = 0: If 梁_幅止筋_個数i(4) > 0 Then 梁_幅止筋_Ty数i = 梁_幅止筋_Ty数i + 1: 梁_幅止筋_部品Noi(4) = 梁_幅止筋_Ty数i
                                       梁_幅止筋_部品Noi(5) = 0: If 梁_幅止筋_個数i(5) > 0 Then 梁_幅止筋_Ty数i = 梁_幅止筋_Ty数i + 1: 梁_幅止筋_部品Noi(5) = 梁_幅止筋_Ty数i
                                       梁_幅止筋_部品Noi(6) = 0: If 梁_幅止筋_個数i(6) > 0 Then 梁_幅止筋_Ty数i = 梁_幅止筋_Ty数i + 1: 梁_幅止筋_部品Noi(6) = 梁_幅止筋_Ty数i
        
    
    
    
    End Sub





Sub SP_梁_上St_定義()
      Dim ii As Integer

                           Call 橋脚_鉄筋_ck("*", "帯筋", 梁_上St_Datas)
                                   梁_St_Pits = 鉄筋_pit$
        
                                   
                                   梁_St_位置数i = 鉄筋P_Σ数
                                   For ii = 1 To 6: 梁_上St_位置_Ty数i(ii) = 0: 梁_上St_Ty_Hmax(ii) = 0: 梁_上St_Ty_Hmin(ii) = 0: Next ii
                                   
                                   For ii = 1 To 梁_St_位置数i: X0 = 土木橋脚_柱.BXL + 鉄筋P_位置(ii - 1)
                                              梁_St_位置_Xi(ii) = 鉄筋P_位置(ii - 1)
                                              梁_上St_位置_H(ii) = 梁_上St_Hi - 梁_St_位置_Xi(ii) * 梁下勾配i ' Fook 考慮なし
                                                      n1i = 0: If FP_起点側Stoper_X位置i(X0) > 0 Then n1i = 1
                                                      n2i = 0: If FP_終点側Stoper_X位置i(X0) > 0 Then n2i = 2
                                                
                                        Select Case X0
                                        Case Is <= 梁_上St_LoopX座標
                                              Select Case n1i + n2i
                                              Case 0:   梁_上St_位置_Tyi(ii) = 1: 梁_上St_位置_Ty数i(1) = 梁_上St_位置_Ty数i(1) + 1
                                                        If 梁_上St_Ty_Hmax(1) = 0 Then 梁_上St_Ty_Hmax(1) = 梁_上St_位置_H(ii)
                                                        If 梁_上St_Ty_Hmax(2) = 0 Then 梁_上St_Ty_Hmax(2) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(1) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(2) = 梁_上St_位置_H(ii)
                                        
                                              Case 1:   '起点側
                                                        梁_上St_位置_Tyi(ii) = 2: 梁_上St_位置_Ty数i(2) = 梁_上St_位置_Ty数i(2) + 1
                                                        If 梁_上St_Ty_Hmax(3) = 0 Then 梁_上St_Ty_Hmax(3) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(3) = 梁_上St_位置_H(ii)
                                        
                                              Case 2:   '終点側
                                                        梁_上St_位置_Tyi(ii) = 3: 梁_上St_位置_Ty数i(3) = 梁_上St_位置_Ty数i(3) + 1
                                                        If 梁_上St_Ty_Hmax(5) = 0 Then 梁_上St_Ty_Hmax(5) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(5) = 梁_上St_位置_H(ii)
                                        
                                              Case 3:   '起点側,終点側
                                                        梁_上St_位置_Tyi(ii) = 4: 梁_上St_位置_Ty数i(4) = 梁_上St_位置_Ty数i(4) + 1
                                                        If 梁_上St_Ty_Hmax(3) = 0 Then 梁_上St_Ty_Hmax(3) = 梁_上St_位置_H(ii)
                                                        If 梁_上St_Ty_Hmax(4) = 0 Then 梁_上St_Ty_Hmax(4) = 梁_上St_位置_H(ii)
                                                        If 梁_上St_Ty_Hmax(5) = 0 Then 梁_上St_Ty_Hmax(5) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(3) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(4) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(5) = 梁_上St_位置_H(ii)
                                              End Select
                                       Case Else
                                                        梁_上St_位置_Tyi(ii) = 6: 梁_上St_位置_Ty数i(6) = 梁_上St_位置_Ty数i(6) + 1
                                                        If 梁_上St_Ty_Hmax(6) = 0 Then 梁_上St_Ty_Hmax(6) = 梁_上St_位置_H(ii)
                                                        梁_上St_Ty_Hmin(6) = 梁_上St_位置_H(ii)
                                       
                                       End Select
                                       
                                       Next ii
                                       
                                       
       '[[[ 上St B 修正 ]]]
             Dim 径1 As Single, 径2 As Single
             '[起点側]
                 If 梁_上St起点側_部品L > 0 Then 径1 = FP_梁_X筋_鉄筋径i(0): 径2 = FP_梁_X筋_鉄筋径i(梁_X筋_Yi(1) + St_B): 梁_上St_部品L(1) = 梁_上St起点側_部品L + (径1 + 径2) / 2 + 梁_上St_径i
             '[終点側}
                 If 梁_上St終点側_部品L > 0 Then
                     径1 = FP_梁_X筋_鉄筋径i(梁_X筋_Yi(梁_X筋数i) - 梁_上St終点側_部品L): 径2 = FP_梁_X筋_鉄筋径i(梁_BY): 梁_上St_部品L(2) = 梁_上St終点側_部品L + (径1 + 径2) / 2 + 梁_上St_径i
                     梁_上St_部品_Y(2) = 梁_上St_部品_Y(2) - (径1 + 径2) / 2 - 梁_上St_径i
                 End If
                                       
                                       
       '[[[ 部品L ]]]
                 梁_上St_部品L(3) = 梁起点側_主筋_横dti(2) - 梁起点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 + 梁起点側_主筋_径i(2) / 2 + 鉄筋_径i
                 梁_上St_部品L(4) = 梁_BY - 梁起点側_主筋_横dti(3) - 梁終点側_主筋_横dti(3) + 梁起点側_主筋_径i(3) / 2 + 梁終点側_主筋_径i(3) / 2 + 鉄筋_径i
                 梁_上St_部品L(5) = 梁終点側_主筋_横dti(2) - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 梁終点側_主筋_径i(2) / 2 + 鉄筋_径i
                 梁_上St_部品L(6) = 土木橋脚_梁.BY - 梁起点側_主筋_横dti(1) - 梁終点側_主筋_横dti(1) + 梁起点側_主筋_径i(1) / 2 + 梁起点側_主筋_径i(1) / 2 + 鉄筋_径i
        
                         
                         
         For ii = 3 To 6:  梁_上St_部品L(ii) = Abs(梁_上St_部品L(ii)): Next ii  ' Err 防止
        
        
        
        Dim 起pit1 As Single, 終pit1 As Single
        
        If 梁終点側_ni(1) > 0 Then
         '[[[ 梁 上St 位置_表示Yi ]]] 平面図
                 起pit1 = 梁_X筋_Ypiti(1):  終pit1 = 梁_X筋_Ypiti(梁終点側_ni(1) - 1)
                 
                 
                 梁_上St_位置_表示Yi(1) = -梁_BYL + 梁_X筋_Yi(梁起点側_ni(2)) + 60
                 梁_上St_位置_表示Yi(2) = -梁_BYL + 梁_X筋_Yi(梁終点側_ni(2)) - 60
                 梁_上St_位置_表示Yi(3) = -梁_BYL + 梁_X筋_Yi(梁起点側_ni(1)) + 0.35 * 起pit1 ' St3
                 梁_上St_位置_表示Yi(4) = -梁_BYL + 梁_X筋_Yi(梁終点側_ni(1)) - 0.35 * 終pit1 ' St4
                 梁_上St_位置_表示Yi(5) = -梁_BYL + 梁_X筋_Yi(梁起点側_ni(3)) + 20
                 梁_上St_位置_表示Yi(6) = -梁_BYL + 梁_X筋_Yi(Int((梁起点側_ni(1) + 梁終点側_ni(1)) / 2)) + 30 ' St6
        
         '[[[ 梁 幅止筋t 位置_表示Yi ]]] 平面図
        
                 梁_幅止筋_位置_表示Yi(1) = -梁_BYL + 梁_X筋_Yi(Int((梁起点側_ni(1) + 梁終点側_ni(1)) / 2) + 1) + 60 ' =St6
                 梁_幅止筋_位置_表示Yi(2) = -梁_BYL + 梁_X筋_Yi(梁起点側_ni(1)) + 0.7 * 起pit1 ' =St3
                 梁_幅止筋_位置_表示Yi(3) = -梁_BYL + 梁_X筋_Yi(梁起点側_ni(3) + 2) + 40
                 梁_幅止筋_位置_表示Yi(4) = -梁_BYL + 梁_X筋_Yi(梁終点側_ni(3) - 2) - 40
                 梁_幅止筋_位置_表示Yi(5) = -梁_BYL + 梁_X筋_Yi(梁終点側_ni(1)) - 0.7 * 終pit1 ' =St4
                 梁_幅止筋_位置_表示Yi(6) = -梁_BYL + 梁_X筋_Yi(Int((梁起点側_ni(1) + 梁終点側_ni(1)) / 2) + 1) - 60 ' =St6
        
           End If
           
       '[[[ 部品_Y ]]] 起点側端からの Y座標
                 梁_上St_部品_Y(1) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2
                 梁_上St_部品_Y(2) = 土木橋脚_梁.BYR - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i / 2 - 梁_上St_部品L(2)
                 梁_上St_部品_Y(3) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2
                 梁_上St_部品_Y(4) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(3) - 梁起点側_主筋_径i(3) / 2 - 鉄筋_径i / 2
                 梁_上St_部品_Y(5) = 土木橋脚_梁.BYR - 梁終点側_主筋_横dti(1) + 梁終点側_主筋_径i(1) / 2 + 鉄筋_径i / 2 - 梁_上St_部品L(5)
                 梁_上St_部品_Y(6) = -土木橋脚_梁.BYL + 梁起点側_主筋_横dti(1) - 梁起点側_主筋_径i(1) / 2 - 鉄筋_径i / 2
                                      
       '[[[ 梁_上St_Ty_Hmax(ii) 修正 ]]]
                 For ii = 1 To 6:  If 梁_上St_Ty_Hmax(ii) = 0 Then 梁_上St_Ty_Hmax(ii) = 梁_上St_Hi
                       Next ii
       '[[[ 個数i ]]]
                 梁_上St_個数i(1) = 梁_上St_位置_Ty数i(1) + 梁_上St_位置_Ty数i(3)
                 梁_上St_個数i(2) = 梁_上St_位置_Ty数i(1) + 梁_上St_位置_Ty数i(2)
                 梁_上St_個数i(3) = 梁_上St_位置_Ty数i(2) + 梁_上St_位置_Ty数i(4)
                 梁_上St_個数i(4) = 梁_上St_位置_Ty数i(4)
                 梁_上St_個数i(5) = 梁_上St_位置_Ty数i(3) + 梁_上St_位置_Ty数i(4)
                 梁_上St_個数i(6) = 梁_上St_位置_Ty数i(6)
        
       '[[[ L ck 部品数i ]]]
                 If 梁_上St_部品L(1) = 0 Then 梁_上St_個数i(1) = 0
                 If 梁_上St_部品L(2) = 0 Then 梁_上St_個数i(2) = 0
                 If 梁_上St_部品L(3) < 52 Then 梁_上St_個数i(3) = 0
                 If 梁_上St_部品L(4) < 52 Then 梁_上St_個数i(4) = 0
                 If 梁_上St_部品L(5) < 52 Then 梁_上St_個数i(5) = 0
                 If 梁_上St_部品L(6) < 52 Then 梁_上St_個数i(6) = 0
                                      
                 If 梁_上St_部品L(1) = 梁_上St_部品L(2) Then 梁_上St_個数i(1) = 梁_上St_個数i(1) + 梁_上St_個数i(2): 梁_上St_個数i(2) = 0
                 If 梁_上St_部品L(4) = 梁_上St_部品L(5) Then 梁_上St_個数i(4) = 梁_上St_個数i(4) + 梁_上St_個数i(5): 梁_上St_個数i(5) = 0
        
       '[[[ 部品Noi ]]]
                 梁_上St_部品Ty数i = 2
                 梁_上St_部品Noi(1) = 1
                 梁_上St_部品Noi(2) = 1: If 梁_上St_個数i(2) > 0 Then 梁_上St_部品Ty数i = 梁_上St_部品Ty数i + 1: 梁_上St_部品Noi(2) = 梁_上St_部品Ty数i
                 梁_上St_部品Noi(3) = 0: If 梁_上St_個数i(3) > 0 Then 梁_上St_部品Ty数i = 梁_上St_部品Ty数i + 1: 梁_上St_部品Noi(3) = 梁_上St_部品Ty数i
                 梁_上St_部品Noi(4) = 0: If 梁_上St_個数i(4) > 0 Then 梁_上St_部品Ty数i = 梁_上St_部品Ty数i + 1: 梁_上St_部品Noi(4) = 梁_上St_部品Ty数i
                 梁_上St_部品Noi(5) = 0: If 梁_上St_個数i(5) > 0 Then 梁_上St_部品Ty数i = 梁_上St_部品Ty数i + 1: 梁_上St_部品Noi(5) = 梁_上St_部品Ty数i
                 梁_上St_部品Noi(6) = 0: If 梁_上St_個数i(6) > 0 Then 梁_上St_部品Ty数i = 梁_上St_部品Ty数i + 1: 梁_上St_部品Noi(6) = 梁_上St_部品Ty数i
                                      

    End Sub





'┌─────────────────────────────────────────────┐
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│■ 橋脚 躯体 解析       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_躯体_ck(項目$, 躯体Data$)
        ' Data1$     　　　　　入力exp 　　　2500+4500+2500    410x410x1430
        ' 躯体_Data数        Dataの個数
        ' 躯体_Data$(i)      i番目のData
        ' 躯体_D(i)          i番目のDataの値
        ' Σ躯体L　　　　　　躯体Data$ を計算したもの
    
    区切$ = ","
    Wda$ = LCase(F_RAN(躯体Data$))
    ni = InStr(Wda$, " "): If ni > 1 Then 区切$ = " "
    ni = InStr(Wda$, "+"): If ni > 1 Then 区切$ = "+"
    ni = InStr(Wda$, "x"): If ni > 1 Then 区切$ = "x"
    Call Ddata$(区切$, Wda$, 躯体_Data$(), Di(), 躯体_Data数)
    
    For ii = 1 To 躯体_Data数
          Call calu2(躯体_Data$(ii), 躯体_D(ii), er1$): If er1$ <> "" Then 世er = er1$
          Next ii
    
    Σ躯体L = 0: If 区切$ = "+" Then Call calu2(躯体Data$, Σ躯体L, er1$): If er1$ <> "" Then 世er = er1$
        
        If 世er <> "" Then 世er = 項目$ + "  " + 世er: If 世誤CK > 99 Then er (""): Stop
    End Sub

'┌─────────────────────────────────────────────┐
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│■ 橋脚 被り 解析       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_被り_ck(項目$, 被りData$)
        ' Data1$     　　　　　入力exp 　90 90 120
        ' 被り_Data数        Dataの個数
        ' 被り_Data$(i)      i番目のData
        ' 被り_D(i)          i番目のDataの値
        ' Σ被りL　　　　　　被りData$ を計算したもの
    
    区切$ = " "
    Wda$ = LCase(F_RAN(被りData$))
    Call Ddata$(区切$, Wda$, 被り_Data$(), Di(), 被り_Data数)
    
    For ii = 1 To 被り_Data数
          Call calu2(被り_Data$(ii), 被り_D(ii), er1$): If er1$ <> "" Then 世er = er1$
          Next ii
        
        If 世er <> "" Then 世er = 項目$ + "  " + 世er: If 世誤CK > 99 Then er (""): Stop
    End Sub

'┌─────────────────────────────────────────────┐
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│■ 橋脚 杭位置 解析     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_杭位置_ck(Data1$)
    Dim ii As Integer, i2 As Integer, XX As Single, YY As Single, 順位i(100) As Integer, Xi(20) As Single
        
        ' Data1$     　　  　入力exp 　-3750,3750     0,3750,杭3     3750,3750
        ' 杭位置_Data数        Dataの個数
        ' 杭位置_Data$(i)      i番目のData
        ' 杭位置_X(i)          i番目のDataのX座標
        ' 杭位置_Y(i)          i番目のDataのY座標
        ' 杭位置_No(i)         i番目のDataの杭no
        ' 杭位置_径(i)         i番目のDataの杭径
    
    '[[[ ** 2 ** ]]]
        ' 杭位置_X個数         杭のX方向個数
        ' 杭位置_Y個数         杭のY方向個数
    
        ' 杭位置_Xpos(i)       杭のX方向 位置
        ' 杭位置_Ypos(i)       杭のY方向 位置
    
    Wda$ = Data1$
    Call Ddata$(" ", Wda$, 杭位置_Data$(), Di(), 杭位置_Data数)
    
    For ii = 1 To 杭位置_Data数
          Wda2$ = 杭位置_Data$(ii)
          Call Ddata$(",", Wda2$, Ds$(), Di(), ni)
          If ni <= 1 Then 世er = Data1 + "  Data < 1": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          杭位置_X(ii) = Di(1):    杭位置_Y(ii) = Di(2): 杭位置_No(ii) = 1
          If ni = 3 Then 杭位置_No(ii) = 1 '橋脚_杭_no(Ds$(3))
          If 杭位置_No(ii) = 0 Then 世er = Data1 + "  杭No=0": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          
          杭位置_径(ii) = 橋脚_杭("D")
          Next ii
          
     杭位置_X個数 = 0
     For ii = 1 To 杭位置_Data数
          D1$ = "*"
          For i2 = 1 To 杭位置_X個数
               If 杭位置_X(ii) = Xi(i2) Then D1$ = ""
               Next i2
          If D1$ = "*" Then 杭位置_X個数 = 杭位置_X個数 + 1: Xi(杭位置_X個数) = 杭位置_X(ii)
          Next ii
     
     
          Call Calu_順番min(杭位置_X個数, Xi, 順位i)
     
          For ii = 1 To 杭位置_X個数: 杭位置_Xpos(順位i(ii)) = Xi(ii):   Next ii
     
     
     杭位置_Y個数 = 0
     For ii = 1 To 杭位置_Data数
          D1$ = "*"
          For i2 = 1 To 杭位置_Y個数
               If 杭位置_Y(ii) = 杭位置_Ypos(i2) Then D1$ = ""
               Next i2
          If D1$ = "*" Then 杭位置_Y個数 = 杭位置_Y個数 + 1: 杭位置_Ypos(杭位置_Y個数) = 杭位置_Y(ii)
          Next ii
          
        If 世er <> "" Then 世er = "杭位置  " + 世er: If 世誤CK > 99 Then er (""): Stop
    
    End Sub

'┌─────────────────────────────────────────────┐
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│■ 橋脚 ｽﾄｯﾊﾟ位置 解析     　 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_Stoper位置_ck(Data1$)
        ' Data1$     　　  　入力exp 　-3750,3750     0,3750,Stoper3     3750,3750
        ' Stoper位置_Data数        Dataの個数
        ' Stoper位置_Data$(i)      i番目のData
        ' Stoper位置_X(i)          i番目のDataのX座標
        ' Stoper位置_Y(i)          i番目のDataのY座標
        ' Stoper位置_No(i)         i番目のDataのStoperno
    
        ' Stoper位置_BX(i)         i番目のDataの ｽﾄｯﾊﾟBX
        ' Stoper位置_BY(i)         i番目のDataの ｽﾄｯﾊﾟBY
        ' Stoper位置_H(i)          i番目のDataの ｽﾄｯﾊﾟH
    
    
        ' Stoper位置_開きX         ｽﾄｯﾊﾟ開き X方向   1 - 2 間
        ' Stoper位置_開きY         ｽﾄｯﾊﾟ開き Y方向   1 - (n/2+1) 間
    
        ' Stoper位置_端開きX       ｽﾄｯﾊﾟ端部開き X方向   1 _ 2 間
        ' Stoper位置_端開きY       ｽﾄｯﾊﾟ端部開き Y方向   1 _ (n/2+1) 間
    
    '[[[ ** 2 ** ]]]
        ' Stoper位置_X個数         ｽﾄｯﾊﾟのX方向個数
        ' Stoper位置_Y個数         ｽﾄｯﾊﾟのY方向個数
    
        ' Stoper位置_終点Xpit(i)       ｽﾄｯﾊﾟのX方向 Pit 左端から  ｽﾄｯﾊﾟのX方向個数  +1
        ' Stoper位置_Ypit(i)       ｽﾄｯﾊﾟのY方向 Pit 左端から  ｽﾄｯﾊﾟのY方向個数  +1
    '[[[    ]]]]
        ' Stoper終点側_Y
        ' Stoper起点側_Y
        ' Stoper終点側位置数i
        ' Stoper起点側位置数i
    
    '[[[ 梁_直筋_Ty数i ]]]
        ' 梁終点側_直筋_Ty数i      直筋から 作成する部品数
        ' 梁起点側_直筋_Ty数i      直筋から 作成する部品数
        ' 梁終点側_直筋_Σ部品数i    直筋から 作成するΣ部品数　　Stoper終点側位置数i+1
        ' 梁起点側_直筋_Σ部品数i    直筋から 作成するΣ部品数　　Stoper起点側位置数i+1
    
        ' 梁終点側_直筋_部品L(i)    直筋から 作成する部品の L
        ' 梁起点側_直筋_部品L(i)    直筋から 作成する部品の L
    
    Dim ii As Integer, jj As Integer
    
    Stoper終点側位置数i = 0: Stoper起点側位置数i = 0
    Wda$ = Data1$
    Call Ddata$(" ", Wda$, Stoper位置_Data$(), Di(), Stoper位置_Data数)
    
    For ii = 1 To Stoper位置_Data数
          Wda2$ = Stoper位置_Data$(ii)
          Call Ddata$(",", Wda2$, Ds$(), Di(), ni)
          If ni <= 1 Then 世er = Data1 + "  Data < 1": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          Stoper位置_X(ii) = Di(1):    Stoper位置_Y(ii) = Di(2): Stoper位置_No(ii) = 1
          If ni = 3 Then Stoper位置_No(ii) = 橋脚_Stoper_No(Ds$(3))
          If Stoper位置_No(ii) = 0 Then 世er = Data1 + "  ｽﾄｯﾊﾟNo=0": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          
          Stoper位置_鉄筋Cut(ii) = Stoper_Cuti(Stoper位置_No(ii))
          
          Select Case Stoper位置_Y(ii)
          Case Is > 0:  Stoper終点側位置数i = Stoper終点側位置数i + 1: Stoper終点側_Y = Stoper位置_Y(ii): Stoper終点側_部品i = Stoper位置_No(ii)
          Case Else:    Stoper起点側位置数i = Stoper起点側位置数i + 1: Stoper起点側_Y = Stoper位置_Y(ii): Stoper起点側_部品i = Stoper位置_No(ii)
          End Select
          
          
          Call 橋脚_Stoper_Get(Stoper位置_No(ii))
          D1$ = 橋脚_Stoper("箱抜")
          Stoper位置_BX(ii) = 躯体_D(1): If 躯体_D(1) = 0 Then Stoper位置_BX(ii) = 躯体_D(2)
          Stoper位置_BY(ii) = 躯体_D(2)
          Stoper位置_H(ii) = 躯体_D(3)
          Next ii
          
          ni = 1 + Stoper位置_Data数 / 2
          Stoper位置_開きX = Stoper位置_X(2) - Stoper位置_X(1) - Stoper位置_BX(1) / 2 - Stoper位置_BX(2) / 2
          Stoper位置_開きY = Abs(Stoper位置_Y(ni)) + Abs(Stoper位置_Y(1)) - Stoper位置_BY(1) / 2 - Stoper位置_BY(ni) / 2
        
          Stoper位置_端開きX = 土木橋脚_梁.BXL - Abs(Stoper位置_X(1)) - Stoper位置_BX(1) / 2
          Stoper位置_端開きY = 土木橋脚_梁.BYL - Abs(Stoper位置_Y(1)) - Stoper位置_BY(1) / 2
        
        
    '[[[ ** 2 ** ]]]
          Stoper位置_X個数 = Stoper位置_Data数 / 2
          Stoper位置_Y個数 = 2
        
          XP0 = -土木橋脚_梁.BXL
          For ii = 1 To Stoper終点側位置数i:
              Stoper位置_終点_X(ii) = Stoper位置_X(ii)
              Stoper位置_終点Xpit(ii) = Stoper位置_X(ii) - XP0: XP0 = Stoper位置_X(ii)
              Next ii
              Stoper位置_終点Xpit(Stoper終点側位置数i + 1) = 土木橋脚_梁.BXR - XP0
        
          XP0 = -土木橋脚_梁.BXL
          For ii = 1 To Stoper起点側位置数i:
              Stoper位置_起点_X(ii) = Stoper位置_X(Stoper終点側位置数i + ii)
              Stoper位置_起点Xpit(ii) = Stoper位置_X(Stoper終点側位置数i + ii) - XP0: XP0 = Stoper位置_X(Stoper終点側位置数i + ii)
              Next ii
              Stoper位置_起点Xpit(Stoper起点側位置数i + 1) = 土木橋脚_梁.BXR - XP0
        
        
          ii2 = Stoper終点側位置数i + 1
          Stoper位置_Ypit(1) = 土木橋脚_梁.BYL - Abs(Stoper位置_Y(ii2))
          Stoper位置_Ypit(2) = Abs(Stoper位置_Y(ii2)) + Abs(Stoper位置_Y(1))
          Stoper位置_Ypit(3) = 土木橋脚_梁.BYL - Abs(Stoper位置_Y(1))
        
        If 世er <> "" Then 世er = "ｽﾄｯﾊﾟ位置  " + 世er: If 世誤CK > 99 Then er (""): Stop
    
    
    '[[[ 梁_直筋 起点側 ]]]
          梁起点側_直筋_Σ部品数i = Stoper起点側位置数i + 1
          For ii = 1 To Stoper起点側位置数i
               Stoper_bx = Stoper位置_BX(Stoper終点側位置数i + ii - 1) / 2 + Stoper位置_BX(Stoper終点側位置数i + ii) / 2 + 2 * 直筋_Stoper開き_X
               If ii = 1 Then Stoper_bx = Stoper位置_BX(Stoper終点側位置数i + ii) / 2 + 直筋_Stoper開き_X
               梁起点側_直筋_部品L(ii) = Stoper位置_起点Xpit(ii) - Stoper_bx
               Next ii
               梁起点側_直筋_部品L(梁起点側_直筋_Σ部品数i) = 梁起点側_直筋_部品L(1)
    
          梁起点側_直筋_Ty数i = 1
          梁起点側_直筋_部品Noi(1) = 1
          For ii = 2 To 梁起点側_直筋_Σ部品数i - 1: 部品L = 梁起点側_直筋_部品L(ii): Ty_Noi = 0
              For jj = 2 To ii - 1: If 部品L = 梁起点側_直筋_部品L(jj) Then Ty_Noi = -jj:  Exit For
                   Next jj
                   If Ty_Noi = 0 Then 梁起点側_直筋_Ty数i = 梁起点側_直筋_Ty数i + 1: Ty_Noi = 梁起点側_直筋_Ty数i
                   梁起点側_直筋_部品Noi(ii) = Ty_Noi
              Next ii
          梁起点側_直筋_部品Noi(梁起点側_直筋_Σ部品数i) = -1
         
    
    
    
    '[[[ 梁_直筋 終点側 ]]]
          梁終点側_直筋_Σ部品数i = Stoper終点側位置数i + 1
          For ii = 1 To Stoper終点側位置数i
               Stoper_bx = Stoper位置_BX(ii - 1) / 2 + Stoper位置_BX(ii) / 2 + 2 * 直筋_Stoper開き_X
               If ii = 1 Then Stoper_bx = Stoper位置_BX(ii) / 2 + 直筋_Stoper開き_X
               梁終点側_直筋_部品L(ii) = Stoper位置_終点Xpit(ii) - Stoper_bx
               Next ii
               梁終点側_直筋_部品L(梁終点側_直筋_Σ部品数i) = 梁終点側_直筋_部品L(1)
          
          梁終点側_直筋_Ty数i = 梁起点側_直筋_Ty数i
          For ii = 1 To 梁終点側_直筋_Σ部品数i:  部品L = 梁終点側_直筋_部品L(ii): Ty_Noi = 0
               For jj = 1 To 梁起点側_直筋_Ty数i: If 部品L = 梁起点側_直筋_部品L(jj) Then Ty_Noi = -jj:  Exit For
                   Next jj
               If Ty_Noi = 0 Then
               For jj = 1 To ii - 1: If 部品L = 梁終点側_直筋_部品L(jj) Then Ty_Noi = -梁終点側_直筋_部品Noi(jj): Exit For
                   Next jj
                   End If
               If Ty_Noi = 0 Then 梁終点側_直筋_Ty数i = 梁終点側_直筋_Ty数i + 1: Ty_Noi = 梁終点側_直筋_Ty数i
               梁終点側_直筋_部品Noi(ii) = Ty_Noi
               Next ii
    
         梁終点側_直筋_Ty数i = 梁終点側_直筋_Ty数i - 梁起点側_直筋_Ty数i
    
    Call 橋脚_Stoper_Get(現Stoper_No) '  追加
    End Sub
Function FP_Stoper_X位置i(X0) As Integer
    '  Is > 0   Stoper位置に当たる
    Dim ii As Integer, D1i As Integer
    D1i = 0
    For ii = 1 To Stoper位置_Data数
         Select Case Stoper位置_鉄筋Cut(ii)
         Case 0
               X1 = Stoper位置_X(ii) - Stoper位置_BX(ii) / 2 - 柱内幅止筋_Stoper開き_X
               X2 = Stoper位置_X(ii) + Stoper位置_BX(ii) / 2 + 柱内幅止筋_Stoper開き_X
               Select Case X0
               Case Is < X1:
               Case Is <= X2:   D1i = ii: Exit For
               Case Else:
               End Select
         Case Else
         End Select
         Next ii
    FP_Stoper_X位置i = D1i
    End Function
Function FP_起点側Stoper_X位置i(X0) As Integer
    '  Is > 0  起点側 Stoper位置に当たる
    Dim D1i As Integer
    D1i = 0
    For ii = Stoper終点側位置数i + 1 To Stoper位置_Data数
         X1 = Stoper位置_X(ii) - Stoper位置_BX(ii) / 2 - 柱内幅止筋_Stoper開き_X
         X2 = Stoper位置_X(ii) + Stoper位置_BX(ii) / 2 + 柱内幅止筋_Stoper開き_X
         Select Case X0
         Case Is < X1:
         Case Is <= X2:   D1i = ii: Exit For
         Case Else:
         End Select
         Next ii
    FP_起点側Stoper_X位置i = D1i
    End Function
Function FP_終点側Stoper_X位置i(X0) As Integer
    '  Is > 0   終点側　Stoper位置に当たる
    Dim D1i As Integer
    D1i = 0
    For ii = 1 To Stoper終点側位置数i  'Stoper位置_Data数
         X1 = Stoper位置_X(ii) - Stoper位置_BX(ii) / 2 - 柱内幅止筋_Stoper開き_X
         X2 = Stoper位置_X(ii) + Stoper位置_BX(ii) / 2 + 柱内幅止筋_Stoper開き_X
         Select Case X0
         Case Is < X1:
         Case Is <= X2:   D1i = ii: Exit For
         Case Else:
         End Select
         Next ii
    FP_終点側Stoper_X位置i = D1i
    End Function



Function FP_Stoper_Y位置i(Y0) As Integer
    '      Is  > 0    Stoper 位置No
    Dim ii As Integer, D1i As Integer
    D1i = 0
    For ii = 1 To Stoper位置_Data数
         Select Case Stoper位置_鉄筋Cut(ii)
         Case 0
                Y1 = Stoper位置_Y(ii) - Stoper位置_BY(ii) / 2 - 直筋_Stoper開き_Y
                Y2 = Stoper位置_Y(ii) + Stoper位置_BY(ii) / 2 + 直筋_Stoper開き_Y
                Select Case Y0
                Case Is < Y1:
                Case Is <= Y2:   D1i = ii: Exit For
                Case Else:
         End Select
         Case Else
         End Select
         Next ii
    FP_Stoper_Y位置i = D1i
    End Function
Function FP_Stoper_Z位置(Z0)
    ' D1$<>""   Stoper位置に当たる
    D1$ = ""
         Z2 = 基礎_Hi + 土木橋脚_柱.H + 土木橋脚_梁.H
         Z1 = Z2 - Stoper位置_H(1) - 直筋_Stoper開き_Y
         Select Case Z0
         Case Is < Z1:
         Case Is <= Z2:   D1$ = "1": ' Exit For
         Case Else:
         End Select
    FP_Stoper_Z位置 = D1$
    End Function


'┌─────────────────────────────────────────────┐
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│■ 橋脚 沓座位置 解析     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_沓座位置_ck(Data1$)
        ' Data1$     　　  　入力exp 　-3750,3750     0,3750,沓座3     3750,3750
        ' 沓座位置_Data数        Dataの個数
        ' 沓座位置_Data$(i)      i番目のData
        ' 沓座位置_X(i)          i番目のDataのX座標
        ' 沓座位置_Y(i)          i番目のDataのY座標
        ' 沓座位置_No(i)         i番目のDataの沓座no
    
    '[[[ ** 2 ** ]]]
        ' 沓座位置_X個数         沓座のX方向個数
        ' 沓座位置_Y個数         沓座のY方向個数
    
        ' 沓座位置_終点Xpit(i)       沓座のX方向 Pit 左端から  沓座のX方向個数  +1
        ' 沓座位置_Ypit(i)       沓座のY方向 Pit 左端から  沓座のY方向個数  +1
    '[[[     ]]]
        ' 沓座終点側_Y
        ' 沓座起点側_Y
        ' 沓座終点側位置数i
        ' 沓座起点側位置数i
    
    沓座終点側位置数i = 0: 沓座起点側位置数i = 0
    Wda$ = Data1$
    Call Ddata$(" ", Wda$, 沓座位置_Data$(), Di(), 沓座位置_Data数)
    
    For ii = 1 To 沓座位置_Data数
          Wda2$ = 沓座位置_Data$(ii)
          Call Ddata$(",", Wda2$, Ds$(), Di(), ni)
          If ni <= 1 Then 世er = Data1 + "  Data < 1": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          沓座位置_X(ii) = Di(1):    沓座位置_Y(ii) = Di(2): 沓座位置_No(ii) = 1
          If ni = 3 Then 沓座位置_No(ii) = 橋脚_沓座_No(Ds$(3))
          If 沓座位置_No(ii) = 0 Then 世er = Data1 + "  沓座No=0": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          Select Case 沓座位置_Y(ii)
          Case Is > 0: 沓座終点側位置数i = 沓座終点側位置数i + 1: 沓座終点側_Y = 沓座位置_Y(ii): 沓座終点側_部品i = 沓座位置_No(ii)
          Case Else: 沓座起点側位置数i = 沓座起点側位置数i + 1: 沓座起点側_Y = 沓座位置_Y(ii): 沓座起点側_部品i = 沓座位置_No(ii)
          End Select
          Next ii
          
    '[[[ ** 2 ** ]]]
        沓座位置_X個数 = 沓座位置_Data数 / 2
        沓座位置_Y個数 = 2
        
        XP0 = -土木橋脚_梁.BXL
        For ii = 1 To 沓座終点側位置数i: 沓座位置_終点Xpit(ii) = 沓座位置_X(ii) - XP0: XP0 = 沓座位置_X(ii)
              Next ii
              沓座位置_終点Xpit(沓座終点側位置数i + 1) = 土木橋脚_梁.BXR - XP0
        
        XP0 = -土木橋脚_梁.BXL
        For ii = 1 To 沓座起点側位置数i: 沓座位置_起点Xpit(ii) = 沓座位置_X(沓座終点側位置数i + ii) - XP0: XP0 = 沓座位置_X(沓座終点側位置数i + ii)
              Next ii
              沓座位置_起点Xpit(沓座起点側位置数i + 1) = 土木橋脚_梁.BXR - XP0
        
        
        
        ii2 = 沓座終点側位置数i + 1
        沓座位置_Ypit(1) = 土木橋脚_梁.BYL - Abs(沓座位置_Y(ii2))
        沓座位置_Ypit(2) = Abs(沓座位置_Y(ii2)) + Abs(沓座位置_Y(1))
        沓座位置_Ypit(3) = 土木橋脚_梁.BYL - Abs(沓座位置_Y(1))
        
'        沓座位置_Ypit(1) = 土木橋脚_梁.BYL - Abs(沓座位置_Y(ii2))
'        沓座位置_Ypit(2) = Abs(沓座位置_Y(ii2))
'        沓座位置_Ypit(3) = Abs(沓座位置_Y(1))
        
        If 世er <> "" Then 世er = "沓座位置  " + 世er: If 世誤CK > 99 Then er (""): Stop
    End Sub




'┌─────────────────────────────────────────────┐
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│■ 橋脚 鉄筋 解析       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│                              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_ck(項目$, 加工Type$, 鉄筋Data$)
       ' 加工Type$ = "標準"
        ' 項目$
        ' 鉄筋_Data数           Dataの個数
        ' 鉄筋_Property$        鉄筋特性     exp  $梁下補強筋
        ' 鉄筋_平面$            XY  YZ  ZX   鉄筋の加工平面
        ' 鉄筋_径本数$          鉄筋本数,径  exp  6+5+1-D38    18-φ13-SR235    12-D29-D25
        ' 鉄筋_径$              径  exp  D38    φ13
        ' 鉄筋_径i              D22 --> 22  D19 --> 19
        ' 鉄筋_位置$            鉄筋_位置    exp  P127
        ' 鉄筋_S位置
        ' 鉄筋_X位置$           鉄筋_X方向位置    exp  PX127
        
        ' 鉄筋_pit$             鉄筋 ﾋﾟｯﾁ    exp  @1200+6x200+4x150+40x150+12x300
        ' 鉄筋_X_pit$           鉄筋 X方向 ﾋﾟｯﾁ    exp  @X-1850+15x250
        ' 鉄筋_Y_pit$           鉄筋 Y方向 ﾋﾟｯﾁ    exp  @Y-1000+4x500
        
        ' 鉄筋_L$               鉄筋 長さ    exp  Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
        ' 鉄筋_B$               鉄筋 長さ    exp  B1678+J+2677
        ' 鉄筋_D$               鉄筋 長さ    exp  D1678+J+2677
        ' 鉄筋_G$               鉄筋 長さ    exp  D1678+J+2677
        
        ' 鉄筋_X$               C Hoop 鉄筋 長さ    exp  X3850       X750+5x625    混用
        ' 鉄筋_Y$               C Hoop 鉄筋 長さ    exp  Y1120x2850
        
        
        ' 鉄筋_H$               鉄筋 高さ    exp  H70
        ' 鉄筋_n$               鉄筋 個数 ｽﾍﾟｰｻ   exp  n6
        ' 鉄筋_定着$            鉄筋 定着長さ  exp A1220
        ' 鉄筋_H径$             鉄筋 ﾌｰﾌﾟ直径  exp 径1242
        ' 鉄筋_K位置$           鉄筋 被ﾘ位置   exp K101   鉄筋_SK位置=101
          
        ' 鉄筋_Z位置            杭ﾌｰﾌﾟ Start位置  exp Z-1100
          
        ' 鉄筋_r                鉄筋_r   梁  下鉄筋(あご部分) です    CHoop r
          
         ' 鉄筋_種別$           exp SD390  SD290
          
          鉄筋_Property$ = "":  鉄筋_平面$ = "":   鉄筋_径本数$ = "":  鉄筋_位置$ = "": 鉄筋_X位置$ = ""
          鉄筋_pit$ = "":   鉄筋_X_pit$ = "": 鉄筋_Y_pit$ = ""
          鉄筋_L$ = "": 鉄筋_B$ = "": 鉄筋_D$ = "": 鉄筋_G$ = ""
          鉄筋_X$ = "": 鉄筋_XX = 0
          鉄筋_Y$ = "": 鉄筋_YY = 0
          鉄筋_H$ = "":       鉄筋n$ = ""
          鉄筋_定着$ = "": 鉄筋_H径$ = "": 鉄筋_K位置$ = "": 鉄筋_SK位置 = 0
          鉄筋_Z位置 = 0
     
          鉄筋位置_Σ数 = 0: 鉄筋位置_Data数 = 0
          鉄筋_径i = 0
          鉄筋X位置_Σ数 = 0: 鉄筋X位置_Data数 = 0
          鉄筋P_Σ数 = 0
          鉄筋_r = 0
     
          鉄筋_横被り = 0
          鉄筋_種別$ = ""
     
     
     Dck$ = "": If 項目$ <> "" Then Dck$ = "Y"
     Wda$ = F_RAN(鉄筋Data$): If 項目$ = "*" And Wda$ = "" Then Exit Sub
     Call Ddata(" ", Wda$, 鉄筋Ds$(), 鉄筋Di(), Data個数)
     
     
     For ii = 1 To Data個数: D1$ = UCase(鉄筋Ds$(ii))
          項目1$ = Mid(D1$, 1, 1)
                 If Mid(D1$, 1, 1) = "D" And Len(D1$) = 3 Then 項目1$ = "鉄筋"
                 If Val(D1$) > 0 And InStr(D1$, "-D") > 1 Then 項目1$ = "鉄筋"
                 If Val(D1$) > 0 And InStr(D1$, "-φ") > 1 Then 項目1$ = "鉄筋"
                 If Val(D1$) > 0 And InStr(D1$, "-Φ") > 1 Then 項目1$ = "鉄筋"
                 If Mid(D1$, 1, 2) = "@X" Then 項目1$ = "@X"
                 If Mid(D1$, 1, 2) = "@Y" Then 項目1$ = "@Y"
          
                 If Mid(D1$, 1, 2) = "PX" Then 項目1$ = "PX"
                     
                 If D1$ = "XY" Then 項目1$ = "平面": D2$ = "XY"
                 If D1$ = "YZ" Then 項目1$ = "平面": D2$ = "YZ"
                 
                 If D1$ = "ZX" Or D1$ = "XZ" Then 項目1$ = "平面": D2$ = "ZX"
          
          Select Case 項目1$
          Case "$":      鉄筋_Property$ = Mid(D1$, 2)
          Case "平面":   鉄筋_平面$ = D2$
          
          Case "鉄筋":   鉄筋_径本数$ = D1$:        If Dck$ = "Y" Then Call 橋脚_鉄筋_径_数_ck(鉄筋_径本数$)
                         鉄筋_径$ = 鉄筋_径本数$
                         ni = InStr(鉄筋_径本数$, "-"): If ni > 1 Then 鉄筋_径$ = Mid(鉄筋_径本数$, ni + 1)
                         ni = InStr(鉄筋_径$, "-"): If ni > 2 Then 鉄筋_径$ = Mid(鉄筋_径$, 1, ni - 1)
          
                         鉄筋_径i = Val(Mid(鉄筋_径$, 2))
          Case "P":      鉄筋_位置$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_位置_ck(鉄筋_位置$)
          Case "PX":     鉄筋_X位置$ = Mid(D1$, 3):    If Dck$ = "Y" Then Call 橋脚_鉄筋_X位置_ck(鉄筋_X位置$)
          
          Case "A":      鉄筋_定着$ = Mid(D1$, 2):  Call calu2(鉄筋_定着$, Scda, er1$): 世er = 世er + er1$
                                               鉄筋_S定着 = Scda
          
          Case "径":     鉄筋_H径$ = Mid(D1$, 2):  Call calu2(鉄筋_H径$, Scda, er1$): 世er = 世er + er1$
                                               鉄筋_SH径 = Scda
          
          Case "K":      鉄筋_K位置$ = Mid(D1$, 2):  Call calu2(鉄筋_K位置$, Scda, er1$): 世er = 世er + er1$
                                               鉄筋_SK位置 = Scda
          
          
          Case "@":      鉄筋_pit$ = Mid(D1$, 2):   If Dck$ = "Y" Then Call 橋脚_鉄筋_Pit_ck(鉄筋_pit$)
          Case "@X":     鉄筋_X_pit$ = Mid(D1$, 3):   If Dck$ = "Y" Then Call 橋脚_鉄筋_Pit_ck(鉄筋_X_pit$)
          Case "@Y":     鉄筋_Y_pit$ = Mid(D1$, 3):   If Dck$ = "Y" Then Call 橋脚_鉄筋_Pit_ck(鉄筋_Y_pit$)
          
          Case "N":      鉄筋_n$ = Mid(D1$, 2)
          Case "L":      鉄筋_L$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(加工Type$, 鉄筋_L$)
          Case "B":      鉄筋_B$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(加工Type$, 鉄筋_B$)
          Case "D":      鉄筋_D$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(加工Type$, 鉄筋_D$)
          Case "G":      鉄筋_G$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(加工Type$, 鉄筋_G$)
          
                     If 鉄筋L_全ΣL = 0 Then 世er = "  鉄筋D=0 " + 鉄筋_D$: er (""): If 世誤CK > 99 Then Stop
          Case "X":      鉄筋_X$ = Mid(D1$, 2): 鉄筋_XX = Val(鉄筋_X$)
          Case "Y":      鉄筋_Y$ = Mid(D1$, 2): 鉄筋_YY = Val(鉄筋_X$)
          
          Case "H":      鉄筋_H$ = Mid(D1$, 2):
                          ' 例外処理
                          If Mid(D1$, 2, 1) <> "-" Then If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(加工Type$, 鉄筋_H$)
                                               
          Case "R":      鉄筋_r = Val(Mid(D1$, 2))
          
          
          Case "S":      鉄筋_種別$ = D1$
          
          Case "Z":      鉄筋_Z位置 = Val(Mid(D1$, 2))
          Case Else: 世er = "項目 [" + 鉄筋Ds$(ii) + "] は使用できません": er (""): If 世誤CK > 99 Then Stop
          End Select
     '*     If 世er <> "" Then Exit For
          Next ii
     
     
        If 世er <> "" Then 世er = 項目$ + "鉄筋ck  " + 世er: er (""): If 世誤CK > 99 Then Stop
        End Sub

'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋_径_数 ck  解析 　 　 　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_径_数_ck(Data1$)
        ' Data1$                 入力exp 16+5+1-D38     24-D38-D32-D29
        ' 橋脚鉄筋径$(i)         鉄筋径   exp  D22  D32  φ13
        ' 鉄筋径_種別$           SR235
        ' 鉄筋数_n               鉄筋本数の指定数
        ' 鉄筋数_n1              1番目(X方向鉄筋)の鉄筋本数
        ' 鉄筋数_n2              2番目(Y方向鉄筋)の鉄筋本数
        ' 鉄筋数_n3              3番目(角ｺｰﾅｰ筋)の鉄筋本数
        ' 鉄筋数_Σn             全 鉄筋本数
        ' 鉄筋径_種別数i         鉄筋径の入力_種別数i   exp 24-D38-D32-D29 --> 3
       
       
       
       
         橋脚_D$ = "err": 鉄筋径_種別$ = "": '橋脚鉄筋径$ = ""
          
        ni = InStr(Data1$, "-D")
             If ni = 0 Then ni = InStr(Data1$, "-φ")
             If ni = 0 Then ni = InStr(Data1$, "-Φ")
             If ni < 1 And Len(Data1$) > 3 Then 世er = "鉄筋径 [" + Data1$ + "] に -D__ が無い  ": If 世誤CK > 99 Then er (""): Stop
     
        If ni > 1 Then D11$ = Mid(Data1$, 1, ni - 1): Data_鉄筋径$ = Mid(Data1$, ni + 1)
              ni = InStr(Data_鉄筋径$, "-S"): If ni > 1 Then 鉄筋径_種別$ = Mid(Data_鉄筋径$, ni + 1): Data_鉄筋径$ = Mid(Data_鉄筋径$, 1, ni - 1)
        
        
        Call Ddata("-", Data_鉄筋径$, 橋脚鉄筋径$(), Di(), ni)
        If Len(Data1$) = 3 Then 橋脚鉄筋径$(1) = Data1$: ni = 1
        For ii = 1 To ni
        Select Case 橋脚鉄筋径$(ii)
              Case "D10", "D13", "D16", "D19", "D22", "D25", "D29", "D32", "D35", "D38", "D41", "D51"
              Case "φ13", "φ16", "φ19":
              Case "Φ13", "Φ16", "Φ19":
              Case Else: 世er = 世er + "鉄筋径 [" + Data1$ + "] が無い  ": If 世誤CK > 99 Then er (""): Stop
              End Select
              Next ii
              
        鉄筋径_種別数i = ni
              
        For ii = ni To 20: 橋脚鉄筋径$(ii) = 橋脚鉄筋径$(ni): Next ii
        
        
        Call Ddata("+", D11$, Ds$(), Di(), 鉄筋数_n)
              D1$ = Rob_数式ck0$(Ds$(1)): If D1$ <> "" Then 世er = 世er + "鉄筋数 " + D11$ + " [" + D1$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
              D1$ = Rob_数式ck0$(Ds$(2)): If D1$ <> "" Then 世er = 世er + "鉄筋数 " + D11$ + " [" + D1$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
              D1$ = Rob_数式ck0$(Ds$(3)): If D1$ <> "" Then 世er = 世er + "鉄筋数 " + D11$ + " [" + D1$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
              
              鉄筋数_n1 = Di(1): 鉄筋数_n2 = Di(2): 鉄筋数_n3 = Di(3)
              鉄筋数_Σn = 鉄筋数_n1 + 鉄筋数_n2 + 鉄筋数_n3
        
        Select Case 鉄筋数_n
              Case 1, 2, 3, 4:
              Case Else: If Len(Data1$) > 3 Then 世er = 世er + "鉄筋本数 [" + Data1$ + "] に __+__+__ が多い": If 世誤CK > 99 Then er (""): Stop
              End Select
                  
        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        End Sub



'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋 位置 ck  解析  　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_位置_ck(Data1$)
        ' Data1$     入力exp 155+40x125+40x125+155    ±125+7x250
        ' 鉄筋位置_Data数        Dataの個数
        ' 鉄筋位置_頭符号$       ""  OR  "±"
        ' 鉄筋位置_Data$(i)      i番目の位置のData
        ' 鉄筋位置_n(i)          i番目の位置の個数
        ' 鉄筋位置_p(i)          i番目の位置 mm
        ' 鉄筋位置_L(i)
        ' 鉄筋位置_ΣL           全 Data_位置_L
     
        ' 鉄筋位置_Σ数          位置(部品)のΣ部品個数
        ' 鉄筋位置_位置(ii)      部品の Startからの位置  ii=1 To Σ部品個数
     
        鉄筋位置_Σ数 = 0:
        Data2$ = LCase(Data1$): 鉄筋位置_頭符号$ = ""
        If Mid(Data2$, 1, 1) = "±" Then Data2$ = Mid(Data2$, 2): 鉄筋位置_頭符号$ = "±"
        鉄筋位置_ΣL = 0
        Call Ddata("+", Data2$, Ds$(), Di(), 鉄筋位置_Data数)
     
        For ii = 1 To 鉄筋位置_Data数: D1$ = Ds$(ii)
             鉄筋位置_n(ii) = 1:
             ni = InStr(D1$, "x")
             Select Case ni
             Case 0:      Call calu2(D1$, Scda, er1$): 世er = 世er + er1$
                          鉄筋位置_p(ii) = Scda
                          鉄筋位置_Σ数 = 鉄筋位置_Σ数 + 1: 鉄筋位置_位置(鉄筋位置_Σ数) = 鉄筋位置_位置(鉄筋位置_Σ数 - 1) + Scda
             Case Else:
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Dck$ = Rob_数式ck0$(D2$): If Dck$ <> "" Then 世er = 世er + "鉄筋 pit  " + D1$ + " [" + Dck$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
                          鉄筋位置_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): 世er = 世er + er1$
                          鉄筋位置_p(ii) = Scda
                          For jj = 1 To 鉄筋位置_n(ii):  鉄筋位置_Σ数 = 鉄筋位置_Σ数 + 1: 鉄筋位置_位置(鉄筋位置_Σ数) = 鉄筋位置_位置(鉄筋位置_Σ数 - 1) + Scda: Next jj
             End Select
             鉄筋位置_ΣL = 鉄筋位置_ΣL + 鉄筋位置_n(ii) * 鉄筋位置_p(ii)
             Next ii
    
        Select Case 鉄筋位置_頭符号$
        Case "±"
                          ni = 鉄筋位置_Σ数
                          If 鉄筋位置_位置(1) = 0 Then
                               For ii = 2 To ni:  鉄筋位置_位置(ni + ii - 1) = -鉄筋位置_位置(ii): 鉄筋位置_Σ数 = 鉄筋位置_Σ数 + 1: Next ii
                               Else
                               For ii = 1 To ni:  鉄筋位置_位置(ni + ii) = -鉄筋位置_位置(ii): 鉄筋位置_Σ数 = 鉄筋位置_Σ数 + 1: Next ii
                               End If
        Case Else:
        End Select
        
        
        
        
        
        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        End Sub

'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋 X位置 ck  解析  　　 　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_X位置_ck(Data1$)
        ' Data1$     入力exp 155+40x125+40x125+155    ±125+7x250
        '                    300|1+4x150|2+3x200    __x__|Typei
        ' 鉄筋X位置_Data数        Dataの個数
        ' 鉄筋X位置_頭符号$       ""  OR  "±"
        ' 鉄筋X位置_Data$(i)      i番目のX位置のData
        ' 鉄筋X位置_n(i)          i番目のX位置の個数
        ' 鉄筋X位置_p(i)          i番目のX位置 mm
        ' 鉄筋X位置_L(i)
        ' 鉄筋X位置_ΣL           全 Data_X位置_L
     
        ' 鉄筋X位置_Σ数          X位置(部品)のΣ部品個数
        ' 鉄筋X位置_位置(ii)      部品の StartからのX位置  ii=1 To Σ部品個数
        ' 鉄筋X位置_Typei(ii)     加工Type (部品番号)
     
        Dim Typei As Integer
     
        鉄筋X位置_Σ数 = 0:
        Data2$ = LCase(Data1$): 鉄筋X位置_頭符号$ = ""
        If Mid(Data2$, 1, 1) = "±" Then Data2$ = Mid(Data2$, 2): 鉄筋X位置_頭符号$ = "±"
        鉄筋X位置_ΣL = 0
        Call Ddata("+", Data2$, Ds$(), Di(), 鉄筋X位置_Data数)
     
        For ii = 1 To 鉄筋X位置_Data数: D1$ = Ds$(ii)
             鉄筋X位置_n(ii) = 1:
             ni = InStr(D1$, "x")
             Select Case ni
             Case 0:      Typei = 1
                          ni2 = InStr(D1$, "|"): If ni2 > 1 Then Typei = Val(Mid(D1$, ni2 + 1)): D1$ = Mid(D1$, 1, ni2 - 1)
                          Call calu2(D1$, Scda, er1$): 世er = 世er + er1$
                          鉄筋X位置_p(ii) = Scda
                          鉄筋X位置_Σ数 = 鉄筋X位置_Σ数 + 1: 鉄筋X位置_位置(鉄筋X位置_Σ数) = 鉄筋X位置_位置(鉄筋X位置_Σ数 - 1) + Scda
                          鉄筋X位置_Typei(鉄筋X位置_Σ数) = Typei
             
             Case Else:   Typei = 1
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          ni2 = InStr(D3$, "|"): If ni2 > 1 Then Typei = Val(Mid(D3$, ni2 + 1)): D3$ = Mid(D3$, 1, ni2 - 1)
                          Dck$ = Rob_数式ck0$(D2$): If Dck$ <> "" Then 世er = 世er + "鉄筋 pit  " + D1$ + " [" + Dck$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
                          鉄筋X位置_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): 世er = 世er + er1$
                          鉄筋X位置_p(ii) = Scda
                          For jj = 1 To 鉄筋X位置_n(ii):  鉄筋X位置_Σ数 = 鉄筋X位置_Σ数 + 1:
                              鉄筋X位置_位置(鉄筋X位置_Σ数) = 鉄筋X位置_位置(鉄筋X位置_Σ数 - 1) + Scda: 鉄筋X位置_Typei(鉄筋X位置_Σ数) = Typei
                              Next jj
             End Select
             鉄筋X位置_ΣL = 鉄筋X位置_ΣL + 鉄筋X位置_n(ii) * 鉄筋X位置_p(ii)
             Next ii
    
        Select Case 鉄筋X位置_頭符号$
        Case "±"
                          ni = 鉄筋X位置_Σ数
                          If 鉄筋X位置_位置(1) = 0 Then
                               For ii = 2 To ni:  鉄筋X位置_位置(ni + ii - 1) = -鉄筋X位置_位置(ii): 鉄筋X位置_Σ数 = 鉄筋X位置_Σ数 + 1: Next ii
                               Else
                               For ii = 1 To ni:  鉄筋X位置_位置(ni + ii) = -鉄筋X位置_位置(ii): 鉄筋X位置_Σ数 = 鉄筋X位置_Σ数 + 1: Next ii
                               End If
        Case Else:
        End Select
        
        
        
        
        
        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        End Sub
'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋pit ck2  解析   　　  　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_Pit_ck2(Data1$)
        ' Data1$       入力exp   250+32x125 500+28x125
        ' 鉄筋P段差_Data数       段差 Dataの個数
        ' 鉄筋P段差_Data$(i)     P段差 i番目の位置のData
        Call Ddata(" ", Data1$, 鉄筋P段差_Data$(), Di(), 鉄筋P段差_Data数)
        For ii = 1 To 鉄筋P段差_Data数: Call 橋脚_鉄筋_Pit_ck(鉄筋P段差_Data$(ii)): Next ii
     
     
        End Sub

'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋pit ck  解析  　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_Pit_ck(Data1$)
        ' Data1$     入力exp 155+40x125+40x125+155      中止 ±125+7x250
        '                    300|1+4x150|2+3x200    __x__|Typei
        
        ' 鉄筋P_Data数        Dataの個数
        ' 鉄筋P_頭符号$       ""  OR  "±"
        ' 鉄筋P_Data$(i)      i番目のﾋﾟｯﾁのData
        ' 鉄筋P_n(i)          i番目のﾋﾟｯﾁの個数
        ' 鉄筋P_p(i)          i番目のﾋﾟｯﾁ mm
        ' 鉄筋P_L(i)
        ' 鉄筋P_Σ数           全 Data_Pit  ±
     
        ' 鉄筋P_Σ数           Pit(部品)のΣ部品個数
        ' 鉄筋P_位置(ii)      部品の Startからの位置  ii=1 To Σ部品個数
        ' 鉄筋P_ΣL           全 Data_Pit の合計
        ' 鉄筋P_Typei(ii)     加工Type (部品番号)
        
        Dim Typei As Integer
        
        鉄筋P_Σ数 = 0:
        Data2$ = LCase(Data1$): 鉄筋P_頭符号$ = ""
        If Mid(Data2$, 1, 1) = "±" Then Data2$ = Mid(Data2$, 2): 鉄筋P_頭符号$ = "±"
        鉄筋P_ΣL = 0
        Call Ddata("+", Data2$, 鉄筋P_Data$(), Di(), 鉄筋P_Data数)
     
        For ii = 1 To 鉄筋P_Data数: D1$ = 鉄筋P_Data$(ii)
             鉄筋P_n(ii) = 1:
             ni = InStr(D1$, "x")
             
             Select Case ni
             Case 0:      Typei = 1
                          ni2 = InStr(D1$, "|"): If ni2 > 1 Then Typei = Val(Mid(D1$, ni2 + 1)): D1$ = Mid(D1$, 1, ni2 - 1)
                          Call calu2(D1$, Scda, er1$): 世er = 世er + er1$
                          鉄筋P_p(ii) = Scda:
                          鉄筋P_Σ数 = 鉄筋P_Σ数 + 1: 鉄筋P_位置(鉄筋P_Σ数) = 鉄筋P_位置(鉄筋P_Σ数 - 1) + Scda
                          鉄筋P_Typei(鉄筋P_Σ数) = Typei
             Case Else
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Typei = 1
                          ni2 = InStr(D3$, "|"): If ni2 > 1 Then Typei = Val(Mid(D3$, ni2 + 1)): D3$ = Mid(D3$, 1, ni2 - 1)
                          Dck$ = Rob_数式ck0$(D2$): If Dck$ <> "" Then 世er = 世er + "鉄筋 pit  " + D1$ + " [" + Dck$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
                          鉄筋P_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): 世er = 世er + er1$
                          鉄筋P_p(ii) = Scda
                          For jj = 1 To 鉄筋P_n(ii):  鉄筋P_Σ数 = 鉄筋P_Σ数 + 1: 鉄筋P_位置(鉄筋P_Σ数) = 鉄筋P_位置(鉄筋P_Σ数 - 1) + Scda: 鉄筋P_Typei(鉄筋P_Σ数) = Typei: Next jj
             End Select
             鉄筋P_L(ii) = 鉄筋P_n(ii) * 鉄筋P_p(ii)
             鉄筋P_ΣL = 鉄筋P_ΣL + 鉄筋P_n(ii) * 鉄筋P_p(ii)
             Next ii
        
        ' 鉄筋P_Typei(ii)     加工Type (部品番号)  Typei:
        
        Select Case 鉄筋P_頭符号$
        Case "±"
                          ni = 鉄筋P_Σ数
                          If 鉄筋P_位置(1) = 0 Then
                               For ii = 2 To ni:  鉄筋P_位置(ni + ii - 1) = -鉄筋P_位置(ii): 鉄筋P_Σ数 = 鉄筋P_Σ数 + 1: Next ii
                               Else
                               For ii = 1 To ni:  鉄筋P_位置(ni + ii) = -鉄筋P_位置(ii): 鉄筋P_Σ数 = 鉄筋P_Σ数 + 1: Next ii
                               End If
        Case Else:
        End Select
        
        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        End Sub
'        Call Ddata("+", Data2$, 鉄筋P_Data$(), Di(), 鉄筋P_Data数) ni

'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋 L ck    解析 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_L_ck(加工Type$, Data1$)
     ' 加工Type$ = "標準"
        ' ﾌｯｸ長さの計算の橋脚鉄筋径$(鉄筋L_部品数) が必要
        ' 橋脚_鉄筋θ で X,Y 方向考慮
        
        '※ Joint_鉄筋開き = 橋脚_J鉄筋開き * 現作図_Scale を考慮
        
        
        ' Data1$                  exp 2746～2246+(5655+4655)+2746～2246
        ' 鉄筋L_Data1$          : ﾃﾞｯﾊﾞｯｸ用 に使用  exp 2746～2246+(5655+4655)+2746～2246
        ' 鉄筋L_Data数           Dataの個数
        ' 鉄筋L_Data$(i)        i番目のData$    exp  F   2746～2246    (5655+4655)
        ' 鉄筋L_Type$(i)        i番目のData_Type   L  F  W  K  J  r
        ' 鉄筋L_L(i)            i番目のData_L
        ' 鉄筋L_r(i)            i番目の　Data　r
        ' 鉄筋L_r角度(i)        i番目の  Data  r角度
        ' 鉄筋L_r_X0(i)         i番目の　Data　r の中心 X0
        ' 鉄筋L_r_Y0(i)         i番目の　Data　r の中心 Y0
        
        ' 鉄筋L_曲角度(i)       i番目の  Data  曲げ角度
        ' 鉄筋L_全ΣL           全 Data_L    Joint  ﾌｯｸ含む
        
        ' 鉄筋L_Start角度       鉄筋加工のStart鉄筋の角度　　入力がない場合 90
        ' 鉄筋L_X(i)            i番目のData$ Start X座標  Dataの個数+1  [座標 注意]
        ' 鉄筋L_Y(i)            i番目のData$ Start Y座標  Dataの個数+1  [座標 注意]
       
       
        ' 鉄筋L_Xmin            X座標min
        ' 鉄筋L_Xmax            X座標max
        ' 鉄筋L_Ymin            Y座標min
        ' 鉄筋L_Ymax            Y座標max
        ' 鉄筋L_Xcen            X座標center
        ' 鉄筋L_Ycen            Y座標center
        ' 鉄筋L_XL              鉄筋L_XL=鉄筋L_Xmax-鉄筋L_Xmin   [座標 注意]
        ' 鉄筋L_YL              鉄筋L_YL=鉄筋L_Ymax-鉄筋L_Ymin   [座標 注意]
           
        ' 鉄筋L_部品数      　  鉄筋L_部品数 鉄筋の分割数  ﾙｰﾌﾟ筋は +1
        ' 鉄筋L_ΣL(i)          格鉄筋の合計長さ  Jointによる分割
        ' 鉄筋L_部品位置(i) 　  鉄筋L_部品のStart位置    ﾙｰﾌﾟ筋は は別
           
         '鉄筋L_W数           ' ｶﾞｽ圧接数
         '鉄筋L_K数           ' 機械継ぎ手
           
           
           
        If Mid(Data1$, 1, 1) = "+" Then Data1$ = Mid(Data1$, 2)
        鉄筋L_Data1$ = Data1$
        Wda$ = Data1$:    ni = 0
        鉄筋L_部品数 = 1: 鉄筋L_部品位置(1) = 1
        鉄筋L_W数 = 0: 鉄筋L_K数 = 0
        
        For ii = 1 To 20: 鉄筋L_ΣL(ii) = 0: Next ii
        
        '[[[ Data 分解 ]]]
           Do:  n2 = InStr(Wda$, "+"):
                If Mid(Wda$, 1, 1) = "(" Then
                      n2 = InStr(Wda$, ")"): n2 = n2 + 1:
                      If n2 <= 1 Then 世er = "橋脚_鉄筋_L (  ) で　) が無い": If 世誤CK > 99 Then er (""): Stop: Exit Do Else Exit Do
                      If Mid(Wda$, n2) = "" Then
                            n2 = 0
                            Else
                            If Mid(Wda$, n2, 1) <> "+" Then 世er = "橋脚_鉄筋_L (  ) で　)+ が無い":   If 世誤CK > 99 Then er (""): Stop: Exit Do Else Exit Do
                           End If
                      End If
                
                If n2 = 0 Then ni = ni + 1: 鉄筋L_Data$(ni) = Wda$: Exit Do
                ni = ni + 1
                鉄筋L_Data$(ni) = Mid(Wda$, 1, n2 - 1): Wda$ = Mid(Wda$, n2 + 1)
                Loop
                鉄筋L_Data数 = ni

        '************************
        If Data1$ = "" Then Exit Sub

        '[[[ L を計算 ]]]
           
         鉄筋θ = 橋脚_鉄筋θ
            '*************
            'If P_橋_鉄筋_L_Type(鉄筋L_Data$(1)) = "R" Then 鉄筋θ = 鉄筋θ + 90
           
           Joint_鉄筋開き = 橋脚_J鉄筋開き * 現作図_Scale
                  前type$ = "": Point_X = 0: Point_Y = 0
        
        For ii = 1 To 鉄筋L_Data数: D1$ = 鉄筋L_Data$(ii)
                    鉄筋L_Type$(ii) = P_橋_鉄筋_L_Type(D1$): If 世er <> "" Then If 世誤CK > 99 Then Stop

                    鉄筋L_r(ii) = 0:   鉄筋L_r角度(ii) = 0
                    鉄筋L_曲角度(ii) = 0
        
             
             鉄筋L_X(ii) = Point_X: 鉄筋L_Y(ii) = Point_Y
             Select Case UCase(鉄筋L_Type$(ii))
             Case "*":                    If 世er <> "" Then If 世誤CK > 99 Then Stop

             Case "角":
                             LL1 = P_橋_鉄筋_L(D1$): 鉄筋L_曲角度(ii) = LL1
                             鉄筋θ = 鉄筋θ - 鉄筋L_曲角度(ii)
             
             Case "L":       If 前type$ = "L" Then 鉄筋θ = 鉄筋θ - 90
                             LL1 = P_橋_鉄筋_L(D1$):  鉄筋L_L(ii) = LL1
                             鉄筋L_ΣL(鉄筋L_部品数) = 鉄筋L_ΣL(鉄筋L_部品数) + LL1
                             XLL = LL1 * Dcos(鉄筋θ): YLL = LL1 * Dsin(鉄筋θ)
                             Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
             
             Case "F":       '橋脚鉄筋径$(鉄筋L_部品数)   L1=a + l1
                             LL1 = FP_橋脚_鉄筋_Data("L1", "SD390", 加工Type$, 橋脚鉄筋径$(鉄筋L_部品数)):
                             
                             鉄筋L_L(ii) = LL1:  鉄筋L_ΣL(鉄筋L_部品数) = 鉄筋L_ΣL(鉄筋L_部品数) + LL1
             
             Case "W":
                             鉄筋L_部品数 = 鉄筋L_部品数 + 1:   鉄筋L_部品位置(鉄筋L_部品数) = ii
                             鉄筋L_W数 = 鉄筋L_W数 + 1: 鉄筋L_L(ii) = 0
             
             Case "K":
                             鉄筋L_部品数 = 鉄筋L_部品数 + 1:   鉄筋L_部品位置(鉄筋L_部品数) = ii
                             鉄筋L_K数 = 鉄筋L_K数 + 1: 鉄筋L_L(ii) = 0
             
             Case "J":       鉄筋L_部品数 = 鉄筋L_部品数 + 1:   鉄筋L_部品位置(鉄筋L_部品数) = ii
                             
                             LL1 = 0:  If UCase(D1$) <> "J*" Then LL1 = P_橋_鉄筋_L(D1$):
                             鉄筋L_L(ii) = LL1: ' 鉄筋L_ΣL(鉄筋L_部品数) = 鉄筋L_ΣL(鉄筋L_部品数) + LL1
                             XLL = -LL1 * Dcos(鉄筋θ) + Joint_鉄筋開き * Dsin(鉄筋θ): YLL = -LL1 * Dsin(鉄筋θ) + Joint_鉄筋開き * Dcos(鉄筋θ)
                             XLL2 = -LL1 * Dcos(鉄筋θ): YLL2 = -LL1 * Dsin(鉄筋θ)
             
                             Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
             
             
             
             Case "R":       LL1 = P_橋_鉄筋_L(D1$):  鉄筋L_L(ii) = LL1:  鉄筋L_ΣL(鉄筋L_部品数) = 鉄筋L_ΣL(鉄筋L_部品数) + LL1
                             If 鉄筋L_r1 <= 0 Then 鉄筋L_r1 = 1
                             鉄筋L_r(ii) = 鉄筋L_r1
                             鉄筋L_r角度(ii) = 鉄筋L_r角度1
                             
                             鉄筋θ = 鉄筋θ - 鉄筋L_r角度1
                             
                               回転θ = -鉄筋L_r角度1
                               XLL = 0: YLL = 0
                               X1 = Point_X:  Y1 = Point_Y: X2 = Point_X: Y2 = Point_Y
                               
                               中心_DX = 鉄筋L_r1 * Dcos(鉄筋θ): 中心_DY = 鉄筋L_r1 * Dsin(鉄筋θ)
                               X0 = X1 + 中心_DX: Y0 = Y1 + 中心_DY
                               鉄筋L_r_X0(ii) = X0: 鉄筋L_r_Y0(ii) = Y0:
                               Call P_橋脚_Calu_θ回転(回転θ, X0, Y0, X1, Y1, X2, Y2)
                               
                               Point_X = X2: Point_Y = Y2
                             
                             
             Case Else:    世er = "橋脚_鉄筋_L 項目 (" + 鉄筋L_Type$(ii) + "  )  が無い": If 世誤CK > 99 Then er (""): Stop

             
             End Select
             前type$ = UCase(鉄筋L_Type$(ii))
             鉄筋L_X(ii + 1) = Point_X: 鉄筋L_Y(ii + 1) = Point_Y
             Next ii
     
        
        '[[[  鉄筋L_全ΣL  ]]]
        鉄筋L_全ΣL = 0
        For ii = 1 To 鉄筋L_部品数:  鉄筋L_全ΣL = 鉄筋L_全ΣL + 鉄筋L_ΣL(ii): Next ii
        
        '[[[ 鉄筋L_Xmin  鉄筋L_Xmax    鉄筋L_Ymin  鉄筋L_Ymax    鉄筋L_Xcen  鉄筋L_Ycen ]]]
        鉄筋L_Xmin = 99999999:     鉄筋L_Xmax = -99999999
        鉄筋L_Ymin = 99999999:     鉄筋L_Ymax = -99999999
        For ii = 1 To 鉄筋L_Data数 + 1
              If 鉄筋L_X(ii) < 鉄筋L_Xmin Then 鉄筋L_Xmin = 鉄筋L_X(ii)
              If 鉄筋L_Y(ii) < 鉄筋L_Ymin Then 鉄筋L_Ymin = 鉄筋L_Y(ii)
              If 鉄筋L_X(ii) > 鉄筋L_Xmax Then 鉄筋L_Xmax = 鉄筋L_X(ii)
              If 鉄筋L_Y(ii) > 鉄筋L_Ymax Then 鉄筋L_Ymax = 鉄筋L_Y(ii)
              Next ii
        鉄筋L_Xcen = (鉄筋L_Xmin + 鉄筋L_Xmax) / 2
        鉄筋L_Ycen = (鉄筋L_Ymin + 鉄筋L_Ymax) / 2
        鉄筋L_XL = 鉄筋L_Xmax - 鉄筋L_Xmin: 鉄筋L_YL = 鉄筋L_Ymax - 鉄筋L_Ymin
        
        If 鉄筋L_全ΣL = 0 Then 世er = "全ΣL=0 " + Data1$: er (""): If 世誤CK > 99 Then Stop: '世誤CK = 200

        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        '鉄筋L_L(ii)
        End Sub

Function P_橋_鉄筋_L_Type(Data1$)
        ' Data1$               exp   角85.301   r340  564  r340  (3784+J960+5744)  (3784+W+5744)
        ' 鉄筋_L_Typeを定義
        '  L      L          数値　L長さ
        '  F      ﾌｯｸ        数値=0
        '  W      ｶﾞｽ圧接    数値=0
        '  K      機械式継手 数値=0
        '  J      ｼﾞｮｲﾝﾄ     数値  ｼﾞｮｲﾝﾄ長さ
        '  R      ｱｰﾁ        数値  ｱｰﾁ半径
        '  角     曲角度
        '  *      err
        
        Select Case UCase(Mid(Data1$, 1, 1))
             Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9": DType$ = "L"
             Case "F": DType$ = "F"
             Case "W": DType$ = "W" ' ｶﾞｽ圧接
             Case "K": DType$ = "K" ' 機械式継手
             Case "J": DType$ = "J"
             Case "R": DType$ = "R"
             Case "角": DType$ = "角"
             
             Case Else:     DType$ = "*":  世er = "鉄筋項目 [" + Data1$ + "] は使用できません": If 世誤CK > 99 Then er (""): Stop
             End Select

        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        P_橋_鉄筋_L_Type = DType$
        End Function
Function P_橋_鉄筋_L(Data1$)
        ' L を計算    Data1$         exp 2746～2246  r250  角85.301  5655    J960    r150度70.507    r150L236
        ' 鉄筋L_L1           鉄筋 L1 長さ
        ' 鉄筋L_L2           鉄筋 L2 長さ
        ' 鉄筋L_r1           鉄筋 r  半径
        ' 鉄筋L_r角度1        鉄筋 r  角度
        
        鉄筋L_L1 = 0: 鉄筋L_L2 = 0: 鉄筋L_r1 = 0: 鉄筋L_r角度1 = 0
        D01$ = Data1$: R_DATA1$ = ""
        
        Select Case UCase(Mid(Data1$, 1, 1))
             Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9": DType$ = "L"
             Case "F":        DType$ = "F": D01$ = Mid(D01$, 2)
             Case "W":        DType$ = "W": D01$ = Mid(D01$, 2)
             Case "K":        DType$ = "K": D01$ = Mid(D01$, 2)
             Case "J":        DType$ = "J": D01$ = Mid(D01$, 2)
             Case "R":        DType$ = "R": D01$ = Mid(D01$, 2)
                              ni = InStr(D01$, "度")
                              Select Case ni
                              Case 0, 1:
                              Case Else:     R_DATA1$ = Mid(D01$, ni):    D01$ = Mid(D01$, 1, ni - 1)
                              End Select
             
             
             Case "角":       DType$ = "角": D01$ = Mid(D01$, 2)
             Case Else:       DType$ = "*":  世er = "鉄筋 L [" + Data1$ + "] は使用できません": If 世誤CK > 99 Then er (""): Stop
             End Select
        
        
        P_橋_鉄筋_L = 0
        If D01$ <> "" Then
             ni = InStr(D01$, "～")
             Select Case ni
             Case 0:          Call calu2(D01$, 鉄筋L_L1, er1$): 世er = 世er + er1$
                              鉄筋L_L2 = 鉄筋L_L1
                              P_橋_鉄筋_L = 鉄筋L_L1
        
             Case Else:       D2$ = Mid(D01$, 1, ni - 1): D3$ = Mid(D01$, ni + 1)
                              Call calu2(D2$, 鉄筋L_L1, er1$): 世er = 世er + er1$
                              Call calu2(D3$, 鉄筋L_L2, er1$): 世er = 世er + er1$
                              P_橋_鉄筋_L = (鉄筋L_L1 + 鉄筋L_L2) / 2
                          If 橋脚_鉄筋L計算_max$ = "Y" Then
                               P_橋_鉄筋_L = 鉄筋L_L2
                               If P_橋_鉄筋_L < 鉄筋L_L1 Then P_橋_鉄筋_L = 鉄筋L_L1
                             ' 橋脚_鉄筋L計算_max$ = ""
                          End If
             
             End Select
             End If
        
        Select Case DType$
             Case "R":        鉄筋L_r1 = 鉄筋L_L1
                              If 鉄筋L_r1 <= 0 Then 世er = 世er + "  r=0"
                              Select Case Mid(R_DATA1$, 1, 1)
                              Case "":        鉄筋L_r角度1 = 90:  P_橋_鉄筋_L = 2 * P_橋_鉄筋_L * 3.14159265358979 * (鉄筋L_r角度1 / 360)
                              Case "L":       P_橋_鉄筋_L = Val(Mid(R_DATA1$, 2))
                                              RLL = 2 * 鉄筋L_r1 * 3.14159265358979
                                              鉄筋L_r角度1 = 0: If RLL <> 0 Then 鉄筋L_r角度1 = 360 * P_橋_鉄筋_L / RLL
                              
                              Case "度":      鉄筋L_r角度1 = Val(Mid(R_DATA1$, 2))
                                              P_橋_鉄筋_L = 2 * P_橋_鉄筋_L * 3.14159265358979 * (鉄筋L_r角度1 / 360)
                              Case Else: 世er = "鉄筋 L [" + Data1$ + "]  (__) 内の項目が理解できない": If 世誤CK > 99 Then er (""): Stop
                              End Select
             
             
             Case Else:
             End Select
             
             
             
        If 世er <> "" Then If 世誤CK > 99 Then er (""): Stop
        End Function


'┌─────────────────────────────────────────────┐
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　橋脚 Data Put   　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘

Private Sub 橋脚_柱_Put(BNo)
    Open 橋脚_Data_dsk + "土木_橋脚_柱.RAN" For Random As #30 Len = Len(土木橋脚_柱)
    Put #30, BNo, 土木橋脚_柱
    Close #30
    End Sub

Private Sub 橋脚_Stoper_Put(BNo)
    Open 橋脚_Data_dsk + "土木_橋脚_Stoper.RAN" For Random As #30 Len = Len(土木橋脚_Stoper)
    Put #30, BNo, 土木橋脚_Stoper
    Close #30
    End Sub

Private Sub 橋脚_沓座_Put(BNo)
    Open 橋脚_Data_dsk + "土木_橋脚_沓座.RAN" For Random As #30 Len = Len(土木橋脚_沓座)
    Put #30, BNo, 土木橋脚_沓座
    Close #30
    End Sub

Private Sub 橋脚_梁_Put(BNo)
    Open 橋脚_Data_dsk + "土木_橋脚_梁.RAN" For Random As #30 Len = Len(土木橋脚_梁)
    Put #30, BNo, 土木橋脚_梁
    Close #30
    End Sub

'┌─────────────────────────────────────────────┐
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　橋脚 Data Read  　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Private Sub 土木_Dsk()
    Call dsk2
    End Sub


'┌─────────────────────────────────────────────┐
'│■ 橋脚 杭              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘

Function 橋脚_杭(項目$)
     Dim D1s As String, 部品noi As Integer, ii As Integer
     
     D1s = "***": D11 = 0:
'     With 土木橋脚_杭 '''''''''''''''''''''nagase
        Select Case 項目$
        Case "符号": D1s = 杭_符号s:   '   杭1  杭3
        Case "NO":          D11 = 杭_Noi: ' Bar No
        Case "D":           D1s = 杭_Ds: Call 橋脚_躯体_ck("*", D1s): ' 杭径mm
        Case "L":           D1s = 杭_Ls: Call 橋脚_躯体_ck("*", D1s):  '杭L
        
        Case "ｽﾍﾟｰｻ数":     D11 = 杭_Speser種数i
        
        Case "ｽﾍﾟｰｻ1", "ｽﾍﾟｰｻ2", "ｽﾍﾟｰｻ3":
                            部品noi = Val(Right(項目$, 1))
                            D1s = 杭_Spesers(部品noi): Call 橋脚_鉄筋_ck("*", "標準", D1s)
                            S_H = Val(鉄筋_H$): L2 = Sqr(S_H ^ 2 + 鉄筋L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + 鉄筋L_L(3) ^ 2)
                            Call 橋脚_鉄筋_L_ck("標準", 鉄筋_L$)
                            鉄筋L_全ΣL = 鉄筋L_L(1) + L2 + L3 + 鉄筋L_L(4)
        
                           'Stop
                           表符号s = "ｽﾍﾟｰｻ"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = Val(鉄筋_n$) * 鉄筋P_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        Case "K数":         D11 = 杭_主筋_種類数i
        
        Case "K1", "K2", "K3", "K4", "K5", "K6", "K7":
                            部品noi = Val(Mid(項目$, 2))
                            D1s = 杭_主筋_s(部品noi):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                            鉄筋_径$ = "D" + f0(杭_主筋_径i(部品noi)): 鉄筋数_n1 = 杭_主筋_本数i(部品noi)
                            
                            鉄筋_○_符号$ = "K_ _" + f0(部品noi)
                            鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋_○_符号2$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$ + " x " + F橋2(杭_主筋_ΣL(部品noi))
                           
        
        Case "K1-1", "K1-2", "K1-3", "K1-4", "K1-5", "K1-6" _
             , "K2-1", "K2-2", "K2-3", "K2-4", "K2-5", "K2-6" _
             , "K3-1", "K3-2", "K3-3", "K3-4", "K3-5", "K3-6" _
             , "K4-1", "K4-2", "K4-3", "K4-4", "K4-5", "K4-6" _
             , "K5-1", "K5-2", "K5-3", "K5-4", "K5-5", "K5-6" _
             , "K6-1", "K6-2", "K6-3", "K6-4", "K6-5", "K6-6" _
             , "K7-1", "K7-2", "K7-3", "K7-4", "K7-5", "K7-6"
                            部品noi = Val(Mid(項目$, 2))
                            D1s = 杭_主筋_s(部品noi):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
                            ii = Val(Right(項目$, 1))
                           表符号s = "K" + f0(部品noi) + "-" + f0(ii)
                           
                           
                           表鉄筋径s = 橋脚鉄筋径$(ii): 表鉄筋本数 = 杭_主筋_本数i(部品noi): 表鉄筋L = 杭_主筋_部品_分割L(部品noi, ii)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 杭_主筋_部品_W箇所数i(部品noi, ii): 表鉄筋K箇所 = 表鉄筋本数 * 杭_主筋_部品_K箇所数i(部品noi, ii)
                           表鉄筋Marki = 1
                           If 表鉄筋L = 0 Then D1s = ""
        
        
        
       
        
        Case "ΣK鉄筋本数": D11 = 杭_主筋_Σ本数i: ' exp    24
        
        
        Case "KH2":         D1s = 杭_底鉄筋s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
        
        
        Case "Hoop":       ' 杭_Hp部品_数i(1) = 0: 杭_Hp部品_数i(2) = 0: 杭_Hp部品_数i(3) = 0:
                            Hoop_L1 = 0: Hoop_L2 = 0: Hoop_L3 = 0
                            D1s = 杭_HpD_s(1):    Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
'                            鉄筋_Z位置 = 杭Hoop_Start_Z位置
        
        Case "Hoop1", "Hoop2", "Hoop3", "Hoop4", "Hoop5", "Hoop6", "Hoop7":
                            部品noi = Val(Mid(項目$, 5))
                            D1s = 杭_Hp部品_s(部品noi):    Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                            '杭Hoop径 = 鉄筋_SH径:  杭Hoop_Start_Z位置 = 鉄筋_Z位置:  杭Hoop_pit$ = 鉄筋_pit$
                            '鉄筋P_Σ数 = 鉄筋P_Σ数 + 1
                            If D1s <> "" Then
                            鉄筋_径$ = "D" + f0(杭_Hp部品_径i(部品noi))
                            鉄筋_○_符号$ = "K_0_" + f0(部品noi)
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(杭_Hp部品_数i(部品noi))
                            鉄筋L_全ΣL = 鉄筋_SH径 * 3.1415926535 + FP_橋脚_鉄筋_Data("KHL", "SD390", "帯筋", 鉄筋_径$)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "K0" + f0(部品noi)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 杭_Hp部品_数i(部品noi): 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           End If
        
        
        Case "組立筋":      D1s = 杭_Hp_組立筋s:   D2$ = "": ni = InStr(6, D1s, " "): If ni > 2 Then D2$ = Mid(D1s, 1, ni - 1)
                            Call 橋脚_鉄筋_ck("*", "帯筋", D2$)
                            鉄筋_○_符号$ = "K_0_" + f0(杭_Hp部品_種類数i + 1)
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(杭_Hp_組立筋数i)
                            鉄筋L_全ΣL = 鉄筋_SH径 * 3.1415926535 + FP_橋脚_鉄筋_Data("KHL", "SD390", "帯筋", 鉄筋_径$)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "K0" + f0(杭_Hp部品_種類数i + 1)

                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 杭_Hp_組立筋数i: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If 杭_Hp_組立筋_Typei < 90 Then D1s = ""
                            
                            
                            
        Case "Hp底":     D1s = 杭_底鉄筋s:    Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                            ii = 杭_Hp部品_種類数i + 1: If 杭_Hp_組立筋_Typei = 100 Then ii = ii + 1
                            鉄筋_○_符号$ = "K_0_" + f0(ii)
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋数_n1)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "K0" + f0(ii)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋数_n1: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        Case Else: 世er = "System 橋脚_杭 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1s
        Case "***": 橋脚_杭 = D11
        Case Else:  橋脚_杭 = D1s
        End Select
        
'     End With ''''''''''''''''''''''''nagase
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function


'┌─────────────────────────────────────────────┐
'│■ 橋脚 基礎            　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_基礎(項目$)
     Dim D1s As String, 部品noi As Integer, JointL As Single, LL1 As Single, LL2 As Single
     
     
     D1s = "***": D11 = 0:
'     With 土木橋脚_基礎 ''''''''''''''''''''''nagase
        Select Case 項目$
        Case "符号":     D1s = 基礎_符号s   '   基礎1
        Case "NO":       D11 = 基礎_Noi: ' Bar No
        Case "BX":       D1s = 基礎_BXs: Call 橋脚_躯体_ck("*", D1s)
        
        Case "BY":       D1s = 基礎_BYs: Call 橋脚_躯体_ck("*", D1s)
        
        Case "H":        D1s = 基礎_Hs: Call 橋脚_躯体_ck("*", D1s)
        
        Case "杭位置":   D1s = 基礎_杭位置s: 'Call 橋脚_杭位置_ck(D1s)
        
        Case "FX1":      ' F11
                         D1s = 基礎_FXs(1):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           鉄筋P_Σ数 = 基礎_FX_部品数i(1)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _11"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "F11"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        Case "FX1平面":      ' F11
                         D1s = 基礎_FXs(1):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         Call 橋脚_鉄筋_L_ck("標準", 鉄筋_B$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1s = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1s = D1s + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1s = D1s + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1s = D1s + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1s = Mid(D1s, 2): Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        Case "FX1平面R":      ' F11
                         D1s = 基礎_FXs(1):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1s = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1s = D1s + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1:  D1s = D1s + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1s = D1s + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1s = Mid(D1s, 2): Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        
        Case "FX2":      ' F12
                         D1s = 基礎_FXs(2):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 F12 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + 鉄筋_H2$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           
                           鉄筋P_Σ数 = 基礎_FX_部品数i(2)
                           Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _12"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "F12"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = FX2数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        Case "FX2平面":      ' F12
                         鉄筋_B$ = 基礎_FX_Bs(2)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         Select Case ni
                         Case 1:    D1s = F9(Abs(Di(1) - 基礎_FX_Bi(2) / 2))
                         
                         Case Else
                                    LL1 = Di(1) - 基礎_FX_Bi(2) / 2: LL2 = Di(3): JointL = Val(Mid(Ds$(2), 2))
                                    
                                    D1s = F9(Abs(Di(1) - 基礎_BXLi)) + "+" + Ds$(2) + "+" + Ds$(3)
                                    If Mid(Ds$(2), 1, 1) = "J" Then
                                         LL2 = LL2 - JointL
                                         If JointL > LL1 Then JointL = LL1 - 1 '
                                         
                                         D1s = F9(LL1) + "+J" + F9(JointL) + "+" + F9(LL2 + JointL)
                                         End If
                         End Select
                          Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        Case "FX2平面R":      ' F12
                          
                          D1s = F9(Abs(基礎_FX_Bi(2) / 2))
                          Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        
        Case "FX3":      ' F13
                         D1s = 基礎_FXs(2): ' 本数の計算のみ
                         D1s = 基礎_FXs(3): If D1s = "" Then D1s = 基礎_FXs(2): '***
                         
                         Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 F13 H___  がない":   If 世誤CK > 99 Then Stop
                         
                         鉄筋_B$ = 基礎_FX_BRs(3)
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + 鉄筋_H2$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           
                         鉄筋P_Σ数1 = 基礎_FX_部品数i(3)
                           鉄筋_○_符号$ = "F_ _13"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            
                            Σ数$ = F9(鉄筋P_Σ数1)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "F13"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数1 - FX2数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                         If InStr(鉄筋_H$, "～") > 0 Then 表鉄筋適用s = "(平均長)"
                           表鉄筋Marki = 1
                         
        Case "FX3平面":      ' F13
                         鉄筋_B$ = 基礎_FX_Bs(3)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         Select Case ni
                         Case 1:    D1s = F9(Abs(Di(1) - 基礎_FX_Bi(3) / 2))
                         
                         Case Else
                                    LL1 = Di(1) - 基礎_FX_Bi(3) / 2: LL2 = Di(3): JointL = Val(Mid(Ds$(2), 2))
                                    
                                    D1s = F9(Abs(Di(1) - 基礎_BXLi)) + "+" + Ds$(2) + "+" + Ds$(3)
                                    If Mid(Ds$(2), 1, 1) = "J" Then
                                         LL2 = LL2 - JointL
                                         If JointL > LL1 Then JointL = LL1 - 1 '
                                         
                                         D1s = F9(LL1) + "+J" + F9(JointL) + "+" + F9(LL2 + JointL)
                                         End If
                         End Select
                          Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)


        Case "FX3平面R":      ' F13
                          
                          'D1s = 基礎_FX_BRs(3): Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
                          D1s = F9(Abs(基礎_FX_Bi(3) / 2))
                          Data1$ = D1s: Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        
        
        
        Case "FX4":      ' F14
                          D1s = 基礎_FXs(4):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           
                           鉄筋P_Σ数 = 基礎_FX_部品数i(4)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           
                           部品noi = 13: If 基礎_FXs(3) <> "" Then 部品noi = 14
                           鉄筋_○_符号$ = "F_ _" + f0(部品noi)
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "F" + f0(部品noi)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        Case "FY1":      ' F1
                         D1s = 基礎_FYs(1):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           鉄筋P_Σ数 = 基礎_FY_部品数i(1)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(Int(鉄筋P_Σ数 / 2)): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "F1"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        Case "FY2":      ' F2
                         D1s = 基礎_FYs(2):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         
                         Data1$ = 鉄筋_H$:
                         Fook1$ = "": Fook2$ = "": If Mid(Data1$, 1, 2) = "F+" Then Fook1$ = "F+": Fook2$ = "+F": Data1$ = Mid(Data1$, 3)
                         Call 橋脚_鉄筋_L_ck("標準", Data1$)
                         Select Case 鉄筋L_Data数
                         Case 1:     HHD = 鉄筋L_L(1): HHU = 0
                         Case 2:     HHD = 鉄筋L_L(1): HHU = 鉄筋L_L(2)
                         Case Else: 世er = "橋脚_基礎 項目 FY2 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                         End Select
                         Data1$ = Fook1$ + F9(HHD) + "+" + 鉄筋_B$ + "+" + F9(HHD) + Fook2$
                         
                         鉄筋P_Σ数 = 基礎_FY_部品数i(2)
                         
                         Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           鉄筋_○_符号$ = "F_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(Int(鉄筋P_Σ数 / 2 + 0.5)): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "F2"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        
        
        
        Case "FY2平面":      ' F2
                         Data1$ = 基礎_FY_Gs(2): Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        Case "FY2平面R":      ' F2
                         
                         Data1$ = 基礎_FY_GRs(2): Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
        Case "FY3":     'F3
                         D1s = 基礎_FYs(3):  Call 橋脚_鉄筋_ck("*", "標準", D1s)
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           鉄筋P_Σ数 = 基礎_FY_部品数i(3)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "F3"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        
        Case "St線路方向":     ' f1
                         '  鉄筋P_Σ数22 = P_FH_個数("f1")
                         D1s = 基礎_St_線路方向_部品s:  Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                         
                         鉄筋_B$ = F9(基礎_St_線路方向_部品_Bi)
                         鉄筋_H$ = 基礎_St_線路方向_部品_Hs
                              Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                              鉄筋_H2$ = ""
                              For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(鉄筋_H2$, 2) + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
                           
                           鉄筋_○_符号$ = "f_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋P_Σ数 = 基礎_St_線路方向_部品数i
                            Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = "n-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "f1"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        Case "St直角方向":      ' f2
                          '  鉄筋P_Σ数22 = P_FH_個数("f1")
                         D1s = 基礎_St_直角方向_部品s:  Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                         
                         鉄筋_B$ = F9(基礎_St_直角方向_部品_Bi)
                         鉄筋_H$ = 基礎_St_直角方向_部品_Hs
                                Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                                鉄筋_H2$ = ""
                                For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                                Data1$ = Mid(鉄筋_H2$, 2) + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
                           鉄筋_○_符号$ = "f_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋P_Σ数 = 基礎_St_直角方向_部品数i
                            Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = "n-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号s = "f2"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        
        Case Else: 世er = "System 橋脚_基礎 項目 [" + 項目$ + "] が無い": er (""):  If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1s
        Case "***": 橋脚_基礎 = D11
        Case Else:  橋脚_基礎 = D1s
        End Select
        
'     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     
     
     
     End Function

'┌─────────────────────────────────────────────┐
'│■ 橋脚 柱              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_柱_No(柱符号$)
     柱no = 0: ' 0  部材名が無い
     For i = 1 To 柱_No_Max: 'If 柱符号$ = 柱名(i) Then 柱no = i: Exit For
         Next i
     If Trim(柱符号$) = "" Then 柱no = 0: ' 必要
     橋脚_柱_No = 柱no
     If 柱no > 0 Then Call 橋脚_柱_Get(柱no)
     End Function
Sub 橋脚_柱_Get(BNo)
     If 橋脚_Data_dsk = "" Then Call 土木_Dsk
     Open 橋脚_Data_dsk + "土木_橋脚_柱.RAN" For Random As #31 Len = Len(土木橋脚_柱)
     Get #31, BNo, 土木橋脚_柱
     Close #31
     End Sub
Function 橋脚_柱(項目$)
     Dim ni As Integer, HTyi As Integer, 部品i As Integer
     Dim Datas As String, Ds(200) As String, Di(200)
     Dim D1s As String
     
     D1s = "***": D11 = 0:
     With 土木橋脚_柱
        Select Case 項目$ 'UCase(項目$)
        Case "符号":       D1s = Trim(.符号):   '   柱1
        Case "NO":         D11 = .No: ' Bar No
        Case "BX":         D1s = F_RAN(.Da_BX): Call 橋脚_躯体_ck("*", D1s)
        Case "BY":         D1s = F_RAN(.Da_BY): Call 橋脚_躯体_ck("*", D1s)
        Case "H":          D1s = F_RAN(.Da_H): Call 橋脚_躯体_ck("*", D1s)
        Case "R":          D1s = F_RAN(.Da_r): Call 橋脚_躯体_ck("*", D1s)
        
        Case "C種類数":    '主筋
                           D11 = .C種数
        
        Case "C1", "C2", "C3", "C4", "C5", "C6":
                           部品i = Val(Mid(項目$, 2))
                           D1s = 柱_主筋_部品s(部品i): Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
                           鉄筋_○_符号$ = "C_ _" + f0(部品i)
                           鉄筋_○_符号1$ = 柱_主筋_径s(部品i)
                           鉄筋_○_符号2$ = f0(柱_主筋_数i(部品i)) + "-" + 柱_主筋_径s(部品i)
                           鉄筋_○_符号3$ = f0(柱_主筋_数i(部品i)) + "-" + 柱_主筋_径s(部品i) + " x " + F橋2(柱_主筋_L(部品i))
                           
                           表符号s = "CK"
                           表鉄筋径s = 柱_主筋_径s(部品i): 表鉄筋本数 = 柱_主筋_数i(部品i): 表鉄筋L = 柱_主筋_L(部品i)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
                           If 柱_主筋_数i(部品i) = 0 Then D1s = ""
        
        
        Case "Xpit段数":      D11 = 柱_主筋_段数_Xi
        Case "Xpit_1段":      D1s = 柱_主筋_Xpits(1):  Call 橋脚_鉄筋_Pit_ck(D1s)
        Case "Xpit_2段":      D1s = 柱_主筋_Xpits(2):  Call 橋脚_鉄筋_Pit_ck(D1s)
        
        Case "Ypit段数":      D11 = 柱_主筋_段数_Yi
        Case "Ypit_1段":      D1s = 柱_主筋_Ypits(1):  Call 橋脚_鉄筋_Pit_ck(D1s)
        Case "Ypit_2段":      D1s = 柱_主筋_Ypits(2):  Call 橋脚_鉄筋_Pit_ck(D1s)
        
        Case "X主筋段数":     D11 = 柱_主筋_段数_Xi
        Case "X主筋_1段":     D1s = 柱_主筋_配置_Xs(1):   Call P_橋脚_柱_主筋(D1s)
        Case "X主筋_2段":     D1s = 柱_主筋_配置_Xs(2):  Call P_橋脚_柱_主筋(D1s)
        
        Case "Y主筋段数":     D11 = 柱_主筋_段数_Yi
        Case "Y主筋_1段":     D1s = 柱_主筋_配置_Ys(1):   Call P_橋脚_柱_主筋(D1s)
        Case "Y主筋_2段":     D1s = 柱_主筋_配置_Ys(2):   Call P_橋脚_柱_主筋(D1s)
        
        Case "X主筋被ﾘ_1段":  'D2$ = F_RAN(.CX主筋1):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋Noi(1):
                              D3$ = Fp_橋脚_柱_主筋(柱_X_1段_主筋代表i)
                              D11 = 鉄筋_SK位置
        
        Case "X主筋被ﾘ_2段":  'D2$ = F_RAN(.CX主筋2):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋Noi(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D3$ = Fp_橋脚_柱_主筋(柱_X_1段_主筋代表i)
                              D11 = 鉄筋_SK位置 + 2.5 * 鉄筋_径i
        
        Case "Y主筋被ﾘ_1段":  'D2$ = F_RAN(.CY主筋1):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋Noi(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D3$ = Fp_橋脚_柱_主筋(柱_Y_1段_主筋代表i)
                              D11 = 鉄筋_SK位置
        
        Case "Y主筋被ﾘ_2段":  'D2$ = F_RAN(.CY主筋2):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋Noi(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D3$ = Fp_橋脚_柱_主筋(柱_Y_1段_主筋代表i)
                              D11 = 鉄筋_SK位置 + 2.5 * 鉄筋_径i
        
        
        Case "角主筋":        D1s = F_RAN(.C角主筋):  Call P_橋脚_柱_主筋(D1s)
        
        Case "角主筋_XL":     D11 = .C角主筋X
        Case "角主筋_YL":     D11 = .C角主筋Y
        
        Case "CK":         'CK は 柱梁のｺｰﾅｰ筋 です
                           D1s = F_RAN(.CK):    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.h1)
                           CH半径 = 土木橋脚_梁.r2 + 鉄筋_SK位置
                           'CK角度 = 鉄筋_r
                           鉄筋P_Σ数 = Val(鉄筋_径本数$)
                           Data1$ = 鉄筋_L$ + "+r" + F9(CH半径) + "度" + F9(90 - 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           If 土木橋脚_梁.r2 <= 0 Then Data1$ = 鉄筋_L$ + "+角" + F9(90 - 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           
                           LL1 = Val(鉄筋_L$)
                           鉄筋L_XL = CH半径 - CH半径 * Dsin(梁角度) + LL1 * Dcos(梁角度)
                           鉄筋L_YL = LL1 + CH半径 * Dcos(梁角度) + LL1 * Dsin(梁角度)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "C_ _K"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "CK"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        Case "CKR":         'CK は 柱梁のｺｰﾅｰ筋 です
                           D1s = F_RAN(.CK):    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.h1)
                           CH半径 = 土木橋脚_梁.r2 + 鉄筋_SK位置
                           'CK角度 = 鉄筋_r
                           鉄筋P_Σ数 = Val(鉄筋_径本数$)
                           Data1$ = 鉄筋_L$ + "+r" + F9(CH半径) + "度" + F9(-90 + 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           If 土木橋脚_梁.r2 <= 0 Then Data1$ = 鉄筋_L$ + "+角" + F9(-90 + 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           LL1 = Val(鉄筋_L$)
                           鉄筋L_XL = CH半径 - CH半径 * Dsin(梁角度) + LL1 * Dcos(梁角度)
                           鉄筋L_YL = LL1 + CH半径 * Dcos(梁角度) + LL1 * Dsin(梁角度)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "C_ _K"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
        
'        Case "CH1":        '外周ﾌｰﾌﾟ
'                           D1s = 柱_外Hp_部品s:    Call 橋脚_鉄筋_ck("*","標準", D1s)
'
'                           X_Hoop_XL = Val(鉄筋_X$)
'                           Call Ddata("x", 鉄筋_Y$, Ds$(), Di(), ni)
'                           Y_HOOP_XL = Di(1): Y_Hoop_YL = Di(2)

        Case "外HpX":        '外周 Xﾌｰﾌﾟ    外Hp_X
                            D1s = 柱_外Hp_部品s
                            Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                            Hoop_XL = Val(鉄筋_X$)
                            Datas = "F+" + F9(Hoop_XL) + "+F": Call 橋脚_鉄筋_L_ck("帯筋", Datas)
                                       
                            Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                            鉄筋_○_符号$ = "c_ _1" '  鉄筋_○_符号$ = "c_ _1-1"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           
                           表符号s = "c1"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        Case "外HpY":        '外周 Yﾌｰﾌﾟ
                           
                           D1s = 柱_外Hp_部品s
                           Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                           Call Ddata("X", UCase(鉄筋_Y$), Ds(), Di(), ni)
                           Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = 柱_外Hp_r: If Hoop_r < 0 Then Hoop_r = 0
                           
                           Select Case Hoop_r
                                Case 0:    Datas = "F+" + F9(Hoop_XL) + "+" + F9(Hoop_YL) + "+" + F9(Hoop_XL) + "+F"
                                Case Else: Datas = "F+" + F9(Hoop_XL - Hoop_r) + "+r" + F9(Hoop_r) + "+" + F9(Hoop_YL - 2 * Hoop_r) + "+r" + F9(Hoop_r) + "+" + F9(Hoop_XL - Hoop_r) + "+F":
                                End Select
                           Call 橋脚_鉄筋_L_ck("帯筋", Datas)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "c_ _2" '     鉄筋_○_符号$ = "c_ _1-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号s = "c2"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        
        Case "内HpX1", "内HpX2", "内HpX3", "内HpX4", "内HpX5", "内HpX6"
                           部品i = Val(Mid(項目$, 5))
                           D1s = 柱_内Hp_X_部品s(部品i)
                           If D1s <> "" Then
                               Call SP_柱_内Hp_作図準備_X(部品i)
                               Call SP_柱_内Hp_Mark_X(部品i)
                               End If
                         
        
        Case "内HpY1", "内HpY2", "内HpY3", "内HpY4", "内HpY5", "内HpY6", "内HpY7", "内HpY8", "内HpY9"
                           部品i = Val(Mid(項目$, 5))
                           D1s = 柱_内Hp_Y_部品s(部品i)
                      'If 部品i > 8 Then Stop
                           If D1s <> "" Then
                               Call SP_柱_内Hp_作図準備_Y(部品i)
                               Call SP_柱_内Hp_Mark_Y(部品i)
                               End If
                               
     ' 柱組立筋 Begin
        Case "組立筋":        '組立筋
                            D1s = 柱_組立筋_部品s
                            Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                            If D1s <> "" Then
                            Datas = F9(柱_組立筋_L): Call 橋脚_鉄筋_L_ck("帯筋", Datas)
                                       
                            Σ数$ = F9(2 * 柱_組立筋_Pit数i): Σ数2$ = F9(2 * 柱_組立筋_Pit数i)
                            
                            ni = 柱_外Hp_X_部品_Ty数i + 柱_外Hp_Y_部品_Ty数i + 柱_内Hp_X_部品_Ty数i + 柱_内Hp_Y_部品_Ty数i + 1


                            鉄筋_○_符号$ = "c_ _" + f0(ni) '  鉄筋_○_符号$ = "c_ _1-1"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(柱_組立筋_L)
                           
                           
                           表符号s = "c" + f0(ni)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 柱_組立筋_L
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           End If
        
     ' 柱組立筋 End
                               
        Case Else: 世er = "System 橋脚_柱 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1s
        Case "***": 橋脚_柱 = D11
        Case Else:  橋脚_柱 = D1s
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function
Function Fp_橋脚_柱_主筋(No)
     'With 土木橋脚_柱
        D1$ = 柱_主筋_部品s(No):    Call 橋脚_鉄筋_ck("*", "標準", D1$): 鉄筋_○_符号$ = "C_ _" + f0(No)
        
        If No > 6 Then 世er = "System 橋脚_柱 主筋  No>5 ": er (""): If 世誤CK > 99 Then Stop
      'End With
      
            鉄筋_○_符号1$ = 鉄筋_径$
            鉄筋_○_符号2$ = "*-" + 鉄筋_径$
            鉄筋_○_符号3$ = "*-" + 鉄筋_径$ + " x ****"
      Fp_橋脚_柱_主筋 = D1$
      End Function




Function FP_橋脚_鉄筋_長さ(加工Type$, Data1$)
        ' exp     500+J400+800       500+800=1300
        ' r2   終点の r
        Call 橋脚_鉄筋_L_ck(加工Type$, Data1$)
        LLL = 0
        For ii = 1 To 鉄筋L_Data数
               Select Case UCase(鉄筋L_Type$(ii))
               Case "L":   LLL = LLL + 鉄筋L_L(ii)
               Case Else:
               End Select
               Next ii
     FP_橋脚_鉄筋_長さ = LLL
     End Function


Function FP_橋脚_鉄筋_Ldata(加工Type$, 鉄筋径$, Fook$, Data1$, r1, r2)
        ' 加工Type$    標準   帯筋
        ' Joint 長さは  L1 * 2 を使用する
        ' Fook$="Y"  or ""  Y ﾌｯｸをつける
        ' r1   始点の r
        ' r2   終点の r
        Joint_L = 2 * FP_橋脚_鉄筋_Data("L1", "SD390", 加工Type$, 鉄筋径$)
        Call 橋脚_鉄筋_L_ck(加工Type$, Data1$)
        鉄筋L_L(1) = 鉄筋L_L(1) - r1: If 鉄筋L_L(1) < 0 Then 鉄筋L_L(1) = 0
        鉄筋L_L(鉄筋L_Data数) = 鉄筋L_L(鉄筋L_Data数) - r2: If 鉄筋L_L(鉄筋L_Data数) < 0 Then 鉄筋L_L(鉄筋L_Data数) = 0
        D1$ = "":
        For ii = 1 To 鉄筋L_Data数
               Select Case UCase(鉄筋L_Type$(ii))
               Case "L":   D1$ = D1$ + "+" + F9(鉄筋L_L(ii)):
               Case "K":   D1$ = D1$ + "+K"
               Case "W":   D1$ = D1$ + "+W"
               Case "J":   Joi_L = 鉄筋L_L(ii): If Joi_L = 0 Then Joi_L = Joint_L
                           Select Case UCase(Fook$)
                           Case "Y":     D1$ = D1$ + "+F+J" + F9(Joi_L) + "+F"
                           Case Else:     D1$ = D1$ + "+J" + F9(Joi_L)
                           End Select
                           鉄筋L_L(ii + 1) = 鉄筋L_L(ii + 1) + Joi_L
               Case Else:  D1$ = "+1000": 世er = "FP_橋脚_鉄筋_Ldata  項目 [" + Data1$ + "] は使用できません": If 世誤CK > 99 Then er (""): Stop
                           Exit For
               End Select
               Next ii
     FP_橋脚_鉄筋_Ldata = Mid(D1$, 2)
     End Function

'Private Sub P_内側YHOOP_n(XL, YHn1, YHn2)
'
'          SToper_Z = 基礎_Hi + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1) - 直筋_Stoper開き_Y
'
'              YHn1 = 0: YHn2 = 0
'              'XL = 橋脚_柱("内HoopY_XL")
'              'D1$ = 橋脚_柱("内HoopY1")
'              For ii = 1 To 鉄筋P_Σ数 Step 2
'
'                  For i2 = 1 To 鉄筋X位置_Σ数 Step 2
'                       CK$ = ""
'                       Y0 = 鉄筋P_位置(ii) '+ 15
'                       X0 = -土木橋脚_柱.BXL + 鉄筋X位置_位置(i2) - XL / 2
'                       If Y0 > SToper_Z Then CK$ = FP_Stoper_X位置i(X0) + FP_Stoper_X位置i(X0 + XL)
'                       Select Case CK$
'                       Case "":    YHn1 = YHn1 + 1
'                       Case Else:  YHn2 = YHn2 + 1
'                       End Select
'                        'Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
'                       Next i2
'
'                  For i2 = 2 To 鉄筋X位置_Σ数 Step 2
'                       If ii + 1 > 鉄筋P_Σ数 Then Exit For
'                       CK$ = ""
'                       Y0 = 鉄筋P_位置(ii + 1) '+ 15
'                       X0 = -土木橋脚_柱.BXL + 鉄筋X位置_位置(i2) - XL / 2
'                       If Y0 > SToper_Z Then CK$ = FP_Stoper_X位置i(X0) + FP_Stoper_X位置i(X0 + XL)
'
'                       Select Case CK$
'                       Case "":    YHn1 = YHn1 + 1
'                       Case Else:  YHn2 = YHn2 + 1
'                       End Select
'
'                       'Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
'                       Next i2
'
'                  Next ii
'
'
'     End Sub


'┌─────────────────────────────────────────────┐
'│■ 橋脚 ｽﾄｯﾊﾟｰ          　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_Stoper_No(Stoper符号1$)
     StoperNo = 0: ' 0  部材名が無い
     For i = 1 To Stoper_Ty数i: If Stoper符号1$ = Stoper_符号s(i) Then StoperNo = i: Exit For
         Next i
     If Trim(Stoper符号1$) = "" Then StoperNo = 0: ' 必要
     橋脚_Stoper_No = StoperNo
     If StoperNo > 0 Then Call 橋脚_Stoper_Get(StoperNo)
     End Function
Sub 橋脚_Stoper_Get(BNo)
     If 橋脚_Data_dsk = "" Then Call 土木_Dsk
     Open 橋脚_Data_dsk + "土木_橋脚_Stoper.RAN" For Random As #31 Len = Len(土木橋脚_Stoper)
     Get #31, BNo, 土木橋脚_Stoper
     Close #31
     End Sub
Function 橋脚_Stoper(項目$)
     Dim D1s As String, D2s As String, Ti As Integer
     Dim Stypei As Integer ' =Stoper_Tyi(i)  ' 0  無し  　 1 □            2 ○
     Dim Noi As Integer
     
     D1s = "***": D11 = 0:
     With 土木橋脚_Stoper
        Select Case UCase(項目$)
        Case "符号":       D1s = Trim(.符号):   '   Stoper1
        Case "NO":         D11 = .No: ' Stoper No
        Case "箱抜":       D1s = F_RAN(.箱抜): Call 橋脚_躯体_ck("*", D1s)
        Case "被ﾘ":        D1s = F_RAN(.被り): Call 橋脚_被り_ck("*", D1s)
        
        Case "H種類数":    '
                           D11 = 0: '1  2  3
                           If F_RAN(.h1) <> "" Then D11 = D11 + 1
                           If F_RAN(.h2) <> "" Then D11 = D11 + 1
                           If F_RAN(.h3) <> "" Then D11 = D11 + 1
        Case "H1", "H4", "H7", "H10":
                           Select Case UCase(項目$)
                           Case "H1": Stypei = Stoper_Tyi(1): Ti = Stoper_箇所i(1): D1s = Stoper_H1s(1): 鉄筋_○_符号$ = "H_ _1": 表符号s = "H1"
                           Case "H4": Stypei = Stoper_Tyi(2): Ti = Stoper_箇所i(2): D1s = Stoper_H1s(2): 鉄筋_○_符号$ = "H_ _4": 表符号s = "H4"
                           Case "H7": Stypei = Stoper_Tyi(3): Ti = Stoper_箇所i(3): D1s = Stoper_H1s(3): 鉄筋_○_符号$ = "H_ _7": 表符号s = "H7"
                           Case "H10": Stypei = Stoper_Tyi(4): Ti = Stoper_箇所i(4): D1s = Stoper_H1s(4): 鉄筋_○_符号$ = "H_ _10": 表符号s = "H10"
                           Case Else: Stop
                           End Select
        
                           'D1s = F_RAN(.H1):
                           If D1s <> "" Then
                                Call 橋脚_鉄筋_ck("*", "標準", D1s): If 世er <> "" And 世誤CK > 99 Then Stop
                                BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                                Data1$ = Mid(FP1(HH) + "+角45" + FP1(BB) + "+角45" + FP1(HH), 2)
                                Call 橋脚_鉄筋_L_ck("標準", Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           '* Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Ti)
                         '  鉄筋_○_符号$ = "H_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           '表符号s = "H1"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数 * Stoper位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           End If
        
        Case "H2", "H5", "H8", "H11":
                           Select Case UCase(項目$)
                           Case "H2": Noi = 1: Stypei = Stoper_Tyi(1): Ti = Stoper_箇所i(1): D1s = Stoper_H2s(1): 鉄筋_○_符号$ = "H_ _2": 表符号s = "H2"
                           Case "H5": Noi = 2: Stypei = Stoper_Tyi(2): Ti = Stoper_箇所i(2): D1s = Stoper_H2s(2): 鉄筋_○_符号$ = "H_ _5": 表符号s = "H5"
                           Case "H8": Noi = 3: Stypei = Stoper_Tyi(3): Ti = Stoper_箇所i(3): D1s = Stoper_H2s(3): 鉄筋_○_符号$ = "H_ _8": 表符号s = "H8"
                           Case "H11": Noi = 4: Stypei = Stoper_Tyi(4): Ti = Stoper_箇所i(4): D1s = Stoper_H2s(4): 鉄筋_○_符号$ = "H_ _11": 表符号s = "H11"
                           Case Else: Stop
                           End Select
                           If D1s <> "" Then
                           Call 橋脚_鉄筋_ck("*", "標準", D1s): If 世er <> "" And 世誤CK > 99 Then Stop
                           Select Case Stypei
                               Case 1: ' □
                               Case 2: ' ○
                                        H2_鉄筋径i = 鉄筋_径i
                                        D2s = Stoper_H1s(Noi): Call 橋脚_鉄筋_ck("*", "標準", D2s): YY = Val(鉄筋_Y$): H1_鉄筋径i = 鉄筋_径i
                                        Stoper_H2_LY = YY - H1_鉄筋径i / 2 - H2_鉄筋径i / 2
                               
                               End Select
                           Call 橋脚_鉄筋_ck("*", "標準", D1s): If 世er <> "" And 世誤CK > 99 Then Stop
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Select Case Stypei
                               Case 2:        Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                               Case Else:     Data1$ = Mid(FP1(HH) + FP1(BB), 2)
                               End Select
                           Call 橋脚_鉄筋_L_ck("標準", Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           'Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数 * Ti)
                           '鉄筋_○_符号$ = "H_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           '表符号s = "H2"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数 * Stoper位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           End If
        
        Case "H3*", "H6*":
             ' Stop
        
                           D1s = F_RAN(.h3):    Call 橋脚_鉄筋_ck("*", "標準", D1s): If 世er <> "" And 世誤CK > 99 Then Stop
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck("標準", Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Stoper位置_Data数)
                           鉄筋_○_符号$ = "H_ _3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
        
        Case "H3", "H6", "H9", "H12":
                           Select Case UCase(項目$)
                           Case "H3": Noi = 1: Stypei = Stoper_Tyi(1): Ti = Stoper_箇所i(1): D1s = Stoper_H3s(1): 鉄筋_○_符号$ = "H_ _3": 表符号s = "H3"
                           Case "H6": Noi = 2: Stypei = Stoper_Tyi(2): Ti = Stoper_箇所i(2): D1s = Stoper_H3s(2): 鉄筋_○_符号$ = "H_ _6": 表符号s = "H6"
                           Case "H9": Noi = 3: Stypei = Stoper_Tyi(3): Ti = Stoper_箇所i(3): D1s = Stoper_H3s(3): 鉄筋_○_符号$ = "H_ _9": 表符号s = "H9"
                           Case "H12": Noi = 4: Stypei = Stoper_Tyi(4): Ti = Stoper_箇所i(4): D1s = Stoper_H3s(4): 鉄筋_○_符号$ = "H_ _12": 表符号s = "H12"
                           Case Else: Stop
                           End Select
                           
                           If D1s <> "" Then
                           Select Case Stypei
                               Case 1: ' □
                                         Call 橋脚_鉄筋_ck("*", "標準", D1s): H3_鉄筋径i = 鉄筋_径i: BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                                         Data1$ = Mid(FP1(HH), 2): Call 橋脚_鉄筋_L_ck("標準", Data1$)
                                         H3_平_i = 鉄筋P_Data数:
                                         H3_平_L = 鉄筋P_位置(鉄筋P_Data数 - 1)
                                         H3_鉛直_i = 鉄筋P_Σ数 - (鉄筋P_Data数 - 1) + 1
                                         H3_鉛直_Pit = 鉄筋P_p(鉄筋P_Data数)
                               
                                         鉄筋P_Σ数2 = H3_平_i + 2 * H3_鉛直_i
                               
                                         D2s = Stoper_箱抜s(Noi): Call 橋脚_躯体_ck("*", D2s): S_BX = 躯体_D(1): S_BY = 躯体_D(2): If S_BX = 0 Then S_BX = S_BY
                                         D2s = Stoper_H1s(Noi): Call 橋脚_鉄筋_ck("*", "標準", D2s): H1_YY = Val(鉄筋_Y$): H1_鉄筋径i = 鉄筋_径i: H1_LL = Val(鉄筋_B$)
                                         D2s = Stoper_H2s(Noi): Call 橋脚_鉄筋_ck("*", "標準", D2s): H2_鉄筋径i = Val(Mid(鉄筋_径$, 2)): H2_XX = Val(鉄筋_X$)
                                         Stoper_H3水平_LY = H1_YY - H1_鉄筋径i / 2 - H3_鉄筋径i / 2
                                         Stoper_H3鉛直_LY = H1_YY - (S_BX + 2 * H2_XX - H1_LL) / 2
                                         Call 橋脚_鉄筋_ck("*", "標準", D1s)
                               
                               Case 2: ' ○
                                         Call 橋脚_鉄筋_ck("*", "標準", D1s): BB = Val(鉄筋_H$): HH = 鉄筋P_ΣL
                                         NN = 鉄筋P_Σ数: PPIT = 鉄筋P_p(1)
                                         Data1$ = "[L:" + FD2(-BB, 0)
                                         For ii = 1 To NN
                                             Data1$ = Data1$ + "|" + FD2(BB, PPIT / 2)
                                             Data1$ = Data1$ + "|" + FD2(-BB, PPIT / 2)
                                             Next ii
                                         Data1$ = Data1$ + "|" + FD2(BB, 0) + "]"
                                         図H1_Data1s = Data1$
                                         鉄筋L_全ΣL = Sqr((BB * (NN + 1) * 3.1415) ^ 2 + HH ^ 2)
                                         鉄筋P_Σ数2 = 1
                                         鉄筋L_Xcen = BB / 2: 鉄筋L_Ycen = HH / 2
                                        
                               Case Else
                               End Select
                           'Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                           'Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Ti)
                           '鉄筋_○_符号$ = "H_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋P_Σ数 = 鉄筋P_Σ数2
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Ti)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           '表符号s = "H3"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数 * Stoper位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           End If
                           If 世er <> "" And 世誤CK > 99 Then Stop
        Case Else: 世er = "System 橋脚_Stoper 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1s
        Case "***": 橋脚_Stoper = D11
        Case Else:  橋脚_Stoper = D1s
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function



'┌─────────────────────────────────────────────┐
'│■ 橋脚 沓座              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_沓座_No(沓座符号1$)
     沓座no = 0: ' 0  部材名が無い
     For i = 1 To 沓座_Ty数i: If 沓座符号1$ = 沓座_符号s(i) Then 沓座no = i: Exit For
         Next i
     If Trim(沓座符号1$) = "" Then 沓座no = 0: ' 必要
     橋脚_沓座_No = 沓座no
     If 沓座no > 0 Then Call 橋脚_沓座_Get(沓座no)
     End Function
Sub 橋脚_沓座_Get(BNo)
     If 橋脚_Data_dsk = "" Then Call 土木_Dsk
     Open 橋脚_Data_dsk + "土木_橋脚_沓座.RAN" For Random As #31 Len = Len(土木橋脚_沓座)
     Get #31, BNo, 土木橋脚_沓座
     Close #31
     End Sub
Function 橋脚_沓座(項目$)
     Dim D1s As String, Ti As Integer, T1i As Integer, T2i As Integer
     Dim n1i As Integer, n2i As Integer
     D1s = "***": D11 = 0:
     With 土木橋脚_沓座
        Select Case UCase(項目$)
        Case "符号":       D1s = Trim(.符号):   '   沓座1
        Case "NO":         D11 = .No: ' 沓座 No
       ' Case "ｺﾞﾑｼｭｳ":     D1s = F_RAN(.Gomsyu): Call 橋脚_躯体_ck("*", D1s)
        Case "BD":         D1s = F_RAN(.BD): Call 橋脚_躯体_ck("*", D1s)
        Case "被ﾘ":        D1s = F_RAN(.被り): Call 橋脚_被り_ck("*", D1s)
        
        Case "S数":        '
                           D11 = 0: '1  2  3
                           If F_RAN(.S1) <> "" Then D11 = D11 + 1
                           If F_RAN(.S2) <> "" Then D11 = D11 + 1
        
        Case "S1", "S2", "S3", "S4", "S5", "S6", "S7", "S8":
                           Select Case UCase(項目$)
                               Case "S1": Ti = 沓座_箇所i(1): D1s = 沓座_S1s(1): 鉄筋_○_符号$ = "S_ _1": 表符号s = "S1"
                               Case "S2": Ti = 沓座_箇所i(1): D1s = 沓座_S2s(1): 鉄筋_○_符号$ = "S_ _2": 表符号s = "S2"
                               Case "S3": Ti = 沓座_箇所i(2): D1s = 沓座_S1s(2): 鉄筋_○_符号$ = "S_ _3": 表符号s = "S3"
                               Case "S4": Ti = 沓座_箇所i(2): D1s = 沓座_S2s(2): 鉄筋_○_符号$ = "S_ _4": 表符号s = "S4"
                               Case "S5": Ti = 沓座_箇所i(3): D1s = 沓座_S1s(3): 鉄筋_○_符号$ = "S_ _5": 表符号s = "S5"
                               Case "S6": Ti = 沓座_箇所i(3): D1s = 沓座_S2s(3): 鉄筋_○_符号$ = "S_ _6": 表符号s = "S6"
                               Case "S7": Ti = 沓座_箇所i(4): D1s = 沓座_S1s(4): 鉄筋_○_符号$ = "S_ _7": 表符号s = "S7"
                               Case "S8": Ti = 沓座_箇所i(4): D1s = 沓座_S2s(4): 鉄筋_○_符号$ = "S_ _8": 表符号s = "S8"
                               End Select
        
                           If D1s <> "" Then
                           Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           Σ数$ = F9(鉄筋P_Σ数 + 1): Σ数2$ = F9((鉄筋P_Σ数 + 1) * Ti)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           '表符号s = "S1"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = (鉄筋P_Σ数 + 1) * 沓座位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           End If
        
        Case "連結筋"
                           D1s = 沓座_連結筋s(1)
                           Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           n1i = Val(沓座_連結筋s(1))
                           n2i = Val(沓座_連結筋s(2))
                           T1i = 沓座_箇所i(1): T2i = 沓座_箇所i(2)
                           
                           
                           鉄筋_○_符号$ = "G_ _1": 表符号s = "G1"
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB), 2)
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           Σ数$ = F9(n1i): Σ数2$ = F9(n1i * T1i + n2i * T2i)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = n1i * T1i + n2i * T2i: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
        
        
        
        Case Else: 世er = "System 橋脚_沓座 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1s
        Case "***": 橋脚_沓座 = D11
        Case Else:  橋脚_沓座 = D1s
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function

'┌─────────────────────────────────────────────┐
'│■ 橋脚 梁              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_梁_No(梁符号$)
     梁No = 0: ' 0  部材名が無い
     For i = 1 To 梁_No_Max: ' If 梁符号$ = 梁名(i) Then 梁No = i: Exit For
         Next i
     If Trim(梁符号$) = "" Then 梁No = 0: ' 必要
     橋脚_梁_No = 梁No
     If 梁No > 0 Then Call 橋脚_梁_Get(梁No)
     End Function
Sub 橋脚_梁_Get(BNo)
     If 橋脚_Data_dsk = "" Then Call 土木_Dsk
     Open 橋脚_Data_dsk + "土木_橋脚_梁.RAN" For Random As #31 Len = Len(土木橋脚_梁)
     Get #31, BNo, 土木橋脚_梁
     Close #31
     End Sub
Function 橋脚_梁(項目$)
     Dim D1s As String, 部品Nos As String, 部品noi As Integer, Loopi As Integer, Loop_D As Single
     D1s = "***": D11 = 0:
     With 土木橋脚_梁
                     .BXL2 = .BXL - 土木橋脚_柱.BXL: .BXR2 = .BXR - 土木橋脚_柱.BXR
                     .BYL2 = .BYL - 土木橋脚_柱.BYL: .BYR2 = .BYR - 土木橋脚_柱.BYR
        
        Select Case 項目$
        Case "符号":       D1s = Trim(.符号):   '   梁1
        Case "NO":         D11 = .No: ' 梁 No
        Case "BX":         D1s = F_RAN(.Da_BX): Call 橋脚_躯体_ck("*", D1s)
        Case "BY":         D1s = F_RAN(.Da_BY): Call 橋脚_躯体_ck("*", D1s)
        Case "勾配":       D1s = F_RAN(.Da_勾配): Call 橋脚_躯体_ck("*", D1s)
        Case "R":          D1s = F_RAN(.Da_r): Call 橋脚_躯体_ck("*", D1s)
        Case "R2":         D1s = F_RAN(.Da_r2): Call 橋脚_躯体_ck("*", D1s)
        Case "H":          D1s = F_RAN(.Da_H): Call 橋脚_躯体_ck("*", D1s)
        Case "ｽﾄｯﾊﾟ位置":  D1s = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1s)
        Case "沓座位置":   D1s = F_RAN(.沓座位置): Call 橋脚_沓座位置_ck(D1s)
        
        Case "Loop数":       D11 = 梁_起点Loop筋_Ty数i:  '1  2  3
        
        Case "起点Loop1", "起点Loop2", "起点Loop3", "終点Loop1", "終点Loop2", "終点Loop3": ' ﾙｰﾌﾟ筋
                           
                           部品noi = Val(Right(項目$, 1))
                           Select Case Mid(項目$, 1, 1)
                           Case "起"
                                     D1s = 梁_起点Loop筋_部品s(部品noi): Loopi = 部品noi
                                     鉄筋P_Σ数 = 梁_起点Loop筋_部品数i(部品noi)
                                     Loop_r$ = "+r" + F9(梁_起点Loop筋_部品_r(部品noi))
                                     Loop_D = 梁_起点Loop筋_部品_D(部品noi) - 2 * 梁_起点Loop筋_部品_r(部品noi): If Loop_D <= 0 Then Loop_D = 0
                                     Loop_B$ = "+" + 梁_起点Loop筋_部品_Bs(部品noi)
                                     Data1$ = Mid(Loop_r$, 2) + FP1(Loop_D) + Loop_r$ + Loop_B$ + Loop_r$ + FP1(Loop_D) + Loop_r$ + Loop_B$
                                   'If Loop_D = 0 Then Data1$ = Mid(Loop_r$, 2) + FP1(Loop_D) + Loop_r$ + Loop_B$ + "+角350" + Loop_r$ + Loop_B$
                           
                           Case "終"
                                     D1s = 梁_終点Loop筋_部品s(部品noi): Loopi = 部品noi + 梁_起点Loop筋_Ty数i
                                     鉄筋P_Σ数 = 梁_終点Loop筋_部品数i(部品noi)
                                     Loop_r$ = "+r" + F9(梁_終点Loop筋_部品_r(部品noi))
                                     Loop_D = 梁_終点Loop筋_部品_D(部品noi) - 2 * 梁_終点Loop筋_部品_r(部品noi): If Loop_D <= 0 Then Loop_D = 0
                                     Loop_B$ = "+" + 梁_終点Loop筋_部品_Bs(部品noi)
                                     Data1$ = Mid(Loop_r$, 2) + FP1(Loop_D) + Loop_r$ + Loop_B$ + Loop_r$ + FP1(Loop_D) + Loop_r$ + Loop_B$
                           End Select
                                   '※ Joint_鉄筋開き = 橋脚_J鉄筋開き * 現作図_Scale を考慮
                           
                           If 鉄筋P_Σ数 > 0 Then
                           Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           
                           橋脚_J鉄筋開き_BAK = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * (鉄筋P_Σ数))
                           鉄筋_○_符号$ = "B_ _" + f0(Loopi)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(2 * (鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)))
                           鉄筋_○_符号4$ = 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(2)):  ' ﾙｰﾌﾟ筋 のみ
                           
                           表符号s = "B" + f0(Loopi)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(2)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           
                           橋脚_J鉄筋開き = 橋脚_J鉄筋開き_BAK
                           End If
                          If 鉄筋P_Σ数 = 0 Then D1s = ""
        
        Case "起点Loop1横", "起点Loop2横", "起点Loop3横", "終点Loop1横", "終点Loop2横", "終点Loop3横": ' ﾙｰﾌﾟ筋横図
                  ' 起点Loop1横
                           'Loopi = Val(Right(項目$, 2))
                           'D1s = 梁_起点Loop筋_部品s(Loopi)
                           
                           部品noi = Val(Right(項目$, 2))
                           Select Case Mid(項目$, 1, 1)
                           Case "起"
                                     D1s = 梁_起点Loop筋_部品s(部品noi): Loopi = 部品noi
                                     鉄筋P_Σ数 = 梁_起点Loop筋_部品数i(部品noi)
                                     Loop_B$ = 梁_起点Loop筋_部品_B2s(部品noi)
                           
                           Case "終"
                                     D1s = 梁_終点Loop筋_部品s(部品noi): Loopi = 部品noi + 梁_起点Loop筋_Ty数i
                                     鉄筋P_Σ数 = 梁_終点Loop筋_部品数i(部品noi)
                                     Loop_B$ = 梁_終点Loop筋_部品_B2s(部品noi)
                           End Select
                       
                       If D1s <> "" Then
                           Call 橋脚_鉄筋_ck("*", "標準", D1s): If 世er <> "" And 世誤CK > 99 Then Stop
                           Data1$ = Loop_B$: Call 橋脚_鉄筋_L_ck("標準", Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * (鉄筋P_Σ数))
                           鉄筋_○_符号$ = "B_ _" + f0(Loopi)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + F9(鉄筋P_Σ数 * 4) + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           End If
        
        Case "Loop外直筋":        '梁 Loop外直筋    内部  内部
                           D1s = 梁_Loop外直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           鉄筋_○_符号$ = "B_ _ " + f0(梁_Loop外直筋_Start_Noi)
        
        
        
        Case "Loop外直筋cut無":  ' 梁　Loop外直筋 ｶｯﾄ無し部分　　　　Loop外直筋cut無
                           D1s = 梁_Loop外直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           '* 鉄筋P_Σ数 = FP_直筋_数i("Loop外直筋", 鉄筋_pit$)
                           
                           ni = 梁_Loop外直筋_本数i - 梁起点側_Loop外直筋_cut本数i - 梁終点側_Loop外直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(ni)
                           部品Nos = f0(梁_Loop外直筋_Start_Noi)
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If ni = 0 Then D1s = ""
        
        
        
        Case "終点側Loop外直筋端部", "終点側Loop外直筋端部R", "終点側Loop外直筋端部平面"
                           D1s = 梁_Loop外直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
                           LL2 = 梁終点側_直筋_部品L(1) - (梁_BX - 梁_Loop外直筋_部品L) / 2
                           Fook1$ = "": If 梁_Loop外直筋_部品_Fooks = "Y" Then Fook1$ = "+F"
                           Select Case Right(項目$, 1)
                                Case "R":     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + Fook1$, 2)
                                Case "面":    Data1$ = Mid(Fook1$ + FP1(LL2), 2)
                                Case Else:    Data1$ = Mid(Fook1$ + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           '鉄筋P_Σ数 = FP_直筋_数i("起点側Loop外直筋端部", 鉄筋_pit$)
                           ni = 梁終点側_Loop外直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop外直筋_Start_Noi + Abs(梁終点側_Loop外直筋_部品Noi(1)))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If ni = 0 Then D1s = ""
        
        Case "起点側Loop外直筋端部", "起点側Loop外直筋端部R", "起点側Loop外直筋端部平面"
                           D1s = 梁_Loop外直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
                           LL2 = 梁起点側_直筋_部品L(1) - (梁_BX - 梁_Loop外直筋_部品L) / 2
                           Fook1$ = "": If 梁_Loop外直筋_部品_Fooks = "Y" Then Fook1$ = "+F"
                           Select Case Right(項目$, 1)
                                Case "R":     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + Fook1$, 2)
                                Case "面":    Data1$ = Mid(Fook1$ + FP1(LL2), 2)
                                Case Else:    Data1$ = Mid(Fook1$ + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           ni = 梁起点側_Loop外直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop外直筋_Start_Noi + 梁起点側_Loop外直筋_部品Noi(1))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If ni = 0 Then D1s = ""
        
        
                           
        Case "終点側Loop外直筋内部2", "終点側Loop外直筋内部3", "終点側Loop外直筋内部4", "終点側Loop外直筋内部5", "終点側Loop外直筋内部6", "終点側Loop外直筋内部7" _
                        , "終点側Loop外直筋内部平面2", "終点側Loop外直筋内部平面3", "終点側Loop外直筋内部平面4", "終点側Loop外直筋内部平面5", "終点側Loop外直筋内部平面6", "終点側Loop外直筋内部平面7"
                           D1s = 梁_Loop外直筋_部品s
                           直筋_部品i = Val(Right(項目$, 1)):
'                           If 直筋_部品i > 3 Then
'                                世er = 項目$: er (""): 世er = "": If 世誤CK > 99 Then Stop
'                                直筋_部品i = 3:  ' Err 処理
'                                End If
                           
                           LL2 = 梁終点側_直筋_部品L(直筋_部品i)
                           Select Case Mid(Right(項目$, 3), 1, 2)
                                Case "平面":   Data1$ = F9(LL2)
                                Case Else:     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           ni = 梁終点側_Loop外直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop外直筋_Start_Noi + Abs(梁終点側_Loop外直筋_部品Noi(直筋_部品i)))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If 梁終点側_直筋_部品Noi(直筋_部品i) <= 0 Then D1s = ""
                           If ni = 0 Then D1s = ""
        
        
        Case "起点側Loop外直筋内部2", "起点側Loop外直筋内部3", "起点側Loop外直筋内部4", "起点側Loop外直筋内部5", "起点側Loop外直筋内部6", "起点側Loop外直筋内部7" _
                        , "起点側Loop外直筋内部平面2", "起点側Loop外直筋内部平面3", "起点側Loop外直筋内部平面4", "起点側Loop外直筋内部平面5", "起点側Loop外直筋内部平面6", "起点側Loop外直筋内部平面7"
                           D1s = 梁_Loop外直筋_部品s:
                           直筋_部品i = Val(Right(項目$, 1)):
'                           If 直筋_部品i > 3 Then
'                                世er = 項目$: er (""): 世er = "": If 世誤CK > 99 Then Stop
'                                直筋_部品i = 3:  ' Err 処理
'                                End If
                           
                           LL2 = 梁起点側_直筋_部品L(直筋_部品i)
                           Select Case Mid(Right(項目$, 3), 1, 2)
                                Case "平面":   Data1$ = F9(LL2)
                                Case Else:     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           ni = 梁起点側_Loop外直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop外直筋_Start_Noi + Abs(梁起点側_Loop外直筋_部品Noi(直筋_部品i)))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If 梁起点側_直筋_部品Noi(直筋_部品i) <= 0 Then D1s = ""
                           If ni = 0 Then D1s = ""
        
        Case "Loop内直筋":        '梁 Loop内直筋
                           D1s = 梁_Loop内直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           鉄筋_○_符号$ = "B_ _" + f0(梁_Loop内直筋_Start_Noi + 1)
        
        
        
        Case "Loop内直筋cut無":  ' 梁　Loop内直筋 ｶｯﾄ無し部分　　　　Loop内直筋cut無
                           D1s = 梁_Loop内直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           '* 鉄筋P_Σ数 = FP_直筋_数i("Loop内直筋", 鉄筋_pit$)
                           
                           ni = 梁_Loop内直筋_本数i - 梁起点側_Loop内直筋_cut本数i - 梁終点側_Loop内直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(ni)
                           部品Nos = f0(梁_Loop内直筋_Start_Noi)
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If ni = 0 Then D1s = ""
        
        
        
        Case "終点側Loop内直筋端部", "終点側Loop内直筋端部R", "終点側Loop内直筋端部平面":    '  OLD B7
                           D1s = 梁_Loop内直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
                           LL2 = 梁終点側_直筋_部品L(1) - (梁_BX - 梁_Loop内直筋_部品L) / 2
                           Fook1$ = "": If 梁_Loop内直筋_部品_Fooks = "Y" Then Fook1$ = "+F"
                           Select Case Right(項目$, 1)
                                Case "R":     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + Fook1$, 2)
                                Case "面":    Data1$ = Mid(Fook1$ + FP1(LL2), 2)
                                Case Else:    Data1$ = Mid(Fook1$ + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           ni = 梁終点側_Loop内直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop内直筋_Start_Noi + Abs(梁終点側_Loop内直筋_部品Noi(1)))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If ni = 0 Then D1s = ""
        
        Case "起点側Loop内直筋端部", "起点側Loop内直筋端部R", "起点側Loop内直筋端部平面":  '  OLD B7
                           D1s = 梁_Loop内直筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
        
                           LL2 = 梁起点側_直筋_部品L(1) - (梁_BX - 梁_Loop内直筋_部品L) / 2
                           Fook1$ = "": If 梁_Loop内直筋_部品_Fooks = "Y" Then Fook1$ = "+F"
                           Select Case Right(項目$, 1)
                                Case "R":     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + Fook1$, 2)
                                Case "面":    Data1$ = Mid(Fook1$ + FP1(LL2), 2)
                                Case Else:    Data1$ = Mid(Fook1$ + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           ni = 梁起点側_Loop内直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop内直筋_Start_Noi + 梁起点側_Loop内直筋_部品Noi(1))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If ni = 0 Then D1s = ""
        
        
                           
        Case "終点側Loop内直筋内部2", "終点側Loop内直筋内部3", "終点側Loop内直筋内部4", "終点側Loop内直筋内部5", "終点側Loop内直筋内部6", "終点側Loop内直筋内部7" _
                           , "終点側Loop内直筋内部平面2", "終点側Loop内直筋内部平面3", "終点側Loop内直筋内部平面4", "終点側Loop内直筋内部平面5", "終点側Loop内直筋内部平面6", "終点側Loop内直筋内部平面7":  '  OLD B8
                           D1s = 梁_Loop内直筋_部品s
                           直筋_部品i = Val(Right(項目$, 1)): LL2 = 梁終点側_直筋_部品L(直筋_部品i)
                           Select Case Mid(Right(項目$, 2), 1, 1)
                                Case "面":     Data1$ = F9(LL2)
                                Case Else:     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           ni = 梁終点側_Loop内直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop内直筋_Start_Noi + Abs(梁終点側_Loop内直筋_部品Noi(直筋_部品i)))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           表鉄筋Marki = 1
                           If 梁終点側_直筋_部品Noi(直筋_部品i) <= 0 Then D1s = ""
                           If ni = 0 Then D1s = ""
        
        Case "起点側Loop内直筋内部2", "起点側Loop内直筋内部3", "起点側Loop内直筋内部4", "起点側Loop内直筋内部5", "起点側Loop内直筋内部6", "起点側Loop内直筋内部7" _
                          , "起点側Loop内直筋内部平面2", "起点側Loop内直筋内部平面3", "起点側Loop内直筋内部平面4", "起点側Loop内直筋内部平面5", "起点側Loop内直筋内部平面6", "起点側Loop内直筋内部平面7": '  OLD B8
                           D1s = 梁_Loop内直筋_部品s:
                           直筋_部品i = Val(Right(項目$, 1)):  LL2 = 梁起点側_直筋_部品L(直筋_部品i)
                           Select Case Mid(Right(項目$, 2), 1, 1)
                                Case "面":     Data1$ = F9(LL2)
                                Case Else:     Data1$ = Mid(FP1(直筋_折曲げ) + FP1(LL2) + FP1(直筋_折曲げ), 2)
                                End Select
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           '鉄筋P_Σ数 = FP_直筋_数i("起点側Loop内直筋内部2", 鉄筋_pit$)
                           ni = 梁起点側_Loop内直筋_cut本数i
                           Σ数$ = F9(ni): Σ数2$ = F9(2 * ni)
                           部品Nos = f0(梁_Loop内直筋_Start_Noi + Abs(梁起点側_Loop内直筋_部品Noi(直筋_部品i)))
                           鉄筋_○_符号$ = "B_ _" + 部品Nos
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + 部品Nos
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                          表鉄筋Marki = 1
                           If 梁起点側_直筋_部品Noi(直筋_部品i) <= 0 Then D1s = ""
                           If ni = 0 Then D1s = ""
  
                           
        
        Case "下端筋", "下端筋R":       '梁  Old  B3=D25_@3136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                            '  下端筋=D22_K95_Z-76_B3160_H1848_@130+5x180.6+3x211.3+203+130_SD390
                           D1s = 梁_下端筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           
                           
                           L1 = 土木橋脚_梁.BXL - 土木橋脚_柱.BXL: L2 = Val(鉄筋_B$)
                           h1 = 土木橋脚_梁.h1: h2 = 土木橋脚_梁.h2
                           角度1 = Calu角度(0, 0, L1, h1)
                           
                           Select Case 項目$
                           Case "下端筋"
                                 Select Case h1
                                 Case 0:     Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$
                                 Case Else: Data1$ = 鉄筋_H$ + "+角" + F9(90 - 角度1) + "+" + 鉄筋_B$
                                 End Select
                           
                           Case "下端筋R"
                                 Select Case h1
                                 Case 0:     Data1$ = 鉄筋_H$ + "+角270+" + 鉄筋_B$
                                 Case Else: Data1$ = 鉄筋_H$ + "+角" + F9(360 - 90 + 角度1) + "+" + 鉄筋_B$
                                 End Select
                           
                           End Select
                  '       If 項目$ = "下端筋R" Then 鉄筋_H$ "+角" + F9(90 - 角度1) + "+" + 鉄筋_B$
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
        
                           Σ数$ = F9(梁_下端筋_片側本数i): Σ数2$ = F9(2 * 梁_下端筋_片側本数i)
                           鉄筋_○_符号$ = "B_ _" + f0(梁_下端筋_Start_Noi)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + f0(梁_下端筋_Start_Noi)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                          表鉄筋Marki = 1
        
        
'        Case "下端筋R":        '梁  下鉄筋(あご部分)  B3=D25_@3136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
'                           D1s = 梁_下端筋_部品s:    Call 橋脚_鉄筋_ck("*","標準", D1s)
'                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck("標準",Data1$)
'                           Select Case 鉄筋L_Data数
'                           Case 2: あご筋_Y1 = 鉄筋L_L(1): BD_D2 = 鉄筋L_L(2): BD_D3 = 0
'                           Case 3: あご筋_Y1 = 鉄筋L_L(1): BD_D2 = 鉄筋L_L(2): BD_D3 = 鉄筋L_L(3)
'                           Case Else: 世er = "橋脚_梁 項目 下鉄筋(あご部分) [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
'                           End Select
'                           あご筋_LY = BD_D2 + BD_D3
'
'                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck("標準",Data1$)
'                           Select Case 鉄筋L_Data数
'                           Case 2: あご筋_X1 = 鉄筋L_L(1): BD_B2 = 鉄筋L_L(2)
'                           Case Else: 世er = "橋脚_梁 項目 下鉄筋(あご部分) [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
'                           End Select
'                           あご筋_LX = BD_B2
'
'                           あご筋_X2 = .BXR - あご筋_X1: あご筋_Y2 = あご筋_Y1 + BD_D2
'                           あご筋_r = 鉄筋_r
'                           角度1 = Calu角度(0, 0, BD_B2, BD_D3):  角度2 = (90 + 角度1) / 2:
'                           あご筋_角度 = 角度1
'                           Select Case BD_D3
'                           Case 0:      C_Y0 = 0: X3 = 0: X4 = 0
'                           Case Else:   'AAA1 = BD_D3 / BD_B2:  LLXX = 0
'                                        X1 = -BD_B2: Y1 = -BD_D3: Call CALUAB(X1, Y1, 0, 0, あご筋_r, AA, BB)
'                                        C_X0 = -あご筋_r:  C_Y0 = -AA * あご筋_r + BB
'                                        Call CALUP垂点(0, 0, X1, Y1, C_X0, C_Y0, X4, Y4):
'                           End Select
'                           LL2 = Sqr((BD_B2 + X4) ^ 2 + (BD_D3 + Y4) ^ 2)
'
'                           'Data1$ = F9(LL2) + "+r" + F9(あご筋_r) + "度" + F9(90 - 角度1) + FP1(BD_D2 - C_Y0)
'                           Data1$ = F9(BD_D2 - C_Y0) + "+r" + F9(あご筋_r) + "度" + F9(-90 + 角度1) + FP1(LL2)
'                           If あご筋_r <= 0 Then Data1$ = F9(BD_D2 - C_Y0) + "+角" + F9(-90 + 角度1) + FP1(LL2)
'
'                           Call 橋脚_鉄筋_L_ck("標準",Data1$)
'
'                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
'                           鉄筋_○_符号$ = "B_ _3-1"
'                           鉄筋_○_符号1$ = 鉄筋_径$
'                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
'                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
        Case "水平補強筋", "水平補強筋2":     ' B4-1   梁 側鉄筋
                           部品i = Val(Right(項目$, 1))
                           D1s = 梁_水平補強筋_部品s:    Call 橋脚_鉄筋_ck("*", "標準", D1s)
                           
                           B側r$ = "": If 梁_水平補強筋_ri > 0 Then B側r$ = "+r" + F9(梁_水平補強筋_ri)
                           Select Case 部品i
                           Case 2:     鉄筋P_Σ数 = 梁_水平補強筋_部品2数i: 部品i = 梁_水平補強筋_Start_Noi + 1
                                       鉄筋_B$ = F橋脚s(梁_水平補強筋_Cut_Bmin) + "～" + F橋脚s(梁_水平補強筋_Cut_Bmax)
                           Case Else
                                       鉄筋P_Σ数 = 梁_水平補強筋_部品1数i: 部品i = 梁_水平補強筋_Start_Noi
                                       鉄筋_B$ = F橋脚s(梁_水平補強筋_Bi)
                           End Select
                           
'
                           
                           Data1$ = 鉄筋_B$ + B側r$ + FP1(梁_水平補強筋_Di) + B側r$ + "+" + 鉄筋_B$
                           
                           
                           Call 橋脚_鉄筋_L_ck("標準", Data1$)
                           '鉄筋P_Σ数 = 鉄筋P_Σ数2  Err
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _" + f0(部品i)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + f0(部品i)
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数2: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                          表鉄筋Marki = 1
        
                           If 項目$ = "水平補強筋2" And .h1 = 0 Then D1s = ""
                      
        
        
        
        '**************************************************************
        Case "下St", "下StR":      '梁 下ｽﾀｰﾗｯﾌﾟ  下St=D22_K98_B1618_H2292+F_r160        ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           D1s = 梁_下St_部品s:   Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                           'BS_B = 梁_下St_Bi: BS_H = 梁_下St_Hi
                           
                           鉄筋_B$ = F9(梁_下St_Bi)
                           鉄筋_H$ = F9(梁_下St_Hi)
                           Data1$ = "F+" + 鉄筋_H$ + "+" + 鉄筋_B$ + "+" + 鉄筋_H$ + "+F"
                           Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
                           鉄筋P_Σ数 = 2 * 梁_St_位置数i ' P_Spit数("B01")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "b_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "b2"
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                          表鉄筋Marki = 1
                           
        
        
        Case "上St1", "上St2", "上St3", "上St4", "上St5", "上St6", "*上St1", "*上St2", "*上St3", "*上St4", "*上St5", "*上St6"
                           '梁 上端 両側  ｽﾀｰﾗｯﾌﾟ   B02=D22_K98_B1618_HF+440              ' 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           ' * は 短断面図専用
                           D1s = 梁_上St起点側_部品s:    Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                           部品noi = Val(Right(項目$, 1))
                           鉄筋_H$ = "+" + F橋脚s(梁_上St_Ty_Hmin(部品noi)) + "～" + F橋脚s(梁_上St_Ty_Hmax(部品noi))
                                '*If 梁_上St_Ty_Hmin(部品noi) = 梁_上St_Ty_Hmax(部品noi) Then 鉄筋_H$ = "+" + F橋脚s(梁_上St_Ty_Hmin(部品noi))
                                If 梁_上St_Ty_Hmin(部品noi) = 0 Then 鉄筋_H$ = "+" + F橋脚s(梁_上St_Hi)
                                
                                If Mid(項目$, 1, 1) = "*" Then 鉄筋_H$ = "+" + F橋脚s(梁_上St_Hi)
                           
                           Data1$ = "F" + 鉄筋_H$ + FP1(梁_上St_部品L(部品noi)) + 鉄筋_H$ + "+F"
                           
                           Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
                           鉄筋P_Σ数 = 2 * 梁_上St_個数i(部品noi) ' P_Spit数("B02")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "b_ _" + f0(梁_上St_部品Noi(部品noi))
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "b" + f0(梁_上St_部品Noi(部品noi))
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                          表鉄筋Marki = 1
                           If InStr(鉄筋_H$, "～") > 0 Then 表鉄筋適用s = "(平均長)":
                           If 鉄筋P_Σ数 = 0 Then D1s = ""
        
        
        Case "幅止筋1", "幅止筋2", "幅止筋3", "幅止筋4", "幅止筋5", "幅止筋6":   ' 柱内 幅止筋
                           D1s = 梁_幅止筋_部品s:    Call 橋脚_鉄筋_ck("*", "帯筋", D1s)
                           部品noi = Val(Mid(項目$, 4))
                        'If 部品Noi > 4 Then Stop
                           BS_D = Val(鉄筋_H$)
                           Data1$ = F9(BS_D) + FP1(梁_幅止筋_部品L(部品noi)) + FP1(BS_D)
                           Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
        
                           鉄筋P_Σ数 = 梁_幅止筋_個数i(部品noi)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _" + f0(梁_幅止筋_Start_Noi - 1 + 梁_幅止筋_部品Noi(部品noi))
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号s = "B" + f0(梁_幅止筋_Start_Noi - 1 + 梁_幅止筋_部品Noi(部品noi))
                           表鉄筋径s = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                          表鉄筋Marki = 1
                           If 鉄筋P_Σ数 = 0 Then D1s = ""
        
        Case "Spit":       'Spit=500+13x150+23x200+13x150
                           D1s = FP_Pit_反転s(梁_St_Pits) + "+" + 梁_幅止筋_Pits + "+" + 梁_St_Pits:
                           Call 橋脚_鉄筋_Pit_ck(D1s)
        
        Case Else: 世er = "System 橋脚_梁 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1s
        Case "***": 橋脚_梁 = D11
        Case Else:  橋脚_梁 = D1s
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function

Function P_Spit数(項目$)
     'ｽﾀｰﾗｯﾌﾟの個数  下St,B02,B03,B04  B5
      D1$ = F_RAN(土木橋脚_梁.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
      D1$ = 梁_St_Pits: Call 橋脚_鉄筋_Pit_ck(D1$)
        梁位置数 = 0: 梁Stoper位置数 = 0
        柱位置数 = 0: 柱Stoper位置数 = 0
        
        For ii = 1 To 鉄筋P_Σ数
           X00 = -土木橋脚_梁.BXL + 鉄筋P_位置(ii)
           Select Case X00
           Case Is < -土木橋脚_柱.BXL:  梁位置数 = 梁位置数 + 1
                             If FP_Stoper_X位置i(X00) > 0 Then 梁Stoper位置数 = 梁Stoper位置数 + 1
           
           Case Is <= 土木橋脚_柱.BXR:   柱位置数 = 柱位置数 + 1
                             If FP_Stoper_X位置i(X00) > 0 Then 柱Stoper位置数 = 柱Stoper位置数 + 1
           
           Case Else:
           End Select
           Next ii

      Select Case 項目$
      Case "B01":   P_Spit数 = 2 * 梁位置数
      Case "B02":   P_Spit数 = 2 * (梁位置数 - 梁Stoper位置数)
      Case "B03":   P_Spit数 = 2 * 梁Stoper位置数
      Case "B04":   P_Spit数 = 2 * 梁Stoper位置数

      Case "幅止筋1":   P_Spit数 = (柱位置数 - 柱Stoper位置数)
      Case "幅止筋2":   P_Spit数 = 柱Stoper位置数
      Case "幅止筋3":   P_Spit数 = 柱Stoper位置数

      Case Else: P_Spit数 = 0
      End Select

    End Function

Function FP_直筋_数i(項目$, Bpit$) As Integer
     ' Loop内 直筋_数i
     ' Loop内直筋端部, Loop内直筋内部 の個数
      D1$ = F_RAN(土木橋脚_梁.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
      D1$ = Bpit$: Call 橋脚_鉄筋_Pit_ck(D1$)
        B2_1数 = 0: B2_2数 = 0
        
        For ii = 1 To 鉄筋P_Σ数
           Y00 = -土木橋脚_梁.BYL + 鉄筋P_位置(ii)
           If FP_Stoper_Y位置i(Y00) > 0 Then B2_2数 = B2_2数 + 1
           Next ii

      Select Case 項目$
      Case "Loop内直筋":   FP_直筋_数i = 鉄筋P_Σ数 - B2_2数
      Case "終点側Loop内直筋端部":   FP_直筋_数i = 2 * B2_2数
      Case "終点側Loop内直筋内部2":
                     NN1 = (Stoper位置_Data数 / 2) - 1
                     FP_直筋_数i = B2_2数 * NN1
      Case "起点側Loop内直筋端部":   FP_直筋_数i = 2 * B2_2数
      Case "起点側Loop内直筋内部2":
                     NN1 = (Stoper位置_Data数 / 2) - 1
                     FP_直筋_数i = B2_2数 * NN1
      Case Else: FP_直筋_数i = 0: er ("*System  "): Stop
      End Select

    End Function

Function P_B42_数()
    '[[[   側鉄筋  ]]]
       P_B42_数 = 0
          '    D1$ = 橋脚_梁("水平補強筋")
               
               横被り11 = 鉄筋_SK位置
               左梁角度11 = Calu角度(0, 0, 土木橋脚_梁.BXL2, 土木橋脚_梁.h1)
               Y_CK11 = -土木橋脚_梁.H + 土木橋脚_梁.h1 + 横被り11 / Dcos(左梁角度11)
               'AA1 = 左梁勾配: BB1 = Y_CK
              For ii = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(ii)
                       If Y1 < Y_CK11 Then P_B42_数 = P_B42_数 + 1
                       Next ii
    

      End Function



'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　土木橋脚       作図　Data Control 　　　  　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　   New　2003.9.1　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛

Public Sub 土木_橋脚_図Data_Read(Temp$)

          Dim 項目3s As String

     EMS0 = "土木橋脚 図Data Read": EMS1 = "": EMS2 = ""
       
       
             If 杭_No_Max = 0 Then 世er = "杭ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 基礎_No_Max = 0 Then 世er = "基礎ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 柱_No_Max = 0 Then 世er = "柱ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If Stoper_Ty数i = 0 Then 世er = "ｽﾄｯﾊﾟ ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 沓座_Ty数i = 0 Then 世er = "沓座ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 梁_No_Max = 0 Then 世er = "梁ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     
        図_杭_No = 1: 図_基礎_No = 1: 図_柱_No = 1:  図_梁_No = 1
       
        橋脚図_基本設定数 = 0
     
     Open Temp$ For Input As #2
       
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
     
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
        Select Case UCase$(項目2s$)
        Case "/END": Exit Do
        Case "**": er (項目3s): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        
        Case "/基本設定":    Call 土木_橋脚_基本設定(Da$): INP$ = "N"
        Case "/用紙":        Call 土木_橋脚_用紙(Da$):
        Case "/枠":          Call 土木_橋脚_枠(Da$): INP$ = "N"
        
        Case "/原点表示":              橋脚原点表示$ = "Y"
        Case "/LAYER":
        
        Case "/DXF":         Call 土木_橋脚_DXF(Da$): INP$ = "N"
     
        Case Else: 世er = "ｺﾏﾝﾄﾞ位置でﾞ(" + Da$ + ")は 理解できません":  If 世誤CK > 99 Then Stop
        End Select
        世er = "" ''''''''''''''05/05/08  nagase
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
     Loop
    
     Close #2
    
    
     End Sub


Sub 土木_橋脚_用紙(Da$)
     Line Input #2, Da$
     End Sub
'┌─────────────────────────────────────────────┐
'│■ 土木_橋脚_枠  Resd     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_枠(Da$)
     図面枠Data_max = 0
     Do: If EOF(2) Then Da$ = "/END": Exit Do
          Line Input #2, Da$:     If Mid(Da$, 1, 1) <> "[" Then Exit Do
          
          図面枠Data_max = 図面枠Data_max + 1
          図面枠Data$(図面枠Data_max) = Da$
          If 図面枠Data_max > 1000 Then 世er = "図面枠 Data数 >1000 ": If 世誤CK > 99 Then Stop: Exit Do Else Exit Do
          Loop
     End Sub
'┌─────────────────────────────────────────────┐
'│■ 土木_橋脚_枠作図       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_枠作図()
    Dim ii As Integer, ni1 As Integer, ni2 As Integer, ni3 As Integer, ni4 As Integer, ni5 As Integer
    Dim 図名称s As String
    
    図名称s = 図_名称$
  '  図名称s = Project_Titles + " " + 図_名称$

     If 図面枠Data_max = 0 Then Exit Sub
     'Call PROTER初期値: Call Dレイヤ番号(レイヤ番号)
     For ii = 1 To 図面枠Data_max
         Da$ = 図面枠Data$(ii)
         ni = InStr(Da$, "?")
         If ni > 0 Then
             Do
             ni1 = InStr(Da$, "?図名?"):   If ni1 > 0 Then Da$ = Mid$(Da$, 1, ni1 - 1) + 図名称s + Mid$(Da$, ni1 + 4)
             ni2 = InStr(Da$, "?図番?"):   If ni2 > 0 Then Da$ = Mid$(Da$, 1, ni2 - 1) + 図番号$ + Mid$(Da$, ni2 + 4)
             ni3 = InStr(Da$, "?縮尺?"):   If ni3 > 0 Then Da$ = Mid$(Da$, 1, ni3 - 1) + 縮尺$ + Mid$(Da$, ni3 + 4)
             ni4 = InStr(Da$, "?契約番号?"):   If ni4 > 0 Then Da$ = Mid$(Da$, 1, ni4 - 1) + Project_契約番号s + Mid$(Da$, ni4 + 6)
             ni5 = InStr(Da$, "?PROJECT?"):    If ni5 > 0 Then Da$ = Mid$(Da$, 1, ni5 - 1) + Project_Titles + Mid$(Da$, ni5 + 9)
             If ni1 + ni2 + ni3 + ni4 = 0 Then Exit Do
             Loop
             End If
         Print #60, Da$
         Next ii

     End Sub



'┌─────────────────────────────────────────────┐
'│■ 土木_橋脚_基本設定     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_基本設定(Da$)
   
         Dim 項目3s As String

    EMS1 = "作図Data  基本設定"
   
     Do
                 Line Input #2, Da$
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
             
             Select Case UCase$(項目s$)
             Case "/", ".": Exit Do
             Case "**": er (項目3s): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             'Case "寸端部=":   '  Print #60, "[基本設定:" + Da$ + "]"
             'Case "寸法Msize":  '   Print #60, "[基本設定:" + Da$ + "]"
             Case "用紙=":
                       Select Case 項目3s
                       Case "A3": 土木_橋脚_用紙size$ = "A3"
                       Case "A2": 土木_橋脚_用紙size$ = "A2"
                       Case "A1": 土木_橋脚_用紙size$ = "A1"
                       Case Else: 世er = "  用紙sizeでﾞ(" + Da$ + ")は 在りません": If 世誤CK > 99 Then Stop
                       End Select
             
             
             Case Else:  橋脚図_基本設定数 = 橋脚図_基本設定数 + 1
                         橋脚図_基本設定$(橋脚図_基本設定数) = Da$
             
             End Select
             
             If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
             Loop
    
    
    End Sub


'┌─────────────────────────────────────────────┐
'│■ 土木_橋脚_Dxf  作図    　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_DXF(Da$)
          Dim 項目3s As String

     元原点X = 0: 元原点Y = 0
     Dxf_No = Dxf_No + 1
     橋脚_図形項目$ = ""
     
     EMS1 = "作図Data  Dxf no=" + F9(Dxf_No) + "  "
     
     Line Input #2, 土木_橋脚_DXF_F名$: EMS1 = "作図Data  " + 土木_橋脚_DXF_F名$ + "  "

                
                Select Case 土木_橋脚_DXF_F名$
                '1梁   2支承   3躯体   4基礎   5杭   6材料表
                     Case "梁":      土木_橋脚_DXF_F名$ = 図_橋脚_名称s(1) + ".Dxf"
                     Case "支承":    土木_橋脚_DXF_F名$ = 図_橋脚_名称s(2) + ".Dxf"
                     Case "躯体":    土木_橋脚_DXF_F名$ = 図_橋脚_名称s(3) + ".Dxf"
                     Case "基礎":    土木_橋脚_DXF_F名$ = 図_橋脚_名称s(4) + ".Dxf"
                     Case "杭":      土木_橋脚_DXF_F名$ = 図_橋脚_名称s(5) + ".Dxf"
                     Case "材料表":  土木_橋脚_DXF_F名$ = 図_橋脚_名称s(6) + ".Dxf"
                     Case Else: 世er = 土木_橋脚_DXF_F名$ + "がおかしい": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                     End Select
                
                
                
                Call 図名入力(図_名称$, 縮尺$, 図基本_Scale, 図番号$): If 世er <> "" Then 世er = 図_名称$ + 世er: er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                EMS1 = EMS1 + 図_名称$
                
                
                
                
                Call 図_File_名(土木_橋脚_DXF_F名$, Input_F$, Output_F$)
                変換type$ = "Dxf": Data_Type$ = "Ploter": 用紙size$ = "A1"
                Call 図_File_Start(Input_F$, 変換type$, Data_Type$, 用紙size$, 図基本_Scale, 橋脚_LAYER_N, 橋脚_layer$())
                現作図_Scale = 図基本_Scale


                For ii = 1 To 橋脚図_基本設定数:    Print #60, "[基本設定:" + 橋脚図_基本設定(ii) + "]":             Next ii
                
                
                Print #60, "[ﾚ:図枠]"
                
                Call 土木_橋脚_枠作図
                
                Print #60, "[Msize寸法:" + FD1(図_寸法_Msize) + "]"
                Print #60, "[色寸法:空]"
                Print #60, "[ﾚ寸法:寸法線]"
                Print #60, "[ﾚ:" + 橋脚_layer$(13) + "]"

     Do
                If INP$ <> "N" Then Line Input #2, Da$
                INP$ = ""
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
             Select Case 項目s$
             Case "/": Exit Do
             Case "**": er (項目3s): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             
             
             
             Case "原点=":        Call Ddata(",", 項目3s, Ds$(), Di(), ni)
                                  If ni <> 2 Then 世er = " 原点=X0,Y0 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                  Select Case Mid(Ds$(1), 1, 1)
                                      Case "+": 原点X = 元原点X + Val(Mid(Ds$(1), 2))
                                      Case Else: 原点X = Di(1)
                                      End Select
                                  Select Case Mid(Ds$(2), 1, 1)
                                      Case "+": 原点Y = 元原点Y + Val(Mid(Ds$(2), 2))
                                      Case Else: 原点Y = Di(2)
                                      End Select
                                  
                                  Call 図_原点(原点X, 原点Y)
                                  現作図_Scale = 図基本_Scale
             
             Case "S=", "s=":     Print #60, "[Scaleｻﾌﾞ:" + Mid(項目3s, 3) + "]"
                                  現作図_Scale = Val(Mid(項目3s, 3))
                                    If 現作図_Scale <= 0 Then 世er = " S=1/___ でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                    '       Case "Scaleﾘｾｯﾄ":   Sub_図_Scale = ZU_Scale

             Case "図形項目=":    橋脚_図形項目$ = 項目3s
                                  Select Case 橋脚_図形項目$
                                  Case "杭", "基礎", "躯体", "支承", "梁", "材料表":
                                  Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                  End Select
        
             Case ".":      Call 土木_橋脚_作図(橋脚_図形項目$, Da$)
        
             
             '[[[ 基本設定 ]]]
             Case "寸法端部=":     Print #60, "[基本設定:" + Da$ + "]"
             Case "寸法Msize=":     Print #60, "[基本設定:" + Da$ + "]"
             Case Else: 世er = "DXF ｺﾏﾝﾄﾞ位置でﾞ(" + Da$ + ")は 理解できません":   If 世誤CK > 99 Then Stop
             End Select
     
             If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     
             Loop

     Close #60: ' Call 図_File_Start で　OPEN
     Call UXF_変換(Input_F$, Output_F$): ' Uxf ---> Dxf
     
     
     End Sub



'┌─────────────────────────────────────────────┐
'│■ 土木_橋脚_作図(Da$)    　　##### 　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_作図(橋脚_図形項目$, Da$)
     
     
     Dim ni As Integer
     格項目$ = Mid(Da$, 2)
     EMS2 = "作図  [" + 橋脚_図形項目$ + "]  " + 格項目$
     
     
           Call 橋脚_柱_Get(図_柱_No)
           Call 橋脚_梁_Get(図_梁_No)
     
     
      'Print #60, "[Msize:2.5]"
      Print #60, "[色:白]\[con:]"
     
     Select Case 橋脚_図形項目$
     Case "杭"
                   Select Case 格項目$
                   Case "*":                           元原点X = 原点X: 元原点Y = 原点Y
                   Case "配筋図":           Call SP_杭_長断面_配筋図_作図
                   Case "K1", "K2", "K3", "K4", "K5", "K6":        Call SP_杭_主筋_作図(格項目$)
                   Case "断面1", "断面2", "断面3", "断面4", "断面5", "断面6", "断面7":      Call SP_杭_断面_作図(格項目$)
                   
                   Case "配筋図1", "配筋図2", "配筋図3", "配筋図4", "配筋図5", "配筋図6", "配筋図7": Call SP_杭_断面配筋図_作図(格項目$)
                   Case "断面b-b":          Call P_杭_断面B
                   Case "断面b-b配筋図":    Call P_杭_断面B配筋図
                   Case "組立筋":           Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_杭_Hoop_作図("組立筋")
                   Case "Hp底":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_杭_Hp底_作図:
                   Case "Hoop1", "Hoop2", "Hoop3", "Hoop4", "Hoop5", "Hoop6", "Hoop7", "Hoop8":
                                           Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_杭_Hoop_作図(格項目$)
                   Case "帯鉄筋継手詳細図": Call P_杭_帯鉄筋継手詳細図
                   Case "ｽﾍﾟｰｻｰ詳細図":     Call P_杭_スペーサー詳細図
                   Case "かぶり詳細図":     Call P_杭_かぶり詳細図
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "基礎"
                   Select Case 格項目$
                   Case "*":                           元原点X = 原点X: 元原点Y = 原点Y
                   Case "配筋図":           Call SP_基礎_配筋図_作図
                   Case "断面a-a":          Call SP_基礎_断面A_作図
                   Case "断面b-b":          Call SP_基礎_断面B_作図
                   Case "FY1":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F1
                   Case "FY2":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F2
                   Case "FY3":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F3
                   
                   Case "St線路方向", "St直角方向":      Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_基礎_St_作図(格項目$)   'Call P_基礎_St線路方向
                   Case "FX1":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F11
                   Case "FX2":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F12
                   Case "FX3":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F13
                   Case "FX4":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F14
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "支承"
                   Select Case 格項目$
                   Case "*":                           元原点X = 原点X: 元原点Y = 原点Y
                   Case "沓座平面":         Call SP_沓座平面_補強配筋図
                   Case "Stoper平面":       Call SP_Stoper平面_補強配筋図
                   Case "沓座断面":         Call SP_沓座断面_補強配筋図
                   Case "起点Stoper断面":   Call SP_Stoper断面_補強配筋図("D")
                   Case "終点Stoper断面":   Call SP_Stoper断面_補強配筋図("U")
                                          ' Call SP_Stoper断面_補強配筋図("DU")
                   
                   Case "無収縮ﾓﾙﾀﾙ詳細図": Call P_沓座_無収縮モルタル詳細図  ' 次のﾊﾞｰｼﾞｮﾝ
                   Case "断面B-C":          Call 沓座_断面BC
                   Case "断面F-G":          Call P_沓座_断面FG
                   Case "S1", "S2", "S3", "S4":       Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_沓座_S(格項目$)
                   
                   
                   Case "H1", "H2", "H3", "H4", "H5", "H6":          Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_Stoper_H(格項目$)
                   Case "連結筋":                     Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_沓座_連結筋
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "躯体": ' er (格項目$)
                   Select Case 格項目$
                   Case "*":                           元原点X = 原点X: 元原点Y = 原点Y
                   Case "立断面X":          Call SP_柱_立断面_X
                   Case "立断面Y":          Call SP_柱_立断面_Y
                   Case "柱頭平断面":       Call SP_柱頭_平断面:
                   Case "平断面":           Call SP_柱_平断面:
                   Case "平断面鉄筋配筋図":          Call SP_柱_平断面鉄筋配筋図:
                   Case "C1", "C2", "C3", "C4", "C5", "C6", "C7", "C8"
                                            Print #60, "[色:黄]\[ﾚ:鉄筋加工図]": Call SP_柱_主筋作図(格項目$)

                   Case "CK":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]": Call P_柱_CK:

                   Case "外HpX":           Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_柱_外Hp_部品作図_X
                   Case "外HpY":           Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_柱_外Hp_部品作図_Y

                   Case "内HpX1", "内HpX2", "内HpX3", "内HpX4", "内HpX5", "内HpX6", "内HpX7":
                                            Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_柱_内Hp_部品作図_X(格項目$)

                   Case "内HpY1", "内HpY2", "内HpY3", "内HpY4", "内HpY5", "内HpY6", "内HpY7", "内HpY8", "内HpY9":
                                            Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_柱_内Hp_部品作図_Y(格項目$)

     ' 柱組立筋 Begin
                   Case "組立筋":          Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_柱_組立筋_部品作図
     ' 柱組立筋 End

                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "梁"
                   
                   Select Case 格項目$
                   Case "*":                           元原点X = 原点X: 元原点Y = 原点Y
                   Case "立長断面":                    Call SP_梁_立長断面_作図
                   Case "平断面":                      Call SP_梁_平断面_作図
                   Case "断面C-C":             'Err    Call P_梁_断面C
                   Case "立短断面a", "立短断面b", "立短断面c", "立短断面d":      Call SP_梁_立短断面_作図(格項目$)
                   Case "断面鉄筋配筋図":              Call SP_梁_立短断面_作図鉄筋配筋図
                   
                   Case "起点Loop1", "起点Loop2", "起点Loop3", "終点Loop1", "終点Loop2", "終点Loop3":
                                            Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_Loop_作図(格項目$)
                   
                   Case "Loop外直筋":       Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_直筋cut無_作図("Loop外直筋cut無")
                   Case "Loop内直筋":       Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_直筋cut無_作図("Loop内直筋cut無")
                   
                   Case "起点側Loop外直筋端部", "終点側Loop外直筋端部":  Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_直筋端部_作図(格項目$)
                   Case "起点側Loop外直筋内部2", "起点側Loop外直筋内部3", "終点側Loop外直筋内部2", "終点側Loop外直筋内部3"
                                            Print #60, "[色:黄]\[ﾚ:鉄筋加工図]": Call SP_梁_直筋内部_作図(格項目$)
                   
                   Case "起点側Loop内直筋端部", "終点側Loop内直筋端部":  Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":
                                    Call SP_梁_直筋端部_作図(格項目$)
                   
                   Case "起点側Loop内直筋内部2", "起点側Loop内直筋内部3", "終点側Loop内直筋内部2", "終点側Loop内直筋内部3"
                                            Print #60, "[色:黄]\[ﾚ:鉄筋加工図]": Call SP_梁_直筋内部_作図(格項目$)
                   
                   Case "下端筋":           Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_下端筋_作図
                   Case "水平補強筋", "水平補強筋2":      Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_水平補強筋_作図(格項目$)
                   
                   Case "幅止筋1", "幅止筋2", "幅止筋3", "幅止筋4", "幅止筋5", "幅止筋6":        Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_幅止筋_作図(格項目$)  ' B5-1
                   
                   Case "上St1", "上St2", "上St3", "上St4", "上St5", "上St6", "下St":      Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call SP_梁_St_作図(格項目$)
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     
     Case "材料表"
                      'Temp$ = TEMP_Data_dsk + "DATA1.TMP"
                   Select Case 格項目$
                   Case "*":                           元原点X = 原点X: 元原点Y = 原点Y
                   Case "表作成"
                              Call 土木_橋脚_鉄筋材料表_Write
                              Call 土木_橋脚_鉄筋材料表_Read
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
     End Select

     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃                                                                                                                                    ┃
'┃■ 杭         作図
'┃                                                                                                                                    ┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub SP_杭_長断面_配筋図_作図()
     Dim D1s As String, D2s As String, D3s As String, Moj As String
           
           ReDim Dss$(50)
           ReDim 組立筋位置(40) As Integer
           ReDim 主筋Y位置(200) As Single
           ReDim Hoop_X(900) As Single
           ReDim Ypit(900) As Single
           
            ReDim 表示X_位置(905) As Single
           
           
           'Print #60, UXF_点()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      
      
'     With 土木橋脚_杭 '''''''''''''''''' nagase
      
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit: Mark_D3 = Mark_D2 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 杭躯体 ]]]
            D1s = 橋脚_杭("D"):  杭D = 躯体_D(1)
            D1s = 橋脚_杭("L"):  杭L = 躯体_D(1)

            Print #60, "   " + Uxf_P(0, 杭D / 2) + "\" + Uxf_線(杭L, 0) + "\" + Uxf_線(0, -杭D) + "\" + Uxf_線(-杭L, 0)
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            HU = 基礎_HUi
            HD = 基礎_HDi
            BYL = 基礎_BYLi
            KX1 = Abs(杭位置_X(1)): KY1 = Abs(杭位置_Y(1))
            
            X1 = -HU - HD: X2 = -HD: X3 = 0
            Y1 = -杭D
            Y3 = BYL - KY1
            Print #60, "[P:" + FD2(X3, Y1) + "]\[L:" + FD2(0, -Y1 - 杭D / 2) + "]\[p:" + FD2(0, 杭D) + "]"
            Print #60, "[L:" + FD2(0, Y3 - 杭D / 2) + "|" + FD2(-HD, 0) + "|" + FD2(-HU, -(Y3 - Y1)) + "]"
              
              Print #60, "[切断M1:" + FD6(X1, Y1, X3, Y1, 5, 3) + "]"
            
            

      
      
      
      '[[[ 表示X 座標  ]]]
              上_LL = 10 * 現作図_Scale
                D1s = 橋脚_杭("K1")
                鉄筋定着 = 鉄筋_S定着: 鉄筋ΣL = 鉄筋L_全ΣL
            
            Hoop$ = 橋脚_杭("Hoop"): n9 = 鉄筋P_Σ数: 組立筋n = 0
                   表示X_E数 = 鉄筋P_Σ数
                   For ii = 1 To 鉄筋P_Σ数
                        If 橋脚_鉄筋_Mark$(ii) = "*" Then 組立筋n = 組立筋n + 1: 組立筋位置(組立筋n) = ii
                        表示X_位置(ii) = 鉄筋P_位置(ii) + 鉄筋_Z位置
                        Next ii
                   If 組立筋n < 3 Then 組立筋n = 3
                   ni1 = Int((組立筋位置(1) + 組立筋位置(2)) / 2)
                   表示X_組立筋 = (鉄筋P_位置(ni1) + 鉄筋P_位置(ni1 + 1)) / 2 + 鉄筋_Z位置
    
                   表示X_Hoop1 = 表示X_組立筋
                   
                   ni2 = Int(組立筋位置(組立筋n - 2) + 0.3 * (組立筋位置(組立筋n - 1) - 組立筋位置(組立筋n - 2)))
                   表示X_Hoop2 = (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2 + 鉄筋_Z位置
    
                   ni3 = Int(組立筋位置(2) + 0.6 * (組立筋位置(3) - 組立筋位置(2)))
                   表示X_K1 = ni3: '(鉄筋P_位置(ni3) + 鉄筋P_位置(ni3 + 1)) / 2 + 鉄筋_Z位置
    
                   ni5 = Int(組立筋位置(組立筋n - 2) + 0.6 * (組立筋位置(組立筋n - 1) - 組立筋位置(組立筋n - 2)))
                   表示X_K3 = ni5: ' (鉄筋P_位置(ni5) + 鉄筋P_位置(ni5 + 1)) / 2 + 鉄筋_Z位置
    
                   ni6 = 組立筋位置(1)
'                   ni6 = 3 '**
'                   表示X_AA断面 = (鉄筋P_位置(ni6) + 鉄筋P_位置(ni6 - 1)) / 2 + 鉄筋_Z位置
'
'                   表示X_bb断面 = (鉄筋P_位置(n9 - 1) + 鉄筋P_位置(n9)) / 2 + 鉄筋_Z位置
    
      '[[[ 表示Y 座標  ]]]
             ' 左_LL = 20 * 現作図_Scale
              
                  主筋種類数 = 橋脚_杭("K数")
                  主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                  主筋角度 = 360 / 主筋本数
                  YN1 = 0: 角度 = 0: D1s = 橋脚_杭("K1"): 鉄筋r = 杭D / 2 - 鉄筋_SK位置
                  For ii = 1 To 主筋本数 / 2 + 1:
                        主筋Y位置(ii) = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                        If YN1 = 0 And 主筋Y位置(ii) <= 0 Then YN1 = ii
                  Next ii
              
                  表示Y_1 = (主筋Y位置(YN1) + 主筋Y位置(YN1 - 1)) / 2
                  表示Y_2 = (主筋Y位置(YN1) + 主筋Y位置(YN1 + 1)) / 2
      
      '[[[ 断面位置指定 ]]]
             
             Y1 = 杭_Di / 2 + 上_LL: Y2 = -Y1
             For ii = 1 To 杭_Hp部品_種類数i + 1
                 X1 = 杭_Hp部品_cut位置i(ii) - 400
                 Select Case ii
                 Case 1: Moj = "ａ"
                 Case 2: Moj = "ｂ"
                 Case 3: Moj = "ｃ"
                 Case 4: Moj = "ｄ"
                 Case 5: Moj = "ｅ"
                 Case 6: Moj = "ｆ"
                 Case 7: Moj = "ｇ"
                 Case Else: Moj = "ｈ"
                 End Select

                Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, Moj, Moj, 0)
                 Next ii
      
      
      '[[[ 主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            
            For ii = 1 To 主筋本数 / 2 + 1: 項目$ = "K" + F9(杭_主筋_No(ii))
                D1s = 橋脚_杭(項目$)
                鉄筋定着 = 鉄筋_S定着: 鉄筋ΣL = 鉄筋L_全ΣL
                X0 = -鉄筋定着:
                Y0 = 杭_主筋_Yi(ii)
                Moj = "杭": If Y0 < 0 Then Moj = "杭-"
                Call P_橋脚_鉄筋図("標準", Moj, "U", "+", X0, Y0)
                Next ii
            Print #60, "[色:白]"
                
      
      '[[[ 主筋 Mark 1 ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            
            For 主筋i = 1 To 杭_主筋_種類数i
                For jj = 1 To 杭_主筋_部品_分割数i(主筋i)
                 
                 Y2 = -杭_Di / 2 - Mark_D1 - (主筋i - 1) * Mark_Pit
                 
                 X0 = 杭_主筋_部品_表示_Xi(主筋i, jj) + 杭_主筋_部品_分割L(主筋i, jj) / 2 - (主筋i - 1) * 400
                 X0 = FP_杭_配筋図_表示Xi(X0)
                 
                 If D1s = "" Then Exit For
                 X1 = X0:
                 LLL1 = 鉄筋L_XL - 鉄筋_S定着: If X1 > LLL1 Then Exit For
                 
                 鉄筋_○_符号$ = "K_ _" + F9(主筋i) + "-" + F9(jj)
                 鉄筋_○_符号2$ = f0(杭_主筋_本数i(主筋i)) + "-D" + f0(杭_主筋_部品_分割径i(主筋i, jj))
                 
                 角度 = 0: 主筋数 = 0:  鉄筋r = 杭D / 2 - 鉄筋_SK位置
            
                 For ii = 1 To 主筋本数 / 2 + 1:  Y0 = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                     If 主筋i = 杭_主筋_No(ii) Then 主筋数 = 主筋数 + 1: 主筋Y位置(主筋数) = Y0
                     Next ii
                       
                       
                       For i2 = 1 To 主筋数:
                       Ypit(i2) = 主筋Y位置(i2) - 主筋Y位置(i2 + 1)
                       Next i2
                       
                       X1 = X0: Y1 = 主筋Y位置(1)
                       D2$ = ""
                       For i3 = 1 To 主筋数 - 1: D2$ = D2$ + "+" + F9(Ypit(i3)): Next i3
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270," + Mid(D2$, 2) + "]"
                 
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                  Call P_鉄筋_○名称(2)
            Next jj
            Next 主筋i
      
      
      '[[[ ﾌｰﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                 KH_D = 杭_HpD_Di(1):  Y1 = -KH_D / 2: Y2 = KH_D / 2
           
                 For ii = 1 To 杭_Hp_Σ数i
                         Print #60, "[色:空]"
                         If 杭_Hp_Typei(ii) < 0 Then Print #60, "[色:紫]"
                         XX = 杭_Hp_Zi(ii): Print #60, "     [Li:" + FD4(XX, Y1, XX, Y2) + "]"
                     Next ii
           
           
      '[[[ ﾌｰﾌﾟMark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                 '           6
                 '    1    2 3 4        5
                 
      
            Dim Hpi As Integer, Start_Hp As Integer, End_Hp As Integer, Xpit As Single, Hp径i As Single, Yni As Integer
            For Hpi = 1 To 杭_Hp部品_種類数i
            
                 X0 = 杭_Hp部品_Zi(Hpi) + 杭_Hp部品_ZL(Hpi) / 2
                 X0 = FP_杭_配筋図_表示Xi(X0)
                 DY = 1:
                 Y6 = 杭D / 2 + Mark_U1
                 
                 X3 = X0: X2 = X0 - 1 * 現作図_Scale:   X4 = X0 + 1 * 現作図_Scale
                 
                 Yni = Int(杭_主筋_Yi_位置数i / 2) + 1: If 杭_Hp部品_組立筋i(Hpi) = 0 Then Yni = Yni - 1
                 Y3 = 杭_主筋_Yi(Yni)
                 Y3 = FP_杭_配筋図_表示Yi(Y3)

                       Hp径i = 杭_Hp部品_径i(Hpi)
                       Start_Hp = 0
                       For i2 = 1 To 杭_Hp_Σ数i:
                             Select Case 杭_Hp_径i(i2)
                             Case Hp径i
                                   If Start_Hp = 0 Then Start_Hp = i2
                                   End_Hp = i2
                             Case Else
                             End Select
                       Next i2
                 
                 '[ < 表示 }
                       X1 = 杭_Hp_Zi(Start_Hp): Y1 = Y3
                       
                       D2s = "": Xpit = 0
                       For i2 = Start_Hp To End_Hp
                              If 杭_Hp_Zi(i2) > X0 Then Exit For
                              Xpit = Xpit + 杭_Hp_Zi(i2 + 1) - 杭_Hp_Zi(i2)
                              If 杭_Hp_径i(i2 + 1) = Hp径i Then D2s = D2s + "+" + F9(Xpit): Xpit = 0
                            Next i2
                            Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0," + Mid(D2s, 2) + ",-]"
      
                 '[ 逆< 表示 }
                       X5 = 杭_Hp_Zi(End_Hp): Y1 = Y3
                       D2s = "": Xpit = 0
                       For i2 = End_Hp To Start_Hp Step -1
                              If 杭_Hp_Zi(i2) < X0 Then Exit For
                              Xpit = Xpit + 杭_Hp_Zi(i2) - 杭_Hp_Zi(i2 - 1)
                              If 杭_Hp_径i(i2 - 1) = Hp径i Then D2s = D2s + "+" + F9(Xpit): Xpit = 0
                            Next i2
                       
                       Print #60, "[P:" + FD2(X5, Y1) + "]\[<:180," + Mid(D2s, 2) + ",-]"
      
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, 0) + "|" + FD2(X3 - X2, Y3 - Y1) + "|" + FD2(X4 - X3, Y1 - Y3) + "|" + FD2(X5 - X4, 0) + "]"
                 X6 = X3: ' Y6 = -杭D / 2 - Mark_U1
                  D1s = 橋脚_杭("Hoop" + f0(Hpi))
                 
                 Print #60, "[P:" + FD2(X3, Y3) + "]\[L:" + FD2(0, Y6 - Y3) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                  Call P_鉄筋_○名称(2)
             Next Hpi
      
      
      '[[[ 組立筋ﾌｰﾌﾟ Mark ]]]
                 '           6
                 '    1    2 3 4        5
   
          If 杭_Hp_組立筋_Typei = 100 Then
                 X0 = 杭_Li / 2 '杭_Hp部品_Zi(1) + 杭_Hp部品_ZL(1)
                 X0 = FP_杭_配筋図_表示Xi(X0)
                 DY = 1:
                 Y6 = -杭D / 2 - Mark_D3
                 
                 X3 = X0: X2 = X0 - 1 * 現作図_Scale:   X4 = X0 + 1 * 現作図_Scale
                 
                 Yni = Int(杭_主筋_Yi_位置数i / 2) + 1 + 2 ': If 杭_Hp部品_組立筋i(Hpi) = 0 Then Yni = Yni - 1
                 
                 Y3 = 杭_主筋_Yi(Yni)
                 Y3 = FP_杭_配筋図_表示Yi(Y3)

                       Hp径i = 杭_Hp_組立筋径i
                       Start_Hp = 0
                       For i2 = 1 To 杭_Hp_Σ数i:
                             Select Case 杭_Hp_径i(i2)
                             Case Hp径i
                                   If Start_Hp = 0 Then Start_Hp = i2
                                   End_Hp = i2
                             Case Else
                             End Select
                       Next i2
                 
                 '[ < 表示 }
                       X1 = 杭_Hp_Zi(Start_Hp): Y1 = Y3
                       
                       D2s = "": Xpit = 0
                       For i2 = Start_Hp To End_Hp
                              If 杭_Hp_Zi(i2) > X0 Then Exit For
                              Xpit = Xpit + 杭_Hp_Zi(i2 + 1) - 杭_Hp_Zi(i2)
                              If 杭_Hp_径i(i2 + 1) = Hp径i Then D2s = D2s + "+" + F9(Xpit): Xpit = 0
                            Next i2
                            Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0," + Mid(D2s, 2) + ",-]"
      
                 '[ 逆< 表示 }
                       X5 = 杭_Hp_Zi(End_Hp): Y1 = Y3
                       D2s = "": Xpit = 0
                       For i2 = End_Hp To Start_Hp Step -1
                              If 杭_Hp_Zi(i2) < X0 Then Exit For
                              Xpit = Xpit + 杭_Hp_Zi(i2) - 杭_Hp_Zi(i2 - 1)
                              If 杭_Hp_径i(i2 - 1) = Hp径i Then D2s = D2s + "+" + F9(Xpit): Xpit = 0
                            Next i2
                       
                       Print #60, "[P:" + FD2(X5, Y1) + "]\[<:180," + Mid(D2s, 2) + ",-]"
      
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, 0) + "|" + FD2(X3 - X2, Y3 - Y1) + "|" + FD2(X4 - X3, Y1 - Y3) + "|" + FD2(X5 - X4, 0) + "]"
                 X6 = X3: ' Y6 = -杭D / 2 - Mark_U1
                  D1s = 橋脚_杭("組立筋")
                 
                 Print #60, "[P:" + FD2(X3, Y3) + "]\[L:" + FD2(0, Y6 - Y3) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                  Call P_鉄筋_○名称(2)
              End If
   
   
      '[[[ 寸法  長さ ]]]
           D1s = 橋脚_基礎("H"): 基礎H1 = 躯体_D(1): 基礎H2 = 躯体_D(2)
           寸法位置1 = 寸法線位置_杭長断面.U開き
           補1 = 9: 補2 = 寸法位置1 - 1
           Print #60, "  [P:" + FD2(-基礎H1, 寸法位置1 * 現作図_Scale + 杭D / 2) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(基礎H1, 0, -補1) + "|" + FD3(杭L, 0, -補2) + "]"
   
       '[[[ Hoop 寸法 ]]]
            寸法位置1 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図
            D01$ = ""
            補1 = 寸法位置1 - 1
            
                 Print #60, "  [P:" + FD2(杭_Hp_Start_Zi, 寸法位置1 * 現作図_Scale + 杭D / 2) + "]"
                  For ii = 1 To 杭_HpD_種類数i
                      Moj = P_橋脚_ΣPit寸法(杭_HpD_Pits(ii))
                      If Moj <> "0" Then D01$ = D01$ + "|" + FD3(杭_HpD_ZL(ii), 0, -補1) + "," + Moj
                      Next ii
                 D01$ = D01$ + "|" + FD2(杭_Li - 杭_HpD_Zi(ii), 0) + ",,,R=8"
                 Print #60, "[寸:" + F9(-補1) + ":" + Mid(D01$, 2) + "]"
   
   
   
   
       '[[[ ｽﾍﾟｰｻ寸法 ]]]
            寸法位置1 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図
            補1 = 寸法位置1 - 1
                 Print #60, "  [P:" + FD2(-鉄筋定着, 寸法位置1 * 現作図_Scale + 杭D / 2) + "]"
            '     S1=18-φ13-SR235_n6_L50+95+95+50_H70_@500+5000+5000            ' n ｽﾍﾟｰｻｰ箇所=6
             Speser数 = 橋脚_杭("ｽﾍﾟｰｻ数")
             D1s = 橋脚_杭("ｽﾍﾟｰｻ1")
                 D01$ = FD2(鉄筋定着, 0)
                 For ii = 1 To 鉄筋P_Data数: Moj = 鉄筋P_Data$(ii)
                      Select Case 鉄筋P_L(ii)
                      Case 0:
                      Case Is < 0:      Print #60, "[p:" + FD2(鉄筋P_L(ii), 0) + "]"
                      Case Else:        If 鉄筋P_n(ii) > 1 Then Moj = Moj + "=" + F9(鉄筋P_L(ii))
                                        D01$ = D01$ + "|" + FD3(鉄筋P_L(ii), 0, -補1) + "," + Moj
                      End Select
                      Next ii
                 D01$ = D01$ + "|" + FD3(杭_Li - 鉄筋P_ΣL, 0, 0)
                 Print #60, "[寸:" + F9(-補1) + ":" + D01$ + "]"
             
       '[[[ ｽﾍﾟｰｻ図 ]]]
             For Kii = 1 To Speser数
                 D1s = 橋脚_杭("ｽﾍﾟｰｻ" + F9(Kii)): S_H = Val(鉄筋_H$)
                 DX = 鉄筋L_L(4) + 鉄筋L_L(3): YY = 鉄筋r + 橋脚_J鉄筋開き * 現作図_Scale
                 For ii = 1 To 鉄筋P_Σ数
                     XX = 鉄筋P_位置(ii) - DX
                     Print #60, "   [P:" + FD2(XX, YY) + "]\[L:" + FD2(鉄筋L_L(4), 0) + "|" + FD2(鉄筋L_L(3), S_H) + "|" + FD2(鉄筋L_L(2), -S_H) + "|" + FD2(鉄筋L_L(1), 0) + "]"
                     Print #60, "   [P:" + FD2(XX, -YY) + "]\[L:" + FD2(鉄筋L_L(4), 0) + "|" + FD2(鉄筋L_L(3), -S_H) + "|" + FD2(鉄筋L_L(2), S_H) + "|" + FD2(鉄筋L_L(1), 0) + "]"
                     Next ii
                 Next Kii
   
   
      '[[[ 寸法  底 ]]]
           寸法位置1 = 寸法線位置_杭長断面.R開き:    補1 = 寸法位置1 - 1
           Print #60, "  [P:" + FD2(杭L + 寸法位置1 * 現作図_Scale, -杭D / 2) + "]"
           Print #60, "  [寸:" + F9(補1) + ":" + FD3(0, 杭D, 補1) + "]"
   
           D1s = 橋脚_杭("K1"): 主筋_dt = 鉄筋_SK位置
           寸法位置1 = 寸法線位置_杭長断面.R開き - 橋脚_寸法線_Pit_躯体図:  補1 = 寸法位置1 - 1
           Print #60, "  [P:" + FD2(杭L + 寸法位置1 * 現作図_Scale, -杭D / 2) + "]"
           Print #60, "  [寸:" + FD3(0, 主筋_dt, 補1) + "|" + FD3(0, 杭D - 2 * 主筋_dt, 補1) + "|" + FD2(0, 主筋_dt) + "]"
   
'     End With ''''''''''''''''''''nagase
   'Stop
     元原点X = 原点X: 元原点Y = 原点Y
     
     
     End Sub

Sub SP_杭_主筋_作図(図形項目$)
     Dim D1s As String
     
     Dim 部品noi As Integer
     
     部品noi = Val(Mid(図形項目$, 2))
     If 杭_主筋_s(部品noi) = "" Then Exit Sub
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
                '項目$ = "K1"
                
                
       D1s = 橋脚_杭(図形項目$)
                
                符号$ = 鉄筋_○_符号$
                
                符号2$ = 鉄筋_○_符号2$
                ni = InStr(符号2$, "-")
                符号2$ = Mid(符号2$, 1, ni)
                
                XX = -鉄筋_S定着
     
     Print #60, "[色:黄]\[ﾚ:主筋]"
     橋脚_鉄筋θ = 0:  Call P_橋脚_鉄筋図("標準", "Y", "", "", XX, 0)
                
                
      n11 = 0: Y1 = -15 * 現作図_Scale
      For ii = 1 To 杭_主筋_部品_分割数i(部品noi)
            Nii = 2 * (杭_主筋_部品_分割位置i(部品noi, ii) - 1) + 1
            LLL1 = 鉄筋L_L(Nii)
            X1 = 杭_主筋_部品_表示_Xi(部品noi, ii) + 0.3 * LLL1
            鉄筋_○_符号$ = 符号$ + "-" + F9(ii)
            鉄筋_○_符号3$ = 符号2$ + 橋脚鉄筋径$(ii) + " x " + F9(杭_主筋_部品_分割L(部品noi, ii))
                  Print #60, "[P:" + FD2(X1, Y1) + "]"
                  Call P_鉄筋_○名称(3)
           Next ii
     
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub

Function FP_杭_配筋図_表示Xi(ByVal X1 As Single) As Single
    Dim ii As Integer, ni As Integer
    
    ni = 杭_Hp_Σ数i
    For ii = 1 To 杭_Hp_Σ数i
        If 杭_Hp_Zi(ii) >= X1 Then ni = ii: Exit For
        Next ii
    FP_杭_配筋図_表示Xi = (杭_Hp_Zi(ni - 1) + 杭_Hp_Zi(ni)) / 2
    
    End Function


Function FP_杭_配筋図_表示Yi(ByVal Y1 As Single) As Single
    Dim ii As Integer, ni As Integer
    
    ni = 杭_主筋_Yi_位置数i
    For ii = 1 To 杭_主筋_Yi_位置数i
        If 杭_主筋_Yi(ii) <= Y1 Then ni = ii: Exit For
        Next ii
    FP_杭_配筋図_表示Yi = (杭_主筋_Yi(ni - 1) + 杭_主筋_Yi(ni)) / 2
    
    End Function






Function P_杭_K_n(LLL)
     Dim D1s As String
      '杭_主筋が n番目かを求める
      ' LLL  基礎下端からの L
      n11 = 0
      For ii = 1 To 鉄筋L_Data数
           If 鉄筋L_Type$(ii) = "L" Then
               n11 = n11 + 1:  If LLL < 鉄筋L_X(ii) - 鉄筋_S定着 Then n11 = n11 - 1: Exit For
               End If
           Next ii
     P_杭_K_n = n11
     End Function



Sub SP_杭_断面_作図(ByVal 断面位置s As String)
     
     ' SP_杭_断面_作図
     
     Dim D1s As String, Moj As String, 部品noi As Integer
           
     部品noi = Mid(断面位置s, 3): If 部品noi > 杭_Hp部品_種類数i Then Exit Sub


      D1s = 橋脚_杭("Hoop" + f0(部品noi))


     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Select Case 部品noi
         Case 1:  Moj = "断面ａ－ａ"
         Case 2:  Moj = "断面ｂ－ｂ"
         Case 3:  Moj = "断面ｃ－ｃ"
         Case 4:  Moj = "断面ｄ－ｄ"
         Case 5:  Moj = "断面ｅ－ｅ"
         Case 6:  Moj = "断面ｆ－ｆ"
         Case Else: Moj = "断面  －  "
         End Select
         
         
         
         Call P_橋脚_格図名(0, Y0, 0, Moj)
      
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1s = 橋脚_杭("D"):  杭D = 躯体_D(1): Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
      '[[[ ﾌｰﾌﾟ KO1 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            KH_D = 杭_Hp部品_Di(部品noi):   Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
            
            
            '[[[ Come ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            角度 = 20: X1 = -KH_D * Dcos(角度) / 2: Y1 = -KH_D * Dsin(角度) / 2
            Print #60, "    [P:" + FD2(X1, Y1) + "]\[矢:-15,-8|" + F9(-名称_L1) + ",0]\[pm:5,0]"
            Call P_鉄筋_○名称(1)
      
      '[[[ 主筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            
            角度 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(杭_主筋_No(ii))
                D1s = 橋脚_杭(項目$)
                鉄筋r = 杭D / 2 - 鉄筋_SK位置
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                If 杭_主筋_No(ii) <= 杭_Hp部品_主筋_配筋Typei(部品noi) Then
                    Print #60, "   [P:" + FD2(XX, YY) + "]\[橋脚鉄筋:" + 橋脚鉄筋径$(1) + "]"
                    End If
                Next ii
     
     '[[[ ｽﾍﾟｰｻ ]]]
            Print #60, "[色:白]\[ﾚ:ETC]"
           D1s = 橋脚_杭("ｽﾍﾟｰｻ1"): Spe_n = Val(鉄筋_n$): If Spe_n = 0 Then Spe_n = 6
           Spe_角度 = 360 / Spe_n
           For ii = 1 To Spe_n
               角度1 = 角度1
               X1 = KH_D * Dcos(90 - 角度) / 2: Y1 = KH_D * Dsin(90 - 角度) / 2
               X2 = 杭D * Dcos(90 - 角度) / 2: Y2 = 杭D * Dsin(90 - 角度) / 2
               Print #60, "     [Li:" + FD4(X1, Y1, X2, Y2) + "]"
               
               If ii = 3 Then
                      '[[[ Come ]]]
                      Print #60, "[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]"
                      Moj = "(n=" + F9(Spe_n) + ")"
                      Print #60, "    [P:" + FD2((X1 + X2) / 2, (Y1 + Y2) / 2) + "]\[矢:15,12|25,0,スペーサー ,R]"
                      Print #60, "   [pm:-20,-4.5]\" + Moj
                      End If
               角度 = 角度 + Spe_角度
               Next ii
     
      '[[[ 寸法 ]]]
           Hoop_dt = (杭D - KH_D) / 2
                D1s = 橋脚_杭("K" + F9(杭_主筋_No(1)))
                主筋_dt = 鉄筋_SK位置:    主筋r = 杭D / 2 - 鉄筋_SK位置
                主筋Pit = 1: If 主筋本数 > 0 Then 主筋Pit = 2 * 3.14159265358979 * 主筋r / 主筋本数
                主筋Pit = Int(主筋Pit * 10) / 10
                主筋r_L = 主筋Pit * 主筋本数
          
            寸法位置1 = 寸法線位置_杭断面.U開き * 現作図_Scale: 補1 = 寸法位置1 / 現作図_Scale - 1
            Print #60, "   [P:" + FD2(-杭D / 2, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(杭D, 0, -補1) + "]"
            
            寸法位置2 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale: 補2 = 寸法位置2 / 現作図_Scale - 1
            Print #60, "   [P:" + FD2(-杭D / 2, 寸法位置2) + "]\[寸:" + FD3(主筋_dt, 0, -補2) + "|" + FD3(2 * 主筋r, 0, -補2) + "|" + FD2(主筋_dt, 0) + "]"
      
       '[[[    ]]]
            Print #60, "[色:白]\[ﾚ:寸法線]"
            寸r = 杭D / 2 + 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
            Print #60, "[Msize:" + F9(図_寸法_Msize) + "]"
            Print #60, "   [P0:]\[寸Arc1:" + FD5(寸r, 90, 89.9999, 5, 5) + ",<>,***]"
            Moj1$ = F9(主筋本数): Moj2$ = "x": Moj3$ = F9(主筋Pit): Moj4$ = F9(主筋Pit): Moj5$ = "=": Moj6$ = F9(主筋r_L)
                  寸r = (杭D / 2) / 現作図_Scale + 橋脚_寸法線_開き_鉄筋図: ' * 現作図_Scale
                  
                  角度 = 36: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj1$ + "]"
                  角度 = 22: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj2$ + "]"
                  角度 = 0: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj3$ + "]"
                  角度 = 25: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj5$ + "]"
                  角度 = 52: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj6$ + "]"
     
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub SP_杭_断面配筋図_作図(ByVal 断面位置s As String)
     
           
     Dim D1s As String, 部品noi As Integer
           
     部品noi = Mid(断面位置s, 4): If 部品noi > 杭_Hp部品_種類数i Then Exit Sub

           

     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         
         Select Case 部品noi
         Case 1:  Moj = "断面ａ－ａ"
         Case 2:  Moj = "断面ｂ－ｂ"
         Case 3:  Moj = "断面ｃ－ｃ"
         Case 4:  Moj = "断面ｄ－ｄ"
         Case 5:  Moj = "断面ｅ－ｅ"
         Case 6:  Moj = "断面ｆ－ｆ"
         Case Else: Moj = "断面  －  "
         End Select
         
         
         Call P_橋脚_格図名(0, Y0, 0, Moj + "鉄筋配筋図")
      
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1s = 橋脚_杭("D"):  杭D = 躯体_D(1)
            Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
      '[[[ ﾌｰﾌﾟ KO1 組立筋 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1s = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径
            Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
     
     '[[[ ｽﾍﾟｰｻ ]]]
            Print #60, "[色:白]\[ﾚ:ETC]"
           D1s = 橋脚_杭("ｽﾍﾟｰｻ1"): Spe_n = Val(鉄筋_n$): If Spe_n = 0 Then Spe_n = 6
           Spe_角度 = 360 / Spe_n
           For ii = 1 To Spe_n
               角度1 = 角度1
               X1 = KH_D * Dcos(90 - 角度) / 2: Y1 = KH_D * Dsin(90 - 角度) / 2
               X2 = 杭D * Dcos(90 - 角度) / 2: Y2 = 杭D * Dsin(90 - 角度) / 2
               Print #60, "    [Li:" + FD4(X1, Y1, X2, Y2) + "]"
               角度 = 角度 + Spe_角度
               Next ii
      
      '[[[ 主筋 ]]]
            
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
            Print #60, "[Msize:" + FD1(橋脚_鉄筋_Mark_Msize) + "]"
            
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            
            角度 = 0
            For ii = 1 To 主筋本数:
                項目$ = "K" + F9(杭_主筋_No(ii))
                D1s = 橋脚_杭(項目$)
                鉄筋r = KH_D / 2 - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                If 杭_主筋_No(ii) <= 杭_Hp部品_主筋_配筋Typei(部品noi) Then
                     Print #60, "   [P:" + FD2(XX, YY) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(杭_主筋_No(ii)) + "]"
                     End If
                Next ii
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_杭_断面B()
     Dim D1s As String, Moj As String
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         
         Select Case 杭_Hp部品_種類数i + 1
         Case 1:  Moj = "断面ａ－ａ"
         Case 2:  Moj = "断面ｂ－ｂ"
         Case 3:  Moj = "断面ｃ－ｃ"
         Case 4:  Moj = "断面ｄ－ｄ"
         Case 5:  Moj = "断面ｅ－ｅ"
         Case 6:  Moj = "断面ｆ－ｆ"
         Case Else: Moj = "断面  －  "
         End Select
         
         
         
         Call P_橋脚_格図名(0, Y0, 0, Moj)
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1s = 橋脚_杭("D"):  杭D = 躯体_D(1): Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
            
      
      '[[[ ﾌｰﾌﾟ KO1 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1s = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径:   Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
            
            '[[[ Come ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            角度 = 20: X1 = -KH_D * Dcos(角度) / 2: Y1 = -KH_D * Dsin(角度) / 2
            Print #60, "    [P:" + FD2(X1, Y1) + "]\[矢:-15,-8|" + F9(-名称_L1) + ",0]\[pm:5,0]"
            
            Call P_鉄筋_○名称(1)
      
      '[[[ 主筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            D1s = 橋脚_杭("L"):  杭L = 躯体_D(1)

            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            
            角度 = 0: B主筋本数 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(杭_主筋_No(ii))
                D1s = 橋脚_杭(項目$)
                鉄筋r = 杭D / 2 - 鉄筋_SK位置
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                
                LLL1 = 鉄筋L_XL - 鉄筋_S定着
                If LLL1 + 500 > 杭L Then
                     B主筋本数 = B主筋本数 + 1
                     n11 = P_杭_K_n(杭L - 500): B鉄筋径$ = 橋脚鉄筋径$(n11)
                    Print #60, "   [P:" + FD2(XX, YY) + "]\[橋脚鉄筋:" + B鉄筋径$ + "]"
                End If
                Next ii
     
     
      '[[[ 寸法 ]]]
           Hoop_dt = (杭D - KH_D) / 2
                D1s = 橋脚_杭("K" + F9(杭_主筋_No(1)))
                主筋_dt = 鉄筋_SK位置:    主筋r = 杭D / 2 - 鉄筋_SK位置
                主筋Pit = 1: If B主筋本数 > 0 Then 主筋Pit = 2 * 3.14159265358979 * 主筋r / B主筋本数
                主筋Pit = Int(主筋Pit * 10) / 10
                主筋r_L = 主筋Pit * B主筋本数
          
            寸法位置1 = 寸法線位置_杭断面.U開き * 現作図_Scale: 補1 = 寸法位置1 / 現作図_Scale - 1
            Print #60, "   [P:" + FD2(-杭D / 2, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(杭D, 0, -補1) + "]"
            
            寸法位置2 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale: 補2 = 寸法位置2 / 現作図_Scale - 1
            Print #60, "   [P:" + FD2(-杭D / 2, 寸法位置2) + "]\[寸:" + FD3(主筋_dt, 0, -補2) + "|" + FD3(2 * 主筋r, 0, -補2) + "|" + FD2(主筋_dt, 0) + "]"
      
       '[[[    ]]]
            
             Print #60, "[色:白]\[ﾚ:寸法線]"
            寸r = 杭D / 2 + 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
            Print #60, "   [P0:]\[寸Arc1:" + FD5(寸r, 90, 89.9999, 5, 5) + ",<>,***]"
            Print #60, "[Msize:" + F9(図_寸法_Msize) + "]"
            Moj1$ = F9(B主筋本数): Moj2$ = "x": Moj3$ = F9(主筋Pit): Moj4$ = F9(主筋Pit): Moj5$ = "=": Moj6$ = F9(主筋r_L)
                  寸r = (杭D / 2) / 現作図_Scale + 橋脚_寸法線_開き_鉄筋図: ' * 現作図_Scale
                  '角度 = 27: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj1$ + "]"
                  '角度 = 15: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj2$ + "]"
                  '角度 = 0: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj3$ + "]"
                  '角度 = 17: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj5$ + "]"
                  '角度 = 30: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj6$ + "]"
                  
                  角度 = 36: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj1$ + "]"
                  角度 = 22: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj2$ + "]"
                  角度 = 0: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj3$ + "]"
                  角度 = 27: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj5$ + "]"
                  角度 = 52: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj6$ + "]"
     
     
      '[[[ 底ﾌｰﾌﾟ  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            KD2 = KH_D / 2
            底Hp_L = KH_D / Sqr(2)
            Print #60, "[P:" + FD2(0, KD2) + "]\[L:" + FD2(KD2, -KD2) + "|" + FD2(-KD2, -KD2) + "|" + FD2(-KD2, KD2) + "|" + FD2(KD2, KD2) + "]"
            Print #60, "[P:" + FD2(-底Hp_L / 2, 底Hp_L / 2) + "]\[L:" + FD2(底Hp_L, 0) + "|" + FD2(0, -底Hp_L) + "|" + FD2(-底Hp_L, 0) + "|" + FD2(0, 底Hp_L) + "]"
      
      '[[[ 底ﾌｰﾌﾟ 矢  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            矢LL = 底Hp_L / 2: 矢L2 = 矢LL / Sqr(2)
            For ii = 1 To 8: 角度 = (ii - 1) * 45: X0 = 矢LL * Dcos(角度): Y0 = 矢LL * Dsin(角度)
                 Print #60, "[P:" + FD2(X0, Y0) + "]\[<:" + FD1(180 + 角度) + "]"
                 Next ii
                 Print #60, "[P:" + FD2(-矢LL, 0) + "]\[L:" + FD2(2 * 矢LL, 0) + "]"
                 Print #60, "[P:" + FD2(0, -矢LL) + "]\[L:" + FD2(0, 2 * 矢LL) + "]"
                 Print #60, "[P:" + FD2(-矢L2, -矢L2) + "]\[L:" + FD2(2 * 矢L2, 2 * 矢L2) + "]"
                 Print #60, "[P:" + FD2(矢L2, -矢L2) + "]\[L:" + FD2(-2 * 矢L2, 2 * 矢L2) + "]"
                 
      '[[[ 底ﾌｰﾌﾟ Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            D1s = 橋脚_杭("Hp底"): XL = 0.9 * KH_D: YL = 0.5 * KH_D
            Print #60, "    [P0:]\[L:" + FD2(XL, YL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
            
            Call P_鉄筋_○名称(1)
     
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_杭_断面B配筋図()
     Dim D1s As String, Moj As String
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Select Case 杭_Hp部品_種類数i + 1
         Case 1:  Moj = "断面ａ－ａ"
         Case 2:  Moj = "断面ｂ－ｂ"
         Case 3:  Moj = "断面ｃ－ｃ"
         Case 4:  Moj = "断面ｄ－ｄ"
         Case 5:  Moj = "断面ｅ－ｅ"
         Case 6:  Moj = "断面ｆ－ｆ"
         Case Else: Moj = "断面  －  "
         End Select
         Call P_橋脚_格図名(0, Y0, 0, Moj + "鉄筋配筋図")
      
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1s = 橋脚_杭("D"):  杭D = 躯体_D(1)
            Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
      '[[[ ﾌｰﾌﾟ KO1 組立筋 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1s = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径
            Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
     

      
      '[[[ 主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
            D1s = 橋脚_杭("L"):  杭L = 躯体_D(1)
            
            Print #60, "[Msize:" + FD1(橋脚_鉄筋_Mark_Msize) + "]"
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 杭_主筋_Σ本数i: If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            
            角度 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(杭_主筋_No(ii))
                D1s = 橋脚_杭(項目$)
                鉄筋r = KH_D / 2 - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                
                LLL1 = 鉄筋L_XL - 鉄筋_S定着
                If LLL1 + 500 > 杭L Then Print #60, "   [P:" + FD2(XX, YY) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(杭_主筋_No(ii)) + "]"
                              
                Next ii

      '[[[ 底ﾌｰﾌﾟ  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            KD2 = KH_D / 2
            底Hp_L = KH_D / Sqr(2)
            Print #60, "[P:" + FD2(0, KD2) + "]\[L:" + FD2(KD2, -KD2) + "|" + FD2(-KD2, -KD2) + "|" + FD2(-KD2, KD2) + "|" + FD2(KD2, KD2) + "]"
            Print #60, "[P:" + FD2(-底Hp_L / 2, 底Hp_L / 2) + "]\[L:" + FD2(底Hp_L, 0) + "|" + FD2(0, -底Hp_L) + "|" + FD2(-底Hp_L, 0) + "|" + FD2(0, 底Hp_L) + "]"
     
     元原点X = 原点X: 元原点Y = 原点Y
     
     
     
     End Sub
Sub SP_杭_Hoop_作図(図形項目$)
     ' SSP_杭_Hoop_作図_作図
     Dim Hoop筋$, KH_D As Single
     
     Dim 部品noi As Integer
     
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
            D1$ = 橋脚_杭(図形項目$)
            Select Case 図形項目$
            Case "Hoop1", "Hoop2", "Hoop3", "Hoop4", "Hoop5", "Hoop6", "Hoop7", "Hoop8":
                  部品noi = Val(Mid(図形項目$, 5)): If 部品noi > 杭_Hp部品_種類数i Then Exit Sub
                   
                   Hoop数 = 杭_Hp部品_数i(部品noi)
                   Hoop筋$ = "D" + f0(杭_Hp部品_径i(部品noi))
                   KH_D = 杭_Hp部品_Di(部品noi)
            
            Case "組立筋": Hoop数 = 杭_Hp_組立筋数i:  If 杭_Hp_組立筋_Typei < 90 Then Exit Sub
            
                   Hoop数 = 杭_Hp_組立筋数i
                   Hoop筋$ = "D" + f0(杭_Hp_組立筋径i)
                   KH_D = 杭_Hp_組立筋Di
            End Select
      
      
      '[[[ ﾌｰﾌﾟ  ]]]
            Print #60, "[色:黄]\[ﾚ:Hoop]"
            Print #60, "   [P:0,0]\[Cir:" + FD1(KH_D / 2) + "]"
      
      '[[[ 寸法 ]]]
            Print #60, "[色:白]\[ﾚ:寸法線]"
            LL1 = 3.14159265358979 * KH_D
            寸r = KH_D / 2 + 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
            補1 = 橋脚_寸法線_開き_鉄筋図 - 1
            Print #60, "   [P0:]\[寸Arc1:" + FD4(寸r, 90, 89.9999, 補1) + ",,<>," + F9(F橋脚(LL1)) + "]"
            
            角度 = 15
            X1 = KH_D * Dcos(角度) / 2: Y1 = KH_D * Dsin(角度) / 2: X2 = HR * Dcos(角度): Y2 = -HR * Dsin(角度)
            Print #60, "   [寸:" + FD2(-X1, Y1) + ":" + FD2(2 * X1, -2 * Y1) + "]": '       寸法を描く pointは元に戻す  文字="***" は寸法を入れる 文字="" は文字を描かない
                            '  exp   [寸:6:500,0,5,,L5|300,0,5,,R=3}
         
     
       '[[[ 重ね部分 ]]]
            重ねL = FP_橋脚_鉄筋_Data("KHL", "SD390", "帯筋", Hoop筋$)
            重ね角度 = 90 - (360 * 重ねL / (3.14159265358979 * KH_D))
            重ねr = KH_D / 2 + 橋脚_J鉄筋開き * 現作図_Scale
            Print #60, "   [P0:]\[Arc1:" + FD3(重ねr, 重ね角度, 90) + "]"
            
            寸r = KH_D / 2 + 2 * 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
            Print #60, "   [P0:]\[寸Arc1:" + FD5(寸r, 重ね角度, 90, 2 * 補1, 補1) + ",<>," + F9(重ねL) + "]"
     
       '[[[ 溶接Mark  ]]]
            Print #60, "[色:白]\[ﾚ:ETC]"
              X0 = 重ねr * Dcos(重ね角度 + 5): Y0 = 重ねr * Dsin(重ね角度 + 5)
              XL = 2.8 * 橋脚_寸法線_開き_鉄筋図 * Dcos(重ね角度): YL = 2.8 * 橋脚_寸法線_開き_鉄筋図 * Dsin(重ね角度)
              Print #60, "    [P:" + FD2(X0, Y0) + "]"
              Call P_橋脚_溶接Mark1(XL, YL)
     
     
       '[[[ Title ]]]
            Print #60, "   [P:" + FD2(-0.75 * 寸r, -1.4 * 寸r) + "]"
            Call P_鉄筋_○名称(3)
     
     元原点X = 原点X: 元原点Y = 原点Y
     
     End Sub

Sub SP_杭_Hp底_作図()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
'     With 土木橋脚_杭'''''''''''''''''nagase

      '[[[ 底ﾌｰﾌﾟ  ]]]
            Print #60, "[色:黄]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭("Hp底")
            LL = 鉄筋L_全ΣL
            Print #60, "   [P:" + FD2(-LL / 2, 0) + "]\[L:" + FD2(LL, 0) + "]"
      
      '[[[ 寸法 ]]]
            寸法位置1 = 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
            補1 = 橋脚_寸法線_開き_鉄筋図 - 1
            Print #60, "   [P:" + FD2(-LL / 2, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(LL, 0, -補1) + "]"
            
       '[[[ Title ]]]
            Print #60, "[P0:]\[Pm:" + FD2(-10, -20) + "]"
            Call P_鉄筋_○名称(3)
            
    
'    End With'''''''''''''''nagase
    
    元原点X = 原点X: 元原点Y = 原点Y
    End Sub



Sub P_杭_帯鉄筋継手詳細図()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
            Print #60, "[色:白]\[ﾚ:ETC]"
      '[[[ 格図名 ]]]
         Y0 = 0.7 * (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "帯鉄筋継手詳細図=1/" + F9(現作図_Scale))
      
      '[[[ ﾌｰﾌﾟ KO3 ]]]
            D1$ = 橋脚_杭("Hoop1"): KH_D = 鉄筋_SH径
            H_D = Val(Mid(橋脚鉄筋径$(1), 2))
            LL1 = 10 * H_D
            Print #60, "   [P:" + FD2(-1.2 * LL1, H_D / 2) + "]\[L2:～]:" + FD3(1.7 * LL1 + 20, 0, H_D) + "]"
            Print #60, "   [P:" + FD2(-LL1 / 2 - 20, -H_D / 2) + "]\[L2:[～:" + FD3(1.7 * LL1 + 20, 0, H_D) + "]"
            
       '[[[ ﾊｯﾁ ]]]
              ' [ﾊｯﾁ1:ﾋﾟｯﾁmm,角度,XL,YL]    BOXにﾊｯﾁを入れる Pointを元の位置に戻す
            Print #60, "   [P:" + FD2(-LL1 / 2, -H_D / 2) + "]\ [ﾊｯﾁ1:0.5,45," + FD2(LL1, H_D) + "]"
            Print #60, "   [P0:]\[B:" + FD2(LL1, H_D) + "]"
            
       '[[[ 寸法  ]]]
              補1 = 2 * 橋脚_寸法線_開き_鉄筋図 - 1
              DY = 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
              Print #60, "[P0:]\[p:" + FD2(-LL1 / 2 - 20, 2 * DY + H_D) + "]"
              Print #60, "    [寸:" + F9(-補1) + ":" + FD3(20, 0, -補1) + ",,L=6|" + FD3(LL1, 0, -補1) + ",10Φ|" + FD3(20, 0, -補1) + ",,R=6" + "]"
       
       '[[[ Come  ]]]
              Print #60, "[Msize:" + F9(図_表示_Msize) + "]"
              Print #60, "    [P:" + FD2(0.85 * LL1, -H_D) + "]\[矢:0," + F9(-20 + H_D / 現作図_Scale) + "]"
              Print #60, "    [P:" + FD2(-0.85 * LL1, 0) + "]\[矢:0,-20|60,0,帯鉄筋,R]"

       '[[[ 溶接Mark  ]]]
              Print #60, "    [P:" + FD2(-0.3 * LL1, H_D / 2) + "]"
              Call P_橋脚_溶接Mark1(8, 8)

     元原点X = 原点X: 元原点Y = 原点Y
     End Sub



Sub P_杭_スペーサー詳細図()
'                 S1=18-φ13-SR235_n6_L50+95+95+50_H70_@500+5000+5000            ' n ｽﾍﾟｰｻｰ箇所=6
        ' 鉄筋_径本数$          鉄筋本数,径  exp  6+5+1-D38    18-φ13-SR235
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
       
            Print #60, "[色:白]\[ﾚ:ETC]"
      '[[[ 格図名 ]]]
         Y0 = 0.7 * (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "スペーサー詳細図=1/" + F9(現作図_Scale))
       
       '[[[ ｽﾍﾟｰｻｰ  ]]]
              D1$ = 橋脚_杭("ｽﾍﾟｰｻ1")
              S_H = Val(鉄筋_H$)
              S_D = Val(Mid(橋脚鉄筋径$(1), 2))
              DX = 鉄筋L_L(1) + 鉄筋L_L(2)
              Print #60, "   [P:" + FD2(-DX, 0) + "]\[L2:[]:" + FD3(鉄筋L_L(1), 0, S_D) + "|" + FD3(鉄筋L_L(2), S_H, S_D) + "|" + FD3(鉄筋L_L(3), -S_H, S_D) + "|" + FD3(鉄筋L_L(4), 0, S_D) + "]"

                  
       '[[[ 寸法  ]]]
              補1 = 橋脚_寸法線_開き_鉄筋図 - 1
              DY = 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
              Print #60, "[P0:]\[p:" + FD2(-DX, -DY) + "]"
              D01$ = "    [寸:" + F9(補1) + ":" + FD3(鉄筋L_L(1), 0, 補1) + ",,L=6|" + FD3(鉄筋L_L(2), 0, 補1) + "|" + FD3(鉄筋L_L(3), 0, 補1) + "|" + FD3(鉄筋L_L(4), 0, 補1) + ",,R=6" + "]"
              If 鉄筋L_L(2) = 鉄筋L_L(3) Then D01$ = "    [寸:" + F9(補1) + ":" + FD3(鉄筋L_L(1), 0, 補1) + ",,L=6|" + FD3(鉄筋L_L(2) + 鉄筋L_L(3), 0, 補1) + "|" + FD3(鉄筋L_L(4), 0, 補1) + ",,R=6" + "]"
              Print #60, D01$

              Print #60, "[P0:]\[p:" + FD2(-DX - DY, 0) + "]"
              Print #60, "[寸:" + F9(-補1) + ":" + FD3(0, S_H, -補1) + "]"

       '[[[ Come  ]]]
              Print #60, "[Msize:" + F9(図_表示_Msize) + "]"
              Moj$ = 鉄筋_径本数$: ni = InStr(Moj$, "-S"): If ni > 1 Then Moj$ = Mid(Moj$, 1, ni - 1)
              Moj1$ = Moj$ + " x " + F9(F橋脚2(鉄筋L_全ΣL)): Moj2$ = "(" + 鉄筋径_種別$ + ")"
              Print #60, "[P0:]\[字:0,-20,0,C," + Moj1$ + "]"
              Print #60, "[P0:]\[字:0,-27,0,C," + Moj2$ + "]"

     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_杭_かぶり詳細図()
      
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
            Print #60, "[色:白]\[ﾚ:ETC]"
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "かぶり詳細図=1/" + F9(現作図_Scale))
       
      
      '[[[ ﾌｰﾌﾟ 組立筋 ]]]
             D1$ = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径
             組立筋$ = 橋脚鉄筋径$(1)
             組立筋_D = Val(Mid(橋脚鉄筋径$(1), 2))
      
      '[[[ 主筋 ]]]
             D1$ = 橋脚_杭("K1")
             主筋_D = Val(Mid(橋脚鉄筋径$(1), 2))
             鉄筋_dt = 鉄筋_SK位置
             LL1 = 10 * 主筋_D
              Print #60, "[Msize:" + F9(図_表示_Msize) + "]"
             Print #60, "   [P:" + FD2(0, -LL1) + "]\[L2:～:" + FD3(0, LL1 - 組立筋_D / 2, 主筋_D) + "]"
             Print #60, "   [P:" + FD2(0, 主筋_D / 2) + "]\[L2:*～:" + FD3(0, LL1 - 組立筋_D / 2, 主筋_D) + "]"
             Moj$ = "主鉄筋 " + 橋脚鉄筋径$(1)
             Print #60, "   [P:" + FD2(主筋_D / 2, 0.6 * LL1) + "]\[矢:33,0," + Moj$ + ",R]"
                
       '[[[ 寸法  ]]]
             Print #60, "   [P:" + FD2(-鉄筋_dt, LL1) + "]\[寸:" + FD2(鉄筋_dt - 主筋_D / 2, 0) + "]"

      
      
      '[[[ Cyubu ]]]
             Print #60, "[Msize:" + F9(図_表示_Msize) + "]"
             Print #60, "   [P:" + FD2(-鉄筋_dt, -LL1) + "]\[L:" + FD2(0, 2 * LL1) + "]"
             Cyubu_t = 40
             Print #60, "   [P:" + FD2(-鉄筋_dt, -LL1) + "]\ [ﾊｯﾁ1:1.0,45," + FD2(Cyubu_t, 1.8 * LL1) + "]"
             Moj$ = "ケーシングチューブ"
             Print #60, "   [P:" + FD2(-鉄筋_dt + 0.4 * Cyubu_t, -0.6 * LL1) + "]\[矢:-50,0," + Moj$ + ",C]"
      
      
      
      
      '[[[ ｽﾍﾟｰｻｰ  ]]]
             D1$ = 橋脚_杭("ｽﾍﾟｰｻ1")
             S_H = Val(鉄筋_H$)
             S_D = Val(Mid(橋脚鉄筋径$(1), 2))
             DY = 鉄筋L_L(1) + 鉄筋L_L(2)
             Print #60, "   [P:" + FD2(-(主筋_D + S_D) / 2, -DY) + "]\[L2:[]:" + FD3(0, 鉄筋L_L(1), S_D) + "|" + FD3(-S_H, 鉄筋L_L(2), S_D) + "|" + FD3(S_H, 鉄筋L_L(3), S_D) + "|" + FD3(0, 鉄筋L_L(4), S_D) + "]"

             Print #60, "   [P:" + FD2(-S_H - 主筋_D / 2 - S_D / 2, -1.3 * LL1) + "]\[寸:5:" + FD3(S_H, 0, 5) + "]"
             Moj$ = "スペーサー" + 橋脚鉄筋径$(1)
             Print #60, "   [P:" + FD2(-0.6 * S_H - 主筋_D / 2 - S_D / 2, 0.6 * 鉄筋L_L(3)) + "]\[矢:-65,0," + Moj$ + ",C]"
      
      
      
      
      '[[[ ﾌｰﾌﾟ  組立筋 ]]]
             'D1$ = 橋脚_杭("組立筋"): 'KH_D = 鉄筋_SH径
             '組立筋$ = 橋脚鉄筋径$(1)
             '組立筋_D = Val(Mid(組立筋$, 2))
             Print #60, "   [P:" + FD2(-主筋_D / 2 - 組立筋_D / 2, 0) + "]\[L2:():" + FD3(LL1, 0, 組立筋_D) + "]"
             Moj$ = "組立筋 " + 組立筋$
             Print #60, "    [P:" + FD2(0.4 * LL1, -主筋_D / 2) + "]\[矢:0,-7|30,0," + Moj$ + ",R]"


     元原点X = 原点X: 元原点Y = 原点Y
     End Sub



'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃                                                                                                                                    ┃
'┃■ 基礎        作図
'┃                                                                                                                                    ┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub SP_基礎_配筋図_作図()
     Dim ii As Integer, i1 As Integer, i2 As Integer
     Dim D1s As String, D2s As String
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
'     With 土木橋脚_基礎 ''''''''''''' nagase
     
       
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
       
       
      
      
      '[[[ 格図名 ]]]
         X1 = -基礎_BYRi - (寸法線位置_基礎平面.L開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(X1, -基礎_BXLi * 0.4, 90, "下面")
         Call P_橋脚_格図名(X1, 基礎_BXRi * 0.4, 90, "上面")
      
      '[[[ ｾﾝﾀｰ Line ]]]
           X1 = -基礎_BYRi - (寸法線位置_基礎平面.L開き + 格図名開き位置) * 現作図_Scale: X2 = 基礎_BYRi + 10 * 現作図_Scale
           Call P_橋脚_Center_Line(X2, 0, X1, 0, X1, 0)
           Y1 = -基礎_BXLi - 10 * 現作図_Scale: Y2 = 基礎_BXRi + 10 * 現作図_Scale
           Call P_橋脚_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      '[[[ 断面位置指定 ]]]
         X1 = -基礎_BYRi - 10 * 現作図_Scale: Y1 = 5 * 現作図_Scale
         X2 = 基礎_BYLi + 10 * 現作図_Scale: Y2 = Y1
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ａ", "Ａ", 0)
         
         X1 = -5 * 現作図_Scale: Y1 = 基礎_BXRi + 10 * 現作図_Scale
         X2 = X1: Y2 = -基礎_BXLi - 10 * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ｂ", "Ｂ", 0)
         
      
      
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[P0:]\[B:" + FD2(基礎_BYi, 基礎_BXi) + "]"
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 基礎_BXRi + 寸法線位置_基礎平面.U開き * 現作図_Scale
                  補1 = 寸法線位置_基礎平面.U開き - 1
                  Print #60, "[P:" + FD2(-基礎_BYLi, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(基礎_BYi, 0, -補1) + "]"
          
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_基礎平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(-基礎_BYLi, 寸法位置2) + "]"
                  D1$ = "[寸:" + FD3(基礎_BYR端i, 0, -補2) + "|" + FD3(基礎_BYR柱i - 土木橋脚_柱.BYR, 0, -補2) + "|"
                  D1$ = D1$ + FD3(土木橋脚_柱.BY, 0, -補2) + "|" + FD3(基礎_BYL柱i - 土木橋脚_柱.BYL, 0, -補2) + "|" + FD3(基礎_BYL端i, 0, -補2) + "]"
                  Print #60, D1$
          
          ' D寸法
                  寸法位置D1 = -基礎_BXLi - 寸法線位置_基礎平面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_基礎平面.D開き - 1
                  Print #60, "[P:" + FD2(-基礎_BYLi, 寸法位置D1) + "]\[寸:" + F9(補D1) + ":" + FD3(基礎_BYi, 0, 補D1) + "]"
          
          ' L寸法
                  寸法位置L1 = -基礎_BYRi - 寸法線位置_基礎平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_基礎平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -基礎_BXLi) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, 基礎_BXi, -補L1) + "]"
          
                  寸法位置L2 = 寸法位置L1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_基礎平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(寸法位置L2, -基礎_BXLi) + "]\[寸:" + FD3(0, 基礎_BXLi, -補L2) + "|" + FD3(0, 土木橋脚_柱.BXR, -補L2) + "|" + FD3(0, 基礎_BXRi - 土木橋脚_柱.BXR, 0) + "]"
          
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            Print #60, "[dot:]"
            For ii = 1 To 杭位置_Data数
                 X0 = 杭位置_X(ii): Y0 = 杭位置_Y(ii): DD = 杭位置_径(ii)
                 角度 = Calu角度(0, 0, X0, Y0): RR = Sqr(X0 ^ 2 + Y0 ^ 2)
                 
                 X0 = RR * Dcos(角度 + 90): Y0 = RR * Dsin(角度 + 90)
                 '* 2002.11.13
                 Select Case Y0
                 Case Is > 0:
                 Case 0:     Print #60, "[P:" + FD2(X0, Y0) + "]\[Arc1:" + FD3(DD / 2, 180, 360) + "]"
                 Case Else:  Print #60, "[P:" + FD2(X0, Y0) + "]\[Cir:" + FD1(DD / 2) + "]"
                 End Select
                 Next ii
            Print #60, "[con:]"
     
     
      
      '[[[ 鉄筋 F11 (FX1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1"): i2 = 1: Y0 = -鉄筋L_YL / 2
               鉄筋径$ = 鉄筋_径$:
               For ii = 1 To 基礎_FX_部品数i(1):          X0 = 基礎_BYLi - 鉄筋P_位置(ii)
                     Select Case i2
                     Case 1:      D1$ = 橋脚_基礎("FX1平面"): i2 = 2
                     Case Else:   D1$ = 橋脚_基礎("FX1平面R"): i2 = 1
                     End Select
                     '*2002.10.28
                     Call P_橋脚_鉄筋図("標準", "", "V", "R", X0, Y0)
                     Next ii
       
       
       
       
       Print #60, "[色:白]"
      '[[[ 鉄筋 F11 (FX1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1"):
               Yn = Int(1 * 鉄筋P_Σ数 / 3):   Y0 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1")
               D01$ = "": 鉄筋n = 0
               X0 = 基礎_BYLi - 鉄筋P_位置(1)
               For ii = 1 To 鉄筋P_Σ数:        X1 = 基礎_BYLi - 鉄筋P_位置(ii)
                     鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                     D01$ = D01$ + "+" + F9(-Lpit): X9 = X1
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   XLL = -X9 + 基礎_BYLi + Mark_L1
                   Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
      
      '[[[ 鉄筋 F11 寸法 ]]]
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1")
                  寸法位置D2 = 寸法位置D1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 補D1 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(-基礎_BYRi, 寸法位置D2) + "]"
                        D11$ = "  [寸:"
                          
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): ' If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else: Moj$ = Moj$ + "|"
                              End Select
                              
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, 補D2) + "," + Moj$
                              Next ii
                    Print #60, D11$
      
      
      '[[[ 鉄筋 F12,F13 (FX2,FX3) ]]]
                '         F12=D32_K127_@124+126+80x126_B5655+W+4655_HF+2746                           'X 上鉄筋  @ﾋﾟｯﾁは側面から
                '         F13=D32_B5655+W+4655_HF+2746～2246                                          'X 上鉄筋  @ﾋﾟｯﾁは F12 で定義
               
            Print #60, "[色:黄]\[ﾚ:主筋]"
            Print #60, "[色:白]\[ﾚ:主筋]"
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX2"): Y0 = 0 'Y0 = 鉄筋L_YL / 2
               i2 = 1
               For ii = 1 To 基礎_FX上筋_∑数i:     X0 = 基礎_BYRi - 鉄筋P_位置(ii)
                     '  FX3=""  の場合 FX2 を使用する
                    Select Case 基礎_FX上筋_Tyi(ii)
                        Case 1
                                    Select Case ii - 2 * Int(ii / 2)
                                    Case 1:    D1$ = 橋脚_基礎("FX2平面")
                                    Case Else:  D1$ = 橋脚_基礎("FX2平面R")
                                    End Select
                                    Call P_橋脚_鉄筋図("標準", "杭", "V", "", X0, Y0)
                     
                        Case 2
                                    Select Case ii - 2 * Int(ii / 2)
                                    Case 1:    D1$ = 橋脚_基礎("FX3平面")
                                    Case Else:  D1$ = 橋脚_基礎("FX3平面R")
                                    End Select
                                    Call P_橋脚_鉄筋図("標準", "杭", "V", "", X0, Y0)
                     
                    End Select
                    Next ii
      
      
      '[[[ 鉄筋 F12 (FX2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1"):
               Yn = Int(3 * 鉄筋P_Σ数 / 4):   Y0 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX2")
               
               D01$ = "": 鉄筋n = 0
               X0 = 0: X9 = -基礎_BYRi: X00 = -基礎_BYRi
               For ii = 1 To 基礎_FX上筋_∑数i:     X1 = 基礎_FX上筋_Xi(ii)
                     Select Case 基礎_FX上筋_Tyi(ii)
                     Case 1:   Lpit = X1 - X9
                               D01$ = D01$ + "+" + F9(Lpit): X9 = X1: If X0 = 0 Then X0 = X1
                     Case 2
                     End Select
                     Next ii
                   
                   Print #60, "[P:" + FD2(X00, Y0) + "]\[<:0," + Mid(D01$, 2) + ",*]"
                   XLL = X9 + 基礎_BYLi + Mark_L1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
      
      
      
      '[[[ 鉄筋 F13 (FX3) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               If 橋脚_基礎("FX3") <> "" Then
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1"):
               Yn = Int(2 * 鉄筋P_Σ数 / 3):   Y0 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               
               D01$ = "": D02$ = "": X0 = 0: X9 = -基礎_BYRi: X00 = -基礎_BYRi
               For ii = 1 To 基礎_FX上筋_∑数i:           X1 = 基礎_FX上筋_Xi(ii)
                     Select Case 基礎_FX上筋_Tyi(ii)
                     Case 1
                     Case 2:   Lpit = X1 - X9
                               D01$ = D01$ + "+" + F9(Lpit): X9 = X1: If X0 = 0 Then X0 = X1
                     End Select
                     Next ii
                   
                   D1$ = 橋脚_基礎("FX3")
                   Print #60, "[P:" + FD2(X00, Y0) + "]\[<:0," + Mid(D01$, 2) + ",*]"
                   XLL = X9 + 基礎_BYLi + Mark_L1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
             End If
       
       
      
      
      '[[[ 鉄筋 F12,F13 寸法 ]]]
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2"):
                  寸法位置3 = 寸法位置2 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 補2 - 橋脚_寸法線_Pit_躯体図 - 2
                  Print #60, "  [P:" + FD2(-基礎_BYRi, 寸法位置3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else:         Moj$ = Moj$ + "|"
                              End Select
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補3) + "," + Moj$
                              Next ii
                    Print #60, D11$
     
     
     
     
      '[[[ 鉄筋 F1 (FY1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
                '     F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y 底鉄筋  @ﾋﾟｯﾁは側面から
               
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               鉄筋径$ = 鉄筋_径$:
               For ii = 1 To 基礎_FY_部品数i(1):        Y0 = -基礎_BXLi + 鉄筋P_位置(ii)
                     If Y0 >= 0 Then Exit For
                     Call P_橋脚_鉄筋図("標準", "", "V", "R", -鉄筋L_Xcen, Y0)
                     Next ii
       
       Print #60, "[色:白]"
      '[[[ 鉄筋 F1 (FY1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FX1"):
               Xn = Int(2 * 鉄筋P_Σ数 / 3):   X0 = 基礎_BYRi - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               D01$ = "": 鉄筋n = 0
               Y0 = -基礎_BXLi + 鉄筋P_位置(1)
               For ii = 1 To 鉄筋P_Σ数:        Y1 = -基礎_BXLi + 鉄筋P_位置(ii)
                     If Y1 >= 0 Then Exit For
                     鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                     D01$ = D01$ + "+" + F9(-Lpit): Y9 = Y1
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   YLL = 基礎_BXLi - Y9 + Mark_D1
                   Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
      
      '[[[ 鉄筋 F1 (FY1) 寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 補L2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(寸法位置L3, -基礎_BXLi) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else:         Moj$ = Moj$ + "|"
                              End Select
                              
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補L3) + "," + Moj$
                              Next ii
                              D11$ = D11$ + FD3(0, 基礎_BXi - 鉄筋P_位置(鉄筋P_Σ数), 0) + ",,R=7]"
                    Print #60, D11$
     
     
      '[[[ 鉄筋 F2 (FY2) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
                  '       F2=D32_K95_@95+155+80x125+155_B3563+1092+W+2092+3563_HF+2232+500            'Y 上鉄筋  @ﾋﾟｯﾁは側面から
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2"): i2 = 1
               鉄筋径$ = 鉄筋_径$:
               橋脚_鉄筋θ = 0
               For ii = 基礎_FY_部品数i(2) To 1 Step -1:         Y0 = -基礎_BXLi + 鉄筋P_位置(ii)
                     If Y0 < 0 Then Exit For
                     Select Case i2
                     Case 1:      D1$ = 橋脚_基礎("FY2平面"): i2 = 2
                     Case Else:   D1$ = 橋脚_基礎("FY2平面R"): i2 = 1
                     End Select
                     Call P_橋脚_鉄筋図("標準", "杭", "V", "R", -鉄筋L_Xcen, Y0)
                     Next ii
     
     
      '[[[ 鉄筋 F2 (FY2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FX1"):
               Xn = Int(1 * 鉄筋P_Σ数 / 3):   X0 = 基礎_BYRi - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               D01$ = "": 鉄筋n = 0
               Y0 = -基礎_BXLi
               For ii = 1 To 鉄筋P_Σ数:        Y1 = -基礎_BXLi + 鉄筋P_位置(ii)
                     If Y1 >= 0 Then
                         鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                         D01$ = D01$ + "+" + F9(Lpit): If Y0 < 0 Then Y0 = Y1
                          End If
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90," + Mid(D01$, 2) + ",-]"
                   YLL = 基礎_BXRi - Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
     
     
       Print #60, "[色:空]"
       'Print #60, "[色:紫]"
      '[[[ 鉄筋 St    (f1) ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"

           ' 線路方向 | 配筋  f1
                Call 橋脚_鉄筋_ck("*", "帯筋", 基礎_St_線路方向_部品s):
                
                D1$ = 橋脚_基礎("St線路方向"): LLL2 = 基礎_St_線路方向_部品_Bi
                Call 橋脚_鉄筋_Pit_ck(基礎_St_線路方向_Pits)
                Zure = -20
                For i1 = 1 To 鉄筋P_Σ数: X0 = -基礎_BYRi + 鉄筋P_位置(i1): X2 = 基礎_BYLi - 鉄筋P_位置(i1)
                     
                     D1s = 基礎_St_線路方向_割付Pits(基礎_St_線路方向_配置i(i1))
                     Call 橋脚_鉄筋_X位置_ck(D1s)
                     
                     For i2 = 2 To 鉄筋X位置_Σ数 Step 2
                          Moj$ = "": LLLB = LLL2
                          Y1 = -基礎_BXLi + 鉄筋X位置_位置(i2 - 1) - 基礎_St_線路方向_部品_関係径i / 2
                          If Y1 > 0 Then Exit For
                          If Y1 + LLL2 > 0 Then Moj$ = ",L": LLLB = -Y1
                          Print #60, "[P:" + FD2(X0 + Zure, Y1) + "]\[皿2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                          Print #60, "[P:" + FD2(X2 + Zure, Y1) + "]\[皿2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                     
                          If Moj <> "" Then Exit For
                          Next i2
                    Next i1


           ' 直角方向 --- 配筋 f2
                D1$ = 橋脚_基礎("St直角方向"): LLLB = 基礎_St_直角方向_部品_Bi
                Call 橋脚_鉄筋_Pit_ck(基礎_St_直角方向_Pits)
                Zure = -20
                For i1 = 1 To 鉄筋P_Σ数: Y0 = -基礎_BXLi + 鉄筋P_位置(i1)
                     D1s = 基礎_St_直角方向_割付Pits(基礎_St_直角方向_配置i(i1))
                     Call 橋脚_鉄筋_X位置_ck(D1s)
                     
                     For i2 = 2 To 鉄筋X位置_Σ数 Step 2
                          Moj$ = ""
                          X1 = 基礎_BYRi - 鉄筋X位置_位置(i2 - 1) + 基礎_St_直角方向_部品_関係径i / 2 - LLLB
                          
                          Print #60, "[P:" + FD2(X1, Y0 + Zure) + "]\[皿2:" + FD4(LLLB, 0, 1.5, 45) + Moj$ + "]"
                     
                     
                          Next i2
                    Next i1
       
       
       
       Print #60, "[色:白]"
     
'     End With '''''''''''''''' nagase
     End Sub


Function P_FH_個数(項目$)
     '  項目$="f1"  f1数   項目$="f2"  f2数
     
     With 土木橋脚_基礎
               橋脚θ = 橋脚_鉄筋θ
               橋脚_鉄筋θ = 180:   D1$ = 橋脚_基礎("FX2")
               YRR = 鉄筋L_YL / 2
               橋脚_鉄筋θ = 0: D1$ = 橋脚_基礎("FH1"): LLL2 = 鉄筋L_YL: ' 基縦筋幅 実長
               
               橋脚_鉄筋θ = 橋脚θ
               D1$ = 橋脚_基礎("Fpit")
                    鉄筋pit = 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 + 基縦筋.鉄筋間隔X2)
                    LLL1 = 基縦筋.Y鉄筋pit * 基縦筋.鉄筋間隔X1: ' 基縦筋幅
               'Zure = -20
               X01 = 土木橋脚_柱.BYL: X02 = -土木橋脚_柱.BYR:
               
               i2 = 1: f1数 = 0: f2数 = 0
               For ii = 1 To 鉄筋P_Σ数
                   X0 = -基礎_BYRi + 鉄筋P_位置(ii):    Y1 = -基礎_BXLi + 基縦筋.Start_X - (LLL2 - LLL1) / 2:
                   
                   Select Case i2
                   Case 1:
                      Do
                           Moj$ = "": LLLB = LLL2
                           If Y1 + LLL2 > YRR Then Exit Do
                           Select Case X0
                           Case Is > X01: f2数 = f2数 + 1
                           Case Is > X02:
                                       Select Case Y1
                                       Case Is <= -土木橋脚_柱.BXL - LLL2: f1数 = f1数 + 1
                                       Case Is <= 土木橋脚_柱.BXR: Moj$ = "*"
                                       Case Else: f1数 = f1数 + 1
                                       End Select
                                       
                           
                           Case Else: f2数 = f2数 + 1
                           End Select
                           'If Moj$ = "" Then Print #60, "[P:" + FD2(X0 + Zure, Y1) + "]\[皿2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y1 = Y1 + 鉄筋pit
                           Loop
                           i2 = 2
                 Case Else:
                       Y2 = -基礎_BXLi + 基縦筋.Start_X + 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 - 基縦筋.鉄筋間隔X3) - (LLL2 - LLL1) / 2:
                      Do
                           Moj$ = "": LLLB = LLL2
                           If Y2 + LLL2 > YRR Then Exit Do
                           Select Case X0
                           Case Is > X01: f2数 = f2数 + 1
                           Case Is > X02:
                                       Select Case Y2
                                       Case Is <= -土木橋脚_柱.BXL - LLL2: f1数 = f1数 + 1
                                       Case Is <= 土木橋脚_柱.BXR: Moj$ = "*"
                                       Case Else: f1数 = f1数 + 1
                                       End Select
                           Case Else: f2数 = f2数 + 1
                           End Select
                           'If Moj$ = "" Then Print #60, "[P:" + FD2(X0 + Zure, Y2) + "]\[皿2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y2 = Y2 + 鉄筋pit
                           Loop
                           i2 = 1
                 End Select
                 Next ii
              End With
              
              Select Case UCase(項目$)
              Case "F1": P_FH_個数 = f1数
              Case Else: P_FH_個数 = f2数
              End Select
    
    End Function






Sub SP_基礎_断面A_作図()
     
     Dim 捨conti As Single
     捨conti = 基礎_捨con_t / 現作図_Scale
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
          杭H = 12 * 現作図_Scale
     
'     With 土木橋脚_基礎 '''''''''''''''' nagase
     
       If 基礎_BYL端i = 0 Then 基礎勾配 = 0 Else 基礎勾配 = 基礎_HUi / 基礎_BYL端i:
       基礎角度 = Calu角度(0, 0, 基礎_BYL端i, 基礎_HUi)
       
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 12 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 15 * 現作図_Scale
                 Mark_R1 = 15 * 現作図_Scale
       
     
      '[[[ 格図名 ]]]
         Y0 = 基礎_Hi + (寸法線位置_基礎A断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ａ－Ａ鉄筋配筋図")
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[P:" + FD2(-基礎_BYRi, 0) + "]\[L:" + FD2(0, 基礎_HDi) + "|" + FD2(基礎_BYR端i, 基礎_HUi) + "|" + FD2(基礎_BYR柱i - 土木橋脚_柱.BYR, 0) + "|" + FD2(0, 400) + "]"
         Print #60, "[p:-50,0]\[切断M1:" + FD4(土木橋脚_柱.BY + 100, 0, 5, 3) + "]"
         Print #60, "[P:" + FD2(基礎_BYLi, 0) + "]\[L:" + FD2(0, 基礎_HDi) + "|" + FD2(-基礎_BYL端i, 基礎_HUi) + "|" + FD2(-基礎_BYL柱i + 土木橋脚_柱.BYL, 0) + "|" + FD2(0, 400) + "]"
         Print #60, "[dot:]\[P:" + FD2(-土木橋脚_柱.BYR, 基礎_Hi) + "]\[L:" + FD2(土木橋脚_柱.BY, 0) + "]\[con:]"
         Print #60, "   [P0:]\[L:" + FD2(-基礎_BYRi - 基礎_捨con_t, 0) + "|" + FD2(0, -基礎_捨con_t) + "|" + FD2(基礎_BYi + 2 * 基礎_捨con_t, 0) + "|" + FD2(0, 基礎_捨con_t) + "|" + FD2(-基礎_BYRi - 基礎_捨con_t, 0) + "]"
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 基礎_Hi + 寸法線位置_基礎A断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_基礎A断面.U開き - 1 + 基礎_HUi / 現作図_Scale
                  Print #60, "[P:" + FD2(-基礎_BYLi, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(基礎_BYi, 0, -補1) + "]"
          
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_基礎A断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  補21 = 寸法線位置_基礎A断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1 - 400 / 現作図_Scale
                  Print #60, "[P:" + FD2(-基礎_BYLi, 寸法位置2) + "]"
                  D1$ = "[寸:" + FD3(基礎_BYR端i, 0, -補2) + "|" + FD3(基礎_BYR柱i - 土木橋脚_柱.BYR, 0, -補21) + "|"
                  D1$ = D1$ + FD3(土木橋脚_柱.BY, 0, -補21) + "|" + FD3(基礎_BYL柱i - 土木橋脚_柱.BYL, 0, -補2) + "|" + FD3(基礎_BYL端i, 0, 0) + "]"
                  Print #60, D1$
          
          ' D寸法
                  寸法位置D1 = -寸法線位置_基礎A断面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_基礎平面.D開き - 1 - 捨conti
                  Print #60, "[P:" + FD2(-基礎_BYLi, 寸法位置D1) + "]\[寸:" + F9(補D1) + ":" + FD3(基礎_BYi, 0, 補D1) + "]"
          
          ' L寸法
                  寸法位置L1 = -基礎_BYRi - 寸法線位置_基礎A断面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_基礎A断面.L開き - 1
                  補L11 = 寸法線位置_基礎A断面.L開き - 1 + 基礎_BYR端i / 現作図_Scale
                  Print #60, "[P:" + FD2(寸法位置L1, 0) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, 基礎_Hi, -補L11) + "]"
          
                  If 基礎_HUi = 0 Then
                       寸法位置L2 = 寸法位置L1
                       Else
                       寸法位置L2 = 寸法位置L1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                       補L2 = 寸法線位置_基礎A断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                       Print #60, "[P:" + FD2(寸法位置L2, 0) + "]\[寸:" + FD3(0, 基礎_HDi, -補L2) + "|" + FD3(0, 基礎_HUi, 0) + "]"
                       End If
      '[[[ 杭 ]]]
            Dim P_cki(10) As Integer, PWi As Integer
            For ii = 1 To 10: P_cki(ii) = 0: Next ii
            Print #60, "[色:白]\[ﾚ:躯体]"
            Y1 = -基礎_捨con_t: Y2 = -基礎_捨con_t - 杭H
            
           For ii = 1 To 杭位置_Data数
                 PWi = 0: X0 = 杭位置_Y(ii):  Y00 = 杭位置_X(ii)
                 For i2 = 1 To 杭位置_Y個数:
                     If X0 = 杭位置_Ypos(i2) Then If P_cki(i2) = 0 Then PWi = 1: P_cki(i2) = 1
                     Next i2
                 If PWi = 1 Then
                       X0 = -X0: DD = 杭位置_径(1) / 2
                       X1 = X0 - DD: X2 = X0 + DD
                       Select Case Y00
                       Case 杭位置_X(1)
                             Print #60, "[P:" + FD2(X1, 0) + "]\[dot:]\[L:" + FD2(0, -基礎_捨con_t) + "]\[con:]\[L:" + FD2(0, -杭H) + "]"
                             Print #60, "[P:" + FD2(X2, 0) + "]\[dot:]\[L:" + FD2(0, -基礎_捨con_t) + "]\[con:]\[L:" + FD2(0, -杭H) + "]"
                             Print #60, "[切断～1:" + FD5(X1, Y2, X2, Y2, 90) + "]"
                       
                       Case Else
                             Print #60, "[P:" + FD2(X1, 0) + "]\[dot:]\[L:" + FD2(0, -基礎_捨con_t) + "]\[dot:]\[L:" + FD2(0, -杭H) + "]"
                             Print #60, "[P:" + FD2(X2, 0) + "]\[dot:]\[L:" + FD2(0, -基礎_捨con_t) + "]\[dot:]\[L:" + FD2(0, -杭H) + "]"
                             Print #60, "[切断～1:" + FD5(X1, Y2, X2, Y2, 90) + "]"
                       End Select

                       Y2 = -基礎_捨con_t - 杭H
                       Call P_橋脚_Center_Line(X0, 0, X0, Y2, 0, 0)
                       End If
                 Next ii
            
            Print #60, "[con:]"
     
      '[[[ 杭 寸法 ]]]
                  寸法位置D2 = 寸法位置D1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 補D1 - 橋脚_寸法線_Pit_躯体図
            
                  Print #60, "  [P:" + FD2(基礎_BYLi, 寸法位置D2) + "]"
                        D11$ = "  [寸:":   XL1 = -基礎_BYLi
                        For ii = 杭位置_Y個数 To 1 Step -1
                              LL1 = XL1 - 杭位置_Ypos(ii): XL1 = 杭位置_Ypos(ii)
                              D11$ = D11$ + FD3(LL1, 0, 補D2) + "|"
                              Next ii
                              D11$ = D11$ + FD3(XL1 - 基礎_BYRi, 0, 0) + "]"
                    Print #60, D11$
     
      '[[[ 鉄筋 F1 (FY1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               Call P_橋脚_鉄筋図("標準", "", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen + 鉄筋_SK位置)
     
      '[[[ 鉄筋 F1 (FY1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               Xn = Int(2 * 鉄筋P_Σ数 / 3) + 2
               X1 = 基礎_BYRi - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               鉄筋被り = 鉄筋_SK位置
               Print #60, "[P:" + FD2(X1, 鉄筋被り) + "]\[<:270,0]\[L:" + FD2(0, -Mark_D1 - 鉄筋被り) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
   
      
      '[[[ 鉄筋 F2 (FY2) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               '       F2=D32_K95_@95+155+40x125+40x125+155_B3563+1092+W+2092+3563_HF+2328+297.8      'Y 上鉄筋  @ﾋﾟｯﾁは側面から
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
            '   Y0 = 基礎_Hi - 基礎_FY_Hi(2) - 基礎_傾斜_h1 + 基礎_FY_Zi(2)
               Y0 = 基礎_Hi - 基礎_FY_Hi(2) - 基礎_傾斜_h1 - 基礎_FY_dti(2)
               
               Call P_橋脚_鉄筋図("標準", "杭", "", "", -鉄筋L_Xcen, Y0)
     
      
      
      '[[[ 鉄筋 F2 (FY2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               Xn = Int(鉄筋P_Σ数 / 2) + 4
               X1 = 基礎_BYRi - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               鉄筋横被り = 鉄筋_横被り
               鉄筋被り = 鉄筋_SK位置 * Dcos(基礎角度): Y0 = 基礎_Hi - 鉄筋被り
               Print #60, "[P:" + FD2(X1, Y0) + "]\[<:90]\[L:" + FD2(0, Mark_U1 + 鉄筋被り) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
      
             '[[[ 鉄筋 F2 (FY2) 上 被ﾘ 寸法 ]]]
                              橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
                              表示X = 鉄筋P_位置(7) + (鉄筋P_位置(6) - 鉄筋P_位置(5)) / 2
                     橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                     基礎勾配α = Calu角度(0, 0, 基礎_BYR端i, 基礎_HUi)
                     鉄筋被り = 鉄筋_SK位置: Moj$ = F9(鉄筋被り)
                     LLL = 表示X
                     DXL = 鉄筋被り * Dsin(基礎勾配α): DYL = 鉄筋被り * Dcos(基礎勾配α)
                     X1 = 基礎_BYRi - LLL - DXL: Y1 = 基礎_HDi + LLL * 基礎勾配 - DYL
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[寸:" + FD3(DXL, DYL, 0) + "," + Moj$ + ",RL=7]"
             
             '[[[ 鉄筋 F2 (FY2) 横被ﾘ 寸法 ]]]
                     鉄筋横被り = 基礎_傾斜_K3: Y1 = FP_Zi_基礎_FX4(1) ' 基礎_HDi - 250
                     Print #60, "[P:" + FD2(基礎_BYLi - 鉄筋横被り, Y1) + "]\[寸:" + FD3(鉄筋横被り, 0, 0) + ",,RL=7]"
      
      
      
      
      '[[[ 鉄筋 F11 (FX1) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
               '        F11=D32_K127_@124+126+80x126_BF+10014+F                                     'X 底鉄筋  @ﾋﾟｯﾁは側面から
               
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               鉄筋径$ = 鉄筋_径$: Y0 = 鉄筋_SK位置
               For ii = 1 To 基礎_FX_部品数i(1):        X0 = 鉄筋P_位置(ii) - 基礎_BYRi
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      '[[[ 鉄筋 F11 寸法 ]]]
                  寸法位置D3 = 寸法位置D2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D3 = 補D2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(-基礎_BYRi, 寸法位置D3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数:   Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else:         Moj$ = Moj$ + "|"
                              End Select
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, 補D3) + "," + Moj$
                              Next ii
                    Print #60, D11$
                        
      '[[[ 鉄筋 F12,F13 (FX2,FX3) ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '         F12=D32_K127_@124+126+80x126_B5655+W+4655_HF+2746                           'X 上鉄筋  @ﾋﾟｯﾁは側面から
                '         F13=D32_B5655+W+4655_HF+2746～2246                                          'X 上鉄筋  @ﾋﾟｯﾁは F12 で定義
               
               
               '橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                '      鉄筋D_F2 = Val(Mid(鉄筋_径$, 2))
               
               X01 = -基礎_BYRi: X02 = 基礎_BYLi
               鉄筋勾配 = 基礎勾配
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX3")
               鉄筋径3$ = 鉄筋_径$: 鉄筋被り3 = 鉄筋_SK位置 * Dcos(基礎角度): DY3 = 鉄筋被り3
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX2")
               鉄筋径2$ = 鉄筋_径$: 鉄筋被り2 = 鉄筋_SK位置 * Dcos(基礎角度): DY2 = 鉄筋被り2
               
               X1 = 基礎_BYR端i - 基礎_BYRi: X2 = 基礎_BYLi - 基礎_BYL端i
               For ii = 1 To 基礎_FX上筋_∑数i:   X0 = 鉄筋P_位置(ii) - 基礎_BYRi:     鉄筋径$ = 鉄筋径3$: DY = DY3
                     Select Case X0
                     Case Is < X1:   DY1 = (X0 - X01) * 鉄筋勾配: Y0 = 基礎_HDi + DY1 - DY: '+ 鉄筋D_F2 / 2
                     Case Is < X2:   鉄筋径$ = 鉄筋径2$: DY = DY2
                                     Y0 = 基礎_Hi - DY: ' + 鉄筋D_F2 / 2
                     Case Else:      DY1 = (X02 - X0) * 鉄筋勾配: Y0 = 基礎_HDi + DY1 - DY: '+ 鉄筋D_F2 / 2
                     End Select
                     
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
  
      '[[[ 鉄筋 F12,F13 寸法 ]]]
                  寸法位置U3 = 基礎_Hi + 寸法線位置_基礎A断面.U開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補U3 = 寸法線位置_基礎平面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 2
                  Print #60, "  [P:" + FD2(-基礎_BYRi, 寸法位置U3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数:  Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else:         Moj$ = Moj$ + "|"
                              End Select
                              
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補U3) + "," + Moj$
                              Next ii
                    Print #60, D11$
       
      '[[[ 鉄筋 F14 (FX4) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
               '         F3=D19_K85_@300+9x200_B10361_H190                                               'Y 側鉄筋  @ﾋﾟｯﾁは下から
               '橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                '      鉄筋D_F2 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FX4")
               鉄筋径$ = 鉄筋_径$: 鉄筋被り = 鉄筋_SK位置:
             '  X1 = -.BYR + 鉄筋被り + 鉄筋D_F2 / 2: X2 = .BYL - 鉄筋被り - 鉄筋D_F2 / 2
               X1 = -基礎_BYRi + 鉄筋被り: X2 = 基礎_BYLi - 鉄筋被り
               For ii = 1 To 鉄筋P_Σ数:     Y0 = 鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Print #60, "[P:" + FD2(X2, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
      
      '[[[ 鉄筋 F14 (FX4)  Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               '橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                '      鉄筋D_F2 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FX4")
               鉄筋径$ = 鉄筋_径$: 鉄筋被り = 鉄筋_SK位置:
              ' X1 = -.BYR + 鉄筋被り + 鉄筋D_F2 / 2: X2 = .BYL - 鉄筋被り - 鉄筋D_F2 / 2
               X1 = -基礎_BYRi + 鉄筋被り: X2 = 基礎_BYLi - 鉄筋被り
               XL = 15 * 現作図_Scale: YL = 5 * 現作図_Scale
               For ii = 1 To 鉄筋P_Σ数:     Y1 = 鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-XL, -YL) + "]"
                     Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(XL, -YL) + "]"
                     Next ii
               X01 = X1 - XL: X02 = X2 + XL
               Y01 = 鉄筋P_位置(鉄筋P_Σ数) - YL
               YLL = Y01 + Mark_D1
                     Print #60, "[P:" + FD2(X01, Y01) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(2)
                     Print #60, "[P:" + FD2(X02, Y01) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                     Call P_鉄筋_○名称(2)
      
      
      
      '[[[ 鉄筋 F14 寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 補L2 - 橋脚_寸法線_Pit_躯体図
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FX4")
                  Print #60, "  [P:" + FD2(寸法位置L3, 0) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): 'If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補L3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, 基礎_HDi - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
                    Print #60, D11$
       
      '[[[ 鉄筋 St線路方向 作図  f1 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                Y0 = 基礎_St_線路方向_部品_dti
                i2 = 1
                For ii = 1 To 基礎_St_線路方向_Pit数i: X0 = -基礎_BYRi + 基礎_St_線路方向_Pit_Yi(ii): X2 = 基礎_BYLi - 基礎_St_線路方向_Pit_Yi(ii)
                    DXL = Val(Mid(鉄筋_径$, 2)) / 2
                    LLY = 基礎_St_線路方向_部品_Y位置_Hi(ii)

                      Select Case i2
                      Case 1:       Print #60, "[con:]": i2 = 2
                      Case Else:     Print #60, "[dot:]": i2 = 1
                      End Select


                    Print #60, "[P:" + FD2(X0 - DXL, Y0) + "]\[L:" + FD2(0, LLY) + "]"
                    Print #60, "[P:" + FD2(X2 - DXL, Y0) + "]\[L:" + FD2(0, LLY) + "]"

                    Next ii

      '[[[ 鉄筋 St直角方向 作図  f2 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("St直角方向")
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_直角方向_割付Pits(1))
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          X0 = 基礎_BYRi - 鉄筋X位置_位置(ii - 1): Y0 = 鉄筋_SK位置 - 2 * 鉄筋L_Ycen
                          X0 = X0 + 基礎_St_直角方向_部品_関係径i / 2
                          Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
                          Next ii

                     Print #60, "[dot:]"
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_直角方向_割付Pits(2))
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          X0 = 基礎_BYRi - 鉄筋X位置_位置(ii - 1): Y0 = 鉄筋_SK位置 - 2 * 鉄筋L_Ycen
                          X0 = X0 + 基礎_St_直角方向_部品_関係径i / 2
                          Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
                          Next ii
                     Print #60, "[con:]"


               
      '[[[ 鉄筋 St線路方向   Mark  f1 ]]]
       Print #60, "[con:]\[色:白]"

                Y0 = FP_Zi_基礎_FX4(2)
                X01 = -基礎_BYRi: X02 = 基礎_BYLi
                D1$ = 橋脚_基礎("St線路方向")
                Call 橋脚_鉄筋_Pit_ck(基礎_St_線路方向_Pits)
                    DXL = Val(Mid(鉄筋_径$, 2)) / 2
                X0 = -基礎_BYRi + 鉄筋P_位置(1): X9 = -基礎_BYRi: D01$ = ""
                For i1 = 1 To 鉄筋P_Σ数: X1 = -基礎_BYRi + 鉄筋P_位置(i1):
                    X1 = X1 - DXL: 鉄筋pit = X1 - X9:
                    D01$ = D01$ + "+" + F9(鉄筋pit):   X9 = X1
                    Next i1
                Print #60, "[P:" + FD2(-基礎_BYRi, Y0) + "]\[<:0," + Mid(D01$, 2) + ",*]"
                XLL = -X0 + 基礎_BYRi + Mark_R1
                Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
                Call P_鉄筋_○名称(1)

                X9 = 基礎_BYLi: D01$ = ""
                For i1 = 1 To 鉄筋P_Σ数: X2 = 基礎_BYLi - 鉄筋P_位置(i1)
                    X2 = X2 - DXL: 鉄筋pit = X2 - X9:
                    D01$ = D01$ + "+" + F9(鉄筋pit):   X9 = X2
                    Next i1
                Print #60, "[P:" + FD2(基礎_BYLi, Y0) + "]\[<:0," + Mid(D01$, 2) + ",*]"

       
      '[[[ 鉄筋 St直角方向 Mark  f2 ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"

               Y0 = FP_Zi_基礎_FX4(5)
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("St直角方向")
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_直角方向_割付Pits(1))
                     D01$ = "": X0 = 基礎_BYRi - 鉄筋X位置_位置(1) + 基礎_St_直角方向_部品_関係径i / 2: X9 = X0
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          X1 = 基礎_BYRi - 鉄筋X位置_位置(ii - 1) + 基礎_St_直角方向_部品_関係径i / 2
                          
                          鉄筋pit = X1 - X9:  D01$ = D01$ + FP1(鉄筋pit):  X9 = X1
                          Next ii

                     Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                     
                     X01 = X1

                     Call 橋脚_鉄筋_X位置_ck(基礎_St_直角方向_割付Pits(2))
                     D01$ = "": X0 = 基礎_BYRi - 鉄筋X位置_位置(1) + 基礎_St_直角方向_部品_関係径i / 2: X9 = X0
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          X1 = 基礎_BYRi - 鉄筋X位置_位置(ii - 1) + 基礎_St_直角方向_部品_関係径i / 2
                          鉄筋pit = X1 - X9:  D01$ = D01$ + FP1(鉄筋pit):  X9 = X1
                          Next ii
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                     
                     If X01 > X1 Then X01 = X1
                     XLL = -X01 + 基礎_BYRi + Mark_R1
                     Print #60, "[P:" + FD2(X01, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
                     Call P_鉄筋_○名称(1)

       
       
       Print #60, "[色:白]"
     
'     End With'''''''''''''''''' nagase

     End Sub

Sub SP_基礎_断面B_作図()
     
     Dim 捨conti As Single
     捨conti = 基礎_捨con_t / 現作図_Scale
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
          杭H = 12 * 現作図_Scale
     
'     With 土木橋脚_基礎 '''''''''''''' nagase
     
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 7 * 現作図_Scale
                 Mark_R1 = 5 * 現作図_Scale
     
      '[[[ 格図名 ]]]
         X0 = -基礎_Hi - (寸法線位置_基礎B断面.L開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(X0, 0, 90, "断面Ｂ－Ｂ鉄筋配筋図")
      
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[con:]"
         Print #60, "[P:" + FD2(0, -基礎_BXLi) + "]\[L:" + FD2(-基礎_Hi, 0) + "|" + FD2(0, 基礎_BXLi - 土木橋脚_柱.BXL) + "|" + FD2(-400, 0) + "]"
         Print #60, "[p:0,-50]\[切断M1:" + FD4(0, 土木橋脚_柱.BX + 100, 5, 3) + "]"
         Print #60, "[P:" + FD2(0, 基礎_BXRi) + "]\[L:" + FD2(-基礎_Hi, 0) + "|" + FD2(0, -基礎_BXRi + 土木橋脚_柱.BXR) + "|" + FD2(-400, 0) + "]"
         
         Print #60, "[dot:]\[P:" + FD2(-基礎_Hi, -土木橋脚_柱.BXL) + "]\[L:" + FD2(0, 土木橋脚_柱.BX) + "]\[con:]"
         If 基礎_HUi > 0 Then Print #60, "[dot:]\[P:" + FD2(-基礎_HDi, -基礎_BXLi) + "]\[L:" + FD2(0, 基礎_BXi) + "]\[con:]"
         
         
         Print #60, "   [P0:]\[L:" + FD2(0, -基礎_BXLi - 基礎_捨con_t) + "|" + FD2(基礎_捨con_t, 0) + "|" + FD2(0, 基礎_BXi + 2 * 基礎_捨con_t) + "|" + FD2(-基礎_捨con_t, 0) + "|" + FD2(0, -基礎_BXRi - 基礎_捨con_t) + "]"
     
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 基礎_BXRi + 寸法線位置_基礎B断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_基礎B断面.U開き - 1
                  Print #60, "[P:" + FD2(-基礎_Hi, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(基礎_Hi, 0, -補1) + "]"
          
                  If 基礎_HUi = 0 Then
                       寸法位置2 = 寸法位置1
                       Else
                       寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                       補2 = 寸法線位置_基礎B断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                       Print #60, "[P:" + FD2(-基礎_Hi, 寸法位置2) + "]\[寸:" + FD3(基礎_HUi, 0, -補2) + "|" + FD3(基礎_HDi, 0, 0) + "]"
                       End If
                  
          ' L寸法
                  寸法位置L1 = -基礎_Hi - 寸法線位置_基礎B断面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_基礎B断面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -基礎_BXLi) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, 基礎_BXi, -補L1) + "]"
          
                  寸法位置L2 = 寸法位置L1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_基礎B断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1 - 400 / 現作図_Scale
                  Print #60, "[P:" + FD2(寸法位置L2, -基礎_BXLi) + "]\[寸:" + FD3(0, 基礎_BXLi - 土木橋脚_柱.BXL, -補L2) + "|" + FD3(0, 土木橋脚_柱.BX, -補L2) + "|" + FD3(0, 基礎_BXRi - 土木橋脚_柱.BXR, 0) + "]"
     
          ' R寸法
                  寸法位置R1 = 寸法線位置_基礎B断面.R開き * 現作図_Scale
                  補R1 = 寸法線位置_基礎B断面.R開き - 1 - 捨conti
                  Print #60, "[P:" + FD2(寸法位置R1, -基礎_BXLi) + "]\[寸:" + F9(補R1) + ":" + FD3(0, 基礎_BXi, 補R1) + "]"
     
     
      '[[[ 杭 ]]]
            Dim P_cki(10) As Integer, PWi As Integer
            For ii = 1 To 10: P_cki(ii) = 0: Next ii
            Print #60, "[色:白]\[ﾚ:躯体]"
            X1 = 基礎_捨con_t: X2 = 基礎_捨con_t + 杭H
           For ii = 1 To 杭位置_Data数
                 PWi = 0: Y0 = 杭位置_X(ii):  Y00 = 杭位置_Y(ii)
                 For i2 = 1 To 杭位置_X個数:
                     If Y0 = 杭位置_Xpos(i2) Then If P_cki(i2) = 0 Then PWi = 1: P_cki(i2) = 1
                     Next i2
                 If PWi = 1 Then
                     Y0 = Y0: DD = 杭位置_径(1) / 2
                     Y1 = Y0 - DD: Y2 = Y0 + DD
                       Select Case Y00
                       Case 杭位置_Y(1)
                               Print #60, "[P:" + FD2(0, Y1) + "]\[dot:]\[L:" + FD2(基礎_捨con_t, 0) + "]\[con:]\[L:" + FD2(杭H, 0) + "]"
                               Print #60, "[P:" + FD2(0, Y2) + "]\[dot:]\[L:" + FD2(基礎_捨con_t, 0) + "]\[con:]\[L:" + FD2(杭H, 0) + "]"
                               Print #60, "[切断～1:" + FD5(X2, Y1, X2, Y2, 90) + "]"
                               Print #60, "[P:" + FD2(0, Y0) + "]\[cen:]\[L:" + FD2(基礎_捨con_t + 杭H, 0) + "]"
                       Case Else
                               Print #60, "[P:" + FD2(0, Y1) + "]\[dot:]\[L:" + FD2(基礎_捨con_t, 0) + "]\[dot:]\[L:" + FD2(杭H, 0) + "]"
                               Print #60, "[P:" + FD2(0, Y2) + "]\[dot:]\[L:" + FD2(基礎_捨con_t, 0) + "]\[dot:]\[L:" + FD2(杭H, 0) + "]"
                               Print #60, "[切断～1:" + FD5(X2, Y1, X2, Y2, 90) + "]"
                               Print #60, "[P:" + FD2(0, Y0) + "]\[cen:]\[L:" + FD2(基礎_捨con_t + 杭H, 0) + "]"
            
                       End Select
                 End If
                 Next ii
            
            Print #60, "[con:]"
     
      
      '[[[ 杭 寸法 ]]]
                  寸法位置R2 = 寸法位置R1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R2 = 補R1 - 橋脚_寸法線_Pit_躯体図

            
                  Print #60, "  [P:" + FD2(寸法位置R2, -基礎_BXLi) + "]"
                        D11$ = "  [寸:":   YL1 = -基礎_BXLi
                        For ii = 1 To 杭位置_X個数
                              LL1 = 杭位置_Xpos(ii) - YL1: YL1 = 杭位置_Xpos(ii)
                              D11$ = D11$ + FD3(0, LL1, 補R2) + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, 基礎_BXRi - YL1, 0) + "]"
                    Print #60, D11$
       
       Print #60, "[色:黄]"
      '[[[ 鉄筋 F11 (FX1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1")
               Call P_橋脚_鉄筋図("標準", "", "", "R", -鉄筋L_Xcen - 鉄筋_SK位置, -鉄筋L_Ycen)
     
      '[[[ 鉄筋 F11 (FX1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               Yn = Int(2 * 鉄筋P_Σ数 / 3):    Y1 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               Yn = Int(1 * 鉄筋P_Σ数 / 3):    Y2 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 900:  D1$ = 橋脚_基礎("FX1")
               鉄筋被り = 鉄筋_SK位置
               Print #60, "[P:" + FD2(-鉄筋被り, Y1) + "]\[<:0,0]\[L:" + FD2(Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
             '[[[ 鉄筋 F11 (FX1) 被ﾘ ]]]
                     鉄筋被り = 鉄筋_SK位置:

                     Print #60, "[P:" + FD2(-鉄筋被り, Y2) + "]\[寸:" + FD3(鉄筋被り, 0, 0) + ",,RL=7]"
      
      
      '[[[ 鉄筋 F12 (FX2) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               '          F12=D32_K127_@127+123+80x125+123_B5655+W+4655_HF+2746                           'X 上鉄筋  @ﾋﾟｯﾁは側面から
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               '鉄筋被り = 鉄筋_SK位置: X0 = -基礎_Hi + 鉄筋L_XL + 鉄筋被り
               X0 = -基礎_Hi + 基礎_FX_Hi(2) + 基礎_FX_dti(2)
               Call P_橋脚_鉄筋図("標準", "杭", "", "", X0, -鉄筋L_Ycen)
       
       
      '[[[ 鉄筋 F12 (FX2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               Yn = Int(2 * 鉄筋P_Σ数 / 3):  Y1 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               Yn = Int(1 * 鉄筋P_Σ数 / 3):  Y2 = -基礎_BXLi + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               
               橋脚_鉄筋θ = 900:  D1$ = 橋脚_基礎("FX2")
               X0 = -基礎_Hi + 鉄筋_SK位置
               Print #60, "[P:" + FD2(X0, Y1) + "]\[<:180]\[L:" + FD2(-Mark_L1, 0) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
             '[[[ 鉄筋 F12 (FX2) 被ﾘ 寸法 ]]]
                     鉄筋被り = 鉄筋_SK位置
                     Print #60, "[P:" + FD2(-基礎_Hi, Y2) + "]\[寸:" + FD3(鉄筋被り, 0, 0) + ",,LR=7]"
      
             '[[[ 鉄筋 F12 (FX2) 横被ﾘ 寸法 ]]]
                     X1 = -基礎_Hi + 250 ' -FP_Zi_基礎_FY3(1)
                     鉄筋横被り = (基礎_BXi - 鉄筋L_YL) / 2
                     Print #60, "[P:" + FD2(X1, 基礎_BXRi - 鉄筋横被り) + "]\[寸:" + FD3(0, 鉄筋横被り, 0) + ",,RL=7]"
                     Print #60, "[P:" + FD2(X1, -基礎_BXLi) + "]\[寸:" + FD3(0, 鉄筋横被り, 0) + ",,LR=7]"
      
      
      
      '[[[ 鉄筋 F1 (FY1) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                '     F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y 底鉄筋  @ﾋﾟｯﾁは側面から
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               '鉄筋D_F11 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               鉄筋径$ = 鉄筋_径$: X0 = -鉄筋_SK位置: '- 鉄筋D_F11 / 2
               For ii = 1 To 基礎_FY_部品数i(1):        Y0 = -基礎_BXLi + 鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      '[[[ 鉄筋 F1 (FY1) 寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 補L2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(寸法位置L3, -基礎_BXLi) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数:   Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else:         Moj$ = Moj$ + "|"
                              End Select
                            
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補L3) + "," + Moj$
                              Next ii
                    Print #60, D11$
       
       
      '[[[ 鉄筋 F2 (FY2) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
              '      F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y 底鉄筋  @ﾋﾟｯﾁは側面から
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               '鉄筋D_F12 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               鉄筋径$ = 鉄筋_径$: X0 = -基礎_Hi + 鉄筋_SK位置: ' + 鉄筋D_F12 / 2
               For ii = 1 To 基礎_FY_部品数i(2):        Y0 = -基礎_BXLi + 鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      '[[[ 鉄筋 F2 (FY2) 寸法 ]]]
                  寸法位置R3 = 寸法位置R2 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R3 = 補R2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(寸法位置R3, -基礎_BXLi) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数:   Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                              Select Case ii
                              Case 1:            Moj$ = Moj$ + ",L=7|"
                              Case 鉄筋P_Data数: Moj$ = Moj$ + ",R=7]"
                              Case Else:         Moj$ = Moj$ + "|"
                              End Select
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), 補R3) + "," + Moj$
                              Next ii
                    Print #60, D11$
       
       
      '[[[ 鉄筋 F3 (FY3) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
               '       F3=D19_K85_@200+9x200_B10361_H190                                               'Y 側鉄筋  @ﾋﾟｯﾁは下から
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               '鉄筋D_F12 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY3")
               鉄筋径$ = 鉄筋_径$:
               'Y1 = -.BXL + 鉄筋_SK位置 + 鉄筋D_F12 / 2: Y2 = .BXR - 鉄筋_SK位置 - 鉄筋D_F12 / 2
               Y1 = -基礎_BXLi + 鉄筋_SK位置: Y2 = 基礎_BXRi - 鉄筋_SK位置
               For ii = 1 To 鉄筋P_Σ数:        X0 = -鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X0, Y1) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Print #60, "[P:" + FD2(X0, Y2) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      
      '[[[ 鉄筋 F3 (FY3)  Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               '鉄筋D_F12 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY3")
               鉄筋径$ = 鉄筋_径$:
              ' Y1 = -.BXL + 鉄筋_SK位置 + 鉄筋D_F12 / 2: Y2 = .BXR - 鉄筋_SK位置 - 鉄筋D_F12 / 2
               Y1 = -基礎_BXLi + 鉄筋_SK位置: Y2 = 基礎_BXRi - 鉄筋_SK位置
               
               XL = 5 * 現作図_Scale: YL = 15 * 現作図_Scale
               For ii = 1 To 鉄筋P_Σ数:     X1 = -鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XL, -YL) + "]"
                     Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(XL, YL) + "]"
                     Next ii
               X01 = -鉄筋P_位置(鉄筋P_Σ数) + XL
               Y01 = Y1 - YL: Y02 = Y2 + YL
               XLL = -X01 + 25 * 現作図_Scale
                     Print #60, "[P:" + FD2(X01, Y01) + "]\[L:" + FD2(XLL, 0) + "]\[pm:" + FD2(-19, 0) + "]"
                     Call P_鉄筋_○名称(2)
                     Print #60, "[P:" + FD2(X01, Y02) + "]\[L:" + FD2(XLL, 0) + "]\[pm:" + FD2(-19, 0) + "]"
                     Call P_鉄筋_○名称(2)
      
      '[[[ 鉄筋 F3 (FY3) 寸法 ]]]
                  寸法位置3 = 寸法位置2 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 補2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(0, 寸法位置3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): 'If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(-鉄筋P_L(ii), 0, -補3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(-(基礎_HDi - 鉄筋P_位置(鉄筋P_Σ数)), 0, 0) + "]"
                    Print #60, D11$
       
       
       
       
      '[[[ 鉄筋 St線路方向 作図  f1  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("St線路方向")
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_線路方向_割付Pits(1))
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          X0 = -鉄筋_SK位置 - 2 * 鉄筋L_Xcen: Y0 = -基礎_BXLi + 鉄筋X位置_位置(ii - 1) - 基礎_St_線路方向_部品_関係径i / 2 + 基礎_St_線路方向_部品_Bi
                          Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
                          Next ii

                     Print #60, "[dot:]"
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_線路方向_割付Pits(2))
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          X0 = -鉄筋_SK位置 - 2 * 鉄筋L_Xcen: Y0 = -基礎_BXLi + 鉄筋X位置_位置(ii - 1) - 基礎_St_線路方向_部品_関係径i / 2 + 基礎_St_線路方向_部品_Bi
                          Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
                          Next ii
                     Print #60, "[con:]"

       
       
       
       
      '[[[ 鉄筋 St線路方向  Mark  f1  ]]]
            Print #60, "[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
               
               
               X0 = -FP_Zi_基礎_FY3(3)
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               YRR = 鉄筋L_YL / 2
               
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("St線路方向")
                     
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_線路方向_割付Pits(1))
                     D01$ = "": Y0 = -基礎_BXLi: Y9 = Y0
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          Y1 = -基礎_BXLi + 鉄筋X位置_位置(ii - 1) - 基礎_St_線路方向_部品_関係径i / 2 + 基礎_St_線路方向_部品_Bi
                          鉄筋pit = Y1 - Y9:  D01$ = D01$ + "+" + F9(-鉄筋pit):  Y9 = Y1
                          Next ii
                          Print #60, "[P:" + FD2(X0, Y0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                          Y00 = Y1
                     
                     Call 橋脚_鉄筋_X位置_ck(基礎_St_線路方向_割付Pits(2))
                     D01$ = "": Y0 = -基礎_BXLi: Y9 = Y0
                     For ii = 2 To 鉄筋X位置_Σ数 Step 2
                          Y1 = -基礎_BXLi + 鉄筋X位置_位置(ii - 1) - 基礎_St_線路方向_部品_関係径i / 2 + 基礎_St_線路方向_部品_Bi
                          鉄筋pit = Y1 - Y9:  D01$ = D01$ + "+" + F9(-鉄筋pit):  Y9 = Y1
                          Next ii
                          Print #60, "[P:" + FD2(X0, Y0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                     If Y00 < Y1 Then Y00 = Y1
                     
                     'Y00 = Y00 + 基礎_St_直角方向_部品_Bi
                     YLL = Y00 + 基礎_BXLi + 35 * 現作図_Scale
                     '
                     Print #60, "[P:" + FD2(X0, Y00) + "]\[L:" + FD2(0, -YLL) + "]\[pm:0,2]"
                     Call P_鉄筋_○名称縦(1)
               
       
       
       Print #60, "[con:]\[色:白]"
     
     
'     End With ''''''''''''' nagase

     End Sub
Sub P_基礎_F1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_基礎("FY1")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, 0.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_F2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_基礎("FY2")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_F3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FY3")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, 0.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_sf1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FH1*")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_sf2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FH2*")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_sf3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub

Sub SP_基礎_St_作図(ByVal 部品s As String)
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎(部品s)
     Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub




Sub P_基礎_F11()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FX1")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-6, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_F12()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_基礎("FX2")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(0, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_F13()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_基礎("FX3")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(0, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub P_基礎_F14()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
     D1$ = 橋脚_基礎("FX4")
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-6, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃                                                                                                                                    ┃
'┃■ 沓座       作図        沓座補強配筋図　　　ストッパ－補強配筋図
'┃                                                                                                                                    ┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub SP_沓座平面_補強配筋図()
     Dim Wda As String, D1s As String, D2s As String, ni As Integer
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 13 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_沓座A平面.U開き + 1.2 * 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "沓座補強配筋図")
         '# Y0 = .BYR + (寸法線位置_沓座A平面.U開き + 格図名開き位置) * 現作図_Scale
         '# Call P_橋脚_格図名(0, Y0, 0, "断面Ａ－Ａ")
      
      '[[[ 断面位置指定 ]]]
         沓座$ = 橋脚_梁("沓座位置"):
         '# X1 = -.BXL - 10 * 現作図_Scale: X2 = .BXR + 10 * 現作図_Scale
         '# Y2 = 沓座終点側_Y - 50: Y1 = 沓座起点側_Y - 50
         '#       Call P_橋脚_断面位置指定(X1, Y1, X2, Y1, "Ｂ", "Ｂ", 0)
         '#       Call P_橋脚_断面位置指定(X1, Y2, X2, Y2, "Ｃ", "Ｃ", 0)
      
         X1 = 沓座位置_X(2) + 700:       Y1 = -.BYL - 10 * 現作図_Scale: Y2 = .BYR + 10 * 現作図_Scale
                Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, "ａ", "ａ", 0)
      
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[色:白]\[dot:]"
         Call P_橋脚_柱_断面図
         Print #60, "[色:白]\[con:]"
         Call P_橋脚_梁_平面図
     
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .BYR + 寸法線位置_沓座A平面.U開き * 現作図_Scale
                  補1 = 寸法線位置_沓座A平面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
     
          ' L寸法
                  寸法位置L1 = -.BXL - 寸法線位置_沓座A平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_沓座A平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BYL) + "]"
                  Print #60, "[寸:" + F9(-補L1) + ":" + FD3(0, .BY, -補L1) + "]"
     
                  寸法位置L2 = -.BXL - 寸法線位置_沓座A平面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_沓座A平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(寸法位置L2, -.BYL) + "]"
                  Print #60, "[寸:" + FD3(0, .BYL, -補L2) + "|" + FD3(0, .BYR, 0) + "]"
     
          ' D寸法
                  寸法位置D1 = -.BYL - 寸法線位置_沓座A平面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_沓座A平面.D開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置D1) + "]"
                  Print #60, "[寸:" + F9(補D1) + ":" + FD3(.BX, 0, 補D1) + "]"
     
     
     
     
        Print #60, "[色:白]\[con:]"
       '[[[ ｽﾄｯﾊﾟｰ ]]]  '[[[ ｽﾄｯﾊﾟｰ ｾﾝﾀｰ Line ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Call P_橋脚_Stoper_平面("C")
        
        
        
        
        Print #60, "[色:白]\[dot:]"
       '[[[ 沓座 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Call P_沓座_平面
     
        Print #60, "[色:白]\[con:]"
      '[[[ 沓座 X寸法 ]]]
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_沓座A平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座終点側_X寸法1(寸法位置2, 補2)
        
                  寸法位置D2 = 寸法位置D1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 寸法線位置_沓座A平面.D開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座起点側_X寸法1(寸法位置D2, -補D2)
        
      '[[[ 沓座 Y寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_沓座A平面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座_Y寸法(寸法位置L3, 補L3)
        
        
        
      '[[[ 沓座 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
            Print #60, "[色:黄]\[ﾚ:主筋]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For ii = 1 To 沓座位置_Data数: Xp = 沓座位置_X(ii): Yp = 沓座位置_Y(ii)
                        沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no): BD$ = 橋脚_沓座("BD"): 沓座_BX = 躯体_D(1): 沓座_BY = 躯体_D(2)
                        
                        Wda = "S" + f0(2 * (沓座no - 1) + 1)
                        D1s = 橋脚_沓座(Wda):
                        Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                        鉄筋l = Val(鉄筋_B$): Y0 = Yp - 鉄筋P_ΣL / 2 + Y_ずれ: X0 = Xp - 鉄筋l / 2
                        For i2 = 0 To 鉄筋P_Σ数: Y1 = Y0 + 鉄筋P_位置(i2):  Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(鉄筋l, 0) + "]":  Next i2
                       
                        Wda = "S" + f0(2 * (沓座no - 1) + 2)
                        D1s = 橋脚_沓座(Wda):
                        鉄筋l = Val(鉄筋_B$): Y0 = Yp - 鉄筋l / 2 + Y_ずれ: X0 = Xp - 鉄筋P_ΣL / 2
                        For i3 = 0 To 鉄筋P_Σ数: X1 = X0 + 鉄筋P_位置(i3):  Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, 鉄筋l) + "]": Next i3
                       Next ii
        
      '[[[ 沓座 X割付寸法 ]]]
                  寸法位置3 = 寸法位置2 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 寸法線位置_沓座A平面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座終点側_X寸法2(寸法位置3, 補3)
        
                  寸法位置D3 = 寸法位置D2 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D3 = 寸法線位置_沓座A平面.D開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座起点側_X寸法2(寸法位置D3, -補D3)
      
      '[[[ 沓座 Y割付寸法 ]]]
                  寸法位置L4 = 寸法位置L3 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L4 = 寸法線位置_沓座A平面.L開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座_Y寸法2(寸法位置L4, 補L4)
        
        
        
      '[[[ 沓座 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For ii = 1 To 沓座位置_Data数: Xp = 沓座位置_X(ii): Yp = 沓座位置_Y(ii)
                        沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no): BD$ = 橋脚_沓座("BD"): 沓座_BX = 躯体_D(1): 沓座_BY = 躯体_D(2)
                        
                                 Wda = "S" + f0(2 * (沓座no - 1) + 2)
                                 D1s = 橋脚_沓座(Wda): X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                 X0 = Xp + 鉄筋P_ΣL / 2 - 1.5 * Xpit
                        Wda = "S" + f0(2 * (沓座no - 1) + 1)
                        D1s = 橋脚_沓座(Wda): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                                 Ypit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                 Y1 = Yp - 鉄筋P_ΣL / 2 + Y_ずれ
                                 Y2 = Yp + 鉄筋P_ΣL / 2 + Y_ずれ
                        
                        Select Case Yp
                        Case Is > 0: Print #60, "[P:" + FD2(X0, Y1) + "]\[<:90," + 鉄筋_pit$ + "]\[L:" + FD2(0, .BYR - Y1 + Mark_U1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Case Else:   Print #60, "[P:" + FD2(X0, Y2) + "]\[<:270," + 鉄筋_pit$ + "]\[L:" + FD2(0, -.BYL - Y2 - Mark_D1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        End Select
                        Call P_鉄筋_○名称(2)
                        
                        Wda = "S" + f0(2 * (沓座no - 1) + 2)
                        D1s = 橋脚_沓座(Wda): 鉄筋l = Val(鉄筋_B$): Y1 = Yp - 鉄筋l / 2 + Y_ずれ + 1.5 * Ypit: X0 = Xp - 鉄筋P_ΣL / 2
                        
                        Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + 鉄筋_pit$ + "]":
                        
                        Select Case ii
                        Case 1
                              Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(-X0 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                              鉄筋_○_符号2$ = F9((鉄筋P_Σ数 + 1) * 沓座終点側位置数i) + "-" + 鉄筋_○_符号1$
                              Call P_鉄筋_○名称(2)
                        Case 沓座終点側位置数i + 1
                        
                              Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(-X0 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                              鉄筋_○_符号2$ = F9((鉄筋P_Σ数 + 1) * 沓座起点側位置数i) + "-" + 鉄筋_○_符号1$
                              Call P_鉄筋_○名称(2)
                        End Select
                        
                       Next ii
        
        
        
        Print #60, "[色:白]\[con:]"
     End With
     End Sub






Sub 沓座_断面BC()
     Dim D1s As String, D2s As String
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_沓座B断面.U開き + 格図名開き位置) * 現作図_Scale
         X1 = 40 * 現作図_Scale
         Call P_橋脚_格図名(-X1, Y0, 0, "断面Ｂ－Ｂ")
         Call P_橋脚_格図名(X1, Y0, 0, "断面Ｃ－Ｃ")
      
      '[[[ 断面位置指定 ]]]
         X1 = -.BXL - 10 * 現作図_Scale: X2 = .BXR + 10 * 現作図_Scale:  Y1 = -50
                Call P_橋脚_断面位置指定(X2, Y1, X1, Y1, "Ａ", "Ａ", 0)
      
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Call P_橋脚_梁_長断面図(0, 0, 0, 0)
      
      
      '[[[ ｾﾝﾀｰ Line ]]]
                  X1 = 0: Y1 = -1.5 * .H: X2 = 0: Y2 = (寸法線位置_沓座B断面.U開き + 12) * 現作図_Scale
                  X3 = 0: Y3 = Y00 + (寸法線位置_沓座B断面.U開き + 8) * 現作図_Scale
                  Call P_橋脚_Center_Line(X1, Y1, X2, Y2, X3, Y3)
      
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_沓座B断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_沓座B断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Print #60, "[con:]"
                  Call SP_橋脚_Stoper_X断面("", 下がり, -下がり)
                  Print #60, "[con:]"
      
      '[[[ ｽﾄｯﾊﾟｰ X寸法 ]]]
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_沓座B断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper終点側_X寸法(寸法位置2, 補2)
      
      '[[[ 沓座 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For ii = 1 To 沓座終点側位置数i: Xp = 沓座位置_X(ii): ' Yp = 沓座位置_Y(ii)
                        沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
                        
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        橋脚_鉄筋θ = 90:   D1s = 橋脚_沓座("S1"): Y0 = -鉄筋_SK位置:   鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
                        X1 = Xp - 鉄筋B / 2: Y1 = Y0 - 鉄筋H
                        Call P_橋脚_鉄筋図("標準", "", "", "", X1, Y1)
                        
                        Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        D1s = 橋脚_沓座("S2"):  Y0 = -鉄筋_SK位置: X0 = Xp - 鉄筋P_ΣL / 2
                        For i3 = 0 To 鉄筋P_Σ数
                              X1 = X0 + 鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Next i3
                        Next ii
      
      
    '[[[  沓座 配筋 寸法 ]]]
                寸法位置L2 = -土木橋脚_梁.BXL - 寸法線位置_沓座B断面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補L2 = 寸法線位置_沓座B断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                D1s = 橋脚_沓座("S2"):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置L2, -Y0) + "]\[寸:"; FD1(-補L2) + ":" + FD3(0, Y0, -補L2) + "]"
      
                寸法位置R2 = 土木橋脚_梁.BXR + 寸法線位置_沓座B断面.R開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補R2 = 寸法線位置_沓座B断面.R開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                D1s = 橋脚_沓座("S2"):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置R2, -Y0) + "]\[寸:"; FD1(補R2) + ":" + FD3(0, Y0, 補R2) + "]"
      
      
      
      Print #60, "[色:白]\[con:]"
      
      '[[[ 沓座 X割付寸法 ]]]
                  寸法位置3 = 寸法位置2 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 寸法線位置_沓座B断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座終点側_X寸法2(寸法位置3, 補3)
      
     
     
      '[[[ 沓座 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For ii = 1 To 沓座終点側位置数i: Xp = 沓座位置_X(ii)
                        沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
                        
                                D1s = 橋脚_沓座("S2"):  X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                X0 = Xp - 鉄筋P_ΣL / 2 + 鉄筋P_位置(Int(鉄筋P_Σ数 / 2)) - 0.5 * Xpit
                        
                        
                        橋脚_鉄筋θ = 90:   D1s = 橋脚_沓座("S1"): Y0 = -鉄筋_SK位置
                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_鉄筋_○名称(1)
                        Next ii
     
     
     End With
     End Sub
Sub SP_沓座断面_補強配筋図()
     Dim D1s As String, D2s As String, Wda As String
     Dim 沓座部品i As Integer

     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 7 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
            Y0 = (寸法線位置_沓座D断面.U開き + 格図名開き位置) * 現作図_Scale
            Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ")
      
      
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Call P_橋脚_柱位置_梁_断面図
      
      '[[[ ｾﾝﾀｰ Line ]]]
                  Y1 = -1.1 * .H:  Y2 = 0
                  Call P_橋脚_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_沓座D断面.L開き * 現作図_Scale
                  補1 = 寸法線位置_沓座D断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BY, 0, -補1) + "]"
     
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_沓座D断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置2) + "]"
                  Print #60, "[寸:" + FD3(.BYL, 0, -補2) + "|" + FD3(.BYR, 0, 0) + "]"
     
                  寸法位置3 = 寸法位置2 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 寸法線位置_沓座D断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_沓座_断面Y寸法(寸法位置3, 補3)
      
                 寸法位置4 = 寸法位置3 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                 補4 = 寸法線位置_沓座D断面.U開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                 Print #60, FP_沓座_断面Y寸法2(寸法位置4, 補4)
      
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call SP_橋脚_Stoper_Y断面("", 0, 0, 0)
   
   
      '[[[ 沓座 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For iy = 1 To 2: ii = iy: If iy = 2 Then ii = 沓座終点側位置数i + 1
                        沓座部品i = 沓座位置_No(ii)
                        Xp = 沓座位置_X(ii):  Yp = 沓座位置_Y(ii)
                        '* 沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
                        Wda = "S" + f0(2 * (沓座部品i - 1) + 1)
                        D1s = 橋脚_沓座(Wda): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                        
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        Wda = "S" + f0(2 * (沓座部品i - 1) + 2): 橋脚_鉄筋θ = 90: D1s = 橋脚_沓座(Wda): Y0 = -鉄筋_SK位置: 鉄筋B = Val(鉄筋_B$): 鉄筋H = Val(鉄筋_H$)
                        X1 = Yp - 鉄筋B / 2 + Y_ずれ: Y1 = Y0 - 鉄筋H
                        Call P_橋脚_鉄筋図("標準", "", "", "", X1, Y1)
                        
                        Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        Wda = "S" + f0(2 * (沓座部品i - 1) + 1): D1s = 橋脚_沓座(Wda): Y0 = -鉄筋_SK位置: X0 = Yp - 鉄筋P_ΣL / 2 + Y_ずれ
                        For i3 = 0 To 鉄筋P_Σ数: X1 = X0 + 鉄筋P_位置(i3): Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]": Next i3
                        Next iy
      
    '[[[  沓座 配筋 寸法 ]]]
                
                寸法位置L2 = -土木橋脚_梁.BYL - 寸法線位置_沓座B断面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補L2 = 寸法線位置_沓座D断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                
                Wda = "S" + f0(2 * (沓座起点側_部品i - 1) + 1)
                D1s = 橋脚_沓座(Wda):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置L2, -Y0) + "]\[寸:"; FD1(-補L2) + ":" + FD3(0, Y0, -補L2) + "]"
      
                寸法位置R2 = 土木橋脚_梁.BYR + 寸法線位置_沓座B断面.R開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補R2 = 寸法線位置_沓座D断面.R開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                Wda = "S" + f0(2 * (沓座終点側_部品i - 1) + 1)
                D1s = 橋脚_沓座(Wda):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置R2, -Y0) + "]\[寸:"; FD1(補R2) + ":" + FD3(0, Y0, 補R2) + "]"
      
      
      '[[[ 沓座 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For iy = 1 To 2: ii = iy: If iy = 2 Then ii = 沓座終点側位置数i + 1
                        沓座部品i = 沓座位置_No(ii)
                        Xp = 沓座位置_X(ii): Yp = 沓座位置_Y(ii)
                       '* 沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
                        
                        Select Case Yp
                        Case Is > 0:    Wda = "S" + f0(2 * (沓座部品i - 1) + 1): D1s = 橋脚_沓座(Wda): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                                        X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                        X0 = Yp + 鉄筋P_ΣL / 2 - 1.5 * Xpit + Y_ずれ

                                        Wda = "S" + f0(2 * (沓座部品i - 1) + 2): 橋脚_鉄筋θ = 90:  D1s = 橋脚_沓座(Wda): Y0 = -鉄筋_SK位置
                                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        Call P_鉄筋_○名称(1)
                        
                        Case Else:      Wda = "S" + f0(2 * (沓座部品i - 1) + 1): D1s = 橋脚_沓座(Wda): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                                        X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                        X0 = Yp - 鉄筋P_ΣL / 2 + 1.5 * Xpit + Y_ずれ

                                        Wda = "S" + f0(2 * (沓座部品i - 1) + 2): 橋脚_鉄筋θ = 90:  D1s = 橋脚_沓座(Wda): Y0 = -鉄筋_SK位置
                                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        Call P_鉄筋_○名称(1)
                        End Select
                        Next iy
           
           
           Print #60, "[con:]"
     
     End With
     End Sub
Sub SP_Stoper断面_補強配筋図(ByVal 作図位置s As String)
     ' 作図位置s      D U  DU
     Dim D1s As String, D2s As String, Wda As String, Wda2 As String
     Dim Stoper部品i As Integer, Stoper_ii(2) As Integer
     Dim ii As Integer, iy As Integer, Noi As Integer
     Dim 作図位置数i As Integer
     Dim 寸法位置1 As Single, 寸法位置2 As Single, 寸法位置3 As Single, 寸法位置4 As Single
     Dim 補1 As Single, 補2 As Single, 補3 As Single, 補4 As Single
     
     元原点X = 原点X: 元原点Y = 原点Y
     作図位置数i = Len(作図位置s)
     For ii = 1 To 作図位置数i
          D1s = Mid(作図位置s, ii, 1)
          Select Case D1s
          Case "D": Stoper_ii(ii) = Stoper終点側位置数i + 1
          Case "U": Stoper_ii(ii) = 1
          Case Else: Stoper_ii(ii) = 1
          End Select
     
          Next ii
     
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁

                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 7 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
            Y0 = (寸法線位置_沓座H断面.U開き + 格図名開き位置) * 現作図_Scale
            Select Case 作図位置s
            Case "D":   D1s = "断面ｂ－ｂ"
            Case "U":   D1s = "断面ｃ－ｃ"
            Case Else:  D1s = "断面ｂ－ｃ"
            End Select
            
            Call P_橋脚_格図名(0, Y0, 0, D1s)
      
      
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Call P_橋脚_柱位置_梁_断面図
      
      '[[[ ｾﾝﾀｰ Line ]]]
                  Y1 = -1.1 * .H:  Y2 = 0
                  Call P_橋脚_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_沓座H断面.L開き * 現作図_Scale
                  補1 = 寸法線位置_沓座H断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BY, 0, -補1) + "]"
     
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_沓座H断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置2) + "]"
                  Print #60, "[寸:" + FD3(.BYL, 0, -補2) + "|" + FD3(.BYR, 0, 0) + "]"
     
     
                  寸法位置3 = 寸法位置2 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 寸法線位置_沓座H断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_断面Y寸法(作図位置s, 寸法位置3, 補3)
     
                  寸法位置4 = 寸法位置3 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補4 = 寸法線位置_沓座H断面.U開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_断面Y寸法2(作図位置s, 寸法位置4, 補4)
     
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call SP_橋脚_Stoper_Y断面("", 0, 0, 0)
   
      
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 
                 For iy = 1 To 作図位置数i: ii = Stoper_ii(iy)
                 
                        Xp = Stoper位置_X(ii):  Yp = Stoper位置_Y(ii)
                        Stoper部品i = Stoper位置_No(ii):
                        '* Stoper部品i = 2  '******* Test
                        Noi = 3 * (Stoper部品i - 1)
                        
                        Call 橋脚_躯体_ck("*", Stoper_箱抜s(Stoper部品i)): S_BX = 躯体_D(1): S_BY = 躯体_D(2): If S_BX = 0 Then S_BX = S_BY
                        
                       '[[[ H1 ]]]
                        Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        Wda = "H" + f0(Noi + 1)
                        D1s = 橋脚_Stoper(Wda): YY = Val(鉄筋_Y$):
                        Select Case Yp
                            Case Is > 0:  X1 = Yp + S_BY / 2 + YY
                            Case Else:    X1 = Yp - S_BY / 2 - YY
                            End Select
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                            Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                            Next i3
                        
                        
                      '[[[ H2 ]]]
                        Print #60, "[色:黄]"
                        Wda = "H" + f0(Noi + 2)
                        D1s = 橋脚_Stoper(Wda): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$): ZZ = 鉄筋_Z位置
                        Select Case Stoper_Tyi(Stoper部品i)
                             Case 1
                                    Select Case Yp
                                        Case Is > 0: X1 = Yp + S_BY / 2 + YY: LLL1 = -鉄筋H
                                        Case Else:   X1 = Yp - S_BY / 2 - YY: LLL1 = 鉄筋H
                                        End Select
                                    For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                                        Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(LLL1, 0) + "]"
                                        Next i3
                             Case 2
                                    Y1 = ZZ
                                    Select Case Yp
                                        Case Is > 0: X1 = Yp + S_BY / 2 + Stoper_H2_LY
                                        Case Else:   X1 = Yp - S_BY / 2 - Stoper_H2_LY
                                        End Select
                                    Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "]"
                        
                             Case Else
                             End Select
                      
                      '[[[ H3 ]]]
                        Print #60, "[色:黄]"
                        Select Case Stoper_Tyi(Stoper部品i)
                             Case 1
                                    Wda = "H" + f0(Noi + 3):  D1s = 橋脚_Stoper(Wda): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)): 鉄筋H = Val(鉄筋_H$): ZZ = 鉄筋_Z位置
                                    Y1 = ZZ
                                    Select Case Yp
                                        Case Is > 0: X1 = Yp + S_BY / 2 + Stoper_H3水平_LY: X2 = Yp + S_BY / 2 + Stoper_H3鉛直_LY: Xpit = H3_鉛直_Pit
                                        Case Else:   X1 = Yp - S_BY / 2 - Stoper_H3水平_LY: X2 = Yp - S_BY / 2 - Stoper_H3鉛直_LY: Xpit = -H3_鉛直_Pit
                                        End Select
                                    Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "]"
                        
                                    For i2 = 1 To H3_鉛直_i
                                        Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "]"
                                        X2 = X2 - Xpit
                                        Next i2
                             Case 2
                                    Wda = "H" + f0(Noi + 3):  D1s = 橋脚_Stoper(Wda):
                                    Print #60, "[P:" + FD2(Yp + 鉄筋L_Xcen, -2 * 鉄筋L_Ycen + 鉄筋_Z位置) + "]"
                                    Print #60, 図H1_Data1s
                             
                             Case Else
                             End Select
                        
                        Next iy
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For iy = 1 To 作図位置数i: ii = Stoper_ii(iy) '2: ii = iy: If iy = 2 Then ii = Stoper終点側位置数i + 1
                        Xp = Stoper位置_X(ii):  Yp = Stoper位置_Y(ii)
                        Stoper部品i = Stoper位置_No(ii):
                        Noi = 3 * (Stoper部品i - 1)
                        
                        Call 橋脚_Stoper_Get(Stoper部品i): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        
                       '[[[ H1 ]]]
                        LLX = 8: LLY = 4
                        Wda = "H" + f0(Noi + 1)
                        D1s = 橋脚_Stoper(Wda): YY = Val(鉄筋_Y$):
                        Select Case Yp
                            Case Is > 0:  X1 = Yp + S_BY / 2 + YY:  Wda = "\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                            Case Else:    X1 = Yp - S_BY / 2 - YY: LLX = -LLX:  Wda = "\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                            End Select
                        
                        Ys = -鉄筋P_位置(1)
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3): Print #60, "[P:" + FD2(X1, Y1) + "]\[Lm:" + FD2(LLX, -LLY) + "]":  Next i3
                              YE = Y1 - 9 * 現作図_Scale
                              Print #60, "[P:" + FD2(X1, Ys) + "]\[pm:" + FD2(LLX, -LLY) + "]\[L:" + FD2(0, YE - Ys) + "]" + Wda
                              Call P_鉄筋_○名称(2)
                        YE = YE - LLY * 現作図_Scale
                        
                        YE2 = -(鉄筋P_位置(鉄筋P_Σ数 - 2) + 鉄筋P_位置(鉄筋P_Σ数 - 1)) / 2
                      '[[[ H2 ]]]
                        Wda = "H" + f0(Noi + 2)
                        D1s = 橋脚_Stoper(Wda): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$): ZZ = 鉄筋_Z位置
                        Select Case Stoper_Tyi(Stoper部品i)
                             Case 1
                                   Y1 = -鉄筋P_位置(1): Y2 = -鉄筋P_位置(鉄筋P_Σ数)
                                   Select Case Yp
                                   Case Is < 0: X1 = Yp - S_BY / 2 - YY + 70:  Wda = "\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                   Case Else:   X1 = Yp + S_BY / 2 + YY - 70:  Wda = "\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                   End Select
                        
                        
                                   Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                                   Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]" + Wda
                                   Call P_鉄筋_○名称(2)
                             Case 2
                                   Y1 = ZZ - 鉄筋H + 70
                                   Select Case Yp
                                        Case Is > 0: X1 = Yp + S_BY / 2 + Stoper_H2_LY: XL = .BYR - X1: Wda = "\[<:0,0,*]": Wda2 = "\[L:" + FD2(XL, 0) + "]\[Lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(-20, 0) + "]"
                                        Case Else:   X1 = Yp - S_BY / 2 - Stoper_H2_LY: XL = .BYL + X1: Wda = "\[<:180,0,*]": Wda2 = "\[L:" + FD2(-XL, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        End Select
                                   Print #60, "[P:" + FD2(X1, Y1) + "]" + Wda + Wda2
                                   Call P_鉄筋_○名称(2)
                             
                             End Select
                        
                      '[[[ H3 ]]]
                        Wda = "H" + f0(Noi + 3)
                        D1s = 橋脚_Stoper(Wda):
                        Select Case Stoper_Tyi(Stoper部品i)
                             Case 1
                        
                                    Wda = "H" + f0(Noi + 3):  D1s = 橋脚_Stoper(Wda): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)): 鉄筋H = Val(鉄筋_H$): ZZ = 鉄筋_Z位置
                                    Y1 = YE2
                                    Select Case Yp
                                        Case Is > 0: X1 = Yp + S_BY / 2 + Stoper_H3水平_LY: X2 = Yp + S_BY / 2 + Stoper_H3鉛直_LY: Xpit = H3_鉛直_Pit
                                                   X2 = X1 - (Stoper_H3水平_LY - Stoper_H3鉛直_LY) - (H3_鉛直_i - 1) * Xpit
                                                   Wda2 = "\[<R:0," + FD1(Stoper_H3水平_LY - Stoper_H3鉛直_LY)
                                                   XLL = .BYR - X2 + 25 * 現作図_Scale: Del_X = -17
                                        Case Else:   X1 = Yp - S_BY / 2 - Stoper_H3水平_LY: X2 = Yp - S_BY / 2 - Stoper_H3鉛直_LY: Xpit = H3_鉛直_Pit
                                                   X2 = X1 + (Stoper_H3水平_LY - Stoper_H3鉛直_LY) + (H3_鉛直_i - 1) * Xpit
                                                   Wda2 = "\[<R:180," + FD1(Stoper_H3水平_LY - Stoper_H3鉛直_LY)
                                                   XLL = -(.BYL + X2 + 25 * 現作図_Scale): Del_X = 4
                                        
                                        End Select
                                    
                                    
                                    For i2 = 1 To H3_鉛直_i - 1:
                                        Wda2 = Wda2 + "+" + FD1(Xpit)
                                        Next i2
                                    Print #60, "[P:" + FD2(X1, Y1) + "]" + Wda2 + "]"
                                    Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[pm:" + FD2(Del_X, 0) + "]"
                        
                                   Call P_鉄筋_○名称(1)
                        
                        
                             Case 2
                                    BB = Val(鉄筋_H$):  HH = 鉄筋P_ΣL:  ZZ = 鉄筋_Z位置
                                    Select Case Yp
                                        Case Is > 0: X1 = Yp - 0.3 * BB: Wda = "\[Lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(-20, 0) + "]"
                                        Case Else:   X1 = Yp + 0.3 * BB: Wda = "\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        End Select
                                    Y1 = ZZ - HH: YL = -YE + Y1 + 12 * 現作図_Scale
                                    Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270,0,*]\[L:" + FD2(0, -YL) + "]" + Wda
                                    Call P_鉄筋_○名称(2)
                             End Select
                        
                        
                        Next iy
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 寸法 ]]]
                 For iy = 1 To 作図位置数i: ii = Stoper_ii(iy)
                       Select Case Mid(作図位置s, iy, 1)
                       Case "D"
                             寸法位置L2 = -.BYL - 寸法線位置_沓座H断面.L開き * 現作図_Scale + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                             補L2 = 寸法線位置_沓座F断面.L開き - 橋脚_寸法線_Pit_躯体図 - 1
                             Wda = "H" + f0(3 * (Stoper起点側_部品i - 1) + 1)
                             D1s = 橋脚_Stoper(Wda): Y0 = -鉄筋P_ΣL
                             Print #60, "  [P:" + FD2(寸法位置L2, Y0) + "]"
                                   D11$ = "  [寸:" + FD1(-補L2) + ":"
                                   For ii = 1 To 鉄筋P_Data数: i2 = 鉄筋P_Data数 - ii + 1
                                         Ypit = 鉄筋P_L(i2)
                                         Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + "|": If ii = 鉄筋P_Data数 Then Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + ",R=7"
                                         D11$ = D11$ + FD3(0, Ypit, -補L2) + "," + Moj$
                                         Next ii
                                         D11$ = D11$ + "]"
                               Print #60, D11$
                        
                      Case "U":   寸法位置R2 = .BYR + 寸法線位置_沓座H断面.L開き * 現作図_Scale - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                             補R2 = 寸法線位置_沓座F断面.R開き - 橋脚_寸法線_Pit_躯体図 - 1
                             Wda = "H" + f0(3 * (Stoper終点側_部品i - 1) + 1)
                             D1s = 橋脚_Stoper(Wda): Y0 = -鉄筋P_ΣL
                             Print #60, "  [P:" + FD2(寸法位置R2, Y0) + "]"
                                   D11$ = "  [寸:" + FD1(補R2) + ":"
                                   For ii = 1 To 鉄筋P_Data数: i2 = 鉄筋P_Data数 - ii + 1
                                         Ypit = 鉄筋P_L(i2)
                                         Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + "|": If ii = 鉄筋P_Data数 Then Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + ",R=7"
                                         D11$ = D11$ + FD3(0, Ypit, 補R2) + "," + Moj$
                                         Next ii
                                         D11$ = D11$ + "]"
                               Print #60, D11$
                      End Select
                 Next iy
      
      Print #60, "[色:白]\[con:]"
   
     
     End With
     End Sub






Sub SP_Stoper平面_補強配筋図()
     Dim D1s As String, D2s As String, Noi As Integer
     Dim Stoper部品i As Integer
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 2 * 現作図_Scale
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_沓座E平面.U開き + 1.2 * 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "ストッパー補強配筋図")
        ' Y0 = .BYR + (寸法線位置_沓座E平面.U開き + 格図名開き位置) * 現作図_Scale
        ' Call P_橋脚_格図名(0, Y0, 0, "断面Ｅ－Ｅ")
      
      
      '[[[ 断面位置指定 ]]]
         Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
         '# X1 = -.BXL - 10 * 現作図_Scale: X2 = .BXR + 10 * 現作図_Scale
         '# Y2 = 沓座起点側_Y - 50: Y1 = 沓座終点側_Y - 50
         '#       Call P_橋脚_断面位置指定(X1, Y1, X2, Y1, "Ｆ", "Ｆ", 0)
         '#       Call P_橋脚_断面位置指定(X1, Y2, X2, Y2, "Ｇ", "Ｇ", 0)
      
         X1 = Stoper位置_X(2) - 600: X2 = Stoper位置_X(2) + 600:      Y1 = -.BYL - 10 * 現作図_Scale: Y2 = .BYR + 10 * 現作図_Scale
                Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, "ｂ", "ｂ", 0)
                Call P_橋脚_断面位置指定(X2, Y1, X2, Y2, "ｃ", "ｃ", 0)
      
      
      
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[色:白]\[dot:]"
         Call P_橋脚_柱_断面図
         Print #60, "[色:白]\[con:]"
         Call P_橋脚_梁_平面図
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .BYR + 寸法線位置_沓座E平面.U開き * 現作図_Scale
                  補1 = 寸法線位置_沓座E平面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
          
          ' L寸法
                  寸法位置L1 = -.BXL - 寸法線位置_沓座E平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_沓座E平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BYL) + "]"
                  Print #60, "[寸:" + F9(-補L1) + ":" + FD3(0, .BY, -補L1) + "]"
     
                  寸法位置L2 = -.BXL - 寸法線位置_沓座E平面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_沓座E平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(寸法位置L2, -.BYL) + "]"
                  Print #60, "[寸:" + FD3(0, .BYL, -補L2) + "|" + FD3(0, .BYR, 0) + "]"
      
          ' D寸法
                  寸法位置D1 = -.BYL - 寸法線位置_沓座E平面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_沓座E平面.D開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置D1) + "]"
                  Print #60, "[寸:" + F9(補D1) + ":" + FD3(.BX, 0, 補D1) + "]"
      
      
      
       '[[[ ｽﾄｯﾊﾟｰ ]]]  '[[[ ｽﾄｯﾊﾟｰ ｾﾝﾀｰ Line ]]]
       
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Call P_橋脚_Stoper_平面("C")
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To Stoper位置_Data数: Xp = Stoper位置_X(ii):   Yp = Stoper位置_Y(ii)
                        Stoper部品i = Stoper位置_No(ii): Call 橋脚_Stoper_Get(Stoper部品i):
                        箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                      
                        Noi = 3 * (Stoper部品i - 1)
                      '[[[ H1 ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        D1s = 橋脚_Stoper("H" + f0(Noi + 1)): 鉄筋B = Val(鉄筋_B$): 鉄筋H = Dcos(45) * Val(鉄筋_H$)
                        鉄筋l = 鉄筋B + 2 * 鉄筋H
                        X1 = Xp - 鉄筋l / 2:
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp + S_BY / 2 + Val(鉄筋_Y$) - 鉄筋H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(鉄筋H, 鉄筋H) + "|" + FD2(鉄筋B, 0) + "|" + FD2(鉄筋H, -鉄筋H) + "]"
                        Case Else:       Y1 = Yp - S_BY / 2 - Val(鉄筋_Y$) + 鉄筋H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(鉄筋H, -鉄筋H) + "|" + FD2(鉄筋B, 0) + "|" + FD2(鉄筋H, 鉄筋H) + "]"
                        End Select
                      
                      '[[[ H2 ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        
                        Select Case Stoper_Tyi(Stoper部品i)
                        Case 1
                               D1s = 橋脚_Stoper("H" + f0(Noi + 2)): 鉄筋B = Val(鉄筋_B$): 鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                               X1 = Xp - S_BX / 2 - XX: X2 = Xp + S_BX / 2 + XX
                               Select Case Yp
                               Case Is >= 0:    Y1 = Yp + S_BY / 2 + YY - 鉄筋H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, 鉄筋H) + "|" + FD2(-鉄筋B, 0) + "]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, 鉄筋H) + "|" + FD2(鉄筋B, 0) + "]"
                        
                               Case Else:    '   X1 = X1 + 橋脚_J鉄筋開き * 現作図_Scale: X2 = X2 + 橋脚_J鉄筋開き * 現作図_Scale
                                         Y1 = Yp - S_BY / 2 - YY + 鉄筋H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "|" + FD2(-鉄筋B, 0) + "]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "|" + FD2(鉄筋B, 0) + "]"
                               End Select
                        Case 2
                               D1s = 橋脚_Stoper("H" + f0(Noi + 1)): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$): H1_LL = Val(鉄筋_B$)
                               D1s = 橋脚_Stoper("H" + f0(Noi + 2)): 鉄筋径$ = 鉄筋_径$: H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_BB = Val(鉄筋_B$)
                                 Xpit = H2_BB / 1.4142: Ypit = H2_BB / 1.4142
                                 H2_X1 = Xp - H1_LL / 2: H2_X2 = Xp + H1_LL / 2
                                 Select Case Yp
                                     Case Is > 0: H2_Y1 = Yp + S_BY / 2 + Stoper_H2_LY: Ypit = -Ypit
                                     Case Else:   H2_Y1 = Yp - S_BY / 2 - Stoper_H2_LY
                                     End Select
                                 Print #60, "[P:" + FD2(H2_X1, H2_Y1) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                 Print #60, "[P:" + FD2(H2_X2, H2_Y1) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                 
                                 Print #60, "[P:" + FD2(H2_X1 - Xpit, H2_Y1 + Ypit) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                 Print #60, "[P:" + FD2(H2_X2 + Ypit, H2_Y1 + Ypit) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                        Case Else
                        End Select
                       
                      '[[[ H3 ]]]
                        Select Case Stoper_Tyi(Stoper部品i)
                        Case 1
                               Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                               'D1s = 橋脚_Stoper("H" + f0(Noi + 1)): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$): H1_LL = Val(鉄筋_B$)
                               D1s = 橋脚_Stoper("H" + f0(Noi + 2)): H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_鉄筋B = Val(鉄筋_B$): H2_XX = Val(鉄筋_X$)
                               D1s = 橋脚_Stoper("H" + f0(Noi + 3)): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2))
                               '[[[ 図 水平部分 ]]]
                                 H3_X1 = Xp - H3_平_L / 2
                                 Select Case Yp
                                     Case Is > 0:  H3_Y1 = Yp + S_BY / 2 + Stoper_H3水平_LY
                                     Case Else:    H3_Y1 = Yp - S_BY / 2 - Stoper_H3水平_LY
                                     End Select
                                 For i2 = 1 To H3_平_i
                                     Print #60, "[P:" + FD2(H3_X1, H3_Y1) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                     H3_X1 = H3_X1 + 鉄筋P_p(i2)
                                     Next i2
                               
                               '[[[ 図 鉛直部分 ]]]
                                 H3_X1 = Xp - S_BX / 2 - H2_XX + H2_鉄筋径D / 2 + 鉄筋径D / 2
                                 H3_X2 = Xp + S_BX / 2 + H2_XX - H2_鉄筋径D / 2 - 鉄筋径D / 2
                                 Select Case Yp
                                     Case Is > 0: H3_Y1 = Yp + S_BY / 2 + Stoper_H3鉛直_LY: Ypit = -H3_鉛直_Pit
                                     Case Else: H3_Y1 = Yp - S_BY / 2 - Stoper_H3鉛直_LY: Ypit = H3_鉛直_Pit
                                     End Select
                                 For i2 = 1 To H3_鉛直_i
                                     Print #60, "[P:" + FD2(H3_X1, H3_Y1) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                     Print #60, "[P:" + FD2(H3_X2, H3_Y1) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                     H3_Y1 = H3_Y1 + Ypit
                                     Next i2
                                
                       
                       Case 2
                               D1s = 橋脚_Stoper("H" + f0(Noi + 3))
                               Print #60, "[色:黄]\[ﾚ:主筋]"
                               Print #60, "[P:" + FD2(Xp, Yp) + "]"
                               Print #60, "[Cir:" + F9(鉄筋L_Xcen) + "]"
                       Case Else
                       End Select
                       
                       
                       Next ii
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To Stoper位置_Data数: Xp = Stoper位置_X(ii):   Yp = Stoper位置_Y(ii)
                        Stoper部品i = Stoper位置_No(ii): Call 橋脚_Stoper_Get(Stoper部品i): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        Noi = 3 * (Stoper部品i - 1) '+ 1
                      '[[[ H1 ]]]
                        D1s = 橋脚_Stoper("H" + f0(Noi + 1)): 鉄筋B = Val(鉄筋_B$): 鉄筋H = Dcos(45) * Val(鉄筋_H$)
                        鉄筋l = 鉄筋B + 2 * 鉄筋H
                        X1 = Xp + 鉄筋B / 2 + 50:
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp + S_BY / 2 + Val(鉄筋_Y$) - 50
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90]\[L:" + FD2(0, .BYR - Y1 + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_鉄筋_○名称(1)
                                         
                        Case Else:       Y1 = Yp - S_BY / 2 - Val(鉄筋_Y$) + 50
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]\[L:" + FD2(0, -.BYL - Y1 - Mark_D1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                         Call P_鉄筋_○名称(1)
                                         
                        End Select
                      
                      '[[[ H2 ]]]
                        'Noi = 3 * (Stoper部品i - 1) + 2
                        Select Case Stoper_Tyi(Stoper部品i)
                        Case 1
                               D1s = 橋脚_Stoper("H" + f0(Noi + 2)): 鉄筋B = Val(鉄筋_B$): 鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                               X1 = Xp - S_BX / 2 - XX: X2 = Xp + S_BX / 2 + XX
                               Select Case Yp
                               Case Is >= 0:    Y1 = Yp - S_BY / 2 - 77
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[<:0]"
                                         If ii = 1 Then
                                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[Lm:" + FD2(0, 15) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_鉄筋_○名称(1)
                                              End If
                        
                               Case Else:     '  X1 = X1 + 橋脚_J鉄筋開き * 現作図_Scale: X2 = X2 + 橋脚_J鉄筋開き * 現作図_Scale
                                         Y1 = Yp + S_BY / 2 + 77
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[<:0]"
                                         If ii = Stoper終点側位置数i + 1 Then
                                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[Lm:" + FD2(0, -22) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_鉄筋_○名称(1)
                                              End If
                        
                               End Select
                        Case 2
                        End Select
                      
                      '[[[ H3 ]]]
                        Select Case Stoper_Tyi(Stoper部品i)
                        Case 1
                        Case 2
                               D1s = 橋脚_Stoper("H" + f0(Noi + 3)): BB = Val(鉄筋_H$)
                               X1 = Xp + BB / 4
                               Select Case Yp
                               Case Is >= 0:    Y1 = Yp + 0.433 * BB
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90]\[L:" + FD2(0, .BYR - Y1 + Mark_U2) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_鉄筋_○名称(1)
                               
                               Case Else:      Y1 = Yp - 0.433 * BB
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]\[L:" + FD2(0, -.BYL - Y1 - Mark_D2) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_鉄筋_○名称(1)
                               
                               End Select
                        
                        End Select
                        
                        Next ii
      
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ X寸法 ]]]
                  寸法位置2 = .BYR + 寸法線位置_沓座E平面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_沓座E平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper終点側_X寸法(寸法位置2, 補2)
      
                  寸法位置D2 = 寸法位置D1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 寸法線位置_沓座E平面.D開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper起点側_X寸法(寸法位置D2, -補D2)
      
      
      '[[[ ｽﾄｯﾊﾟｰ Y寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_沓座E平面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_Y寸法(寸法位置L3, 補L3)
      
                  寸法位置L4 = 寸法位置L3 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L4 = 寸法線位置_沓座E平面.L開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_Y寸法2(寸法位置L4, 補L4)
      
      
      Print #60, "[色:白]\[dot:]"
       '[[[ 沓座 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Call P_沓座_平面
     End With
     End Sub


Sub P_沓座_断面FG()
     Dim D1s As String, D2s As String
     
     元原点X = 原点X: 元原点Y = 原点Y
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_沓座F断面.U開き + 格図名開き位置) * 現作図_Scale
         X1 = 40 * 現作図_Scale
         Call P_橋脚_格図名(-X1, Y0, 0, "断面Ｆ－Ｆ")
         Call P_橋脚_格図名(X1, Y0, 0, "断面Ｇ－Ｇ")
         
      '[[[ 断面位置指定 ]]]
         X1 = -.BXL - 10 * 現作図_Scale: X2 = .BXR + 10 * 現作図_Scale:  Y1 = -50
                Call P_橋脚_断面位置指定(X2, Y1, X1, Y1, "Ｅ", "Ｅ", 0)
      
      
        Print #60, "[色:白]\[con:]"
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
                  Call P_橋脚_梁_長断面図(0, 0, 0, 0)
      
      '[[[ ｾﾝﾀｰ Line ]]]
                  X1 = 0: Y1 = -1.5 * .H: X2 = 0: Y2 = (寸法線位置_沓座F断面.U開き + 12) * 現作図_Scale
                  X3 = 0: Y3 = Y00 + (寸法線位置_沓座F断面.U開き + 8) * 現作図_Scale
                  Call P_橋脚_Center_Line(X1, Y1, X2, Y2, X3, Y3)
      
      
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_沓座F断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_沓座B断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
      
      '[[[ ｽﾄｯﾊﾟｰ ]]]
                  Print #60, "[dot:]"
                  Call SP_橋脚_Stoper_X断面("", 下がり, -下がり)
                  Print #60, "[con:]"
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To Stoper終点側位置数i: Xp = Stoper位置_X(ii): ' Yp = Stoper位置_Y(ii)
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        
                       '[[[ H1 ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        D1s = 橋脚_Stoper("H1"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
                        鉄筋l = 鉄筋B + 2 * Dcos(45) * 鉄筋H
                        X1 = Xp - 鉄筋l / 2: ' Y1 = Y0 - 鉄筋H
                        For i3 = 1 To 鉄筋P_Σ数
                              Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(鉄筋l, 0) + "]"
                              Next i3
                        
                        
                      '[[[ H2 ]]]
                       Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        D1s = 橋脚_Stoper("H2"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                        X1 = Xp - S_BX / 2 - XX - 鉄筋B: X2 = Xp - S_BX / 2 - XX: X3 = Xp + S_BX / 2 + XX: X4 = Xp + S_BX / 2 + XX + 鉄筋B
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X3, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X4, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Next i3
                        
                      '[[[ H3** ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        D1s = 橋脚_Stoper("H1"): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$): H3Y0 = 鉄筋P_位置(1)
                        D1s = 橋脚_Stoper("H2"): H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_鉄筋B = Val(鉄筋_B$): H2_XX = Val(鉄筋_X$)
                        D1s = 橋脚_Stoper("H3"): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)): 鉄筋YL = 鉄筋L_YL
                              H3_pit = Val(鉄筋_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                              H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                        
                             H3_X1 = S_BX / 2 + H2_XX + H2_鉄筋B - H2_鉄筋径D / 2 - 鉄筋径D / 2
                             H3_X2 = S_BX / 2 + H2_XX - H2_鉄筋径D / 2 - 鉄筋径D / 2
                             H3_X3 = S_BX / 2 - H1_鉄筋径D / 2 + 0.1 * 鉄筋径D

                        
                             H3_Y1 = S_BY / 2 + H1_YY - H1_鉄筋径D / 2 - 鉄筋径D / 2
                             H3_Y2 = S_BY / 2 + H1_YY - H1_鉄筋径D / 2 + 0.1 * 鉄筋径D - H1_YY
                             H3_Y3 = S_BY / 2 + H1_YY - H1_鉄筋径D / 2 + 0.1 * 鉄筋径D - 2 * H1_YY
                        
                             向き = 1: DLX = 0
                             If Yp < 0 Then 向き = -1: DLX = 橋脚_J鉄筋開き * 現作図_Scale
                             
                             Print #60, "[P:" + FD2(Xp - H3_X1 + DLX, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                             Print #60, "[P:" + FD2(Xp + H3_X1 + DLX, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                             
                             Ypit = 2 * H3_Y2 / (H3_nY - 1)
                             For i2 = 1 To 1: 'H3_nY
                                  Y00 = Yp + (H3_Y2 - (i2 - 1) * Ypit) * 向き
                                  Print #60, "[P:" + FD2(Xp - H3_X2 + DLX, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                                  Print #60, "[P:" + FD2(Xp + H3_X2 + DLX, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                                  Next i2
                             
                             Xpit = 2 * H3_X3 / (H3_nX - 1)
                             For i2 = 1 To H3_nX
                                 X00 = Xp - H3_X3 + (i2 - 1) * Xpit
                                 Print #60, "[P:" + FD2(X00, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                                 Next i2
                        
                        
                        
                        
                        
                        Next ii
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To Stoper終点側位置数i: Xp = Stoper位置_X(ii):  ' Yp = Stoper位置_Y(ii)
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        
                       '[[[ H1 ]]]
                        D1s = 橋脚_Stoper("H1"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
                        鉄筋l = 鉄筋B + 2 * Dcos(45) * 鉄筋H
                        X1 = Xp - 鉄筋l / 2 + 50: X2 = Xp + 鉄筋l / 2 - 50:
                        Y1 = -鉄筋P_位置(1): Y2 = -鉄筋P_位置(鉄筋P_Σ数)
                        
                         Select Case Xp
                         Case Is < 0:    Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_鉄筋_○名称(2)
                         
                         Case 0:         Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_鉄筋_○名称(2)
                         
                                         Print #60, "[P:" + FD2(X2, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_鉄筋_○名称(2)
                         
                         Case Else:      Print #60, "[P:" + FD2(X2, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_鉄筋_○名称(2)
                         End Select
                        
                        
                        Next ii
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 寸法 ]]]
                  寸法位置L2 = -.BXL - 寸法線位置_沓座F断面.L開き * 現作図_Scale + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_沓座F断面.L開き - 橋脚_寸法線_Pit_躯体図 - 1
                  D1s = 橋脚_Stoper("H2"): Y0 = -鉄筋P_ΣL
                  Print #60, "  [P:" + FD2(寸法位置L2, Y0) + "]"
                        D11$ = "  [寸:" + FD1(-補L2) + ":"
                        For ii = 1 To 鉄筋P_Data数: i2 = 鉄筋P_Data数 - ii + 1
                              Ypit = 鉄筋P_L(i2)
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + "|": If ii = 鉄筋P_Data数 Then Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, -補L2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
                  寸法位置R2 = .BXR + 寸法線位置_沓座F断面.R開き * 現作図_Scale - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R2 = 寸法線位置_沓座F断面.R開き - 橋脚_寸法線_Pit_躯体図 - 1
                  D1s = 橋脚_Stoper("H2"): Y0 = -鉄筋P_ΣL
                  Print #60, "  [P:" + FD2(寸法位置R2, Y0) + "]"
                        D11$ = "  [寸:" + FD1(補R2) + ":"
                        For ii = 1 To 鉄筋P_Data数: i2 = 鉄筋P_Data数 - ii + 1
                              Ypit = 鉄筋P_L(i2)
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + "|": If ii = 鉄筋P_Data数 Then Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, 補R2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
      
      Print #60, "[色:白]\[con:]"
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ X寸法 ]]]
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_沓座F断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper終点側_X寸法(寸法位置2, 補2)
     
     
     
     
     End With
     End Sub
Sub P_沓座_無収縮モルタル詳細図()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
  ' D1s
      '[[[ 躯体寸法 ]]]
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub SP_沓座_S(ByVal 部品s As String)
     Dim D1s As String, D2s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1s = 橋脚_沓座(部品s):  If D1s = "" Then Exit Sub
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub

Sub SP_沓座_連結筋()
     Dim D1s As String, D2s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1s = 橋脚_沓座("連結筋"):  If D1s = "" Then Exit Sub
     Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub



Sub SP_Stoper_H(ByVal 部品s As String)
     Dim D1s As String, D2s As String, Stypei As Integer, Mark_Y As Integer
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     Stypei = 1
     Select Case 部品s
     Case "H1", "H4", "H7", "H10": 橋脚_鉄筋θ = 45
     Case Else: 橋脚_鉄筋θ = 90
           Select Case UCase(部品s)
           Case "H3": Stypei = Stoper_Tyi(1)
           Case "H6": Stypei = Stoper_Tyi(2)
           Case "H9": Stypei = Stoper_Tyi(3)
           Case "H12": Stypei = Stoper_Tyi(4)
           Case Else: 'Stop
           End Select
     End Select
     
     D1s = 橋脚_Stoper(部品s):  If D1s = "" Then Exit Sub
     Mark_Y = 鉄筋L_Ycen: If Mark_Y < 850 Then Mark_Y = 850
     Select Case Stypei
     Case 2  'Stoper 丸Type 鉄筋断面を書く
            'Print #60, "[点:]\*原点"
            補1 = 5
            Print #60, "[色:空]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"
            Print #60, "[P:" + FD2(-鉄筋L_Xcen, 3.5 * 鉄筋L_Ycen) + "]"
            Print #60, "[寸:" + F9(-補1) + ":" + FD3(2 * 鉄筋L_Xcen, 0, -補1) + "]"
            
            Print #60, "[P:" + FD2(-6 * 鉄筋L_Xcen, -鉄筋L_Ycen) + "]"
            Print #60, "[寸:" + F9(-補1) + ":" + FD3(0, 2 * 鉄筋L_Ycen, -補1) + "," + P_橋脚_ΣPit寸法(鉄筋_pit$) + "]"
            
            '[鉄筋]
            Print #60, "[色:黄]\[ﾚ:主筋]"
            Print #60, "[P:" + FD2(0, 2 * 鉄筋L_Ycen) + "]"
            Print #60, "[Cir:" + F9(鉄筋L_Xcen); "]"
            Print #60, "[P:" + FD2(鉄筋L_Xcen, -鉄筋L_Ycen) + "]"
            Print #60, 図H1_Data1s ' 鉄筋図
            Print #60, "[P:" + FD2(0, -Mark_Y) + "]\[pm:" + FD2(-10, -15) + "]"
            Call P_鉄筋_○名称(3)
     Case Else
            Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

            Print #60, "[P:" + FD2(0, -Mark_Y) + "]\[pm:" + FD2(-10, -15) + "]"
            Call P_鉄筋_○名称(3)
     End Select

     End Sub


Sub SP_Stoper_H_丸断面(ByVal 部品s As String)
    'Stoper 丸Type 鉄筋断面を書く
     Dim D1s As String, D2s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     Select Case 部品s
     Case "H1", "H4", "H7", "H10": 橋脚_鉄筋θ = 45
     Case Else: 橋脚_鉄筋θ = 90
     End Select
     
     D1s = 橋脚_Stoper(部品s):  If D1s = "" Then Exit Sub
     'Call P_橋脚_鉄筋図("標準","Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)
    
    
    
    
    End Sub



'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃                                                                                                                                    ┃
'┃■ 柱         作図
'┃                                                                                                                                    ┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub SP_柱_立断面_Y()
     ' 縦断面
     Dim ii As Integer, ii2 As Integer, i1 As Integer, i2 As Integer
     Dim D1s As String, D2s As String
     Dim Y00 As Single
     
     ReDim 鉄筋_L位置(999) As Single
     ReDim Lpit(999) As Single
     ReDim 表示Y_主筋C_1段目(5) As Single
     ReDim 表示Y_主筋C_2段目(5) As Single
     ReDim 表示Y_主筋C_3段目(5) As Single
     
     
     With 土木橋脚_柱
          
          Cut位置 = 1000: ' 柱面ﾖﾘ
         基礎H = 基礎_Hi: 柱H = .H: 梁H = 土木橋脚_梁.H
         Y00 = 基礎H + 柱H + 梁H
         
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      '[[[ 格図名 ]]]
         Y0 = Y00 + (寸法線位置_柱断面.U開き + 格図名開き位置) * 現作図_Scale
         X01 = -2000: X02 = 2000
         Call P_橋脚_格図名(X01, Y0, 0, "断面Ｃ－Ｃ")
         Call P_橋脚_格図名(X02, Y0, 0, "断面Ｄ－Ｄ")
         
         
      '[[[ 断面位置指定 ]]]
         X1 = -0.7 * .BYL: Y1 = Y00 + (寸法線位置_柱断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ａ", "Ａ", 0)
         
         X1 = 0.7 * .BYR: Y1 = Y00 + (寸法線位置_柱断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ｂ", "Ｂ", 0)
         
         
      '[[[ 柱躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[P:" + FD2(-.BYL, 基礎_Hi) + "]\[L:" + FD2(0, .H) + "|" + FD2(-土木橋脚_梁.BYL + .BYL, 0) + "|" + FD2(0, 土木橋脚_梁.H) + "|" + FD2(土木橋脚_梁.BYL, 0) + "]"
         Print #60, "[P:" + FD2(.BYR, 基礎_Hi) + "]\[L:" + FD2(0, .H) + "|" + FD2(土木橋脚_梁.BYR - .BYR, 0) + "|" + FD2(0, 土木橋脚_梁.H) + "|" + FD2(-土木橋脚_梁.BYR, 0) + "]"
       
         Print #60, "[dot:]\[P:" + FD2(-.BYL, 基礎_Hi) + "]\[L:" + FD2(.BY, 0) + "]\[con:]"
       
         Print #60, "[P:" + FD2(-.BYL - Cut位置, 0) + "]\[L:" + FD2(.BY + 2 * Cut位置, 0) + "]"
         Print #60, "[P:" + FD2(-.BYL - Cut位置, -基礎_捨con_t) + "]\[L:" + FD2(.BY + 2 * Cut位置, 0) + "]"
       
         角度L = Calu角度(0, 0, 基礎_BYL端i, 基礎_HUi)
              XL = 基礎_BYL柱i - .BYL:   XLL = Cut位置 - XL: YL = XLL * Dsin(角度L)
              Print #60, "[P:" + FD2(-.BYL - Cut位置, 基礎_Hi - YL) + "]\[L:" + FD2(XLL, YL) + "|" + FD2(XL, 0) + "]"
       
         角度R = Calu角度(0, 0, 基礎_BYR端i, 基礎_HUi)
              XL = 基礎_BYR柱i - .BYR:   XLL = Cut位置 - XL: YL = XLL * Dsin(角度L)
              Print #60, "[P:" + FD2(.BYR + Cut位置, 基礎_Hi - YL) + "]\[L:" + FD2(-XLL, YL) + "|" + FD2(-XL, 0) + "]"
       
         X1 = -.BYL - Cut位置: Y1 = -基礎_捨con_t - 100: X2 = X1: Y2 = 基礎_Hi - YL + 100
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
         X1 = .BYR + Cut位置:  X2 = X1:
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
       
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call SP_橋脚_Stoper_Y断面("", Y00, 0, 0)
       
       
      '[[[ ｾﾝﾀｰ Line ]]]
           X1 = 0: Y1 = -15 * 現作図_Scale: X2 = 0: Y2 = Y00 + (寸法線位置_柱断面.U開き + 15 + 5) * 現作図_Scale
           X3 = 0: Y3 = Y00 + (寸法線位置_柱断面.U開き + 5) * 現作図_Scale
           Call P_橋脚_Center_Line(X1, Y1, X2, Y2, X3, Y3)
           
      '[[[ X 寸法  長さ ]]]
           寸法位置1 = Y00 + 寸法線位置_柱断面.U開き * 現作図_Scale
           補1 = 寸法線位置_柱断面.U開き - 1
           Print #60, "  [P:" + FD2(-.BYL, 寸法位置1) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(.BY, 0, -補1) + "]"
           寸法位置2 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           Print #60, "  [P:" + FD2(-.BYL, 寸法位置2) + "]"
           Print #60, "  [寸:" + FD3(.BYL, 0, 0) + "|" + FD3(.BYR, 0, 0) + "]"
            
      '[[[ Y 寸法  長さ ]]]
           寸法位置1 = -土木橋脚_梁.BYL - 寸法線位置_柱断面.L開き * 現作図_Scale
           補1 = 寸法線位置_柱断面.L開き - 1
           補11 = (-寸法位置1 - Cut位置 - .BYL) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置1, 0) + "]"
           Print #60, "  [寸:" + F9(-補11) + ":" + FD3(0, 基礎H, -補11) + "|" + FD3(0, 柱H + 梁H, -補1) + "]"
           
           Print #60, "  [P:" + FD2(-寸法位置1, 0) + "]"
           Print #60, "  [寸:" + F9(補11) + ":" + FD3(0, 基礎H, 補11) + "|" + FD3(0, 柱H + 梁H, 補1) + "]"
           
           
           
           寸法位置2 = 寸法位置1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = 寸法線位置_柱断面.L開き - 橋脚_寸法線_Pit_躯体図 - 1
           補21 = (-寸法位置2 - Cut位置 - .BYL) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置2, 0) + "]"
           Print #60, "  [寸:" + FD3(0, 基礎_HDi, -補21) + "|" + FD3(0, 基礎_HUi_U, 0) + "|" + FD3(0, .H, -補2) + "|" + FD3(0, 土木橋脚_梁.h1, -補2) + "|" + FD3(0, 土木橋脚_梁.h2, 0) + "]"
           
           Print #60, "  [P:" + FD2(-寸法位置2, 0) + "]"
           Print #60, "  [寸:" + FD3(0, 基礎_HDi, 補21) + "|" + FD3(0, 基礎_HUi, 0) + "|" + FD3(0, .H, 補2) + "|" + FD3(0, 土木橋脚_梁.h1, 補2) + "|" + FD3(0, 土木橋脚_梁.h2, 0) + "]"
            
            
       
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      ni = 2: If .r = 0 Then ni = 3
                  表示X_Hoop = -.BYL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
    
    
    
    '[[[ 表示Y 座標  ]]]
              左_LL = 20 * 現作図_Scale
              
              D1$ = 橋脚_柱("外HpY")
                  Ny0 = Int(2 * 鉄筋P_Σ数 / 3)
                  Ny1 = Int(鉄筋P_Σ数 / 2)
                  表示Y_主筋被 = (鉄筋P_位置(Ny0) + 鉄筋P_位置(Ny0 + 1)) / 2
                  表示Y_主筋X = (鉄筋P_位置(Ny0 - 4) + 鉄筋P_位置(Ny0 - 3)) / 2
                  Y段数 = 橋脚_柱("Ypit段数")
                  Select Case Y段数
                  Case 1:   '  表示Y_主筋X = (鉄筋P_位置(Ny1 - 5) + 鉄筋P_位置(Ny1 - 4)) / 2
                              表示Y_主筋C_1段目(1) = (鉄筋P_位置(Ny1) + 鉄筋P_位置(Ny1 + 1)) / 2 ' ***** メンテ
                              表示Y_主筋C_1段目(2) = (鉄筋P_位置(Ny1 + 5) + 鉄筋P_位置(Ny1 + 6)) / 2
                              表示Y_主筋C_1段目(3) = (鉄筋P_位置(Ny1 + 10) + 鉄筋P_位置(Ny1 + 11)) / 2
       
                  Case Else:
                              表示Y_主筋C_1段目(1) = (鉄筋P_位置(Ny0 - 8) + 鉄筋P_位置(Ny0 - 7)) / 2
                              表示Y_主筋C_1段目(2) = (鉄筋P_位置(Ny0 - 22) + 鉄筋P_位置(Ny0 - 21)) / 2
                              表示Y_主筋C_1段目(3) = (鉄筋P_位置(Ny0 - 36) + 鉄筋P_位置(Ny0 - 35)) / 2
                              表示Y_主筋C_2段目(1) = (鉄筋P_位置(Ny0 - 12) + 鉄筋P_位置(Ny0 - 11)) / 2
                              表示Y_主筋C_2段目(2) = (鉄筋P_位置(Ny0 - 26) + 鉄筋P_位置(Ny0 - 25)) / 2
                              表示Y_主筋C_2段目(3) = (鉄筋P_位置(Ny0 - 40) + 鉄筋P_位置(Ny0 - 39)) / 2
                              
                 End Select
       
       
    '[[[  X方向_主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
                      '[ 1段目 ]
                      主筋i = 柱_X_1段_主筋代表i
                      橋脚_鉄筋θ = 90: Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(主筋i))
                       主筋dt = 柱_主筋_dt(主筋i)
                      Y0 = Val(鉄筋_位置$)
                      X0 = -.BYL + 主筋dt:  Call P_橋脚_鉄筋図("標準", "", "", "R", X0, Y0)
                      X0 = .BYR - 主筋dt: Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
                      '[ 2段目 ]
                      If 柱_X_2段_主筋代表i > 0 Then
                      主筋i = 柱_X_2段_主筋代表i:
                      橋脚_鉄筋θ = 90: Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(主筋i))
                      主筋dt = 柱_主筋_dt(主筋i) + 世_柱筋間隔倍率i * 鉄筋_径i
                      Y0 = Val(鉄筋_位置$)
                      X0 = .BYR - 主筋dt:  Call P_橋脚_鉄筋図("標準", "", "", "R", X0, Y0)
                      End If
     
     
     '[[[  X方向_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      
                      '[ 1段目 ]
                      柱筋i = 柱_X_1段_主筋代表i
                      主筋dt = 柱_主筋_dt(柱筋i)
                      X0 = -.BYL + 主筋dt: Y0 = 表示Y_主筋X: XL = 名称_L1 * 現作図_Scale + 主筋dt: 'XL2 = .BY - 主筋dt + Mark_L1
                      Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180,0]\[L:" + FD2(-XL, 0) + "]\[pm:5,0]"
                      D1s = Fp_橋脚_柱_主筋(柱筋i)
                      Call P_鉄筋_○名称(1)
                      
                      X0 = .BYR - 主筋dt: Y0 = 表示Y_主筋X: XL = 名称_L1 * 現作図_Scale + 主筋dt: 'XL2 = .BY - 主筋dt + Mark_L1
                      Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0,0]\[L:" + FD2(XL, 0) + "]\[pm:-15,0]"
                      Call P_鉄筋_○名称(1)
                      
                      '[ 2段目 ]
                      If 柱_X_2段_主筋代表i > 0 Then

                      柱筋i = 柱_X_2段_主筋代表i
                      主筋dt = 柱_主筋_dt(柱筋i) + 世_柱筋間隔倍率i * 鉄筋_径i
                      D1s = Fp_橋脚_柱_主筋(柱筋i)
                      X0 = .BYR - 主筋dt: Y0 = 表示Y_主筋C_1段目(1): XL = 名称_L1 * 現作図_Scale + 主筋dt: 'XL2 = .BY - 主筋dt + Mark_L1
                      Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0,0]\[L:" + FD2(XL, 0) + "]\[pm:-15,0]"
                      Call P_鉄筋_○名称(1)
                      End If
                      
      '[[[ X方向_主筋 被ﾘ寸法  ]]]
                   主筋dt = 柱_主筋_dt(柱_X_1段_主筋代表i)
                   D11$ = "  [P:" + FD2(-.BYL, 表示Y_主筋被) + "]\[寸:" + FD3(主筋dt, 0, 0) + ",,LR=8]"
                   D12$ = "  [P:" + FD2(.BYR - 主筋dt, 表示Y_主筋被) + "]\[寸:" + FD3(主筋dt, 0, 0) + ",,RL=8]"
                   Print #60, D11$: Print #60, D12$
     
     
      '[[[  Y方向_主筋 ]]]　　 柱 rが無い場合 処理OK
            Print #60, "[色:黄]\[ﾚ:主筋]"
                      
                      '[ 1段目 ]
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(1))
                      Call 橋脚_鉄筋_Pit_ck(柱_主筋_Ypits(1))
                      橋脚_鉄筋θ = 90:
                      i1 = 2: i2 = 鉄筋P_Σ数 - 1: If 柱_主筋_角s = "Y" Then i1 = 1: i2 = 鉄筋P_Σ数
                      For ii = i1 To i2
                          主筋i = 柱筋_柱筋Noi(ii)
                          Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(主筋i))
                          Y0 = Val(鉄筋_位置$): Fook向き$ = "R"
                          X0 = -.BYL + 鉄筋P_位置(ii): If X0 > 0 Then Fook向き$ = "": Exit For
                          Call P_橋脚_鉄筋図("標準", "", "V", Fook向き$, X0, Y0)
                      Next ii
                      '[ 2段目 ]
                      If 柱_主筋_配置_Ys(2) <> "" Then
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(2))
                      Call 橋脚_鉄筋_Pit_ck(柱_主筋_Ypits(2))
                      橋脚_鉄筋θ = 90:
                      i1 = 2: i2 = 鉄筋P_Σ数 - 1: If 柱_主筋_角s = "Y" Then i1 = 1: i2 = 鉄筋P_Σ数
                      For ii = i1 To i2
                          主筋i = 柱筋_柱筋Noi(ii)
                          Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(主筋i))
                          Y0 = Val(鉄筋_位置$): Fook向き$ = ""
                          X0 = -.BYL + 鉄筋P_位置(ii): ' If X0 > 0 Then Fook向き$ = "": Exit For
                          If X0 > 0 Then Call P_橋脚_鉄筋図("標準", "", "V", Fook向き$, X0, Y0)
                      Next ii
                      End If
           
       '[[[  Y方向_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(1))
                      Call 橋脚_鉄筋_Pit_ck(柱_主筋_Ypits(1))
                      For ii = 1 To 柱筋_柱筋種類数
                            柱筋n = 0: 柱筋i = 柱筋_柱筋Noi(ii) ' 柱筋_D柱筋番号(ii):
                            i1 = 2: i2 = 鉄筋P_Σ数 - 1: If 柱_主筋_角s = "Y" Then i1 = 1: i2 = 鉄筋P_Σ数
                            For ii2 = i1 To i2
                                 If -.BYL + 鉄筋P_位置(ii2) > 0 Then Exit For
                                 If 柱筋i = 柱筋_柱筋Noi(ii2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(ii2)
                                 Next ii2
                            If 柱筋n > 0 Then
                                X0 = 鉄筋_L位置(柱筋n) - .BYL:    Y0 = 表示Y_主筋C_1段目(ii)
                                For ii2 = 1 To 柱筋n:  Lpit(ii2) = 鉄筋_L位置(ii2 + 1) - 鉄筋_L位置(ii2): Next ii2
                                D1s = ""
                                For ii2 = 柱筋n - 1 To 1 Step -1: D1s = D1s + FP1(Lpit(ii2)): Next ii2
                                D1s = Mid(D1s, 2)
                                XL2 = X0 + .BYL + Mark_L1
                                Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1s + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                                D1s = Fp_橋脚_柱_主筋(柱筋i):   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                                Call P_鉄筋_○名称(2)
                            End If
                           Next ii
                 
                 If 柱_Y_2段_主筋代表i > 1 Then
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(2))
                      Call 橋脚_鉄筋_Pit_ck(柱_主筋_Ypits(2))
                      For ii = 1 To 柱筋_柱筋種類数: D1$ = 橋脚_柱("C" + F9(ii) + "本数")
                            柱筋n = 0: 柱筋i = 柱筋_D柱筋番号(ii):
                            
                            i1 = 2: i2 = 鉄筋P_Σ数 - 1: If 柱_主筋_角s = "Y" Then i1 = 1: i2 = 鉄筋P_Σ数
                            For ii2 = i1 To i2
                                 If 柱筋i = 柱筋_柱筋Noi(ii2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(ii2)
                                 Next ii2
                            
                            If 柱筋n > 0 Then
                            X0 = 鉄筋_L位置(柱筋n) - .BYL:    Y0 = 表示Y_主筋C_2段目(ii)
                            For ii2 = 1 To 柱筋n:  Lpit(ii2) = 鉄筋_L位置(ii2 + 1) - 鉄筋_L位置(ii2): Next ii2
                            D1$ = ""
                            For ii2 = 柱筋n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(ii2)): Next ii2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BYL
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋i): 鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                            Print #60, "[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]"
                            Print #60, "[pm:" + FD2(2, -4.5) + "]\(二段目)"
                            End If
                       Next ii
                   
                   
                      End If
    
    '[[[  外周 Hoop ]]]
              Print #60, "[色:空]\[ﾚ:Hoop]"
              D1s = 橋脚_柱("外HpY")
                           Call Ddata("X", UCase(鉄筋_Y$), Ds$(), Di(), ni)
                           Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = 柱_外Hp_r: If Hoop_r < 0 Then Hoop_r = 0
                  X0 = -Hoop_YL / 2
              For ii = 1 To 鉄筋P_Σ数
                  Y0 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(Hoop_YL, 0) + "]"
                  Next ii
    
    '[[[  外周 Hoop 鉄筋断面 ]]]
              Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
              X1 = .BYR - 柱_外Hp_dt
              D1s = 橋脚_柱("外HpX")
              For ii = 1 To 鉄筋P_Σ数:  Y1 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                  Next ii
              
              
              
    '[[[  外周 Hoop Mark  ]]]
              Print #60, "[色:白]\[ﾚ:Mark]"
              D1s = 橋脚_柱("外HpY")
              X0 = 表示X_Hoop: Y0 = 鉄筋P_位置(1): YL = Y00 - Y0 + Mark_U1
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + 鉄筋_pit$ + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
              Print #60, D1$
                      Call P_鉄筋_○名称(2)
    
    
    
    
    '[[[  外周 Hoop 寸法 ]]]
              寸法位置3 = -土木橋脚_梁.BYL - 寸法線位置_柱断面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = 寸法線位置_柱断面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              補31 = (-寸法位置3 - Cut位置 - .BYL) / 現作図_Scale - 1
              D1s = 橋脚_柱("外HpX")
              Print #60, "  [P:" + FD2(寸法位置3, 0) + "]"
                  D11$ = "  [寸:"
                  Y0 = 0
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Y0 = Y0 + 鉄筋P_L(ii)
                        Select Case Y0
                        Case Is <= 基礎H:          補00 = 補31
                        Case Is <= 基礎H + 柱H:    補00 = 補3
                        Case Else:                 補00 = 補3
                        End Select
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$
     
    '[[[  X方向 内側 Hoop ]]]
              If 柱_内Hp_X_部品_Ty数i > 0 Then
              Print #60, "[色:空]\[ﾚ:Hoop]"
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Hpits)
              For ii = 1 To 鉄筋P_Σ数: Y0 = 鉄筋P_位置(ii) + 15
                  Call 橋脚_鉄筋_X位置_ck(柱_内Hp_X_Ypits(柱_内Hp_X_配置i(ii)))
                  For i2 = 1 To 鉄筋X位置_Σ数
                       Typei = 鉄筋X位置_Typei(i2):   Call 橋脚_鉄筋_ck("*", "帯筋", 柱_内Hp_X_部品s(Typei))
                       YL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_D$)
                       X0 = -.BYL + 鉄筋X位置_位置(i2) - YL / 2
                       Print #60, "[P:" + FD2(X0 + YL, Y0) + "]\[皿2:" + FD4(-YL, 0, 1.5, 45) + "]"
                       Next i2
                  Next ii
              End If
 
     
    '[[[  X方向 内側  Mark   ]]]
              If 柱_内Hp_X_部品_Ty数i > 0 Then
              Print #60, "[色:白]\[ﾚ:Mark]"
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Hpits)
              For ii0 = 1 To 柱_内Hp_X_部品_Ty数i
                  X0 = 表示X_Hoop + 200: X0 = 45
                  Call SP_柱_内Hp_Mark_X(ii0)
                  D2s = "": nni = 0
                  For ii = 1 To 鉄筋P_Σ数
                       Select Case 柱_内Hp_X_配置i(ii)
                           Case ii0: nni = nni + 1: D2s = D2s + FP1(鉄筋P_位置(ii) - 鉄筋P_位置(ii - 1))
                           Case Else
                           End Select
                       If nni = 1 Then Y0 = 鉄筋P_位置(ii): YL = Y00 - Y0 + Mark_U1 + 400
                       Next ii
                D1s = "[P:" + FD2(X0, 0) + "]\[<:90," + Mid(D2s, 2) + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                Print #60, D1s
                Call P_鉄筋_○名称(2)
                X0 = X0 - 300:
              Next ii0
              End If
     
     
    '[[[  内X Hoop 寸法 ]]]
              If 柱_内Hp_X_部品_Ty数i > 0 Then
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Hpits)
              寸法位置3 = 土木橋脚_梁.BYL + 寸法線位置_柱断面.L開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = -寸法線位置_柱断面.L開き + 2 * 橋脚_寸法線_Pit_躯体図 + 1
              補31 = (-寸法位置3 + Cut位置 + .BYL) / 現作図_Scale + 1
              Print #60, "  [P:" + FD2(寸法位置3, 0) + "]"
                  D11$ = "  [寸:"
                  Y0 = 0
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Y0 = Y0 + 鉄筋P_L(ii)
                        Select Case Y0
                        Case Is <= 基礎H:          補00 = 補31
                        Case Is <= 基礎H + 柱H:    補00 = 補3
                        Case Else:                 補00 = 補3
                        End Select
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$
              End If
     
     ' 柱組立筋 Begin
     
     '[[[ 組立筋 ]]]
             If 柱_組立筋_部品s <> "" Then
              Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
              X1 = .BYR - 柱_組立筋_dti: 鉄筋_径$ = "D" + f0(柱_組立筋_径i)
              For ii = 1 To 柱_組立筋_Pit数i:  Y1 = 柱_組立筋_Zi(ii) - 柱_組立筋_径i / 2
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                  Next ii
             End If
     
     ' 柱組立筋 End

     
     End With

     End Sub




Sub SP_柱_立断面_X()
     ' 縦断面
     Dim ii0 As Integer, ii As Integer, ii2 As Integer, i1 As Integer, i2 As Integer
     Dim D1s As String, D2s As String
     ReDim 鉄筋_L位置(999) As Single
     ReDim Lpit(999) As Single
     ReDim 表示Y_主筋C_1段目(5) As Single
     ReDim 表示Y_主筋C_2段目(5) As Single
     ReDim 表示Y_主筋C_3段目(5) As Single

     With 土木橋脚_柱
      
         Cut位置 = 1000: ' 柱面ﾖﾘ
         基礎H = 基礎_Hi: 柱H = 土木橋脚_柱.H: 梁H = 土木橋脚_梁.H
         Y00 = 基礎H + 柱H + 梁H
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 20 * 現作図_Scale
                 Mark_L1 = 4 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = Y00 + (寸法線位置_柱長断面.U開き + 格図名開き位置) * 現作図_Scale
        ' X01 = -.BXL: X02 = .BXR
         X01 = -2000: X02 = 2000
         Call P_橋脚_格図名(X01, Y0, 0, "断面Ａ－Ａ")
         Call P_橋脚_格図名(X02, Y0, 0, "断面Ｂ－Ｂ")
         
      '[[[ 断面位置指定 ]]]
         X1 = -0.7 * .BXL: Y1 = Y00 + (寸法線位置_柱長断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X2, Y2, X1, Y1, "Ｃ", "Ｃ", 0)
         
         X1 = 0.7 * .BXR: Y1 = Y00 + (寸法線位置_柱長断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y2, X2, Y1, "Ｄ", "Ｄ", 0)
         
         'X1 = -1.15 * 土木橋脚_梁.BXL: Y1 = 基礎H + 柱H + 土木橋脚_梁.H1 + 0.4 * 土木橋脚_梁.H2
         'X2 = 1.15 * 土木橋脚_梁.BXR: Y2 = Y1
         'Call P_橋脚_断面位置指定(X2, Y2, X1, Y1, "ａ", "ａ", 0)
      
         X1 = -1.3 * .BXL: Y1 = 基礎H + 0.6 * 柱H
         X2 = 1.3 * .BXR: Y2 = Y1
         Call P_橋脚_断面位置指定(X2, Y2, X1, Y1, "Ｅ", "Ｅ", 0)
      
      
      '[[[ 柱躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
     
         Y0 = 基礎_Hi + .H + 土木橋脚_梁.H
         Call P_橋脚_梁_長断面図(0, Y0, 0, .H)

         Print #60, "[dot:]\[P:" + FD2(-.BXL, 基礎_Hi) + "]\[L:" + FD2(.BX, 0) + "]\[con:]"
       
         Print #60, "[P:" + FD2(-.BXL - Cut位置, 0) + "]\[L:" + FD2(.BX + 2 * Cut位置, 0) + "]"
         Print #60, "[P:" + FD2(-.BXL - Cut位置, -基礎_捨con_t) + "]\[L:" + FD2(.BX + 2 * Cut位置, 0) + "]"

         Print #60, "[P:" + FD2(-.BXL, 基礎_Hi) + "]\[L:" + FD2(-Cut位置, 0) + "]"
         Print #60, "[P:" + FD2(.BXR, 基礎_Hi) + "]\[L:" + FD2(Cut位置, 0) + "]"

         Print #60, "[dot:]\[P:" + FD2(-.BXR - Cut位置, 基礎_HDi) + "]\[L:" + FD2(.BX + 2 * Cut位置, 0) + "]\[con:]"

         X1 = -.BXL - Cut位置: Y1 = -基礎_捨con_t - 100: X2 = X1: Y2 = 基礎_Hi + 100
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
         X1 = .BXR + Cut位置:  X2 = X1:
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
       
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call SP_橋脚_Stoper_X断面("", Y00, 0)
       
       
      '[[[ ｾﾝﾀｰ Line ]]]
           X1 = 0: Y1 = -15 * 現作図_Scale: X2 = 0: Y2 = Y00 + (寸法線位置_柱長断面.U開き + 15 + 5) * 現作図_Scale
           X3 = 0: Y3 = Y00 + (寸法線位置_柱長断面.U開き + 5) * 現作図_Scale
           Call P_橋脚_Center_Line(X1, Y1, X2, Y2, X3, Y3)
                      
           
      '[[[ X 寸法  長さ ]]]
           寸法位置1 = Y00 + 寸法線位置_柱長断面.U開き * 現作図_Scale
           補1 = 寸法線位置_柱長断面.U開き - 1
           Print #60, "  [P:" + FD2(-.BXL, 寸法位置1) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
           寸法位置2 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           Print #60, "  [P:" + FD2(-.BXL, 寸法位置2) + "]"
           Print #60, "  [寸:" + FD3(.BXL, 0, 0) + "|" + FD3(.BXR, 0, 0) + "]"
            
      '[[[ Y (L) 寸法  長さ ]]]
           寸法位置L1 = -土木橋脚_梁.BXL - 寸法線位置_柱長断面.L開き * 現作図_Scale
           補L1 = 寸法線位置_柱長断面.L開き - 1
           補L11 = (-寸法位置L1 - Cut位置 - .BXL) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置L1, 0) + "]"
           Print #60, "  [寸:" + F9(-補L11) + ":" + FD3(0, 基礎H, -補L11) + "|" + FD3(0, 柱H + 梁H, -補L1) + "]"
           
           寸法位置L2 = 寸法位置L1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補L2 = 寸法線位置_柱長断面.L開き - 橋脚_寸法線_Pit_躯体図 - 1
           補L21 = (-寸法位置L2 - Cut位置 - .BXL) / 現作図_Scale - 1
           補L22 = (-寸法位置L2 - .BXL) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置L2, 0) + "]"
           Print #60, "  [寸:" + FD3(0, 基礎_HDi, -補L21) + "|" + FD3(0, 基礎_HUi, 0) + "|" + FD3(0, .H, -補L22) + "|" + FD3(0, 土木橋脚_梁.h1, -補L2) + "|" + FD3(0, 土木橋脚_梁.h2, 0) + "]"
            
      '[[[ Y (R) 寸法  長さ ]]]
           寸法位置1 = 土木橋脚_梁.BXR + 寸法線位置_柱長断面.R開き * 現作図_Scale
           補1 = 寸法線位置_柱長断面.R開き - 1
           補11 = (寸法位置1 - Cut位置 - .BXR) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置1, 0) + "]"
           Print #60, "  [寸:" + F9(補11) + ":" + FD3(0, 基礎H, 補11) + "|" + FD3(0, 柱H + 梁H, 補1) + "]"
           
           寸法位置2 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = 寸法線位置_柱長断面.R開き - 橋脚_寸法線_Pit_躯体図 - 1
           補21 = (寸法位置2 - Cut位置 - .BXR) / 現作図_Scale - 1
           補22 = (寸法位置2 - .BXR) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置2, 0) + "]"
           Print #60, "  [寸:" + FD3(0, 基礎_HDi, 補21) + "|" + FD3(0, 基礎_HUi, 0) + "|" + FD3(0, .H, 補22) + "|" + FD3(0, 土木橋脚_梁.h1, 補2) + "|" + FD3(0, 土木橋脚_梁.h2, 0) + "]"
            
    
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示X_XHoop = -.BXL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  表示X_XHoop内 = 0.7 * .BXL
    
    
    '[[[ 表示Y 座標  ]]]   主筋表示位置
              左_LL = 20 * 現作図_Scale

              D1$ = 橋脚_柱("外HpX")
                  Ny0 = Int(2 * 鉄筋P_Σ数 / 3)
                  Ny1 = Int(鉄筋P_Σ数 / 2)
                  表示Y_主筋被 = (鉄筋P_位置(Ny0) + 鉄筋P_位置(Ny0 + 1)) / 2
                  表示Y_主筋Y = (鉄筋P_位置(Ny0 - 4) + 鉄筋P_位置(Ny0 - 3)) / 2
                  X段数 = 橋脚_柱("Xpit段数")
                  Select Case Y段数
                  Case 1:   '  表示Y_主筋X = (鉄筋P_位置(Ny1 - 5) + 鉄筋P_位置(Ny1 - 4)) / 2
                              表示Y_主筋C_1段目(1) = (鉄筋P_位置(Ny1) + 鉄筋P_位置(Ny1 + 1)) / 2
                              表示Y_主筋C_1段目(2) = (鉄筋P_位置(Ny1 + 5) + 鉄筋P_位置(Ny1 + 6)) / 2
                              表示Y_主筋C_1段目(3) = (鉄筋P_位置(Ny1 + 10) + 鉄筋P_位置(Ny1 + 11)) / 2

                  Case Else:
                              表示Y_主筋C_1段目(1) = (鉄筋P_位置(Ny0 - 8) + 鉄筋P_位置(Ny0 - 7)) / 2
                              表示Y_主筋C_1段目(2) = (鉄筋P_位置(Ny0 - 22) + 鉄筋P_位置(Ny0 - 21)) / 2
                          'ERR*    表示Y_主筋C_1段目(3) = (鉄筋P_位置(Ny0 - 36) + 鉄筋P_位置(Ny0 - 35)) / 2
                              表示Y_主筋C_1段目(3) = (鉄筋P_位置(Ny0 - 33) + 鉄筋P_位置(Ny0 - 32)) / 2 '暫定　************************


                              表示Y_主筋C_2段目(1) = (鉄筋P_位置(Ny0 - 12) + 鉄筋P_位置(Ny0 - 11)) / 2
                              表示Y_主筋C_2段目(2) = (鉄筋P_位置(Ny0 - 26) + 鉄筋P_位置(Ny0 - 25)) / 2
                         'ERR*     表示Y_主筋C_2段目(3) = (鉄筋P_位置(Ny0 - 40) + 鉄筋P_位置(Ny0 - 39)) / 2
                              表示Y_主筋C_2段目(3) = (鉄筋P_位置(Ny0 - 33) + 鉄筋P_位置(Ny0 - 32)) / 2  '暫定　************************
                 End Select
    
    
    '[[[  X方向_主筋 ]]]  柱 rが無い場合 処理OK
            Print #60, "[色:黄]\[ﾚ:主筋]"
                 '[ 1段目 ]
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(1)):    Call 橋脚_鉄筋_Pit_ck(柱_主筋_Xpits(1))
                      橋脚_鉄筋θ = 90:  FuckMark$ = "": If 柱_主筋_角s = "Y" Then FuckMark$ = "V"
                      i2 = 鉄筋P_Σ数
                      For ii = 1 To i2
                          主筋i = 柱筋_柱筋Noi(ii): Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(主筋i))
                          Y0 = Val(鉄筋_位置$):  X0 = -.BXL + 鉄筋P_位置(ii):
                          If X0 > 0 Then Exit For
                          Fuck向き$ = "R": If X0 > 0 Then Fuck向き$ = ""
                          Call P_橋脚_鉄筋図("標準", "", FuckMark$, Fuck向き$, X0, Y0)
                          FuckMark$ = "V"
                          Next ii
                 '[ 2段目 ]
                      If 柱_主筋_配置_Xs(2) <> "" Then
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(2)):    Call 橋脚_鉄筋_Pit_ck(柱_主筋_Xpits(2))
                      橋脚_鉄筋θ = 90:  FuckMark$ = "V": 'If 柱_主筋_角s = "Y" Then FuckMark$ = "V"
                      i2 = 鉄筋P_Σ数
                      For ii = 1 To i2 - 1
                          主筋i = 柱筋_柱筋Noi(ii): Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(主筋i))
                          Y0 = Val(鉄筋_位置$):  X0 = -.BXL + 鉄筋P_位置(ii):
                          If X0 > 0 Then
                              Fuck向き$ = "R": If X0 > 0 Then Fuck向き$ = ""
                              Call P_橋脚_鉄筋図("標準", "", FuckMark$, Fuck向き$, X0, Y0)
                              FuckMark$ = "V"
                              End If
                         Next ii
                     End If
                 
                 '[ Y方向 主筋 ]
                          FuckMark$ = "": Fuck向き$ = ""
                          Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(柱_Y_1段_主筋代表i))
                          Y0 = Val(鉄筋_位置$):  X0 = .BXR - 鉄筋_SK位置
                          Call P_橋脚_鉄筋図("標準", "", FuckMark$, Fuck向き$, X0, Y0)
                 
                 
                 
                 '[ 主筋_角 ]  ﾒﾝﾃ
                      If 柱_主筋_角s <> "Y" Then
'                          Print #60, "[色:白]\[ﾚ:主筋]"
'                          FuckMark$ = "": Fuck向き$ = ""
'                          主筋i = 柱筋_柱筋Noi(i2 - 1): Call 橋脚_鉄筋_ck("*","標準", 柱_主筋_部品s(主筋i))
'                          Y0 = Val(鉄筋_位置$):  X0 = -.BXL + 鉄筋P_位置(i2 - 1):
'                          Call P_橋脚_鉄筋図("標準","", "", "", X0, Y0)
'
'                          FuckMark$ = "": Fuck向き$ = "R"
'                          主筋i = 柱筋_柱筋Noi(i2 - 1): Call 橋脚_鉄筋_ck("*","標準", 柱_主筋_部品s(主筋i))
'                          Y0 = Val(鉄筋_位置$):  X0 = -.BXL + 鉄筋P_位置(i2 - 1):
'                          Call P_橋脚_鉄筋図("標準","", "", "", X0, Y0)
                          End If
           
           
           '[[[  X方向_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      
                      '[ 1段目 ]
                       柱筋番号 = 柱_X_1段_主筋代表i:  Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(1)):    Call 橋脚_鉄筋_Pit_ck(柱_主筋_Xpits(1))
                            柱筋n = 0: Y0 = 表示Y_主筋C_1段目(1)
                            For i2 = 1 To 鉄筋P_Σ数
                                 X0 = -.BXL + 鉄筋P_位置(i2): If X0 > 0 Then Exit For
                                 If 柱筋番号 = 柱筋_柱筋Noi(i2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(i2)
                                 Next i2
                            
                            X0 = 鉄筋_L位置(柱筋n) - .BXL:
                            For i2 = 1 To 柱筋n:  Lpit(i2) = 鉄筋_L位置(i2 + 1) - 鉄筋_L位置(i2): Next i2
                            D1$ = ""
                            For i2 = 柱筋n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BXL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋番号):   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                 
                      '[ 2段目 ]
                       If 柱_主筋_配置_Xs(2) <> "" Then
                       柱筋番号 = 柱_X_2段_主筋代表i:  Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(2)):    Call 橋脚_鉄筋_Pit_ck(柱_主筋_Xpits(2))
                            柱筋n = 0: Y0 = 表示Y_主筋C_2段目(1)
                            For i2 = 1 To 鉄筋P_Σ数 - 1
                                 X0 = -.BXL + 鉄筋P_位置(i2): ' If X0 > 0 Then Exit For
                                 If X0 > 0 Then If 柱筋番号 = 柱筋_柱筋Noi(i2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = X0 '鉄筋P_位置(i2)
                                 Next i2
                            
                            X0 = 鉄筋_L位置(1)
                            For i2 = 1 To 柱筋n:  Lpit(i2) = 鉄筋_L位置(i2 + 1) - 鉄筋_L位置(i2): Next i2
                            D1$ = ""
                            For i2 = 1 To 柱筋n - 1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = -X0 + .BXR + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + D1$ + "]\[L:" + FD2(XL2, 0) + "]\[Lm:" + FD2(名称_L2, 0) + "]\[pm:-20,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋番号):   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                        End If
                 
                       '[ Y方向 主筋 ]
                            Call 橋脚_鉄筋_ck("*", "標準", 柱_主筋_部品s(柱_Y_1段_主筋代表i))
                            Y0 = 表示Y_主筋C_1段目(1):  X0 = .BXR - 鉄筋_SK位置
                            XL2 = -X0 + .BXR + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0,0]\[L:" + FD2(XL2, 0) + "]\[Lm:" + FD2(名称_L2, 0) + "]\[pm:-20,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱_Y_1段_主筋代表i): '   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(1)
                 
                 

    '[[[  Y方向_主筋 ]]]  柱 rが無い場合 処理OK
          If 柱_主筋_角s = "Y" Then
            Print #60, "[色:黄]\[ﾚ:主筋]"
                      Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(1)):    Call 橋脚_鉄筋_Pit_ck(柱_主筋_Ypits(1))
                      'For ii = 1 To 柱筋_柱筋Σ数
                      主筋i = 柱筋_柱筋Noi(1): '  D1$ = 橋脚_柱("C" + F9(主筋i)):  主筋$ = 橋脚鉄筋径$(1):
                      主筋dt = 柱_主筋_dt(主筋i)
                      橋脚_鉄筋θ = 90:  Y0 = Val(鉄筋_位置$)
                      X0 = -.BXL + 主筋dt:   Call P_橋脚_鉄筋図("標準", "", "", "R", X0, Y0)
                      X0 = .BXR - 主筋dt:   Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
                      'Next ii

           '[[[  Y方向 左_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      XL = .BX - 2 * 主筋dt: XL2 = 主筋dt + Marl_L1
                      Print #60, "[P:" + FD2(-.BXL + 主筋dt, 表示Y_主筋Y) + "]\[<:180]\[L:" + FD2(-XL2, 0) + "]"
                      柱筋i = 柱筋_D柱筋番号(1):  D1s = Fp_橋脚_柱_主筋(柱筋i)
                      
                      出鉄筋_径$ = "": 前鉄筋_径$ = "":
                             XL0 = 名称_L1 * 現作図_Scale + 2# * Mark_Pit * (柱筋_柱筋種類数 - 1)

                              Print #60, "[L:" + FD2(-XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To 柱筋_柱筋種類数
                                  柱筋i = 柱筋_D柱筋番号(ii):  D1s = Fp_橋脚_柱_主筋(柱筋i)
                                  If 前鉄筋_径$ <> 鉄筋_径$ Then 出鉄筋_径$ = 出鉄筋_径$ + " " + 鉄筋_径$: 前鉄筋_径$ = 鉄筋_径$
                                  鉄筋_○_符号1$ = Trim(出鉄筋_径$)
                                  Select Case ii
                                  Case 柱筋_柱筋種類数: Call P_鉄筋_○名称(1)
                                  Case Else: Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                                  End Select
                              
                              Next ii
           
           
           '[[[  Y方向 右_主筋 Mark ]]]
                      XL = .BX - 2 * 主筋dt: XL2 = 主筋dt + Mark_R1
                      Print #60, "[P:" + FD2(.BXR - 主筋dt, 表示Y_主筋Y) + "]\[<:0]\[L:" + FD2(XL2, 0) + "]"
                      D1s = Fp_橋脚_柱_主筋(柱筋i)
                      出鉄筋_径$ = "": 前鉄筋_径$ = "":
                              XL0 = 名称_L1 * 現作図_Scale + 1.1 * Mark_Pit * (柱筋_柱筋種類数 - 1)
                              Print #60, "[l:" + FD2(XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To 柱筋_柱筋種類数
                              柱筋i = 柱筋_D柱筋番号(ii): D1s = Fp_橋脚_柱_主筋(柱筋i)
                              If 前鉄筋_径$ <> 鉄筋_径$ Then 出鉄筋_径$ = 出鉄筋_径$ + " " + 鉄筋_径$: 前鉄筋_径$ = 鉄筋_径$
                              鉄筋_○_符号1$ = Trim(出鉄筋_径$)
                              Select Case ii
                              Case 柱筋_柱筋種類数: Call P_鉄筋_○名称(1)
                              Case Else: Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              
                              Next ii
             End If
           
           '[[[ 主筋 被ﾘ寸法  ]]]  柱 rが無い場合 処理OK
                   
                   Select Case 柱_主筋_角s
                   Case "Y" 'Y方向_主筋 被ﾘ寸法
                            D11$ = "  [P:" + FD2(-.BXL, 表示Y_主筋被) + "]\[寸:" + FD3(主筋dt, 0, 0) + ",,LR=8]"
                            D12$ = "  [P:" + FD2(.BXR - 主筋dt, 表示Y_主筋被) + "]\[寸:" + FD3(主筋dt, 0, 0) + ",,RL=8]"
                            Print #60, D11$: Print #60, D12$
                   Case Else 'X方向_主筋 被ﾘ寸法
                            Call 橋脚_鉄筋_Pit_ck(柱_主筋_Xpits(1))
                            主筋dt = 鉄筋P_位置(1)  '柱_主筋_dt(1)
                            主筋dt2 = .BX - 鉄筋P_位置(鉄筋P_Σ数 - 1)
                            D11$ = "  [P:" + FD2(-.BXL, 表示Y_主筋被) + "]\[寸:" + FD3(主筋dt, 0, 0) + ",,LR=8]"
                            D12$ = "  [P:" + FD2(.BXR - 主筋dt2, 表示Y_主筋被) + "]\[寸:" + FD3(主筋dt2, 0, 0) + ",,RL=8]"
                            Print #60, D11$: Print #60, D12$
                   
                   End Select

    '[[[  外周 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
              D1s = 橋脚_柱("外HpX")
                  XL = .BXL - 柱_外Hp_dt: XDL = 3 * 現作図_Scale: YDL = 1.5 * 現作図_Scale
              For ii = 1 To 鉄筋P_Σ数:  Y0 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(0, Y0) + "]\[L:" + FD2(-XL, 0) + "|" + FD2(XDL, -YDL) + "]"
                  Next ii
    
    
    '[[[  外周 Hoop 鉄筋断面 ]]]
              Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
              X1 = .BXR - 柱_外Hp_dt
              D1s = 橋脚_柱("外HpY")
              For ii = 1 To 鉄筋P_Σ数:  Y1 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                  Next ii
    
    
    
    '[[[  外周 X Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              X0 = 表示X_XHoop: Y0 = 鉄筋P_位置(1): XL = 左_LL: YL = Y00 - Y0 + Mark_U1
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + 鉄筋_pit$ + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
              Print #60, D1$
                      Call P_鉄筋_○名称(2)
    
    '[[[  外周 Hoop 寸法 ]]]
              寸法位置L3 = -土木橋脚_梁.BXL - 寸法線位置_柱長断面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補L3 = 寸法線位置_柱長断面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              補L31 = (-寸法位置L3 - Cut位置 - .BXL) / 現作図_Scale - 1
              D1s = 橋脚_柱("外HpX")
              
              Print #60, "  [P:" + FD2(寸法位置L3, 0) + "]"
                  D11$ = "  [寸:"
                  Y0 = 0
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Y0 = Y0 + 鉄筋P_L(ii)
                        Select Case Y0
                        Case Is <= 基礎H:          補00 = 補L31
                        Case Is <= 基礎H + 柱H:    補00 = 補L31
                        Case Else:                 補00 = 補L3
                        End Select

                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$


    '[[[  X方向 内側 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"

              Call 橋脚_鉄筋_ck("*", "帯筋", 柱_内Hp_X_部品s(1))
              XL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_B$)
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Hpits)
              
              Print #60, "[dot:]"
              For ii = 1 To 鉄筋P_Σ数
                  Y0 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(0, Y0) + "]\[L:" + FD2(XL / 2, 0) + "]"
                  Next ii
                  Print #60, "[con:]"

    '[[[  X方向 内側  Mark   ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            
            For ii0 = 1 To 柱_内Hp_X_部品_Ty数i
                  X0 = 表示X_XHoop内: Call SP_柱_内Hp_Mark_X(ii0)
                  D2s = "": nni = 0
                  For ii = 1 To 鉄筋P_Σ数
                       Select Case 柱_内Hp_X_配置i(ii)
                           Case ii0: nni = nni + 1: D2s = D2s + FP1(鉄筋P_位置(ii) - 鉄筋P_位置(ii - 1))
                           Case Else
                           End Select
                       If nni = 1 Then Y0 = 鉄筋P_位置(ii): YL = Y00 - Y0 + Mark_U1
                       Next ii
              D1s = "[P:" + FD2(X0, 0) + "]\[<:90," + Mid(D2s, 2) + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
              Print #60, D1s
              Call P_鉄筋_○名称(2)
              X0 = X0 - 300: ' Y00 = Y00 + 400
            Next ii0
    
    '[[[  X方向 内側  Mark  c2-2  (c4) ]]]  暫定
           '* 2002.11.3
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HpX2")
              '内Hp_X_Hpits
              If D1$ <> "" Then
                    D1$ = 橋脚_柱("内HpX1")
                    H_Jaji = 基礎_Hi + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1)
                    H_Y1 = Val(鉄筋_D$) / 2
              
              X0 = 表示X_XHoop内 - 300: Y0 = 0: ' YL = Y00 - Y0 + Mark_U2
                  D2$ = "": nni = 0
                  For ii = 1 To 鉄筋P_Σ数
                       If 鉄筋P_位置(ii) > H_Jaji Then
                       If FP_Stoper_Y位置i(H_Y1) > 0 Then
                            If Y0 = 0 Then Y0 = 鉄筋P_位置(ii): YL = Y00 - Y0 + Mark_U2
                            nni = nni + 1
                            D2$ = D2$ + FP1(鉄筋P_位置(ii) - 鉄筋P_位置(ii - 1))
                            
                            End If
                            End If
                       Next ii
              
              D1$ = "[P:" + FD2(X0, Y0) + "]\[<:90," + Mid(D2$, 2) + ",-]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
              Print #60, D1$
                      D1$ = 橋脚_柱("内HpX2")
                      Call P_鉄筋_○名称(2)
              End If

    '[[[  X方向 内側 Hoop 寸法 ]]] ****
              寸法位置3 = 土木橋脚_梁.BXR + 寸法線位置_柱断面.R開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = 寸法線位置_柱断面.R開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              補31 = (寸法位置3 - Cut位置 - .BXR) / 現作図_Scale - 1
              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Hpits)
              Print #60, "  [P:" + FD2(寸法位置3, 0) + "]"
                  D11$ = "  [寸:"
                  Y0 = 0
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Y0 = Y0 + 鉄筋P_L(ii)
                        Select Case Y0
                        Case Is <= 基礎H:          補00 = 補31
                        Case Is <= 基礎H + 柱H:    補00 = 補31
                        Case Else:                 補00 = 補3
                        End Select
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), 補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$

    '[[[  Y方向 内側 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"

              Call 橋脚_鉄筋_Pit_ck(柱_内Hp_Y_Hpits)
              For ii = 1 To 鉄筋P_Σ数: Y0 = 鉄筋P_位置(ii) + 15
                  Call 橋脚_鉄筋_X位置_ck(柱_内Hp_Y_Xpits(柱_内Hp_Y_配置i(ii)))
                  For i2 = 1 To 鉄筋X位置_Σ数
                       Typei = 鉄筋X位置_Typei(i2):   Call 橋脚_鉄筋_ck("*", "帯筋", 柱_内Hp_Y_部品s(Typei))
                       XL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_B$)
                       X0 = -.BXL + 鉄筋X位置_位置(i2) - XL / 2
                       Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  Next ii

'    '[[[  Y方向 内側 Hoop 寸法 ]]]
    
'    '[[[  CK ]]]  *2002.10.31
'            Print #60, "[色:黄]\[ﾚ:主筋]"
'              橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CK"):
'                      If D1$ <> "" Then
'                      X0 = .BXR - 鉄筋_SK位置: Y0 = .H + 基礎_Hi
'                      梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.h1)
'                      角度1 = 45 - 梁角度 / 2
'                      LL1 = Val(鉄筋_L$):   DLY = 土木橋脚_梁.r2 * Dtan(角度1) + LL1
'                      Call P_橋脚_鉄筋図("標準","", "", "", X0, Y0 - DLY)
'
'                      橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CKR"):
'                      Call P_橋脚_鉄筋図("標準","", "", "", -X0, Y0 - DLY)
'                      End If
'
'           '[[[  CK Mark ]]] *2002.10.31
'            Print #60, "[色:白]\[ﾚ:Mark]"
'              橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CK"):
'                      If D1$ <> "" Then
'                      X0 = .BXR - 鉄筋_SK位置: Y0 = .H + 基礎_Hi
'                      梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.h1)
'                      角度1 = 45 - 梁角度 / 2
'                      LL1 = Val(鉄筋_L$): DLY = 土木橋脚_梁.r2 * Dtan(角度1) + LL1
'
'                      X1 = X0 + 鉄筋L_XL - 0.3 * LL1 * Dcos(梁角度): Y1 = Y0 - DLY + 鉄筋L_YL - 0.3 * LL1 * Dsin(梁角度)
'                     ' X2 = -X1
'                      Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]\[L:" + FD2(0, -Mark_D1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
'                      Call P_鉄筋_○名称(1)
'                      Print #60, "[P:" + FD2(-X1, Y1) + "]\[<:270]\[L:" + FD2(0, -Mark_D1) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
'                      Call P_鉄筋_○名称(1)
'                      End If
'
     End With
     End Sub
Sub SP_柱頭_平断面()
     ' 横断面
     
     
     With 土木橋脚_柱
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = 土木橋脚_梁.BYR + (寸法線位置_柱平面A.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ")
      
      '[[[ 柱躯体 ]]]
     
     
      '[[[ X 寸法  長さ ]]]
           X寸法位置1 = 土木橋脚_梁.BYR + 寸法線位置_柱平面A.U開き * 現作図_Scale
           補1 = 寸法線位置_柱平面A.U開き + 0.6 * 土木橋脚_梁.r / 現作図_Scale - 1
           補11 = (X寸法位置1 - .BYR + 0.6 * .r) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(-土木橋脚_梁.BXL, X寸法位置1) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(土木橋脚_梁.BXL2, 0, -補11) + "|" + FD3(.BX, 0, -補11) + "|" + FD3(土木橋脚_梁.BXR2, 0, -補1) + "]"
           
      '[[[ Y (L) 寸法  長さ ]]]
           Y寸法位置1 = -土木橋脚_梁.BXL - 寸法線位置_柱平面A.L開き * 現作図_Scale
           補1 = 寸法線位置_柱平面A.L開き + 0.6 * 土木橋脚_梁.r / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(Y寸法位置1, -.BYL) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(0, .BY, -補1) + "]"
           
      '[[[  梁,柱_断面図  ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            Call P_橋脚_梁_平面図
            Call P_橋脚_柱_断面図
     
     主筋_Ck_L = 基礎_Hi + 土木橋脚_柱.H + 土木橋脚_梁.H - 800
     
     
     
      '[[[ X方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            Call SP_柱_X方向_主筋_作図
      
      '[[[ X方向_主筋 寸法  ]]]
            寸法位置2 = X寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補2 = (寸法位置2 - 土木橋脚_柱.BYR) / 現作図_Scale - 1
            Call SP_柱_X方向_主筋_寸法作図(寸法位置2, 補2)
     
      '[[[ X方向_主筋 被ﾘ寸法  Y主筋被ﾘ  ]]]
            寸法位置3 = X寸法位置1 - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補3 = (寸法位置3 - 土木橋脚_梁.BYR) / 現作図_Scale - 1
            Call SP_柱_X方向_主筋_被寸法作図(寸法位置3, 補3)
      
      '[[[ Y方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            Call SP_柱_Y方向_主筋_作図
      
      '[[[ Y方向_主筋 寸法  ]]]
            寸法位置2 = Y寸法位置1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補2 = (-寸法位置2 - 土木橋脚_梁.BXL) / 現作図_Scale - 1
            Call SP_柱_Y方向_主筋_寸法作図(寸法位置2, 補2)
      
      '[[[ Y方向_主筋 被ﾘ寸法  X主筋被ﾘ ]]]
            寸法位置3 = Y寸法位置1 + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補3 = (-寸法位置3 - 土木橋脚_梁.BXL) / 現作図_Scale - 1
             Call SP_柱_Y方向_主筋_被寸法作図(寸法位置3, 補3)
     
      '[[[ 角_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            Call PP_柱_角主筋(主筋_Ck_L)
      
      '[[[ 角_主筋 被ﾘ寸法  ]]]
            If 橋脚_柱("角主筋") <> "" Then
                  XL = 橋脚_柱("角主筋_XL")
                  寸法位置4 = X寸法位置1 - 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補4 = (寸法位置4 - .BYR) / 現作図_Scale - 1
                  D11$ = "  [P:" + FD2(-.BXL, 寸法位置4) + "]\[寸:" + FD3(XL, 0, -補4) + "]"
                  D12$ = "  [P:" + FD2(.BXR - XL, 寸法位置4) + "]\[寸:" + F9(-補4) + ":" + FD3(XL, 0, -補4) + "]"
                  Print #60, D11$: Print #60, D12$
                  End If
     
            Print #60, "[色:空]\[ﾚ:Hoop]"
     
    '[[[  Hoop 作図  ]]]
             Call SP_柱_外周_Hoop
     
             D1$ = 橋脚_柱("内HpX2")
          '   If D1$ <> "" Then Call PP_柱_X方向_内_Hoop_2 Else Call SP_柱_内Hp_平面作図_X
             Call SP_柱_内Hp_平面作図_X
             Call SP_柱_内Hp_平面作図_Y
     
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示X_XHoop = -.BXL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.6 * 鉄筋P_Σ数)
                  表示X_XHoop内 = -.BXL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    '[[[  外周 X Hoop Mark  ]]]
             Call SP_柱_外Hp_Mark作図_X(-1200, 250)
     
    '[[[  内部 X Hoop Mark  ]]]
               Call SP_柱_内Hp_Mark作図_X(1, 125, 250)
               Call SP_柱_内Hp_Mark作図_X(2, 225, 650)
               Call SP_柱_内Hp_Mark作図_X(3, 325, 1050)
               Call SP_柱_内Hp_Mark作図_X(4, 425, 1450)
               Call SP_柱_内Hp_Mark作図_X(5, 525, 1850)
     
    
    
    '[[[ 表示Y 座標  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示Y_YHoop = .BYR - (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.5 * 鉄筋P_Σ数)
                  表示Y_YHoop内 = -.BYL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    
    
      D1$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
      R_Mark_R1 = Mark_R1 + Stoper位置_X(Stoper位置_Data数) + Stoper位置_BX(Stoper位置_Data数) / 2
    '[[[  外周 Y Hoop Mark  ]]]
            Call SP_柱_外Hp_Mark作図_Y(-500, 500)
     
     
    '[[[  内部 Y Hoop Mark  ]]]
'              Call P_鉄筋_○名称(1)
     
             Call SP_柱_内Hp_Mark作図_Y(1, -50, 500)
             Call SP_柱_内Hp_Mark作図_Y(2, 350, 500)
             Call SP_柱_内Hp_Mark作図_Y(3, 750, 500)
             Call SP_柱_内Hp_Mark作図_Y(4, 1150, 500)
             Call SP_柱_内Hp_Mark作図_Y(5, 1550, 500)
     
     Call P_橋脚_Stoper_平面("X")
     End With
     End Sub
Sub SP_柱_平断面()
     ' 横断面
     
     With 土木橋脚_柱
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_柱平面B.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ｅ－E")
      
      '[[[ 柱躯体 ]]]
     
     
      '[[[ X 寸法  長さ ]]]
           X寸法位置1 = .BYR + 寸法線位置_柱平面B.U開き * 現作図_Scale
           補1 = 寸法線位置_柱平面B.U開き + 0.6 * .r / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(-.BXL, X寸法位置1) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
           
            
      '[[[ Y (L) 寸法  長さ ]]]
           Y寸法位置1 = -.BXL - 寸法線位置_柱平面B.L開き * 現作図_Scale
           補1 = 寸法線位置_柱平面B.L開き + 0.6 * .r / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(Y寸法位置1, -.BYL) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(0, .BY, -補1) + "]"
           
     
            Print #60, "[色:白]\[ﾚ:躯体]"
     Call P_橋脚_柱_断面図
     
       Print #60, "[色:黄]"
      '[[[ X方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            Call SP_柱_X方向_主筋_作図
      
      '[[[ X方向_主筋 寸法  ]]]
           寸法位置2 = X寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補2 = (寸法位置2 - 土木橋脚_柱.BYR) / 現作図_Scale - 1
            Call SP_柱_X方向_主筋_寸法作図(寸法位置2, 補2)
     
      '[[[ X方向_主筋 被ﾘ寸法   Y主筋被ﾘ ]]]
            寸法位置3 = X寸法位置1 - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補3 = (寸法位置3 - 土木橋脚_梁.BYR) / 現作図_Scale - 1
            Call SP_柱_X方向_主筋_被寸法作図(寸法位置3, 補3)
     
      '[[[ Y方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
           Call SP_柱_Y方向_主筋_作図
      
      '[[[ Y方向_主筋 寸法  ]]]
            寸法位置2 = Y寸法位置1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補2 = (-寸法位置2 - 土木橋脚_柱.BXL) / 現作図_Scale - 1
            Call SP_柱_Y方向_主筋_寸法作図(寸法位置2, 補2)
     
      '[[[ Y方向_主筋 被ﾘ寸法  X主筋被ﾘ  ]]]
            寸法位置3 = Y寸法位置1 + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
            補3 = (-寸法位置3 - 土木橋脚_柱.BXL) / 現作図_Scale - 1
            Call SP_柱_Y方向_主筋_被寸法作図(寸法位置3, 補3)
     
      '[[[ 角_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
          Call PP_柱_角主筋(0)
     
      '[[[ 角_主筋 被ﾘ寸法  ]]]
            If 橋脚_柱("角主筋") <> "" Then
                  XL = 橋脚_柱("角主筋_XL")
                  寸法位置4 = X寸法位置1 - 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補4 = (寸法位置4 - .BYR) / 現作図_Scale - 1
                  D11$ = "  [P:" + FD2(-.BXL, 寸法位置4) + "]\[寸:" + FD3(XL, 0, -補4) + "]"
                  D12$ = "  [P:" + FD2(.BXR - XL, 寸法位置4) + "]\[寸:" + F9(-補4) + ":" + FD3(XL, 0, -補4) + "]"
                  Print #60, D11$: Print #60, D12$
                  End If
     
     
    '[[[  Hoop 作図  ]]]
               Print #60, "[色:空]\[ﾚ:Hoop]"
               Call SP_柱_外周_Hoop
               Call SP_柱_内Hp_平面作図_X
               Call SP_柱_内Hp_平面作図_Y
     
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示X_XHoop = -.BXL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.6 * 鉄筋P_Σ数)
                  表示X_XHoop内 = -.BXL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    '[[[  外周 X Hoop Mark  ]]]
             Call SP_柱_外Hp_Mark作図_X(-1200, 250)
     
    '[[[  内部 X Hoop Mark  ]]]
               Call SP_柱_内Hp_Mark作図_X(1, 125, 250)
               Call SP_柱_内Hp_Mark作図_X(2, 225, 650)
               Call SP_柱_内Hp_Mark作図_X(3, 325, 1050)
               Call SP_柱_内Hp_Mark作図_X(4, 425, 1450)
               Call SP_柱_内Hp_Mark作図_X(5, 525, 1850)
     
    
    
    '[[[ 表示Y 座標  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示Y_YHoop = .BYR - (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.5 * 鉄筋P_Σ数)
                  表示Y_YHoop内 = -.BYL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    '[[[  外周 Y Hoop Mark  ]]]
            Call SP_柱_外Hp_Mark作図_Y(-500, 500)
     
    '[[[  内部 Y Hoop Mark  ]]]
             Call SP_柱_内Hp_Mark作図_Y(1, -50, 500)
             Call SP_柱_内Hp_Mark作図_Y(2, 350, 500)
             Call SP_柱_内Hp_Mark作図_Y(3, 750, 500)
             Call SP_柱_内Hp_Mark作図_Y(4, 1150, 500)
             Call SP_柱_内Hp_Mark作図_Y(5, 1550, 500)
     
     ' 柱組立筋 Begin
     
          
     '[[[ 組立筋 ]]]
             If 柱_組立筋_部品s <> "" Then
               Print #60, "[色:空]\[ﾚ:Hoop]"
              X1 = .BYR - 柱_組立筋_dti: 鉄筋_径$ = "D" + f0(柱_組立筋_径i)
              
              X1 = -柱_組立筋_L / 2: X2 = 柱_組立筋_L / 2
              Y1 = 土木橋脚_柱.BYR - 柱_組立筋_dti
              Y2 = -土木橋脚_柱.BYL + 柱_組立筋_dti
'              Y2 = -土木橋脚_柱.BYL + 柱_組立筋_dti * 2 ''''''''''' nagase
              
              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(柱_組立筋_L, 0) + "]"
              Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(柱_組立筋_L, 0) + "]"
              
             End If
     
     ' 柱組立筋 End

     
     End With
     End Sub

Sub SP_柱_平断面鉄筋配筋図()
     ' 横断面
      
     'With 土木橋脚_柱
      '[[[ 格図名 ]]]
         Y0 = 土木橋脚_柱.BYR + 格図名開き位置 * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ｂ－ｂ鉄筋配筋図")
      
     
            Print #60, "[Msize:" + FD1(橋脚_鉄筋_Mark_Msize) + "]"
   '  Print #60, "[Msize:2.5]"
            Print #60, "[色:白]\[ﾚ:躯体]"
            
            Call P_橋脚_柱_断面図
       
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
            Call SP_柱_X方向_主筋_Mark作図
            Call SP_柱_Y方向_主筋_Mark作図
     
            Call PP_柱_角主筋_Mark(0)
     
    '[[[  Hoop 作図  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            Call SP_柱_外周_Hoop
            Call SP_柱_内Hp_平面作図_X
            Call SP_柱_内Hp_平面作図_Y

     'End With
        
     End Sub


'┌────────────────────────────────────────────────────────────┐
'│ ■ 柱 主筋 作図                                                                                                        │
'└────────────────────────────────────────────────────────────┘

Sub SP_柱_X方向_主筋_作図()
     ' 柱_X方向_主筋 作図
     Dim Datas As String, 主筋s As String, ii As Integer, i2 As Integer, 主筋Noi As Integer, 主筋dt As Single
         For ii = 1 To 柱_主筋_段数_Xi
              Datas = 柱_主筋_Xpits(ii):
              Call 橋脚_鉄筋_位置_ck(Datas): Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(ii))
              For i2 = 1 To 鉄筋位置_Σ数 - 1
                      主筋Noi = 柱筋_柱筋Noi(i2)
                      主筋s = 柱_主筋_径s(主筋Noi): 主筋dt = 柱_主筋_dt(主筋Noi) + Val(Mid(主筋s, 2)) * (ii - 1) * 世_柱筋間隔倍率i
                      Xp = -土木橋脚_柱.BXL + 鉄筋位置_位置(i2): Yp = 土木橋脚_柱.BYR - 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋s + "]"
                      Xp = -土木橋脚_柱.BXL + 鉄筋位置_位置(i2): Yp = -土木橋脚_柱.BYL + 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋s + "]"
                      Next i2
             Next ii
     End Sub

Sub SP_柱_Y方向_主筋_作図()
     ' 柱_Y方向_主筋 作図
     Dim Datas As String, 主筋s As String, ii As Integer, i2 As Integer, 主筋Noi As Integer, 主筋dt As Single
     Dim Si As Integer, Ei As Integer
         For ii = 1 To 柱_主筋_段数_Yi
              Datas = 柱_主筋_Ypits(ii):
              Call 橋脚_鉄筋_位置_ck(Datas): Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(ii))
              Si = 2: Ei = 鉄筋位置_Σ数 - 2: If 柱_主筋_角s = "Y" Then Si = 1: Ei = 鉄筋位置_Σ数 - 1
              For i2 = Si To Ei
                      主筋Noi = 柱筋_柱筋Noi(i2)
                      主筋s = 柱_主筋_径s(主筋Noi): 主筋dt = 柱_主筋_dt(主筋Noi) + Val(Mid(主筋s, 2)) * (ii - 1) * 世_柱筋間隔倍率i
                      
                      Xp = -土木橋脚_柱.BXL + 主筋dt: Yp = -土木橋脚_柱.BYL + 鉄筋位置_位置(i2):   Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋s + "]"
                      Xp = 土木橋脚_柱.BXR - 主筋dt: Yp = -土木橋脚_柱.BYL + 鉄筋位置_位置(i2):    Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋s + "]"
                      Next i2
             Next ii
     End Sub


Sub PP_柱_角主筋(主筋_Ck_L)
     ' 柱_角_主筋 Mark 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("角主筋"): 主筋$ = 橋脚鉄筋径$(1)
                 If D1$ <> "" Then
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      DXL = .C角主筋X: DYL = .C角主筋Y
                      
                      Xp = -.BXL + DXL: Yp = -.BYL + DYL:           Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = -.BXL + DXL: Yp = .BYR - DYL:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = .BXR - DXL: Yp = -.BYL + DYL:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = .BXR - DXL: Yp = .BYR - DYL:             Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      End If
                      End If

     End With
     End Sub


Sub SP_柱_X方向_主筋_Mark作図()
     ' 柱_X方向_主筋 Mark 図
     Dim Datas As String, 主筋s As String, ii As Integer, i2 As Integer, 主筋Noi As Integer, 主筋dt0 As Single, 主筋dt As Single
         
         主筋dt0 = 柱_外Hp_dt + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
         For ii = 1 To 柱_主筋_段数_Xi
              Datas = 柱_主筋_Xpits(ii):
              Call 橋脚_鉄筋_位置_ck(Datas): Call P_橋脚_柱_主筋(柱_主筋_配置_Xs(ii))
              For i2 = 1 To 鉄筋位置_Σ数 - 1
                      主筋Noi = 柱筋_柱筋Noi(i2)
                      主筋s = 柱_主筋_径s(主筋Noi): 主筋dt = 主筋dt0 + 1.6 * 橋脚_鉄筋_Mark_D * 現作図_Scale * (ii - 1)
                      Xp = -土木橋脚_柱.BXL + 鉄筋位置_位置(i2): Yp = 土木橋脚_柱.BYR - 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋Noi) + "]"
                      Xp = -土木橋脚_柱.BXL + 鉄筋位置_位置(i2): Yp = -土木橋脚_柱.BYL + 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋Noi) + "]"
                      Next i2
             Next ii
    End Sub


Private Sub SP_柱_Y方向_主筋_Mark作図()

     Dim Datas As String, 主筋s As String, ii As Integer, i2 As Integer, 主筋Noi As Integer, 主筋dt0 As Single, 主筋dt As Single
         主筋dt0 = 柱_外Hp_dt + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
         For ii = 1 To 柱_主筋_段数_Yi
              Datas = 柱_主筋_Ypits(ii):
              Call 橋脚_鉄筋_位置_ck(Datas): Call P_橋脚_柱_主筋(柱_主筋_配置_Ys(ii))
              For i2 = 2 To 鉄筋位置_Σ数 - 2
                      主筋Noi = 柱筋_柱筋Noi(i2)
                      主筋s = 柱_主筋_径s(主筋Noi): 主筋dt = 主筋dt0 + 1.6 * 橋脚_鉄筋_Mark_D * 現作図_Scale * (ii - 1)
                      
                      Xp = -土木橋脚_柱.BXL + 主筋dt: Yp = -土木橋脚_柱.BYL + 鉄筋位置_位置(i2): Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋Noi) + "]"
                      Xp = 土木橋脚_柱.BXR - 主筋dt: Yp = -土木橋脚_柱.BYL + 鉄筋位置_位置(i2):  Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋Noi) + "]"
                      Next i2
             Next ii
   End Sub


Sub PP_柱_角主筋_Mark(主筋_Ck_L)
     ' 柱_角_主筋 Mark字○ 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("外HpX"):   Hoop_dt = 柱_外Hp_dt
                Hoop_r = 柱_外Hp_r: DX = Hoop_r - (Hoop_r - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2) * Dcos(45)
                主筋dt = Hoop_dt + DX
              '*2002.10.31
              If Hoop_r <= 0 Then 主筋dt = Hoop_dt + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
              
              
              D1$ = 橋脚_柱("角主筋"): 主筋$ = 橋脚鉄筋径$(1): 主筋番号 = 柱筋_柱筋Noi(1)
                 If D1$ <> "" Then
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 主筋dt: Yp = -.BYL + 主筋dt:           Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = -.BXL + 主筋dt: Yp = .BYR - 主筋dt:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = .BXR - 主筋dt: Yp = -.BYL + 主筋dt:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = .BXR - 主筋dt: Yp = .BYR - 主筋dt:             Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      End If
                      End If

     End With
     End Sub

Sub SP_柱_X方向_主筋_寸法作図(ByVal 寸法位置2 As Single, ByVal 補2 As Single)
     ' X方向　----- 配筋
            
            Call 橋脚_鉄筋_Pit_ck(柱_主筋_Xpits(1))
                  Print #60, "  [P:" + FD2(-土木橋脚_柱.BXL, 寸法位置2) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数 - 1:  Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):    D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補2) + "," + Moj$ + "|": Next ii
                  D11$ = D11$ + FD3(土木橋脚_柱.BX - 鉄筋P_位置(鉄筋P_Σ数 - 1), 0, 0) + "]"
                  Print #60, D11$
    End Sub

Sub SP_柱_Y方向_主筋_寸法作図(ByVal 寸法位置2 As Single, ByVal 補2 As Single)
     ' Y方向　|   | 配筋
            Call 橋脚_鉄筋_Pit_ck(柱_主筋_Ypits(1))
                  Print #60, "  [P:" + FD2(寸法位置2, -土木橋脚_柱.BYL) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数 - 1: Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):      D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補2) + "," + Moj$ + "|": Next ii
                  D11$ = D11$ + FD3(0, 土木橋脚_柱.BY - 鉄筋P_位置(鉄筋P_Σ数 - 1), 0) + "]"
                  Print #60, D11$

   End Sub


Sub SP_柱_X方向_主筋_被寸法作図(ByVal 寸法位置3 As Single, ByVal 補3 As Single)
     ' X方向　----- 配筋
     '      | |
     '     ┌────┐
                  
                  主筋dt = 柱_主筋_dt(柱_Y_1段_主筋代表i):  主筋dt2 = 主筋dt + FP_柱_主筋間隔(柱_Y_1段_主筋代表i)
                  XL = 主筋dt: If 柱_主筋_段数_Yi > 1 Then XL = 主筋dt2
                  
                  D11$ = "  [P:" + FD2(-土木橋脚_柱.BXL, 寸法位置3) + "]\"
                  D12$ = "  [P:" + FD2(土木橋脚_柱.BXR - XL, 寸法位置3) + "]\"
                  Select Case 柱_主筋_段数_Yi
                  Case 1:       D11$ = D11$ + "[寸:" + FD3(主筋dt, 0, -補3) + "]"
                                D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(主筋dt, 0, -補3) + "]"
                   
                  Case Else:    D11$ = D11$ + "[寸:" + FD3(主筋dt, 0, -補3) + ",,LR=5|" + FD3(主筋dt2 - 主筋dt, 0, -補3) + ",,RL=5]"
                                D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(主筋dt2 - 主筋dt, 0, -補3) + ",,LR=5|" + FD3(主筋dt, 0, 0) + ",,RL=5]"
                  End Select
                  Print #60, D11$: Print #60, D12$
                  
    End Sub


Sub SP_柱_Y方向_主筋_被寸法作図(ByVal 寸法位置3 As Single, ByVal 補3 As Single)
     ' Y方向　----- 配筋  X配筋被寸法
     '   - ┌───
     '   - │
     '     │
     '     │
     '     └
                  主筋dt = 柱_主筋_dt(柱_X_1段_主筋代表i):  主筋dt2 = 主筋dt + FP_柱_主筋間隔(柱_X_1段_主筋代表i)
                  XL = 主筋dt: If 柱_主筋_段数_Xi > 1 Then XL = 主筋dt2
                  D11$ = "  [P:" + FD2(寸法位置3, -土木橋脚_柱.BYL) + "]\"
                  D12$ = "  [P:" + FD2(寸法位置3, 土木橋脚_柱.BYR - XL) + "]\"
                  Select Case 柱_主筋_段数_Xi
                  Case 1:       D11$ = D11$ + "[寸:" + FD3(0, 主筋dt, -補3) + "]"
                                D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(0, 主筋dt, -補3) + "]"
                   
                  Case Else:    D11$ = D11$ + "[寸:" + FD3(0, 主筋dt, -補3) + ",,LR=5|" + FD3(0, 主筋dt2 - 主筋dt, -補3) + ",,RL=5]"
                                D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(0, 主筋dt2 - 主筋dt, -補3) + ",,LR=5|" + FD3(0, 主筋dt, 0) + ",,RL=5]"
                  End Select
                  Print #60, D11$: Print #60, D12$
    
    
    End Sub




'┌────────────────────────────────────────────────────────────┐
'│ ■ 柱 Hoop 作図                                                                                                        │
'└────────────────────────────────────────────────────────────┘
Sub SP_柱_外周_Hoop()
     ' 柱_外周_Hoop 平面
        
        橋脚_鉄筋θ = 0
        D1$ = 橋脚_柱("外HpX")
                 X0 = -鉄筋L_Xcen: Y0 = 土木橋脚_柱.BYR - 鉄筋_SK位置
                 橋脚_鉄筋θ = 0:  Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
                 X0 = 鉄筋L_Xcen: Y0 = -土木橋脚_柱.BYL + 鉄筋_SK位置
                 橋脚_鉄筋θ = 180:  Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)


        橋脚_鉄筋θ = -180
        D1$ = 橋脚_柱("外HpY")
                 X0 = -土木橋脚_柱.BXL - 2 * 鉄筋L_Xcen + 鉄筋_SK位置: Y0 = -鉄筋L_Ycen
                 橋脚_鉄筋θ = 180:  Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
                 X0 = 土木橋脚_柱.BXR + 2 * 鉄筋L_Xcen - 鉄筋_SK位置: Y0 = 鉄筋L_Ycen
                 橋脚_鉄筋θ = 0:  Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)


     End Sub



Private Sub SP_柱_外Hp_Mark作図_X(ByVal Xp As Single, ByVal Del_Y As Single)
    '[[[  外周 X Hoop Mark 作図 ]]]　　Xp 表示位置   Del_Y 柱からの離れ
      Dim D1s As String, D2s As String
      Dim L1 As Single, Y1 As Single, Y2 As Single
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HpX")
              Y1 = -土木橋脚_柱.BYL + 鉄筋_SK位置: Y2 = 土木橋脚_柱.BYR - 鉄筋_SK位置
              D1s = "[P:" + FD2(Xp, Y1) + "]\[<:90," + F9(Y2 - Y1) + "]\[P:" + FD2(Xp, Y1) + "]"
              L1 = -Y1 + 土木橋脚_柱.BYR + Del_Y:     D2s = "\[P:" + F9(Xp) + "," + F9(Y1) + "]\[L:0," + f1(L1) + "]\[lm:20,0]\[pm:5,0]"
              Print #60, D1s + D2s
              Call P_鉄筋_○名称(1)
     End Sub


Private Sub SP_柱_外Hp_Mark作図_Y(ByVal Yp As Single, ByVal Del_X As Single)
    '[[[  外周 Y Hoop Mark 作図 ]]]
      Dim D1s As String, D2s As String
      Dim L1 As Single, L2 As Single, X1 As Single, X2 As Single
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HpY")
              X1 = -土木橋脚_柱.BXL + 鉄筋_SK位置: X2 = 土木橋脚_柱.BXR - 鉄筋_SK位置
            '  D1$ = "[P:" + FD2(X1, Y0) + "]\[<:0," + F9(X2 - X1) + "]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + R_Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              D1s = "[P:" + FD2(X1, Yp) + "]\[<:0," + F9(X2 - X1) + "]\[P:" + FD2(X1, Yp) + "]"
              L2 = -X1 + 土木橋脚_柱.BXR + Del_X:     D2s = "\[P:" + F9(X1) + "," + F9(Yp) + "]\[L:" + f1(L2) + ",0]\[lm:20,0]\[pm:5,0]"
              Print #60, D1s + D2s
              Call P_鉄筋_○名称(1)
     End Sub




Sub PP_柱_X方向_内_Hoop_2()
     J鉄筋開き = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
     With 土木橋脚_柱
           
           D1$ = 橋脚_柱("内HpX2")
           XL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_B$): YL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_D$)
           D1$ = 橋脚_柱("内HpX2"): ' 必要
                 X0 = -XL / 2: Y0 = -YL / 2
                 橋脚_鉄筋θ = 90:   Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)

     End With
     橋脚_J鉄筋開き = J鉄筋開き
     End Sub


Private Sub SP_柱_内Hp_平面作図_X()
     '柱_X方向_内_Hoop 作図
     Dim XL As Single, YL As Single
     
     Print #60, "[con:]": Hoop_Dy = 0
     Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Ypits(1))
     For ii = 1 To 鉄筋P_Σ数
         橋脚_鉄筋θ = 90:  Call SP_柱_内Hp_作図準備_X(鉄筋P_Typei(ii))
         X0 = -鉄筋L_Xcen: Y0 = -土木橋脚_柱.BYL + 鉄筋P_位置(ii) - 鉄筋L_Ycen
         Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
         Next ii
     
     If 柱_内Hp_X_Ypits(2) <> "" Then
     Print #60, "[con:]": Hoop_Dy = 0
     Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Ypits(2))
     For ii = 1 To 鉄筋P_Σ数
         橋脚_鉄筋θ = 90:  Call SP_柱_内Hp_作図準備_X(鉄筋P_Typei(ii))
         X0 = -鉄筋L_Xcen: Y0 = -土木橋脚_柱.BYL + 鉄筋P_位置(ii) - 鉄筋L_Ycen
         Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
         Next ii
     Print #60, "[con:]"
     End If
     
     
     End Sub

Private Sub SP_柱_内Hp_平面作図_Y()
     ' SP_柱_内Hp_平面作図_Y
     '柱_Y方向_内_Hoop 作図
     
     Print #60, "[con:]": Hoop_Dy = 0
     Call 橋脚_鉄筋_Pit_ck(柱_内Hp_Y_Xpits(1))
     For ii = 1 To 鉄筋P_Σ数
         橋脚_鉄筋θ = 90: Call SP_柱_内Hp_作図準備_Y(鉄筋P_Typei(ii))
         X0 = -土木橋脚_柱.BXL + 鉄筋P_位置(ii) - 鉄筋L_Xcen: Y0 = -鉄筋L_Ycen
         Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
         Next ii
     
     If 柱_内Hp_Y_Xpits(2) <> "" Then
     Print #60, "[dot:]": Hoop_Dy = 0.5
     Call 橋脚_鉄筋_Pit_ck(柱_内Hp_Y_Xpits(2))
     For ii = 1 To 鉄筋P_Σ数
         橋脚_鉄筋θ = 90: Call SP_柱_内Hp_作図準備_Y(鉄筋P_Typei(ii))
         X0 = -土木橋脚_柱.BXL + 鉄筋P_位置(ii) - 鉄筋L_Xcen: Y0 = -鉄筋L_Ycen
         Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
         Next ii
     Print #60, "[con:]"
     End If
     End Sub



Private Sub SP_柱_内Hp_作図準備_X(ByVal 部品i As Integer)
     Dim Datas As String
     Datas = 柱_内Hp_X_部品s(部品i)
     Call 橋脚_鉄筋_ck("", "帯筋", Datas)
            作図Dy = Hoop_Dy * 現作図_Scale
            Hoop鉄筋径$ = 橋脚鉄筋径$(1):
            Hoop_XL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_B$)
            Hoop_YL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_D$) + 2 * 作図Dy
            鉄筋_XX = Hoop_XL: 鉄筋_YY = Hoop_YL
            r1 = 0: r2 = 0: Fook$ = "Y"
            Hoop_X$ = FP_橋脚_鉄筋_Ldata("帯筋", Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
            Hoop_Y$ = FP_橋脚_鉄筋_Ldata("帯筋", Hoop鉄筋径$, Fook$, 鉄筋_D$, r1 - 作図Dy, r2 - 作図Dy)
            Joint_Type$ = UCase(F_RAN(土木橋脚_柱.CY_1_Hoop_Jtype))
            Joint_Type$ = "*" 'UCase(F_RAN(土木橋脚_柱.CY_1_Hoop_Jtype))
            Select Case Joint_Type$
            Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
            Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
            Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
            End Select
                           
            Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
    
    End Sub

Private Sub SP_柱_内Hp_作図準備_Y(ByVal 部品i As Integer)
     Dim Datas As String
     Datas = 柱_内Hp_Y_部品s(部品i)
     Call 橋脚_鉄筋_ck("", "帯筋", Datas)

            作図Dy = Hoop_Dy * 現作図_Scale
            Hoop鉄筋径$ = 橋脚鉄筋径$(1):
            Hoop_XL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_B$)
            Hoop_YL = FP_橋脚_鉄筋_長さ("帯筋", 鉄筋_D$) + 2 * 作図Dy
            鉄筋_XX = Hoop_XL: 鉄筋_YY = Hoop_YL
            r1 = 0: r2 = 0: Fook$ = "Y"
            Hoop_X$ = FP_橋脚_鉄筋_Ldata("帯筋", Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
            Hoop_Y$ = FP_橋脚_鉄筋_Ldata("帯筋", Hoop鉄筋径$, Fook$, 鉄筋_D$, r1 - 作図Dy, r2 - 作図Dy)
            Joint_Type$ = UCase(F_RAN(土木橋脚_柱.CY_1_Hoop_Jtype))
            Select Case Joint_Type$
            Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
            Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
            Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
            End Select
            Call 橋脚_鉄筋_L_ck("帯筋", Data1$)
    End Sub

Private Sub SP_柱_内Hp_Mark_X(ByVal 部品i As Integer)
     Dim 鉄筋s As String, 部品数i As Integer, 部品L As Single
     鉄筋s = Mid(柱_内Hp_X_部品s(部品i), 1, 3)
     部品数i = 柱_内Hp_X_部品i(部品i)
     部品L = 柱_内Hp_X_部品L(部品i)
     
     鉄筋_○_符号$ = "c_ _" + f0(部品i + 柱_外Hp_X_部品_Ty数i + 柱_外Hp_Y_部品_Ty数i):     '○字の   鉄筋符号   Moj1_Moj2_Moj3_Moj4   exp   B_0_2
     鉄筋_○_符号1$ = 鉄筋s:                                    '○字の   鉄筋符号   D22
     鉄筋_○_符号2$ = f0(部品数i) + "-" + 鉄筋s: '○字の   鉄筋符号   3-D22
     鉄筋_○_符号3$ = f0(部品数i) + "-" + 鉄筋s + " x " + F橋2(部品L):  '○字の   鉄筋符号   4-D16 x 9400
     鉄筋_○_符号4$ = 鉄筋s + " x " + F橋2(部品L):      '○字の   鉄筋符号   D16 x 9400
    
     表符号s = "c" + f0(部品i + 柱_外Hp_X_部品_Ty数i + 柱_外Hp_Y_部品_Ty数i)
     表鉄筋径s = 鉄筋s: 表鉄筋本数 = 部品数i: 表鉄筋L = 部品L
     表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
     表鉄筋W箇所 = 部品数i * 鉄筋L_W数: 表鉄筋K箇所 = 部品数i * 鉄筋L_K数
     表鉄筋Marki = 1
                           
    
    End Sub
Private Sub SP_柱_内Hp_Mark_Y(ByVal 部品i As Integer)

     Dim 鉄筋s As String, 部品数i As Integer, 部品L As Single
     鉄筋s = Mid(柱_内Hp_Y_部品s(部品i), 1, 3)
     部品数i = 柱_内Hp_Y_部品i(部品i)
     部品L = 柱_内Hp_Y_部品L(部品i)
     
     鉄筋_○_符号$ = "c_ _" + f0(部品i + 柱_外Hp_X_部品_Ty数i + 柱_外Hp_Y_部品_Ty数i + 柱_内Hp_X_部品_Ty数i): '○字の   鉄筋符号   Moj1_Moj2_Moj3_Moj4   exp   B_0_2
     鉄筋_○_符号1$ = 鉄筋s:                                    '○字の   鉄筋符号   D22
     鉄筋_○_符号2$ = f0(部品数i) + "-" + 鉄筋s: '○字の   鉄筋符号   3-D22
     鉄筋_○_符号3$ = f0(部品数i) + "-" + 鉄筋s + " x " + F橋2(部品L):  '○字の   鉄筋符号   4-D16 x 9400
     鉄筋_○_符号4$ = 鉄筋s + " x " + F橋2(部品L):      '○字の   鉄筋符号   D16 x 9400
    
     表符号s = "c" + f0(部品i + 柱_外Hp_X_部品_Ty数i + 柱_外Hp_Y_部品_Ty数i + 柱_内Hp_X_部品_Ty数i)
     表鉄筋径s = 鉄筋s: 表鉄筋本数 = 部品数i: 表鉄筋L = 部品L
     表鉄筋適用s = "": 表鉄筋材質s = 鉄筋_種別$
     表鉄筋W箇所 = 部品数i * 鉄筋L_W数: 表鉄筋K箇所 = 部品数i * 鉄筋L_K数
     表鉄筋Marki = 1
    
    
    End Sub

Private Sub SP_柱_内Hp_Mark作図_X(ByVal 部品i As Integer, ByVal Xp As Single, ByVal Del_Y As Single)
        If 柱_内Hp_X_部品s(部品i) = "" Then Exit Sub
              Print #60, "[色:白]\[ﾚ:Mark]"
              Print #60, FP_柱_内Hp_Mark位置_X(部品i, Xp, Del_Y)
              Call SP_柱_内Hp_Mark_X(部品i)
              Call P_鉄筋_○名称(1)

    End Sub
Private Sub SP_柱_内Hp_Mark作図_Y(ByVal 部品i As Integer, ByVal Yp As Single, ByVal Del_X As Single)
            
        If 柱_内Hp_Y_部品s(部品i) = "" Then Exit Sub
              Print #60, "[色:白]\[ﾚ:Mark]"
              Print #60, FP_柱_内Hp_Mark位置_Y(部品i, Yp, Del_X)
              Call SP_柱_内Hp_Mark_Y(部品i)
              Call P_鉄筋_○名称(1)

    End Sub

Function FP_柱_内Hp_Mark位置_X(ByVal 部品i As Integer, ByVal Xp As Single, ByVal Del_Y As Single)
      ' Res   exp    FP_柱_内Hp_Mark位置_X=[P:-1846.5,125]\[<:0,750+5X625,*]\[P:-1096.5,125]\[L:2746.5,0]\[lm:20,0]\[pm:5,0]
      ' 部品i  柱_内Hp_X 部品No
      ' Yp  : Mark Y座標  Y0から
      ' Del_X : Mark 柱右面からの出長さ
      Dim ii As Integer, 個数i As Integer, 位置(200) As Single
      Dim D0s As String, D1s As String, D2s As String, D3s As String, Datas As String
      Dim L1 As Single, L2 As Single, DD As Single
     
      橋脚_鉄筋θ = 90
      Datas = 柱_内Hp_X_部品s(部品i): Call 橋脚_鉄筋_ck("", "帯筋", Datas)
      DD = Val(鉄筋_D$)
     
      D1s = ""
      If 柱_内Hp_X_Ypits(2) <> "" Then
           個数i = 0:   Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Ypits(2))
           For ii = 1 To 鉄筋P_Σ数
                 Select Case 鉄筋P_Typei(ii)
                 Case 部品i: 個数i = 個数i + 1:  位置(個数i) = 鉄筋P_位置(ii) + DD / 2
                 Case Else
                 End Select
              Next ii
           D1s = "[P:" + F9(Xp) + "," + F9(-土木橋脚_柱.BYL) + "]\[<:90,": D0s = ""
           For ii = 1 To 個数i:  D0s = D0s + "+" + F9(位置(ii) - 位置(ii - 1)): Next ii:   D1s = D1s + Mid(D0s, 2) + ",*]\"
           End If
      
      個数i = 0:  Call 橋脚_鉄筋_Pit_ck(柱_内Hp_X_Ypits(1))
           For ii = 1 To 鉄筋P_Σ数
                 Select Case 鉄筋P_Typei(ii)
                 Case 部品i: 個数i = 個数i + 1:  位置(個数i) = 鉄筋P_位置(ii) + DD / 2
                 Case Else
                 End Select
              Next ii
           D2s = "[P:" + F9(Xp) + "," + F9(-土木橋脚_柱.BYL) + "]\[<:90,": D0s = ""
           For ii = 1 To 個数i:  D0s = D0s + "+" + F9(位置(ii) - 位置(ii - 1)): Next ii:   D2s = D2s + Mid(D0s, 2) + ",*]"
      
      L1 = -土木橋脚_柱.BYL + 位置(1): L2 = -L1 + 土木橋脚_柱.BYR + Del_Y
      D3s = "\[P:" + F9(Xp) + "," + F9(L1) + "]\[L:0," + f1(L2) + "]\[lm:20,0]\[pm:5,0]"
      FP_柱_内Hp_Mark位置_X = D1s + D2s + D3s

     End Function

Function FP_柱_内Hp_Mark位置_Y(ByVal 部品i As Integer, ByVal Yp As Single, ByVal Del_X As Single)
      ' Res   exp    FP_柱_内Hp_Mark位置_Y=[P:-1846.5,125]\[<:0,750+5X625,*]\[P:-1096.5,125]\[L:2746.5,0]\[lm:20,0]\[pm:5,0]
      ' 部品i  柱_内Hp_Y 部品No
      ' Yp  : Mark Y座標  Y0から
      ' Del_X : Mark 柱右面からの出長さ
      Dim ii As Integer, 個数i As Integer, 位置(200) As Single
      Dim D0s As String, D1s As String, D2s As String, D3s As String, Datas As String
      Dim L1 As Single, L2 As Single, BB As Single
     
      橋脚_鉄筋θ = 90
      Datas = 柱_内Hp_Y_部品s(部品i): Call 橋脚_鉄筋_ck("", "帯筋", Datas)
      BB = Val(鉄筋_B$)
     
      D1s = ""
      If 柱_内Hp_Y_Xpits(2) <> "" Then
           個数i = 0:   Call 橋脚_鉄筋_Pit_ck(柱_内Hp_Y_Xpits(2))
           For ii = 1 To 鉄筋P_Σ数
                 Select Case 鉄筋P_Typei(ii)
                 Case 部品i: 個数i = 個数i + 1:  位置(個数i) = 鉄筋P_位置(ii) + BB / 2
                 Case Else
                 End Select
              Next ii
           D1s = "[P:" + F9(-土木橋脚_柱.BXL) + "," + F9(Yp) + "]\[<:0,": D0s = ""
           For ii = 1 To 個数i:  D0s = D0s + "+" + F9(位置(ii) - 位置(ii - 1)): Next ii:   D1s = D1s + Mid(D0s, 2) + ",*]\"
           End If
      
      個数i = 0:  Call 橋脚_鉄筋_Pit_ck(柱_内Hp_Y_Xpits(1))
           For ii = 1 To 鉄筋P_Σ数
                 Select Case 鉄筋P_Typei(ii)
                 Case 部品i: 個数i = 個数i + 1:  位置(個数i) = 鉄筋P_位置(ii) + BB / 2
                 Case Else
                 End Select
              Next ii
           D2s = "[P:" + F9(-土木橋脚_柱.BXL) + "," + F9(Yp) + "]\[<:0,": D0s = ""
           For ii = 1 To 個数i:  D0s = D0s + "+" + F9(位置(ii) - 位置(ii - 1)): Next ii:   D2s = D2s + Mid(D0s, 2) + ",*]"
      
      L1 = -土木橋脚_柱.BXL + 位置(1): L2 = -L1 + 土木橋脚_柱.BXR + Del_X
      D3s = "\[P:" + F9(L1) + "," + F9(Yp) + "]\[L:" + f1(L2) + ",0]\[lm:20,0]\[pm:5,0]"
      FP_柱_内Hp_Mark位置_Y = D1s + D2s + D3s

     End Function




Private Sub SP_柱_主筋作図(ByVal 部品s As String)
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*柱_主筋 " + 部品s
     
     D1s = 橋脚_柱(部品s): If D1s = "" Then Exit Sub
     橋脚_鉄筋θ = 90:
     Y0 = Val(鉄筋_位置$)

     Call P_橋脚_鉄筋図("標準", "Y", "", "", 0, Y0)
     Print #60, "[Pm:" + FD2(12, 70) + "]"
     
     Call P_鉄筋_○名称縦(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub

Sub P_柱_CK()
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*CK"
      橋脚_鉄筋θ = 90: D1s = 橋脚_柱("CK"):
     Call P_橋脚_鉄筋図("標準", "Y", "", "", 0, 0)
     Print #60, "[Pm:" + FD2(-5, -20) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y

     End Sub

Private Sub SP_柱_外Hp_部品作図_X()

     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c1-X"
     橋脚_鉄筋θ = 0
     
     D1s = 橋脚_柱("外HpX")
     
     Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, 0)
     
'     Print #60, "[Pm:" + FD2(-10, -20) + "]"
     Print #60, "[Pm:" + FD2(-10, -12) + "]" ''''''''''''nagase
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y

    
    End Sub

Private Sub SP_柱_外Hp_部品作図_Y()
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c1-Y"
     
     D1s = 橋脚_柱("外HpY")
     
     橋脚_鉄筋θ = 180
     
     Call P_橋脚_鉄筋図("帯筋", "Y", "", "", 鉄筋L_Xcen, 鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-鉄筋L_Xcen, 2 * 鉄筋L_Ycen) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y

    End Sub
                   
Private Sub SP_柱_内Hp_部品作図_X(ByVal 部品s As String)
    ' 柱　X方向 内 Hopp を作図
    ' 部品i 部品番号
     Dim D1s As String
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*柱_内Hp_X_" + f0(部品i)
     
     橋脚_鉄筋θ = 90
     D1s = 橋脚_柱(部品s): If D1s = "" Then Exit Sub
     鉄筋L_加工調整$ = "Y"

     Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
                   
Private Sub SP_柱_内Hp_部品作図_Y(ByVal 部品s As String)
    ' 柱　Y方向 内 Hopp を作図
    ' 部品i 部品番号
    Dim D1s As String
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*柱_内Hp_Y_" + f0(部品i)
     
    ' 部品i = Val(Mid(部品s, 5))
    ' If 柱_内Hp_Y_部品s(部品i) = "" Then Exit Sub
     橋脚_鉄筋θ = 90
     D1s = 橋脚_柱(部品s): If D1s = "" Then Exit Sub
     
     鉄筋L_加工調整$ = "Y"

    ' Call SP_柱_内Hp_作図準備_Y(部品i)
     Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
    ' Call SP_柱_内Hp_Mark_Y(部品i)
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y
     End Sub
                   
                   
     ' 柱組立筋 Begin
Private Sub SP_柱_組立筋_部品作図()

     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c1-X"
     橋脚_鉄筋θ = 0
     
     D1s = 橋脚_柱("組立筋"): If D1s = "" Then Exit Sub
     
     Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, 0)
     
     Print #60, "[Pm:" + FD2(-10, -12) + "]" '''''''''''''''' 加工図の鉄筋記号、本数　表示位置 nagase
'     Print #60, "[Pm:" + FD2(-10, -20) + "]"
     
     Call P_鉄筋_○名称(3)
     元原点X = 原点X: 元原点Y = 原点Y

    End Sub
     ' 柱組立筋 End
                   
Function FP_表示位置X(位置$, X位置)
    ' 表示位置_X個数   表示位置_X(ii) から計算
    ' 位置$  L or C or R

      i1 = 表示位置_X個数 - 1
     For ii = 1 To 表示位置_X個数:  If X位置 < 表示位置_X(ii) Then i1 = ii: Exit For
             Next ii
                        
     Select Case 位置$
     Case "L":  i2 = i1 - 1: i1 = i1 - 2
     Case "C":  i2 = i1 - 1
     Case Else:  i2 = i1 + 1
     End Select
     If i1 < 1 Then i1 = 1 ' ﾒﾝﾃ 2003.8.30
     If i2 < 1 Then i2 = 1
     
     LL1 = (表示位置_X(i1) + 表示位置_X(i2)) / 2
     FP_表示位置X = LL1
     End Function

Function FP_表示位置Y(位置$, Y位置)
    ' 表示位置_Y個数   表示位置_Y(ii) から計算
    ' 位置$  U or C or D

      i1 = 表示位置_Y個数 - 1
     For ii = 1 To 表示位置_Y個数:  If Y位置 < 表示位置_Y(ii) Then i1 = ii: Exit For
             Next ii
                        
     If i1 < 1 Then i1 = 1: ' ﾒﾝﾃ
     Select Case 位置$
     Case "U":   LL1 = 表示位置_Y(i1)
     Case "C":  LL1 = (表示位置_Y(i1) + 表示位置_Y(i1 - 1)) / 2
     Case Else: LL1 = 表示位置_Y(i1 - 1)
     End Select
     FP_表示位置Y = LL1
     End Function

Function FP_表示位置Z(位置$, Z位置)
    ' 表示位置_Z個数   表示位置_Z(ii) から計算
    ' 位置$  U or C or D

      i1 = 表示位置_Z個数 - 1
     For ii = 1 To 表示位置_Z個数:  If Z位置 > 表示位置_Z(ii) Then i1 = ii: Exit For
             Next ii
                        
     If i1 < 1 Then i1 = 1: If 世誤CK > 99 Then Stop ' ﾒﾝﾃ
     Select Case 位置$
     Case "U":   LL1 = 表示位置_Z(i1 - 1)
     Case "C":  LL1 = (表示位置_Z(i1) + 表示位置_Z(i1 - 1)) / 2
     Case Else: LL1 = 表示位置_Z(i1)
     End Select
     FP_表示位置Z = LL1
     End Function
 
 
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃                                                                                                                                    ┃
'┃■ 梁         作図
'┃                                                                                                                                    ┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub SP_梁_立長断面_作図()
     'SP_梁_立長断面_作図
     元原点X = 原点X: 元原点Y = 原点Y
     
     Dim D1s As String, D2s As String
     Dim Mark_位置i As Single
     ReDim SMark$(500)
     Dim 主筋Types As String
     
     主筋Types = FP_主筋Types
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
     With 土木橋脚_梁
     
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale:     Mark_U2 = Mark_U1 + 1.2 * Mark_Pit
                 Mark_D1 = .H + 1.2 * Mark_Pit:    Mark_D2 = Mark_D1 + 1.2 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
     
      '[[[ 格図名 ]]]
         
         左梁勾配 = -.h1 / .BXL2: 左梁角度 = Calu角度(0, 0, .BXL2, .h1)
         右梁勾配 = .h1 / .BXR2: 右梁角度 = Calu角度(0, 0, .BXR2, .h1)
         
         Y0 = (寸法線位置_梁長断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ａ－Ａ")
     
                
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
          下がり = 土木橋脚_梁.勾配L
          '下がり = 0
          Call P_橋脚_梁_長断面図(0, 0, 下がり, 0)
          
      
      '[[[ 断面位置指定 ]]]
             X1 = -.BXL - 10 * 現作図_Scale: Y1 = 下がり - 1 * 現作図_Scale
             X2 = .BXR + 10 * 現作図_Scale
             Call P_橋脚_断面位置指定(X2, Y1, X1, Y1, "Ｂ", "Ｂ", 0)
             'Y1 = -.h2 + 3 * 現作図_Scale
             'Call P_橋脚_断面位置指定(X2, Y1, X1, Y1, "Ｃ", "Ｃ", 0)
             X1 = 土木橋脚_柱.BXR + 5 * 現作図_Scale: Y1 = 15 * 現作図_Scale
             X2 = X1: Y2 = -1.4 * .H - 10 * 現作図_Scale
             Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, "ａ", "ａ", 0)
      
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_梁長断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_梁長断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
          
          ' D寸法
                  寸法位置3 = 1.25 * .H + 寸法線位置_梁長断面.D開き * 現作図_Scale
                  補3 = 寸法線位置_梁長断面.D開き - 1
                  補31 = (寸法位置3 - .h2) / 現作図_Scale - 1
                  Print #60, "[P:" + FD2(-.BXL, -寸法位置3) + "]"
                  Print #60, "[寸:" + F9(補31) + ":" + FD3(.BXL2, 0, 補3) + "|" + FD3(土木橋脚_柱.BX, 0, 補3) + "|" + FD3(.BXR2, 0, 補31) + "]"
          
          
          
          ' L寸法
                  LLL = 寸法線位置_梁長断面.L開き
                  Print #60, "[P0:]\[p:" + FD2(-.BXL, -.H) + "]\[pm:" + FD2(-LLL, 0) + "]"
                  Print #60, "[寸:" + F9(-LLL - .BXL2 / 現作図_Scale + 1) + ":" + FD2(0, .h1) + "]"
                  Print #60, "[寸:" + F9(-LLL + 1) + ":" + FD3(0, .h2 + .勾配L, -LLL + 1) + "]"
          
          ' R寸法
                  RLL = 寸法線位置_梁長断面.R開き
                  Print #60, "[P0:]\[p:" + FD2(.BXR, -.H) + "]\[pm:" + FD2(RLL, 0) + "]"
                  Print #60, "[寸:" + F9(RLL + .BXR2 / 現作図_Scale - 1) + ":" + FD2(0, .h1) + "]"
                  Print #60, "[寸:" + F9(RLL - 1) + ":" + FD3(0, .h2 + .勾配L, RLL - 1) + "]"
          
     
    '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
             Select Case 主筋Types
             Case "起点Loop":             Call SP_橋脚_Stoper_X断面("起点側", 下がり, -下がり)
             Case Else:                   Call SP_橋脚_Stoper_X断面("", 下がり, -下がり)
             End Select
           Print #60, "[con:]"
     
     
     
    '[[[  X 表示位置   ]]]
              D1s = 橋脚_梁("Spit"):  表示位置_X個数 = 鉄筋P_Σ数
              For ii = 1 To 鉄筋P_Σ数:  表示位置_X(ii) = -.BXL + 鉄筋P_位置(ii):     Next ii
              表示位置_XPit = Abs(表示位置_X(2) - 表示位置_X(3))
             
             Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
     
    '[[[  Z 表示位置   ]]]
              D1s = 橋脚_梁("水平補強筋"): 表示位置_Z個数 = 鉄筋P_Σ数
              表示位置_Z_Start = -鉄筋P_位置(1)
              For ii = 1 To 鉄筋P_Σ数:  表示位置_Z(ii) = -鉄筋P_位置(ii):      Next ii
              表示位置_Zpit = Abs(表示位置_Z(2) - 表示位置_Z(3))
     
     
     Print #60, "[色:黄]"
      
    
    
    '[[[ ﾙｰﾌﾟ筋横図 ]]]
    
            Print #60, "[色:黄]\[ﾚ:主筋]"
            橋脚_J鉄筋開き_BAK = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
            
            Select Case 主筋Types
            Case "終点Loop"
                 For ii = 1 To 梁_終点Loop筋_Ty数i: 橋脚_鉄筋θ = 0: D1s = 橋脚_梁("終点Loop" + f0(ii) + "横")
                      If D1s <> "" Then
                            For i2 = 1 To 梁_終点Loop筋_部品数i(ii)
                                X0 = -鉄筋L_Xcen: Y0 = -鉄筋P_位置(i2)
                                Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
                                Next i2
                            End If
                       Next ii
            Case "起点Loop"
                 For ii = 1 To 梁_起点Loop筋_Ty数i: 橋脚_鉄筋θ = 0: D1s = 橋脚_梁("起点Loop" + f0(ii) + "横")
                      If D1s <> "" Then
                            For i2 = 1 To 梁_起点Loop筋_部品数i(ii)
                                X0 = -鉄筋L_Xcen: Y0 = -鉄筋P_位置(i2)
                                Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
                                Next i2
                            End If
                       Next ii
            Case Else
            End Select
            
            
            橋脚_J鉄筋開き = 橋脚_J鉄筋開き_BAK
     
     
    '[[[ 終点 ﾙｰﾌﾟ筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
           ' XX = Stoper位置_X(1) - Stoper位置_BX(1) / 2:  X0 = FP_表示位置X("L", XX)
            X0 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(梁_幅止筋_位置数i - 3) + 20
            Mark_位置i = Mark_U1
            
            
            Select Case 主筋Types
            Case "終点Loop"
                 For ii = 1 To 梁_終点Loop筋_Ty数i: 橋脚_鉄筋θ = 0: D1s = 橋脚_梁("終点Loop" + f0(ii) + "横")
                      If D1s <> "" Then
                           Y0 = -鉄筋P_位置(鉄筋P_Σ数):
                           Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]": ' ",-]"
                           YLL = -Y0 + Mark_位置i
                           Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                           Call P_鉄筋_○名称(2)
                           X0 = X0 - 70: Mark_位置i = Mark_U2
                           End If
                      Next ii
            Case "起点Loop"
                 For ii = 1 To 梁_起点Loop筋_Ty数i: 橋脚_鉄筋θ = 0: D1s = 橋脚_梁("起点Loop" + f0(ii) + "横")
                      If D1s <> "" Then
                           Y0 = -鉄筋P_位置(鉄筋P_Σ数):
                           Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]": ' ",-]"
                           YLL = -Y0 + Mark_位置i
                           Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                           Call P_鉄筋_○名称(2)
                           X0 = X0 - 70: Mark_位置i = Mark_U2
                           End If
                      Next ii
            
            Case Else
            End Select
            
            
            
            
            
            
     
' [[[ 保存 ]]]
'    '[[[ Loop内直筋 ]]]  作図なし
'            Print #60, "[色:黄]\[ﾚ:主筋]"
'             橋脚_鉄筋θ = 0:  D1s = 橋脚_梁("Loop内直筋")
'                      X0 = -鉄筋L_Xcen:  Y0 = -鉄筋_SK位置:     Call P_橋脚_鉄筋図("標準","", "", "", X0, Y0)
'              X1 = -鉄筋L_Xcen: X2 = 鉄筋L_Xcen
'
'               '[[[[ Mark ]]]
'                   X0 = FP_表示位置X("C", 0)
'                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
'                   YLL = -Y0 + Mark_U1
'                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
'                   Call P_鉄筋_○名称(1)
'
'
'
'    '[[[ Loop内直筋端部 ]]]  作図なし
'            Print #60, "[色:黄]\[ﾚ:主筋]"
'             橋脚_鉄筋θ = 0: D1s = 橋脚_梁("起点側Loop内直筋端部")
'                      X0 = X1: Y0 = -鉄筋_SK位置:    Call P_橋脚_鉄筋図("標準","", "", "", X0, Y0)
'
'               '[[[[ Mark ]]]
'            Print #60, "[色:白]\[ﾚ:Mark]"
'                   X0 = FP_表示位置X("R", -.BXL)
'                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
'                   YLL = -Y0 + Mark_U1
'                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
'                   Call P_鉄筋_○名称(1)
'
'
'    '[[[ Loop内直筋端部R ]]]  作図なし
'            Print #60, "[色:黄]\[ﾚ:主筋]"
'             橋脚_鉄筋θ = 90: D1s = 橋脚_梁("起点側Loop内直筋端部R")
'                      X0 = X2 - 鉄筋L_XL: Y0 = -鉄筋_SK位置 - 鉄筋L_YL: Call P_橋脚_鉄筋図("標準","", "", "", X0, Y0)
'                      Y0 = -鉄筋_SK位置
'               '[[[[ Mark ]]]
'            Print #60, "[色:白]\[ﾚ:Mark]"
'                   X0 = FP_表示位置X("L", X2 - 鉄筋L_XL / 2)
'                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
'                   YLL = -Y0 + Mark_U1
'                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
'                   Call P_鉄筋_○名称(1)
'
'
'
'
'    '[[[ Loop内直筋　内部 ]]] 作図なし
'            Print #60, "[色:黄]\[ﾚ:主筋]"
'             橋脚_鉄筋θ = 90: D1s = 橋脚_梁("起点側Loop内直筋内部2")
'                      X0 = X2 - 鉄筋L_XL: Y0 = -鉄筋_SK位置 - 鉄筋L_YL:
'                      For i2 = 1 To Stoper位置_X個数 - 1:
'                            X3 = (Stoper位置_X(i2) + Stoper位置_X(i2 + 1)) / 2 - 鉄筋L_XL / 2
'                            Call P_橋脚_鉄筋図("標準","", "", "", X3, Y0)
'                            Next i2
'
'               '[[[[ Mark ]]]
'            Print #60, "[色:白]\[ﾚ:Mark]"
'                      Y0 = -鉄筋_SK位置
'                      For i2 = 1 To Stoper位置_X個数 - 1:
'                            X3 = (Stoper位置_X(i2) + Stoper位置_X(i2 + 1)) / 2
'                            X0 = FP_表示位置X("R", X3)
'                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
'                            YLL = -Y0 + Mark_U1
'                            Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
'                            Call P_鉄筋_○名称(1)
'                            Next i2
     
     
    '[[[ 下鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
           ' 下端筋=D22_K95_Z-76_B3160_H1848_@130+5x180.6+3x211.3+203+130_SD390   Old B3=D25_@3136+164+4x250+400+4x250+164_   B95+3445.1    D98+1327.9+1534.4_r150
             橋脚_鉄筋θ = 270:  D1s = 橋脚_梁("下端筋")
                     X0 = .BXR - 鉄筋_SK位置: Y0 = 鉄筋_Z位置
                     Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
                D1s = 橋脚_梁("下端筋R")
                     X0 = -.BXL + 鉄筋_SK位置: Y0 = 鉄筋_Z位置
                     Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
                     

   
     
          '[[[ 下鉄筋  Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                   'X11 = -土木橋脚_柱.BXL - 500: X22 = 土木橋脚_柱.BXR + 500
                   XL = 500
                   YL = -梁_下端筋_Zi + 梁_下端筋_Hi + XL * 梁下勾配i
                   X11 = -土木橋脚_梁.BXL + XL: X22 = 土木橋脚_梁.BXR - XL - 梁_下端筋_dti
                   Y11 = -YL
                   Print #60, "[P:" + FD2(X11, Y11) + "]\[<:270]"
                   YLL = Mark_D2 - Abs(Y11)
                   Print #60, "[P:" + FD2(X11, Y11) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
     
                   Print #60, "[P:" + FD2(X22, Y11) + "]\[<:270]"
                   YLL = Mark_D2 - Abs(Y11)
                   Print #60, "[P:" + FD2(X22, Y11) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
     
     
     
    
   '[[[ 幅止筋 ]]]
            Dim Htni As Integer, HtL(5) As Single, HtY(5) As Single
            Print #60, "[色:空]\[ﾚ:Hoop]"
              For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii): Y1 = -梁_幅止筋_dti
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -梁_幅止筋_Hi) + "]"
                  Next ii
    
   '[[[ 幅止筋1 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("幅止筋1"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL:  Y0 = FP_表示位置Z("U", Y0) + 0.8 * 表示位置_Zpit
                       X0 = 0:  D1s = ""
                       For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii)
                             Select Case 梁_幅止筋_位置_Tyi(ii)
                             Case 1: If X0 = 0 Then X0 = X1: X2 = X1
                                          Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                          X2 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D1s, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, 15) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
    
            Select Case 主筋Types
            Case "終点Loop"
           '[[[ 幅止筋3 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("幅止筋3"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL:   Y0 = FP_表示位置Z("U", Y0) + 0.5 * 表示位置_Zpit
                       If D1s <> "" Then
                       X0 = 0:  D1s = ""
                       For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii)
                             Select Case 梁_幅止筋_位置_Tyi(ii)
                             Case 2: If X0 = 0 Then X0 = X1: X2 = X1
                                          Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                          X2 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D1s, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -9) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
    
            '[[[ 幅止筋5 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("幅止筋5"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL:   Y0 = FP_表示位置Z("U", Y0) + 0.3 * 表示位置_Zpit
                       If D1s <> "" Then
                       X0 = 0:  D1s = ""
                       For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii)
                             Select Case 梁_幅止筋_位置_Tyi(ii)
                             Case 3, 4: If X0 = 0 Then X0 = X1: X2 = X1
                                          Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                          X2 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D1s, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -18) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
            Case Else
           '[[[ 幅止筋2 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("幅止筋2"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL:   Y0 = FP_表示位置Z("U", Y0) + 0.5 * 表示位置_Zpit
                       If D1s <> "" Then
                       X0 = 0:  D1s = ""
                       For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii)
                             Select Case 梁_幅止筋_位置_Tyi(ii)
                             Case 2, 4: If X0 = 0 Then X0 = X1: X2 = X1
                                          Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                          X2 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D1s, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -9) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
    
            '[[[ 幅止筋4 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("幅止筋4"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL:   Y0 = FP_表示位置Z("U", Y0) + 0.3 * 表示位置_Zpit
                       If D1s <> "" Then
                       X0 = 0:  D1s = ""
                       For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii)
                             Select Case 梁_幅止筋_位置_Tyi(ii)
                             Case 3: If X0 = 0 Then X0 = X1: X2 = X1
                                          Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                          X2 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D1s, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -18) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
            
            
            End Select
    
    
    '[[[  上ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
              Y0 = -梁_上S_Z_dti '***
              For ii = 1 To 梁_St_位置数i: HL = 梁_上St_位置_H(ii) + 梁_上St_Fook_r
                  X1 = -土木橋脚_柱.BXL - 梁_St_位置_Xi(ii):  X2 = 土木橋脚_柱.BXR + 梁_St_位置_Xi(ii)
                  Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, -HL) + "]"
                  Print #60, "[P:" + FD2(X2, Y0) + "]\[L:" + FD2(0, -HL) + "]"
                  Next ii
    
    '[[[  上ｽﾀｰﾗｯﾌﾟ  Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            
            
            '[上St6]
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("上St6"): Y0 = 表示位置_Z_Start - 3.6 * 表示位置_Zpit
                       If D1s <> "" Then
                            X01 = -土木橋脚_柱.BXL: X02 = 土木橋脚_柱.BXR
                            X0 = 0: X2 = 0: D1s = ""
                            For ii = 1 To 梁_St_位置数i: X1 = 梁_St_位置_Xi(ii)
                                  Select Case 梁_上St_位置_Tyi(ii)
                                  Case 6:  Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                              X2 = X1: X9 = X1
                                  Case Else:
                                  End Select
                                  Next ii
                            X9 = X9 + 土木橋脚_柱.BXR
                            Print #60, "[P:" + FD2(X01, Y0) + "]\[<:180," + Mid(D1s, 2) + ",*]"
                            Print #60, "[P:" + FD2(X02, Y0) + "]\[<R:180," + Mid(D1s, 2) + ",*]"
                            XLL = .BXL + X9 + Mark_L1
                            Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, -0.8 * Mark_Pit) + "]\[Lm:" + FD2(-35, 0) + "]\[pm:5,0]"
                            Call P_鉄筋_○名称(2): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       End If
            
            
            
            
            
            
            Select Case 主筋Types
            Case "終点Loop"
            '[上St2]
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("上St2"): Y0 = 表示位置_Z_Start - 1.2 * 表示位置_Zpit
                       X01 = -土木橋脚_柱.BXL: X02 = 土木橋脚_柱.BXR
                       X0 = 0: X2 = 0: D1s = ""
                       For ii = 1 To 梁_St_位置数i: X1 = 梁_St_位置_Xi(ii)
                             Select Case 梁_上St_位置_Tyi(ii)
                             Case 1, 2:  Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                         X2 = X1: X9 = X1
                             Case Else:
                             End Select
                             Next ii
                       X9 = X9 + 土木橋脚_柱.BXR
                       Print #60, "[P:" + FD2(X01, Y0) + "]\[<:180," + Mid(D1s, 2) + "]"
                       Print #60, "[P:" + FD2(X02, Y0) + "]\[<R:180," + Mid(D1s, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, 0.7 * Mark_Pit) + "]\[Lm:" + FD2(-35, 0) + "]\[pm:5,0]"
                       Call P_鉄筋_○名称(2): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
            '[上St5]
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("上St5"): Y0 = 表示位置_Z_Start - 1.6 * 表示位置_Zpit
                       If D1s <> "" Then
                            X01 = -土木橋脚_柱.BXL: X02 = 土木橋脚_柱.BXR
                            X0 = 0: X2 = 0: D1s = ""
                            For ii = 1 To 梁_St_位置数i: X1 = 梁_St_位置_Xi(ii)
                                  Select Case 梁_上St_位置_Tyi(ii)
                                  Case 3, 4:  Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                              X2 = X1: X9 = X1
                                  Case Else:
                                  End Select
                                  Next ii
                            X9 = X9 + 土木橋脚_柱.BXR
                            Print #60, "[P:" + FD2(X01, Y0) + "]\[<:180," + Mid(D1s, 2) + ",*]"
                            Print #60, "[P:" + FD2(X02, Y0) + "]\[<R:180," + Mid(D1s, 2) + ",*]"
                            XLL = .BXL + X9 + Mark_L1
                            Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, -0.5 * Mark_Pit) + "]\[Lm:" + FD2(-35, 0) + "]\[pm:5,0]"
                            Call P_鉄筋_○名称(2): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       End If
              Case Else
            '[上St1]
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("上St1"): Y0 = 表示位置_Z_Start - 1.2 * 表示位置_Zpit
                       X01 = -土木橋脚_柱.BXL: X02 = 土木橋脚_柱.BXR
                       X0 = 0: X2 = 0: D1s = ""
                       For ii = 1 To 梁_St_位置数i: X1 = 梁_St_位置_Xi(ii)
                             Select Case 梁_上St_位置_Tyi(ii)
                             Case 1, 3: Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                         X2 = X1: X9 = X1
                             Case Else:
                             End Select
                             Next ii
                       X9 = X9 + 土木橋脚_柱.BXR
                       Print #60, "[P:" + FD2(X01, Y0) + "]\[<:180," + Mid(D1s, 2) + "]"
                       Print #60, "[P:" + FD2(X02, Y0) + "]\[<R:180," + Mid(D1s, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, 0.7 * Mark_Pit) + "]\[Lm:" + FD2(-35, 0) + "]\[pm:5,0]"
                       Call P_鉄筋_○名称(2): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
            '[上St3]
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("上St3"): Y0 = 表示位置_Z_Start - 1.6 * 表示位置_Zpit
                       If D1s <> "" Then
                            X01 = -土木橋脚_柱.BXL: X02 = 土木橋脚_柱.BXR
                            X0 = 0: X2 = 0: D1s = ""
                            For ii = 1 To 梁_St_位置数i: X1 = 梁_St_位置_Xi(ii)
                                  Select Case 梁_上St_位置_Tyi(ii)
                                  Case 2, 4: Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                              X2 = X1: X9 = X1
                                  Case Else:
                                  End Select
                                  Next ii
                            X9 = X9 + 土木橋脚_柱.BXR
                            Print #60, "[P:" + FD2(X01, Y0) + "]\[<:180," + Mid(D1s, 2) + ",*]"
                            Print #60, "[P:" + FD2(X02, Y0) + "]\[<R:180," + Mid(D1s, 2) + ",*]"
                            XLL = .BXL + X9 + Mark_L1
                            Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, -0.5 * Mark_Pit) + "]\[Lm:" + FD2(-35, 0) + "]\[pm:5,0]"
                            Call P_鉄筋_○名称(2): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       End If
    
              End Select
    
    '[[[  下ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]": Y0 = -土木橋脚_梁.H + 梁_下St_dti
              For ii = 1 To 梁_St_位置数i:
                  X1 = -土木橋脚_柱.BXL - 梁_St_位置_Xi(ii) + 橋脚_J鉄筋開き * 現作図_Scale
                  X2 = 土木橋脚_柱.BXR + 梁_St_位置_Xi(ii) - 橋脚_J鉄筋開き * 現作図_Scale
                  Y1 = Y0 + 梁_St_位置_Xi(ii) * 梁下勾配i: HL = 梁_下St_Hi + 梁_上St_Fook_r
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, HL) + "]"
                  Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, HL) + "]"
                  Next ii
    
    
     
     '[[[ 下St Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1s = 橋脚_梁("下St"): Y0 = -梁_水平補強筋_Ck_H + 0.2 * 表示位置_Zpit
                       X01 = -土木橋脚_柱.BXL + 橋脚_J鉄筋開き * 現作図_Scale: X02 = 土木橋脚_柱.BXR - 橋脚_J鉄筋開き * 現作図_Scale
                       X0 = 0: X2 = 0: D1s = ""
                       For ii = 1 To 梁_St_位置数i: X1 = 梁_St_位置_Xi(ii)
                             Xpit = X1 - X2: If Xpit <> 0 Then D1s = D1s + FP1(Xpit)
                                         X2 = X1: X9 = X1
                             Next ii
                       
                       X9 = X9 + 土木橋脚_柱.BXR - 橋脚_J鉄筋開き * 現作図_Scale
                       Print #60, "[P:" + FD2(X01, Y0) + "]\[<:180," + Mid(D1s, 2) + "]"
                       Print #60, "[P:" + FD2(X02, Y0) + "]\[<R:180," + Mid(D1s, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[Lm:" + FD2(-35, 0) + "]\[pm:5,0]"
                       Call P_鉄筋_○名称(2): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
    
    


    '[[[  ｽﾀｰﾗｯﾌﾟ 寸法 ]]]
              D1s = 橋脚_梁("Spit")
              寸法位置2 = 寸法線位置_梁長断面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補2 = 寸法線位置_梁長断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
              Print #60, "  [P:" + FD2(-.BXL, 寸法位置2) + "]"
                  D2s = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        D2s = D2s + FD3(鉄筋P_L(ii), 0, -補2) + "," + Moj$ + "|"
                        Next ii
                        D2s = D2s + FD3(.BX - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + "]"
              Print #60, D2s


      
      
    '[[[ 水平補強筋 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
             
               For ii = 1 To 梁_水平補強筋_位置数i
                     Del_X = 梁_水平補強筋_Bi - 梁_水平補強筋_位置_Bi(ii)
                     X1 = -.BXL + 梁_水平補強筋_dti + Del_X: X2 = .BXR - 梁_水平補強筋_dti - Del_X
                     Y1 = -梁_水平補強筋_位置_Zi(ii)
                     XL = 梁_水平補強筋_位置_Bi(ii)
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XL, 0) + "]"
                     Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(-XL, 0) + "]"
                     Next ii
    
    '[[[[ 水平補強筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                   D1s = 橋脚_梁("水平補強筋")
                   X1 = -.BXL + 梁_水平補強筋_dti + 100: X2 = -土木橋脚_柱.BXL + 150: X3 = 土木橋脚_柱.BXR - 150: X4 = .BXR - 梁_水平補強筋_dti - 100
                   Y0 = 梁_水平補強筋_位置_Zi(1)
                   'n01 = 0: n02 = 0:
                   D01$ = "":  D02$ = "": Y2 = 0
                   
                   For ii = 1 To 梁_水平補強筋_位置数i: Y1 = 梁_水平補強筋_位置_Zi(ii):
                       Dpit = 梁_水平補強筋_位置_Zi(ii) - 梁_水平補強筋_位置_Zi(ii - 1)
                       Select Case Y1
                       Case Is > 梁_水平補強筋_Ck_H:   D02$ = D02$ + FP1(Dpit)
                          If Y2 = 0 Then Y2 = Y1
                       Case Else:  D01$ = D01$ + FP1(Dpit)
                       End Select
                       Next ii
                   
                   '[[[[ 水平補強筋 Cut なし ]]]
                   YLL = Mark_D1 - Y0
                   Print #60, "[P:" + FD2(X1, 0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                   Print #60, "[P:" + FD2(X1, -Y0) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
    
                   Print #60, "[P:" + FD2(X4, 0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                   Print #60, "[P:" + FD2(X4, -Y0) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
    
                   
                   '[[[[ 水平補強筋2 Cut  ]]]
                   D1s = 橋脚_梁("水平補強筋2")
                   If D1s <> "" Then
                   YLL = Mark_D1 - Y2
                   Print #60, "[P:" + FD2(X2, -Y2) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X2, -Y2) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
    
                   Print #60, "[P:" + FD2(X3, -Y2) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X3, -Y2) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
                   End If
    
    
    '[[[ 水平補強筋 寸法 ]]]
              寸法位置6 = .BXR + 寸法線位置_梁長断面.R開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補6 = (寸法位置6 - .BXR) / 現作図_Scale - 1
              補61 = (寸法位置6 - .BXR) / 現作図_Scale - 1
              D1s = 橋脚_梁("水平補強筋")
              
              Print #60, "  [P:" + FD2(寸法位置6, -.H) + "]"
                  D2s = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Ds$(鉄筋P_Data数 + 2 - ii) = 鉄筋P_Data$(ii): Di(鉄筋P_Data数 + 2 - ii) = 鉄筋P_L(ii)
                        Next ii
                        Ds(1) = "": Di(1) = .H + 下がり - 鉄筋P_ΣL
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(Ds$(ii)):
                        D2s = D2s + FD3(0, Di(ii), 補6) + "," + Moj$ + "|"
                        Next ii
                       ' D2s = D2s + FD3(0, Di(鉄筋P_Data数 + 1), 0) + ",,R=6]"
                        D2s = D2s + FD3(0, Di(鉄筋P_Data数 + 1), 0) + "]"
              Print #60, D2s
          
     End With
     End Sub

Function FP_主筋Types() As String
     Dim D1s  As String
     ' Res  "終点Loop"  "起点Loop"　"直筋"
     D1s = "終点Loop"
              If 梁_終点Loop筋_Ty数i = 0 Then
                   D1s = "起点Loop"
                   If 梁_起点Loop筋_Ty数i = 0 Then D1s = "直筋"
                   End If

     FP_主筋Types = D1s
     End Function


Sub SP_梁_平断面_作図()
     元原点X = 原点X: 元原点Y = 原点Y
     ReDim 寸法S(50) As Single, Loop鉄筋幅(50) As Single, Stoper_Cen_X(19) As Single
     ReDim SMark$(100)  ', Mark_Y(50) As Single
     
     Dim iii As Integer, ii As Integer
     Dim Wda As String, D1s As String, D2s As String, D3s As String
     Dim 部品i As Integer
     Dim Mark_Pit As Single
     Dim Mark_U1 As Single, Mark_U2 As Single, Mark_U3 As Single
     Dim Mark_D1 As Single, Mark_D2 As Single, Mark_D3 As Single
     Dim Mark_L1 As Single, Mark_L2 As Single, Mark_L3 As Single
     Dim Mark_R1 As Single, Mark_R2 As Single, Mark_R3 As Single
     Dim 本数i As Integer
     Dim 主筋Types As String
     
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
     With 土木橋脚_梁
      
                 
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 7 * 現作図_Scale:   Mark_U2 = Mark_U1 + 1.2 * Mark_Pit: Mark_U3 = Mark_U2 + 1.2 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.2 * Mark_Pit: Mark_D3 = Mark_D2 + 1.2 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 7 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_梁平面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ｂ－Ｂ")
         Print #60, "[dot:]"
         Call P_橋脚_柱_断面図
         Print #60, "[con:]"
     
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
          Call P_橋脚_梁_平面図
     
     
      '[[[ 断面位置指定 ]]]
        主筋Types = FP_主筋Types
             Select Case 主筋Types
             Case "起点Loop"
                      Y1 = Stoper起点側_Y - 255 '.BYR - 5 * 現作図_Scale
             Case Else
                      Y1 = Stoper終点側_Y - 35 '.BYR - 5 * 現作図_Scale
             End Select
             
                      X1 = -.BXL - 34 * 現作図_Scale:
                      X2 = .BXR + 45 * 現作図_Scale
             Call P_橋脚_断面位置指定(X1, Y1, X2, Y1, "Ａ", "Ａ", 0)
      
      
       '[[[ ｽﾄｯﾊﾟｰ ｾﾝﾀｰ Line ]]]
                  Call P_橋脚_Stoper_平面("C")
     
  
      
      Print #60, "[色:白]\[con:]"
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale
                  補1 = 寸法線位置_梁平面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
     
          ' D寸法
                  寸法位置1 = -.BYL - 寸法線位置_梁平面.D開き * 現作図_Scale
                  補1 = 寸法線位置_梁平面.D開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(補1) + ":" + FD3(.BX, 0, 補1) + "]"
     
     
     
          ' L寸法
                  寸法位置L1 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_梁平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BYL) + "]"
                  Print #60, "[寸:" + F9(-補L1) + ":" + FD3(0, .BY, -補L1) + "]"
     
      
      '[[[ ｽﾄｯﾊﾟｰ ｾﾝﾀｰ Line ]]]
                  Call P_橋脚_Stoper_平面("C")
      
     
      '[[[ ｽﾄｯﾊﾟｰ 終点X寸法 ]]]
                  寸法位置2 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_梁平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper終点側_X寸法(寸法位置2, 補2)
      
      '[[[ ｽﾄｯﾊﾟｰ 起点X寸法 ]]]
                  寸法位置D1 = -.BYL - 寸法線位置_梁平面.D開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_梁平面.D開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper起点側_X寸法(寸法位置D1, -補2)
      
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ Y寸法 ]]]
                  寸法位置L2 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_梁平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_Y寸法(寸法位置L2, 補L2)
      
      
      
      '[[[  X 表示位置   ]]]
                  D1s = 橋脚_梁("Spit"):  表示位置_X個数 = 鉄筋P_Σ数
                  For ii = 1 To 鉄筋P_Σ数:  表示位置_X(ii) = -.BXL + 鉄筋P_位置(ii):     Next ii
                  表示位置_XPit = Abs(表示位置_X(2) - 表示位置_X(3))
      
      
      寸法数 = 0
      '[[[ ﾙｰﾌﾟ鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
            '[起点側]
            For ii = 1 To 3: 橋脚_鉄筋θ = 180
                  D1s = 橋脚_梁("起点Loop" + f0(ii))
                  If D1s <> "" Then
                  寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
                  Loop鉄筋_K位置 = 鉄筋_SK位置
                  X0 = -鉄筋L_Xcen: Y0 = -.BYL + 鉄筋_SK位置: Call P_橋脚_鉄筋図("標準", "杭", "", "", X0, Y0)
                  Loop鉄筋幅(寸法数) = 鉄筋L_YL
                  End If
                  Next ii
            
            '[終点側]
            For ii = 1 To 3: 橋脚_鉄筋θ = 180
                  D1s = 橋脚_梁("終点Loop" + f0(ii))
                  If D1s <> "" Then
                  寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
                  Loop鉄筋_K位置 = 鉄筋_SK位置
                  X0 = -鉄筋L_Xcen: Y0 = .BYR - 鉄筋_SK位置 - 2 * 鉄筋L_Ycen: Call P_橋脚_鉄筋図("標準", "杭", "", "", X0, Y0)
                  Loop鉄筋幅(寸法数) = 鉄筋L_YL
                  End If
                  Next ii
            
      
      '[[[ ﾙｰﾌﾟ鉄筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
              橋脚_鉄筋θ = 180
               
               '[[[ 起点Loop1 Mak ]]]
                   For ii = 1 To 梁_起点Loop筋_Ty数i
                       D1s = 橋脚_梁("起点Loop" + f0(ii))
                       If D1s <> "" Then
                       Select Case ii
                            Case 1: X1 = Stoper位置_X(1) - 6 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) + 3 * 表示位置_XPit
                            Case 2: X1 = Stoper位置_X(1) + 4 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) - 7 * 表示位置_XPit
                            Case 3: X1 = Stoper位置_X(1) + 3 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) - 8 * 表示位置_XPit
                            End Select
                       
                       X1 = FP_表示位置X("L", X1): X2 = FP_表示位置X("R", X2)
                       Y1 = -.BYL + 鉄筋_SK位置
                       YLL = Y1 + .BYL + Mark_D1
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270,0]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)

                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:270,0]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
                       Next ii
                       
      
               '[[[ 終点Loop1 Mak ]]]
                  For ii = 1 To 梁_終点Loop筋_Ty数i
                       D1s = 橋脚_梁("終点Loop" + f0(ii))
                       If D1s <> "" Then
                       Select Case ii
                            Case 1: X1 = Stoper位置_X(1) - 6 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) + 3 * 表示位置_XPit
                            Case 2: X1 = Stoper位置_X(1) + 4 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) - 7 * 表示位置_XPit
                            Case 3: X1 = Stoper位置_X(1) + 3 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) - 8 * 表示位置_XPit
                            End Select
                       
                       X1 = FP_表示位置X("L", X1): X2 = FP_表示位置X("R", X2)
                       
                       Y1 = .BYR - 鉄筋_SK位置
                       YLL = -Y1 + .BYR + Mark_U1
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90,0]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90,0]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
                       Next ii
      
      
      
      '[[[ ﾙｰﾌﾟ鉄筋寸法 ]]]
                  寸法位置L3 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_梁平面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
      
                   Call 橋脚_鉄筋_Pit_ck(梁_Loop筋_Y方向寸法s)
                   D1s = "[寸:" + FD3(0, 鉄筋P_p(1), -補L3) + ",,L=7|"
                   For ii = 2 To 鉄筋P_Data数 - 1
                        D1s = D1s + "|" + FD3(0, 鉄筋P_p(ii), -補L3)
                        Next ii
                  D1s = "[寸:" + Mid(D1s, 2) + "|" + FD3(0, 鉄筋P_p(鉄筋P_Data数), -補L3) + ",,R=7]"
                  Print #60, "[P:" + FD2(寸法位置L3, -.BYL) + "]"
                  Print #60, D1s
      
      
      '[[[ 直筋 Loop外 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
             '            Loop外直筋=D16_K116_@359.6667+226.6667+613.6667+2x170_LF+8600+F
                         ' ※  Loop外直筋内部 は計算します
      
              橋脚_鉄筋θ = 0:      D1s = 橋脚_梁("Loop外直筋"): 直筋_Loop外i = 鉄筋P_Σ数 - 1
                X1 = -鉄筋L_XL / 2: X2 = 鉄筋L_XL / 2
              For ii = 1 To Stoper位置_Data数: Stoper_Cen_X(ii) = (Stoper位置_X(ii) + Stoper位置_X(ii + 1)) / 2:  Next ii
              
              For ii = 1 To 直筋_Loop外i
                       Y0 = -.BYL + 鉄筋P_位置(ii)
                       Select Case FP_Stoper_Y位置i(Y0)
                       Case 0:      D1s = 橋脚_梁("Loop外直筋"): X0 = -鉄筋L_Xcen: Call P_橋脚_鉄筋図("標準", "", "V", "", X0, Y0)
                       Case Else:
                            Select Case Y0
                            Case Is > 0:
                                     D1s = 橋脚_梁("終点側Loop外直筋端部平面"): 橋脚_鉄筋θ = 0: Call P_橋脚_鉄筋図("標準", "", "V", "", X1, Y0)
                                                                                橋脚_鉄筋θ = 180: Call P_橋脚_鉄筋図("標準", "", "V", "R", X2, Y0)
                                     橋脚_鉄筋θ = 0
                                     For i2 = 1 To Stoper終点側位置数i - 1:  D1s = 橋脚_梁("終点側Loop外直筋内部平面" + f0(i2 + 1))
                                         X3 = Stoper_Cen_X(i2) - 鉄筋L_XL / 2: Call P_橋脚_鉄筋図("標準", "", "V", "", X3, Y0)
                                         Next i2
                            
                            Case Else
                                     D1s = 橋脚_梁("起点側Loop外直筋端部平面"): 橋脚_鉄筋θ = 0: Call P_橋脚_鉄筋図("標準", "", "V", "", X1, Y0)
                                                                                橋脚_鉄筋θ = 180: Call P_橋脚_鉄筋図("標準", "", "V", "R", X2, Y0)
                                     橋脚_鉄筋θ = 0
                                     For i2 = 1 To Stoper起点側位置数i - 1: D1s = 橋脚_梁("起点側Loop外直筋内部平面" + f0(i2 + 1))
                                         X3 = Stoper_Cen_X(Stoper終点側位置数i + i2) - 鉄筋L_XL / 2: Call P_橋脚_鉄筋図("標準", "", "V", "", X3, Y0)
                                         Next i2
                            End Select
                       End Select
                  Next ii
              
      
      '[[[ 直筋 Loop外 Cut無い部　Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              橋脚_鉄筋θ = 0
               iii = Int(Stoper起点側位置数i / 2)
                     D1s = 橋脚_梁("Loop外直筋cut無")
                     If D1s <> "" Then
                        X1 = FP_表示位置X("C", Stoper位置_起点_X(iii + 1) - 500) + 70: ' X2 = -X1
                        D1s = "": Y1 = 0:  Y2 = 0
                        For ii = 1 To 梁_X筋数i
                            Select Case 梁_X筋_Tyi(ii)
                            Case 3:
                                    If 梁_X筋_Ty_cuti(ii) = 0 Then
                                       Ypit = 梁_X筋_Yi(ii) - Y1: Y1 = 梁_X筋_Yi(ii): Y9 = Y1
                                       D1s = D1s + FP1(Ypit): ' 本数i = 本数i + 1
                                       If Y2 = 0 Then Y2 = Y1
                                       End If
                            Case Else
                            End Select
                            Next ii
                       Y0 = -.BYL '+ Y0
                       Y2 = -.BYL + Y2
                       YLL = -Y2 + .BYR + Mark_U1
                       '鉄筋_○_符号2$ = f0(本数i) + "-" + 鉄筋_径$
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<:90," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       
                       End If
      
      
      '[[[ 直筋 Loop外 Cut部　Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              橋脚_鉄筋θ = 0
              位置$ = "起点側": nni = 梁起点側_Loop外直筋_cut本数i: nn2 = Stoper起点側位置数i
              If nni = 0 Then 位置$ = "終点側": nni = 梁終点側_Loop外直筋_cut本数i: nn2 = Stoper終点側位置数i
              
              If nni > 0 Then
              For iii = 0 To Int(nn2 / 2)
                     Select Case 位置$
                     Case "起点側":   Wda = "起点側Loop外直筋内部" + f0(iii + 1): If iii = 0 Then Wda = "起点側Loop外直筋端部"
                                      X1 = FP_表示位置X("C", Stoper位置_起点_X(iii + 1) - 500) + 30: X2 = -X1
                     Case "終点側":   Wda = "終点側Loop外直筋内部" + f0(iii + 1): If iii = 0 Then Wda = "終点側Loop外直筋端部"
                                      X1 = FP_表示位置X("C", Stoper位置_終点_X(iii + 1) - 500) + 30: X2 = -X1
                     End Select
                     
                     D1s = 橋脚_梁(Wda)
                     If D1s <> "" Then
                        D1s = "": Y1 = 0: 本数i = 0
                        For ii = 1 To 梁_X筋数i
                            Select Case 梁_X筋_Tyi(ii)
                            Case 3:
                                    If 梁_X筋_Ty_cuti(ii) > 0 Then
                                       Ypit = 梁_X筋_Yi(ii) - Y1: Y1 = 梁_X筋_Yi(ii): Y9 = Y1
                                       D1s = D1s + FP1(Ypit): 本数i = 本数i + 1
                                       End If
                            Case Else
                            End Select
                            Next ii
                       Y0 = -.BYL '+ Y0
                       Y9 = -.BYL + Y9
                       YLL = Y9 + .BYL + Mark_D3
                       鉄筋_○_符号2$ = f0(本数i) + "-" + 鉄筋_径$
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<R:270," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X1, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       
                       Print #60, "[P:" + FD2(X2, Y0) + "]\[<R:270," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X2, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
                  Next iii
             End If
      
      
      
      
      '[[[ 直筋 Loop内 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
             '            Loop内直筋=D16_K116_@359.6667+226.6667+613.6667+2x170_LF+8600+F
                         ' ※  Loop内直筋内部 は計算します
      
              橋脚_鉄筋θ = 0:      D1s = 橋脚_梁("Loop内直筋"): 直筋_Loop内i = 鉄筋P_Σ数
              X1 = -鉄筋L_XL / 2: X2 = 鉄筋L_XL / 2
              For ii = 1 To Stoper位置_Data数: Stoper_Cen_X(ii) = (Stoper位置_X(ii) + Stoper位置_X(ii + 1)) / 2:  Next ii
              
              For ii = 1 To 直筋_Loop内i
                       Y0 = -.BYL + 鉄筋P_位置(ii)
                       Select Case FP_Stoper_Y位置i(Y0)
                       Case 0:      D1s = 橋脚_梁("Loop内直筋"): X0 = -鉄筋L_Xcen: Call P_橋脚_鉄筋図("標準", "", "V", "", X0, Y0)
                       Case Else:
                            Select Case Y0
                            Case Is > 0:
                                     D1s = 橋脚_梁("終点側Loop内直筋端部平面"): 橋脚_鉄筋θ = 0: Call P_橋脚_鉄筋図("標準", "", "V", "", X1, Y0)
                                                                                橋脚_鉄筋θ = 180: Call P_橋脚_鉄筋図("標準", "", "V", "R", X2, Y0)
                                     橋脚_鉄筋θ = 0
                                     For i2 = 1 To Stoper終点側位置数i - 1:   D1s = 橋脚_梁("終点側Loop内直筋内部平面" + f0(i2 + 1))
                                         X3 = Stoper_Cen_X(i2) - 鉄筋L_XL / 2: Call P_橋脚_鉄筋図("標準", "", "V", "", X3, Y0)
                                         Next i2
                            
                            Case Else
                                     D1s = 橋脚_梁("起点側Loop内直筋端部平面"): 橋脚_鉄筋θ = 0: Call P_橋脚_鉄筋図("標準", "", "V", "", X1, Y0)
                                                                                橋脚_鉄筋θ = 180: Call P_橋脚_鉄筋図("標準", "", "V", "R", X2, Y0)
                                     橋脚_鉄筋θ = 0
                                     For i2 = 1 To Stoper起点側位置数i - 1:  D1s = 橋脚_梁("起点側Loop内直筋内部平面" + f0(i2 + 1))
                                         X3 = Stoper_Cen_X(Stoper終点側位置数i + i2) - 鉄筋L_XL / 2: Call P_橋脚_鉄筋図("標準", "", "V", "", X3, Y0)
                                         Next i2
                            End Select
                       End Select
                  Next ii
              
      '[[[ 直筋 Loop内 Cut無い部　Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              橋脚_鉄筋θ = 0
               iii = Int(Stoper起点側位置数i / 2)
                     D1s = 橋脚_梁("Loop内直筋cut無")
                     If D1s <> "" Then
                        X1 = FP_表示位置X("C", Stoper位置_起点_X(iii + 1) - 500) + 45: ' X2 = -X1
                        D1s = "": Y1 = 0: 本数i = 0
                        For ii = 1 To 梁_X筋数i
                            Select Case 梁_X筋_Tyi(ii)
                            Case 4, 5:
                                    If 梁_X筋_Ty_cuti(ii) = 0 Then
                                       Ypit = 梁_X筋_Yi(ii) - Y1: Y1 = 梁_X筋_Yi(ii): Y9 = Y1
                                       D1s = D1s + FP1(Ypit): ' 本数i = 本数i + 1
                                       End If
                            Case Else
                            End Select
                            Next ii
                       Y0 = -.BYL '+ Y0
                       Y9 = -.BYL + Y9
                       YLL = Y9 + .BYL + Mark_D1
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<R:270," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X1, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       
                       End If
      
      
      '[[[ 直筋 Loop内 Cut部　Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              橋脚_鉄筋θ = 0
              For iii = 0 To Int(Stoper起点側位置数i / 2)
                     Wda = "起点側Loop内直筋内部" + f0(iii + 1): If iii = 0 Then Wda = "起点側Loop内直筋端部"
                     D1s = 橋脚_梁(Wda)
                     If D1s <> "" Then
                        X1 = FP_表示位置X("C", Stoper位置_起点_X(iii + 1) - 500): X2 = -X1
                        D1s = "": Y1 = 0: 本数i = 0
                        For ii = 1 To 梁_X筋数i
                            Select Case 梁_X筋_Tyi(ii)
                            Case 4:
                                    If 梁_X筋_Ty_cuti(ii) > 0 Then
                                       Ypit = 梁_X筋_Yi(ii) - Y1: Y1 = 梁_X筋_Yi(ii): Y9 = Y1
                                       D1s = D1s + FP1(Ypit): 本数i = 本数i + 1
                                       End If
                            Case Else
                            End Select
                            Next ii
                       Y0 = -.BYL '+ Y0
                       Y9 = -.BYL + Y9
                       YLL = Y9 + .BYL + Mark_D2
                       鉄筋_○_符号2$ = f0(本数i) + "-" + 鉄筋_径$
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<R:270," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X1, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       
                       Print #60, "[P:" + FD2(X2, Y0) + "]\[<R:270," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X2, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
                  Next iii
              
              For iii = 0 To Int(Stoper終点側位置数i / 2)
                     Wda = "終点側Loop内直筋内部" + f0(iii + 1): If iii = 0 Then Wda = "終点側Loop内直筋端部"
                     D1s = 橋脚_梁(Wda)
                     If D1s <> "" Then
                        X1 = FP_表示位置X("C", Stoper位置_終点_X(iii + 1) - 500): X2 = -X1
                        D1s = "": Y1 = 0: 本数i = 0: Y2 = 0
                        For ii = 1 To 梁_X筋数i
                            Select Case 梁_X筋_Tyi(ii)
                            Case 5:
                                    If 梁_X筋_Ty_cuti(ii) > 0 Then
                                       Ypit = 梁_X筋_Yi(ii) - Y1: Y1 = 梁_X筋_Yi(ii): Y9 = Y1
                                       D1s = D1s + FP1(Ypit): 本数i = 本数i + 1
                                       If Y2 = 0 Then Y2 = Y1
                                       End If
                            Case Else
                            End Select
                            Next ii
                       Y0 = -.BYL '+ Y0
                       'Y9 = -.BYL + Y9
                       Y2 = -.BYL + Y2
                       YLL = -Y2 + .BYR + Mark_U2
                       鉄筋_○_符号2$ = f0(本数i) + "-" + 鉄筋_径$
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<:90," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       
                       Print #60, "[P:" + FD2(X2, Y0) + "]\[<:90," + Mid(D1s, 2) + ",*]"
                       Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
                 Next iii
      
      
      
      '[[[ Loop内直筋寸法 ]]]
                  寸法位置L4 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L4 = 寸法線位置_梁平面.L開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1

                  Moj1$ = F9(梁起点側_Loop内直筋_本数i + 1) + "x" + F9(Int(10 * 梁起点側_Loop内直筋_Piti + 0.9) / 10) + "=" + F9(梁起点側_Loop内直筋_Loop筋幅)
                  Moj2$ = F9(梁終点側_Loop内直筋_本数i + 1) + "x" + F9(Int(10 * 梁終点側_Loop内直筋_Piti + 0.9) / 10) + "=" + F9(梁終点側_Loop内直筋_Loop筋幅)
                  Y1 = -.BYL + 梁起点側_Loop内直筋_Y: Y2 = -.BYL + 梁終点側_Loop内直筋_Y
                  If 梁起点側_Loop内直筋_本数i > 0 Then Print #60, "[P:" + FD2(寸法位置L4, Y1) + "]\[寸:" + FD3(0, 梁起点側_Loop内直筋_Loop筋幅, 0) + "," + Moj1$ + "]"
                  If 梁終点側_Loop内直筋_本数i > 0 Then Print #60, "[P:" + FD2(寸法位置L4, Y2) + "]\[寸:" + FD3(0, 梁終点側_Loop内直筋_Loop筋幅, 0) + "," + Moj2$ + "]"
      
      
      '[[[ 水平補強筋 ]]]
            Print #60, "[色:緑]\[ﾚ:Hoop]"
             橋脚_鉄筋θ = 180:      D1s = 橋脚_梁("水平補強筋")
                       X0 = -.BXL + 鉄筋_SK位置 + 鉄筋L_XL / 2 - 鉄筋L_Xcen: Y0 = -.BYL + 梁_水平補強筋_位置_Yi
                       Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
     
             橋脚_鉄筋θ = 0:      D1s = 橋脚_梁("水平補強筋")
                       X0 = .BXR - 鉄筋_SK位置 - 鉄筋L_XL / 2 - 鉄筋L_Xcen: Y0 = -.BYL + 梁_水平補強筋_位置_Yi + 梁_水平補強筋_Di
                       Call P_橋脚_鉄筋図("標準", "", "", "", X0, Y0)
     
      '[[[ 水平補強筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
             橋脚_鉄筋θ = 180:      D1s = 橋脚_梁("水平補強筋")
                       
                       X1 = 表示位置_X(1) + 30: X2 = -X1
                       Y1 = -土木橋脚_梁.BYL + 梁_水平補強筋_位置_Yi
     
                       YLL = .BYL + Y1 + Mark_D3
                       XLL = 0: If .h1 > 0 Then XLL = 1.3 * 橋脚_鉄筋名称_径
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L1 - XLL, 0) + "]\[pm:6,0]"
                       If XLL > 0 Then Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.2 * Mark_Pit, 0) + "]": D1s = 橋脚_梁("水平補強筋2")
                       Call P_鉄筋_○名称(1)
     
                       D1s = 橋脚_梁("水平補強筋")
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:270]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L1 + XLL, 0) + "]\[pm:6,0]"
                       If XLL > 0 Then Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.2 * Mark_Pit, 0) + "]": 橋脚_梁 ("水平補強筋2")
                       Call P_鉄筋_○名称(1)
     
     
     
     
    
     '[[[ 幅止筋 ]]]
            Dim Htni As Integer, HtL(5) As Single, HtY(5) As Single
            Print #60, "[色:空]\[ﾚ:Hoop]"
              For ii = 1 To 梁_幅止筋_位置数i: X1 = -土木橋脚_柱.BXL + 梁_幅止筋_位置_Xi(ii)
                  Select Case 梁_幅止筋_位置_Tyi(ii)
                  Case 1: Htni = 1: HtL(1) = 梁_幅止筋_部品L(1)
                                    HtY(1) = 梁_幅止筋_部品_Y(1)
                  
                  Case 2: Htni = 2: HtL(1) = 梁_幅止筋_部品L(2): HtL(2) = 梁_幅止筋_部品L(3)
                                    HtY(1) = 梁_幅止筋_部品_Y(2): HtY(2) = 梁_幅止筋_部品_Y(3)
                  
                  Case 3: Htni = 2: HtL(1) = 梁_幅止筋_部品L(4): HtL(2) = 梁_幅止筋_部品L(5)
                                    HtY(1) = 梁_幅止筋_部品_Y(4): HtY(2) = 梁_幅止筋_部品_Y(5)
                                    
                  Case 4: Htni = 3: HtL(1) = 梁_幅止筋_部品L(2): HtL(2) = 梁_幅止筋_部品L(6): HtL(3) = 梁_幅止筋_部品L(5)
                                    HtY(1) = 梁_幅止筋_部品_Y(2): HtY(2) = 梁_幅止筋_部品_Y(6): HtY(3) = 梁_幅止筋_部品_Y(5)
                  End Select
                  For jj = 1 To Htni
                       Print #60, "[P:" + FD2(X1, HtY(jj)) + "]\[皿2:" + FD4(0, HtL(jj), 1.5, -45) + "]"
                       Next jj
                  
                  Next ii
    
    '[[[  上ｽﾀｰﾗｯﾌﾟ   ]]]
            Dim Stni As Integer, StL(5) As Single, StY(5) As Single, 鉄筋開きi As Single
            Print #60, "[色:空]\[ﾚ:Hoop]"
              For ii = 1 To 梁_St_位置数i: X1 = -土木橋脚_柱.BXL - 梁_St_位置_Xi(ii): X2 = 土木橋脚_柱.BXR + 梁_St_位置_Xi(ii)
                  鉄筋開きi = 0
                  Select Case 梁_上St_位置_Tyi(ii)
                  Case 1: Stni = 2: StL(1) = 梁_上St_部品L(1):  StL(2) = 梁_上St_部品L(2)
                                    StY(1) = 梁_上St_部品_Y(1): StY(2) = 梁_上St_部品_Y(2)
                                    鉄筋開きi = 橋脚_J鉄筋開き * 現作図_Scale
                  Case 2: Stni = 2: StL(1) = 梁_上St_部品L(3):  StL(2) = 梁_上St_部品L(2)
                                    StY(1) = 梁_上St_部品_Y(3): StY(2) = 梁_上St_部品_Y(2)
                  
                  Case 3: Stni = 2: StL(1) = 梁_上St_部品L(1):  StL(2) = 梁_上St_部品L(5)
                                    StY(1) = 梁_上St_部品_Y(1): StY(2) = 梁_上St_部品_Y(5)
                  
                  Case 4: Stni = 3: StL(1) = 梁_上St_部品L(3):  StL(2) = 梁_上St_部品L(4):  StL(3) = 梁_上St_部品L(5)
                                    StY(1) = 梁_上St_部品_Y(3): StY(2) = 梁_上St_部品_Y(4): StY(3) = 梁_上St_部品_Y(5)
                  
                  Case 6: Stni = 1: StL(1) = 梁_上St_部品L(6):  'StL(2) = 0
                                    StY(1) = 梁_上St_部品_Y(6): 'StY(2) = 梁_上St_部品_Y(4): StY(3) = 梁_上St_部品_Y(5)
                  
                  
                  End Select
                  For jj = 1 To Stni
                       Print #60, "[P:" + FD2(X1, StY(jj)) + "]\[皿2:" + FD4(0, StL(jj), 1.5, -45) + "]"
                       Print #60, "[P:" + FD2(X2, StY(jj)) + "]\[皿2:" + FD4(0, StL(jj), 1.5, -45) + "]"
                       X1 = X1 + 鉄筋開きi: X2 = X2 + 鉄筋開きi
                       Next jj
                  Next ii
                  
    
    
    
    '[[[  上ｽﾀｰﾗｯﾌﾟ 寸法 ]]]
              D1s = 橋脚_梁("Spit")
              寸法位置3 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = 寸法線位置_梁平面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              
              Print #60, "  [P:" + FD2(-.BXL, 寸法位置3) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + "]"
              Print #60, D11$
     
    '[[[  幅止筋,ｽﾀｰﾗｯﾌﾟ Mark ]]]
            Dim 幅止筋_Ds(10) As String, 幅止筋_X0(10) As Single, 幅止筋_X9(10) As Single, 幅止筋_本数i(10) As Integer
            Dim St_Ds(10) As String, St_X0(10) As Single, St_X9(10) As Single, St_本数i(10) As Integer
            Dim Xpit As Single
            Print #60, "[色:白]\[ﾚ:Mark]"

            For iii = 1 To 6: D1s = "": X0 = -999: X1 = 0: X9 = 0: n1 = 0
                For ii = 1 To 梁_幅止筋_位置数i: X2 = 梁_幅止筋_位置_Xi(ii): Xpit = X2 - X1
                     Select Case iii
                     Case 1:
                              Select Case 梁_幅止筋_位置_Tyi(ii)
                              Case 1: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 2
                              Select Case 梁_幅止筋_位置_Tyi(ii)
                              Case 2, 4: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 3
                              Select Case 梁_幅止筋_位置_Tyi(ii)
                              Case 2: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 4
                              Select Case 梁_幅止筋_位置_Tyi(ii)
                              Case 3: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 5
                              Select Case 梁_幅止筋_位置_Tyi(ii)
                              Case 3, 4: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 6
                              Select Case 梁_幅止筋_位置_Tyi(ii)
                              Case 4: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     End Select
                    Next ii
                幅止筋_Ds(iii) = Mid(D1s, 2): 幅止筋_X0(iii) = -土木橋脚_柱.BXL + X0: 幅止筋_X9(iii) = -土木橋脚_柱.BXL + X9: 幅止筋_本数i(iii) = n1
                Next iii

            '[[[ St ]]]
            For iii = 1 To 6: D1s = "": X0 = -999: X1 = 0: X9 = 0: n1 = 0
                For ii = 1 To 梁_St_位置数i: X2 = 梁_St_位置_Xi(ii): Xpit = X2 - X1
                     Select Case iii
                     Case 1:
                              Select Case 梁_上St_位置_Tyi(ii)
                              Case 1, 3: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 2
                              Select Case 梁_上St_位置_Tyi(ii)
                              Case 1, 2: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 3
                              Select Case 梁_上St_位置_Tyi(ii)
                              Case 2, 4: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 4
                              Select Case 梁_上St_位置_Tyi(ii)
                              Case 4: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 5
                              Select Case 梁_上St_位置_Tyi(ii)
                              Case 3, 4: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     Case 6
                              Select Case 梁_上St_位置_Tyi(ii)
                              Case 6: D1s = D1s + FP1(Xpit): X1 = X2: X9 = X2: n1 = n1 + 1: If X0 < 0 Then X0 = X2
                              Case Else
                              End Select
                     End Select
                    Next ii
                St_Ds(iii) = Mid(D1s, 2): St_X0(iii) = 土木橋脚_柱.BXR + X0: St_X9(iii) = 土木橋脚_柱.BXR + X9: St_本数i(iii) = n1
                Next iii


                       
            '左表示 幅止筋 1          右表示   幅止筋 2 3 4 5 6
            '左表示 St 1  2           右表示   St 3  4  5  6
             
             Dim 表示ni As Integer, Mark_Pit2 As Single, 表示Y(10) As Single, 表示MarkY(10) As Single, 表示順番i(10) As Integer, Mark_Del_R(10) As Single
             Dim 部品types(10) As String, 部品noi(10) As Integer
            ' Dim 幅止筋MarkY(10) As Single, StMarkY(10) As Single
             'Dim 幅止筋Noi(10) As Integer, StNoi(10) As Integer
             表示ni = 0:
                
             For iii = 1 To 10: 表示Y(iii) = -99999: Mark_Del_R(iii) = 0: Next iii
             
             iii = 0
             For ii = 2 To 6: iii = iii + 1:  部品types(iii) = "幅止筋": 部品noi(iii) = ii
                       If 幅止筋_本数i(ii) > 0 Then 表示ni = 表示ni + 1: 表示Y(iii) = 梁_幅止筋_位置_表示Yi(ii)
                  Next ii
                 
                       
             For ii = 3 To 6: iii = iii + 1:  部品types(iii) = "St": 部品noi(iii) = ii
                       If St_本数i(ii) > 0 Then 表示ni = 表示ni + 1: 表示Y(iii) = 梁_上St_位置_表示Yi(ii)
                 Next ii
                  
                  Select Case 表示ni
                  Case Is <= 2: Mark_Pit2 = 3 * Mark_Pit
                  Case 3: Mark_Pit2 = 2.2 * Mark_Pit
                  Case 4: Mark_Pit2 = 2 * Mark_Pit
                  Case 5: Mark_Pit2 = 1.5 * Mark_Pit
                  Case 6: Mark_Pit2 = 1.5 * Mark_Pit
                  Case 7: Mark_Pit2 = 1.3 * Mark_Pit
                  Case 8: Mark_Pit2 = 1.15 * Mark_Pit
                  Case Else: Mark_Pit2 = 1.15 * Mark_Pit
                  End Select
             
             '[[[ 表示順番i(i) ]]]
             For iii = 1 To 9: 表示順番i(iii) = 1
                 For jj = 1 To 9: If 表示Y(iii) < 表示Y(jj) Then 表示順番i(iii) = 表示順番i(iii) + 1
                     Next jj
                 Next iii
             
             '[[[ 表示MarkY(i) ]]]
             Mark_YY = .BYR
             For iii = 1 To 9: 表示MarkY(iii) = Mark_YY - (表示順番i(iii) - 1) * Mark_Pit2:  Next iii
             
             
             '[[[ Mark_Del_R(i) ]]]
             For ii = 1 To 9:
                 For jj = 1 To 9: If 表示順番i(jj) = ii Then iii = jj
                     Next jj
                 If 表示Y(iii) < 表示MarkY(iii) Then Mark_R1 = Mark_R1 + 30 Else Mark_R1 = Mark_R1 - 30
                 Mark_Del_R(iii) = Mark_R1
                 Next ii

             Dim 表示_Yi As Single
             
             
           For iii = 1 To 9: ii3 = 表示順番i(iii)
                Select Case 部品types(iii)
                Case "幅止筋": ii = 部品noi(iii)
                       If 幅止筋_本数i(ii) > 0 Then
                            D1s = 橋脚_梁("幅止筋" + f0(ii)):
                             表示_Yi = 梁_幅止筋_位置_表示Yi(ii):  Mark_Y1 = 表示MarkY(iii)
                            If Abs(表示_Yi - Mark_Y1) < 60 Then Mark_Y1 = 表示_Yi
                            Call SP_Mark_R_幅止筋(幅止筋_Ds(ii), -土木橋脚_柱.BXL, 幅止筋_X0(ii), 表示_Yi, Mark_Y1, Mark_Del_R(iii))
                            End If
                
                Case "St": ii = 部品noi(iii)
                       If St_本数i(ii) > 0 Then
                            D1s = 橋脚_梁("上St" + f0(ii)):
                            Ste_X0 = 土木橋脚_柱.BXR
                            表示_Yi = 梁_上St_位置_表示Yi(ii):     Mark_Y1 = 表示MarkY(iii)
                            If Abs(表示_Yi - Mark_Y1) < 60 Then Mark_Y1 = 表示_Yi
                            Call SP_Mark_R_St(St_Ds(ii), Ste_X0, St_X9(ii), 表示_Yi, Mark_Y1, Mark_Del_R(iii))
                            End If
                
                End Select
             
                Next iii
             
             
      
       '[[[[ 幅止筋,St 左側 Mark ]]]
             D1s = 橋脚_梁("幅止筋1"):
                       YYY1 = 梁_幅止筋_位置_表示Yi(1): Mark_YY = YYY1
                       Call SP_Mark_L_幅止筋(幅止筋_Ds(1), -土木橋脚_柱.BXL, 幅止筋_X9(1), YYY1, Mark_YY, Mark_L1 + 40)
             
             
             鉄筋開きi = 橋脚_J鉄筋開き * 現作図_Scale: X00 = 土木橋脚_柱.BXR
             D1s = 橋脚_梁("上St2"):  Y1 = 梁_上St_位置_表示Yi(2):  Mark_YY = Y1
                       Call SP_Mark_L_St(St_Ds(2), X00, St_X0(2), St_X9(2), 鉄筋開きi, Y1, Mark_YY, Mark_L1)
             
             D1s = 橋脚_梁("上St1"): Y1 = 梁_上St_位置_表示Yi(1):  Mark_YY = Y1
                       Call SP_Mark_L_St(St_Ds(1), X00, St_X0(1), St_X9(1), 0, Y1, Mark_YY, Mark_L1)
     
      
      End With
     
     End Sub
Sub SP_Mark_L_幅止筋(D01$, X0, X9, Y1, Y2, Mark_L1)
        ' Mark_L1  梁 L端からの離れ
        ' Y1 矢印 (<) の　Y座標   Y2 Mark Y座標
        'Print #60, "[P:" + FD2(-X0 + 鉄筋開きi, Y1) + "]\[<:180," + D01$ + ",*]"
        Print #60, "[P:" + FD2(X0 + 鉄筋開きi, Y1) + "]\[<R:180," + D01$ + ",*]"
        XLL = X9 + 土木橋脚_梁.BXL + Mark_L1
        Print #60, "[P:" + FD2(X9, Y1) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
        Call P_鉄筋_○名称(2)

       End Sub
Sub SP_Mark_L_St(D01$, X00, X0, X9, 鉄筋開きi, Y1, Y2, Mark_L1)
        ' Mark_L1  梁 L端からの離れ
        ' Y1 矢印 (<)  の　Y座標   Y2 Mark Y座標
        Print #60, "[P:" + FD2(-X00 + 鉄筋開きi, Y1) + "]\[<:180," + D01$ + ",*]"
        Print #60, "[P:" + FD2(X00 + 鉄筋開きi, Y1) + "]\[<R:180," + D01$ + ",*]"
        XLL = X9 + 土木橋脚_梁.BXL + Mark_L1 + 鉄筋開きi
        Print #60, "[P:" + FD2(X9 + 鉄筋開きi, Y1) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
        Call P_鉄筋_○名称(2)

       End Sub

Sub SP_Mark_R_幅止筋(D01$, X0, X1, Y1, Y2, Mark_R1)
        ' Mark_R1  梁 R端からの離れ
        ' Y1 矢印 (<)  の　Y座標   Y2 Mark Y座標
        Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + D01$ + ",*]"
        XLL = -X1 + 土木橋脚_梁.BXR + Mark_R1
        Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
        Call P_鉄筋_○名称(2)
       End Sub

Sub SP_Mark_R_St(D01$, X0, X9, Y1, Y2, Mark_R1)
        ' Mark_R1  梁 R端からの離れ
        ' Y1 < の　Y座標   Y2 Mark Y座標
        Print #60, "[P:" + FD2(-X0, Y1) + "]\[<R:0," + D01$ + ",*]"
        Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + D01$ + ",*]"
        XLL = X9 + 土木橋脚_梁.BXR + Mark_R1
        Print #60, "[P:" + FD2(-X9, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
        Call P_鉄筋_○名称(2)
       End Sub



Sub P_梁_断面C()
     '梁平断面
     元原点X = 原点X: 元原点Y = 原点Y
     ReDim SMark$(100)
     
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
                
     With 土木橋脚_梁
                 
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_梁平面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ｃ－Ｃ")
                
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
        Call P_橋脚_梁_平面図
         Print #60, "[dot:]"
         Call P_橋脚_柱_断面図
         Print #60, "[con:]"
     
     
       '[[[ ｽﾄｯﾊﾟｰ ｾﾝﾀｰ Line ]]]
                  Print #60, "[dot:]"
                  Call P_橋脚_Stoper_平面("C")
      
       Print #60, "[con:]"
      
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale
                  補1 = 寸法線位置_梁平面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
     
                  寸法位置2 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_梁平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置2) + "]"
                  Print #60, "[寸:" + FD3(.BXL2, 0, -補2) + "|" + FD3(土木橋脚_柱.BX, 0, -補2) + "|" + FD3(.BXR2, 0, -補2) + "]"
          
          
          ' L寸法
                  寸法位置L1 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_梁平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BYL) + "]"
                  Print #60, "[寸:" + F9(-補L1) + ":" + FD3(0, .BY, -補L1) + "]"
     
                  寸法位置L2 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_梁平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(寸法位置L2, -.BYL) + "]"
                  Print #60, "[寸:" + FD3(0, .BYL, -補L2) + "|" + FD3(0, .BYR, 0) + "]"
     
    '[[[ 下鉄筋(あご部分) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
           '  B3=D25_@136+164+4x250+400+4x250+164_   B95+3445.1    D98+1327.9+1534.4_r150
              橋脚_鉄筋θ = 270: D1$ = 橋脚_梁("下端筋"): X0_LL = 鉄筋L_XL
              X1 = -.BXL + あご筋_X1:   X2 = .BXR - あご筋_X1
              
              For ii = 1 To 鉄筋P_Σ数: Y1 = -.BYL + 鉄筋P_位置(ii):
                      Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X0_LL, 0) + "]"
                      Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(-X0_LL, 0) + "]"
                      Next ii
    
    '[[[ 下鉄筋(あご部分) 寸法 ]]]
                  寸法位置L3 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_梁平面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              
              Print #60, "  [P:" + FD2(寸法位置L3, -.BYL) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補L3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, .BY - 鉄筋P_位置(鉄筋P_Σ数), 0) + ",,R=7]"
              Print #60, D11$
     
    '[[[ 下鉄筋(あご部分) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              橋脚_鉄筋θ = 270: D1$ = 橋脚_梁("下端筋"): 'X0_LL = 鉄筋L_XL
                   X1 = -土木橋脚_柱.BXL + 200: X2 = 土木橋脚_柱.BXR - 200
                   Y0 = .BYR - 鉄筋P_位置(1): '鉄筋P_Σ数):
                   
                   YLL = Y0 + .BYL + Mark_D1
                   Print #60, "[P:" + FD2(X1, .BYR) + "]\[<:270," + 鉄筋_pit$ + ",*]": ' ",-]"
                   Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
                   Print #60, "[P:" + FD2(X2, .BYR) + "]\[<:270," + 鉄筋_pit$ + ",*]": ' ",-]"
                   Print #60, "[P:" + FD2(X2, Y0) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
     
     
     '[[[  Y 表示位置   ]]]
                  D1$ = 橋脚_梁("下端筋"):  表示位置_Y個数 = 鉄筋P_Σ数
                  For ii = 1 To 鉄筋P_Σ数:  表示位置_Y(ii) = -.BYL + 鉄筋P_位置(ii):     Next ii
                  表示位置_Ypit = Abs(表示位置_Y(2) - 表示位置_Y(3))
        
        
        
    '[[[  下ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '      下St = D22_X98_K98_B1618_D2292 + F_r160    ' 下Stｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  -->

              
              橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("下St"): XL1 = 鉄筋L_XL: X被り = 鉄筋_XX
              
              
              D1$ = 橋脚_梁("Spit")
              X0 = -.BXL:  XL = 鉄筋L_XL
              Y1 = -.BYL + X被り
              Y2 = .BYR - X被り
    
              For ii = 1 To 鉄筋P_Σ数: X1 = X0 + 鉄筋P_位置(ii):
                       Select Case X1
                       Case Is < -土木橋脚_柱.BXL:
                                   Print #60, "[P:" + FD2(X1 + 橋脚_J鉄筋開き * 現作図_Scale, Y2) + "]\[皿2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                   Print #60, "[P:" + FD2(X1, Y1) + "]\[皿2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   SMark$(ii) = "B01"
                       Case Is < 土木橋脚_柱.BXR: SMark$(ii) = ""
                       
                       Case Else:
                                   Print #60, "[P:" + FD2(X1 + 橋脚_J鉄筋開き * 現作図_Scale, Y2) + "]\[皿2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                   Print #60, "[P:" + FD2(X1, Y1) + "]\[皿2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   SMark$(ii) = "B01"
                       End Select
                       Next ii
    
    '[[[  下ｽﾀｰﾗｯﾌﾟ Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
    
              '[[[ 下St Mark ]]]
                       Y1 = 表示位置_Y(2) + 表示位置_Ypit / 2
                       Y2 = 表示位置_Y(表示位置_Y個数 - 1) - 表示位置_Ypit / 2
                       
                       X0 = 0: X_1 = 99999: D01$ = ""
                       XDL = 橋脚_J鉄筋開き * 現作図_Scale
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B01": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1
                             Case Else:
                             End Select
                             Next ii
    
    
                       XLL = -X0 + .BXR + Mark_L1
                       Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
    
                       Print #60, "[P:" + FD2(X0 + XDL, Y2) + "]\[<:0," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X0 + XDL, Y2) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
    
    
    
    
    '[[[  ｽﾀｰﾗｯﾌﾟ 寸法 ]]]
              D1$ = 橋脚_梁("Spit")
              寸法位置3 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = 寸法線位置_梁平面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              
              Print #60, "  [P:" + FD2(-.BXL, 寸法位置3) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 3 Then Moj$ = ""
                        D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + "]"
              Print #60, D11$
     
     
     
     
     
     
     End With
     
     End Sub




Sub SP_梁_立短断面_作図(ByVal 作図位置s As String)
     元原点X = 原点X: 元原点Y = 原点Y
     Dim D1s As String
     Dim 下がり As Single, 上がり As Single
     
     作図位置s = Right(作図位置s, 1)
     
     '梁横断面
     ReDim 寸法S(50) As Single, Loop鉄筋幅(50) As Single
     
     Dim 寸法位置1 As Single, 寸法位置2 As Single, 寸法位置3 As Single, 寸法位置4 As Single
     Dim 補1 As Single, 補2 As Single, 補3 As Single, 補4 As Single
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     '原点   梁上端  橋脚芯
     
     With 土木橋脚_梁
      
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_梁断面.U開き + 格図名開き位置) * 現作図_Scale
            Select Case 作図位置s
            Case "a":       Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ")
            Case "b", "c", "d":     Call P_橋脚_格図名(0, Y0, 0, "断面ｂ－ｂ")
            End Select
            
      '[[[ 梁断面 }}}
            Print #60, "[色:白]\[ﾚ:躯体]"
           下がり = 土木橋脚_梁.勾配L
           上がり = 土木橋脚_梁.勾配C
           Call P_橋脚_梁_断面図
     
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_梁断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_梁断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(.BY, 0, -補1) + "]"
     
                  寸法位置2 = 寸法線位置_梁断面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_梁断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_断面Y寸法("UD", 寸法位置2, 補2)
          
          ' D寸法
                  寸法位置D1 = -.H - 寸法線位置_梁断面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_梁断面.D開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置D1) + "]\[寸:" + F9(補D1) + ":" + FD3(.BY, 0, 補D1) + "]"
     
                  寸法位置D2 = -.H - 寸法線位置_梁断面.D開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 寸法線位置_梁断面.D開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置D2) + "]\[寸:" + FD3(.BYL, 0, 補D2) + "|" + FD3(.BYR, 0, 0) + "]"
          
          
          ' L寸法
                  寸法位置L1 = -.BYL - 寸法線位置_梁断面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_梁断面.L開き - 1
                  補L12 = 寸法線位置_梁断面.L開き + .BYL / 現作図_Scale - 1
                 ' Print #60, "[P:" + FD2(寸法位置L1, -.H) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, .H, -補L12) + "]"
                  Print #60, "[P:" + FD2(寸法位置L1, -.H) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, .H, -補L1) + "]"
     
                  寸法位置L2 = -.BYL - 寸法線位置_梁断面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_梁断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  補L22 = 寸法線位置_梁断面.L開き + .BYL / 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 - 1
'                  Print #60, "[P:" + FD2(寸法位置L2, -.H) + "]"
'                  Print #60, "[寸:" + FD3(0, .H + .勾配L, -補L2) + "|" + FD3(0, -.勾配L, -補L2) + ",,L=7|" + FD3(0, .勾配C, -補L22) + ",,R=8]"
     
          ' R寸法
     
                  寸法位置R1 = .BYR + 寸法線位置_梁断面.L開き * 現作図_Scale
                  補R1 = 寸法線位置_梁断面.R開き - 1
                  補R12 = 寸法線位置_梁断面.R開き + .BYR / 現作図_Scale - 1
                  Print #60, "[P:" + FD2(寸法位置R1, -.H) + "]"
                '  Print #60, "[寸:" + FD1(補R1) + ":" + FD3(0, .H + .勾配L, 補R1) + "|" + FD3(0, -.勾配L, 補R1) + ",,L=7|" + FD3(0, .勾配C, 補R12) + ",,R=8]"
                  Print #60, "[寸:" + FD1(補R1) + ":" + FD3(0, .H + .勾配L, 補R1) + "|" + FD3(0, .勾配C, 補R12) + ",,R=8]"
     
     
     
      '[[[ ｽﾄｯﾊﾟ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
          
          Print #60, "[dot:]"
          Call SP_橋脚_Stoper_Y断面(作図位置s, 0, -下がり, 上がり)
          Print #60, "[con:]"
          
      
      '[[[ ﾙｰﾌﾟ鉄筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            寸法数 = 0:   Loop_鉄筋Pit_寸法$ = "": Loop_Pit_ΣL = 0
            B02_X0 = 0:   橋脚_J鉄筋開き_BAK = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
            橋脚_鉄筋θ = 180
              
              '[起点側]
              For ii = 1 To 3:
              
                   D1s = 橋脚_梁("起点Loop" + f0(ii))
                   If D1s <> "" Then
                       寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
                       If 鉄筋P_ΣL > Loop_Pit_ΣL Then Loop_Pit_ΣL = 鉄筋P_ΣL: Loop_鉄筋Pit_寸法$ = 鉄筋_pit$
                       鉄筋径$ = 鉄筋_径$
                       Loop鉄筋間隔 = 鉄筋L_YL: Loop鉄筋_K位置 = 鉄筋_SK位置
                       B02_X0 = Loop鉄筋_K位置
                       X1 = -.BYL + Loop鉄筋_K位置: X2 = X1 + Loop鉄筋間隔
                       Loop鉄筋幅(寸法数) = 鉄筋L_YL

                       For i2 = 1 To 梁_起点Loop筋_部品数i(ii): Y0 = -鉄筋P_位置(i2)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]\[P:" + FD2(X2, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next i2
                       End If
                   Next ii
              '[終点側]
              For ii = 1 To 3:
              
                   D1s = 橋脚_梁("終点Loop" + f0(ii))
                   If D1s <> "" Then
                       寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
                       If 鉄筋P_ΣL > Loop_Pit_ΣL Then Loop_Pit_ΣL = 鉄筋P_ΣL: Loop_鉄筋Pit_寸法$ = 鉄筋_pit$
                       鉄筋径$ = 鉄筋_径$
                       Loop鉄筋間隔 = 鉄筋L_YL: Loop鉄筋_K位置 = 鉄筋_SK位置
                       B02_X0 = Loop鉄筋_K位置
                       X3 = .BYR - Loop鉄筋_K位置: X4 = X3 - Loop鉄筋間隔
                       Loop鉄筋幅(寸法数) = 鉄筋L_YL

                       For i2 = 1 To 梁_終点Loop筋_部品数i(ii): Y0 = -鉄筋P_位置(i2)
                            Print #60, "[P:" + FD2(X3, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]\[P:" + FD2(X4, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next i2
                       End If
                   Next ii
            
            
            
            橋脚_J鉄筋開き = 橋脚_J鉄筋開き_BAK
        
      '[[[ ﾙｰﾌﾟ鉄筋 Y 寸法  ---> ]]]
                  寸法位置3 = 寸法線位置_梁断面.U開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 寸法線位置_梁断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                   Call 橋脚_鉄筋_Pit_ck(梁_Loop筋_Y方向寸法s)
                   D1s = "[寸:" + FD3(鉄筋P_p(1), 0, -補3) + ",,L=7|"
                   For ii = 2 To 鉄筋P_Data数 - 1
                        D1s = D1s + "|" + FD3(鉄筋P_p(ii), 0, -補3)
                        Next ii
                  D1s = "[寸:" + Mid(D1s, 2) + "|" + FD3(鉄筋P_p(鉄筋P_Data数), 0, -補3) + ",,R=7]"
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置3) + "]"
                  Print #60, D1s
                  
                  
                  
      '[[[ ﾙｰﾌﾟ鉄筋 Z 寸法 ]]]
                  '[起点側]
                  寸法位置L3 = -.BYL - 寸法線位置_梁断面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_梁断面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
                   Call 橋脚_鉄筋_Pit_ck(梁_起点Loop筋_Z方向寸法s)
                   D1s = "[寸:" + FD3(0, 鉄筋P_p(1), -補L3) + ",,L=7|"
                   For ii = 2 To 鉄筋P_Data数 - 1:  Moj$ = "," + 鉄筋P_Data$(ii) + "=" + F9(鉄筋P_L(ii)): If InStr(鉄筋P_Data$(ii), "x") = 0 Then Moj$ = ""
                        D1s = D1s + "|" + FD3(0, 鉄筋P_L(ii), -補L3) + Moj$
                        Next ii
                  D1s = "[寸:" + Mid(D1s, 2) + "|" + FD3(0, 鉄筋P_p(鉄筋P_Data数), -補L3) + ",,R=7]"
                  Print #60, "[P:" + FD2(寸法位置L3, -.H) + "]"
                  Print #60, D1s
                  
                  '[終点側]
                  寸法位置R1 = .BYR + 寸法線位置_梁断面.R開き * 現作図_Scale - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R1 = 寸法線位置_梁断面.R開き - 橋脚_寸法線_Pit_躯体図 - 1
                   Call 橋脚_鉄筋_Pit_ck(梁_終点Loop筋_Z方向寸法s)
                   D1s = "[寸:" + FD3(0, 鉄筋P_p(1), 補R1) + ",,L=7|"
                   For ii = 2 To 鉄筋P_Data数 - 1:  Moj$ = "," + 鉄筋P_Data$(ii) + "=" + F9(鉄筋P_L(ii)): If InStr(鉄筋P_Data$(ii), "x") = 0 Then Moj$ = ""
                        D1s = D1s + "|" + FD3(0, 鉄筋P_L(ii), 補R1) + Moj$
                        Next ii
                  D1s = "[寸:" + Mid(D1s, 2) + "|" + FD3(0, 鉄筋P_p(鉄筋P_Data数), 補R1) + ",,R=7]"
                  Print #60, "[P:" + FD2(寸法位置R1, -.H) + "]"
                  Print #60, D1s
      
      
                  
      '[[[ Loop外直筋 ,Loop内直筋   ]]]
            Dim 作図s As String
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                  橋脚_鉄筋θ = 0:      D1s = 橋脚_梁("Loop外直筋")
                  鉄筋径3$ = 鉄筋_径$: Y0_3 = -鉄筋_SK位置
                  
                  橋脚_鉄筋θ = 0:      D1s = 橋脚_梁("Loop内直筋")
                  鉄筋径4$ = 鉄筋_径$: Y0_4 = -鉄筋_SK位置
                  
                  For ii = 1 To 梁_X筋数i: X1 = -.BYL + 梁_X筋_Yi(ii)
                       作図s = "Y": 'IF 梁_X筋_Tyi(II)=
                       Select Case 梁_X筋_Tyi(ii)
                       Case 1, 2: 作図s = ""
                       Case 3:    鉄筋径$ = 鉄筋径3$: Y0 = Y0_3
                               Select Case X1
                               Case Is < 0
                                    Select Case 作図位置s
                                    Case "c", "d": If 梁_X筋_Ty_cuti(ii) = 1 Then 作図s = ""
                                    Case Else
                                    End Select
                               Case Else
                                    Select Case 作図位置s
                                    Case "b", "d": If 梁_X筋_Ty_cuti(ii) = 1 Then 作図s = ""
                                    Case Else
                                    End Select
                               End Select
                       
                       
                       Case 4: 鉄筋径$ = 鉄筋径4$: Y0 = Y0_4
                               Select Case 作図位置s
                               Case "c", "d": If 梁_X筋_Ty_cuti(ii) = 1 Then 作図s = ""
                               Case Else
                               End Select
                       
                       Case 5: 鉄筋径$ = 鉄筋径4$: Y0 = Y0_4
                               Select Case 作図位置s
                               Case "b", "d": If 梁_X筋_Ty_cuti(ii) = 1 Then 作図s = ""
                               Case Else
                               End Select
                       
                       End Select
                       If 作図s = "Y" Then Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next ii
                  
                  
                  
      '[[[ Loop内直筋 寸法 ]]]
                  
                  寸法位置4 = 寸法線位置_梁断面.U開き * 現作図_Scale - 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補4 = 寸法線位置_梁断面.U開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  
                  Moj1$ = F9(梁起点側_Loop内直筋_本数i + 1) + "x" + F9(Int(10 * 梁起点側_Loop内直筋_Piti + 0.9) / 10) + "=" + F9(梁起点側_Loop内直筋_Loop筋幅)
                  Moj2$ = F9(梁終点側_Loop内直筋_本数i + 1) + "x" + F9(Int(10 * 梁終点側_Loop内直筋_Piti + 0.9) / 10) + "=" + F9(梁終点側_Loop内直筋_Loop筋幅)
                  X1 = -.BYL + 梁起点側_Loop内直筋_Y: X2 = -.BYL + 梁終点側_Loop内直筋_Y
                  作図s = "Y"
                  Select Case 作図位置s
                  Case "c", "d": If 梁起点側_Loop内直筋_cuti(1) = 1 Then 作図s = ""
                  Case Else
                  End Select
                  If 作図s = "Y" And 梁起点側_Loop内直筋_本数i > 0 Then Print #60, "[P:" + FD2(X1, 寸法位置4) + "]\[寸:" + FD3(梁起点側_Loop内直筋_Loop筋幅, 0, 0) + "," + Moj1$ + "]"
                  
                  作図s = "Y"
                  Select Case 作図位置s
                  Case "b", "d": If 梁終点側_Loop内直筋_cuti(1) = 1 Then 作図s = ""
                  Case Else
                  End Select
                  If 作図s = "Y" And 梁終点側_Loop内直筋_本数i > 0 Then Print #60, "[P:" + FD2(X2, 寸法位置4) + "]\[寸:" + FD3(梁終点側_Loop内直筋_Loop筋幅, 0, 0) + "," + Moj2$ + "]"
        
        
      '[[[ 下鉄筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                '         B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                        ' 端部の鉄筋の位置  *2002.10.28
                        '    橋脚_鉄筋θ = 270:     D1s = 橋脚_梁("下St")
                        '     DXL = Val(鉄筋_X$):  DYL = 0.6 * 鉄筋_r
        
                  橋脚_鉄筋θ = 270:      D1s = 橋脚_梁("下端筋")
                  鉄筋径$ = 鉄筋_径$: Y0 = -.H + 梁_下端筋_dti
                  For ii = 1 To 梁_下端筋_片側本数i: X0 = -.BYL + 鉄筋P_位置(ii)
                       Select Case ii
                       Case 1, 梁_下端筋_片側本数i: Print #60, "[P:" + FD2(X0, Y0 + DYL) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Case Else:          Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       End Select
                       Next ii
    
    '[[[ 下鉄筋 寸法 ]]]
                  寸法位置D3 = -.H - 寸法線位置_梁断面.D開き * 現作図_Scale + 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D3 = 寸法線位置_梁断面.D開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
              
              Print #60, "  [P:" + FD2(-.BYL, 寸法位置D3) + "]"
                  D1s = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数 - 1
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                        D1s = D1s + FD3(鉄筋P_L(ii), 0, 補D3) + "," + Moj$ + "|"
                        Next ii
                        D1s = D1s + FD3(鉄筋P_L(鉄筋P_Data数), 0, 0) + ",,R=7]"
              Print #60, D1s
        
    '[[[ 水平補強筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                '          B4=D25_K73_@126+12x150_B3150_D2829
                  橋脚_鉄筋θ = 180:     D1s = 橋脚_梁("水平補強筋")
                  'X1 = -梁_水平補強筋_Di / 2: X2 = 梁_水平補強筋_Di / 2
                  
                  X1 = -.BYL + 梁_水平補強筋_位置_Yi: X2 = X1 + 梁_水平補強筋_Di
                  For ii = 1 To 梁_水平補強筋_位置数i:   Y0 = -梁_水平補強筋_位置_Zi(ii)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]\[P:" + FD2(X2, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next ii
     
    '[[[  水平補強筋 寸法 ]]]
      
                  寸法位置R2 = .BYR + 寸法線位置_梁断面.L開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R2 = 寸法線位置_梁断面.R開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
'              Print #60, "  [P:" + FD2(寸法位置R2, -.H) + "]"
'                  D1s = "  [寸:"
'                  For ii = 1 To 鉄筋P_Data数
'                        Ds$(鉄筋P_Data数 + 2 - ii) = 鉄筋P_Data$(ii): Di(鉄筋P_Data数 + 2 - ii) = 鉄筋P_L(ii)
'                        Next ii
'                        Ds(1) = "": Di(1) = .H + 下がり - 鉄筋P_ΣL
'                  For ii = 1 To 鉄筋P_Data数
'                        Moj$ = P_橋脚_ΣPit寸法(Ds$(ii)):
'                        D1s = D1s + FD3(0, Di(ii), 補R2) + "," + Moj$ + "|"
'                        Next ii
'                        D1s = D1s + FD3(0, Di(鉄筋P_Data数 + 1), 0) + "]"
'              Print #60, D1s
        
              Print #60, "  [P:" + FD2(寸法位置L2, -.H) + "]"
                  D1s = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Ds$(鉄筋P_Data数 + 2 - ii) = 鉄筋P_Data$(ii): Di(鉄筋P_Data数 + 2 - ii) = 鉄筋P_L(ii)
                        Next ii
                        Ds(1) = "": Di(1) = .H + 下がり - 鉄筋P_ΣL
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(Ds$(ii)):
                        D1s = D1s + FD3(0, Di(ii), -補L2) + "," + Moj$ + "|"
                        Next ii
                        D1s = D1s + FD3(0, Di(鉄筋P_Data数 + 1), 0) + "]"
              Print #60, D1s
        
        
       '[[[ 上ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '
             橋脚_鉄筋L計算_max$ = "Y" ' 鉄筋L 最大長さSet
             Y0 = -梁_上S_Z_dti:       橋脚_鉄筋θ = 90:
             
             Select Case 作図位置s
             Case "a"
                       D1s = 橋脚_梁("*上St1"): X1 = 梁_上St_部品_Y(1): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
                       D1s = 橋脚_梁("*上St2"): X1 = 梁_上St_部品_Y(2): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
             Case "b"
                       D1s = 橋脚_梁("*上St1"): X1 = 梁_上St_部品_Y(1): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
                       D1s = 橋脚_梁("*上St5"): X1 = 梁_上St_部品_Y(5): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
             Case "c"
                       D1s = 橋脚_梁("*上St3"): X1 = 梁_上St_部品_Y(3): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
                       D1s = 橋脚_梁("*上St2"): X1 = 梁_上St_部品_Y(2): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
             Case "d"
                       D1s = 橋脚_梁("*上St3"): X1 = 梁_上St_部品_Y(3): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
                       D1s = 橋脚_梁("*上St4"): X1 = 梁_上St_部品_Y(4): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
                       D1s = 橋脚_梁("*上St5"): X1 = 梁_上St_部品_Y(5): Y1 = Y0 - 梁_上St_Hi: If D1s <> "" Then Call P_橋脚_鉄筋図("帯筋", "", "", "", X1, Y1)
                      ' D1s = 橋脚_梁("*上St5"): X1 = 梁_上St_部品_Y(5): Y1 = Y0 - 梁_上St_Ty_Hmax(5): Call P_橋脚_鉄筋図("", "", "", X1, Y1)
             
             End Select
             橋脚_鉄筋L計算_max$ = "" ' 鉄筋L 最大長さ Rset
      
      '[[[ 上ｽﾀｰﾗｯﾌﾟ B02 Mark ]]]
            Dim Xnn(3) As Integer, Xi(3) As Single, Yi(3) As Single
            Print #60, "[色:白]\[ﾚ:Mark]"
             橋脚_鉄筋θ = 90:
                       Zn1 = Int(0.4 * 梁_水平補強筋_位置数i)
                       Yi(1) = -梁_水平補強筋_位置_Zi(Zn1 + 4) - 35
                       Yi(2) = -梁_水平補強筋_位置_Zi(Zn1 + 2) + 25
                       Yi(3) = -梁_水平補強筋_位置_Zi(Zn1) + 55
                       
             Select Case 作図位置s
             Case "a": ni = 2: Xnn(1) = 1: Xnn(2) = 2
             Case "b": ni = 2: Xnn(1) = 1: Xnn(2) = 5
             Case "c": ni = 2: Xnn(1) = 3: Xnn(2) = 2
             Case "d": ni = 3: Xnn(1) = 3: Xnn(2) = 4: Xnn(3) = 5
             End Select
                       
             For ii = 1 To ni
             
                       X1 = 梁_上St_部品_Y(Xnn(ii)) + 梁_上St_部品L(Xnn(ii))
                       Y1 = Yi(ii)
                       D1s = 橋脚_梁("上St" + F9(Xnn(ii)))
                  If D1s <> "" Then
                       XLL = -X1 + .BYR '+ 18 * 現作図_Scale
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(1)
                       End If
                  Next ii
                       
                       
     
       
       '[[[ 下ｽﾀｰﾗｯﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
             橋脚_鉄筋θ = 270:     D1s = 橋脚_梁("下St")
             X0 = -.BYL + 梁_下St_Yi + 梁_下St_Bi
             Y0 = -.H + 梁_下St_Hi + 梁_下St_dti
             Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
             
     
       '[[[ 下ｽﾀｰﾗｯﾌﾟMark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
             橋脚_鉄筋θ = 270:     D1s = 橋脚_梁("下St")
             X1 = -.BYL + 梁_下端筋_Yi(Int(0.4 * 梁_下端筋_位置数i)) + 40: Y1 = -.H + 梁_下St_dti  ' + 鉄筋_XX + 鉄筋L_XL: Y1 = -.H + 鉄筋_SK位置 + 280
                       XLL = -X0 + .BYR + 5 * 現作図_Scale
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]"
                     '  Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -25) + "|" + FD2(名称_L1, 0) + "]\[pm:-14,0]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[Lm:" + FD2(0, -18) + "|" + FD2(名称_L1, 0) + "]\[pm:-14,0]"
                       Call P_鉄筋_○名称(1)
     
     
     
     End With
     
     End Sub
Sub SP_梁_立短断面_作図鉄筋配筋図()
     Dim 下がり As Single, 上がり As Single
     
     元原点X = 原点X: 元原点Y = 原点Y
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
            
     With 土木橋脚_梁
      
      '[[[ 格図名 ]]]
           Y0 = 格図名開き位置 * 現作図_Scale
           Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ鉄筋配筋図")
           Print #60, "[Msize:" + FD1(橋脚_鉄筋_Mark_Msize) + "]"
     
     '[[[ 梁断面 }}}
            Print #60, "[色:白]\[ﾚ:躯体]"
           下がり = 土木橋脚_梁.勾配L
           上がり = 土木橋脚_梁.勾配C
           Call P_橋脚_梁_断面図
      
      '[[[ ｽﾄｯﾊﾟ ]]]
          
            Print #60, "[色:白]\[ﾚ:躯体]"
          Print #60, "[dot:]"
          Call SP_橋脚_Stoper_Y断面("", 0, -下がり, 上がり)
          Print #60, "[con:]"
          
      
       '[[[ ｽﾀｰﾗｯﾌﾟ位置  ]]]
               橋脚_鉄筋θ = 90:     D1$ = 橋脚_梁("上St1")
               Strap_U = -鉄筋_SK位置
               Strap_L1 = -.BYL + 鉄筋_XX: Strap_L2 = Strap_L1 + 鉄筋L_XL
               Strap_R1 = .BYR - 鉄筋_XX: Strap_L2 = Strap_R1 - 鉄筋L_XL
             ' 下ｽﾀｰﾗｯﾌﾟ            = D22_X98_K98_B1618_D2292 + F_r160 '### 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  -->
               橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("下St")
               Strap_D = -.H + 鉄筋_SK位置
      
               M径2 = 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
      
      鉄筋番号 = 0
      
      '[[[ ﾙｰﾌﾟ鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
        For ii = 1 To 3:
              橋脚_鉄筋θ = 180
              Select Case ii
              Case 1:              D1$ = 橋脚_梁("起点Loop1"): If D1$ <> "" Then 鉄筋番号 = 鉄筋番号 + 1
              Case 2:              D1$ = 橋脚_梁("起点Loop2"): If D1$ <> "" Then 鉄筋番号 = 鉄筋番号 + 1
              Case 3:              D1$ = 橋脚_梁("起点Loop3"): If D1$ <> "" Then 鉄筋番号 = 鉄筋番号 + 1
              End Select
                  鉄筋径$ = 鉄筋_径$
                  Loop鉄筋間隔 = 鉄筋L_YL: Loop鉄筋_K位置 = 鉄筋_SK位置
                  X1 = -.BYL + Loop鉄筋_K位置: If ii = 1 Then X1 = Strap_L1 + M径2:
                  X2 = -.BYL + Loop鉄筋_K位置 + Loop鉄筋間隔
                  X3 = .BYR - Loop鉄筋_K位置: If ii = 1 Then X3 = Strap_R1 - M径2
                  X4 = .BYR - Loop鉄筋_K位置 - Loop鉄筋間隔
                  Y_DL = Strap_U - M径2 + 鉄筋P_位置(1)
                  For i2 = 1 To 鉄筋P_Σ数:  Y0 = -鉄筋P_位置(i2) + Y_DL
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X3, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X4, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                       Next i2
              Next ii
        
        
      '[[[ 下鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
                '         B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                        ' 端部の鉄筋の位置  *2002.10.28
                            橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("下St")
                             DXL = Val(鉄筋_X$):  DYL = 0.6 * 鉄筋_r
                             X1 = -.BYL + DXL + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                             X9 = .BYR - DXL - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                  
                  鉄筋番号 = 鉄筋番号 + 1
                  橋脚_鉄筋θ = 270:      D1$ = 橋脚_梁("下端筋")
                  鉄筋径$ = 鉄筋_径$: Y0 = Strap_D + M径2
                  For ii = 1 To 鉄筋P_Σ数: X0 = -.BYL + 鉄筋P_位置(ii):
                        Select Case ii
                        Case 1:               Print #60, "[P:" + FD2(X1, Y0 + DYL) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                        Case 鉄筋P_Σ数:      Print #60, "[P:" + FD2(X9, Y0 + DYL) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                        Case Else:            Print #60, "[P:" + FD2(X0, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                        End Select
                       Next ii
      
      '[[[ 水平補強筋 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
                '          B4=D25_K73_@126+12x150_B3150_D2829
                  鉄筋番号 = 鉄筋番号 + 1: あご筋Ck$ = ""
                  橋脚_鉄筋θ = 180:     D1$ = 橋脚_梁("水平補強筋")
                  X1 = Strap_L1 - M径2: X2 = Strap_R1 + M径2
                  For ii = 1 To 鉄筋P_Σ数:   Y0 = -鉄筋P_位置(ii)
                           If あご筋Ck$ = "" And Y0 <= あご筋_Y2 Then 鉄筋番号 = 鉄筋番号 + 1: あご筋Ck$ = "N"
                            
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                       Next ii
     
        
      '[[[ Loop内直筋 Loop内直筋端部 Loop内直筋内部 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
              '           B2=D16_K126_@396.7+4x180.7_LF+8900+F        ' ###  *  ---> x
                  鉄筋番号 = 鉄筋番号 + 1
                  番号2 = 0
                  橋脚_鉄筋θ = 0:      D1$ = 橋脚_梁("Loop内直筋")
                  鉄筋径$ = 鉄筋_径$: Y0 = Strap_U - M径2
                  For ii = 1 To 鉄筋P_Σ数:
                            X1 = -.BYL + 鉄筋P_位置(ii): X2 = .BYR - 鉄筋P_位置(ii)
                            番号2 = 0: If FP_Stoper_Y位置i(X1) > 0 Then 番号2 = 1
                            
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号 + 番号2) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号 + 番号2) + "]"
                       Next ii
                  
        
       '[[[ 上ｽﾀｰﾗｯﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
             橋脚_鉄筋θ = 90:     D1$ = 橋脚_梁("上St1")
             X0 = -.BYL + 鉄筋_XX: Y0 = -鉄筋_SK位置 - 鉄筋L_YL
             Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
             X0 = .BYR - 鉄筋_XX - 鉄筋L_XL
             Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
     
        
       '[[[ 下ｽﾀｰﾗｯﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '           = D22_X98_K98_B1618_D2292 + F_r160 '### 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  -->
             橋脚_鉄筋L計算_max$ = "Y" ' 鉄筋L 最大長さSet
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("下St")
             X0 = -.BYL + 鉄筋_XX + 鉄筋L_XL: Y0 = -.H + 鉄筋_SK位置 + 鉄筋L_YL
             Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
             
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("下StR")
             X0 = .BYR - 鉄筋_XX: Y0 = -.H + 鉄筋_SK位置 + 鉄筋L_YL
             Call P_橋脚_鉄筋図("帯筋", "", "", "", X0, Y0)
             橋脚_鉄筋L計算_max$ = "" ' 鉄筋L 最大長さ Rset
     
     
     End With
     End Sub
Sub SP_梁_Loop_作図(Data1$)
     ' B1-1   B1-2
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1s = 橋脚_梁(Data1$): If D1s = "" Then Exit Sub

     If D1s = "" Then Exit Sub
             Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
          '   Print #60, "[P:" + FD2(-鉄筋L_Xcen, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(20, -2.3 * 橋脚_鉄筋名称_径) + "]"
             Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.3 * 橋脚_鉄筋名称_径) + "]"
             Call P_鉄筋_○名称(3)
     
'              Print #60, "[P:" + FD2(鉄筋L_Xcen, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-30, -2.3 * 橋脚_鉄筋名称_径) + "]"
'             Call P_鉄筋_○名称(4)
             元原点X = 原点X: 元原点Y = 原点Y
     End Sub



Sub SP_梁_直筋cut無_作図(ByVal 部品s As String)
     'SP_梁_直筋cut無_作図　　　SP_梁_Loop内直筋cut無_作図
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
    ' D1s = 橋脚_梁("Loop内直筋cut無")
     D1s = 橋脚_梁(部品s): If D1s = "" Then Exit Sub

         Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
         Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-15, -1.5 * 橋脚_鉄筋名称_径) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub
     
Sub SP_梁_直筋端部_作図(ByVal 部品s As String)
     '  SP_梁_直筋端部_作図
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
     D1s = 橋脚_梁(部品s): If D1s = "" Then Exit Sub

         Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
         Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub

Sub SP_梁_直筋内部_作図(ByVal 部品s As String)
     ' SP_梁_直筋内部_作図
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1s = 橋脚_梁(部品s): If D1s = "" Then Exit Sub

         Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
         Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub


Sub SP_梁_下端筋_作図()
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1s = 橋脚_梁("下端筋"): If D1s = "" Then Exit Sub

         Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
         Print #60, "[P0:]\[pm:" + FD2(-20, 0) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub SP_梁_水平補強筋_作図(ByVal 部品s As String)
     ' SP_梁_水平補強筋_作図
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1s = 橋脚_梁(部品s): If D1s = "" Then Exit Sub

         Call P_橋脚_鉄筋図("標準", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
         Print #60, "[P0:]\[pm:" + FD2(-10, -1.1 * 橋脚_鉄筋名称_径) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub
Sub SP_梁_幅止筋_作図(ByVal 部品s As String)
     ' SP_梁_幅止筋_作図
     Dim D1s As String
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     'D1s = 橋脚_梁("B5-1")
     D1s = 橋脚_梁(部品s): If D1s = "" Then Exit Sub

         Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
         Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub

Sub SP_梁_St_作図(ByVal 部品s As String)
     ' SP_梁_St_作図
     Dim D1s As String, YL As Single
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90: YL = 梁_H: If Mid(部品s, 1, 1) = "下" Then 橋脚_鉄筋θ = 270: YL = 200 + 12 * 現作図_Scale
     D1s = 橋脚_梁(部品s): If D1s = "" Then Exit Sub
         
         Call P_橋脚_鉄筋図("帯筋", "Y", "", "", -鉄筋L_Xcen, -2 * 鉄筋L_Ycen)
         Print #60, "[P:" + FD2(0, -Abs(YL)) + "]\[pm:" + FD2(-15, -1.5 * 橋脚_鉄筋名称_径) + "]"
         Call P_鉄筋_○名称(3)
         元原点X = 原点X: 元原点Y = 原点Y
     End Sub


'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　土木橋脚     作図　Sub                　  　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛


'┌─────────────────────────────────────────────┐
'│■ P_橋脚_柱_平面図       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_柱_断面図()
    With 土木橋脚_柱
    D01$ = Uxf_P(-.BXL, 0)
    D02$ = "\[L:r" + F9(.r) + ":" + FD2(0, .BYR) + "|" + FD2(.BX, 0) + "|" + FD2(0, -.BY) + "|" + FD2(-.BX, 0) + "|" + FD2(0, .BYL) + "]"
    Print #60, D01$ + D02$
    End With
    End Sub


'┌─────────────────────────────────────────────┐
'│■ P_橋脚_梁_平面図       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_梁_平面図()
    With 土木橋脚_梁
    D01$ = Uxf_P(-.BXL, 0)
    D02$ = "\[L:r" + F9(.r) + ":" + FD2(0, .BYR) + "|" + FD2(.BX, 0) + "|" + FD2(0, -.BY) + "|" + FD2(-.BX, 0) + "|" + FD2(0, .BYL) + "]"
    Print #60, D01$ + D02$
    End With
    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_梁_断面図       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_梁_断面図()
    With 土木橋脚_梁
        D01$ = Uxf_P(0, .勾配C)
        D02$ = "\[Lr:" + FD2(.BYR, -.勾配C + .勾配R) + "|" + FD3(0, -.H - .勾配R, .r) + "|" + FD3(-.BY, 0, .r) + "|" + FD2(0, .H + .勾配L) + "|" + FD2(.BYL, -.勾配L + .勾配C) + "]"
    End With
    Print #60, D01$ + D02$
    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_柱位置_梁_断面図     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_柱位置_梁_断面図()
    With 土木橋脚_梁
    
           BB = .BY
           HH = .H * 1.1
           Print #60, "[P:" + FD2(-BB / 2, 0) + "]\[L:" + FD2(BB, 0) + "]"
           Print #60, "[P:" + FD2(-BB / 2, -HH) + "]\[L:" + FD2(0, HH) + "]"
           Print #60, "[P:" + FD2(BB / 2, -HH) + "]\[L:" + FD2(0, HH) + "]"
           X1 = -0.55 * BB: Y1 = -HH: X2 = 0.55 * BB: Y2 = Y1: W1 = 12: h1 = -5
           Print #60, Uxf_切断M1(X1, Y1, X2, Y2, W1, h1)
    End With
    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_梁_長断面図     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_梁_長断面図(X0, Y0, 下がり, 柱H)
          
          
     '     BB_X$ = 橋脚_梁("BX")
          勾配_L = 下がり: '.勾配L
          
          With 土木橋脚_梁
                
                D01$ = Uxf_P(X0 - .BXL, Y0 + 勾配_L) + "\" + Uxf_線(.BX, 0)
                Print #60, "    " + D01$
          柱H2 = 柱H: If 柱H2 = 0 Then 柱H2 = 0.4 * .H
          
          C_HH = .H + 柱H2
         ' C_HH = .H * 1.5
                B_H0 = C_HH - .H
                
                Print #60, Uxf_P(X0 - 土木橋脚_柱.BXL, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0, .r2) + "|" + FD3(-.BXL2, .h1, .r) + "|" + FD2(0, .h2 + 勾配_L) + "]"
     
                Print #60, Uxf_P(X0 + 土木橋脚_柱.BXR, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0, .r2) + "|" + FD3(.BXR2, .h1, .r) + "|" + FD2(0, .h2 + 勾配_L) + "]"
          
               If .r > 0 Then
                    Print #60, UXF_線種("DOT")
                    If .BXL2 = 0 Then TAN1 = 0 Else TAN1 = .h1 / .BXL2:
                    COS1 = .BXL2 / Sqr(.h1 ^ 2 + .BXL2 ^ 2): L3 = .r * TAN1: L2 = .r / COS1: RrD = L2 - L3
                    Print #60, Uxf_P(X0 - 土木橋脚_柱.BXL + .r, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0 + RrD, .r2) + "|" + FD3(-.BXL2, .h1, .r) + "|" + FD2(0, .h2 + 勾配_L - RrD) + "]"
     
                    If .BXR2 = 0 Then TAN1 = 0 Else TAN1 = .h1 / .BXR2:
                    COS1 = .BXR2 / Sqr(.h1 ^ 2 + .BXR2 ^ 2):   L3 = .r * TAN1: L2 = .r / COS1:   RrD = L2 - L3
                    Print #60, Uxf_P(X0 + 土木橋脚_柱.BXR - .r, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0 + RrD, .r2) + "|" + FD3(.BXR2, .h1, .r) + "|" + FD2(0, .h2 + 勾配_L - RrD) + "]"
                    End If
     
            If 柱H2 < .H Then
     
               Print #60, UXF_線種("CON")
               X1 = X0 - 土木橋脚_柱.BXL: Y1 = Y0 - C_HH: X2 = X0 + 土木橋脚_柱.BXR: Y2 = Y1: W1 = 12: h1 = -5
               Print #60, Uxf_切断M1(X1, Y1, X2, Y2, W1, h1)
               End If
            
            End With
    End Sub


'┌─────────────────────────────────────────────┐
'│■ P_橋脚_溶接Mark1       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_溶接Mark1(XL, YL)
    '溶接Mark を描く
  '  Print #60, "    [矢:" + FD2(XL, YL) + "]\[pm:-10,0]\[me:200]"
    Print #60, "    [矢:" + FD2(XL, YL) + "]\[me:200]\[Lm:10,0]"
    Print #60, "    [re:200]\[Lm:0,3]\[pm:2,1]\[ｽﾘｯﾄ:2,2,90,0.1]"
    Print #60, "    [re:200]\[pm:3,0]\[Arc1m:2,270,360]\[re:200]\[pm:7.2,0]\[Arc1m:2,180,270]"

    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_鉄筋図          　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_鉄筋図(加工Type$, 寸法出力$, Ftype$, F向き$, 鉄筋X0, 鉄筋Y0)
        ' 加工Type$    標準   帯筋  Joint長さ 及び ﾌｯｸ r に影響する
          ' 加工Type$ = "標準","帯筋",
           '寸法出力$   Y N   杭
           ' Ftype$　ﾌｯｸType      U   V
           ' F向き$  ﾌｯｸ向き      +  R
           ' 鉄筋X0, 鉄筋Y0  Start 位置
          Dim D1s As String
          Dim PX1(10) As Single, PY1(10) As Single
          
          
          Select Case F向き$
          Case "R": Fook向き = -1
          Case Else: Fook向き = 1
          End Select
          
          ' (1)  or   (2),(3) が必要
          '(1) CALL  橋脚_鉄筋_ck(項目$,加工Type$, 鉄筋Data$)
          
          '(2) CALL  橋脚_鉄筋_径_数_ck(DATA1$)
          '(3) CALL  橋脚_鉄筋_L_ck(加工Type$,DATA1$)
            
          鉄筋θ = 橋脚_鉄筋θ
          
          寸_開き = 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
           
           Joint_鉄筋開き = 橋脚_J鉄筋開き * 現作図_Scale: If 寸法出力$ = "杭" Then Joint_鉄筋開き = 0
           Select Case 寸法出力$
           Case "杭":                     杭Joint_鉄筋開き = -橋脚_J鉄筋開き * 現作図_Scale: Joint_鉄筋開き = 0
           Case "杭-":  寸法出力$ = "杭": 杭Joint_鉄筋開き = 橋脚_J鉄筋開き * 現作図_Scale: Joint_鉄筋開き = 0
           End Select
           
          
          S引出線 = 橋脚_寸法線_開き_鉄筋図 - 1: E引出線 = 橋脚_寸法線_開き_鉄筋図 - 1
            
          前type$ = ""
            
            鉄筋径$ = 橋脚鉄筋径$(1)
            鉄筋n = 鉄筋数_Σn
           
           
           Point_X = 鉄筋X0: Point_Y = 鉄筋Y0
          ' Print #60, "       '  鉄筋図 Start"
           Print #60, "    " + Uxf_P(Point_X, Point_Y)
           
           For ii = 1 To 鉄筋L_Data数: LL = 鉄筋L_L(ii): RR = 鉄筋L_r(ii): Data1$ = 鉄筋L_Data$(ii)
                Select Case 鉄筋L_Type$(ii)
                Case "角":     鉄筋θ = 鉄筋θ - 鉄筋L_曲角度(ii)
                
                Case "L":      If 前type$ = "L" Then 鉄筋θ = 鉄筋θ - 90
                               If LL > 0 Then
                               XLL = LL * Dcos(鉄筋θ): YLL = LL * Dsin(鉄筋θ)
                               X1 = Point_X: Y1 = Point_Y: X2 = X1 + XLL: Y2 = Y1 + YLL
                               Select Case 角度正規化(鉄筋θ)
                                    Case Is <= 90: 引符号 = -1
                                    Case Is <= 270: 引符号 = 1
                                    Case Else: 引符号 = -1
                                    End Select
                               Call P_橋脚_Calu_点AB_θ回転座標(90, 寸_開き, X1, Y1, X2, Y2, Xp1, Yp1)
                               X1 = Xp1: Y1 = Yp1: X2 = X1 + XLL:  Y2 = Y1 + YLL
                               '* 2002.11.4
                               If 鉄筋L_加工調整$ = "Y" And ii = 鉄筋L_Data数 Then
                                     XLL = XLL + Joint_鉄筋開き
                                     End If
                                                             
                               D01$ = "   [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL, YLL) + "]"
                               Moj$ = 鉄筋L_Data$(ii)
                               If 寸法出力$ = "Y" Then
                                     If InStr(Moj, ".") > 0 Then If InStr(Moj$, "～") = 0 Then Moj$ = F9(Int(LL + 0.9999)): '  調整
                                     
                                     D01$ = D01$ + "\[P:" + FD2(X1, Y1) + "]\[寸:" + F9(引符号 * S引出線) + ":" + FD3(XLL, YLL, 引符号 * E引出線) + "," + Moj$ + "]"
                                     End If
                               Print #60, "     " + D01$
                               
                               Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
                              End If
                Case "F":
                               Hook_D1 = FP_橋脚_鉄筋_Data("D1", "SD390", 加工Type$, 鉄筋径$)
                               Hook_b1 = FP_橋脚_鉄筋_Data("b", "SD390", 加工Type$, 鉄筋径$)
                               Hook_角度 = 180 * Fook向き
                               Select Case 前type$
                               Case "L": Hook_角度 = -180 * Fook向き
                                          Hook_DX = 0.1 * Dcos(鉄筋θ): Hook_DY = 0.1 * Dsin(鉄筋θ)
                               Case Else
                                          Hook_DX = -0.1 * Dcos(鉄筋θ): Hook_DY = -0.1 * Dsin(鉄筋θ)
                               End Select
                               
                               Select Case Ftype$
                               Case "V":  Hook_角度 = Hook_角度 / 6
                                          Print #60, "   [P:" + FD2(Point_X, Point_Y) + "]\[ﾌｯｸV:" + FD5(Hook_DX, Hook_DY, Hook_角度, Hook_D1, Hook_b1) + "]"
                               Case Else: Print #60, "   [P:" + FD2(Point_X, Point_Y) + "]\[ﾌｯｸ:" + FD5(Hook_DX, Hook_DY, Hook_角度, Hook_D1, Hook_b1) + "]"
                               End Select

                Case "W":      'ｶﾞｽ圧接
                               
                               Print #60, "[設定out:]"
                               Print #60, "[色:白]"
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[Cir:10]\[Cir:15]\[Cir:25]"
                               Print #60, "[設定in:]"
                               
                               If 寸法出力$ = "Y" Then
                               Print #60, "[設定out:]"
                                   Print #60, "[色:白]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"

                               
                               表示θ = 鉄筋θ: If 表示θ <= -180 Then 表示θ = 表示θ + 180
                               '表示θ = 0
                               LL1 = 6 * 現作図_Scale: LL2 = 22 * 現作図_Scale
                               XLL1 = LL1 * Dcos(表示θ - 60): YLL1 = LL1 * Dsin(表示θ - 60)
                               XLL2 = LL2 * Dcos(表示θ): YLL2 = LL2 * Dsin(表示θ)
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL1, YLL1) + "|" + FD2(XLL2, YLL2) + "]"
                               Print #60, "   [P:" + FD2(Point_X + XLL1, Point_Y + YLL1) + "]\[字:" + FD3(0, 0, 表示θ) + ",L,ガス圧接]"
                               Print #60, "[設定in:]"
                               End If
                
                Case "K":      '機械継ぎ手
                               
                               Print #60, "[設定out:]"
                               Print #60, "[色:白]"
                
                               '[[[ === ]]]
                                LLX = 150: LLY = 25
                                PX1(1) = Point_X - LLX: PX1(2) = Point_X + LLX: PX1(3) = Point_X + LLX: PX1(4) = Point_X - LLX
                                PY1(1) = Point_Y + LLY: PY1(2) = Point_Y + LLY: PY1(3) = Point_Y - LLY: PY1(4) = Point_Y - LLY
                                D1s = "[Li:" + FD4(PX1(1), PY1(1), PX1(2), PY1(2)) + "]"
                                D1s = D1s + "\[Li:" + FD4(PX1(2), PY1(2), PX1(3), PY1(3)) + "]"
                                D1s = D1s + "\[Li:" + FD4(PX1(3), PY1(3), PX1(4), PY1(4)) + "]"
                                D1s = D1s + "\[Li:" + FD4(PX1(4), PY1(4), PX1(1), PY1(1)) + "]"
                               Print #60, D1s
                               Print #60, "[設定in:]"
                               
                               If 寸法出力$ = "Y" Then
                               Print #60, "[設定out:]"
                                   Print #60, "[色:白]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"

                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\" + UXF_点()
                               表示θ = 鉄筋θ: If 表示θ <= -180 Then 表示θ = 表示θ + 180
                               LL1 = 6 * 現作図_Scale: LL2 = 22 * 現作図_Scale
                               XLL1 = LL1 * Dcos(表示θ - 60): YLL1 = LL1 * Dsin(表示θ - 60)
                               XLL2 = LL2 * Dcos(表示θ): YLL2 = LL2 * Dsin(表示θ)
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL1, YLL1) + "|" + FD2(XLL2, YLL2) + "]"
                               Print #60, "   [P:" + FD2(Point_X + XLL1, Point_Y + YLL1) + "]\[字:" + FD3(0, 0, 表示θ) + ",L,機械式継手]"
                               Print #60, "[設定in:]"
                               End If
                
                Case "J":      If LL <= 0 Then LL = 2 * FP_橋脚_鉄筋_Data("L1", "SD390", 加工Type$, 鉄筋径$): Stop '' OK
                               'Joint_L = LL
                               XLL = -LL * Dcos(鉄筋θ) + Joint_鉄筋開き * Dsin(鉄筋θ): YLL = -LL * Dsin(鉄筋θ) + Joint_鉄筋開き * Dcos(鉄筋θ)
                               XLL2 = -LL * Dcos(鉄筋θ): YLL2 = -LL * Dsin(鉄筋θ)
                               X1 = Point_X: Y1 = Point_Y:  X2 = X1 + XLL2: Y2 = Y1 + YLL2
                               Select Case 角度正規化(鉄筋θ)
                                    Case Is <= 90: 引符号 = 1
                                    Case Is <= 270: 引符号 = -1
                                    Case Else: 引符号 = 1
                                    End Select
                               
                               Select Case 寸法出力$
                               Case "Y":    Call P_橋脚_Calu_点AB_θ回転座標(90, 寸_開き, X1, Y1, X2, Y2, Xp1, Yp1)
                                            X1 = Xp1: Y1 = Yp1: X2 = X1 + XLL2:  Y2 = Y1 + YLL2
                                            D01$ = "[P:" + FD2(X1, Y1) + "]\[寸:" + F9(引符号 * S引出線) + ":" + FD3(XLL2, YLL2, 引符号 * E引出線) + "]"
                                            Print #60, "     " + D01$
                               Case "杭":    Call P_橋脚_Calu_点AB_θ回転座標(90, 杭Joint_鉄筋開き, X1, Y1, X2, Y2, Xp1, Yp1)
                                            X1 = Xp1: Y1 = Yp1: X2 = X1 + XLL2:  Y2 = Y1 + YLL2
                                            D01$ = "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL2, YLL2) + "]"
                                            Print #60, "     " + D01$
                               Case Else
                               End Select
                               Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
                
                Case "R":      鉄筋_r角度 = 鉄筋L_r角度(ii)
                               中心_鉄筋θ = 鉄筋θ - 90
                               鉄筋θ = 鉄筋θ - 鉄筋_r角度
                               回転θ = -鉄筋_r角度
                               XLL = 0: YLL = 0
                               X1 = Point_X:  Y1 = Point_Y: X2 = Point_X: Y2 = Point_Y
                               
                               中心_DX = RR * Dcos(中心_鉄筋θ): 中心_DY = RR * Dsin(中心_鉄筋θ)
                               '***
                               If 鉄筋_r角度 < 0 Then 中心_DX = -中心_DX: 中心_DY = -中心_DY: '***
                               X0 = X1 + 中心_DX: Y0 = Y1 + 中心_DY
                               Call P_橋脚_Calu_θ回転(回転θ, X0, Y0, X1, Y1, X2, Y2)
                               r1 = 鉄筋θ + 90: r2 = r1 + 鉄筋_r角度
                               
                               If 鉄筋_r角度 < 0 Then r9 = r1: r1 = r2 + 180: r2 = r9 + 180:
                               
                               D01$ = "   [P:" + FD2(Point_X + 中心_DX, Point_Y + 中心_DY) + "]\" + Uxf_Arc_1(RR, r1, r2)
                               R寸法$ = F橋脚(2 * 3.14159265358979 * RR * Abs(回転θ) / 360)
                               If 寸法出力$ = "Y" Then
                                 '** **
                                     寸法出力_r$ = ""
                                     
                                            If 鉄筋L_Data$(ii - 1) = "0" Then 寸法出力_r$ = "A"
                                            If 鉄筋L_Data$(ii + 1) = "0" Then 寸法出力_r$ = "N"
                                     
                                     Print #60, "[設定out:]"
                                     
                                     Select Case 寸法出力_r$
                                     Case "N"  '例外処理 Loop筋
                                     Case "A"  '例外処理 Loop筋
                                            r2 = r1 + 180
                                            R寸法$ = F橋脚(2 * 3.14159265358979 * RR * Abs(2 * 回転θ) / 360)
                                            D01$ = D01$ + "\" + UXF_寸法_Arc(寸_開き + RR, r1, r2, S引出線, S引出線, "<>", R寸法$)
                               
                                            X3 = X0 + Sgn(X0) * RR / 1.414213: Y3 = 1.4142 * (Y1 + Y2) / 2: 角度θ = Calu角度(X0, Y0, X3, Y3)
                                     
                                            Print #60, "[色:空]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"
                                            Print #60, "[Li:" + FD4(X0, Y0, X3, Y3) + "]"
                                     
                                            Select Case 角度θ
                                            Case Is <= 90: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                            Case Is < 270: Print #60, "[P:" + FD2(X0, Y0) + "]\[lm:16,0]\[pm:2,0]\R=" + F9(RR)
                                            Case Else: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                            End Select
                                     Case Else
                                            D01$ = D01$ + "\" + UXF_寸法_Arc(寸_開き + RR, r1, r2, S引出線, S引出線, "<>", R寸法$)
                                            X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2: 角度θ = Calu角度(X0, Y0, X3, Y3)
                                     
                                            Print #60, "[色:空]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"
                                            Print #60, "[Li:" + FD4(X0, Y0, X1, Y1) + "]\[Li:" + FD4(X0, Y0, X2, Y2) + "]"
                                     
                                            Select Case 角度θ
                                            Case Is <= 90: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                            Case Is < 270: Print #60, "[P:" + FD2(X0, Y0) + "]\[lm:16,0]\[pm:2,0]\R=" + F9(RR)
                                            Case Else: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                            End Select
                                     End Select
                                     
                                     Print #60, "[設定in:]"
                                     End If
                                
                                D01$ = D01$ + "\" + Uxf_P(X2, Y2)
                               
                               Print #60, "     " + D01$
                               Point_X = X2: Point_Y = Y2
                
                
                Case Else:  世er = "*Err  P_橋脚_鉄筋図 " + 鉄筋L_Type$(ii): er (""): If 世誤CK > 99 Then Stop
                End Select
                前type$ = 鉄筋L_Type$(ii)
                Next ii
                
     
     鉄筋L_加工調整$ = ""
     End Sub


'┌─────────────────────────────────────────────┐
'│■ P_橋脚_Stoper_平面     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_Stoper_平面(DType$)
       ' DType$="X"      X を描く
       ' DType$="C"      ｾﾝﾀｰﾗｲﾝ を描く
       Dim ii As Integer, Stoper部品Tyi As Integer

            Print #60, "[色:白]\[ﾚ:Stoper]"

           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           For ii = 1 To Stoper位置_Data数: Stoper部品Tyi = Stoper_Tyi(Stoper位置_No(ii))
                X0 = Stoper位置_X(ii): Y0 = Stoper位置_Y(ii): BX = Stoper位置_BX(ii): BY = Stoper位置_BY(ii)
                
                Select Case Stoper部品Tyi 'BX
                Case 2:       D1$ = "[P:" + FD2(X0, Y0) + "]\[Cir:" + FD1(BY / 2) + "]"
                Case Else:    D1$ = "[P:" + FD2(X0 - BX / 2, Y0 - BY / 2) + "]\[L:" + FD2(0, BY) + "|" + FD2$(BX, O) + "|" + FD2(0, -BY) + "|" + FD2(-BX, 0) + "]"
                End Select
                
                Print #60, D1$
                If InStr(DType$, "X") > 0 Then
                     Print #60, "[P:" + FD2(X0 - BX / 2, Y0 - BY / 2) + "]\[L:" + FD2(BX, BY) + "]"
                     Print #60, "[P:" + FD2(X0 - BX / 2, Y0 + BY / 2) + "]\[L:" + FD2(BX, -BY) + "]"
                     End If
                Next ii
    If InStr(DType$, "C") > 0 Then
           X0 = -土木橋脚_梁.BXL
           For ii = 1 To Stoper位置_X個数: X0 = X0 + Stoper位置_終点Xpit(ii)
                X1 = 0: Y1 = -土木橋脚_梁.BYL: Y2 = 土木橋脚_梁.BYR
                Call P_橋脚_Center_Line(X0, Y1, X0, Y2, 0, 0)
                Next ii
    
           Y0 = -土木橋脚_梁.BYL
           For ii = 1 To Stoper位置_Y個数: Y0 = Y0 + Stoper位置_Ypit(ii)
                X1 = -土木橋脚_梁.BXL: X2 = 土木橋脚_梁.BXR
                Call P_橋脚_Center_Line(X1, Y0, X2, Y0, 0, 0)
                Next ii
    
           End If
    
    End Sub

'┌─────────────────────────────────────────────┐
'│■ SP_橋脚_Stoper_X断面   (長断面)     　　　　　　　　　　　　　　　　 　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub SP_橋脚_Stoper_X断面(ByVal 位置s As String, ByVal Y00 As Single, ByVal DY As Single)
     ' Y00  梁上の作図ﾚﾍﾞﾙ
     ' DY   Stoperの高さをちじめる  (+)縮小
            Print #60, "[色:白]\[ﾚ:Stoper]"
           
           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           
      Select Case 位置s
      Case "起点側"
           For ii = Stoper終点側位置数i + 1 To Stoper位置_Data数 ' Stoper起点側位置数i
                X0 = Stoper位置_X(ii): Y0 = Stoper位置_Y(ii): BX = Stoper位置_BX(ii): BY = Stoper位置_BY(ii): HH = Stoper位置_H(ii) - DY
                D1$ = "[P:" + FD2(X0 - BX / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BX, O) + "|" + FD2(0, HH) + "]"
                Print #60, D1$
                Next ii
           
      Case Else
           For ii = 1 To Stoper終点側位置数i
                X0 = Stoper位置_X(ii): Y0 = Stoper位置_Y(ii): BX = Stoper位置_BX(ii): BY = Stoper位置_BY(ii): HH = Stoper位置_H(ii) - DY
                D1$ = "[P:" + FD2(X0 - BX / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BX, O) + "|" + FD2(0, HH) + "]"
                Print #60, D1$
                Next ii
      End Select
         
         
         
         Print #60, "[con:]"

    End Sub
'┌─────────────────────────────────────────────┐
'│■ SP_橋脚_Stoper_Y断面   (短断面)     　　　　 　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub SP_橋脚_Stoper_Y断面(ByVal Types As String, ByVal Y00 As Single, ByVal DY端 As Single, ByVal 上がり As Single)
     ' Type  ""  a  起点終点側   b 終点側　 c 起点側　 d  起点終点側
     '       b c d は 線 con
     
     
     ' Y00  梁上の作図ﾚﾍﾞﾙ
     ' DY端 梁の端部下がり
      Dim D1s As String, D2s As String
           
            Print #60, "[色:白]\[ﾚ:Stoper]\[dot:]"
           
                Y0 = Stoper起点側_Y:  BY = Stoper_BYi(Stoper起点側_部品i): HH = Stoper_Hi(Stoper起点側_部品i)
                D1s = "[P:" + FD2(Y0 - BY / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BY, O) + "|" + FD2(0, HH) + "]"
         
                Y0 = Stoper終点側_Y:  BY = Stoper_BYi(Stoper終点側_部品i): HH = Stoper_Hi(Stoper終点側_部品i)
                D2s = "[P:" + FD2(Y0 - BY / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BY, O) + "|" + FD2(0, HH) + "]"
         
         Select Case Types
         'Case "", "a"
         Case "b":  D1s = "[con:]\"
         Case "c":  D1s = "[con:]\" + D1s: D2s = ""
         Case "d": D1s = "[con:]\" + D1s
         Case Else
         End Select
         
         Print #60, D1s
         Print #60, D2s
         
         Print #60, "[con:]"
    
    End Sub

Function FP_Stoper終点側_X寸法(寸法位置1, 補1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BXL, 寸法位置1) + "]\[寸:"
      For ii = 1 To Stoper終点側位置数i:  D1$ = D1$ + FD3(Stoper位置_終点Xpit(ii), 0, -補1) + "|":  Next ii
      D1$ = D1$ + FD3(Stoper位置_終点Xpit(Stoper終点側位置数i + 1), 0, 0) + "]"
      FP_Stoper終点側_X寸法 = D1$
      End Function
Function FP_Stoper起点側_X寸法(寸法位置1, 補1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BXL, 寸法位置1) + "]\[寸:"
      For ii = 1 To Stoper起点側位置数i:  D1$ = D1$ + FD3(Stoper位置_起点Xpit(ii), 0, -補1) + "|":  Next ii
      D1$ = D1$ + FD3(Stoper位置_起点Xpit(Stoper起点側位置数i + 1), 0, 0) + "]"
      FP_Stoper起点側_X寸法 = D1$
      End Function


Function FP_Stoper_Y寸法(寸法位置1, 補1)
      Dim D0s As String, D1s As String
      D1s = "[P:" + FD2(寸法位置1, -土木橋脚_梁.BYL) + "]\[寸:"
      D1s = D1s + FD3(0, Stoper位置_Ypit(1), -補1) + "|"
      D1s = D1s + FD3(0, Stoper位置_Ypit(2) / 2, -補1) + "|"
      D1s = D1s + FD3(0, Stoper位置_Ypit(2) / 2, -補1) + "|"
      D1s = D1s + FD3(0, Stoper位置_Ypit(Stoper位置_Y個数 + 1), 0) + "]"
      FP_Stoper_Y寸法 = D1s
      End Function
Function FP_Stoper_Y寸法2(寸法位置1, 補1)
      Dim D0s As String, D1s As String
           D0s = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           BX = Stoper位置_BX(1): BY = Stoper位置_BY(1)
           BX2 = Stoper位置_BX(Stoper終点側位置数i + 1): BY2 = Stoper位置_BY(Stoper終点側位置数i + 1)
      
      D1s = "[P:" + FD2(寸法位置1, -土木橋脚_梁.BYL) + "]\[寸:"
      D1s = D1s + FD3(0, Stoper位置_Ypit(1) - BY2 / 2, -補1) + "|"
      D1s = D1s + FD3(0, BY2, -補1) + "|"
      D1s = D1s + FD3(0, Stoper位置_Ypit(2) - BY2 / 2 - BY / 2, -補1) + "|"
      D1s = D1s + FD3(0, BY, -補1) + "|"
      D1s = D1s + FD3(0, Stoper位置_Ypit(Stoper位置_Y個数 + 1) - BY / 2, 0) + "]"
      FP_Stoper_Y寸法2 = D1s
      End Function

Function FP_Stoper_断面Y寸法(作図位置s As String, 寸法位置1 As Single, 補1 As Single)
      Dim D0s As String, D1s As String
      Select Case 作図位置s
           Case "D"
                 D1s = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
                 D1s = D1s + FD3(Stoper位置_Ypit(1), 0, -補1) + "|"
                 'D1s = D1s + FD3(Stoper位置_Ypit(2), 0, -補1) + "|"
                 D1s = D1s + FD3(土木橋脚_梁.BY - Stoper位置_Ypit(1), 0, 0) + "]"
                 FP_Stoper_断面Y寸法 = D1s
           Case "U"
                 D1s = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
                 D1s = D1s + FD3(Stoper位置_Ypit(1) + Stoper位置_Ypit(2), 0, -補1) + "|"
                 'D1s = D1s + FD3(Stoper位置_Ypit(2), 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(Stoper位置_Y個数 + 1), 0, 0) + "]"
                 FP_Stoper_断面Y寸法 = D1s
           Case Else
                 D1s = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
                 D1s = D1s + FD3(Stoper位置_Ypit(1), 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(2), 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(Stoper位置_Y個数 + 1), 0, 0) + "]"
                 FP_Stoper_断面Y寸法 = D1s
      End Select
      
      End Function
Function FP_Stoper_断面Y寸法2(作図位置s As String, 寸法位置1 As Single, 補1 As Single)
      Dim D0s As String, D1s As String
           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           'BX = Stoper位置_BX(1):
           BY起点 = Stoper位置_BY(Stoper終点側位置数i + 1)
           BY終点 = Stoper位置_BY(1)
      Select Case 作図位置s
           Case "D"
                 D1s = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
                 D1s = D1s + FD3(Stoper位置_Ypit(1) - BY起点 / 2, 0, -補1) + "|"
                 D1s = D1s + FD3(BY起点, 0, -補1) + "|"
                 D1s = D1s + FD3(土木橋脚_梁.BY - Stoper位置_Ypit(1) - BY起点 / 2, 0, 0) + "]"
                 
                 FP_Stoper_断面Y寸法2 = D1s
           Case "U"
                 D1s = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
                 'D1s = D1s + FD3(Stoper位置_Ypit(1) - BY起点 / 2, 0, -補1) + "|"
                 'D1s = D1s + FD3(BY起点, 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(1) + Stoper位置_Ypit(2) - BY起点 / 2 - BY終点 / 2, 0, -補1) + "|"
                 D1s = D1s + FD3(BY終点, 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(Stoper位置_Y個数 + 1) - BY終点 / 2, 0, 0) + "]"
                 FP_Stoper_断面Y寸法2 = D1s
           Case Else
                 D1s = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
                 D1s = D1s + FD3(Stoper位置_Ypit(1) - BY起点 / 2, 0, -補1) + "|"
                 D1s = D1s + FD3(BY起点, 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(2) - BY起点 / 2 - BY終点 / 2, 0, -補1) + "|"
                 D1s = D1s + FD3(BY終点, 0, -補1) + "|"
                 D1s = D1s + FD3(Stoper位置_Ypit(Stoper位置_Y個数 + 1) - BY終点 / 2, 0, 0) + "]"
                 FP_Stoper_断面Y寸法2 = D1s
      ' D1s
      End Select
      End Function

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_沓座_平面       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_沓座_平面()
      沓座$ = 橋脚_梁("沓座位置")
      For ii = 1 To 沓座位置_Data数
             Xp = 沓座位置_X(ii): Yp = 沓座位置_Y(ii)
             沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no): BD$ = 橋脚_沓座("BD"): 沓座_BX = 躯体_D(1): 沓座_BY = 躯体_D(2)
             Print #60, "     [P:" + FD2(Xp, Yp) + "]\[B:" + FD2(沓座_BX, 沓座_BY) + "]"
             Next ii
      End Sub



Function FP_沓座終点側_X寸法1(寸法位置1, 補1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BXL, 寸法位置1) + "]\[寸:"
      For ii = 1 To 沓座終点側位置数i:  D1$ = D1$ + FD3(沓座位置_終点Xpit(ii), 0, -補1) + "|":  Next ii
      D1$ = D1$ + FD3(沓座位置_終点Xpit(沓座終点側位置数i + 1), 0, 0) + "]"
      FP_沓座終点側_X寸法1 = D1$
      End Function

Function FP_沓座起点側_X寸法1(寸法位置1, 補1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BXL, 寸法位置1) + "]\[寸:"
      For ii = 1 To 沓座起点側位置数i:  D1$ = D1$ + FD3(沓座位置_起点Xpit(ii), 0, -補1) + "|":  Next ii
      D1$ = D1$ + FD3(沓座位置_起点Xpit(沓座起点側位置数i + 1), 0, 0) + "]"
      FP_沓座起点側_X寸法1 = D1$
      End Function


Function FP_沓座終点側_X寸法2(寸法位置1, 補1)
      '  沓座の鉄筋の割付寸法
      D1$ = "[P:" + FD2(-土木橋脚_梁.BXL, 寸法位置1) + "]\[寸:"
      Lpit0 = 0
      For ii = 1 To 沓座終点側位置数i
            沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
            沓座D$ = 橋脚_沓座("S" + f0(2 * (沓座no - 1) + 2)):
            Lpit1 = 鉄筋P_ΣL
            LLL = 沓座位置_終点Xpit(ii) - Lpit0 / 2 - Lpit1 / 2
            D2$ = FD3(LLL, 0, -補1) + "|"
            If ii = 1 And LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, -補1) + ",,L=6|"
            Moj$ = P_橋脚_ΣPit寸法(鉄筋_pit$)
            D3$ = FD3(Lpit1, 0, -補1) + "," + Moj$ + "|"
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      LLL = 沓座位置_終点Xpit(沓座終点側位置数i + 1) - Lpit0 / 2
      D2$ = FD3(LLL, 0, 0) + "]"
      If LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, 0) + ",,R=6]"
      
      D1$ = D1$ + D2$
      FP_沓座終点側_X寸法2 = D1$
      End Function

Function FP_沓座起点側_X寸法2(寸法位置1, 補1)
      '  沓座の鉄筋の割付寸法
      D1$ = "[P:" + FD2(-土木橋脚_梁.BXL, 寸法位置1) + "]\[寸:"
      Lpit0 = 0
      For ii = 1 To 沓座起点側位置数i: ii2 = ii + 沓座終点側位置数i
            沓座no = 沓座位置_No(ii2): Call 橋脚_沓座_Get(沓座no):
            沓座D$ = 橋脚_沓座("S" + f0(2 * (沓座no - 1) + 2)):
            Lpit1 = 鉄筋P_ΣL
            LLL = 沓座位置_起点Xpit(ii) - Lpit0 / 2 - Lpit1 / 2
            D2$ = FD3(LLL, 0, -補1) + "|"
            If ii = 1 And LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, -補1) + ",,L=6|"
            
            
            Moj$ = P_橋脚_ΣPit寸法(鉄筋_pit$)
            D3$ = FD3(Lpit1, 0, -補1) + "," + Moj$ + "|"
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      
      LLL = 沓座位置_起点Xpit(沓座起点側位置数i + 1) - Lpit0 / 2
      D2$ = FD3(LLL, 0, 0) + "]"
      If LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, 0) + ",,R=6]"
      
      D1$ = D1$ + D2$
      FP_沓座起点側_X寸法2 = D1$
      End Function


Function FP_沓座_Y寸法(寸法位置1, 補1)
      D1$ = "[P:" + FD2(寸法位置1, -土木橋脚_梁.BYL) + "]\[寸:"
      D1$ = D1$ + FD3(0, 沓座位置_Ypit(1), -補1) + "|"
      'D1$ = D1$ + FD3(0, 沓座位置_Ypit(2) / 2, -補1) + "|"
      'D1$ = D1$ + FD3(0, 沓座位置_Ypit(2) / 2, -補1) + "|"
      D1$ = D1$ + FD3(0, 沓座位置_Ypit(2), -補1) + "|"
      D1$ = D1$ + FD3(0, 沓座位置_Ypit(沓座位置_Y個数 + 1), 0) + "]"
      FP_沓座_Y寸法 = D1$
      End Function

Function FP_沓座_断面Y寸法(寸法位置1, 補1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
      D1$ = D1$ + FD3(沓座位置_Ypit(1), 0, -補1) + "|"
      'D1$ = D1$ + FD3(沓座位置_Ypit(2) / 2, 0, -補1) + "|"
      'D1$ = D1$ + FD3(沓座位置_Ypit(2) / 2, 0, -補1) + "|"
      D1$ = D1$ + FD3(沓座位置_Ypit(2), 0, -補1) + "|"
      D1$ = D1$ + FD3(沓座位置_Ypit(沓座位置_Y個数 + 1), 0, 0) + "]"
      FP_沓座_断面Y寸法 = D1$
      End Function

Function FP_沓座_Y寸法2(寸法位置1, 補1)
      '  沓座の鉄筋の割付寸法
      D1$ = "[P:" + FD2(寸法位置1, -土木橋脚_梁.BYL) + "]\[寸:"
      Lpit0 = 0: ΣLL = 0
      For ii = 1 To 沓座位置_Y個数:
            Select Case ii
            Case 1:   沓座no = 沓座起点側_部品i '沓座位置_No(沓座終点側位置数i + 1)
            Case Else: 沓座no = 沓座終点側_部品i ' 沓座位置_No(1)
            End Select
            
            'Call 橋脚_沓座_Get(沓座no):
            沓座D$ = 橋脚_沓座("S" + f0(2 * (沓座no - 1) + 1))
            Y_ずれ = Val(鉄筋_Y$): If ii > 1 Then Y_ずれ = -Y_ずれ
            Lpit1 = 鉄筋P_ΣL
            LLL = 沓座位置_Ypit(ii) - Lpit0 / 2 - Lpit1 / 2 - Y_ずれ
            ΣLL = ΣLL + LLL
            D2$ = FD3(0, LLL, -補1) + "|"
             If ii = 1 And LLL < 寸法表示基準L Then D2$ = FD3(0, LLL, -補1) + ",,L=6|"
            
            Moj$ = P_橋脚_ΣPit寸法(鉄筋_pit$)
            D3$ = FD3(0, Lpit1, -補1) + "," + Moj$ + "|"
            ΣLL = ΣLL + Lpit1
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      LLL = 土木橋脚_梁.BY - ΣLL
      D2$ = FD3(0, LLL, 0) + "]"
      If LLL < 寸法表示基準L Then D2$ = FD3(0, LLL, 0) + ",,R=6]"
      D1$ = D1$ + D2$
      FP_沓座_Y寸法2 = D1$
      End Function
Function FP_沓座_断面Y寸法2(寸法位置1, 補1)
      ' 断面   沓座の鉄筋の割付寸法
      Dim Wda As String, 沓座no As Integer
      D1$ = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
      Lpit0 = 0: ΣLL = 0
      For ii = 1 To 沓座位置_Y個数:
            Select Case ii
            Case 1:   沓座no = 沓座起点側_部品i ' 沓座位置_No(沓座終点側位置数i + 1)
            Case Else: 沓座no = 沓座終点側_部品i ' 沓座位置_No(1)
            End Select
            
            'Call 橋脚_沓座_Get(沓座no):
            Wda = "S" + f0(2 * (沓座no - 1) + 1)
            沓座D$ = 橋脚_沓座(Wda):
            Y_ずれ = Val(鉄筋_Y$): If ii > 1 Then Y_ずれ = -Y_ずれ
            Lpit1 = 鉄筋P_ΣL
            LLL = 沓座位置_Ypit(ii) - Lpit0 / 2 - Lpit1 / 2 - Y_ずれ
            ΣLL = ΣLL + LLL
            D2$ = FD3(LLL, 0, -補1) + "|"
            If ii = 1 And LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, -補1) + ",,L=6|"
            Moj$ = P_橋脚_ΣPit寸法(鉄筋_pit$)
            D3$ = FD3(Lpit1, 0, -補1) + "," + Moj$ + "|"
            ΣLL = ΣLL + Lpit1
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      LLL = 土木橋脚_梁.BY - ΣLL
      D2$ = FD3(LLL, 0, 0) + "]"
      If LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, 0) + ",,R=6]"
      
      D1$ = D1$ + D2$
      FP_沓座_断面Y寸法2 = D1$
      End Function

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_ΣPit寸法(Moj$)(短断面)     　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function P_橋脚_ΣPit寸法(Moj$)
     ' 3x150  --->  3x150=450
     D1$ = UCase(Moj$)
     ni = InStr(D1$, "X")
     If ni > 1 Then
            D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
            D1$ = Moj$ + "=" + F9(Val(D2$) * Val(D3$))
            End If
     P_橋脚_ΣPit寸法 = LCase(D1$)
     End Function

Function FP_Pit_反転s(ByVal Pits As String) As String
     '
     Dim ii As Integer, ni As Integer, Ds(90) As String, Wda As String
     Call Ddata_M("+", Pits, Ds, ni)
     Wda = ""
     For ii = 1 To ni
         Wda = Wda + "+" + Ds(ni + 1 - ii)
         Next ii
    FP_Pit_反転s = Mid(Wda, 2)
    
    
    End Function



Sub P_橋脚_Calu_θ回転(θ, X0, Y0, X1, Y1, Xp, Yp)
    ' X0,Y0 を中心に回転した座標を求める (X1,Y1) から　回転した　座標(Xp,Yp)
    r = Sqr((X1 - X0) * (X1 - X0) + (Y1 - Y0) * (Y1 - Y0))
    If r <= 0 Then 世er = "System P_橋脚_Calu_θ回転 r=0": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
    SN1 = (Y1 - Y0) / r: CS1 = (X1 - X0) / r
    SN = Dsin(θ): CS = Dcos(θ)
    Xp = X0 + r * (CS1 * CS - SN1 * SN)
    Yp = Y0 + r * (SN1 * CS + CS1 * SN)
    End Sub
Sub P_橋脚_Calu_点AB_θ回転座標(θ, l, XA, YA, XB, YB, Xp, Yp)
    ' XA,YA を中心に回転した座標を求める Vecter(XA,YA)_(XB,YB) から　回転して距離が Lの座標　(Xp,Yp)
    r = Sqr((XB - XA) * (XB - XA) + (YB - YA) * (YB - YA))
    If r <= 0 Then 世er = "System P_橋脚_Calu_点AB_θ回転座標 r=0": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
    SN1 = (YB - YA) / r: CS1 = (XB - XA) / r
    SN = Dsin(θ): CS = Dcos(θ)
    Xp = XA + l * (CS1 * CS - SN1 * SN)
    Yp = YA + l * (SN1 * CS + CS1 * SN)
    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_橋脚_格図名          　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_格図名(X0, Y0, 角度, Moj$)
    '
    Print #60, "[設定out:]\[色:白]\[ﾚ:Title]"
    Print #60, "[Msize:" + F9(図名_Msize) + "]\[P:" + FD2(X0, Y0) + "]"
    Print #60, "[字_:" + F9(角度) + ",1.2," + Moj$ + "]\[設定in:]"
    End Sub
'┌─────────────────────────────────────────────┐
'│■ P_鉄筋_○名称横       　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘

Sub P_鉄筋_○名称(項目n)
    ' 鉄筋_○_符号$     exp   Moj1$="B": Moj2$="0": Moj3$="1": Moj4$="16-D32 x 10840"
    ' Point点 ○の下場
     ReDim 名M_Ds$(30), 名M_Di(30)
    Call Ddata("_", 鉄筋_○_符号$, 名M_Ds(), 名M_Di(), ni)
    Moj1$ = 名M_Ds(1)
    Moj2$ = 名M_Ds(2)
    Moj3$ = 名M_Ds(3)
    'Moj4$ = 名M_Ds(4)
    Select Case 項目n
    Case 0:   Moj4$ = ""
    Case 1:   Moj4$ = 鉄筋_○_符号1$
    Case 2:   Moj4$ = 鉄筋_○_符号2$
    Case 3:   Moj4$ = 鉄筋_○_符号3$
    Case 4:   Moj4$ = 鉄筋_○_符号4$
    End Select
    
    
    Print #60, "[設定out:]\[me:150]"
    Print #60, "[色:白]\[ﾚ:Mark]"
    DD = 橋脚_鉄筋名称_径
    D1$ = "[me:900]\[pm:" + FD2(0, DD / 2) + "]\[○:" + F9(DD) + "]"
    D2$ = "[pm:" + FD2(-0.35 * DD, 0) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize1) + "]\[字:0,0,0,LC," + Moj1$ + "]"
    D3$ = "[re:900]\[pm:" + FD2(0.05 * DD, 0.55 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize2) + "]\[字:0,0,0,LD," + Moj2$ + "]"
    D4$ = "[re:900]\[pm:" + FD2(0.05 * DD, 0.15 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize2) + "]\[字:0,0,0,LD," + Moj3$ + "]"
    
'   XX5 = 0.65 * DD: If Len(Moj3$) > 1 Then XX5 = 0.8 * DD
    XX5 = 0.85 * DD ''''''''' nagase
    D5$ = "[re:900]\[pm:" + FD2(XX5, 0) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]\[字:0,0,0,LD," + Moj4$ + "]"
    
    Print #60, "     " + D1$
    Print #60, "     " + D2$
    Print #60, "     " + D3$
    Print #60, "     " + D4$
    If Moj4$ <> "" Then Print #60, "     " + D5$
    Print #60, "[設定in:]\[re:150]"
    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_鉄筋_○名称縦         　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_鉄筋_○名称縦(項目n)
    ' exp   Moj1$="B": Moj2$="0": Moj3$="1": Moj4$="16-D32 x 10840"
    ' Point点 ○の下場
    
     ReDim 名M_Ds$(30), 名M_Di(30)
    Call Ddata("_", 鉄筋_○_符号$, 名M_Ds(), 名M_Di(), ni)
    Moj1$ = 名M_Ds(1)
    Moj2$ = 名M_Ds(2)
    Moj3$ = 名M_Ds(3)
   ' Moj4$ = 名M_Ds(4)
    Select Case 項目n
    Case 0:   Moj4$ = ""
    Case 1:   Moj4$ = 鉄筋_○_符号1$
    Case 2:   Moj4$ = 鉄筋_○_符号2$
    Case 3:   Moj4$ = 鉄筋_○_符号3$
    Case 4:   Moj4$ = 鉄筋_○_符号4$
    End Select
    
    
    Print #60, "[設定out:]"
    Print #60, "[色:白]\[ﾚ:Mark]"
    DD = 橋脚_鉄筋名称_径
    D1$ = "[me:900]\[pm:" + FD2(-DD / 2, 0) + "]\[○:" + F9(DD) + "]"
    D2$ = "[pm:" + FD2(0, -0.35 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize1) + "]\[字:0,0,90,LC," + Moj1$ + "]"
    D3$ = "[re:900]\[pm:" + FD2(-0.75 * DD, 0.05 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize2) + "]\[字:0,0,90,LD," + Moj2$ + "]"
    D4$ = "[re:900]\[pm:" + FD2(-0.15 * DD, 0.05 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize2) + "]\[字:0,0,90,LD," + Moj3$ + "]"
'    D5$ = "[re:900]\[pm:" + FD2(0, 0.6 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]\[字:0,0,90,LD," + Moj4$ + "]"

    XX5 = 0.85 * DD ''''''''' nagase
    D5$ = "[re:900]\[pm:" + FD2(0, FD2(XX5, 0)) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]\[字:0,0,90,LD," + Moj4$ + "]"

    Print #60, "     " + D1$
    Print #60, "     " + D2$
    Print #60, "     " + D3$
    Print #60, "     " + D4$
    If Moj4$ <> "" Then Print #60, "     " + D5$
    Print #60, "[設定in:]"
    
    End Sub







'┌─────────────────────────────────────────────┐
'│■ P_橋脚_Center_Line     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_Center_Line(X1, Y1, X2, Y2, X3, Y3)
    ' X3=0, Y3=0  CL ﾏｰｸを描かない
      '[[[ ｾﾝﾀｰ Line ]]]
    Print #60, "[設定out:]"
    Print #60, "[ﾚ:Center-Line]"
    Print #60, "[" + 図_CenterLine_線種$ + ":]\[色:" + 図_CenterLine_線色$ + "]"
    Print #60, "  [P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, Y2 - Y1) + "]"
    角度 = Calu角度(X1, Y1, X2, Y2) - 90
    If X3 <> 0 Or Y3 <> 0 Then Print #60, "  [P:" + FD2(X3, Y3) + "]\[CL:" + FD2(6, 角度) + "]"
    Print #60, "[設定in:]"

    End Sub



'┌─────────────────────────────────────────────┐
'│■ P_橋脚_断面位置指定    　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_断面位置指定(X1, Y1, X2, Y2, Moj1$, Moj2$, Moj角度)
    '  向き  1 or -1
    '
    '       5                6
    '      /│               │
    '    7  │               │ 8
    '      1└─ 3        4─┘2
    '
    '
          XL = 断面位置指定_XL * 現作図_Scale
          YL = 断面位置指定_YL * 現作図_Scale
          矢L = 断面位置指定_矢L * 現作図_Scale
        '        断面位置指定_矢角 = 15: '度
        '        断面位置指定_Msize = 5: '
    
    線角度 = Calu角度(X1, Y1, X2, Y2)
    X3 = X1 + XL * Dcos(線角度): Y3 = Y1 + XL * Dsin(線角度)
    X4 = X2 - XL * Dcos(線角度): Y4 = Y2 - XL * Dsin(線角度)
    X5 = X1 + YL * Dcos(線角度 + 90): Y5 = Y1 + YL * Dsin(線角度 + 90)
    X6 = X2 + YL * Dcos(線角度 + 90): Y6 = Y2 + YL * Dsin(線角度 + 90)
    
    X7 = X5 + 矢L * Dcos(線角度 + 270 - 断面位置指定_矢角): Y7 = Y5 + 矢L * Dsin(線角度 + 270 - 断面位置指定_矢角)
    X8 = X6 + 矢L * Dcos(線角度 + 270 + 断面位置指定_矢角): Y8 = Y6 + 矢L * Dsin(線角度 + 270 + 断面位置指定_矢角)
    
    D1$ = "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X5 - X1, Y5 - Y1) + "|" + FD2(X7 - X5, Y7 - Y5) + "]"
    D1$ = D1$ + "\[P:" + FD2(X2, Y2) + "]\[L:" + FD2(X6 - X2, Y6 - Y2) + "|" + FD2(X8 - X6, Y8 - Y6) + "]"
    
    D2$ = "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X3 - X1, Y3 - Y1) + "]"
    D2$ = D2$ + "\[P:" + FD2(X2, Y2) + "]\[L:" + FD2(X4 - X2, Y4 - Y2) + "]"
    
    D3$ = D2$ + "\[P:" + FD2((X3 + X5) / 2, (Y3 + Y5) / 2) + "]\[wc:" + Moj1$ + "]"
    D4$ = D2$ + "\[P:" + FD2((X4 + X6) / 2, (Y4 + Y6) / 2) + "]\[wc:" + Moj2$ + "]"
    
    Print #60, "[設定out:]\[Msize:" + F9(断面位置指定_Msize) + "]\[色:" + 断面位置指定_線色$ + "]"
            Print #60, "[ﾚ:断面位置指定]"
    Print #60, D1$
    Print #60, D2$
    Print #60, D3$
    Print #60, D4$
    Print #60, "[設定in:]"

    End Sub



'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　土木橋脚     鉄筋材料表　Data Control 　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　2002.11.22　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛


Sub 土木_橋脚_鉄筋材料表_Write()

        Dim Komes As String

        Temp2$ = Data_dsk + "鉄筋材料表.Dat"

           Dim DKs(300) As String


'      Public 図_橋脚_枚数i As Integer
'      Public 図_橋脚_順番i(10) As Integer   ' =0   図を 作図 しない
'      Public 図_橋脚_名称s(10) As String   ' 1梁   2支承   3躯体   4基礎   5杭   6材料表
'      Public 図_橋脚_Scale(10) As Single

       Open Temp2$ For Output As #10
       
     '  Print #10, "/PAGE"
    '** **
       If 図_橋脚_順番i(1) > 0 Then
       Print #10, Space(10); "/梁"
              Komes = "起点Loop1,起点Loop2,起点Loop3,終点Loop1,終点Loop2,終点Loop3"
              Komes = Komes + ",*,Loop外直筋cut無,起点側Loop外直筋端部,起点側Loop外直筋内部2,起点側Loop外直筋内部3,起点側Loop外直筋内部4"
                 Komes = Komes + ",終点側Loop外直筋端部,終点側Loop外直筋内部2,終点側Loop外直筋内部3,終点側Loop外直筋内部4"
              
              Komes = Komes + ",*,Loop内直筋cut無,起点側Loop内直筋端部,起点側Loop内直筋内部2,起点側Loop内直筋内部3,起点側Loop内直筋内部4"
                 Komes = Komes + ",終点側Loop内直筋端部,終点側Loop内直筋内部2,終点側Loop内直筋内部3,終点側Loop内直筋内部4"
              
             ' Komes = Komes + ",*,Loop内直筋cut無"
              'Komes = Komes + ",*,Loop内直筋,起点側Loop内直筋端部,起点側Loop内直筋内部2"
              Komes = Komes + ",*,下端筋,水平補強筋,水平補強筋2,*,幅止筋1,幅止筋2,幅止筋3,幅止筋4,幅止筋5,幅止筋6,*,上St1,上St2,上St3,上St4,上St5,上St6,*,下St"
              Call Ddata(",", Komes, DKs(), Di(), ni)
              For ii = 1 To ni:      Da$ = DKs(ii): If Da$ <> "*" Then Da$ = 橋脚_梁(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
             
              Komes = "*,S1,S2"
              Call Ddata(",", Komes, DKs(), Di(), ni)
              For ii = 1 To ni:      Da$ = DKs(ii): If Da$ <> "*" Then Da$ = 橋脚_沓座(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
              Komes = "*,*,H1,H2,H3*"
              Call Ddata(",", Komes, DKs(), Di(), ni)
              For ii = 1 To ni:      Da$ = DKs(ii): If Da$ <> "*" Then Da$ = 橋脚_Stoper(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
              End If
       
       If 図_橋脚_順番i(3) > 0 Then
              Print #10, ""
              Print #10, "/PAGE"
              Print #10, Space(10); "/躯体"
'             Komes = "C1,C2,C3,C4,C5,C6,*,外HpX,外HpY,*,内HpX1,内HpX2,内HpX3,内HpX4,*,内HpY1,内HpY2,内HpY3,内HpY4,内HpY5,*"
     ' 柱組立筋 Begin
              Komes = "C1,C2,C3,C4,C5,C6,*,外HpX,外HpY,*,内HpX1,内HpX2,内HpX3,内HpX4,*,内HpY1,内HpY2,内HpY3,内HpY4,内HpY5,*,組立筋,*"
     ' 柱組立筋 End
            '  Komes = "C1,C2,C3,C4,C5,C6,*,外HpX,外HpY,*,CK"
              Call Ddata(",", Komes, DKs(), Di(), ni)
              For ii = 1 To ni:      Da$ = DKs(ii): If Da$ <> "*" Then Da$ = 橋脚_柱(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
              End If
       
       If 図_橋脚_順番i(4) > 0 Then
              Print #10, ""
              'Print #10, "/PAGE"
              Print #10, Space(10); "/基礎"
              Komes = "FY1,FY2,FY3,*,FX1,FX2,FX3,FX4,*,St線路方向,St直角方向"
              Call Ddata(",", Komes, DKs(), Di(), ni)
              For ii = 1 To ni:      Da$ = DKs(ii): If Da$ <> "*" Then Da$ = 橋脚_基礎(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
              End If
         
       
       Print #10, ""
       Print #10, "/PAGE"
       Print #10, Space(10); "/鉄筋総重量"
       
       If 図_橋脚_順番i(5) > 0 Then
              Print #10, ""
              Print #10, ""
              Print #10, Space(10); "/杭"
              Da$ = 橋脚_基礎("杭位置")
              Print #10, Space(10); "部材箇所=" + f0(杭位置_Data数)
           '  Da$ = 橋脚_杭("Hoop")
              Komes = "K1-1,K1-2,K1-3,K1-4,K1-5,"
              Komes = Komes + "K2-1,K2-2,K2-3,K2-4,K2-5,"
              Komes = Komes + "K3-1,K3-2,K3-3,K3-4,K3-5,"
              Komes = Komes + "*,組立筋,Hp底,*,Hoop1,Hoop2,Hoop3,Hoop4,Hoop5,Hoop6,*,ｽﾍﾟｰｻ1,ｽﾍﾟｰｻ2,ｽﾍﾟｰｻ3"
              Call Ddata(",", Komes, DKs(), Di(), ni)
              For ii = 1 To ni:      Da$ = DKs(ii): If Da$ <> "*" Then Da$ = 橋脚_杭(Da$)
                  If Da$ <> "" Then P_鉄筋材料表_Write (Da$)
                  Next ii
              End If
       
       
       
       
       
       Close #10

' DKs  DK   'Temp


End Sub

Private Sub P_鉄筋材料表_Write(Da$)
    Select Case Da$
    Case "":
    Case "*": Print #10, Spc(10); "."
    Case Else: Print #10, Spc(10); "."; F左$(表符号s, 10); F左$(表鉄筋径s, 10); f(F橋2(表鉄筋L), 11.1); f(表鉄筋本数, 7);
         
            Print #10, "   $"; F左$(表鉄筋適用s, 12); " "; 表鉄筋材質s; "   W"; f0(表鉄筋W箇所)
    'Stop
    End Select
    
    End Sub



Sub 土木_橋脚_鉄筋材料表_Read()

     Dim 項目3s As String

          Dxf_No = Dxf_No + 1

 '** **
      F_Name$ = Data_dsk + "鉄筋材料表.Dat"
     
     Temp$ = TEMP_Data_dsk + "DATA2.TMP"
     

     WTYPE$ = "D"
     Open F_Name$ For Input As #40
     Open Temp$ For Output As #5
     Do: If EOF(40) Then Da$ = "//END" Else Line Input #40, Da$
        Da1$ = Da$
        Da$ = Trim$(Da$)
        If Mid$(Da$, 1, 2) <> "//" Then
              Call 入力DATA処理(WTYPE$, Da1$)
              Else
              Print #5, "/END": Print #5, "/END": Print #5, "/END"
              Close #5
              Exit Do
           End If
        Loop
     
     Close #40
     
     
     
     
     EMS0$ = "土木橋脚 鉄筋材料表 Read": EMS1 = "": EMS2 = ""
     縮尺$ = "": 図基本_Scale = 50
    ZU_Scale = 図基本_Scale
    鉄筋表_項目s = ""
            鉄筋表_項目s = ""
            鉄筋表_集計$ = ""
            原点X = 50:
            原点Y = 520
            表間隔 = 50
            表部材箇所i = 1
      
      
      For ii = 1 To 20: 表_ΣΣ鉄筋重量(ii) = 0: 表_Σ鉄筋重量(ii) = 0
            表_鉄筋W箇所(ii) = 0: 表_鉄筋ΣW箇所(ii) = 0
            表_鉄筋K箇所(ii) = 0: 表_鉄筋ΣK箇所(ii) = 0
            Next ii
     
     Open Temp$ For Input As #40
     
                Call 図_File_名(土木_橋脚_DXF_F名$, Input_F$, Output_F$)
                変換type$ = "Dxf": Data_Type$ = "Ploter": 用紙size$ = "A1"
                
                Call 図_File_Start(Input_F$, 変換type$, Data_Type$, 用紙size$, 図基本_Scale, 橋脚_LAYER_N, 橋脚_layer$())
                現作図_Scale = 図基本_Scale

                For ii = 1 To 橋脚図_基本設定数:    Print #60, "[基本設定:" + 橋脚図_基本設定(ii) + "]":    Next ii
     
                Call 土木_橋脚_枠作図
                鉄筋材料表出力$ = "Y"
            Call 図_原点(原点X, 原点Y)
                
                
             '   Print #60, "[Msize:3]"
                Print #60, "[Msize:" + F9(鉄筋材料表_Msize) + "]"
     
        Do
                If INP$ <> "N" Then Line Input #40, Da$
                INP$ = ""
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
             Select Case 項目s$
             Case "/": 'Exit Do
                         
                         EMS2 = Da$ + "   "
                         
                         If 鉄筋材料表出力$ = "Y" Then Call P_鉄筋材料表: 鉄筋材料表出力$ = ""
                         
                          If 鉄筋表_集計$ <> "" Then Call P_鉄筋表_集計: 鉄筋表_集計$ = ""
                         
                         Select Case UCase(項目2s$)
                         Case "/END": Exit Do
                         Case "/PAGE":
                                     
                                     原点X = 原点X + 鉄筋表_XL / 現作図_Scale + 表間隔: Call 図_原点(原点X, 原点Y)

                                      Call P_鉄筋材料表
                         
                         Case "/鉄筋総重量":
                                    Call P_鉄筋表_Σ集計
                         
                         Case Else:
                         
                                       鉄筋表_項目s = Mid(Da$, 2)
                                       前鉄筋径s = ""
                                       前鉄筋材質s = ""
                                     鉄筋表_現Y = 鉄筋表_現Y - 鉄筋表_Ypit:  '   現在のY座標
                                      Print #60, "[P:" + FD2(5 * 現作図_Scale, 鉄筋表_現Y) + "]\[wl:" + 鉄筋表_項目s + "]"
                                      鉄筋表_集計$ = "Y"
                         
                         End Select
             
             Case "**": er (項目3s): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             
             
             
             Case "原点=":        Call Ddata(",", 項目3s, Ds$(), Di(), ni)
                                  If ni <> 2 Then 世er = " 原点=X0,Y0 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                  原点X = Di(1): 原点Y = Di(2)
                                  Call 図_原点(原点X, 原点Y)
                                  '現作図_Scale = 図基本_Scale
        
             
             Case "表間隔=":        表間隔 = Val(項目3s)
             
             Case "部材箇所=": 表部材箇所i = Val(項目3s)
             
             Case ".":            Call P_鉄筋表(Da$):
                                  If 世er <> "" Then If 世誤CK > 99 Then Stop
                                  INP$ = "N"
             
             
             Case Else: 世er = "鉄筋表 ｺﾏﾝﾄﾞ位置でﾞ(" + Da$ + ")は 理解できません":   If 世誤CK > 99 Then Stop
             End Select
     
             If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     
             Loop

     Close #60: ' Call 図_File_Start で　OPEN
     
     Call UXF_変換(Input_F$, Output_F$): ' Uxf ---> Dxf
     '***2
     
     Close #40
     
     End Sub


Sub P_鉄筋表(Da$)
        ' 加工Type$    標準   帯筋
           加工Type$ = "標準"
     
     '鉄筋表_現Y   現在のY座標
     
     
     'Dim 前鉄筋径s, 前鉄筋材質s
     
     Dim 項目3s As String
     
     鉄筋表_現Y = 鉄筋表_現Y - 鉄筋表_Ypit
     鉄筋1重量 = 0: 鉄筋重量 = 0: 鉄筋摘要$ = "":
     鉄筋材質$ = 前鉄筋材質s
     鉄筋符号$ = Trim(Mid(Da$, 2))
     鉄筋W箇所 = 0: 鉄筋K箇所 = 0
     
     If 鉄筋符号$ = "" Then 前鉄筋符号s = "*": Line Input #40, Da$: Exit Sub
              
              
     EMS2$ = 鉄筋符号$ + "  "
     Y0 = 鉄筋表_現Y
         
              
              Input #40, 鉄筋径$
                   鉄筋単位重量 = FP_橋脚_鉄筋_Data("W", "SD390", 加工Type$, 鉄筋径$) / 1000
     
              Input #40, 鉄筋長さs$: 鉄筋長さ = Val(鉄筋長さs$)
              Input #40, 鉄筋本数s$: 鉄筋本数 = Val(鉄筋本数s$)
     
     
     Do
                If INP$ <> "N" Then Line Input #40, Da$
                INP$ = ""
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s)
        
                 If Mid$(Da$, 1, 1) = "S" Then 項目s$ = "SD"
                 If Mid$(Da$, 1, 1) = "W" Then 項目s$ = "W"
                 If Mid$(Da$, 1, 1) = "K" Then 項目s$ = "K"
             
             Select Case 項目s$
             Case "/": Exit Do
             
             Case "**": er (項目3s): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             Case "原点=":     Exit Do
             Case ".":  Exit Do
             
             Case "$": 鉄筋摘要$ = 項目3s
             
             Case "SD": 鉄筋材質$ = Da$
             
             Case "W": 鉄筋W箇所 = Val(Mid(Da$, 2))
             Case "K": 鉄筋K箇所 = Val(Mid(Da$, 2))
             
             Case Else: 世er = "鉄筋表  鉄筋位置でﾞ(" + Da$ + ")は 理解できません":   If 世誤CK > 99 Then Stop
             End Select
     
             If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     
             Loop
     
             
             
             
             
             鉄筋1重量 = 鉄筋単位重量 * 鉄筋長さ: 鉄筋重量 = 鉄筋1重量 * 鉄筋本数
     
           For XX = 2 To 鉄筋表_XN:  Print #60, "[P:" + FD2(鉄筋表X(XX), Y0 - 鉄筋表_Ypit / 2) + "]\[L:" + FD2(0, 鉄筋表_Ypit) + "]": Next XX
     
     
           '[[[ 鉄筋符号 ]]]
                    X1 = 鉄筋表X(1) + 鉄筋表L(1) / 2
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + 鉄筋符号$ + "]"
     
           '[[[ 鉄筋径 ]]]
                    X1 = 鉄筋表X(2) + 鉄筋表L(2) / 2
                    表示鉄筋径$ = 鉄筋径$
                    If 表示鉄筋径$ = 前鉄筋径s Then 表示鉄筋径$ = "〃"
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + 表示鉄筋径$ + "]"
     
           '[[[ 鉄筋長さ ]]]
                    X1 = 鉄筋表X(3) + 0.7 * 鉄筋表L(3)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + FP_鉄筋F0(鉄筋長さ) + "]"
     
           '[[[ 鉄筋本数 ]]]
                    X1 = 鉄筋表X(4) + 0.7 * 鉄筋表L(4)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + f0(鉄筋本数) + "]"
     
           '[[[ 鉄筋　1重量 ]]]
                    X1 = 鉄筋表X(5) + 0.8 * 鉄筋表L(5)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + FP_鉄筋F3$(鉄筋1重量) + "]"
     
           '[[[ 鉄筋重量 ]]]
                    X1 = 鉄筋表X(6) + 0.8 * 鉄筋表L(6)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + FP_鉄筋F1$(鉄筋重量) + "]"
     
           '[[[ 鉄筋摘要 ]]]
                    X1 = 鉄筋表X(7) + 鉄筋表L(7) / 2
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + 鉄筋摘要$ + "]"
     
           '[[[ 鉄筋材質 ]]]
                    X1 = 鉄筋表X(8) + 鉄筋表L(8) / 2
                    表示鉄筋材質$ = 鉄筋材質$
                    If 表示鉄筋材質$ = 前鉄筋材質s Then 表示鉄筋材質$ = "〃"
                    If 前鉄筋符号s = "*" Then 表示鉄筋材質$ = 鉄筋材質$
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + 表示鉄筋材質$ + "]"
     
           '[[[ 鉄筋W箇所 ]]]
                    X1 = 鉄筋表X(9) + 1 * 現作図_Scale
                    鉄筋W箇所s$ = "(" + f0(鉄筋W箇所) + ")"
                    If 鉄筋W箇所 > 0 Then Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + 鉄筋W箇所s$ + "]"
           
           
           
           Call P_鉄筋重量_集計(鉄筋径$, 鉄筋重量, 鉄筋W箇所)
           
           前鉄筋径s = 鉄筋径$
           前鉄筋材質s = 鉄筋材質$
           前鉄筋符号s = 鉄筋符号$
'#2  #2
    End Sub

Function FP_鉄筋F0$(X):
       FP_鉄筋F0$ = Format$(X, "00")
       End Function

Function FP_鉄筋F1$(X):
       FP_鉄筋F1$ = Format$(X, "0.0")
       End Function
Function FP_鉄筋F3$(X):
       FP_鉄筋F3$ = Format$(X, "0.000")
       End Function

Sub P_鉄筋重量_集計(鉄筋径$, 鉄筋重量, 鉄筋W箇所)

    Select Case UCase(鉄筋径$)
    Case "D10":        表_鉄筋径$(12) = "D10":   表_Σ鉄筋重量(12) = 表_Σ鉄筋重量(12) + 鉄筋重量:  表_鉄筋W箇所(12) = 表_鉄筋W箇所(12) + 鉄筋W箇所
    Case "D13":        表_鉄筋径$(11) = "D13":   表_Σ鉄筋重量(11) = 表_Σ鉄筋重量(11) + 鉄筋重量:  表_鉄筋W箇所(11) = 表_鉄筋W箇所(11) + 鉄筋W箇所
    Case "D16":        表_鉄筋径$(10) = "D16":   表_Σ鉄筋重量(10) = 表_Σ鉄筋重量(10) + 鉄筋重量:  表_鉄筋W箇所(10) = 表_鉄筋W箇所(10) + 鉄筋W箇所
    Case "D19":        表_鉄筋径$(9) = "D19":    表_Σ鉄筋重量(9) = 表_Σ鉄筋重量(9) + 鉄筋重量:  表_鉄筋W箇所(9) = 表_鉄筋W箇所(9) + 鉄筋W箇所
    Case "D22":        表_鉄筋径$(8) = "D22":    表_Σ鉄筋重量(8) = 表_Σ鉄筋重量(8) + 鉄筋重量:  表_鉄筋W箇所(8) = 表_鉄筋W箇所(8) + 鉄筋W箇所
    Case "D25":        表_鉄筋径$(7) = "D25":    表_Σ鉄筋重量(7) = 表_Σ鉄筋重量(7) + 鉄筋重量:  表_鉄筋W箇所(7) = 表_鉄筋W箇所(7) + 鉄筋W箇所
    Case "D29":        表_鉄筋径$(6) = "D29":    表_Σ鉄筋重量(6) = 表_Σ鉄筋重量(6) + 鉄筋重量:  表_鉄筋W箇所(6) = 表_鉄筋W箇所(6) + 鉄筋W箇所
    Case "D32":        表_鉄筋径$(5) = "D32":    表_Σ鉄筋重量(5) = 表_Σ鉄筋重量(5) + 鉄筋重量:  表_鉄筋W箇所(5) = 表_鉄筋W箇所(5) + 鉄筋W箇所
    Case "D35":        表_鉄筋径$(4) = "D35":    表_Σ鉄筋重量(4) = 表_Σ鉄筋重量(4) + 鉄筋重量:  表_鉄筋W箇所(4) = 表_鉄筋W箇所(4) + 鉄筋W箇所
    Case "D38":        表_鉄筋径$(3) = "D38":    表_Σ鉄筋重量(3) = 表_Σ鉄筋重量(3) + 鉄筋重量:  表_鉄筋W箇所(3) = 表_鉄筋W箇所(3) + 鉄筋W箇所
    Case "D41":        表_鉄筋径$(2) = "D41":    表_Σ鉄筋重量(2) = 表_Σ鉄筋重量(2) + 鉄筋重量:  表_鉄筋W箇所(2) = 表_鉄筋W箇所(2) + 鉄筋W箇所
    Case "D51":        表_鉄筋径$(1) = "D51":    表_Σ鉄筋重量(1) = 表_Σ鉄筋重量(1) + 鉄筋重量:  表_鉄筋W箇所(1) = 表_鉄筋W箇所(1) + 鉄筋W箇所
    Case "Φ13":       表_鉄筋径$(15) = "φ13":  表_Σ鉄筋重量(15) = 表_Σ鉄筋重量(15) + 鉄筋重量:  表_鉄筋W箇所(15) = 表_鉄筋W箇所(15) + 鉄筋W箇所
    Case Else: 世er = " 鉄筋径  " + 鉄筋径$ + " がおかしい": If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
    End Select
    
    End Sub

Sub P_鉄筋表_集計()
     Y0 = 鉄筋表_現Y - 3 * 鉄筋表_Ypit
         X1 = 30 * 現作図_Scale
         X2 = 80 * 現作図_Scale: X2B = 82 * 現作図_Scale
         X3 = 90 * 現作図_Scale: X4 = 130 * 現作図_Scale
    If 表部材箇所i > 1 Then X3 = 120 * 現作図_Scale: X4 = 140 * 現作図_Scale
         
         Σ鉄筋重量 = 0: 単位$ = "Kg"
         ΣW箇所 = 0
     For ii = 1 To 20: ΣW箇所 = ΣW箇所 + 表_鉄筋W箇所(ii): Next ii
    
     If ΣW箇所 > 0 Then
         Print #60, "[P:" + FD2(X4 - 40, Y0) + "]\[wl:(ガス圧接)]"
         Y0 = Y0 - 鉄筋表_Ypit
         End If
    
    For ii = 1 To 16
          鉄筋重量 = 表_Σ鉄筋重量(ii)
          If 鉄筋重量 > 0 Then
                 Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + 表_鉄筋径$(ii) + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_鉄筋F1$(鉄筋重量) + "]"
                 If 表部材箇所i > 1 Then
                        表部材箇所s$ = "x " + F9(表部材箇所i) + " = " + f(鉄筋重量 * 表部材箇所i, 9.1)
                        Print #60, "[P:" + FD2(X2B, Y0) + "]\[wl:" + 表部材箇所s$ + "]"
                        End If
                 
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:" + 単位$ + "]"
                 If 表_鉄筋W箇所(ii) > 0 Then
                       鉄筋W箇所s$ = "(" + f0(表_鉄筋W箇所(ii)) + ")"
                       Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + 鉄筋W箇所s$ + "]"
                       End If
                 
                 
                 単位$ = "〃"
                 Σ鉄筋重量 = Σ鉄筋重量 + 鉄筋重量
                Y0 = Y0 - 鉄筋表_Ypit
                End If
          表_ΣΣ鉄筋重量(ii) = 表_ΣΣ鉄筋重量(ii) + 表_Σ鉄筋重量(ii): 表_Σ鉄筋重量(ii) = 0
          表_鉄筋ΣW箇所(ii) = 表_鉄筋ΣW箇所(ii) + 表_鉄筋W箇所(ii): 表_鉄筋W箇所(ii) = 0
          Next ii
    
          Y0 = Y0 - 鉄筋表_Ypit
     Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + 鉄筋表_項目s + "合計" + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_鉄筋F1$(Σ鉄筋重量) + "]"
                 If 表部材箇所i > 1 Then
                        表部材箇所s$ = "x " + F9(表部材箇所i) + " = " + f(Σ鉄筋重量 * 表部材箇所i, 9.1)
                        Print #60, "[P:" + FD2(X2B, Y0) + "]\[wl:" + 表部材箇所s$ + "]"
                        End If
                 
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:Kg]"
     If ΣW箇所 > 0 Then 鉄筋W箇所s$ = "(" + f0(ΣW箇所) + ")":        Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + 鉄筋W箇所s$ + "]"
    
          Y0 = Y0 - 2 * 鉄筋表_Ypit
    鉄筋表_現Y = Y0
    End Sub

Sub P_鉄筋表_Σ集計()
     Y0 = 鉄筋表_現Y - 3 * 鉄筋表_Ypit
         X1 = 30 * 現作図_Scale
         X2 = 80 * 現作図_Scale
         X3 = 90 * 現作図_Scale
         X4 = 130 * 現作図_Scale
         
         Σ鉄筋重量 = 0: 単位$ = "Kg"
         ΣW箇所 = 0
     For ii = 1 To 20: ΣW箇所 = ΣW箇所 + 表_鉄筋ΣW箇所(ii): Next ii
    
     If ΣW箇所 > 0 Then
         Print #60, "[P:" + FD2(X4 - 40, Y0) + "]\[wl:(ガス圧接)]"
         Y0 = Y0 - 鉄筋表_Ypit
         End If
    
    For ii = 1 To 16
          鉄筋重量 = 表_ΣΣ鉄筋重量(ii)
          If 鉄筋重量 > 0 Then
                 Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + 表_鉄筋径$(ii) + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_鉄筋F1$(鉄筋重量) + "]"
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:" + 単位$ + "]"
                 If 表_鉄筋ΣW箇所(ii) > 0 Then
                       鉄筋W箇所s$ = "(" + f0(表_鉄筋ΣW箇所(ii)) + ")"
                       Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + 鉄筋W箇所s$ + "]"
                       End If
                 
                 
                 単位$ = "〃"
                 Σ鉄筋重量 = Σ鉄筋重量 + 鉄筋重量
                Y0 = Y0 - 鉄筋表_Ypit
                End If
          Next ii
    
          Y0 = Y0 - 鉄筋表_Ypit
     Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:鉄筋総重量" + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_鉄筋F1$(Σ鉄筋重量) + "]"
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:Kg]"
     If ΣW箇所 > 0 Then 鉄筋W箇所s$ = "(" + f0(ΣW箇所) + ")":        Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + 鉄筋W箇所s$ + "]"
    
          Y0 = Y0 - 2 * 鉄筋表_Ypit
    鉄筋表_現Y = Y0
    End Sub



Sub P_鉄筋材料表()
    ' 鉄筋表項目s(30), 鉄筋表項目2s(30)
    ' 鉄筋表L(i)  :  X 枠幅
    ' 鉄筋表X(i)  :  X 枠 左位置
    ' 鉄筋表_Ypit, 鉄筋表_YL, 鉄筋表_XL
     鉄筋表_XN = 8: 鉄筋表_YN = 66
     鉄筋表_現Y = 0: '   現在のY座標
    
    '[[[  X  ]]]
           鉄筋表項目s(1) = "符  号":       鉄筋表項目s(2) = "径":      鉄筋表項目s(3) = "長  さ":      鉄筋表項目s(4) = "本  数"
           鉄筋表項目s(5) = "一本当り重量": 鉄筋表項目s(6) = "重  量":  鉄筋表項目s(7) = "適  要":      鉄筋表項目s(8) = "材  質"
           
           鉄筋表項目2s(1) = "":       鉄筋表項目2s(2) = "":      鉄筋表項目2s(3) = "(mm)":      鉄筋表項目2s(4) = ""
           鉄筋表項目2s(5) = "(Kg)": 鉄筋表項目2s(6) = "(Kg)":  鉄筋表項目2s(7) = "":      鉄筋表項目2s(8) = ""
           
           鉄筋表L(1) = 18:    鉄筋表L(2) = 20:    鉄筋表L(3) = 25:    鉄筋表L(4) = 18
           鉄筋表L(5) = 28.5:  鉄筋表L(6) = 25:    鉄筋表L(7) = 21.5:  鉄筋表L(8) = 20
           鉄筋表_XL = 0
            For ii = 1 To 10: 鉄筋表L(ii) = 鉄筋表L(ii) * 現作図_Scale: Next ii
            For ii = 1 To 10: 鉄筋表X(ii) = 鉄筋表_XL: 鉄筋表_XL = 鉄筋表_XL + 鉄筋表L(ii): Next ii
    
    '[[[  Y  ]]]
           鉄筋表_Ypit = 7 * 現作図_Scale
           鉄筋表_YL = 鉄筋表_Ypit
           鉄筋表_現Y = Y0 - 1.5 * 鉄筋表_Ypit: '   現在のY座標
           
           
           
    '[[[  鉄筋表  ]]]
           
           For XX = 2 To 鉄筋表_XN:   Print #60, "[P:" + FD2(鉄筋表X(XX), 0) + "]\[L:" + FD2(0, -2 * 鉄筋表_Ypit) + "]":    Next XX
           For XX = 1 To 鉄筋表_XN:   Print #60, "[P:" + FD2((鉄筋表X(XX) + 鉄筋表X(XX + 1)) / 2, -0.5 * 鉄筋表_Ypit) + "]\[wc:" + 鉄筋表項目s(XX) + "]":  Next XX
           
           For XX = 1 To 鉄筋表_XN: Print #60, "[P:" + FD2((鉄筋表X(XX) + 鉄筋表X(XX + 1)) / 2, -1.5 * 鉄筋表_Ypit) + "]\[wc:" + 鉄筋表項目2s(XX) + "]":  Next XX
           
           Print #60, "[P:" + FD2(0, 0) + "]\[L:" + FD2(鉄筋表_XL, 0) + "]"
           For YY = 1 To 鉄筋表_YN: 鉄筋表_YL = 鉄筋表_YL + 鉄筋表_Ypit
               Print #60, "[P:" + FD2(0, -鉄筋表_YL) + "]\[L:" + FD2(鉄筋表_XL, 0) + "]"
               Next YY
    
           Print #60, "[P:" + FD2(0, 0) + "]\[L:" + FD2(0, -鉄筋表_YL) + "]"
           Print #60, "[P:" + FD2(鉄筋表_XL, 0) + "]\[L:" + FD2(0, -鉄筋表_YL) + "]"
    
    
    
    
    End Sub




