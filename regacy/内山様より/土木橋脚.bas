Attribute VB_Name = "土木橋脚"
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　土木橋脚    　　　　                                      　　　　　　　　　　　  　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　2003.9.19    　　　　　　　　　　　　　　　               　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
'

              
         Public EER1 As Integer

     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の 設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
         
         
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
                 Dim 鉄筋_X$:                       'C Hoop鉄筋 長さ    exp
                 Dim 鉄筋_Y$:                       'C Hoop鉄筋 長さ    exp
                 
                 Dim 鉄筋_XX As Single:             '  VAL(鉄筋_X$)
                 Dim 鉄筋_YY As Single:             '  VAL(鉄筋_Y$)
                 
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
                 
                 Public 鉄筋_Stoper開き1 As Single:     '鉄筋_Stoperの 開き
                 Public 鉄筋_Stoper開き2 As Single:      '鉄筋_Stoperの 開き
         
                 Public 鉄筋_折曲げ As Single:          '鉄筋の 折曲げ長さ
         
         
         '■ 柱筋 Data     Sub P_橋脚_柱_主筋2(Data1$)
         
                 Dim 柱筋段差_段差数 As Integer
                 Dim 柱筋段差_Ddata$(30):            'Data i番目の Data
         
         
                 Dim 柱筋_柱筋種類数 As Integer
                 Dim 柱筋_Ddata$(90):               'Data i番目の Data
                 Dim 柱筋_D柱筋本数(90) As Integer: 'Data i番目の柱筋本数
                 Dim 柱筋_D柱筋番号(90) As Integer: 'Data i番目の柱筋番号
                 Dim 柱筋_柱筋番号(500) As Integer: 'i番目の柱筋番号
                 Dim 柱筋_柱筋Σ数 As Integer:      '全柱筋本数
         
         
         '■ 鉄筋 径本数 Data     Sub 橋脚_鉄筋_径_数_ck(鉄筋_径本数$)
                 Dim 橋脚鉄筋径$(50):               '鉄筋径   exp  D22  D32  φ13
                 Dim 鉄筋径_種別$:                  'SR235
                 Dim 鉄筋数_n As Integer:           '鉄筋数の指定数
                 Dim 鉄筋数_n1 As Integer:          '1番目(X方向鉄筋)の鉄筋数
                 Dim 鉄筋数_n2 As Integer:          '2番目(Y方向鉄筋)の鉄筋数
                 Dim 鉄筋数_n3 As Integer:          '3番目(角ｺｰﾅｰ筋)の鉄筋数
                 Dim 鉄筋数_Σn As Integer:         '全 鉄筋数
        
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
        
        
        
         '■ 鉄筋 配置　Pit Data 2    鉄筋_Pit$        ' Data1$       入力exp   250+32x125 500+28x125
                 Dim 鉄筋P段差_Data数 As Integer:       '段差 Dataの個数
                 Dim 鉄筋P段差_Data$(30):      'P段差 i番目の位置のData
         
         
         '■ 鉄筋 配置　Pit Data     鉄筋_Pit$
                 Dim 鉄筋P_Data数 As Integer:       'Dataの個数
                 Dim 鉄筋P_頭符号$:                 ' ""  OR  "±"
                 Dim 鉄筋P_Data$(200):              'i番目のﾋﾟｯﾁのData
                 Dim 鉄筋P_n(200) As Integer:       'i番目のﾋﾟｯﾁの個数
                 Dim 鉄筋P_p(200) As Single:        'i番目のﾋﾟｯﾁ mm
                 Dim 鉄筋P_L(200) As Single:
                 Dim 鉄筋P_ΣL As Single:           '全 Data_Pit の合計
                 Dim 鉄筋P_Σ数 As Integer:         'Pit(部品)のΣ部品個数
                 Dim 鉄筋P_位置(3000) As Single:    '部品の Startからの位置  ii=1 To Σ部品個数
       
       
       
         '■ 鉄筋加工図 Data      Sub 橋脚_鉄筋_L_ck(鉄筋_L$)
                 
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
    
           
           
         '■ Stoper位置
                 
                 Dim StoperKind数 As Integer:       'StoperKind数
                 Dim Stoper位置_Data数 As Integer:  'Dataの個数
                 Dim Stoper終点側位置数i As Integer:  'Stoper終点側位置数
                 Dim Stoper起点側位置数i As Integer:  'Stoper起点側位置数
                 Dim Stoper終点側_Y As Single:      'Stoper終点側のY座標
                 Dim Stoper起点側_Y As Single:      'Stoper起点側のY座標
                 
                 Dim Stoper位置_Data$(100):         'i番目のData
                 Dim Stoper位置_X(100) As Single:   'i番目のDataのX座標
                 Dim Stoper位置_Y(100) As Single:   'i番目のDataのY座標
                 Dim Stoper位置_No(100) As Integer: 'i番目のDataのStoperno
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
    
                 Dim Stoper位置_終点Xpit(30) As Single:  'ｽﾄｯﾊﾟのX方向 Pit 左端から  ｽﾄｯﾊﾟのX方向個数
                 Dim Stoper位置_起点Xpit(30) As Single:  'ｽﾄｯﾊﾟのX方向 Pit 左端から  ｽﾄｯﾊﾟのX方向個数
                 Dim Stoper位置_Ypit(10) As Single:  'ｽﾄｯﾊﾟのY方向 Pit 左端から  ｽﾄｯﾊﾟのY方向個数
         
         
         '■ 沓座位置
                 Dim 沓座Kind数 As Integer:         '沓座Kind数
                 Dim 沓座位置_Data数 As Integer:    'Dataの個数
                 Dim 沓座終点側位置数i As Integer:  '沓座終点側位置数
                 Dim 沓座起点側位置数i As Integer:  '沓座起点側位置数
                 Dim 沓座終点側_Y As Single:        '沓座終点側のY座標
                 Dim 沓座起点側_Y As Single:        '沓座起点側のY座標
                 
                 
                 Dim 沓座位置_Data$(100):           'i番目のData
                 Dim 沓座位置_X(100) As Single:     'i番目のDataのX座標
                 Dim 沓座位置_Y(100) As Single:     'i番目のDataのY座標
                 Dim 沓座位置_No(100) As Integer:   'i番目のDataの沓座no
       
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
       Public 沓座_No_Max As Integer, Stoper_No_Max As Integer, 梁_No_Max As Integer
       Public 杭符号$(200), 基礎符号$(200), 柱符号$(200), Stoper符号$(200), 沓座符号$(200), 梁符号$(200)
       
       
       Type 土木_橋脚_杭_Data:       '.杭
                ' 原点   基礎下場,杭中心
                符号 As String * 200:      '符号=杭1
                No As Integer:             '   1  2  3
                Da_D As String * 200:         'D=1500
                Da_L As String * 200:         'L=14500
                
                '[[[ ｽﾍﾟｰｻｰ ]]]
                Speser種数 As Integer
                Speser1 As String * 200:    'S1=18-φ13-SR235 n6 L50+190+50 H70 @500+5000+5000+4000  'ｽﾍﾟｰｻｰ箇所=6
                Speser2 As String * 200:    'S2=  予備
                Speser3 As String * 200:    'S3=  予備

                '[[[ 主筋 ]]]
                K種数 As Integer
                K1 As String * 200:        'K1=24-D32 K156 A1220 L11000+J2000+6620                                          '主筋   K1     A:定着   P:位置
                K2 As String * 200:        'K2=24-D32-D25 A1220 K156 L11000+J2000+6620     　                               '主筋   K2    主筋径が異なる場合
                K3 As String * 200:        '主筋   K2 予備
                ΣK鉄筋本数 As Integer
                

               ' KH1 As String * 200:       '**K01=7-D25 @500+4x2500+2x1950 L3911+290 D1245                                    '組立筋 K01
                KH2 As String * 200:       'K02=8-D25 L837                                                                  '杭底の鉄筋  2□
               ' KH3 As String * 200:       '**K03=53-D22 @-1100+3x200+4x125+3x125+250+18x125+200+18x125 L3902+260 D1242       '第1 ﾌｰﾌﾟ
               ' KH4 As String * 200:       '**K04=52-D19 @6150+11x150+300+15x150+300+11x150+200+11x150 L3892+230 D1239        '第2 ﾌｰﾌﾟ
               ' KH5 As String * 200:       '第3 ﾌｰﾌﾟ　予備
                
                Hoop種数 As Integer:         ' ﾌｰﾌﾟの種類数
                Hoop1 As String * 200:     'HOOP=Z-1100_D22_D1242_@3x200+4x125+48x125     'ｽﾀｰﾄ位置_ﾌｰﾌﾟ鉄筋_直径_ﾋﾟｯﾁ
                Hoop2 As String * 200
                Hoop3 As String * 200
                
                Hoop1数 As Integer
                Hoop2数 As Integer
                Hoop3数 As Integer
                
                組立筋 As String * 200:    ' 組立筋 = D25_D1245_12_32_52_69_86_99_112             '  組立鉄筋_直径_位置_位置_位置        位置(何番目)
                
                組立筋数 As Integer
                
                End Type
                Public 土木橋脚_杭 As 土木_橋脚_杭_Data

       Type 土木_橋脚_基礎_Data:    ' .基礎
                ' 原点   基礎下場,基礎中心
                符号 As String * 200:      '符号=F1
                No As Integer:             '   1  2  3
                
                Da_BX As String * 200:        'BX=5250+5250          BX=10500
                       BX As Single:           ' BX=BXL+BXR
                       BXL As Single
                       BXR As Single
               
                Da_BY As String * 200:        'BY=3650+3200+3650
                       BY As Single:           ' BY=BYL+BYR
                       BYL As Single
                       BYR As Single
                       BYL_端 As Single:       ' 端部
                       BYL_柱 As Single:       ' 柱側
                       BYR_端 As Single:       ' 端部
                       BYR_柱 As Single:       ' 柱側
                
                Da_H As String * 200:         'H=2500+500
                       H As Single:           'H=HU+H_D
                       H_U As Single
                       H_D As Single
               
                捨con As String * 200:
                捨con_t As Single
               
               
               'ｾﾝﾀｰからの距離
                杭位置 As String * 500:    '杭位置
                                           '     -3750,3750     0,3750     3750,3750,P2
                                           '     -3750,0                   3750,0
                                           '     -3750,-3750    0,-3750    3750,-3750


              '[[[  Y方向 鉄筋 ]]]
                FY1 As String * 200:       'F1=83-D32 P95 @155+40x125+40x125+155 LF+10014+F                                'Y 底鉄筋      P:位置    P横:は計算
                FY2 As String * 200:       'F2=83-D32 P95 @155+40x125+40x125+155 L2328+3612+(1092+W+2092)+3612+2328        'Y 上鉄筋
                FY3 As String * 200:       'F3=10-D19 @200+9x200 L190+10361+190                                            'Y 側鉄筋
                FY4 As String * 200:       ' 予備

              '[[[  X方向 鉄筋 ]]]
                FX1 As String * 200:       'F11=83-D32 P127 @125+80x125+126 LF+10014+F                                     'X 底鉄筋
                FX2 As String * 200:       'F12=25-D32 P127 @24x125 L2746+(5655+W+4655)+2746                               'X 上鉄筋
                FX3 As String * 200:       'F13=58-D32 P127 @125+80x125+125 L2746～2246+(5655+W+4655)+2746～2246           'X 上鉄筋 中
                FX4 As String * 200:       'F14=18-D19 @300+8x200 L190+10361+190                                           'X 側鉄筋 外

              '[[[  縦方向 鉄筋 ]]]
                FH1 As String * 200:       'f1=48-D19 @  LF-2804+801+2804+F                                         ' *** 縦鉄筋 1      ? P?  @?
                FH2 As String * 200:       'f2=266-D10 @  LF+2804～2304+801+2804～2304+F                            ' *** 縦鉄筋 2      ?
                FH3 As String * 200:       ' 予備

                fpit As String * 200:      ' fpit    縦鉄筋の位置の定義
                                           ' X  基礎X左端からのL + Y方向鉄筋ﾋﾟｯﾁ + 間隔1 + 間隔2 + 間隔3   (間隔3は 間隔1の終端からの戻り)
                                           ' Y  基礎Y左端からのL + X方向鉄筋ﾋﾟｯﾁ + 間隔1
                                           ' exp    fpit=X375+125+6+2+2_Y250+125+2

                End Type
                Public 土木橋脚_基礎 As 土木_橋脚_基礎_Data

       
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
                CHoop_dt As Single
                CHoop_r As Single


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
                H1 As String * 200:       'H1=10-D19     L720+419+720    @109+4x100+5x200
                H2 As String * 200:       'H2=10-D16     L1200+150+1200  @109+4x100+5x200
                H3 As String * 200:       'H3=4+2+3-D16  L1400
                End Type
                Public 土木橋脚_Stoper As 土木_橋脚_Stoper_Data

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
                       H1 As Single:           ' H1=0 傾きなし
                       H2 As Single:           ' 先端　H
                
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

                
                '[[[ ﾙｰﾌﾟ主筋  ]]]
                BR種数 As Integer:         ' ﾙｰﾌﾟ主筋の種類数
                BR1 As String * 200:        'B1-1=$ﾙｰﾌﾟ筋 6+6-D32 P±672 @126+2x80 Lr340+564+r340+(3784+J960+5744)+r340+564+r340+(3784+J960+5744)      ' ﾙｰﾌﾟ鉄筋(主筋) 1  P:位置  ｽﾄｯﾊﾟｰの中心からﾙｰﾌﾟ鉄筋中心
                BR2 As String * 200:
                BR3 As String * 200:
                BR4 As String * 200:

                '[[[ 上鉄筋  ]]]
                BU1 As String * 200:        'B2-1=$上鉄筋 2+2-D16 P±922.6+180.7 @118 LF+8900+F                                                        '(B6)  上鉄筋 (主筋の隙間)
                BU2 As String * 200:

                '[[[ 下鉄筋(あご部分)  ]]]
                BD1 As String * 200:        'B3-1=12+12-D25 P98 @±200+4x250+164 L3750+r150[236]+1225                                                  ' 下鉄筋(あご部分)   L-R
                BD2 As String * 200:        '予備

                '[[[ 側鉄筋  ]]]
                B側1 As String * 200:       'B4-1=9+9-D25 @98+8x150 L2880+r270+2289+r270+2880                                                          '(B4) 側鉄筋 1
                B側2 As String * 200:       '予備


                '[[[ ｽﾀｰﾗｯﾌﾟ  ]]]
                BSpit As String * 200
                BS1 As String * 200:        'B01=$下鉄筋 28+28-D22 @±2300+13x150 LF+2132～1335+r160+1458+2292～1495+F                                 ' St  下鉄筋
                BS2 As String * 200:        'B02=$上鉄筋 22+22-D22 @±2300+150+600+8x150 LF+440+1618+440+F                                             ' St  上鉄筋
                BS3 As String * 200:        'B03=$ｽﾄｯﾊﾟ外筋 3+3+3+3-D22 @±2600+2x150 LF+440+448+440+F                                                 ' St  上鉄筋 ｽﾄｯﾊﾟｰ部分 外側
                
                
                End Type
                Public 土木橋脚_梁 As 土木_橋脚_梁_Data

       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の 図面出力設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
       
        Public Dxf_No As Integer
        
        Public 土木_橋脚_DXF_F名$, 土木_橋脚_図面名$, 土木_橋脚_縮尺$, 土木_橋脚_図番号$
       
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
        
                 Public 橋脚_J鉄筋開き As Single:   ' 1mm   鉄筋の接合部作図の 鉄筋と鉄筋 のすき間
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
                 Public 表示位置_XPit As Single, 表示位置_Ypit As Single, 表示位置_Zpit As Single
                 Public 表示位置_X(500) As Single, 表示位置_Y(500) As Single, 表示位置_Z(500) As Single

       
       
       
       
     '┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
     '┃　土木橋脚　の 鉄筋表 出力設定
     '┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
       
                Public 鉄筋表項目$(30), 鉄筋表項目2$(30), 鉄筋表L(30) As Single, 鉄筋表X(30) As Single
                Public 鉄筋表_XN As Integer, 鉄筋表_YN As Integer
                Public 鉄筋表_Ypit As Single, 鉄筋表_YL As Single, 鉄筋表_XL As Single
       
                Public 鉄筋表_現Y As Single:       '   現在のY座標
 
                Public 鉄筋材料表_Msize As Single
                Public 鉄筋表_項目$
                Public 表部材箇所 As Single
                
                Public 前鉄筋符号$, 前鉄筋径$, 前前鉄筋径$, 前鉄筋材質$
       
                Public 表_鉄筋径$(30), 表_Σ鉄筋重量(30) As Single, 表_ΣΣ鉄筋重量(30) As Single
                Public 表_鉄筋W箇所(30) As Integer, 表_鉄筋ΣW箇所(30) As Integer
                Public 表_鉄筋K箇所(30) As Integer, 表_鉄筋ΣK箇所(30) As Integer
       
       
                Dim 表符号$, 表鉄筋径$
                Dim 表鉄筋L As Single, 表鉄筋本数 As Single, 表鉄筋重量 As Single, 表鉄筋Σ重量 As Single
                Dim 表鉄筋適用$, 表鉄筋材質$, 表鉄筋W箇所 As Integer, 表鉄筋K箇所 As Integer
       
       
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
    
        
        世er = ""
         EER1 = 100: ' *2002.11.23
        現Stoper_No = 1
        '**************
  ' 世誤CK = 200: er ("世誤CK = 200")
    Close
        
        寸法表示基準L = 200 '150 'mm
        StoperKind数 = 0: Stoper終点側位置数i = 0: Stoper起点側位置数i = 0
        
        沓座Kind数 = 0: 沓座終点側位置数i = 0: 沓座起点側位置数i = 0
    
     Temp$ = TEMP_Data_dsk + "DATA1.TMP"
     

     WTYPE$ = "D"

     Open F_Name$ For Input As #1
     
     Open Temp$ For Output As #5
     
     
     Do: If EOF(1) Then Da$ = "//END" Else Line Input #1, Da$
        Da1$ = Da$
        Da$ = Trim$(Da$)
        If Mid$(Da$, 1, 2) <> "//" Then
              Call 入力DATA処理(WTYPE$, Da1$)
              Else
              Print #5, "/END": Print #5, "/END": Print #5, "/END"
              Close #5
           
           
           
           EMS0 = CTYPE$ + "  ": EMS1 = "": EMS2 = ""
           Select Case UCase$(CTYPE$)
                  Case "":  ' 初め
                  
                  
                  Case "//橋脚DATA":              Call 土木_橋脚_Data_Read(Temp$)
                  Case "//橋脚図":                Call 土木_橋脚_図Data_Read(Temp$)
                  
                  Case "//鉄筋材料表作成":            Call 土木_橋脚_鉄筋材料表_Write(Temp$)
                  
                  
                  Case "//鉄筋材料表":            Call 土木_橋脚_鉄筋材料表_Read(Temp$)
                 
                 
                  
                  Case "//END": Exit Do
                  Case Else: er ("出力項目  [" + CTYPE$ + "] は無い   "): If 世誤CK > 99 Then Stop: 'Else 世er = "*": Exit Sub
                        
             End Select
             

           '************************************************************
           If 世er <> "" Then er ("** Err のため 以後の処理を中断します  "): 世er = "": Exit Do
           '************************************************************
           
           CTYPE$ = Da$:   連続data$ = ""
                     CTYPE$ = 文字変換$(CTYPE$, "　", "  "): ' 漢字ﾌﾞﾗﾝｸを置きかえる
                     ni = InStr(CTYPE$, " "): If ni > 1 Then CTYPE$ = Mid(CTYPE$, 1, ni - 1): 連続data$ = Trim(Mid(Da$, ni + 1))
                     If Mid$(連続data$, 1, 1) = "'" Then 連続data$ = ""
                     If 連続data$ <> "" Then er (Da$ + " 計算項目の後に ﾃﾞｰﾀｰがある"): If 世誤CK > 99 Then Stop
           
           
           Open Temp$ For Output As #5

          End If
        
             Loop
   
   
   
           '  Close #40
        Close #1
   
    ' Call OUT_ProgressBar(1, "")
   
       
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
     
     
    ' 世誤CK = 200

     EMS0 = "土木橋脚 Data Read": EMS1 = "": EMS2 = ""
       
     Call 橋脚_初期値
       
     Open 読込Data$ For Input As #2
       
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
     
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case UCase$(項目2s$)
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/END": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        
        Case ".杭":                Call Read_橋脚_杭(Da$):    INP$ = "N"
        Case ".基礎":              Call Read_橋脚_基礎(Da$):  INP$ = "N"
        Case ".柱":                Call Read_橋脚_柱(Da$):    INP$ = "N"
        Case ".沓座", ".踏座":     Call Read_橋脚_沓座(Da$):  INP$ = "N"
        Case ".ｽﾄｯﾊﾟ", ".ｽﾄｯﾊﾟｰ":  Call Read_橋脚_Stoper(Da$): INP$ = "N"
        Case ".梁":                Call Read_橋脚_梁(Da$):    INP$ = "N"
     
        Case Else: 世er = "ｺﾏﾝﾄﾞ位置で (" + Da$ + ") は 理解できません"
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
     Loop
    
     Close #2
    
     End Sub
 
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　                        　　　  　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　             　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛




Private Sub Read_橋脚_杭(Da$)
     
     杭_No_Max = 杭_No_Max + 1: 杭_Na$ = "杭" + F9(杭_No_Max)
     EMS1 = "Data Read 杭 [No=" + F9(杭_No_Max) + "]": EMS2 = ""

 
     
     
     With 土木橋脚_杭
                  .No = 杭_No_Max
                  .符号 = "": .Da_D = "": .Da_L = ""
                  .Speser種数 = 0: .Speser1 = "": .Speser2 = "": .Speser3 = ""
                  .K種数 = 0: .K1 = "": .K2 = "": .K3 = ""
                  .ΣK鉄筋本数 = 0
                  .KH2 = ""
     
                  .Hoop種数 = 0:      .Hoop1 = "": .Hoop2 = "": .Hoop3 = "":
                  .Hoop1数 = 0: .Hoop2数 = 0: .Hoop3数 = 0:
                  .組立筋 = ""
                  .組立筋数 = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS3 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       杭_Na$ = Trim(項目3s$)
        Case "D=":         .Da_D = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
        Case "L=":         .Da_L = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
        Case "S=":    .Speser種数 = .Speser種数 + 1: Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
                            Select Case .Speser種数
                            Case 1: .Speser1 = 項目3s$
                            Case 2: .Speser2 = 項目3s$
                            Case 3: .Speser3 = 項目3s$
                            Case Else: 世er = " (" + Da$ + ")  ｽﾍﾟｰｻｰ の種類が多すぎます": If 世誤CK > 99 Then er (""): Stop

                            End Select
        
        Case "K=":    .K種数 = .K種数 + 1: Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
                            .ΣK鉄筋本数 = .ΣK鉄筋本数 + 鉄筋数_Σn
                            Select Case .K種数
                            Case 1: .K1 = 項目3s$
                            Case 2: .K2 = 項目3s$
                            Case 3: .K3 = 項目3s$
                            Case Else: 世er = " (" + Da$ + ")  主筋の種類が多すぎます": If 世誤CK > 99 Then er (""): Stop
                            End Select
        
        Case "HOOP底=":       .KH2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "HOOP=":    .Hoop種数 = .Hoop種数 + 1:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
                           Select Case .Hoop種数
                           Case 1: .Hoop1 = 項目3s$
                           Case 2: .Hoop2 = 項目3s$
                           Case 3: .Hoop3 = 項目3s$
                           Case Else: 世er = " (" + Da$ + ")  Hoop の種類が多すぎます": If 世誤CK > 99 Then er (""): Stop
                           End Select
        
        
        Case "組立筋=":     .組立筋 = 項目3s$: D1$ = 項目3s$: ni = InStr(6, D1$, " "): D1$ = Mid(D1$, 1, ni - 1)
                            Call 橋脚_鉄筋_ck(項目s$, D1$)
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub

        Loop
     
        For ii = 1 To 杭_No_Max: If 杭符号$(ii) = 杭_Na$ Then 世er = "杭符号 (" + 杭_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        杭符号$(杭_No_Max) = 杭_Na$:     .符号 = 杭_Na$
     
     End With
     
   
     Call 橋脚_杭_Put(杭_No_Max)
     End Sub


Private Sub Read_橋脚_基礎(Da$)
     
     基礎_No_Max = 基礎_No_Max + 1: 基礎_Na$ = "基礎" + F9(基礎_No_Max)
     EMS1 = "Data Read 基礎 [No=" + F9(基礎_No_Max) + "]": EMS2 = ""

 
     With 土木橋脚_基礎
                  .No = 基礎_No_Max
                  .符号 = "": .Da_BX = "": .Da_BY = "": .Da_H = "": .杭位置 = ""
                  .FY1 = "": .FY2 = "": .FY3 = "": .FY4 = "":
                  .FX1 = "": .FX2 = "": .FX3 = "": .FX4 = "":
                  .FH1 = "": .FH2 = "": .FH3 = "": .fpit = ""
     
                  .BX = 0: .BXL = 0: .BXR = 0
                  .BY = 0: .BYL = 0: .BYR = 0: .BYL_端 = 0: .BYL_柱 = 0: .BYR_端 = 0: .BYR_柱 = 0
                  .H = 0: .H_D = 0: .H_U = 0
                  .捨con = "": .捨con_t = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS3 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       基礎_Na$ = Trim(項目3s$)
        Case "BX=":        .Da_BX = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                          Select Case 躯体_Data数
                          Case 1:   .BX = 躯体_D(1): .BXL = .BX / 2: .BXR = .BX / 2
                          Case 2:   .BXL = 躯体_D(1): .BXR = 躯体_D(2): .BX = .BXL + .BXR
                          Case Else: 世er = " (" + Da$ + ") は ﾃﾞｰﾀｰの個数があわない": If 世誤CK > 99 Then er (""): Stop
                          End Select
        
        Case "BY=":        .Da_BY = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                          Select Case 躯体_Data数
                          Case 1:   .BY = 躯体_D(1): .BYL = .BY / 2: .BYR = .BY / 2
                          Case 2:   .BYL = 躯体_D(1): .BYR = 躯体_D(2): .BY = .BYL + .BYR
                          Case 3:   .BYL_端 = 躯体_D(1): .BYL_柱 = 躯体_D(2) / 2: .BYR_柱 = 躯体_D(2) / 2: .BYR_端 = 躯体_D(3):
                                    .BYL = .BYL_端 + .BYL_柱: .BYR = .BYR_端 + .BYR_柱: .BY = .BYL + .BYR
                          Case 4:   .BYL_端 = 躯体_D(1): .BYL_柱 = 躯体_D(2): .BYR_柱 = 躯体_D(3): .BYR_端 = 躯体_D(4):
                                    .BYL = .BYL_端 + .BYL_柱: .BYR = .BYR_端 + .BYR_柱: .BY = .BYL + .BYR
                          Case Else: 世er = " (" + Da$ + ") は ﾃﾞｰﾀｰの個数があわない": If 世誤CK > 99 Then er (""): Stop
                          End Select
        
        
        
        Case "H=":         .Da_H = 項目3s$:         Call 橋脚_躯体_ck(項目s$, 項目3s$)
                          Select Case 躯体_Data数
                          Case 1:   .H = 躯体_D(1): .H_D = .H: .H_U = 0
                          Case 2:   .H_D = 躯体_D(1): .H_U = 躯体_D(2): .H = .H_D + .H_U
                          Case Else: 世er = " (" + Da$ + ") は ﾃﾞｰﾀｰの個数があわない": If 世誤CK > 99 Then er (""): Stop
                          End Select
        
       Case "捨ｺﾝ=":      .捨con = 項目3s$:          Call 橋脚_躯体_ck(項目s$, 項目3s$)
                          .捨con_t = 躯体_D(1)
        
        Case "杭位置":    D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          .杭位置 = D1$: Call 橋脚_杭位置_ck(D1$)
                          INP$ = "N"
        Case "F1=":        .FY1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "F2=":        .FY2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "F3=":        .FY3 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "F11=":       .FX1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "F12=":       .FX2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "F13=":       .FX3 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "F14=":       .FX4 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "f1=":        .FH1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "f2=":        .FH2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "fpit=":      .fpit = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To 基礎_No_Max: If 基礎符号$(ii) = 基礎_Na$ Then 世er = "基礎符号 (" + 基礎_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop
               Next ii
        基礎符号$(基礎_No_Max) = 基礎_Na$:    .符号 = 基礎_Na$
     End With
     
     Call 橋脚_基礎_Put(基礎_No_Max)
     End Sub

Private Sub Read_橋脚_柱(Da$)
     
     柱_No_Max = 柱_No_Max + 1: 柱_Na$ = "柱" + F9(柱_No_Max)
     EMS1 = "Data Read  柱 [No=" + F9(柱_No_Max) + "]  ": EMS2 = ""

 
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
                  .Choop_鉄筋 = "": .CH1 = "": .CHoop_dt = 0:   .CHoop_r = 0

                  .CHX1 = "": .CX_1_Hoop_Jtype = "B":
                  .CHX2 = "": .CX_2_Hoop_Jtype = "B":
                  
                  .CHY1 = "": .CY_1_Hoop_Jtype = "R":
                  .CHY2 = "": .CY_2_Hoop_Jtype = "R":
                  .CHY3 = "": .CY_3_Hoop_Jtype = "R":
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS3 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       柱_Na$ = Trim(項目3s$)
        Case "BX=":        .Da_BX = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                           .BXL = 躯体_D(1): .BXR = 躯体_D(2): If 躯体_Data数 = 1 Then .BXL = 躯体_D(1) / 2: .BXR = .BXL
                           .BX = .BXL + .BXR
        
        Case "BY=":        .Da_BY = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                           .BYL = 躯体_D(1): .BYR = 躯体_D(2): If 躯体_Data数 = 1 Then .BYL = 躯体_D(1) / 2: .BYR = .BYL
                           .BY = .BYL + .BYR
        
        Case "H=":         .Da_H = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                           .H = 躯体_D(1):
        
        Case "r=":         .Da_r = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                           .r = 躯体_D(1)
        
        Case "C=":    .C種数 = .C種数 + 1: Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
                            Select Case .C種数
                            Case 1: .C1 = 項目3s$
                            Case 2: .C2 = 項目3s$
                            Case 3: .C3 = 項目3s$
                            Case 4: .C4 = 項目3s$
                            Case 5: .C5 = 項目3s$
                            Case 6: .C6 = 項目3s$
                            Case Else: 世er = " (" + Da$ + ")  主筋の種類が多すぎます": If 世誤CK > 99 Then er (""): Stop
                            End Select
        
        Case "Xpit=":       Call 橋脚_鉄筋_Pit_ck2(項目3s$)
                           .CXpit段数 = 鉄筋P段差_Data数: .CXpit1 = 鉄筋P段差_Data$(1): .CXpit2 = 鉄筋P段差_Data$(2)
        
        Case "Ypit=":       Call 橋脚_鉄筋_Pit_ck2(項目3s$)
                           .CYpit段数 = 鉄筋P段差_Data数: .CYpit1 = 鉄筋P段差_Data$(1): .CYpit2 = 鉄筋P段差_Data$(2)
        
        Case "X主筋=":      Call P_橋脚_柱_主筋2(項目3s$)
                           .CX主筋段数 = 柱筋段差_段差数: .CX主筋1 = 柱筋段差_Ddata$(1): .CX主筋2 = 柱筋段差_Ddata$(2)
        
        Case "Y主筋=":      Call P_橋脚_柱_主筋2(項目3s$)
                           .CY主筋段数 = 柱筋段差_段差数: .CY主筋1 = 柱筋段差_Ddata$(1): .CY主筋2 = 柱筋段差_Ddata$(2)
        
        Case "角主筋=":      Call P_橋脚_柱_主筋2(項目3s$)
                            .C角主筋 = 柱筋段差_Ddata$(1)
        
        Case "角主筋XY=":    Call Ddata(" ", 項目3s$, Ds$(), Di(), ni)
                            .C角主筋X = Di(1): .C角主筋Y = Di(2)
        
                            If ni <> 2 Then 世er = "角主筋XY (" + Da$ + ")  Dataがおかしい": If 世誤CK > 99 Then er (""): Stop

        Case "CK=":         'C5 ---> CK は 柱梁のｺｰﾅｰ筋 です
                            .CK = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "c1=":         'c1 は 外周ﾌｰﾌﾟ です
                            .CH1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
                            .Choop_鉄筋 = 橋脚鉄筋径$(1):   .CHoop_r = FP_橋脚_鉄筋_Data("r1", .Choop_鉄筋)
                            .CHoop_dt = 鉄筋_SK位置: If 鉄筋_r <> 0 Then .CHoop_r = 鉄筋_r
        
        Case "c2=":         'c2 は X方向 内側ﾌｰﾌﾟ
                            .CHX1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "c2-2=":         'c2 は X方向 内側ﾌｰﾌﾟ  2
                            .CHX2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "c3=":         'c3 は Y方向 内側ﾌｰﾌﾟ
                            .CHY1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "c3-2=":         'c3 は Y方向 内側ﾌｰﾌﾟ  2
                            .CHY2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "c3-3=":         'c3 は Y方向 内側ﾌｰﾌﾟ  3
                            .CHY3 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To 柱_No_Max: If 柱符号$(ii) = 柱_Na$ Then 世er = "柱符号 (" + 柱_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        柱符号$(柱_No_Max) = 柱_Na$:     .符号 = 柱_Na$
     End With
     
     Call 橋脚_柱_Put(柱_No_Max)
     
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
     ' 柱筋_柱筋番号(i)        i番目の柱筋番号
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
           
           柱筋_D柱筋本数(ii) = 柱筋本数
           柱筋_D柱筋番号(ii) = 柱筋番号
           柱筋_柱筋Σ数 = 柱筋_柱筋Σ数 + 柱筋本数
           Next ii
     ii = 0: KK = 0
     Do: ii = ii + 1: KK = KK + 1
          柱筋番号 = 柱筋_D柱筋番号(KK)
          If KK >= 柱筋_柱筋種類数 Then KK = 0
          
          柱筋_柱筋番号(ii) = 柱筋番号
          If ii >= 柱筋_柱筋Σ数 Then Exit Do
          Loop
     End Sub



Private Sub Read_橋脚_Stoper(Da$)
     Stoper_No_Max = Stoper_No_Max + 1: Stoper_Na$ = "ｽﾄｯﾊﾟ" + F9(Stoper_No_Max)
     EMS1 = "Data Read  ｽﾄｯﾊﾟｰ [No=" + F9(Speser_No) + "]  ": EMS2 = ""

 
     StoperKind数 = StoperKind数 + 1
     Stoper_Na$ = ""
     With 土木橋脚_Stoper
                  .No = Stoper_No_Max
                  .符号 = "": .箱抜 = "": .被り = "": .H1 = "": .H2 = "": .H3 = ""
                  .BX = 0: .BY = 0: .H = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS3 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       Stoper_Na$ = Trim(項目3s$)
        Case "箱抜=":       .箱抜 = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .BX = 躯体_D(1): .BY = 躯体_D(2): .H = 躯体_D(3)
                      .Typei = 1: If .BX <= 0 Then .Typei = 2
                        
        Case "被ﾘ=", "被り=":     .被り = 項目3s$:        Call 橋脚_被り_ck(項目s$, 項目3s$)
        Case "H1=":        .H1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "H2=":        .H2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "H3=":        .H3 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""):  If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        If Stoper_Na$ = "" Then 世er = "ｽﾄｯﾊﾟ符号 が入力されていません": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
        For ii = 1 To Stoper_No_Max: If Stoper符号$(ii) = Stoper_Na$ Then 世er = "ｽﾄｯﾊﾟ符号 (" + Stoper_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        Stoper符号$(Stoper_No_Max) = Stoper_Na$:     .符号 = Stoper_Na$
     End With
     
     Call 橋脚_Stoper_Put(Stoper_No_Max)
     
     End Sub

Private Sub Read_橋脚_沓座(Da$)
     
     沓座_No_Max = 沓座_No_Max + 1: 沓座_Na$ = "沓座" + F9(沓座_No_Max)
     EMS1 = "Data Read  沓座 [No=" + F9(沓座_No_Max) + "]  ": EMS2 = ""

 
     沓座Kind数 = 沓座Kind数 + 1
     沓座_Na$ = ""
     With 土木橋脚_沓座
                  .No = 沓座_No_Max
                  .符号 = "": .Gomsyu = "": .BD = "": .被り = "": .S1 = "": .S2 = ""
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS3 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       沓座_Na$ = Trim(項目3s$)
      '  Case "ｺﾞﾑｼｭｳ=":     .Gomsyu = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
        Case "BD=":         .BD = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
        Case "被ﾘ=", "被り=":     .被り = 項目3s$:        Call 橋脚_被り_ck(項目s$, 項目3s$)
        Case "S1=":        .S1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "S2=":        .S2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""):  If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        If 沓座_Na$ = "" Then 世er = "沓座符号 の入力が無い": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
        
        For ii = 1 To 沓座_No_Max: If 沓座符号$(ii) = 沓座_Na$ Then 世er = "沓座符号 (" + 沓座_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        沓座符号$(沓座_No_Max) = 沓座_Na$:     .符号 = 沓座_Na$
     End With
     
     Call 橋脚_沓座_Put(沓座_No_Max)
     
     End Sub

Private Sub Read_橋脚_梁(Da$)
   '***
     梁_No_Max = 梁_No_Max + 1: 梁_Na$ = "梁" + F9(梁_No_Max)
     EMS1 = "Data Read  梁 [No=" + F9(梁_No_Max) + "]  ": EMS2 = ""
 
     With 土木橋脚_梁
                  .No = 梁_No_Max
                  .符号 = "": .Da_BX = "": .Da_BY = "": .Da_勾配 = ""
                  .Da_r = "": .Da_r2 = "": .Da_H = ""
                  .BX = 0: .BXL = 0: .BXR = 0:  .BXL2 = 0: .BXR2 = 0
                  .BY = 0: .BYL = 0: .BYR = 0:  .BYL2 = 0: .BYR2 = 0
                  .H = 0: .H1 = 0: .H2 = 0
                  .r = 0: .r2 = 0
                  .勾配C = 0: .勾配L = 0: .勾配R = 0
                  
                  .Stoper位置 = "": .沓座位置 = ""
                  .BR種数 = 0: .BR1 = "": .BR2 = "": .BR3 = "": .BR4 = ""
                  .BU1 = "": .BU2 = ""
                  .BD1 = "": .BD2 = ""
                  .B側1 = "": .B側2 = ""
                  .BSpit = "": .BS1 = "": .BS2 = "": .BS3 = ""
     
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS3 = Da$
            Da = 文字変換(Da, "*", "x")
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case 項目s$
        Case "errck", "ERRCK": 世誤CK = 200
        Case "/", ".": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        Case "符号=":       梁_Na$ = Trim(項目3s$)
        Case "BX=":         .Da_BX = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .BXL = 躯体_D(1): .BXR = 躯体_D(2): If 躯体_Data数 = 1 Then .BXL = 躯体_D(1) / 2: .BXR = .BXL
                            .BX = .BXL + .BXR:  .BXL2 = .BXL - 土木橋脚_柱.BXL: .BXR2 = .BXR - 土木橋脚_柱.BXR

        Case "BY=":         .Da_BY = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .BYL = 躯体_D(1): .BYR = 躯体_D(2): If 躯体_Data数 = 1 Then .BYL = 躯体_D(1) / 2: .BYR = .BYL
                            .BY = .BYL + .BYR: .BYL2 = .BYL - 土木橋脚_柱.BYL: .BYR2 = .BYR - 土木橋脚_柱.BYR

        
        Case "勾配=":       .Da_勾配 = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .勾配C = 躯体_D(1): .勾配L = 躯体_D(2): .勾配R = 躯体_D(3): If 躯体_Data数 < 3 Then .勾配R = .勾配L
        
        Case "r=":          .Da_r = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .r = 躯体_D(1)
        Case "r2=":         .Da_r2 = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .r2 = 躯体_D(1)
        Case "H=":          .Da_H = 項目3s$:        Call 橋脚_躯体_ck(項目s$, 項目3s$)
                            .H1 = 躯体_D(1): .H2 = 躯体_D(2): If 躯体_Data数 = 1 Then .H2 = 躯体_D(1): .H1 = 0
                            .H = .H1 + .H2
        
        Case "ｽﾄｯﾊﾟ位置", "ｽﾄｯﾊﾟｰ位置": D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          .Stoper位置 = D1$
                          INP$ = "N"
        
        Case "沓座位置":  D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          .沓座位置 = D1$
                          INP$ = "N"
        
        
        Case "B1=":    .BR種数 = .BR種数 + 1: Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
                            
                            Select Case .BR種数
                            Case 1: .BR1 = 項目3s$
                            Case 2: .BR2 = 項目3s$
                            Case 3: .BR3 = 項目3s$
                            Case 4: .BR4 = 項目3s$
                            Case Else: 世er = " (" + Da$ + ")  ﾙｰﾌﾟ主筋の種類が多すぎます": If 世誤CK > 99 Then er (""): Stop
                            End Select
                           If 世er <> "" Then If 世誤CK > 99 Then Stop
        
        Case "B2=":        .BU1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "B3=":        .BD1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "B4=":        .B側1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "B4-2=":      .B側2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        Case "Spit=":      .BSpit = 項目3s$:     Call 橋脚_鉄筋_Pit_ck(項目3s$)
        Case "B01=":       .BS1 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "B02=":       .BS2 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        Case "B03=":       .BS3 = 項目3s$:      Call 橋脚_鉄筋_ck(項目s$, 項目3s$)
        
        
        Case Else: 世er = " (" + Da$ + ") は 理解できません": If 世誤CK > 99 Then er (""): Stop
        End Select
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To 梁_No_Max: If 梁符号$(ii) = 梁_Na$ Then 世er = "梁符号 (" + 梁_Na$ + ") は既に使用されています": If 世誤CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        梁符号$(梁_No_Max) = 梁_Na$:     .符号 = 梁_Na$
     End With
     
     Call 橋脚_梁_Put(梁_No_Max)
     
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
          If ni = 3 Then 杭位置_No(ii) = 橋脚_杭_no(Ds$(3))
          If 杭位置_No(ii) = 0 Then 世er = Data1 + "  杭No=0": If 世誤CK > 99 Then er (""): Stop: Exit For Else Exit For
          
          杭位置_径(ii) = 橋脚_杭("D")
          Next ii
          
     杭位置_X個数 = 0
     For ii = 1 To 杭位置_Data数
          D1$ = "*"
          For i2 = 1 To 杭位置_X個数
               If 杭位置_X(ii) = 杭位置_Xpos(i2) Then D1$ = ""
               Next i2
          If D1$ = "*" Then 杭位置_X個数 = 杭位置_X個数 + 1: 杭位置_Xpos(杭位置_X個数) = 杭位置_X(ii)
          Next ii
     
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
          
          Select Case Stoper位置_Y(ii)
          Case Is > 0:  Stoper終点側位置数i = Stoper終点側位置数i + 1: Stoper終点側_Y = Stoper位置_Y(ii)
          Case Else:    Stoper起点側位置数i = Stoper起点側位置数i + 1: Stoper起点側_Y = Stoper位置_Y(ii)
          End Select
          
          
          Call 橋脚_Stoper_Get(Stoper位置_No(ii))
          D1$ = 橋脚_Stoper("箱抜")
          Stoper位置_BX(ii) = 躯体_D(1)
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
        For ii = 1 To Stoper終点側位置数i:  Stoper位置_終点Xpit(ii) = Stoper位置_X(ii) - XP0: XP0 = Stoper位置_X(ii)
              Next ii
              Stoper位置_終点Xpit(Stoper終点側位置数i + 1) = 土木橋脚_梁.BXR - XP0
        
        XP0 = -土木橋脚_梁.BXL
        For ii = 1 To Stoper起点側位置数i: Stoper位置_起点Xpit(ii) = Stoper位置_X(Stoper終点側位置数i + ii) - XP0: XP0 = Stoper位置_X(Stoper終点側位置数i + ii)
              Next ii
              Stoper位置_起点Xpit(Stoper起点側位置数i + 1) = 土木橋脚_梁.BXR - XP0
        
        
        ii2 = Stoper終点側位置数i + 1
        Stoper位置_Ypit(1) = 土木橋脚_梁.BYL - Abs(Stoper位置_Y(ii2))
        Stoper位置_Ypit(2) = Abs(Stoper位置_Y(ii2)) + Abs(Stoper位置_Y(1))
        Stoper位置_Ypit(3) = 土木橋脚_梁.BYL - Abs(Stoper位置_Y(1))
        
        If 世er <> "" Then 世er = "ｽﾄｯﾊﾟ位置  " + 世er: If 世誤CK > 99 Then er (""): Stop
    
    '現Stoper_No
    Call 橋脚_Stoper_Get(現Stoper_No) ' **** 追加
    End Sub
Function FP_Stoper_X位置(X0)
    ' D1$<>""   Stoper位置に当たる
    D1$ = ""
    For ii = 1 To Stoper位置_Data数
         X1 = Stoper位置_X(ii) - Stoper位置_BX(ii) / 2 - 鉄筋_Stoper開き1
         X2 = Stoper位置_X(ii) + Stoper位置_BX(ii) / 2 + 鉄筋_Stoper開き1
         Select Case X0
         Case Is < X1:
         Case Is <= X2:   D1$ = F9(ii): Exit For
         Case Else:
         End Select
         Next ii
    FP_Stoper_X位置 = D1$
    End Function
Function FP_Stoper_Y位置(Y0)
    ' D1$<>""   Stoper位置に当たる
    D1$ = ""
    For ii = 1 To Stoper位置_Data数
         Y1 = Stoper位置_Y(ii) - Stoper位置_BY(ii) / 2 - 鉄筋_Stoper開き1
         Y2 = Stoper位置_Y(ii) + Stoper位置_BY(ii) / 2 + 鉄筋_Stoper開き1
         Select Case Y0
         Case Is < Y1:
         Case Is <= Y2:   D1$ = F9(ii): Exit For
         Case Else:
         End Select
         Next ii
    FP_Stoper_Y位置 = D1$
    End Function
Function FP_Stoper_Z位置(Z0)
    ' D1$<>""   Stoper位置に当たる
    D1$ = ""
         Z2 = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H
         Z1 = Z2 - Stoper位置_H(1) - 鉄筋_Stoper開き1
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
          Case Is > 0: 沓座終点側位置数i = 沓座終点側位置数i + 1: 沓座終点側_Y = 沓座位置_Y(ii)
          Case Else: 沓座起点側位置数i = 沓座起点側位置数i + 1: 沓座起点側_Y = 沓座位置_Y(ii)
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
Sub 橋脚_鉄筋_ck(項目$, 鉄筋Data$)
        ' 項目$
        ' 鉄筋_Data数           Dataの個数
        ' 鉄筋_Property$        鉄筋特性     exp  $梁下補強筋
        ' 鉄筋_平面$            XY  YZ  ZX   鉄筋の加工平面
        ' 鉄筋_径本数$          鉄筋本数,径  exp  6+5+1-D38    18-φ13-SR235    12-D29-D25
        ' 鉄筋_径$              径  exp  D38    φ13
        
        ' 鉄筋_位置$            鉄筋_位置    exp  P127
        ' 鉄筋_S位置
        ' 鉄筋_X位置$           鉄筋_X方向位置    exp  PX127
        
        ' 鉄筋_pit$             鉄筋 ﾋﾟｯﾁ    exp  @1200+6x200+4x150+40x150+12x300
        ' 鉄筋_X_pit$           鉄筋 X方向 ﾋﾟｯﾁ    exp  @X-1850+15x250
        ' 鉄筋_Y_pit$           鉄筋 Y方向 ﾋﾟｯﾁ    exp  @Y-1000+4x500
        
        ' 鉄筋_L$               鉄筋 長さ    exp  Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
        ' 鉄筋_B$               鉄筋 長さ    exp  B1678+J+2677
        ' 鉄筋_D$               鉄筋 長さ    exp  D1678+J+2677
        
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
          鉄筋_L$ = "": 鉄筋_B$ = "": 鉄筋_D$ = "":
          鉄筋_X$ = "": 鉄筋_XX = 0
          鉄筋_Y$ = "": 鉄筋_YY = 0
          鉄筋_H$ = "":       鉄筋n$ = ""
          鉄筋_定着$ = "": 鉄筋_H径$ = "": 鉄筋_K位置$ = "": 鉄筋_SK位置 = 0
          鉄筋_Z位置 = 0
     
          鉄筋位置_Σ数 = 0: 鉄筋位置_Data数 = 0
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
          Case "L":      鉄筋_L$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(鉄筋_L$)
          Case "B":      鉄筋_B$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(鉄筋_B$)
          Case "D":      鉄筋_D$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(鉄筋_D$)
          
                     If 鉄筋L_全ΣL = 0 Then 世er = "  鉄筋D=0 " + 鉄筋_D$: er (""): If 世誤CK > 99 Then Stop
          Case "X":      鉄筋_X$ = Mid(D1$, 2): 鉄筋_XX = Val(鉄筋_X$)
          Case "Y":      鉄筋_Y$ = Mid(D1$, 2): 鉄筋_YY = Val(鉄筋_X$)
          
          Case "H":      鉄筋_H$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call 橋脚_鉄筋_L_ck(鉄筋_H$)
          
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
              Case "D10", "D13", "D16", "D19", "D22", "D25", "D29", "D32", "D35", "D38", "D41", "D45"
              Case "φ13", "φ16", "φ19":
              Case "Φ13", "Φ16", "Φ19":
              Case Else: 世er = 世er + "鉄筋径 [" + Data1$ + "] が無い  ": If 世誤CK > 99 Then er (""): Stop
              End Select
              Next ii
              
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
        ' 鉄筋X位置_Data数        Dataの個数
        ' 鉄筋X位置_頭符号$       ""  OR  "±"
        ' 鉄筋X位置_Data$(i)      i番目のX位置のData
        ' 鉄筋X位置_n(i)          i番目のX位置の個数
        ' 鉄筋X位置_p(i)          i番目のX位置 mm
        ' 鉄筋X位置_L(i)
        ' 鉄筋X位置_ΣL           全 Data_X位置_L
     
        ' 鉄筋X位置_Σ数          X位置(部品)のΣ部品個数
        ' 鉄筋X位置_位置(ii)      部品の StartからのX位置  ii=1 To Σ部品個数
     
        鉄筋X位置_Σ数 = 0:
        Data2$ = LCase(Data1$): 鉄筋X位置_頭符号$ = ""
        If Mid(Data2$, 1, 1) = "±" Then Data2$ = Mid(Data2$, 2): 鉄筋X位置_頭符号$ = "±"
        鉄筋X位置_ΣL = 0
        Call Ddata("+", Data2$, Ds$(), Di(), 鉄筋X位置_Data数)
     
        For ii = 1 To 鉄筋X位置_Data数: D1$ = Ds$(ii)
             鉄筋X位置_n(ii) = 1:
             ni = InStr(D1$, "x")
             Select Case ni
             Case 0:      Call calu2(D1$, Scda, er1$): 世er = 世er + er1$
                          鉄筋X位置_p(ii) = Scda
                          鉄筋X位置_Σ数 = 鉄筋X位置_Σ数 + 1: 鉄筋X位置_位置(鉄筋X位置_Σ数) = 鉄筋X位置_位置(鉄筋X位置_Σ数 - 1) + Scda
             Case Else:
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Dck$ = Rob_数式ck0$(D2$): If Dck$ <> "" Then 世er = 世er + "鉄筋 pit  " + D1$ + " [" + Dck$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
                          鉄筋X位置_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): 世er = 世er + er1$
                          鉄筋X位置_p(ii) = Scda
                          For jj = 1 To 鉄筋X位置_n(ii):  鉄筋X位置_Σ数 = 鉄筋X位置_Σ数 + 1: 鉄筋X位置_位置(鉄筋X位置_Σ数) = 鉄筋X位置_位置(鉄筋X位置_Σ数 - 1) + Scda: Next jj
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
        
        
        
        鉄筋P_Σ数 = 0:
        Data2$ = LCase(Data1$): 鉄筋P_頭符号$ = ""
        If Mid(Data2$, 1, 1) = "±" Then Data2$ = Mid(Data2$, 2): 鉄筋P_頭符号$ = "±"
        鉄筋P_ΣL = 0
        Call Ddata("+", Data2$, 鉄筋P_Data$(), Di(), 鉄筋P_Data数)
     
        For ii = 1 To 鉄筋P_Data数: D1$ = 鉄筋P_Data$(ii)
             鉄筋P_n(ii) = 1:
             ni = InStr(D1$, "x")
             
             Select Case ni
             Case 0:      Call calu2(D1$, Scda, er1$): 世er = 世er + er1$
                          鉄筋P_p(ii) = Scda:
                          鉄筋P_Σ数 = 鉄筋P_Σ数 + 1: 鉄筋P_位置(鉄筋P_Σ数) = 鉄筋P_位置(鉄筋P_Σ数 - 1) + Scda
             Case Else
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Dck$ = Rob_数式ck0$(D2$): If Dck$ <> "" Then 世er = 世er + "鉄筋 pit  " + D1$ + " [" + Dck$ + "] がある  ": If 世誤CK > 99 Then er (""): Stop
                          鉄筋P_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): 世er = 世er + er1$
                          鉄筋P_p(ii) = Scda
                          For jj = 1 To 鉄筋P_n(ii):  鉄筋P_Σ数 = 鉄筋P_Σ数 + 1: 鉄筋P_位置(鉄筋P_Σ数) = 鉄筋P_位置(鉄筋P_Σ数 - 1) + Scda: Next jj
             End Select
             鉄筋P_L(ii) = 鉄筋P_n(ii) * 鉄筋P_p(ii)
             鉄筋P_ΣL = 鉄筋P_ΣL + 鉄筋P_n(ii) * 鉄筋P_p(ii)
             Next ii
        
        
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

'┌─────────────────────────────────────────────┐
'│■ 橋脚 鉄筋 L ck    解析 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 橋脚_鉄筋_L_ck(Data1$)
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
             
             Case "F":       '橋脚鉄筋径$(鉄筋L_部品数)
                             LL1 = FP_橋脚_鉄筋_Data("L1", 橋脚鉄筋径$(鉄筋L_部品数)):  鉄筋L_L(ii) = LL1:  鉄筋L_ΣL(鉄筋L_部品数) = 鉄筋L_ΣL(鉄筋L_部品数) + LL1
             
             Case "W":
                             鉄筋L_部品数 = 鉄筋L_部品数 + 1:   鉄筋L_部品位置(鉄筋L_部品数) = ii
                             鉄筋L_W数 = 鉄筋L_W数 + 1
             
             Case "K":
                             鉄筋L_部品数 = 鉄筋L_部品数 + 1:   鉄筋L_部品位置(鉄筋L_部品数) = ii
                             鉄筋L_K数 = 鉄筋L_K数 + 1
             
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
Private Sub 橋脚_杭_Put(BNo)
    Open 橋脚_Data_dsk + "土木_橋脚_杭.RAN" For Random As #30 Len = Len(土木橋脚_杭)
    Put #30, BNo, 土木橋脚_杭
    Close #30
    End Sub
Private Sub 橋脚_基礎_Put(BNo)
    Open 橋脚_Data_dsk + "土木_橋脚_基礎.RAN" For Random As #30 Len = Len(土木橋脚_基礎)
    Put #30, BNo, 土木橋脚_基礎
    Close #30
    End Sub

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

Function 橋脚_杭_no(杭符号$)
    杭No = 0: ' 0  部材名が無い
    For i = 1 To 杭_No_Max: If 杭符号$ = 杭名(i) Then 杭No = i: Exit For
        Next i
    If Trim(杭符号$) = "" Then 杭No = 0: ' 必要
    橋脚_杭_no = 杭No
    If 杭No > 0 Then Call 橋脚_杭_Get(杭No)
    End Function
Sub 橋脚_杭_Get(BNo)
    If 橋脚_Data_dsk = "" Then Call 土木_Dsk
    Open 橋脚_Data_dsk + "土木_橋脚_杭.RAN" For Random As #31 Len = Len(土木橋脚_杭)
    Get #31, BNo, 土木橋脚_杭
    Close #31
    End Sub
Function 橋脚_杭(項目$)
     D1$ = "***": D11 = 0:
     With 土木橋脚_杭
        Select Case UCase(項目$)
        Case "符号": D1$ = Trim(.符号):   '   杭1  杭3
        Case "NO":          D11 = .No: ' Bar No
        Case "D":           D1$ = F_RAN(.Da_D): Call 橋脚_躯体_ck("*", D1$): ' 杭径mm
        Case "L":           D1$ = F_RAN(.Da_L): Call 橋脚_躯体_ck("*", D1$):  '杭L
        
        Case "ｽﾍﾟｰｻ数":     D11 = .Speser種数
        
        Case "ｽﾍﾟｰｻ1":      D1$ = F_RAN(.Speser1): Call 橋脚_鉄筋_ck("*", D1$)
                            S_H = Val(鉄筋_H$): L2 = Sqr(S_H ^ 2 + 鉄筋L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + 鉄筋L_L(3) ^ 2)
                            Call 橋脚_鉄筋_L_ck(鉄筋_L$)
                            鉄筋L_全ΣL = 鉄筋L_L(1) + L2 + L3 + 鉄筋L_L(4)
        
                           'Stop
                           表符号$ = "ｽﾍﾟｰｻ"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = Val(鉄筋_n$) * 鉄筋P_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "ｽﾍﾟｰｻ2":      D1$ = F_RAN(.Speser2): Call 橋脚_鉄筋_ck("*", D1$)
                            S_H = Val(鉄筋_H$): L2 = Sqr(S_H ^ 2 + 鉄筋L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + 鉄筋L_L(3) ^ 2)
                            鉄筋L_全ΣL = 鉄筋L_L(1) + L2 + L3 + 鉄筋L_L(4)
        
                           表符号$ = "ｽﾍﾟｰｻ"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = Val(鉄筋_n$) * 鉄筋P_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "ｽﾍﾟｰｻ3":      D1$ = F_RAN(.Speser3): Call 橋脚_鉄筋_ck("*", D1$)
                            S_H = Val(鉄筋_H$): L2 = Sqr(S_H ^ 2 + 鉄筋L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + 鉄筋L_L(3) ^ 2)
                            鉄筋L_全ΣL = 鉄筋L_L(1) + L2 + L3 + 鉄筋L_L(4)
        
                           表符号$ = "ｽﾍﾟｰｻ"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = Val(鉄筋_n$) * 鉄筋P_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "K数":         D11 = .K種数
        
        Case "K1":          D1$ = F_RAN(.K1):  Call 橋脚_鉄筋_ck("*", D1$)
                            鉄筋_○_符号$ = "K_ _1"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋_○_符号2$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
        
        Case "K1-1", "K1-2", "K1-3", "K1-4", "K1-5"
                            D1$ = F_RAN(.K1):  Call 橋脚_鉄筋_ck("*", D1$)
        
                            ii = Val(Mid(項目$, 4))
                           表符号$ = "K1-" + f0(ii)
                           表鉄筋径$ = 橋脚鉄筋径$(ii): 表鉄筋本数 = 鉄筋数_n1: 表鉄筋L = 鉄筋L_ΣL(ii)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           If 表鉄筋L = 0 Then D1$ = ""
        
        
        Case "K2":          D1$ = F_RAN(.K2):  Call 橋脚_鉄筋_ck("*", D1$)
                            鉄筋_○_符号$ = "K_ _2"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋_○_符号2$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
        
        Case "K2-1", "K2-2", "K2-3", "K2-4", "K2-5"
                            D1$ = F_RAN(.K2):  Call 橋脚_鉄筋_ck("*", D1$)
        
                            ii = Val(Mid(項目$, 4))
                           表符号$ = "K2-" + f0(ii)
                           表鉄筋径$ = 橋脚鉄筋径$(ii): 表鉄筋本数 = 鉄筋数_n1: 表鉄筋L = 鉄筋L_ΣL(ii)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           If 表鉄筋L = 0 Then D1$ = ""
        
        Case "K3":          D1$ = F_RAN(.K3):  Call 橋脚_鉄筋_ck("*", D1$)
                            鉄筋_○_符号$ = "K_ _3"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋_○_符号2$ = F9(鉄筋数_n1) + "-" + 鉄筋_径$
                            Σ数$ = F9(鉄筋数_n1)
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
        Case "K3-1", "K3-2", "K3-3", "K3-4", "K3-5"
                            D1$ = F_RAN(.K3):  Call 橋脚_鉄筋_ck("*", D1$)
        
                            ii = Val(Mid(項目$, 4))
                           表符号$ = "K3-" + f0(ii)
                           表鉄筋径$ = 橋脚鉄筋径$(ii): 表鉄筋本数 = 鉄筋数_n1: 表鉄筋L = 鉄筋L_ΣL(ii)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           If 表鉄筋L = 0 Then D1$ = ""
        
        
        
        Case "ΣK鉄筋本数": D11 = .ΣK鉄筋本数: ' exp    24
        
        
        Case "KH2":         D1$ = F_RAN(.KH2):    Call 橋脚_鉄筋_ck("*", D1$)
        
        
        
        Case "HOOP":        .Hoop1数 = 0: .Hoop2数 = 0: .Hoop3数 = 0:
                            Hoop_L1 = 0: Hoop_L2 = 0: Hoop_L3 = 0
                            D1$ = F_RAN(.Hoop1):    Call 橋脚_鉄筋_ck("*", D1$)
                                 杭Hoop径 = 鉄筋_SH径
                                 杭Hoop_Start_Z位置 = 鉄筋_Z位置
                                 杭Hoop_pit$ = "0+" + 鉄筋_pit$
                                 Hoop_L1 = 鉄筋P_位置(鉄筋P_Σ数)
                            D1$ = F_RAN(.Hoop2):     If D1$ <> "" Then Call 橋脚_鉄筋_ck("*", D1$): 杭Hoop_pit$ = 杭Hoop_pit$ + "+" + 鉄筋_pit$: Hoop_L2 = Hoop_L1 + 鉄筋P_位置(鉄筋P_Σ数)
                            D1$ = F_RAN(.Hoop3):     If D1$ <> "" Then Call 橋脚_鉄筋_ck("*", D1$): 杭Hoop_pit$ = 杭Hoop_pit$ + "+" + 鉄筋_pit$: Hoop_L3 = Hoop_L2 + 鉄筋P_位置(鉄筋P_Σ数)
                            
                            
                            Call 橋脚_鉄筋_Pit_ck(杭Hoop_pit$)
                            .組立筋数 = 0
                            For ii = 1 To 鉄筋P_Σ数 + 10: 橋脚_鉄筋_Mark$(ii) = "": Next ii
                            D1$ = F_RAN(.組立筋): Call Ddata(" ", D1$, Ds$(), Di(), ni)
                                 For ii = 1 To ni
                                      If Di(ii) > 0 Then .組立筋数 = .組立筋数 + 1: 橋脚_鉄筋_Mark$(Di(ii)) = "*"
                                      If Di(ii) > 鉄筋P_Σ数 Then 世er = "杭 組立筋 指定位置がおかしい":  If 世誤CK > 99 Then er (""): Stop
                                      Next ii
                            
                            For ii = 1 To 鉄筋P_Σ数
                                  Do
                                        If 橋脚_鉄筋_Mark$(ii) <> "" Then Exit Do
                                        Select Case 鉄筋P_位置(ii)
                                        Case Is <= Hoop_L1: 橋脚_鉄筋_Mark$(ii) = "1": .Hoop1数 = .Hoop1数 + 1
                                        Case Is <= Hoop_L2: 橋脚_鉄筋_Mark$(ii) = "2": .Hoop2数 = .Hoop2数 + 1
                                        Case Else: 橋脚_鉄筋_Mark$(ii) = "3": .Hoop3数 = .Hoop3数 + 1
                                        End Select
                                        Exit Do
                                        Loop
                                  Next ii
                            
                            鉄筋_SH径 = 杭Hoop径
                            鉄筋_Z位置 = 杭Hoop_Start_Z位置
        
        Case "HOOP1":       D1$ = F_RAN(.Hoop1):    Call 橋脚_鉄筋_ck("*", D1$)
                            '杭Hoop径 = 鉄筋_SH径:  杭Hoop_Start_Z位置 = 鉄筋_Z位置:  杭Hoop_pit$ = 鉄筋_pit$
                            鉄筋P_Σ数 = 鉄筋P_Σ数 + 1
                            鉄筋_○_符号$ = "K_0_3"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(.Hoop1数)
                            鉄筋L_全ΣL = 鉄筋_SH径 * 3.1415926535 + FP_橋脚_鉄筋_Data("KHL", 鉄筋_径$)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "K03"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = .Hoop1数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "HOOP2":       D1$ = F_RAN(.Hoop2):    Call 橋脚_鉄筋_ck("*", D1$)
                            '杭Hoop径 = 鉄筋_SH径:  杭Hoop_Start_Z位置 = 鉄筋_Z位置:  杭Hoop_pit$ = 鉄筋_pit$
                            鉄筋_○_符号$ = "K_0_4"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(.Hoop2数)
                            鉄筋L_全ΣL = 鉄筋_SH径 * 3.1415926535 + FP_橋脚_鉄筋_Data("KHL", 鉄筋_径$)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "K04"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = .Hoop2数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        
        Case "HOOP3":       D1$ = F_RAN(.Hoop3):    Call 橋脚_鉄筋_ck("*", D1$)
                           ' 杭Hoop径 = 鉄筋_SH径:  杭Hoop_Start_Z位置 = 鉄筋_Z位置:  杭Hoop_pit$ = 鉄筋_pit$
                            鉄筋_○_符号$ = "K_0_5"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(.Hoop3数)
                            鉄筋L_全ΣL = 鉄筋_SH径 * 3.1415926535 + FP_橋脚_鉄筋_Data("KHL", 鉄筋_径$)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "K05"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = .Hoop3数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        
        Case "組立筋":      D1$ = F_RAN(.組立筋):   D2$ = "": ni = InStr(6, D1$, " "): If ni > 2 Then D2$ = Mid(D1$, 1, ni - 1)
                            Call 橋脚_鉄筋_ck("*", D2$)
                            鉄筋_○_符号$ = "K_0_1"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(.組立筋数)
                            鉄筋L_全ΣL = 鉄筋_SH径 * 3.1415926535 + FP_橋脚_鉄筋_Data("KHL", 鉄筋_径$)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "K01"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = .組立筋数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                            
        Case "HOOP底":     D1$ = F_RAN(.KH2):    Call 橋脚_鉄筋_ck("*", D1$)
                            鉄筋_○_符号$ = "K_0_2"
                            鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋数_n1)
                            鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                            鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "K02"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋数_n1: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case Else: 世er = "System 橋脚_杭 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": 橋脚_杭 = D11
        Case Else:  橋脚_杭 = D1$
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function


'┌─────────────────────────────────────────────┐
'│■ 橋脚 基礎            　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_基礎_No(基礎符号$)
     基礎No = 0: ' 0  部材名が無い
     For i = 1 To 基礎_No_Max: If 基礎符号$ = 基礎名(i) Then 基礎No = i: Exit For
         Next i
     If Trim(基礎符号$) = "" Then 基礎No = 0: ' 必要
     橋脚_基礎_No = 基礎No
     If 基礎No > 0 Then Call 橋脚_基礎_Get(基礎No)
     End Function
Sub 橋脚_基礎_Get(BNo)
     If 橋脚_Data_dsk = "" Then Call 土木_Dsk
     Open 橋脚_Data_dsk + "土木_橋脚_基礎.RAN" For Random As #31 Len = Len(土木橋脚_基礎)
     Get #31, BNo, 土木橋脚_基礎
     Close #31
     End Sub
Function 橋脚_基礎(項目$)
     D1$ = "***": D11 = 0:
     With 土木橋脚_基礎
        Select Case UCase(項目$)
        Case "符号":     D1$ = Trim(.符号):   '   基礎1
        Case "NO":       D11 = .No: ' Bar No
        Case "BX":       D1$ = F_RAN(.Da_BX): Call 橋脚_躯体_ck("*", D1$)
        
        Case "BY":       D1$ = F_RAN(.Da_BY): Call 橋脚_躯体_ck("*", D1$)
        
        Case "H":        D1$ = F_RAN(.Da_H): Call 橋脚_躯体_ck("*", D1$)
        
        Case "杭位置":   D1$ = F_RAN(.杭位置): Call 橋脚_杭位置_ck(D1$)
        
        Case "FX1":      ' F11
                         D1$ = F_RAN(.FX1):  Call 橋脚_鉄筋_ck("*", D1$)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _11"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "F11"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "FX1平面":      ' F11
                         D1$ = F_RAN(.FX1):  Call 橋脚_鉄筋_ck("*", D1$)
                         Call 橋脚_鉄筋_L_ck(鉄筋_B$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        Case "FX1平面R":      ' F11
                         D1$ = F_RAN(.FX1):  Call 橋脚_鉄筋_ck("*", D1$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1:  D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        
        Case "FX2":      ' F12
                         D1$ = F_RAN(.FX2):  Call 橋脚_鉄筋_ck("*", D1$)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 F12 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + 鉄筋_H2$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _12"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            
                                    FX2数 = 0
                                    For ii = 1 To 鉄筋P_Σ数:     X0 = .BYR - 鉄筋P_位置(ii)
                                          '  FX3=""  の場合 FX2 を使用する
                                          Select Case X0
                                          Case Is > .BYL - .BYL_端
                                          Case Is > -(.BYR - .BYR_端):     FX2数 = FX2数 + 1
                                          Case Else
                                          End Select
                                          Next ii
                            '***
                            Σ数$ = F9(FX2数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "F12"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = FX2数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "FX2平面":      ' F12
                         D1$ = F_RAN(.FX2):  Call 橋脚_鉄筋_ck("*", D1$)
                         Call 橋脚_鉄筋_L_ck(鉄筋_B$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = ni To 1 Step -1
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        Case "FX2平面R":      ' F12
                         D1$ = F_RAN(.FX2):  Call 橋脚_鉄筋_ck("*", D1$)
                         Call 橋脚_鉄筋_L_ck(鉄筋_B$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        
        Case "FX3":      ' F13
                         D1$ = F_RAN(.FX2): ' 本数の計算のみ
                                    FX2数 = 0
                                    For ii = 1 To 鉄筋P_Σ数:     X0 = .BYR - 鉄筋P_位置(ii)
                                          '  FX3=""  の場合 FX2 を使用する
                                          Select Case X0
                                          Case Is > .BYL - .BYL_端
                                          Case Is > -(.BYR - .BYR_端):     FX2数 = FX2数 + 1
                                          Case Else
                                          End Select
                                          Next ii
                                鉄筋P_Σ数1 = 鉄筋P_Σ数
                         D1$ = F_RAN(.FX3): If D1$ = "" Then D1$ = F_RAN(.FX2): '***
                         
                         Call 橋脚_鉄筋_ck("*", D1$)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 F13 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + 鉄筋_H2$: Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋_○_符号$ = "F_ _13"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            
                            Σ数$ = F9(鉄筋P_Σ数1 - FX2数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "F13"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数1 - FX2数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                         If InStr(鉄筋_H$, "～") > 0 Then 表鉄筋適用$ = "(平均長)"
                         
        Case "FX3平面":      ' F13
                         D1$ = F_RAN(.FX3): If D1$ = "" Then D1$ = F_RAN(.FX2): '***
                         Call 橋脚_鉄筋_ck("*", D1$)
                         Call 橋脚_鉄筋_L_ck(鉄筋_B$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = ni To 1 Step -1
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        Case "FX3平面R":      ' F13
                         D1$ = F_RAN(.FX3): If D1$ = "" Then D1$ = F_RAN(.FX2): '***
                         Call 橋脚_鉄筋_ck("*", D1$)
                         Call 橋脚_鉄筋_L_ck(鉄筋_B$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = 鉄筋L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        
        
        
        
        Case "FX4":      ' F14
                          D1$ = F_RAN(.FX4):  Call 橋脚_鉄筋_ck("*", D1$)
                        ' Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck(Data1$)
                           
                           
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _14"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "F14"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "FY1":      ' F1
                         D1$ = F_RAN(.FY1):  Call 橋脚_鉄筋_ck("*", D1$)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(Int(鉄筋P_Σ数 / 2)): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "F1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "FY2":      ' F2
                         D1$ = F_RAN(.FY2):  Call 橋脚_鉄筋_ck("*", D1$)
                         
                         Data1$ = 鉄筋_H$:
                         Fook1$ = "": Fook2$ = "": If Mid(Data1$, 1, 2) = "F+" Then Fook1$ = "F+": Fook2$ = "+F": Data1$ = Mid(Data1$, 3)
                         Call 橋脚_鉄筋_L_ck(Data1$)
                         Select Case 鉄筋L_Data数
                         Case 1:     HHD = 鉄筋L_L(1): HHU = 0
                         Case 2:     HHD = 鉄筋L_L(1): HHU = 鉄筋L_L(2)
                         Case Else: 世er = "橋脚_基礎 項目 FY2 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                         End Select
                         
                         Select Case HHU
                         Case Is = 0:
                                     Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                                       鉄筋_B_LL = 鉄筋L_全ΣL
                                       鉄筋_横被り = (.BY - 鉄筋_B_LL) / 2
                                     
                                     Data1$ = Fook1$ + F9(HHD) + "+" + 鉄筋_B$ + "+" + F9(HHD) + Fook2$
                                      
                         Case Else:
                         
                                '*OLD   F2=83-D32_P95_@155+40x125+40x125+155_L2328+角85.301+3612+角4.699+1092+W+2092+角4.699+3612+角85.301+2328        'Y 上鉄筋
                         
                                Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                                       鉄筋_B_LL = 鉄筋L_全ΣL
                                       鉄筋_横被り = (.BY - 鉄筋_B_LL) / 2
                                
                                Select Case 鉄筋L_Data数
                                Case 3: BBL = 鉄筋L_L(1): BBM = 鉄筋L_L(2): BBR = 鉄筋L_L(3)
                                        BBL2 = Sqr(BBL ^ 2 + HHU ^ 2): BBR2 = Sqr(BBR ^ 2 + HHU ^ 2)
                                        DD3$ = 鉄筋L_Data$(2)
                                Case 5: BBL = 鉄筋L_L(1): BBM1 = 鉄筋L_L(2): BBM2 = 鉄筋L_L(4): BBR = 鉄筋L_L(5)
                                        BBL2 = Sqr(BBL ^ 2 + HHU ^ 2): BBR2 = Sqr(BBR ^ 2 + HHU ^ 2)
                                        DD3$ = 鉄筋L_Data$(2) + "+" + 鉄筋L_Data$(3) + "+" + 鉄筋L_Data$(4)
                                Case Else: 世er = "橋脚_基礎 項目 FY2 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                                End Select
                         
                                角度1 = 90 - Calu角度(0, 0, BBL, HHU): 角度2 = Calu角度(0, 0, BBL, HHU)
                                Data1$ = Fook1$ + F9(HHD) + "+角" + F9(角度1) + "+" + F9(BBL2) + "+角" + F9(角度2) + "+" + DD3$ + "+角" + F9(角度2) + "+" + F9(BBR2) + "+角" + F9(角度1) + "+" + F9(HHD) + Fook2$
                         End Select
                         
                         Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋_○_符号$ = "F_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(Int(鉄筋P_Σ数 / 2 + 0.5)): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "F2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "FY2平面":      ' F2
                         D1$ = F_RAN(.FY2):  Call 橋脚_鉄筋_ck("*", D1$)
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0
                         For ii = 1 To ni
                               Select Case Mid(Ds$(ii), 1, 1)
                               Case "W": D1$ = D1$ + F9(LL1) + "+W": LL1 = 0
                               Case "K": D1$ = D1$ + F9(LL1) + "+K": LL1 = 0
                               Case "J": D1$ = D1$ + F9(LL1) + "+J": LL1 = 0
                               Case Else: LL1 = LL1 + Di(ii)
                               End Select
                               Next ii
                               If ni > 1 And LL1 > 0 Then D1$ = D1$ + "+" + F9(LL1)
                         '*********** ************
                         Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        Case "FY2平面R":      ' F2
                         D1$ = F_RAN(.FY2):  Call 橋脚_鉄筋_ck("*", D1$)
                         
                         Call Ddata("+", 鉄筋_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0
                         For ii = ni To 1 Step -1
                               Select Case Mid(Ds$(ii), 1, 1)
                               Case "W": D1$ = D1$ + F9(LL1) + "+W": LL1 = 0
                               Case "K": D1$ = D1$ + F9(LL1) + "+K": LL1 = 0
                               Case "J": D1$ = D1$ + F9(LL1) + "+J": LL1 = 0
                               Case Else: LL1 = LL1 + Di(ii)
                               End Select
                               Next ii
                               If ni > 1 And LL1 > 0 Then D1$ = D1$ + "+" + F9(LL1)
                         鉄筋_BR$ = D1$
                         Data1$ = D1$: Call 橋脚_鉄筋_L_ck(Data1$)
        
        Case "FY3":     'F3
                         D1$ = F_RAN(.FY3):  Call 橋脚_鉄筋_ck("*", D1$)
                         Data1$ = 鉄筋_H$ + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Σ数$ = "*" + F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "F_ _3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "F3"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "FH1":      ' f1
                         D1$ = F_RAN(.FH1):  Call 橋脚_鉄筋_ck("*", D1$)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 f1 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(鉄筋_H2$, 2) + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋_○_符号$ = "f_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = "*n":
                           鉄筋_○_符号2$ = "n-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
        
        Case "FH1*":      ' f1
                            鉄筋P_Σ数22 = P_FH_個数("f1")
                         D1$ = F_RAN(.FH1):  Call 橋脚_鉄筋_ck("*", D1$)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 f1 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(鉄筋_H2$, 2) + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋_○_符号$ = "f_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋P_Σ数 = 鉄筋P_Σ数22
                            Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = "n-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "f1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "FH2":      ' f2
                         D1$ = F_RAN(.FH2):  Call 橋脚_鉄筋_ck("*", D1$)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 f2 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(鉄筋_H2$, 2) + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋_○_符号$ = "f_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = "*n"
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
        Case "FH2*":      ' f2
                            鉄筋P_Σ数22 = P_FH_個数("f2")
                         D1$ = F_RAN(.FH2):  Call 橋脚_鉄筋_ck("*", D1$)
                         If 鉄筋_H$ = "" Then 世er = "橋脚_基礎 項目 f2 H___  がない":   If 世誤CK > 99 Then Stop
                         Call Ddata("+", 鉄筋_H$, Ds$(), Di(), ni)
                         鉄筋_H2$ = ""
                         For ii = ni To 1 Step -1: 鉄筋_H2$ = 鉄筋_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(鉄筋_H2$, 2) + "+" + 鉄筋_B$ + "+" + 鉄筋_H$: Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋_○_符号$ = "f_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            鉄筋P_Σ数 = 鉄筋P_Σ数22
                            Σ数$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "f2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                         If InStr(鉄筋_H$, "～") > 0 Then 表鉄筋適用$ = "(平均長)"
        
        
        Case "FH3":      D1$ = F_RAN(.FH3):  Call 橋脚_鉄筋_ck("*", D1$)
                           鉄筋_○_符号$ = "f_ _3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                            Σ数$ = "*n"
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                        
        
        Case "FPIT":      D1$ = F_RAN(.fpit):  Call 橋脚_鉄筋_ck("*", D1$)
                          
                         Call Ddata("+", 鉄筋_X$, Ds(), Di(), ni)
                         If ni <> 5 Then 世er = "橋脚_基礎 項目 fpit  X___  がおかしい":   If 世誤CK > 99 Then Stop
                         基縦筋.Start_X = Di(1):    基縦筋.Y鉄筋pit = Di(2)
                         基縦筋.鉄筋間隔X1 = Di(3): 基縦筋.鉄筋間隔X2 = Di(4):  基縦筋.鉄筋間隔X3 = Di(5)
                         
                         基縦筋.Start_Y = 鉄筋P_位置(1): '基縦筋.X鉄筋pit = Di(2): 基縦筋.鉄筋間隔Y1 = Di(3)
                         If 基縦筋.Start_Y < 10 Then 世er = "橋脚_基礎 項目 fpit  @___  がおかしい": If 世誤CK > 99 Then Stop
        
        Case Else: 世er = "System 橋脚_基礎 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": 橋脚_基礎 = D11
        Case Else:  橋脚_基礎 = D1$
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function

'┌─────────────────────────────────────────────┐
'│■ 橋脚 柱              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_柱_No(柱符号$)
     柱no = 0: ' 0  部材名が無い
     For i = 1 To 柱_No_Max: If 柱符号$ = 柱名(i) Then 柱no = i: Exit For
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
     D1$ = "***": D11 = 0:
     With 土木橋脚_柱
        Select Case UCase(項目$)
        Case "符号":       D1$ = Trim(.符号):   '   柱1
        Case "NO":         D11 = .No: ' Bar No
        Case "BX":         D1$ = F_RAN(.Da_BX): Call 橋脚_躯体_ck("*", D1$)
        Case "BY":         D1$ = F_RAN(.Da_BY): Call 橋脚_躯体_ck("*", D1$)
        Case "H":          D1$ = F_RAN(.Da_H): Call 橋脚_躯体_ck("*", D1$)
        Case "R":          D1$ = F_RAN(.Da_r): Call 橋脚_躯体_ck("*", D1$)
        
        Case "C種類数":    '主筋
                           D11 = .C種数
        
        Case "C1":         D1$ = F_RAN(.C1):    Call 橋脚_鉄筋_ck("*", D1$)
        Case "C2":         D1$ = F_RAN(.C2):    Call 橋脚_鉄筋_ck("*", D1$)
        Case "C3":         D1$ = F_RAN(.C3):    Call 橋脚_鉄筋_ck("*", D1$)
        Case "C4":         D1$ = F_RAN(.C4):    Call 橋脚_鉄筋_ck("*", D1$)
        Case "C5":         D1$ = F_RAN(.C5):    Call 橋脚_鉄筋_ck("*", D1$)
        Case "C6":         D1$ = F_RAN(.C6):    Call 橋脚_鉄筋_ck("*", D1$)
        
        Case "C1本数", "C2本数", "C3本数", "C4本数", "C5本数", "C6本数":
                               C1n = 0: C2n = 0: C3n = 0: C4n = 0: C5n = 0: C9n = 0
                               For CC = 1 To 4:
                                      Select Case CC
                                      Case 1: D2$ = F_RAN(.CX主筋1):  Call P_橋脚_柱_主筋(D2$)
                                      Case 2: D2$ = F_RAN(.CX主筋2):  Call P_橋脚_柱_主筋(D2$)
                                      Case 3: D2$ = F_RAN(.CY主筋1):  Call P_橋脚_柱_主筋(D2$)
                                      Case 4: D2$ = F_RAN(.CY主筋2):  Call P_橋脚_柱_主筋(D2$)
                                      End Select
                               
                                      For ii = 1 To 柱筋_柱筋種類数
                                      Select Case 柱筋_D柱筋番号(ii)
                                      Case 1: C1n = C1n + 柱筋_D柱筋本数(ii) * 2
                                      Case 2: C2n = C2n + 柱筋_D柱筋本数(ii) * 2
                                      Case 3: C3n = C3n + 柱筋_D柱筋本数(ii) * 2
                                      Case 4: C4n = C4n + 柱筋_D柱筋本数(ii) * 2
                                      Case 5: C5n = C5n + 柱筋_D柱筋本数(ii) * 2
                                      Case 6: C5n = C5n + 柱筋_D柱筋本数(ii) * 2
                                      Case Else: C9n = C0n + 柱筋_D柱筋本数(ii) * 2
                                      End Select
                                      Next ii
                                      Next CC
                                      
                                      Select Case F_RAN(.C角主筋)
                                      Case "C1": C1n = C1n + 4
                                      Case "C2": C2n = C2n + 4
                                      Case "C3": C3n = C3n + 4
                                      Case "C4": C4n = C4n + 4
                                      Case "C5": C5n = C5n + 4
                                      Case "C6": C5n = C5n + 4
                                      Case Else: ' C9n = C0n + 4
                                      End Select
        
                                      Select Case UCase(項目$)
                                      Case "C1本数": D11 = C1n: D1$ = F_RAN(.C1):   Call 橋脚_鉄筋_ck("*", D1$)
                                      Case "C2本数": D11 = C2n: D1$ = F_RAN(.C2):   Call 橋脚_鉄筋_ck("*", D1$)
                                      Case "C3本数": D11 = C3n: D1$ = F_RAN(.C3):   Call 橋脚_鉄筋_ck("*", D1$)
                                      Case "C4本数": D11 = C4n: D1$ = F_RAN(.C4):   Call 橋脚_鉄筋_ck("*", D1$)
                                      Case "C5本数": D11 = C5n: D1$ = F_RAN(.C5):   Call 橋脚_鉄筋_ck("*", D1$)
                                      Case "C6本数": D11 = C6n: D1$ = F_RAN(.C6):   Call 橋脚_鉄筋_ck("*", D1$)
                                      Case Else: ' C9n = C0n + 4
                                      End Select
        
        
                           '鉄筋P_Σ数 = P_B2_数("B2-2", 鉄筋_pit$)
                           'Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           Σ数$ = F9(D11): Σ数2$ = F9(D11)
                           鉄筋_○_符号$ = "C_ _" + Mid(項目$, 2, 1)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "C" + Mid(項目$, 2, 1)
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = D11: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "XPIT段数":      D11 = .CXpit段数: '主筋Xpit段数
        Case "XPIT_1段":      D1$ = F_RAN(.CXpit1):  Call 橋脚_鉄筋_Pit_ck(D1$)
        Case "XPIT_2段":      D1$ = F_RAN(.CXpit2):  Call 橋脚_鉄筋_Pit_ck(D1$)
        
        Case "YPIT段数":      D11 = .CYpit段数: '主筋Ypit段数
        Case "YPIT_1段":      D1$ = F_RAN(.CYpit1):  Call 橋脚_鉄筋_Pit_ck(D1$)
        Case "YPIT_2段":      D1$ = F_RAN(.CYpit2):  Call 橋脚_鉄筋_Pit_ck(D1$)
        
        Case "X主筋段数":     D11 = .CX主筋段数
        Case "X主筋_1段":     D1$ = F_RAN(.CX主筋1):   Call P_橋脚_柱_主筋(D1$)
        Case "X主筋_2段":     D1$ = F_RAN(.CX主筋2):   Call P_橋脚_柱_主筋(D1$)
        
        Case "Y主筋段数":     D11 = .CY主筋段数
        Case "Y主筋_1段":     D1$ = F_RAN(.CY主筋1):   Call P_橋脚_柱_主筋(D1$)
        Case "Y主筋_2段":     D1$ = F_RAN(.CY主筋2):   Call P_橋脚_柱_主筋(D1$)
        
        Case "X主筋被ﾘ_1段":  D2$ = F_RAN(.CX主筋1):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋番号(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D11 = 鉄筋_SK位置
        
        Case "X主筋被ﾘ_2段":  D2$ = F_RAN(.CX主筋2):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋番号(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D11 = 鉄筋_SK位置
        
        Case "Y主筋被ﾘ_1段":  D2$ = F_RAN(.CY主筋1):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋番号(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D11 = 鉄筋_SK位置
        
        Case "Y主筋被ﾘ_2段":  D2$ = F_RAN(.CY主筋2):   Call P_橋脚_柱_主筋(D2$):  主筋番号 = 柱筋_柱筋番号(1):  D3$ = Fp_橋脚_柱_主筋(主筋番号)
                              D11 = 鉄筋_SK位置
        
        
        Case "角主筋":        D1$ = F_RAN(.C角主筋):  Call P_橋脚_柱_主筋(D1$)
        
        Case "角主筋_XL":     D11 = .C角主筋X
        Case "角主筋_YL":     D11 = .C角主筋Y
        
        Case "CK":         'CK は 柱梁のｺｰﾅｰ筋 です
                           D1$ = F_RAN(.CK):    Call 橋脚_鉄筋_ck("*", D1$)
                           梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.H1)
                           CH半径 = 土木橋脚_梁.r2 + 鉄筋_SK位置
                           'CK角度 = 鉄筋_r
                           鉄筋P_Σ数 = Val(鉄筋_径本数$)
                           Data1$ = 鉄筋_L$ + "+r" + F9(CH半径) + "度" + F9(90 - 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck(Data1$)
                           If 土木橋脚_梁.r2 <= 0 Then Data1$ = 鉄筋_L$ + "+角" + F9(90 - 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck(Data1$)
                           
                           LL1 = Val(鉄筋_L$)
                           鉄筋L_XL = CH半径 - CH半径 * Dsin(梁角度) + LL1 * Dcos(梁角度)
                           鉄筋L_YL = LL1 + CH半径 * Dcos(梁角度) + LL1 * Dsin(梁角度)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "C_ _K"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "CK"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "CKR":         'CK は 柱梁のｺｰﾅｰ筋 です
                           D1$ = F_RAN(.CK):    Call 橋脚_鉄筋_ck("*", D1$)
                           梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.H1)
                           CH半径 = 土木橋脚_梁.r2 + 鉄筋_SK位置
                           'CK角度 = 鉄筋_r
                           鉄筋P_Σ数 = Val(鉄筋_径本数$)
                           Data1$ = 鉄筋_L$ + "+r" + F9(CH半径) + "度" + F9(-90 + 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck(Data1$)
                           If 土木橋脚_梁.r2 <= 0 Then Data1$ = 鉄筋_L$ + "+角" + F9(-90 + 梁角度) + "+" + 鉄筋_L$: Call 橋脚_鉄筋_L_ck(Data1$)
                           LL1 = Val(鉄筋_L$)
                           鉄筋L_XL = CH半径 - CH半径 * Dsin(梁角度) + LL1 * Dcos(梁角度)
                           鉄筋L_YL = LL1 + CH半径 * Dcos(梁角度) + LL1 * Dsin(梁角度)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "C_ _K"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
        
        Case "CH1":        '外周ﾌｰﾌﾟ
                           D1$ = F_RAN(.CH1):    Call 橋脚_鉄筋_ck("*", D1$)
        
                           X_Hoop_XL = Val(鉄筋_X$)
                           Call Ddata("x", 鉄筋_Y$, Ds$(), Di(), ni)
                           Y_HOOP_XL = Di(1): Y_Hoop_YL = Di(2)

        Case "外HOOPX":        '外周 Xﾌｰﾌﾟ
                           D1$ = F_RAN(.CH1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Hoop_XL = Val(鉄筋_X$)
                           Data1$ = "F+" + F9(Hoop_XL) + "+F": Call 橋脚_鉄筋_L_ck(Data1$)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "c_ _1-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "c1-1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "外HOOPY":        '外周 Yﾌｰﾌﾟ
                           D1$ = F_RAN(.CH1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Call Ddata("X", UCase(鉄筋_Y$), Ds$(), Di(), ni)
                           Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = .CHoop_r: If Hoop_r < 0 Then Hoop_r = 0
                           
                           Select Case Hoop_r
                           Case 0:    Data1$ = "F+" + F9(Hoop_XL) + "+" + F9(Hoop_YL) + "+" + F9(Hoop_XL) + "+F"
                           Case Else: Data1$ = "F+" + F9(Hoop_XL - Hoop_r) + "+r" + F9(Hoop_r) + "+" + F9(Hoop_YL - 2 * Hoop_r) + "+r" + F9(Hoop_r) + "+" + F9(Hoop_XL - Hoop_r) + "+F":
                           End Select
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "c_ _1-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "c1-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        
        Case "内HOOPX_XL":       'X方向 内側ﾌｰﾌﾟ
                           D3$ = F_RAN(.CHX1):    Call 橋脚_鉄筋_ck("*", D3$)
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           D11 = Hoop_XL
        
        Case "内HOOPX_YL":       'X方向 内側ﾌｰﾌﾟ
                           D3$ = F_RAN(.CHX1):    Call 橋脚_鉄筋_ck("*", D3$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$)
                           D11 = Hoop_YL
        
        Case "内HOOPX":       'X方向 内側ﾌｰﾌﾟ 1
                           D1$ = F_RAN(.CHX1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Hoop鉄筋径$ = 橋脚鉄筋径$(1):
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$)
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
                           Hoop_Y$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_D$, r1, r2)
                           
                           Joint_Type$ = UCase(F_RAN(.CX_1_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "U": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + F9(Hoop_XL)
                           Case "D": Data1$ = Hoop_Y$ + "+" + F9(Hoop_XL) + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           
                                  '* 2002.11.3
                                  H_Jaji = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1)
                                  H_Y1 = Val(鉄筋_D$) / 2
              
                                  nni = 0
                                  For i2 = 1 To 鉄筋P_Σ数
                                      If 鉄筋P_位置(i2) > H_Jaji Then
                                         If FP_Stoper_Y位置(H_Y1) <> "" Then Exit For
                                         End If
                                      nni = nni + 1
                                      Next i2
              
                           
                           
                           Σ数$ = F9(nni): Σ数2$ = F9(2 * nni)
                           鉄筋_○_符号$ = "c_ _2-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "c2-1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * nni: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "内HOOPX-2":       'X方向 内側ﾌｰﾌﾟ 2
                         '* 2002.11.3
                                  D1$ = F_RAN(.CHX1):    Call 橋脚_鉄筋_ck("*", D1$)
                                  H_Jaji = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1)
                                  H_Y1 = Val(鉄筋_D$) / 2
              
                                  nni = 0
                                  For i2 = 1 To 鉄筋P_Σ数
                                      If 鉄筋P_位置(i2) > H_Jaji Then
                                         If FP_Stoper_Y位置(H_Y1) <> "" Then Exit For
                                         End If
                                      nni = nni + 1
                                      Next i2
                                  nni = 鉄筋P_Σ数 - nni
                           
                           D1$ = F_RAN(.CHX2):    Call 橋脚_鉄筋_ck("*", D1$)
                           Hoop鉄筋径$ = 橋脚鉄筋径$(1):
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$)
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
                           Hoop_Y$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_D$, r1, r2)
                           
                           Joint_Type$ = UCase(F_RAN(.CX_2_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "U": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + F9(Hoop_XL)
                           Case "D": Data1$ = Hoop_Y$ + "+" + F9(Hoop_XL) + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           Σ数$ = F9(nni): Σ数2$ = F9(2 * nni)
                           鉄筋_○_符号$ = "c_ _2-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
                           
                           表符号$ = "c2-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * nni: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        
        Case "内HOOPY_XL":       'Y方向 内側ﾌｰﾌﾟ
                           D3$ = F_RAN(.CHY1):    Call 橋脚_鉄筋_ck("*", D3$)
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           D11 = Hoop_XL
        
        Case "内HOOPY_YL":       'Y方向 内側ﾌｰﾌﾟ
                           D3$ = F_RAN(.CHY1):    Call 橋脚_鉄筋_ck("*", D3$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$)
                           D11 = Hoop_YL
        
        Case "内HOOPY":       'Y方向 内側ﾌｰﾌﾟ 3-1
                           D1$ = F_RAN(.CHY1):    Call 橋脚_鉄筋_ck("*", D1$)
                           作図Dy = Hoop_Dy * 現作図_Scale
                           Hoop鉄筋径$ = 橋脚鉄筋径$(1):
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$) + 2 * 作図Dy
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
                           Hoop_Y$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_D$, r1 - 作図Dy, r2 - 作図Dy)
                           Joint_Type$ = UCase(F_RAN(.CY_1_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
                           Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           Call 橋脚_鉄筋_X位置_ck(鉄筋_X$)
                           
                           Call P_内側YHOOP_n(Hoop_XL, YHn1, YHn2)
                           
                           'Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           Σ数$ = F9(YHn1): Σ数2$ = F9(YHn1)
                           鉄筋_○_符号$ = "c_ _3-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "c2-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = YHn1: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "内HOOPY-2":       'Y方向 内側ﾌｰﾌﾟ 3-2
                           D1$ = F_RAN(.CHY1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           Call 橋脚_鉄筋_X位置_ck(鉄筋_X$)
                           Call P_内側YHOOP_n(Hoop_XL, YHn1, YHn2)
                           '.... Start
                           D1$ = F_RAN(.CHY2):    Call 橋脚_鉄筋_ck("*", D1$)
                           作図Dy = Hoop_Dy * 現作図_Scale
                           Hoop鉄筋径$ = 橋脚鉄筋径$(1):
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$) + 2 * 作図Dy
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
                           Hoop_Y$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_D$, r1 - 作図Dy, r2 - 作図Dy)
                           Joint_Type$ = UCase(F_RAN(.CY_2_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
                           Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           Call 橋脚_鉄筋_X位置_ck(鉄筋_X$)
                           
                           Σ数$ = F9(YHn2): Σ数2$ = F9(YHn2)
                           鉄筋_○_符号$ = "c_ _3-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "c3-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = YHn2: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "内HOOPY-3":       'Y方向 内側ﾌｰﾌﾟ 3
                           D1$ = F_RAN(.CHY3):    Call 橋脚_鉄筋_ck("*", D1$)
                           作図Dy = Hoop_Dy * 現作図_Scale
                           Hoop鉄筋径$ = 橋脚鉄筋径$(1):
                           Hoop_XL = FP_橋脚_鉄筋_長さ(鉄筋_B$)
                           Hoop_YL = FP_橋脚_鉄筋_長さ(鉄筋_D$) + 2 * 作図Dy
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_B$, r1, r2)
                           Hoop_Y$ = FP_橋脚_鉄筋_Ldata(Hoop鉄筋径$, Fook$, 鉄筋_D$, r1 - 作図Dy, r2 - 作図Dy)
                           Joint_Type$ = UCase(F_RAN(.CY_2_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
                           Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           Call 橋脚_鉄筋_X位置_ck(鉄筋_X$)
                           
                           'Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "c_ _3-3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = "*n" + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = "*n" + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "c3-3"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * nni: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case Else: 世er = "System 橋脚_柱 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": 橋脚_柱 = D11
        Case Else:  橋脚_柱 = D1$
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function
Function Fp_橋脚_柱_主筋(No)
     With 土木橋脚_柱
        Select Case No
        Case 1:         D1$ = F_RAN(.C1):    Call 橋脚_鉄筋_ck("*", D1$): 鉄筋_○_符号$ = "C_ _1"
        Case 2:         D1$ = F_RAN(.C2):    Call 橋脚_鉄筋_ck("*", D1$): 鉄筋_○_符号$ = "C_ _2"
        Case 3:         D1$ = F_RAN(.C3):    Call 橋脚_鉄筋_ck("*", D1$): 鉄筋_○_符号$ = "C_ _3"
        Case 4:         D1$ = F_RAN(.C4):    Call 橋脚_鉄筋_ck("*", D1$): 鉄筋_○_符号$ = "C_ _4"
        Case 5:         D1$ = F_RAN(.C5):    Call 橋脚_鉄筋_ck("*", D1$): 鉄筋_○_符号$ = "C_ _5"
        Case 6:         D1$ = F_RAN(.C6):    Call 橋脚_鉄筋_ck("*", D1$): 鉄筋_○_符号$ = "C_ _6"
        Case Else: D1$ = "": 世er = "System 橋脚_柱 主筋  No>5 ": er (""): If 世誤CK > 99 Then Stop
        End Select
      End With
      
            鉄筋_○_符号1$ = 鉄筋_径$
            鉄筋_○_符号2$ = "*-" + 鉄筋_径$
            鉄筋_○_符号3$ = "*-" + 鉄筋_径$ + " x ****"
      Fp_橋脚_柱_主筋 = D1$
      End Function




Function FP_橋脚_鉄筋_長さ(Data1$)
        ' exp     500+J400+800       500+800=1300
        ' r2   終点の r
        Call 橋脚_鉄筋_L_ck(Data1$)
        LLL = 0
        For ii = 1 To 鉄筋L_Data数
               Select Case UCase(鉄筋L_Type$(ii))
               Case "L":   LLL = LLL + 鉄筋L_L(ii)
               Case Else:
               End Select
               Next ii
     FP_橋脚_鉄筋_長さ = LLL
     End Function


Function FP_橋脚_鉄筋_Ldata(鉄筋径$, Fook$, Data1$, r1, r2)
        ' Joint 長さは  L1 * 2 を使用する
        ' Fook$="Y"  or ""  Y ﾌｯｸをつける
        ' r1   始点の r
        ' r2   終点の r
        Joint_L = 2 * FP_橋脚_鉄筋_Data("L1", 鉄筋径$)
        Call 橋脚_鉄筋_L_ck(Data1$)
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

Private Sub P_内側YHOOP_n(XL, YHn1, YHn2)

          SToper_Z = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1) - 鉄筋_Stoper開き1
          
              YHn1 = 0: YHn2 = 0
              'XL = 橋脚_柱("内HoopY_XL")
              'D1$ = 橋脚_柱("内HoopY")
              For ii = 1 To 鉄筋P_Σ数 Step 2
                  
                  For i2 = 1 To 鉄筋X位置_Σ数 Step 2
                       CK$ = ""
                       Y0 = 鉄筋P_位置(ii) '+ 15
                       X0 = -土木橋脚_柱.BXL + 鉄筋X位置_位置(i2) - XL / 2
                       If Y0 > SToper_Z Then CK$ = FP_Stoper_X位置(X0) + FP_Stoper_X位置(X0 + XL)
                       Select Case CK$
                       Case "":    YHn1 = YHn1 + 1
                       Case Else:  YHn2 = YHn2 + 1
                       End Select
                        'Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  For i2 = 2 To 鉄筋X位置_Σ数 Step 2
                       If ii + 1 > 鉄筋P_Σ数 Then Exit For
                       CK$ = ""
                       Y0 = 鉄筋P_位置(ii + 1) '+ 15
                       X0 = -土木橋脚_柱.BXL + 鉄筋X位置_位置(i2) - XL / 2
                       If Y0 > SToper_Z Then CK$ = FP_Stoper_X位置(X0) + FP_Stoper_X位置(X0 + XL)
                       
                       Select Case CK$
                       Case "":    YHn1 = YHn1 + 1
                       Case Else:  YHn2 = YHn2 + 1
                       End Select
                       
                       'Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  Next ii


     End Sub


'┌─────────────────────────────────────────────┐
'│■ 橋脚 ｽﾄｯﾊﾟｰ          　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_Stoper_No(Stoper符号1$)
     StoperNo = 0: ' 0  部材名が無い
     For i = 1 To Stoper_No_Max: If Stoper符号1$ = Stoper符号$(i) Then StoperNo = i: Exit For
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
     D1$ = "***": D11 = 0:
     With 土木橋脚_Stoper
        Select Case UCase(項目$)
        Case "符号":       D1$ = Trim(.符号):   '   Stoper1
        Case "NO":         D11 = .No: ' Stoper No
        Case "箱抜":       D1$ = F_RAN(.箱抜): Call 橋脚_躯体_ck("*", D1$)
        Case "被ﾘ":        D1$ = F_RAN(.被り): Call 橋脚_被り_ck("*", D1$)
        
        Case "H種類数":    '
                           D11 = 0: '1  2  3
                           If F_RAN(.H1) <> "" Then D11 = D11 + 1
                           If F_RAN(.H2) <> "" Then D11 = D11 + 1
                           If F_RAN(.H3) <> "" Then D11 = D11 + 1
        Case "H1":         D1$ = F_RAN(.H1):    Call 橋脚_鉄筋_ck("*", D1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH) + "+角45" + FP1(BB) + "+角45" + FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop

                           Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Stoper位置_Data数)
                           鉄筋_○_符号$ = "H_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "H1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数 * Stoper位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "H2":         D1$ = F_RAN(.H2):    Call 橋脚_鉄筋_ck("*", D1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数 * Stoper位置_Data数)
                           鉄筋_○_符号$ = "H_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "H2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数 * Stoper位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "H3":         D1$ = F_RAN(.H3):    Call 橋脚_鉄筋_ck("*", D1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Stoper位置_Data数)
                           鉄筋_○_符号$ = "H_ _3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
        
        Case "H3*":
                           Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置"): If 世er <> "" And 世誤CK > 99 Then Stop
                           Stoper_no = Stoper位置_No(1): Call 橋脚_Stoper_Get(Stoper_no): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                           D1$ = 橋脚_Stoper("H1"): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$)
                           D1$ = 橋脚_Stoper("H2"): H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_鉄筋B = Val(鉄筋_B$): H2_XX = Val(鉄筋_X$)
                           D1$ = 橋脚_Stoper("H3"): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)): '鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                              H3_pit = Val(鉄筋_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                              H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                              鉄筋P_Σ数2 = H3_nX + 2 * H3_nY + 2
        
                           D1$ = F_RAN(.H3):    Call 橋脚_鉄筋_ck("*", D1$)
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Stoper位置_Data数)
                           鉄筋_○_符号$ = "H_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋P_Σ数 = 鉄筋P_Σ数2
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数 * Stoper位置_Data数)
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "H3"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数 * Stoper位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
                           If 世er <> "" And 世誤CK > 99 Then Stop
        Case Else: 世er = "System 橋脚_Stoper 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": 橋脚_Stoper = D11
        Case Else:  橋脚_Stoper = D1$
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function

'┌─────────────────────────────────────────────┐
'│■ 橋脚 沓座              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_沓座_No(沓座符号1$)
     沓座no = 0: ' 0  部材名が無い
     For i = 1 To 沓座_No_Max: If 沓座符号1$ = 沓座符号$(i) Then 沓座no = i: Exit For
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
     D1$ = "***": D11 = 0:
     With 土木橋脚_沓座
        Select Case UCase(項目$)
        Case "符号":       D1$ = Trim(.符号):   '   沓座1
        Case "NO":         D11 = .No: ' 沓座 No
       ' Case "ｺﾞﾑｼｭｳ":     D1$ = F_RAN(.Gomsyu): Call 橋脚_躯体_ck("*", D1$)
        Case "BD":         D1$ = F_RAN(.BD): Call 橋脚_躯体_ck("*", D1$)
        Case "被ﾘ":        D1$ = F_RAN(.被り): Call 橋脚_被り_ck("*", D1$)
        
        Case "S数":        '
                           D11 = 0: '1  2  3
                           If F_RAN(.S1) <> "" Then D11 = D11 + 1
                           If F_RAN(.S2) <> "" Then D11 = D11 + 1
        Case "S1":         D1$ = F_RAN(.S1):    Call 橋脚_鉄筋_ck("*", D1$)
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                         '  沓座$ = 橋脚_梁("沓座位置") ' 2003.7.29
                           Σ数$ = F9(鉄筋P_Σ数 + 1): Σ数2$ = F9((鉄筋P_Σ数 + 1) * 沓座位置_Data数)
                           鉄筋_○_符号$ = "S_ _1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "S1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = (鉄筋P_Σ数 + 1) * 沓座位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "S2":         D1$ = F_RAN(.S2):    Call 橋脚_鉄筋_ck("*", D1$)
                           BB = Val(鉄筋_B$): HH = Val(鉄筋_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                        '   沓座$ = 橋脚_梁("沓座位置")  ' 2003.7.29
                           Σ数$ = F9(鉄筋P_Σ数 + 1): Σ数2$ = F9((鉄筋P_Σ数 + 1) * 沓座位置_Data数)
                           鉄筋_○_符号$ = "S_ _2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_全ΣL)
        
                           表符号$ = "S2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = (鉄筋P_Σ数 + 1) * 沓座位置_Data数: 表鉄筋L = 鉄筋L_全ΣL
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case Else: 世er = "System 橋脚_沓座 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": 橋脚_沓座 = D11
        Case Else:  橋脚_沓座 = D1$
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function

'┌─────────────────────────────────────────────┐
'│■ 橋脚 梁              　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Function 橋脚_梁_No(梁符号$)
     梁No = 0: ' 0  部材名が無い
     For i = 1 To 梁_No_Max: If 梁符号$ = 梁名(i) Then 梁No = i: Exit For
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
     D1$ = "***": D11 = 0:
     With 土木橋脚_梁
                     .BXL2 = .BXL - 土木橋脚_柱.BXL: .BXR2 = .BXR - 土木橋脚_柱.BXR
                     .BYL2 = .BYL - 土木橋脚_柱.BYL: .BYR2 = .BYR - 土木橋脚_柱.BYR
        
        Select Case UCase(項目$)
        Case "符号":       D1$ = Trim(.符号):   '   梁1
        Case "NO":         D11 = .No: ' 梁 No
        Case "BX":         D1$ = F_RAN(.Da_BX): Call 橋脚_躯体_ck("*", D1$)
        Case "BY":         D1$ = F_RAN(.Da_BY): Call 橋脚_躯体_ck("*", D1$)
        Case "勾配":       D1$ = F_RAN(.Da_勾配): Call 橋脚_躯体_ck("*", D1$)
        Case "R":          D1$ = F_RAN(.Da_r): Call 橋脚_躯体_ck("*", D1$)
        Case "R2":         D1$ = F_RAN(.Da_r2): Call 橋脚_躯体_ck("*", D1$)
        Case "H":          D1$ = F_RAN(.Da_H): Call 橋脚_躯体_ck("*", D1$)
        Case "ｽﾄｯﾊﾟ位置":  D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
        Case "沓座位置":   D1$ = F_RAN(.沓座位置): Call 橋脚_沓座位置_ck(D1$)
        
        Case "BR数":       D11 = .BR種数:  '1  2  3
        
        Case "BR1", "BR2", "BR3", "BR4": ' ﾙｰﾌﾟ筋
                           
                           Select Case UCase(項目$)
                           Case "BR1":  D1$ = F_RAN(.BR1)
                           Case "BR2":  D1$ = F_RAN(.BR2)
                           Case "BR3":  D1$ = F_RAN(.BR3)
                           Case "BR4":  D1$ = F_RAN(.BR4)
                           End Select
                           
                           If D1$ <> "" Then
                           Call 橋脚_鉄筋_ck("*", D1$)
                           
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: RU_d = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 ﾙｰﾌﾟ筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 3: RU_B1 = 鉄筋L_L(1): DD2$ = "+" + 鉄筋L_Data$(2): RU_B2 = 鉄筋L_L(2) + 鉄筋L_L(3): ' Joint_L を 加える
                           Case Else: 世er = "橋脚_梁 項目 ﾙｰﾌﾟ筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           
                           Ru_r = FP_橋脚_鉄筋_Data("r1", 橋脚鉄筋径$(1))
                           RU_d = RU_d - 2 * Ru_r: If RU_d <= 0 Then RU_d = 0
                           RU_B1 = RU_B1 - Ru_r: If RU_B1 <= 0 Then RU_B1 = 0
                           RU_B2 = RU_B2 - Ru_r: If RU_B2 <= 0 Then RU_B2 = 0
        
                           RUr$ = "+r" + F9(Ru_r)
                          '*OLD           Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744          ' ﾙｰﾌﾟ鉄筋(主筋) 1  P:位置  ｽﾄｯﾊﾟｰの中心からﾙｰﾌﾟ鉄筋中心
                           Data1$ = Mid(RUr$, 2) + FP1(RU_d) + RUr$ + FP1(RU_B1) + DD2$ + FP1(RU_B2) + RUr$ + FP1(RU_d) + RUr$ + FP1(RU_B1) + DD2$ + FP1(RU_B2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           '  鉄筋L_部品数=3
                           Σ数$ = F9(2 * 鉄筋P_Σ数): Σ数2$ = F9(2 * 2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _1-" + Mid(項目$, 3)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           鉄筋_○_符号4$ = 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(2)):  ' ﾙｰﾌﾟ筋 のみ
                           
                           表符号$ = "B1-" + Mid(項目$, 3)
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(2)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           
                           
                           End If
        
        Case "BR1横", "BR2横", "BR3横", "BR4横": ' ﾙｰﾌﾟ筋横図
                           
                           Select Case UCase(項目$)
                           Case "BR1横":  D1$ = F_RAN(.BR1)
                           Case "BR2横":  D1$ = F_RAN(.BR2)
                           Case "BR3横":  D1$ = F_RAN(.BR3)
                           Case "BR4横":  D1$ = F_RAN(.BR4)
                           End Select
                           
                           If D1$ <> "" Then
                           Call 橋脚_鉄筋_ck("*", D1$): If 世er <> "" And 世誤CK > 99 Then Stop

        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Select Case 鉄筋L_Data数
                           Case 1: 'RU_B1 = 鉄筋L_L(1): DD2$ = "+" + 鉄筋L_Data$(2): RU_B2 = 鉄筋L_L(2) + 鉄筋L_L(3): ' Joint_L 無し　2003.9.18
                                   Data1$ = FP1(鉄筋L_L(1)) 'Mid(FP1(RU_B1) + DD2$ + FP1(RU_B2), 2) '*************
                           Case 3: RU_B1 = 鉄筋L_L(1): DD2$ = "+" + 鉄筋L_Data$(2): RU_B2 = 鉄筋L_L(2) + 鉄筋L_L(3): ' Joint_L を 加える
                                   Data1$ = Mid(FP1(RU_B1) + DD2$ + FP1(RU_B2), 2)
                           Case Else: 世er = "橋脚_梁 項目 ﾙｰﾌﾟ筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           
                           Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           
                           
                           Σ数$ = F9(2 * 鉄筋P_Σ数): Σ数2$ = F9(2 * 2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _1-" + Mid(項目$, 3, 1)
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + F9(鉄筋P_Σ数 * 4) + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           End If
        
        
        Case "BU1":        '梁上端筋
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
                           鉄筋_○_符号$ = "B_ _2_"
        
        
        
        Case "B2-1":  ' 梁上端筋  OLD B6
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
                           鉄筋P_Σ数 = P_B2_数("B2-1", 鉄筋_pit$)
                           Σ数$ = F9(2 * 鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _2-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B2-1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        
        Case "B2-2":    ' 梁上端筋  ｽﾄｯﾊﾟ外側   OLD B7
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
        
                           Select Case 鉄筋L_Data数
                           Case 1:    LL1 = 鉄筋L_L(1): Fook1$ = ""
                           Case 3:    LL1 = 鉄筋L_L(2): Fook1$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 上鉄筋  [" + 項目$ + "] Data数があわない": If 世誤CK > 99 Then Stop
                           End Select
                           KLL = (.BX - LL1) / 2: LL2 = Stoper位置_端開きX - KLL - 鉄筋_Stoper開き1
                           Data1$ = Mid(Fook1$ + FP1(LL2) + FP1(鉄筋_折曲げ), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_B2_数("B2-2", 鉄筋_pit$)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _2-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B2-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        
        Case "B2-2R":    ' 梁上端筋  ｽﾄｯﾊﾟ外側   OLD B7
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
        
                           Select Case 鉄筋L_Data数
                           Case 1:    LL1 = 鉄筋L_L(1): Fook1$ = ""
                           Case 3:    LL1 = 鉄筋L_L(2): Fook1$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 上鉄筋  [" + 項目$ + "] Data数があわない": If 世誤CK > 99 Then Stop
                           End Select
                           KLL = (.BX - LL1) / 2: LL2 = Stoper位置_端開きX - KLL - 鉄筋_Stoper開き1
                           Data1$ = Mid(FP1(鉄筋_折曲げ) + FP1(LL2) + Fook1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_B2_数("B2-2", 鉄筋_pit$)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _2-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
        
        
        
        Case "B2-2平面":    ' 梁上端筋  ｽﾄｯﾊﾟ外側  OLD B7
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
        
                           Select Case 鉄筋L_Data数
                           Case 1:    LL1 = 鉄筋L_L(1): Fook1$ = ""
                           Case 3:    LL1 = 鉄筋L_L(2): Fook1$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 上鉄筋  [" + 項目$ + "] Data数があわない": If 世誤CK > 99 Then Stop
                           End Select
                           KLL = (.BX - LL1) / 2: LL2 = Stoper位置_端開きX - KLL - 鉄筋_Stoper開き1
                           Data1$ = Mid(Fook1$ + FP1(LL2), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_B2_数("B2-2", 鉄筋_pit$)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _2-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
        Case "B2-3":    ' 梁上端筋  ｽﾄｯﾊﾟ内側  OLD B8
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
        
                           LL2 = Stoper位置_開きX - 2 * 鉄筋_Stoper開き1
                           Data1$ = Mid(FP1(鉄筋_折曲げ) + FP1(LL2) + FP1(鉄筋_折曲げ), 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_B2_数("B2-3", 鉄筋_pit$)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _2-3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B2-3"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "B2-3平面":    ' 梁上端筋  ｽﾄｯﾊﾟ内側  OLD B8
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call 橋脚_鉄筋_ck("*", D1$)
        
                           LL2 = Stoper位置_開きX - 2 * 鉄筋_Stoper開き1
                           Data1$ = F9(LL2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_B2_数("B2-3", 鉄筋_pit$)
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _2-3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
        
        Case "BD1":        '梁  下鉄筋(あご部分)  B3=D25_@3136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                           D1$ = F_RAN(.BD1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 2: あご筋_Y1 = 鉄筋L_L(1): BD_D2 = 鉄筋L_L(2): BD_D3 = 0
                           Case 3: あご筋_Y1 = 鉄筋L_L(1): BD_D2 = 鉄筋L_L(2): BD_D3 = 鉄筋L_L(3)
                           Case Else: 世er = "橋脚_梁 項目 下鉄筋(あご部分) [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           あご筋_LY = BD_D2 + BD_D3
                           
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 2: あご筋_X1 = 鉄筋L_L(1): BD_B2 = 鉄筋L_L(2)
                           Case Else: 世er = "橋脚_梁 項目 下鉄筋(あご部分) [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           あご筋_LX = BD_B2
                         
                           あご筋_X2 = -.BXL + あご筋_X1: あご筋_Y2 = あご筋_Y1 + BD_D2
                           あご筋_r = 鉄筋_r
                           角度1 = Calu角度(0, 0, BD_B2, BD_D3):  角度2 = (90 + 角度1) / 2:
                           あご筋_角度 = 角度1
                           Select Case BD_D3
                           Case 0:      C_Y0 = 0: X3 = 0: X4 = 0
                           Case Else:   'AAA1 = BD_D3 / BD_B2:  LLXX = 0
                                        X1 = -BD_B2: Y1 = -BD_D3: Call CALUAB(X1, Y1, 0, 0, あご筋_r, AA, BB)
                                        C_X0 = -あご筋_r:  C_Y0 = -AA * あご筋_r + BB
                                        Call CALUP垂点(0, 0, X1, Y1, C_X0, C_Y0, X4, Y4):
                           End Select
                           LL2 = Sqr((BD_B2 + X4) ^ 2 + (BD_D3 + Y4) ^ 2)
                           Data1$ = F9(BD_D2 - C_Y0) + "+r" + F9(あご筋_r) + "度" + F9(90 - 角度1) + FP1(LL2)
                           If あご筋_r <= 0 Then Data1$ = F9(BD_D2 - C_Y0) + "+角" + F9(90 - 角度1) + FP1(LL2)
                           
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _3-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B3-1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "BD1R":        '梁  下鉄筋(あご部分)  B3=D25_@3136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                           D1$ = F_RAN(.BD1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 2: あご筋_Y1 = 鉄筋L_L(1): BD_D2 = 鉄筋L_L(2): BD_D3 = 0
                           Case 3: あご筋_Y1 = 鉄筋L_L(1): BD_D2 = 鉄筋L_L(2): BD_D3 = 鉄筋L_L(3)
                           Case Else: 世er = "橋脚_梁 項目 下鉄筋(あご部分) [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           あご筋_LY = BD_D2 + BD_D3
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 2: あご筋_X1 = 鉄筋L_L(1): BD_B2 = 鉄筋L_L(2)
                           Case Else: 世er = "橋脚_梁 項目 下鉄筋(あご部分) [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           あご筋_LX = BD_B2
                         
                           あご筋_X2 = .BXR - あご筋_X1: あご筋_Y2 = あご筋_Y1 + BD_D2
                           あご筋_r = 鉄筋_r
                           角度1 = Calu角度(0, 0, BD_B2, BD_D3):  角度2 = (90 + 角度1) / 2:
                           あご筋_角度 = 角度1
                           Select Case BD_D3
                           Case 0:      C_Y0 = 0: X3 = 0: X4 = 0
                           Case Else:   'AAA1 = BD_D3 / BD_B2:  LLXX = 0
                                        X1 = -BD_B2: Y1 = -BD_D3: Call CALUAB(X1, Y1, 0, 0, あご筋_r, AA, BB)
                                        C_X0 = -あご筋_r:  C_Y0 = -AA * あご筋_r + BB
                                        Call CALUP垂点(0, 0, X1, Y1, C_X0, C_Y0, X4, Y4):
                           End Select
                           LL2 = Sqr((BD_B2 + X4) ^ 2 + (BD_D3 + Y4) ^ 2)
                           
                           'Data1$ = F9(LL2) + "+r" + F9(あご筋_r) + "度" + F9(90 - 角度1) + FP1(BD_D2 - C_Y0)
                           Data1$ = F9(BD_D2 - C_Y0) + "+r" + F9(あご筋_r) + "度" + F9(-90 + 角度1) + FP1(LL2)
                           If あご筋_r <= 0 Then Data1$ = F9(BD_D2 - C_Y0) + "+角" + F9(-90 + 角度1) + FP1(LL2)
                           
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _3-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
        Case "B側1":      ' B4-1   梁 側鉄筋
                           D1$ = F_RAN(.B側1):    Call 橋脚_鉄筋_ck("*", D1$)
                           鉄筋P_Σ数2 = 鉄筋P_Σ数 - P_B42_数
                           
                           D1$ = F_RAN(.B側1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: B側_D = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 側鉄筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: B側_B1 = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 側鉄筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           'B側_r = FP_橋脚_鉄筋_Data("r1", 橋脚鉄筋径$(1))
                           B側_r = 鉄筋_r
                           B側_D = B側_D - 2 * B側_r: If B側_D <= 0 Then B側_D = 0
                           B側_B1 = B側_B1 - B側_r: If B側_B1 <= 0 Then B側_B1 = 0
        
                           B側r$ = "": If B側_r > 0 Then B側r$ = "+r" + F9(B側_r)
                           Data1$ = F9(B側_B1) + B側r$ + FP1(B側_D) + B側r$ + FP1(B側_B1)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           '鉄筋P_Σ数 = 鉄筋P_Σ数2  Err
                           Σ数$ = F9(鉄筋P_Σ数2): Σ数2$ = F9(2 * 鉄筋P_Σ数2)
                           鉄筋_○_符号$ = "B_ _4-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B4-1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数2: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           
        
        
        
        Case "B側2":      ' B4-2    梁 側鉄筋 下部分
                           D1$ = F_RAN(.B側1):    Call 橋脚_鉄筋_ck("*", D1$)
                           鉄筋P_Σ数2 = P_B42_数
                           
                           D1$ = F_RAN(.B側2): If D1$ = "" Then Exit Function  ' ﾒﾝﾃ 2003.8.30
                           Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: B側_D = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 側鉄筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: B側_B1 = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 側鉄筋 [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           'B側_r = FP_橋脚_鉄筋_Data("r1", 橋脚鉄筋径$(1))
                           B側_r = 鉄筋_r
                           B側_D = B側_D - 2 * B側_r: If B側_D <= 0 Then B側_D = 0
                           B側_B1 = B側_B1 - B側_r: If B側_B1 <= 0 Then B側_B1 = 0
                           B側_BB$ = 鉄筋_B$
                           
                           B側r$ = "": If B側_r > 0 Then B側r$ = "+r" + F9(B側_r)
                          ' Data1$ = F9(B側_B1) + B側r$ + FP1(B側_D) + B側r$ + FP1(B側_B1)
                           Data1$ = B側_BB$ + B側r$ + FP1(B側_D) + B側r$ + "+" + B側_BB$
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = 鉄筋P_Σ数2
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _4-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B4-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           If InStr(鉄筋_B$, "～") > 0 Then 表鉄筋適用$ = "(平均長)"
        
        
        Case "BS1", "B01":      '梁 下ｽﾀｰﾗｯﾌﾟ  B01=D22_K98_B1618_H2292+F_r160        ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           D1$ = F_RAN(.BS1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BBS_D$ = 鉄筋L_Data$(1): BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BBS_D$ = 鉄筋L_Data$(1): BS_D = 鉄筋L_L(1): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 下ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_B = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 下ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           BS_r = 鉄筋_r
                           BS_D2 = BS_D - BS_r: If BS_D2 <= 0 Then BS_D2 = 0
                           BS_B2 = BS_B - BS_r: If BS_B2 <= 0 Then BS_B2 = 0
        
                           If InStr(BBS_D$, "～") = 0 Then
                               BBS_D2$ = FP1(BS_D2)
                               Else
                               ni = InStr(BBS_D$, "～")
                               BSL1 = Val(BBS_D$) - BS_r
                               BSL2 = Val(Mid(BBS_D$, ni + 1)) - BS_r
                               BBS_D2$ = "+" + f0(BSL1) + "～" + f0(BSL2)
                               End If
                           
                           
                           BSr$ = "+r" + F9(BS_r)
                           Select Case BS_r
                           Case 0:  Data1$ = Fook1$ + "+" + BBS_D$ + FP1(BS_B) + "+" + BBS_D$ + Fook2$
                           Case Else:  Data1$ = Fook1$ + "+" + BBS_D$ + FP1(BS_B2) + BSr$ + BBS_D2$ + Fook2$
                           End Select
                           
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_Spit数("B01")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_0_1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B01"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
                           If InStr(鉄筋_D$, "～") > 0 Then 表鉄筋適用$ = "(平均長)"
                           
        
        
        Case "BS1R", "B01R":      '梁 下ｽﾀｰﾗｯﾌﾟ  ﾘﾊﾞｰｽ  B01=D22_K98_B1618_H2292+F_r160        ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           D1$ = F_RAN(.BS1):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(1): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 下ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_B = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 下ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           BS_r = 鉄筋_r
                           BS_D2 = BS_D - BS_r: If BS_D2 <= 0 Then BS_D2 = 0
                           BS_B2 = BS_B - BS_r: If BS_B2 <= 0 Then BS_B2 = 0
        
                           BSr$ = "+r" + F9(BS_r)
                           Select Case BS_r
                           Case 0:  Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Case Else:  Data1$ = Fook1$ + FP1(BS_D2) + BSr$ + FP1(BS_B2) + FP1(BS_D) + Fook2$
                           End Select
                           
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_Spit数("B01")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           
                           鉄筋_○_符号$ = "B_0_1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
        
        Case "BS2", "B02":       '梁 上端 両側  ｽﾀｰﾗｯﾌﾟ   B02=D22_K98_B1618_HF+440              ' 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           D1$ = F_RAN(.BS2):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_B = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_Spit数("B02")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_0_2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B02"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "B03":      '梁 下ｽﾀｰﾗｯﾌﾟ  ｽﾄｯﾊﾟ外側  B01=D22_K98_B1618_H2292+F_r160        ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           D1$ = F_RAN(.BS2):    Call 橋脚_鉄筋_ck("*", D1$)
                           KLL = 鉄筋_SK位置
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_B = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           
                           BS_B = Stoper位置_端開きY - KLL - 鉄筋_Stoper開き2
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_Spit数("B03")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_0_3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B03"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "B04":      '梁 下ｽﾀｰﾗｯﾌﾟ  ｽﾄｯﾊﾟ内側  B01=D22_K98_B1618_H2292+F_r160        ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BS2):    Call 橋脚_鉄筋_ck("*", D1$)
                           KLL = 鉄筋_SK位置
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           
                           BS_B = Stoper位置_開きY - 2 * 鉄筋_Stoper開き2
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           鉄筋P_Σ数 = P_Spit数("B04")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_0_4"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B04"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "BS3", "B5-1":       '梁上端 柱内ｽﾀｰﾗｯﾌﾟ  B03=D16_K98_B2776_H500                ' 柱内ｽﾀｰﾗｯﾌﾟ
                           D1$ = F_RAN(.BS3):    Call 橋脚_鉄筋_ck("*", D1$)
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_B = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
        
                           鉄筋P_Σ数 = P_Spit数("B5-1")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _5-1"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B5-1"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "B5-2":       '梁上端 柱内ｽﾀｰﾗｯﾌﾟ   ｽﾄｯﾊﾟ外側 B03=D16_K98_B2776_H500                ' 柱内ｽﾀｰﾗｯﾌﾟ
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           D1$ = F_RAN(.BS3):    Call 橋脚_鉄筋_ck("*", D1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(2): Fook1$ = ";F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           Data1$ = 鉄筋_B$: Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           Select Case 鉄筋L_Data数
                           Case 1: BS_B = 鉄筋L_L(1)
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
                           KLL = (.BY - BS_B) / 2
                           BS_B = Stoper位置_端開きY - KLL - 鉄筋_Stoper開き1
                           
                           If BS_B <= 0 Then BS_B = 99  '***** ????? ####
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$): If 世er <> "" And 世誤CK > 99 Then Stop
                           鉄筋P_Σ数 = P_Spit数("B5-2")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(2 * 鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _5-2"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B5-2"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 2 * 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        
        Case "B5-3":       '梁上端 柱内ｽﾀｰﾗｯﾌﾟ   ｽﾄｯﾊﾟ内側 B03=D16_K98_B2776_H500                ' 柱内ｽﾀｰﾗｯﾌﾟ
                           D1$ = F_RAN(.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
                           D1$ = F_RAN(.BS3):    Call 橋脚_鉄筋_ck("*", D1$)
                           Data1$ = 鉄筋_D$: Call 橋脚_鉄筋_L_ck(Data1$)
                           Select Case 鉄筋L_Data数
                           Case 1: BS_D = 鉄筋L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = 鉄筋L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: 世er = "橋脚_梁 項目 梁 上ｽﾀｰﾗｯﾌﾟ [" + 項目$ + "] Data数があわない":  If 世誤CK > 99 Then Stop
                           End Select
        
                           BS_B = Stoper位置_開きY - 2 * 鉄筋_Stoper開き1
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call 橋脚_鉄筋_L_ck(Data1$)
                           鉄筋P_Σ数 = P_Spit数("B5-3")
                           Σ数$ = F9(鉄筋P_Σ数): Σ数2$ = F9(鉄筋P_Σ数)
                           鉄筋_○_符号$ = "B_ _5-3"
                           鉄筋_○_符号1$ = 鉄筋_径$
                           鉄筋_○_符号2$ = Σ数$ + "-" + 鉄筋_径$
                           鉄筋_○_符号3$ = Σ数2$ + "-" + 鉄筋_径$ + " x " + F橋2(鉄筋L_ΣL(1) + 鉄筋L_ΣL(3))
                           
                           表符号$ = "B5-3"
                           表鉄筋径$ = 鉄筋_径$: 表鉄筋本数 = 鉄筋P_Σ数: 表鉄筋L = 鉄筋L_ΣL(1) + 鉄筋L_ΣL(3)
                           表鉄筋適用$ = "": 表鉄筋材質$ = 鉄筋_種別$
                           表鉄筋W箇所 = 表鉄筋本数 * 鉄筋L_W数: 表鉄筋K箇所 = 表鉄筋本数 * 鉄筋L_K数
        
        Case "SPIT":       'Spit=500+13x150+23x200+13x150
                           D1$ = F_RAN(.BSpit): Call 橋脚_鉄筋_Pit_ck(D1$)
        
        Case Else: 世er = "System 橋脚_梁 項目 [" + 項目$ + "] が無い": er (""): If 世誤CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": 橋脚_梁 = D11
        Case Else:  橋脚_梁 = D1$
        End Select
        
     End With
    
     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop
     End Function
Function P_Spit数(項目$)
     'ｽﾀｰﾗｯﾌﾟの個数  B01,B02,B03,B04  B5
      D1$ = F_RAN(土木橋脚_梁.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
      D1$ = F_RAN(土木橋脚_梁.BSpit): Call 橋脚_鉄筋_Pit_ck(D1$)
        梁位置数 = 0: 梁Stoper位置数 = 0
        柱位置数 = 0: 柱Stoper位置数 = 0
        
        For ii = 1 To 鉄筋P_Σ数
           X00 = -土木橋脚_梁.BXL + 鉄筋P_位置(ii)
           Select Case X00
           Case Is < -土木橋脚_柱.BXL:  梁位置数 = 梁位置数 + 1
                             If FP_Stoper_X位置(X00) <> "" Then 梁Stoper位置数 = 梁Stoper位置数 + 1
           
           Case Is <= 土木橋脚_柱.BXR:   柱位置数 = 柱位置数 + 1
                             If FP_Stoper_X位置(X00) <> "" Then 柱Stoper位置数 = 柱Stoper位置数 + 1
           
           Case Else:
           End Select
           Next ii

      Select Case 項目$
      Case "B01":   P_Spit数 = 2 * 梁位置数
      Case "B02":   P_Spit数 = 2 * (梁位置数 - 梁Stoper位置数)
      Case "B03":   P_Spit数 = 2 * 梁Stoper位置数
      Case "B04":   P_Spit数 = 2 * 梁Stoper位置数

      Case "B5-1":   P_Spit数 = (柱位置数 - 柱Stoper位置数)
      Case "B5-2":   P_Spit数 = 柱Stoper位置数
      Case "B5-3":   P_Spit数 = 柱Stoper位置数

      Case Else: P_Spit数 = 0
      End Select

    End Function

Function P_B2_数(項目$, Bpit$)
     ' B2-1, B2-2, B2-3 の個数
      D1$ = F_RAN(土木橋脚_梁.Stoper位置): Call 橋脚_Stoper位置_ck(D1$)
      D1$ = Bpit$: Call 橋脚_鉄筋_Pit_ck(D1$)
        B2_1数 = 0: B2_2数 = 0
        
        For ii = 1 To 鉄筋P_Σ数
           Y00 = -土木橋脚_梁.BYL + 鉄筋P_位置(ii)
           If FP_Stoper_Y位置(Y00) <> "" Then B2_2数 = B2_2数 + 1
           Next ii

      Select Case 項目$
      Case "B2-1":   P_B2_数 = 鉄筋P_Σ数 - B2_2数
      Case "B2-2":   P_B2_数 = 2 * B2_2数
      Case "B2-3":
                     NN1 = (Stoper位置_Data数 / 2) - 1
                     P_B2_数 = B2_2数 * NN1
      Case Else: P_B2_数 = 0
      End Select

    End Function

Function P_B42_数()
    '[[[   側鉄筋  ]]]
       P_B42_数 = 0
          '    D1$ = 橋脚_梁("B側1")
               
               横被り11 = 鉄筋_SK位置
               左梁角度11 = Calu角度(0, 0, 土木橋脚_梁.BXL2, 土木橋脚_梁.H1)
               Y_CK11 = -土木橋脚_梁.H + 土木橋脚_梁.H1 + 横被り11 / Dcos(左梁角度11)
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

     
     EMS0 = "土木橋脚 図Data Read": EMS1 = "": EMS2 = ""
       
       
             If 杭_No_Max = 0 Then 世er = "杭ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 基礎_No_Max = 0 Then 世er = "基礎ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 柱_No_Max = 0 Then 世er = "柱ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If Stoper_No_Max = 0 Then 世er = "ｽﾄｯﾊﾟ ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 沓座_No_Max = 0 Then 世er = "沓座ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
             If 梁_No_Max = 0 Then 世er = "梁ﾃﾞｰﾀｰの入力が有りません":   If 世誤CK > 99 Then Stop
        
        If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     
        図_杭_No = 1: 図_基礎_No = 1: 図_柱_No = 1:  図_梁_No = 1
       
        橋脚図_基本設定数 = 0
     
     Open Temp$ For Input As #2
       
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
     
            Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
        Select Case UCase$(項目2s$)
        Case "/END": Exit Do
        Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
        Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
        
        Case "/基本設定":    Call 土木_橋脚_基本設定(Da$): INP$ = "N"
        Case "/用紙":        Call 土木_橋脚_用紙(Da$):
        Case "/枠":          Call 土木_橋脚_枠(Da$): INP$ = "N"
        
        Case "/原点表示":              橋脚原点表示$ = "Y"
        Case "/LAYER":
        
        Case "/DXF":         Call 土木_橋脚_DXF(Da$): INP$ = "N"
     
        Case Else: 世er = "ｺﾏﾝﾄﾞ位置でﾞ(" + Da$ + ")は 理解できません":  If 世誤CK > 99 Then Stop
        End Select
        
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

     If 図面枠Data_max = 0 Then Exit Sub
     'Call PROTER初期値: Call Dレイヤ番号(レイヤ番号)
     For ii = 1 To 図面枠Data_max
         Da$ = 図面枠Data$(ii)
         ni = InStr(Da$, "?")
         If ni > 0 Then
             Do
             ni1 = InStr(Da$, "?図名?"):   If ni1 > 0 Then Da$ = Mid$(Da$, 1, ni1 - 1) + 図_名称$ + Mid$(Da$, ni1 + 4)
             ni2 = InStr(Da$, "?図番?"):   If ni2 > 0 Then Da$ = Mid$(Da$, 1, ni2 - 1) + 図番号$ + Mid$(Da$, ni2 + 4)
             ni3 = InStr(Da$, "?縮尺?"):   If ni3 > 0 Then Da$ = Mid$(Da$, 1, ni3 - 1) + 縮尺$ + Mid$(Da$, ni3 + 4)
             If ni1 + ni2 + ni3 = 0 Then Exit Do
             Loop
             End If
         Print #60, Da$
         Next ii
     
     End Sub



'┌─────────────────────────────────────────────┐
'│■ 土木_橋脚_基本設定     　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_基本設定(Da$)
   
    EMS1 = "作図Data  基本設定"
   
     Do
                 Line Input #2, Da$
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
             
             Select Case UCase$(項目s$)
             Case "/", ".": Exit Do
             Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             'Case "寸端部=":   '  Print #60, "[基本設定:" + Da$ + "]"
             'Case "寸法Msize":  '   Print #60, "[基本設定:" + Da$ + "]"
             Case "用紙=":
                       Select Case 項目3s$
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
     Dxf_No = Dxf_No + 1
     橋脚_図形項目$ = ""
     
     EMS1 = "作図Data  Dxf no=" + F9(Dxf_No) + "  "
     
     Line Input #2, 土木_橋脚_DXF_F名$: EMS1 = "作図Data  " + 土木_橋脚_DXF_F名$ + "  "

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
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
             Select Case 項目s$
             Case "/": Exit Do
             Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             
             
             
             Case "原点=":        Call Ddata(",", 項目3s$, Ds$(), Di(), ni)
                                  If ni <> 2 Then 世er = " 原点=X0,Y0 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                  原点X = Di(1): 原点Y = Di(2)
                                  Call 図_原点(原点X, 原点Y)
                                  現作図_Scale = 図基本_Scale
             
             Case "S=", "s=":     Print #60, "[Scaleｻﾌﾞ:" + Mid(項目3s$, 3) + "]"
                                  現作図_Scale = Val(Mid(項目3s$, 3))
                                    If 現作図_Scale <= 0 Then 世er = " S=1/___ でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                    '       Case "Scaleﾘｾｯﾄ":   Sub_図_Scale = ZU_Scale

             Case "図形項目=":    橋脚_図形項目$ = 項目3s$
                                  Select Case 橋脚_図形項目$
                                  Case "杭", "基礎", "柱", "沓座", "梁":
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
'│■ 土木_橋脚_作図(Da$)    　　### 　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 土木_橋脚_作図(橋脚_図形項目$, Da$)
     格項目$ = Mid(Da$, 2)
     EMS2 = "作図  [" + 橋脚_図形項目$ + "]"
     
     
           Call 橋脚_杭_Get(図_杭_No)
           Call 橋脚_基礎_Get(図_基礎_No)
           Call 橋脚_柱_Get(図_柱_No)
           Call 橋脚_梁_Get(図_梁_No)
     
     
      'Print #60, "[Msize:2.5]"
      Print #60, "[色:白]\[con:]"
     
     Select Case 橋脚_図形項目$
     Case "杭"
                   Select Case 格項目$
                   Case "配筋図":           Call P_杭_配筋図
                   Case "K1":               Call P_杭_K1(格項目$)
                   Case "K2":               Call P_杭_K1(格項目$)
                   Case "断面a-a":          Call P_杭_断面A
                   Case "断面a-a配筋図":    Call P_杭_断面A配筋図
                   Case "断面b-b":          Call P_杭_断面B
                   Case "断面b-b配筋図":    Call P_杭_断面B配筋図
                   Case "K01":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_杭_Hoop("組立筋")
                   Case "K02":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_杭_Hoop底: '("KH2")
                   Case "K03":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_杭_Hoop("HOOP1")
                   Case "K04":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_杭_Hoop("HOOP2")
                   Case "K05":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_杭_Hoop("HOOP3")
                   Case "帯鉄筋継手詳細図": Call P_杭_帯鉄筋継手詳細図
                   Case "ｽﾍﾟｰｻｰ詳細図":     Call P_杭_スペーサー詳細図
                   Case "かぶり詳細図":     Call P_杭_かぶり詳細図
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "基礎"
                   Select Case 格項目$
                   Case "配筋図":           Call P_基礎_配筋図
                   Case "断面a-a":          Call P_基礎_断面A
                   Case "断面b-b":          Call P_基礎_断面B
                   Case "F1":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F1
                   Case "F2":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F2
                   Case "F3":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F3
                   Case "f1":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_sf1
                   Case "f2":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_sf2
                   Case "f3":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_sf3
                   Case "F11":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F11
                   Case "F12":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F12
                   Case "F13":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F13
                   Case "F14":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_基礎_F14
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "沓座"
                   Select Case 格項目$
                   Case "断面A-A":          Call 沓座_断面A_A
                   Case "断面B-C":          Call 沓座_断面BC
                   Case "断面D-D":          Call P_沓座_断面D
                   Case "断面H-H":          Call P_沓座_断面H
                   Case "断面E-E":          Call P_沓座_断面E
                   Case "断面F-G":          Call P_沓座_断面FG
                   Case "無収縮ﾓﾙﾀﾙ詳細図": Call P_沓座_無収縮モルタル詳細図
                   Case "S1":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_沓座_S1
                   Case "S2":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_沓座_S2
                   Case "H1":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_沓座_H1
                   Case "H2":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_沓座_H2
                   Case "H3":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_沓座_H3
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case "柱"
                   Select Case 格項目$
                   Case "断面A-B":          Call P_柱_断面AB
                   Case "断面C-D":          Call P_柱_断面CD
                   Case "断面a-a":          Call P_柱_断面AA
                   Case "断面b-b":          Call P_柱_断面BB
                   Case "断面b-b鉄筋配筋図":          Call P_柱_断面BB鉄筋配筋図
                   Case "C1":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_Cn(格項目$)
                   Case "C2":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_Cn(格項目$)
                   Case "C3":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_Cn(格項目$)
                   Case "C4":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_Cn(格項目$)
                   Case "C5":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_Cn(格項目$)
                   Case "C6":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_Cn(格項目$)
                   Case "CK":               Print #60, "[色:黄]\[ﾚ:鉄筋加工図]": Call P_柱_CK: '  Call P_柱_C5
                   
                   Case "c1-X":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c1_X
                   Case "c1-Y":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c1_Y
                   
                   Case "c2-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c2_1
                   Case "c2-2":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c2_2
                   
                   Case "c3-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c3_1
                   Case "c3-2":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c3_2
                   Case "c3-3":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_柱_c3_3
                   
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     
     
     
     Case "梁"
                   
                   Select Case 格項目$
                   Case "断面A-A":          Call P_梁_断面a
                   Case "断面B-B":          Call P_梁_断面B
                   Case "断面C-C":          Call P_梁_断面C
                   Case "断面a-a":          Call P_梁_断面sa
                   Case "断面a-a鉄筋配筋図": Call P_梁_断面sa鉄筋配筋図
                   
                   Case "B1-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B1("BR1")
                   Case "B1-2":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B1("BR2")
                   
                   Case "B2-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B2_1
                   Case "B2-2":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B2_2
                   Case "B2-3":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B2_3
                   
                   Case "B3-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B3_1
                   Case "B4-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B4_1
                   Case "B4-2":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B4_2
                   Case "B5-1":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B5_1
                   Case "B5-2":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B5_2
                   Case "B5-3":             Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B5_3
                   Case "B01":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B01
                   Case "B02":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B02
                   Case "B03":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B03
                   Case "B04":              Print #60, "[色:黄]\[ﾚ:鉄筋加工図]":  Call P_梁_B04
                   Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                   End Select
     
     Case Else: 世er = " 図形項目 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
     End Select

     If 世er <> "" Then er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     End Sub

'┌─────────────────────────────────────────────┐
'│■ 杭         作図                  　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘

Sub P_杭_配筋図()
           ReDim Dss$(50), 主筋No(500) As Integer
           ReDim 組立筋位置(40) As Integer
           ReDim 主筋Y位置(200) As Single
           ReDim Hoop_X(900) As Single
           ReDim Xpit(900) As Single, Ypit(900) As Single
           
            ReDim 表示X_位置(905) As Single
           
           
           'Print #60, UXF_点()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      
      
     With 土木橋脚_杭
      
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit: Mark_D3 = Mark_D2 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 杭躯体 ]]]
            D1$ = 橋脚_杭("D"):  杭D = 躯体_D(1)
            D1$ = 橋脚_杭("L"):  杭L = 躯体_D(1)

            Print #60, "   " + Uxf_P(0, 杭D / 2) + "\" + Uxf_線(杭L, 0) + "\" + Uxf_線(0, -杭D) + "\" + Uxf_線(-杭L, 0)
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            HU = 土木橋脚_基礎.H_U
            HD = 土木橋脚_基礎.H_D
            BYL = 土木橋脚_基礎.BYL
            KX1 = Abs(杭位置_X(1)): KY1 = Abs(杭位置_Y(1))
            
            X1 = -HU - HD: X2 = -HD: X3 = 0
            Y1 = -杭D
            Y3 = BYL - KY1
            Print #60, "[P:" + FD2(X3, Y1) + "]\[L:" + FD2(0, -Y1 - 杭D / 2) + "]\[p:" + FD2(0, 杭D) + "]"
            Print #60, "[L:" + FD2(0, Y3 - 杭D / 2) + "|" + FD2(-HD, 0) + "|" + FD2(-HU, -(Y3 - Y1)) + "]"
              
              Print #60, "[切断M1:" + FD6(X1, Y1, X3, Y1, 5, 3) + "]"
            
            

      
      
      
      '[[[ 表示X 座標  ]]]
              上_LL = 10 * 現作図_Scale
                D1$ = 橋脚_杭("K1")
                鉄筋定着 = 鉄筋_S定着: 鉄筋ΣL = 鉄筋L_全ΣL
            
            Hoop$ = 橋脚_杭("HOOP"): n9 = 鉄筋P_Σ数: 組立筋n = 0
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
                   表示X_AA断面 = (鉄筋P_位置(ni6) + 鉄筋P_位置(ni6 - 1)) / 2 + 鉄筋_Z位置
                   
                   表示X_bb断面 = (鉄筋P_位置(n9 - 1) + 鉄筋P_位置(n9)) / 2 + 鉄筋_Z位置
    
      '[[[ 表示Y 座標  ]]]
             ' 左_LL = 20 * 現作図_Scale
              
                  主筋種類数 = 橋脚_杭("K数")
                  主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                  主筋角度 = 360 / 主筋本数
                  YN1 = 0: 角度 = 0: D1$ = 橋脚_杭("K1"): 鉄筋r = 杭D / 2 - 鉄筋_SK位置
                  For ii = 1 To 主筋本数 / 2 + 1:
                        主筋Y位置(ii) = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                        If YN1 = 0 And 主筋Y位置(ii) <= 0 Then YN1 = ii
                  Next ii
              
                  表示Y_1 = (主筋Y位置(YN1) + 主筋Y位置(YN1 - 1)) / 2
                  表示Y_2 = (主筋Y位置(YN1) + 主筋Y位置(YN1 + 1)) / 2
      
      '[[[ 断面位置指定 ]]]
             X1 = 表示X_AA断面: Y1 = 杭D / 2 + 上_LL
             X2 = X1: Y2 = -Y1
             Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "ａ", "ａ", 0)
      
             X1 = 表示X_bb断面: Y1 = 杭D / 2 + 上_LL
             X2 = X1: Y2 = -Y1
             Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "ｂ", "ｂ", 0)
      
      
      
      
      '[[[ 主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            KNO = 0
            For ii = 1 To 主筋本数:  KNO = KNO + 1: If KNO > 主筋種類数 Then KNO = 1
                主筋No(ii) = KNO
                Next ii
            角度 = 0
            For ii = 1 To 主筋本数 / 2 + 1: 項目$ = "K" + F9(主筋No(ii))
                D1$ = 橋脚_杭(項目$)
                鉄筋定着 = 鉄筋_S定着: 鉄筋ΣL = 鉄筋L_全ΣL
                鉄筋r = 杭D / 2 - 鉄筋_SK位置
                X0 = -鉄筋定着:       Y0 = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                Moj$ = "杭": If Y0 < 0 Then Moj$ = "杭-"
                Call P_橋脚_鉄筋図(Moj$, "U", "+", X0, Y0)
                Next ii
            Print #60, "[色:白]"
                
      
      '[[[ 主筋 Mark 1 ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            
            For Kii = 1 To 2
            
                表示X = 表示X_K1
                If Kii = 2 Then 表示X = 表示X_K3
            For 主筋i = 1 To 3
            '主筋種類数 = 橋脚_杭("K数")
            '主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": ER (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
                  
                  Select Case 主筋i
                  Case 1:  D1$ = 橋脚_杭("K1"):   X0 = (表示X_位置(表示X) + 表示X_位置(表示X + 1)) / 2: Y2 = -杭D / 2 - Mark_D1
                  Case 2:  D1$ = 橋脚_杭("K2"):   X0 = (表示X_位置(表示X) + 表示X_位置(表示X - 1)) / 2: Y2 = -杭D / 2 - Mark_D2
                  Case 3:  D1$ = 橋脚_杭("K3"):   X0 = (表示X_位置(表示X - 1) + 表示X_位置(表示X - 2)) / 2: Y2 = -杭D / 2 - Mark_D3
                  End Select
                 
                 If D1$ = "" Then Exit For
                 X1 = X0:
                 LLL1 = 鉄筋L_XL - 鉄筋_S定着: If X1 > LLL1 Then Exit For
                 n11 = P_杭_K_n(X1)
                        鉄筋_○_符号$ = 鉄筋_○_符号$ + "-" + F9(n11)
                        ni = InStr(鉄筋_○_符号2$, "-")
                        符号2$ = Mid(鉄筋_○_符号2$, 1, ni)
                        鉄筋_○_符号2$ = 符号2$ + 橋脚鉄筋径$(n11)
                 
                 角度 = 0: 主筋数 = 0:  鉄筋r = 杭D / 2 - 鉄筋_SK位置
            
                 For ii = 1 To 主筋本数 / 2 + 1:  Y0 = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                     If 主筋i = 主筋No(ii) Then 主筋数 = 主筋数 + 1: 主筋Y位置(主筋数) = Y0
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
            
            Next 主筋i
            Next Kii
      
      '[[[ ﾌｰﾌﾟ ]]]
            Hoop$ = 橋脚_杭("HOOP")
            Print #60, "[色:空]\[ﾚ:Hoop]"
                 KH_D = 鉄筋_SH径:  Y1 = -KH_D / 2: Y2 = KH_D / 2
                 For ii = 1 To 鉄筋P_Σ数
                         If 橋脚_鉄筋_Mark$(ii) = "*" Then Print #60, "[色:紫]"
                         XX = 鉄筋_Z位置 + 鉄筋P_位置(ii): Print #60, "     [Li:" + FD4(XX, Y1, XX, Y2) + "]"
                         If 橋脚_鉄筋_Mark$(ii) = "*" Then Print #60, "[色:空]"
                 Next ii
           
   
      '[[[ ﾌｰﾌﾟMark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                 '           6
                 '    1    2 3 4        5
                 
            For Hpi = 1 To 2
                 Hoop$ = 橋脚_杭("HOOP")
                 Select Case Hpi
                 Case 1: Hoop数 = .Hoop1数: 杭Hp$ = "1": X0 = 表示X_Hoop1: DY = -1: Y6 = -杭D / 2 - Mark_D1
                 Case 2: Hoop数 = .Hoop2数: 杭Hp$ = "2": X0 = 表示X_Hoop2: DY = 1: Y6 = 杭D / 2 + Mark_U1
                 Case 3: Hoop数 = .Hoop3数: 杭Hp$ = "3"
                 End Select
            
                 
                 X3 = X0: X2 = X0 - 1 * 現作図_Scale: X4 = X0 + 1 * 現作図_Scale
                 Y3 = 表示Y_2 + DY * 現作図_Scale
                       Hoop1数 = 0
                       For ii = 1 To 鉄筋P_Σ数
                         If 橋脚_鉄筋_Mark$(ii) = 杭Hp$ Then Hoop1数 = Hoop1数 + 1: Hoop_X(Hoop1数) = 鉄筋_Z位置 + 鉄筋P_位置(ii)
                          Next ii
                       
                       Start_Hp = 0
                       For i2 = 1 To Hoop1数: If Start_Hp = 0 And Hoop_X(i2) > X0 Then Start_Hp = i2
                       Xpit(i2) = Hoop_X(i2 + 1) - Hoop_X(i2)
                       Next i2
                 
                       X1 = Hoop_X(1): Y1 = 表示Y_2
                       D2$ = ""
                       For i3 = 1 To Start_Hp - 2: D2$ = D2$ + "+" + F9(Xpit(i3)): Next i3
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0," + Mid(D2$, 2) + "]"
      
                       X5 = Hoop_X(Hoop1数): Y1 = 表示Y_2
                       D2$ = ""
                       For i3 = Hoop1数 To Start_Hp + 1 Step -1: D2$ = D2$ + "+" + F9(Xpit(i3 - 1)): Next i3
                       Print #60, "[P:" + FD2(X5, Y1) + "]\[<:180," + Mid(D2$, 2) + "]"
      
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, 0) + "|" + FD2(X3 - X2, Y3 - Y1) + "|" + FD2(X4 - X3, Y1 - Y3) + "|" + FD2(X5 - X4, 0) + "]"
                 X6 = X3: ' Y6 = -杭D / 2 - Mark_U1
                  D1$ = 橋脚_杭("Hoop" + 杭Hp$)
                 Print #60, "[P:" + FD2(X3, Y3) + "]\[L:" + FD2(0, Y6 - Y3) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                  Call P_鉄筋_○名称(2)
      
      
      
             Next Hpi
      
      
      
      '[[[ 組立筋ﾌｰﾌﾟ Mark ]]]
                 '           6
                 '    1    2 3 4        5
                 Hoop$ = 橋脚_杭("HOOP")
                 X3 = 表示X_組立筋: X2 = X3 - 1 * 現作図_Scale: X4 = X3 + 1 * 現作図_Scale
                 Y3 = 表示Y_1 + 1 * 現作図_Scale
                 X1 = 鉄筋P_位置(組立筋位置(1)) + 鉄筋_Z位置: Y1 = 表示Y_1
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
   
                 D2$ = ""
                 For ii = 組立筋n To 3 Step -1
                      XL = 鉄筋P_位置(組立筋位置(ii)) - 鉄筋P_位置(組立筋位置(ii - 1))
                      D2$ = D2$ + "+" + F9(XL)
                      Next ii
                 X5 = 鉄筋P_位置(組立筋位置(組立筋n)) + 鉄筋_Z位置
                 Print #60, "[P:" + FD2(X5, Y1) + "]\[<:180," + Mid(D2$, 2) + "]"
                 
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, 0) + "|" + FD2(X3 - X2, Y3 - Y1) + "|" + FD2(X4 - X3, Y1 - Y3) + "|" + FD2(X5 - X4, 0) + "]"
                 X6 = X3: Y6 = 杭D / 2 + Mark_U1
                  D1$ = 橋脚_杭("組立筋")
                 Print #60, "[P:" + FD2(X3, Y3) + "]\[L:" + FD2(0, Y6 - Y3) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                  Call P_鉄筋_○名称(2)
   
   
   
   
      '[[[ 寸法  長さ ]]]
           D1$ = 橋脚_基礎("H"): 基礎H1 = 躯体_D(1): 基礎H2 = 躯体_D(2)
           寸法位置1 = 寸法線位置_杭長断面.U開き
           補1 = 9: 補2 = 寸法位置1 - 1
           Print #60, "  [P:" + FD2(-基礎H1, 寸法位置1 * 現作図_Scale + 杭D / 2) + "]"
           Print #60, "  [寸:" + F9(-補1) + ":" + FD3(基礎H1, 0, -補1) + "|" + FD3(杭L, 0, -補2) + "]"
   
       '[[[ Hoop 寸法 ]]]
            Hoop$ = 橋脚_杭("HOOP")
            
            寸法位置1 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図
            D01$ = ""
            補1 = 寸法位置1 - 1
            
                 Print #60, "  [P:" + FD2(鉄筋_Z位置, 寸法位置1 * 現作図_Scale + 杭D / 2) + "]"
                 For ii = 1 To 鉄筋P_Data数:
                      Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                      If Moj$ <> "0" Then D01$ = D01$ + "|" + FD3(鉄筋P_L(ii), 0, -補1) + "," + Moj$
                      Next ii
                 Print #60, "[寸:" + Mid(D01$, 2) + "]"
   
   
       '[[[ ｽﾍﾟｰｻ寸法 ]]]
            寸法位置1 = 寸法位置1 - 橋脚_寸法線_Pit_躯体図
            補1 = 寸法位置1 - 1
                 Print #60, "  [P:" + FD2(-鉄筋定着, 寸法位置1 * 現作図_Scale + 杭D / 2) + "]"
            '     S1=18-φ13-SR235_n6_L50+95+95+50_H70_@500+5000+5000            ' n ｽﾍﾟｰｻｰ箇所=6
             Speser数 = 橋脚_杭("ｽﾍﾟｰｻ数")
             D1$ = 橋脚_杭("ｽﾍﾟｰｻ1")
                 D01$ = FD2(鉄筋定着, 0)
                 For ii = 1 To 鉄筋P_Data数: Moj$ = 鉄筋P_Data$(ii)
                      Select Case 鉄筋P_L(ii)
                      Case 0:
                      Case Is < 0:      Print #60, "[p:" + FD2(鉄筋P_L(ii), 0) + "]"
                      Case Else:        If 鉄筋P_n(ii) > 1 Then Moj$ = Moj$ + "=" + F9(鉄筋P_L(ii))
                                        D01$ = D01$ + "|" + FD3(鉄筋P_L(ii), 0, -補1) + "," + Moj$
                      End Select
                      Next ii
                 Print #60, "[寸:" + F9(-補1) + ":" + D01$ + "]"
             
       '[[[ ｽﾍﾟｰｻ図 ]]]
             For Kii = 1 To Speser数
                 D1$ = 橋脚_杭("ｽﾍﾟｰｻ" + F9(Kii)): S_H = Val(鉄筋_H$)
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
   
           D1$ = 橋脚_杭("K1"): 主筋_dt = 鉄筋_SK位置
           寸法位置1 = 寸法線位置_杭長断面.R開き - 橋脚_寸法線_Pit_躯体図:  補1 = 寸法位置1 - 1
           Print #60, "  [P:" + FD2(杭L + 寸法位置1 * 現作図_Scale, -杭D / 2) + "]"
           Print #60, "  [寸:" + FD3(0, 主筋_dt, 補1) + "|" + FD3(0, 杭D - 2 * 主筋_dt, 補1) + "|" + FD2(0, 主筋_dt) + "]"
   
     End With
   'Stop
     End Sub

Sub P_杭_K1(図形項目$)
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
                '項目$ = "K1"
                
                
       D1$ = 橋脚_杭(図形項目$)
                
                符号$ = 鉄筋_○_符号$
                
                符号2$ = 鉄筋_○_符号2$
                ni = InStr(符号2$, "-")
                符号2$ = Mid(符号2$, 1, ni)
                
                ' 鉄筋_S定着: 鉄筋L_XL-鉄筋_S定着
                '鉄筋r = 杭D / 2 - 鉄筋_SK位置
                XX = -鉄筋_S定着
     
     橋脚_鉄筋θ = 0:  Call P_橋脚_鉄筋図("Y", "", "", XX, 0)
                
                
      n11 = 0: Y1 = -15 * 現作図_Scale
      For ii = 1 To 鉄筋L_Data数
           If 鉄筋L_Type$(ii) = "L" Then
            n11 = n11 + 1
            LLL1 = 鉄筋L_L(ii)
            X1 = 鉄筋L_X(ii) + 0.3 * LLL1
            鉄筋_○_符号$ = 符号$ + "-" + F9(n11)
            鉄筋_○_符号3$ = 符号2$ + 橋脚鉄筋径$(ii) + " x " + F9(LLL1)
                  Print #60, "[P:" + FD2(X1, Y1) + "]"
                  Call P_鉄筋_○名称(3)
     
           End If
           Next ii
     
     End Sub

Function P_杭_K_n(LLL)
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



Sub P_杭_断面A()
           ReDim 主筋No(500) As Integer

     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ")
      
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1$ = 橋脚_杭("D"):  杭D = 躯体_D(1): Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
      '[[[ ﾌｰﾌﾟ KO1 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径:   Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
            
            '[[[ Come ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            角度 = 20: X1 = -KH_D * Dcos(角度) / 2: Y1 = -KH_D * Dsin(角度) / 2
            Print #60, "    [P:" + FD2(X1, Y1) + "]\[矢:-15,-8|" + F9(-名称_L1) + ",0]\[pm:5,0]"
            Call P_鉄筋_○名称(1)
      
      '[[[ 主筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            KNO = 0
            For ii = 1 To 主筋本数:  KNO = KNO + 1: If KNO > 主筋種類数 Then KNO = 1
                主筋No(ii) = KNO
                Next ii
            角度 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(主筋No(ii))
                D1$ = 橋脚_杭(項目$)
                鉄筋r = 杭D / 2 - 鉄筋_SK位置
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                Print #60, "   [P:" + FD2(XX, YY) + "]\[橋脚鉄筋:" + 橋脚鉄筋径$(1) + "]"
                Next ii
     
     '[[[ ｽﾍﾟｰｻ ]]]
            Print #60, "[色:白]\[ﾚ:ETC]"
           D1$ = 橋脚_杭("ｽﾍﾟｰｻ1"): Spe_n = Val(鉄筋_n$): If Spe_n = 0 Then Spe_n = 6
           Spe_角度 = 360 / Spe_n
           For ii = 1 To Spe_n
               角度1 = 角度1
               X1 = KH_D * Dcos(90 - 角度) / 2: Y1 = KH_D * Dsin(90 - 角度) / 2
               X2 = 杭D * Dcos(90 - 角度) / 2: Y2 = 杭D * Dsin(90 - 角度) / 2
               Print #60, "     [Li:" + FD4(X1, Y1, X2, Y2) + "]"
               
               If ii = 3 Then
                      '[[[ Come ]]]
                      Print #60, "[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]"
                      Moj$ = "(n=" + F9(Spe_n) + ")"
                      Print #60, "    [P:" + FD2((X1 + X2) / 2, (Y1 + Y2) / 2) + "]\[矢:15,12|25,0,スペーサー ,R]"
                      Print #60, "   [pm:-20,-4.5]\" + Moj$
                      End If
               角度 = 角度 + Spe_角度
               Next ii
     
      '[[[ 寸法 ]]]
           Hoop_dt = (杭D - KH_D) / 2
                D1$ = 橋脚_杭("K" + F9(主筋No(1)))
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
                  '角度 = 27: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj1$ + "]"
                  '角度 = 15: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj2$ + "]"
                  '角度 = 0: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj3$ + "]"
                  '角度 = 17: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj5$ + "]"
                  '角度 = 30: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj6$ + "]"
                  
                  角度 = 32: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj1$ + "]"
                  角度 = 19: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj2$ + "]"
                  角度 = 0: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj3$ + "]"
                  角度 = 21: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj5$ + "]"
                  角度 = 38: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj6$ + "]"
     
     
     End Sub
Sub P_杭_断面A配筋図()
           ReDim 主筋No(500) As Integer

     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ鉄筋配筋図")
      
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1$ = 橋脚_杭("D"):  杭D = 躯体_D(1)
            Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
      '[[[ ﾌｰﾌﾟ KO1 組立筋 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径
            Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
     
     '[[[ ｽﾍﾟｰｻ ]]]
            Print #60, "[色:白]\[ﾚ:ETC]"
           D1$ = 橋脚_杭("ｽﾍﾟｰｻ1"): Spe_n = Val(鉄筋_n$): If Spe_n = 0 Then Spe_n = 6
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
            主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            KNO = 0
            For ii = 1 To 主筋本数:  KNO = KNO + 1: If KNO > 主筋種類数 Then KNO = 1
                主筋No(ii) = KNO
                Next ii
            角度 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(主筋No(ii))
                D1$ = 橋脚_杭(項目$)
                鉄筋r = KH_D / 2 - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                Print #60, "   [P:" + FD2(XX, YY) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋No(ii)) + "]"
                
                Next ii

     End Sub
Sub P_杭_断面B()
           ReDim 主筋No(500) As Integer
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ｂ－ｂ")
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1$ = 橋脚_杭("D"):  杭D = 躯体_D(1): Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
            
      
      '[[[ ﾌｰﾌﾟ KO1 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径:   Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
            
            '[[[ Come ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            角度 = 20: X1 = -KH_D * Dcos(角度) / 2: Y1 = -KH_D * Dsin(角度) / 2
            Print #60, "    [P:" + FD2(X1, Y1) + "]\[矢:-15,-8|" + F9(-名称_L1) + ",0]\[pm:5,0]"
            
            Call P_鉄筋_○名称(1)
      
      '[[[ 主筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            D1$ = 橋脚_杭("L"):  杭L = 躯体_D(1)

            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            KNO = 0
            For ii = 1 To 主筋本数:  KNO = KNO + 1: If KNO > 主筋種類数 Then KNO = 1
                主筋No(ii) = KNO
                Next ii
            角度 = 0: B主筋本数 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(主筋No(ii))
                D1$ = 橋脚_杭(項目$)
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
                D1$ = 橋脚_杭("K" + F9(主筋No(1)))
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
                  
                  角度 = 32: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj1$ + "]"
                  角度 = 19: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):   Print #60, "   [P0:]\[字:" + FD3(DX, DY, -角度) + ",C," + Moj2$ + "]"
                  角度 = 0: DX = -寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj3$ + "]"
                  角度 = 21: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj5$ + "]"
                  角度 = 38: DX = 寸r * Dsin(角度): DY = -寸r * Dcos(角度):     Print #60, "   [P0:]\[字:" + FD3(DX, DY, 角度) + ",C," + Moj6$ + "]"
     
     
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
            D1$ = 橋脚_杭("HOOP底"): XL = 0.9 * KH_D: YL = 0.5 * KH_D
            Print #60, "    [P0:]\[L:" + FD2(XL, YL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
            
            Call P_鉄筋_○名称(1)
     

     End Sub
Sub P_杭_断面B配筋図()
           ReDim 主筋No(500) As Integer
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ｂ－ｂ鉄筋配筋図")
      
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            D1$ = 橋脚_杭("D"):  杭D = 躯体_D(1)
            Print #60, "   [P:0,0]\[Cir:" + FD1(杭D / 2) + "]"
           
      '[[[ ﾌｰﾌﾟ KO1 組立筋 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭("組立筋"): KH_D = 鉄筋_SH径
            Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
     

      
      '[[[ 主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
            D1$ = 橋脚_杭("L"):  杭L = 躯体_D(1)
            
            Print #60, "[Msize:" + FD1(橋脚_鉄筋_Mark_Msize) + "]"
            主筋種類数 = 橋脚_杭("K数")
            主筋本数 = 橋脚_杭("ΣK鉄筋本数"): If 主筋本数 < 4 Then 世er = " 主筋本数 < 4": er (""): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
            主筋角度 = 360 / 主筋本数
            KNO = 0
            For ii = 1 To 主筋本数:  KNO = KNO + 1: If KNO > 主筋種類数 Then KNO = 1
                主筋No(ii) = KNO
                Next ii
            角度 = 0
            For ii = 1 To 主筋本数: 項目$ = "K" + F9(主筋No(ii))
                D1$ = 橋脚_杭(項目$)
                鉄筋r = KH_D / 2 - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                XX = 鉄筋r * Dsin(角度): ' -鉄筋定着
                YY = 鉄筋r * Dcos(角度): 角度 = 角度 + 主筋角度
                
                LLL1 = 鉄筋L_XL - 鉄筋_S定着
                If LLL1 + 500 > 杭L Then Print #60, "   [P:" + FD2(XX, YY) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋No(ii)) + "]"
                              
                Next ii

      '[[[ 底ﾌｰﾌﾟ  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
            KD2 = KH_D / 2
            底Hp_L = KH_D / Sqr(2)
            Print #60, "[P:" + FD2(0, KD2) + "]\[L:" + FD2(KD2, -KD2) + "|" + FD2(-KD2, -KD2) + "|" + FD2(-KD2, KD2) + "|" + FD2(KD2, KD2) + "]"
            Print #60, "[P:" + FD2(-底Hp_L / 2, 底Hp_L / 2) + "]\[L:" + FD2(底Hp_L, 0) + "|" + FD2(0, -底Hp_L) + "|" + FD2(-底Hp_L, 0) + "|" + FD2(0, 底Hp_L) + "]"
     

     End Sub
Sub P_杭_Hoop(図形項目$)
      
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_杭
      
            D1$ = 橋脚_杭("HOOP")
            Select Case 図形項目$
            Case "HOOP1": Hoop数 = .Hoop1数
            Case "HOOP2": Hoop数 = .Hoop2数
            Case "HOOP3": Hoop数 = .Hoop3数
            Case "組立筋": Hoop数 = .組立筋数
            End Select
           End With
      
      '[[[ ﾌｰﾌﾟ  ]]]
            Print #60, "[色:黄]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭(図形項目$): KH_D = 鉄筋_SH径
            Print #60, "   [P:0,0]\[Cir:" + FD1(KH_D / 2) + "]"
            Hoop筋$ = 橋脚鉄筋径$(1)
      
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
            重ねL = FP_橋脚_鉄筋_Data("KHL", Hoop筋$)
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
     
     
     End Sub

Sub P_杭_Hoop底()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_杭

      '[[[ 底ﾌｰﾌﾟ  ]]]
            Print #60, "[色:黄]\[ﾚ:Hoop]"
            D1$ = 橋脚_杭("HOOP底")
            LL = 鉄筋L_全ΣL
            Print #60, "   [P:" + FD2(-LL / 2, 0) + "]\[L:" + FD2(LL, 0) + "]"
      
      '[[[ 寸法 ]]]
            寸法位置1 = 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
            補1 = 橋脚_寸法線_開き_鉄筋図 - 1
            Print #60, "   [P:" + FD2(-LL / 2, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(LL, 0, -補1) + "]"
            
       '[[[ Title ]]]
            Print #60, "[P0:]\[Pm:" + FD2(-10, -20) + "]"
            Call P_鉄筋_○名称(3)
            
    
    End With
    End Sub



Sub P_杭_帯鉄筋継手詳細図()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
            Print #60, "[色:白]\[ﾚ:ETC]"
      '[[[ 格図名 ]]]
         Y0 = 0.7 * (寸法線位置_杭断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "帯鉄筋継手詳細図=1/" + F9(現作図_Scale))
      
      '[[[ ﾌｰﾌﾟ KO3 ]]]
            D1$ = 橋脚_杭("HOOP1"): KH_D = 鉄筋_SH径
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



     End Sub



'┌─────────────────────────────────────────────┐
'│■ 基礎       作図        　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_基礎_配筋図()
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_基礎
     
       
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
       
       
      
      
      '[[[ 格図名 ]]]
         X1 = -.BYR - (寸法線位置_基礎平面.L開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(X1, -.BXL * 0.4, 90, "下面")
         Call P_橋脚_格図名(X1, .BXR * 0.4, 90, "上面")
      
      '[[[ ｾﾝﾀｰ Line ]]]
           X1 = -.BYR - (寸法線位置_基礎平面.L開き + 格図名開き位置) * 現作図_Scale: X2 = .BYR + 10 * 現作図_Scale
           Call P_橋脚_Center_Line(X2, 0, X1, 0, X1, 0)
           Y1 = -.BXL - 10 * 現作図_Scale: Y2 = .BXR + 10 * 現作図_Scale
           Call P_橋脚_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      '[[[ 断面位置指定 ]]]
         X1 = -.BYR - 10 * 現作図_Scale: Y1 = 5 * 現作図_Scale
         X2 = .BYL + 10 * 現作図_Scale: Y2 = Y1
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ａ", "Ａ", 0)
         
         X1 = -5 * 現作図_Scale: Y1 = .BXR + 10 * 現作図_Scale
         X2 = X1: Y2 = -.BXL - 10 * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ｂ", "Ｂ", 0)
         
      
      
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[P0:]\[B:" + FD2(.BY, .BX) + "]"
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .BXR + 寸法線位置_基礎平面.U開き * 現作図_Scale
                  補1 = 寸法線位置_基礎平面.U開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(.BY, 0, -補1) + "]"
          
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_基礎平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置2) + "]"
                  D1$ = "[寸:" + FD3(.BYR_端, 0, -補2) + "|" + FD3(.BYR_柱 - 土木橋脚_柱.BYR, 0, -補2) + "|"
                  D1$ = D1$ + FD3(土木橋脚_柱.BY, 0, -補2) + "|" + FD3(.BYL_柱 - 土木橋脚_柱.BYL, 0, -補2) + "|" + FD3(.BYL_端, 0, -補2) + "]"
                  Print #60, D1$
          
          ' D寸法
                  寸法位置D1 = -.BXL - 寸法線位置_基礎平面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_基礎平面.D開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置D1) + "]\[寸:" + F9(補D1) + ":" + FD3(.BY, 0, 補D1) + "]"
          
          ' L寸法
                  寸法位置L1 = -.BYR - 寸法線位置_基礎平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_基礎平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BXL) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, .BX, -補L1) + "]"
          
                  寸法位置L2 = 寸法位置L1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_基礎平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(寸法位置L2, -.BXL) + "]\[寸:" + FD3(0, .BXL, -補L2) + "|" + FD3(0, 土木橋脚_柱.BXR, -補L2) + "|" + FD3(0, .BXR - 土木橋脚_柱.BXR, 0) + "]"
          
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
               For ii = 1 To 鉄筋P_Σ数:          X0 = .BYL - 鉄筋P_位置(ii)
                     Select Case i2
                     Case 1:      D1$ = 橋脚_基礎("FX1平面"): i2 = 2
                     Case Else:   D1$ = 橋脚_基礎("FX1平面R"): i2 = 1
                     End Select
                     '*2002.10.28
                     Call P_橋脚_鉄筋図("", "V", "R", X0, Y0)
                     Next ii
       
       Print #60, "[色:白]"
      '[[[ 鉄筋 F11 (FX1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1"):
               Yn = Int(1 * 鉄筋P_Σ数 / 3):   Y0 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1")
               D01$ = "": 鉄筋n = 0
               X0 = .BYL - 鉄筋P_位置(1)
               For ii = 1 To 鉄筋P_Σ数:        X1 = .BYL - 鉄筋P_位置(ii)
                     鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                     D01$ = D01$ + "+" + F9(-Lpit): X9 = X1
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   XLL = -X9 + .BYL + Mark_L1
                   Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
      
      
      '[[[ 鉄筋 F12,F13 (FX2,FX3) ]]]
                '         F12=D32_K127_@124+126+80x126_B5655+W+4655_HF+2746                           'X 上鉄筋  @ﾋﾟｯﾁは側面から
                '         F13=D32_B5655+W+4655_HF+2746～2246                                          'X 上鉄筋  @ﾋﾟｯﾁは F12 で定義
               
            Print #60, "[色:黄]\[ﾚ:主筋]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2"): Y0 = 鉄筋L_YL / 2
               橋脚_鉄筋θ = 270
               i2 = 1
               For ii = 1 To 鉄筋P_Σ数:     X0 = .BYR - 鉄筋P_位置(ii)
                     '  FX3=""  の場合 FX2 を使用する
                     Select Case X0
                     Case Is > .BYL - .BYL_端
                            Select Case i2
                            Case 1:      D1$ = 橋脚_基礎("FX3平面"): i2 = 2
                            Case Else:   D1$ = 橋脚_基礎("FX3平面R"): i2 = 1
                            End Select
                     Case Is > -(.BYR - .BYR_端)
                            Select Case i2
                            Case 1:      D1$ = 橋脚_基礎("FX2平面"): i2 = 2
                            Case Else:   D1$ = 橋脚_基礎("FX2平面R"): i2 = 1
                            End Select
                     Case Else
                            Select Case i2
                            Case 1:      D1$ = 橋脚_基礎("FX3平面"): i2 = 2
                            Case Else:   D1$ = 橋脚_基礎("FX3平面R"): i2 = 1
                            End Select
                     
                     End Select
                     Call P_橋脚_鉄筋図("", "V", "", X0, Y0)
                     Next ii
      
      
      '[[[ 鉄筋 F12 (FX2) 符号 径 ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1"):
               Yn = Int(3 * 鉄筋P_Σ数 / 4):   Y0 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX2")
               X_01 = -.BYL + .BYL_端
               X_02 = .BYR - .BYR_端
               
               D01$ = "": 鉄筋n = 0
               X0 = 0
               For ii = 1 To 鉄筋P_Σ数:        X1 = -.BYL + 鉄筋P_位置(ii)
                     Select Case X1
                     Case Is < X_01
                     Case Is < X_02
                                    鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                                    D01$ = D01$ + "+" + F9(-Lpit): X9 = X1: If X0 = 0 Then X0 = X1
                     Case Else
                     End Select
                     Next ii
                   
                   Print #60, "[P:" + FD2(-X0, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   XLL = X9 + .BYL + Mark_L1
                   Print #60, "[P:" + FD2(-X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
      
      '[[[ 鉄筋 F11 寸法 ]]]
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1")
                  寸法位置D2 = 寸法位置D1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 補D1 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(-.BYR, 寸法位置D2) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, 補D2) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + ",,R=7]"
                    Print #60, D11$
      
      
      '[[[ 鉄筋 F13 (FX3) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               If 橋脚_基礎("FX3") <> "" Then
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1"):
               Yn = Int(2 * 鉄筋P_Σ数 / 3):   Y0 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX2"): ' D1$ = 橋脚_基礎("FX3") err  Pit は FX2 で入力
               If D1$ <> "" Then
               X_01 = -.BYL + .BYL_端
               X_02 = .BYR - .BYR_端
               
               D01$ = "": D02$ = "": 鉄筋n = 0
               X01 = -.BYL + 鉄筋P_位置(1)
               X02 = 0
               For ii = 1 To 鉄筋P_Σ数:        X1 = -.BYL + 鉄筋P_位置(ii)
                     Select Case X1
                     Case Is < X_01
                                    鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                                    D01$ = D01$ + "+" + F9(-Lpit): X9 = X1
                     Case Is < X_02
                     Case Else
                                    鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                                    D02$ = D02$ + "+" + F9(-Lpit): X9 = X1: If X02 = 0 Then X02 = X1
                     End Select
                     Next ii
                   
                   D1$ = 橋脚_基礎("FX3")
                   Print #60, "[P:" + FD2(-X01, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   Print #60, "[P:" + FD2(-X02, Y0) + "]\[<:0," + Mid(D02$, 2) + ",-]"
                   XLL = X9 + .BYL + Mark_L1
                   Print #60, "[P:" + FD2(-X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
                  End If
      
             End If
       
       
      
      
      '[[[ 鉄筋 F12,F13 寸法 ]]]
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2"):
                  寸法位置3 = 寸法位置2 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 補2 - 橋脚_寸法線_Pit_躯体図 - 2
                  Print #60, "  [P:" + FD2(-.BYR, 寸法位置3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + ",,R=7]"
                    Print #60, D11$
     
     
     
     
      '[[[ 鉄筋 F1 (FY1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
                '     F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y 底鉄筋  @ﾋﾟｯﾁは側面から
               
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               鉄筋径$ = 鉄筋_径$:
               For ii = 1 To 鉄筋P_Σ数:        Y0 = -.BXL + 鉄筋P_位置(ii)
                     If Y0 >= 0 Then Exit For
                     Call P_橋脚_鉄筋図("", "V", "R", -鉄筋L_Xcen, Y0)
                     Next ii
       
       Print #60, "[色:白]"
      '[[[ 鉄筋 F1 (FY1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FX1"):
               Xn = Int(2 * 鉄筋P_Σ数 / 3):   X0 = .BYR - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               D01$ = "": 鉄筋n = 0
               Y0 = -.BXL + 鉄筋P_位置(1)
               For ii = 1 To 鉄筋P_Σ数:        Y1 = -.BXL + 鉄筋P_位置(ii)
                     If Y1 >= 0 Then Exit For
                     鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                     D01$ = D01$ + "+" + F9(-Lpit): Y9 = Y1
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   YLL = .BXL - Y9 + Mark_D1
                   Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
      
      '[[[ 鉄筋 F1 (FY1) 寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 補L2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(寸法位置L3, -.BXL) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補L3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BX - 鉄筋P_位置(鉄筋P_Σ数), 0) + ",,R=7]"
                    Print #60, D11$
     
     
      '[[[ 鉄筋 F2 (FY2) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
                  '       F2=D32_K95_@95+155+80x125+155_B3563+1092+W+2092+3563_HF+2232+500            'Y 上鉄筋  @ﾋﾟｯﾁは側面から
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2"): i2 = 1
               鉄筋径$ = 鉄筋_径$:
               橋脚_鉄筋θ = 0
               For ii = 鉄筋P_Σ数 To 1 Step -1:         Y0 = -.BXL + 鉄筋P_位置(ii)
                     If Y0 < 0 Then Exit For
                     Select Case i2
                     Case 1:      D1$ = 橋脚_基礎("FY2平面"): i2 = 2
                     Case Else:   D1$ = 橋脚_基礎("FY2平面R"): i2 = 1
                     End Select
                     Call P_橋脚_鉄筋図("", "V", "R", -鉄筋L_Xcen, Y0)
                     Next ii
     
     
      '[[[ 鉄筋 F2 (FY2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FX1"):
               Xn = Int(1 * 鉄筋P_Σ数 / 3):   X0 = .BYR - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               D01$ = "": 鉄筋n = 0
               Y0 = -.BXL
               For ii = 1 To 鉄筋P_Σ数:        Y1 = -.BXL + 鉄筋P_位置(ii)
                     If Y1 >= 0 Then
                         鉄筋n = 鉄筋n + 1: Lpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                         D01$ = D01$ + "+" + F9(Lpit): If Y0 < 0 Then Y0 = Y1
                          End If
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90," + Mid(D01$, 2) + ",-]"
                   YLL = .BXR - Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
      
     
     
       Print #60, "[色:空]"
       'Print #60, "[色:紫]"
      '[[[ 鉄筋 FH1 (f1) ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                ' Y 右端( 座標は逆方向   Y9 の位置から) 割付
                '        f1 = 314 - D19_K69_B801_H2804 + f                           '縦鉄筋
               
               '        fpit=X375+125+6+2+2_@375+39x250              '###
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               YRR = 鉄筋L_YL / 2
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FH1"): LLL2 = 鉄筋L_YL: ' 基縦筋幅 実長
               
               D1$ = 橋脚_基礎("Fpit")
                    鉄筋pit = 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 + 基縦筋.鉄筋間隔X2)
                    LLL1 = 基縦筋.Y鉄筋pit * 基縦筋.鉄筋間隔X1: ' 基縦筋幅
               Zure = -20
               X01 = 土木橋脚_柱.BYL: X02 = -土木橋脚_柱.BYR: 柱L = -土木橋脚_柱.BXL
               
               i2 = 1:   f1数 = 0: f2数 = 0
               For ii = 1 To 鉄筋P_Σ数
                   X0 = -.BYR + 鉄筋P_位置(ii):    Y1 = -.BXL + 基縦筋.Start_X - (LLL2 - LLL1) / 2:
                      
                   Select Case i2
                   Case 1:
                      Do
                           If Y1 + LLL2 > YRR Then Exit Do
                           Moj$ = "": LLLB = LLL2
                           Select Case X0
                           Case Is > X01: If Y1 > 0 Then Exit Do
                                          If Y1 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y1)
                           Case Is > X02: If Y1 + LLL2 > 柱L Then Exit Do
                           Case Else:    If Y1 > 0 Then Exit Do
                                          If Y1 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y1)
                           End Select
                           Print #60, "[P:" + FD2(X0 + Zure, Y1) + "]\[皿2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y1 = Y1 + 鉄筋pit
                           Loop
                           i2 = 2
                 Case Else:
                       Y2 = -.BXL + 基縦筋.Start_X + 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 - 基縦筋.鉄筋間隔X3) - (LLL2 - LLL1) / 2:
                      Do
                           If Y2 + LLL2 > YRR Then Exit Do
                           Moj$ = "": LLLB = LLL2
                           Select Case X0
                           Case Is > X01: If Y2 > 0 Then Exit Do
                                          If Y2 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y2)
                           Case Is > X02: If Y2 + LLL2 > 柱L Then Exit Do
                           Case Else:     If Y2 > 0 Then Exit Do
                                          If Y2 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y2)
                           End Select
                           Print #60, "[P:" + FD2(X0 + Zure, Y2) + "]\[皿2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y2 = Y2 + 鉄筋pit
                           Loop
                           i2 = 1
                 End Select
        
        
               Next ii
       
       Print #60, "[色:白]"
     
     End With
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
                   X0 = -.BYR + 鉄筋P_位置(ii):    Y1 = -.BXL + 基縦筋.Start_X - (LLL2 - LLL1) / 2:
                   
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
                       Y2 = -.BXL + 基縦筋.Start_X + 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 - 基縦筋.鉄筋間隔X3) - (LLL2 - LLL1) / 2:
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






Sub P_基礎_断面A()
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
          杭H = 12 * 現作図_Scale
     
     With 土木橋脚_基礎
     
       If .BYL_端 = 0 Then 基礎勾配 = 0 Else 基礎勾配 = .H_U / .BYL_端:
       基礎角度 = Calu角度(0, 0, .BYL_端, .H_U)
       
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 12 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 15 * 現作図_Scale
                 Mark_R1 = 15 * 現作図_Scale
       
     
      '[[[ 格図名 ]]]
         Y0 = .H + (寸法線位置_基礎A断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ａ－Ａ鉄筋配筋図")
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[P:" + FD2(-.BYR, 0) + "]\[L:" + FD2(0, .H_D) + "|" + FD2(.BYR_端, .H_U) + "|" + FD2(.BYR_柱 - 土木橋脚_柱.BYR, 0) + "|" + FD2(0, 400) + "]"
         Print #60, "[p:-50,0]\[切断M1:" + FD4(土木橋脚_柱.BY + 100, 0, 5, 3) + "]"
         Print #60, "[P:" + FD2(.BYL, 0) + "]\[L:" + FD2(0, .H_D) + "|" + FD2(-.BYL_端, .H_U) + "|" + FD2(-.BYL_柱 + 土木橋脚_柱.BYL, 0) + "|" + FD2(0, 400) + "]"
         Print #60, "[dot:]\[P:" + FD2(-土木橋脚_柱.BYR, .H) + "]\[L:" + FD2(土木橋脚_柱.BY, 0) + "]\[con:]"
         Print #60, "   [P0:]\[L:" + FD2(-.BYR - .捨con_t, 0) + "|" + FD2(0, -.捨con_t) + "|" + FD2(.BY + 2 * .捨con_t, 0) + "|" + FD2(0, .捨con_t) + "|" + FD2(-.BYR - .捨con_t, 0) + "]"
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .H + 寸法線位置_基礎A断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_基礎A断面.U開き - 1 + .H_U / 現作図_Scale
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(.BY, 0, -補1) + "]"
          
                  寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_基礎A断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  補21 = 寸法線位置_基礎A断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1 - 400 / 現作図_Scale
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置2) + "]"
                  D1$ = "[寸:" + FD3(.BYR_端, 0, -補2) + "|" + FD3(.BYR_柱 - 土木橋脚_柱.BYR, 0, -補21) + "|"
                  D1$ = D1$ + FD3(土木橋脚_柱.BY, 0, -補21) + "|" + FD3(.BYL_柱 - 土木橋脚_柱.BYL, 0, -補2) + "|" + FD3(.BYL_端, 0, 0) + "]"
                  Print #60, D1$
          
          ' D寸法
                  寸法位置D1 = -寸法線位置_基礎A断面.D開き * 現作図_Scale
                  補D1 = 寸法線位置_基礎平面.D開き - 1
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置D1) + "]\[寸:" + F9(補D1) + ":" + FD3(.BY, 0, 補D1) + "]"
          
          ' L寸法
                  寸法位置L1 = -.BYR - 寸法線位置_基礎A断面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_基礎A断面.L開き - 1
                  補L11 = 寸法線位置_基礎A断面.L開き - 1 + .BYR_端 / 現作図_Scale
                  Print #60, "[P:" + FD2(寸法位置L1, 0) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, .H, -補L11) + "]"
          
                  If .H_U = 0 Then
                       寸法位置L2 = 寸法位置L1
                       Else
                       寸法位置L2 = 寸法位置L1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                       補L2 = 寸法線位置_基礎A断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                       Print #60, "[P:" + FD2(寸法位置L2, 0) + "]\[寸:" + FD3(0, .H_D, -補L2) + "|" + FD3(0, .H_U, 0) + "]"
                       End If
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            Y1 = -.捨con_t: Y2 = -.捨con_t - 杭H
            For ii = 1 To 杭位置_Y個数
                 X0 = -杭位置_Ypos(ii): DD = 杭位置_径(1) / 2
                 X1 = X0 - DD: X2 = X0 + DD
                 Print #60, "[P:" + FD2(X1, 0) + "]\[dot:]\[L:" + FD2(0, -.捨con_t) + "]\[con:]\[L:" + FD2(0, -杭H) + "]"
                 Print #60, "[P:" + FD2(X2, 0) + "]\[dot:]\[L:" + FD2(0, -.捨con_t) + "]\[con:]\[L:" + FD2(0, -杭H) + "]"
                 Print #60, "[切断～1:" + FD5(X1, Y2, X2, Y2, 90) + "]"
                 
                 Y2 = -.捨con_t - 杭H
                 Call P_橋脚_Center_Line(X0, 0, X0, Y2, 0, 0)

                 Next ii
            Print #60, "[con:]"
     
      '[[[ 杭 寸法 ]]]
                  寸法位置D2 = 寸法位置D1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D2 = 補D1 - 橋脚_寸法線_Pit_躯体図
            
                  Print #60, "  [P:" + FD2(.BYL, 寸法位置D2) + "]"
                        D11$ = "  [寸:":   XL1 = -.BYL
                        For ii = 杭位置_Y個数 To 1 Step -1
                              LL1 = XL1 - 杭位置_Ypos(ii): XL1 = 杭位置_Ypos(ii)
                              D11$ = D11$ + FD3(LL1, 0, 補D2) + "|"
                              Next ii
                              D11$ = D11$ + FD3(XL1 - .BYR, 0, 0) + "]"
                    Print #60, D11$
     
      '[[[ 鉄筋 F1 (FY1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               Call P_橋脚_鉄筋図("", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen + 鉄筋_SK位置)
     
      '[[[ 鉄筋 F1 (FY1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               Xn = Int(2 * 鉄筋P_Σ数 / 3) + 2
               X1 = .BYR - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               鉄筋被り = 鉄筋_SK位置
               Print #60, "[P:" + FD2(X1, 鉄筋被り) + "]\[<:270,0]\[L:" + FD2(0, -Mark_D1 - 鉄筋被り) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
      
      
      '[[[ 鉄筋 F2 (FY2) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               '       F2=D32_K95_@95+155+40x125+40x125+155_B3563+1092+W+2092+3563_HF+2328+297.8      'Y 上鉄筋  @ﾋﾟｯﾁは側面から
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               鉄筋被り = 鉄筋_SK位置 * Dcos(基礎角度): Y0 = .H - 鉄筋L_YL - 鉄筋被り
               Call P_橋脚_鉄筋図("", "", "", -鉄筋L_Xcen, Y0)
     
      
      
      '[[[ 鉄筋 F2 (FY2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               Xn = Int(鉄筋P_Σ数 / 2) + 4
               X1 = .BYR - (鉄筋P_位置(Xn) + 鉄筋P_位置(Xn + 1)) / 2
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               鉄筋横被り = 鉄筋_横被り
               鉄筋被り = 鉄筋_SK位置 * Dcos(基礎角度): Y0 = .H - 鉄筋被り
               Print #60, "[P:" + FD2(X1, Y0) + "]\[<:90]\[L:" + FD2(0, Mark_U1 + 鉄筋被り) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
      
             '[[[ 鉄筋 F2 (FY2) 上 被ﾘ 寸法 ]]]
                              橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
                              表示X = 鉄筋P_位置(7) + (鉄筋P_位置(6) - 鉄筋P_位置(5)) / 2
                     橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                     基礎勾配α = Calu角度(0, 0, .BYR_端, .H_U)
                     鉄筋被り = 鉄筋_SK位置: Moj$ = F9(鉄筋被り)
                     LLL = 表示X
                     DXL = 鉄筋被り * Dsin(基礎勾配α): DYL = 鉄筋被り * Dcos(基礎勾配α)
                     X1 = .BYR - LLL - DXL: Y1 = .H_D + LLL * 基礎勾配 - DYL
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[寸:" + FD3(DXL, DYL, 0) + "," + Moj$ + ",RL=7]"
      
             '[[[ 鉄筋 F2 (FY2) 横被ﾘ 寸法 ]]]
                     Print #60, "[P:" + FD2(.BXR - 鉄筋横被り, .H_D - 250) + "]\[寸:" + FD3(鉄筋横被り, 0, 0) + ",,RL=7]"
      
      
      
      
      
      '[[[ 鉄筋 F11 (FX1) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
               '        F11=D32_K127_@124+126+80x126_BF+10014+F                                     'X 底鉄筋  @ﾋﾟｯﾁは側面から
               
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               '鉄筋D_F1 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               '鉄筋径$ = 鉄筋_径$: Y0 = 鉄筋_SK位置 - 鉄筋D_F1 / 2
               鉄筋径$ = 鉄筋_径$: Y0 = 鉄筋_SK位置
               For ii = 1 To 鉄筋P_Σ数:        X0 = 鉄筋P_位置(ii) - .BYR
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      '[[[ 鉄筋 F11 寸法 ]]]
                  寸法位置D3 = 寸法位置D2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D3 = 補D2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(-.BYR, 寸法位置D3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, 補D3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + ",,R=7]"
                    Print #60, D11$
                        
      '[[[ 鉄筋 F12,F13 (FX2,FX3) ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '         F12=D32_K127_@124+126+80x126_B5655+W+4655_HF+2746                           'X 上鉄筋  @ﾋﾟｯﾁは側面から
                '         F13=D32_B5655+W+4655_HF+2746～2246                                          'X 上鉄筋  @ﾋﾟｯﾁは F12 で定義
               
               
               '橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                '      鉄筋D_F2 = Val(Mid(鉄筋_径$, 2))
               
               X01 = -.BYR: X02 = .BYL
               鉄筋勾配 = 基礎勾配
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX3")
               鉄筋径3$ = 鉄筋_径$: 鉄筋被り3 = 鉄筋_SK位置 * Dcos(基礎角度): DY3 = 鉄筋被り3
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX2")
               鉄筋径2$ = 鉄筋_径$: 鉄筋被り2 = 鉄筋_SK位置 * Dcos(基礎角度): DY2 = 鉄筋被り2
               
               X1 = .BYR_端 - .BYR: X2 = .BYL - .BYL_端
               For ii = 1 To 鉄筋P_Σ数:     X0 = 鉄筋P_位置(ii) - .BYR:     鉄筋径$ = 鉄筋径3$: DY = DY3
                     Select Case X0
                     Case Is < X1:   DY1 = (X0 - X01) * 鉄筋勾配: Y0 = .H_D + DY1 - DY: '+ 鉄筋D_F2 / 2
                     Case Is < X2:   鉄筋径$ = 鉄筋径2$: DY = DY2
                                     Y0 = .H - DY: ' + 鉄筋D_F2 / 2
                     Case Else:      DY1 = (X02 - X0) * 鉄筋勾配: Y0 = .H_D + DY1 - DY: '+ 鉄筋D_F2 / 2
                     End Select
                     
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
      
      '[[[ 鉄筋 F12,F13 寸法 ]]]
                  寸法位置U3 = .H + 寸法線位置_基礎A断面.U開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補U3 = 寸法線位置_基礎平面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 2
                  Print #60, "  [P:" + FD2(-.BYR, 寸法位置U3) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補U3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + ",,R=7]"
                    Print #60, D11$
       
      '[[[ 鉄筋 F14 (FX4) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
               '         F3=D19_K85_@300+9x200_B10361_H190                                               'Y 側鉄筋  @ﾋﾟｯﾁは下から
               '橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
                '      鉄筋D_F2 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FX4")
               鉄筋径$ = 鉄筋_径$: 鉄筋被り = 鉄筋_SK位置:
             '  X1 = -.BYR + 鉄筋被り + 鉄筋D_F2 / 2: X2 = .BYL - 鉄筋被り - 鉄筋D_F2 / 2
               X1 = -.BYR + 鉄筋被り: X2 = .BYL - 鉄筋被り
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
               X1 = -.BYR + 鉄筋被り: X2 = .BYL - 鉄筋被り
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
                              D11$ = D11$ + FD3(0, .H_D - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
                    Print #60, D11$
       
       
       
      '[[[ 鉄筋 FH1 (f1)  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                ' Y 右端( 座標は逆方向   Y9 の位置から) 割付
                
                '        f1 = 314 - D19_K69_B801_H2804 + f                           '縦鉄筋
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               DXL = Val(Mid(鉄筋_径$, 2)) / 2
               
               X01 = -.BYR: X02 = .BYL
               X_01 = .BYR_端 - .BYR: X_02 = .BYL - .BYL_端
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FH1"):  LLY = 鉄筋L_YL: Y0 = 鉄筋_SK位置
               D1$ = 橋脚_基礎("Fpit")
               i2 = 1
               For ii = 1 To 鉄筋P_Σ数: X0 = -.BYR + 鉄筋P_位置(ii)
                      Select Case i2
                      Case 1:       Print #60, "[con:]": i2 = 2
                      Case Else:     Print #60, "[dot:]": i2 = 1
                      End Select
                      
                      Select Case X0
                      Case Is < X_01:   DY1 = -(X0 - X_01) * 鉄筋勾配
                      Case Is < X_02:   DY1 = 0
                      Case Else:      DY1 = (X0 - X_02) * 鉄筋勾配
                      End Select
                      
                      Print #60, "[P:" + FD2(X0 - DXL, Y0) + "]\[L:" + FD2(0, LLY - DY1) + "]"
                      Next ii
               
       Print #60, "[con:]\[色:白]"
      '[[[ 鉄筋 FH1 (f1)  Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FX4")
               Yn = 鉄筋P_Σ数 - 1:    Y0 = (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn - 1)) / 2
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               DXL = Val(Mid(鉄筋_径$, 2)) / 2
               
               X_01 = .BYR_端 - .BYR: X_02 = .BYL - .BYL_端
               D1$ = 橋脚_基礎("Fpit"):
               X0 = 0:    X1 = -.BYL + 基縦筋.Start_Y: D01$ = "": D02$ = ""
               For ii = 1 To 鉄筋P_Σ数: X1 = -.BYR + 鉄筋P_位置(ii)
                      Select Case X1
                      Case Is < X_01:
                      Case Is < X_02:  X1 = X1 - DXL: 鉄筋pit = X1 - X9: If X0 = 0 Then X0 = X1: 鉄筋pit = 0
                                       D01$ = D01$ + "+" + F9(鉄筋pit):   X9 = X1
                      Case Else:
                      End Select
                      Next ii
               
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                   XLL = -X0 + .BYR + Mark_R1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(1)
       
      '[[[ 鉄筋 FH2 (f2)  Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               If 橋脚_基礎("FH2") <> "" Then
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FX4")
               Yn = 鉄筋P_Σ数 - 1 - 3: If Yn < 2 Then Yn = 2
               Y0 = (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn - 1)) / 2
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               DXL = Val(Mid(鉄筋_径$, 2)) / 2
               
               X_01 = .BYR_端 - .BYR: X_02 = .BYL - .BYL_端
               D1$ = 橋脚_基礎("Fpit"):
               X0 = 0: X01 = 0: X02 = 0: X1 = -.BYL + 基縦筋.Start_Y: D01$ = "": ' D02$ = ""
               For ii = 1 To 鉄筋P_Σ数: X1 = -.BYR + 鉄筋P_位置(ii):
                      Select Case X1
                      Case Is < X_01:   X1 = X1 - DXL: 鉄筋pit = X1 - X9: If X0 = 0 Then X0 = X1: 鉄筋pit = 0
                                        D01$ = D01$ + FP1(鉄筋pit):  X9 = X1
                      Case Is < X_02:
                      Case Else:        X1 = X1 - DXL: 鉄筋pit = X1 - X9: If X0 = 0 Then X0 = X1: 鉄筋pit = 0
                                        D01$ = D01$ + FP1(鉄筋pit):  X9 = X1
                      
                      End Select
                      Next ii
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                   XLL = -X0 + .BYR + Mark_R1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(1)
               End If
       
       
       Print #60, "[色:白]"
     
     End With

     End Sub
Sub P_基礎_断面B()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
          杭H = 12 * 現作図_Scale
     
     With 土木橋脚_基礎
     
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 7 * 現作図_Scale
                 Mark_R1 = 5 * 現作図_Scale
     
      '[[[ 格図名 ]]]
         X0 = -.H - (寸法線位置_基礎B断面.L開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(X0, 0, 90, "断面Ｂ－Ｂ鉄筋配筋図")
      
      
      '[[[ 基礎躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[con:]"
         Print #60, "[P:" + FD2(0, -.BXL) + "]\[L:" + FD2(-.H, 0) + "|" + FD2(0, .BXL - 土木橋脚_柱.BXL) + "|" + FD2(-400, 0) + "]"
         Print #60, "[p:0,-50]\[切断M1:" + FD4(0, 土木橋脚_柱.BX + 100, 5, 3) + "]"
         Print #60, "[P:" + FD2(0, .BXR) + "]\[L:" + FD2(-.H, 0) + "|" + FD2(0, -.BXR + 土木橋脚_柱.BXR) + "|" + FD2(-400, 0) + "]"
         
         Print #60, "[dot:]\[P:" + FD2(-.H, -土木橋脚_柱.BXL) + "]\[L:" + FD2(0, 土木橋脚_柱.BX) + "]\[con:]"
         If .H_U > 0 Then Print #60, "[dot:]\[P:" + FD2(-.H_D, -.BXL) + "]\[L:" + FD2(0, .BX) + "]\[con:]"
         
         
         Print #60, "   [P0:]\[L:" + FD2(0, -.BXL - .捨con_t) + "|" + FD2(.捨con_t, 0) + "|" + FD2(0, .BX + 2 * .捨con_t) + "|" + FD2(-.捨con_t, 0) + "|" + FD2(0, -.BXR - .捨con_t) + "]"
     
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = .BXR + 寸法線位置_基礎B断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_基礎B断面.U開き - 1
                  Print #60, "[P:" + FD2(-.H, 寸法位置1) + "]\[寸:" + F9(-補1) + ":" + FD3(.H, 0, -補1) + "]"
          
                  If .H_U = 0 Then
                       寸法位置2 = 寸法位置1
                       Else
                       寸法位置2 = 寸法位置1 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                       補2 = 寸法線位置_基礎B断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                       Print #60, "[P:" + FD2(-.H, 寸法位置2) + "]\[寸:" + FD3(.H_U, 0, -補2) + "|" + FD3(.H_D, 0, 0) + "]"
                       End If
                  
          ' L寸法
                  寸法位置L1 = -.H - 寸法線位置_基礎B断面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_基礎B断面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BXL) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, .BX, -補L1) + "]"
          
                  寸法位置L2 = 寸法位置L1 + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_基礎B断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1 - 400 / 現作図_Scale
                  Print #60, "[P:" + FD2(寸法位置L2, -.BXL) + "]\[寸:" + FD3(0, .BXL - 土木橋脚_柱.BXL, -補L2) + "|" + FD3(0, 土木橋脚_柱.BX, -補L2) + "|" + FD3(0, .BXR - 土木橋脚_柱.BXR, 0) + "]"
     
          ' R寸法
                  寸法位置R1 = 寸法線位置_基礎B断面.R開き * 現作図_Scale
                  補R1 = 寸法線位置_基礎B断面.R開き - 1
                  Print #60, "[P:" + FD2(寸法位置R1, -.BXL) + "]\[寸:" + F9(補R1) + ":" + FD3(0, .BX, 補R1) + "]"
     
     
      '[[[ 杭 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
            X1 = .捨con_t: X2 = .捨con_t + 杭H
            For ii = 1 To 杭位置_X個数
                 Y0 = 杭位置_Xpos(ii): DD = 杭位置_径(1) / 2
                 Y1 = Y0 - DD: Y2 = Y0 + DD
                 Print #60, "[P:" + FD2(0, Y1) + "]\[dot:]\[L:" + FD2(.捨con_t, 0) + "]\[con:]\[L:" + FD2(杭H, 0) + "]"
                 Print #60, "[P:" + FD2(0, Y2) + "]\[dot:]\[L:" + FD2(.捨con_t, 0) + "]\[con:]\[L:" + FD2(杭H, 0) + "]"
                 Print #60, "[切断～1:" + FD5(X2, Y1, X2, Y2, 90) + "]"
                 
                 Print #60, "[P:" + FD2(0, Y0) + "]\[cen:]\[L:" + FD2(.捨con_t + 杭H, 0) + "]"
                 Next ii
            Print #60, "[con:]"
     
      '[[[ 杭 寸法 ]]]
                  寸法位置R2 = 寸法位置R1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R2 = 補R1 - 橋脚_寸法線_Pit_躯体図
            
                  Print #60, "  [P:" + FD2(寸法位置R2, -.BXL) + "]"
                        D11$ = "  [寸:":   YL1 = -.BXL
                        For ii = 1 To 杭位置_X個数
                              LL1 = 杭位置_Xpos(ii) - YL1: YL1 = 杭位置_Xpos(ii)
                              D11$ = D11$ + FD3(0, LL1, 補R2) + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BXR - YL1, 0) + "]"
                    Print #60, D11$
       
       Print #60, "[色:黄]"
      '[[[ 鉄筋 F11 (FX1) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FX1")
               Call P_橋脚_鉄筋図("", "", "R", -鉄筋L_Xcen - 鉄筋_SK位置, -鉄筋L_Ycen)
     
      '[[[ 鉄筋 F11 (FX1) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               Yn = Int(2 * 鉄筋P_Σ数 / 3):    Y1 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               Yn = Int(1 * 鉄筋P_Σ数 / 3):    Y2 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               橋脚_鉄筋θ = 900:  D1$ = 橋脚_基礎("FX1")
               鉄筋被り = 鉄筋_SK位置
               Print #60, "[P:" + FD2(-鉄筋被り, Y1) + "]\[<:0,0]\[L:" + FD2(Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
             '[[[ 鉄筋 F11 (FX1) 被ﾘ ]]]
                     鉄筋被り = 鉄筋_SK位置
                     Print #60, "[P:" + FD2(-鉄筋被り, Y2) + "]\[寸:" + FD3(鉄筋被り, 0, 0) + ",,RL=7]"
      
      
      '[[[ 鉄筋 F12 (FX2) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
               '          F12=D32_K127_@127+123+80x125+123_B5655+W+4655_HF+2746                           'X 上鉄筋  @ﾋﾟｯﾁは側面から
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               鉄筋被り = 鉄筋_SK位置: X0 = -.H + 鉄筋L_XL + 鉄筋被り
               Call P_橋脚_鉄筋図("", "", "", X0, -鉄筋L_Ycen)
       
       
      '[[[ 鉄筋 F12 (FX2) Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FY1")
               Yn = Int(2 * 鉄筋P_Σ数 / 3):  Y1 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               Yn = Int(1 * 鉄筋P_Σ数 / 3):  Y2 = -.BXL + (鉄筋P_位置(Yn) + 鉄筋P_位置(Yn + 1)) / 2
               
               
               橋脚_鉄筋θ = 900:  D1$ = 橋脚_基礎("FX2")
               X0 = -.H + 鉄筋_SK位置
               Print #60, "[P:" + FD2(X0, Y1) + "]\[<:180]\[L:" + FD2(-Mark_L1, 0) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_鉄筋_○名称(1)
      
             '[[[ 鉄筋 F12 (FX2) 被ﾘ 寸法 ]]]
                     鉄筋被り = 鉄筋_SK位置
                     Print #60, "[P:" + FD2(-.H, Y2) + "]\[寸:" + FD3(鉄筋被り, 0, 0) + ",,LR=7]"
      
             '[[[ 鉄筋 F12 (FX2) 横被ﾘ 寸法 ]]]
                     鉄筋横被り = (.BX - 鉄筋L_YL) / 2
                     Print #60, "[P:" + FD2(-.H + 250, .BXR - 鉄筋横被り) + "]\[寸:" + FD3(0, 鉄筋横被り, 0) + ",,RL=7]"
                     Print #60, "[P:" + FD2(-.H + 250, -.BXL) + "]\[寸:" + FD3(0, 鉄筋横被り, 0) + ",,LR=7]"
      
      
      
      '[[[ 鉄筋 F1 (FY1) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                '     F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y 底鉄筋  @ﾋﾟｯﾁは側面から
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX1")
               '鉄筋D_F11 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY1")
               鉄筋径$ = 鉄筋_径$: X0 = -鉄筋_SK位置: '- 鉄筋D_F11 / 2
               For ii = 1 To 鉄筋P_Σ数:        Y0 = -.BXL + 鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      '[[[ 鉄筋 F1 (FY1) 寸法 ]]]
                  寸法位置L3 = 寸法位置L2 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 補L2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(寸法位置L3, -.BXL) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補L3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BX - 鉄筋P_位置(鉄筋P_Σ数), 0) + ",,R=7]"
                    Print #60, D11$
       
       
      '[[[ 鉄筋 F2 (FY2) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
              '      F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y 底鉄筋  @ﾋﾟｯﾁは側面から
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               '鉄筋D_F12 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 90:  D1$ = 橋脚_基礎("FY2")
               鉄筋径$ = 鉄筋_径$: X0 = -.H + 鉄筋_SK位置: ' + 鉄筋D_F12 / 2
               For ii = 1 To 鉄筋P_Σ数:        Y0 = -.BXL + 鉄筋P_位置(ii)
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                     Next ii
       
      '[[[ 鉄筋 F2 (FY2) 寸法 ]]]
                  寸法位置R3 = 寸法位置R2 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R3 = 補R2 - 橋脚_寸法線_Pit_躯体図
                  Print #60, "  [P:" + FD2(寸法位置R3, -.BXL) + "]"
                        D11$ = "  [寸:"
                        For ii = 1 To 鉄筋P_Data数
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, 鉄筋P_L(ii), 補R3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BX - 鉄筋P_位置(鉄筋P_Σ数), 0) + ",,R=7]"
                    Print #60, D11$
       
       
      '[[[ 鉄筋 F3 (FY3) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
               '       F3=D19_K85_@200+9x200_B10361_H190                                               'Y 側鉄筋  @ﾋﾟｯﾁは下から
               '橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               '鉄筋D_F12 = Val(Mid(鉄筋_径$, 2))
               
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FY3")
               鉄筋径$ = 鉄筋_径$:
               'Y1 = -.BXL + 鉄筋_SK位置 + 鉄筋D_F12 / 2: Y2 = .BXR - 鉄筋_SK位置 - 鉄筋D_F12 / 2
               Y1 = -.BXL + 鉄筋_SK位置: Y2 = .BXR - 鉄筋_SK位置
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
               Y1 = -.BXL + 鉄筋_SK位置: Y2 = .BXR - 鉄筋_SK位置
               
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
                              D11$ = D11$ + FD3(-(.H_D - 鉄筋P_位置(鉄筋P_Σ数)), 0, 0) + "]"
                    Print #60, D11$
       
       
      '[[[ 鉄筋 FH1 (f1) ]]]
                '        f1 = 314 - D19_K69_B801_H2804 + f                           '縦鉄筋
            Print #60, "[色:空]\[ﾚ:Hoop]"
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               YRR = 鉄筋L_YL / 2
               
               D1$ = 橋脚_基礎("Fpit")
                    鉄筋pit = 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 + 基縦筋.鉄筋間隔X2): If 鉄筋pit <= 0 Then 鉄筋pit = 100
                    LLL1 = 基縦筋.Y鉄筋pit * 基縦筋.鉄筋間隔X1
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FH1"): LLL2 = 鉄筋L_YL
               X0 = -鉄筋L_XL - 鉄筋_SK位置
               Y1 = -.BXL + 基縦筋.Start_X + LLL2 - (LLL2 - LLL1) / 2:
               Do:    If Y1 > YRR Then Exit Do
                      Call P_橋脚_鉄筋図("", "", "", X0, Y1)
                      Y1 = Y1 + 鉄筋pit
                      Loop
               Print #60, "[dot:]"
               Y2 = -.BXL + 基縦筋.Start_X + 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 - 基縦筋.鉄筋間隔X3) + LLL2 - (LLL2 - LLL1) / 2:
               Do:    If Y2 > YRR Then Exit Do
                      Call P_橋脚_鉄筋図("", "", "", X0, Y2)
                      Y2 = Y2 + 鉄筋pit
                      Loop
       
       
      '[[[ 鉄筋 FH1 (f1)  Mark ]]]
               Print #60, "[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
               橋脚_鉄筋θ = 270:  D1$ = 橋脚_基礎("FY3")
               Xn = 鉄筋P_Σ数: X0 = -(鉄筋P_位置(Xn) + 鉄筋P_位置(Xn - 1)) / 2
               Xn2 = Xn - 4: If Xn2 < 2 Then Xn2 = 2
               X02 = -(鉄筋P_位置(Xn2) + 鉄筋P_位置(Xn2 - 1)) / 2
               橋脚_鉄筋θ = 180:  D1$ = 橋脚_基礎("FX2")
               YRR = 鉄筋L_YL / 2
               
               D1$ = 橋脚_基礎("Fpit")
                    鉄筋pit = 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 + 基縦筋.鉄筋間隔X2): If 鉄筋pit <= 0 Then 鉄筋pit = 100
                    LLL1 = 基縦筋.Y鉄筋pit * 基縦筋.鉄筋間隔X1
               橋脚_鉄筋θ = 0:  D1$ = 橋脚_基礎("FH1"): LLL2 = 鉄筋L_YL
               D01$ = "": D02$ = ""
               Y1 = -.BXL + 基縦筋.Start_X + LLL2 - (LLL2 - LLL1) / 2:
               Y01 = Y1 - LLL2
               Do:    If Y1 > YRR Then Y91 = Y1 - 鉄筋pit: Exit Do
                      D01$ = D01$ + "+" + F9(-鉄筋pit):  Y1 = Y1 + 鉄筋pit
                      Loop
               
               Y2 = -.BXL + 基縦筋.Start_X + 基縦筋.Y鉄筋pit * (基縦筋.鉄筋間隔X1 - 基縦筋.鉄筋間隔X3) + LLL2 - (LLL2 - LLL1) / 2:
               Y02 = Y2 - LLL2
               Do:    If Y2 > YRR Then Y92 = Y2 - 鉄筋pit: Exit Do
                      D02$ = D02$ + "+" + F9(-鉄筋pit):  Y2 = Y2 + 鉄筋pit
                      Loop
       
                    Y9 = Y91: If Y9 < Y92 Then Y9 = Y92
                    Y9 = Y9 - LLL2
               
               
                   Print #60, "[P:" + FD2(X0, Y01) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X0, Y02) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   YLL = Y9 + .BYL + 30 * 現作図_Scale
                   Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[pm:0,2]"
                   Call P_鉄筋_○名称縦(1)
       
                   
                   D1$ = 橋脚_基礎("FH2")
                   If D1$ <> "" Then
                   Print #60, "[P:" + FD2(X02, Y01) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X02, Y02) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   YLL = Y9 + .BYL + 30 * 現作図_Scale
                   Print #60, "[P:" + FD2(X02, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[pm:0,2]"
                   Call P_鉄筋_○名称縦(1)
                   End If
       
       
       Print #60, "[con:]\[色:白]"
     
     
     End With

     End Sub
Sub P_基礎_F1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_基礎("FY1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, 0.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)

     End Sub
Sub P_基礎_F2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_基礎("FY2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_基礎_F3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FY3")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, 0.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_基礎_sf1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FH1*")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_基礎_sf2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FH2*")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_基礎_sf3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"

     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_基礎_F11()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_基礎("FX1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-6, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     End Sub
Sub P_基礎_F12()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_基礎("FX2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(0, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     End Sub
Sub P_基礎_F13()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_基礎("FX3")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(0, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     End Sub
Sub P_基礎_F14()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
     D1$ = 橋脚_基礎("FX4")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-6, -15) + "]"
     Call P_鉄筋_○名称縦(3)
     End Sub

'┌─────────────────────────────────────────────┐
'│■ 沓座       作図        沓座補強配筋図　　　ストッパ－補強配筋図　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub 沓座_断面A_A()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 13 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_沓座A平面.U開き + 2.2 * 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "沓座補強配筋図")
         Y0 = .BYR + (寸法線位置_沓座A平面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ａ－Ａ")
      
      '[[[ 断面位置指定 ]]]
         沓座$ = 橋脚_梁("沓座位置"):
         X1 = -.BXL - 10 * 現作図_Scale: X2 = .BXR + 10 * 現作図_Scale
         Y2 = 沓座終点側_Y - 50: Y1 = 沓座起点側_Y - 50
                Call P_橋脚_断面位置指定(X1, Y1, X2, Y1, "Ｂ", "Ｂ", 0)
                Call P_橋脚_断面位置指定(X1, Y2, X2, Y2, "Ｃ", "Ｃ", 0)
      
         X1 = 沓座位置_X(2) + 40:       Y1 = -.BYL - 10 * 現作図_Scale: Y2 = .BYR + 10 * 現作図_Scale
                Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, "Ｄ", "Ｄ", 0)
      
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
                        D1$ = 橋脚_沓座("S1"): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                        鉄筋l = Val(鉄筋_B$): Y0 = Yp - 鉄筋P_ΣL / 2 + Y_ずれ: X0 = Xp - 鉄筋l / 2
                        'Dami$ = 橋脚_沓座("S1")
                        For i2 = 0 To 鉄筋P_Σ数
                              Y1 = Y0 + 鉄筋P_位置(i2)
                              Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(鉄筋l, 0) + "]"
                              Next i2
                       
                       
                        D1$ = 橋脚_沓座("S2"):
                        鉄筋l = Val(鉄筋_B$): Y0 = Yp - 鉄筋l / 2 + Y_ずれ: X0 = Xp - 鉄筋P_ΣL / 2
                        For i3 = 0 To 鉄筋P_Σ数
                              X1 = X0 + 鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, 鉄筋l) + "]"
                              Next i3
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
                        
                                 D1$ = 橋脚_沓座("S2"): X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                 X0 = Xp + 鉄筋P_ΣL / 2 - 1.5 * Xpit
                        D1$ = 橋脚_沓座("S1"): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                                 Ypit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                 Y1 = Yp - 鉄筋P_ΣL / 2 + Y_ずれ
                                 Y2 = Yp + 鉄筋P_ΣL / 2 + Y_ずれ
                        
                        Select Case Yp
                        Case Is > 0: Print #60, "[P:" + FD2(X0, Y1) + "]\[<:90," + 鉄筋_pit$ + "]\[L:" + FD2(0, .BYR - Y1 + Mark_U1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Case Else:   Print #60, "[P:" + FD2(X0, Y2) + "]\[<:270," + 鉄筋_pit$ + "]\[L:" + FD2(0, -.BYL - Y2 - Mark_D1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        End Select
                        Call P_鉄筋_○名称(2)
                        
                        
                        D1$ = 橋脚_沓座("S2"): 鉄筋l = Val(鉄筋_B$): Y1 = Yp - 鉄筋l / 2 + Y_ずれ + 1.5 * Ypit: X0 = Xp - 鉄筋P_ΣL / 2
                        
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
                  Call P_橋脚_Stoper_X断面(下がり, -下がり)
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
                        橋脚_鉄筋θ = 90:   D1$ = 橋脚_沓座("S1"): Y0 = -鉄筋_SK位置:   鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
                        X1 = Xp - 鉄筋B / 2: Y1 = Y0 - 鉄筋H
                        Call P_橋脚_鉄筋図("", "", "", X1, Y1)
                        
                        Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        D1$ = 橋脚_沓座("S2"):  Y0 = -鉄筋_SK位置: X0 = Xp - 鉄筋P_ΣL / 2
                        For i3 = 0 To 鉄筋P_Σ数
                              X1 = X0 + 鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Next i3
                        Next ii
      
      
    '[[[  沓座 配筋 寸法 ]]]
                寸法位置L2 = -土木橋脚_梁.BXL - 寸法線位置_沓座B断面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補L2 = 寸法線位置_沓座B断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                D1$ = 橋脚_沓座("S2"):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置L2, -Y0) + "]\[寸:"; FD1(-補L2) + ":" + FD3(0, Y0, -補L2) + "]"
      
                寸法位置R2 = 土木橋脚_梁.BXR + 寸法線位置_沓座B断面.R開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補R2 = 寸法線位置_沓座B断面.R開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                D1$ = 橋脚_沓座("S2"):  Y0 = 鉄筋_SK位置
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
                        
                                D1$ = 橋脚_沓座("S2"):  X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                X0 = Xp - 鉄筋P_ΣL / 2 + 鉄筋P_位置(Int(鉄筋P_Σ数 / 2)) - 0.5 * Xpit
                        
                        
                        橋脚_鉄筋θ = 90:   D1$ = 橋脚_沓座("S1"): Y0 = -鉄筋_SK位置
                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_鉄筋_○名称(1)
                        Next ii
     
     
     End With
     End Sub
Sub P_沓座_断面D()

     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 7 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
            Y0 = (寸法線位置_沓座D断面.U開き + 格図名開き位置) * 現作図_Scale
            Call P_橋脚_格図名(0, Y0, 0, "断面Ｄ－Ｄ")
      
      
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
           Call P_橋脚_Stoper_Y断面(0, 0, 0)
   
   
      '[[[ 沓座 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For iy = 1 To 2: ii = iy: If iy = 2 Then ii = Int(沓座位置_Data数 / 2) + 1
                        Xp = 沓座位置_X(ii):  Yp = 沓座位置_Y(ii)
                        沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
                        
                        D1$ = 橋脚_沓座("S1"): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                        
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        橋脚_鉄筋θ = 90:   D1$ = 橋脚_沓座("S2"): Y0 = -鉄筋_SK位置:   鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
                        X1 = Yp - 鉄筋B / 2 + Y_ずれ: Y1 = Y0 - 鉄筋H
                        Call P_橋脚_鉄筋図("", "", "", X1, Y1)
                        
                        Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        D1$ = 橋脚_沓座("S1"):  Y0 = -鉄筋_SK位置: X0 = Yp - 鉄筋P_ΣL / 2 + Y_ずれ
                        For i3 = 0 To 鉄筋P_Σ数
                              X1 = X0 + 鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Next i3
                        Next iy
      
    '[[[  沓座 配筋 寸法 ]]]
                
                寸法位置L2 = -土木橋脚_梁.BYL - 寸法線位置_沓座B断面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補L2 = 寸法線位置_沓座D断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                D1$ = 橋脚_沓座("S1"):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置L2, -Y0) + "]\[寸:"; FD1(-補L2) + ":" + FD3(0, Y0, -補L2) + "]"
      
                寸法位置R2 = 土木橋脚_梁.BYR + 寸法線位置_沓座B断面.R開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                補R2 = 寸法線位置_沓座D断面.R開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                D1$ = 橋脚_沓座("S1"):  Y0 = 鉄筋_SK位置
                Print #60, "  [P:" + FD2(寸法位置R2, -Y0) + "]\[寸:"; FD1(補R2) + ":" + FD3(0, Y0, 補R2) + "]"
      
      
      '[[[ 沓座 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("沓座位置")
                 For iy = 1 To 2: ii = iy: If iy = 2 Then ii = Int(沓座位置_Data数 / 2) + 1
                        Xp = 沓座位置_X(ii): Yp = 沓座位置_Y(ii)
                        沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no):
                        
                        Select Case Yp
                        Case Is > 0:    D1$ = 橋脚_沓座("S1"): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                                        X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                        X0 = Yp + 鉄筋P_ΣL / 2 - 1.5 * Xpit + Y_ずれ

                                        橋脚_鉄筋θ = 90:   D1$ = 橋脚_沓座("S2"): Y0 = -鉄筋_SK位置
                                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        Call P_鉄筋_○名称(1)
                        
                        Case Else:    D1$ = 橋脚_沓座("S1"): Y_ずれ = Val(鉄筋_Y$): If Yp < 0 Then Y_ずれ = -Y_ずれ
                                        X個数 = 鉄筋P_Σ数: Xpit = 鉄筋P_位置(2) - 鉄筋P_位置(1)
                                        X0 = Yp - 鉄筋P_ΣL / 2 + 1.5 * Xpit + Y_ずれ

                                        橋脚_鉄筋θ = 90:   D1$ = 橋脚_沓座("S2"): Y0 = -鉄筋_SK位置
                                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        Call P_鉄筋_○名称(1)
                        End Select
                        Next iy
           
           
           Print #60, "[con:]"
     
     End With
     End Sub
Sub P_沓座_断面H()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁

                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 7 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
            Y0 = (寸法線位置_沓座H断面.U開き + 格図名開き位置) * 現作図_Scale
            Call P_橋脚_格図名(0, Y0, 0, "断面Ｈ－Ｈ")
      
      
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
                  Print #60, FP_Stoper_断面Y寸法(寸法位置3, 補3)
     
                  寸法位置4 = 寸法位置3 - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補4 = 寸法線位置_沓座H断面.U開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_断面Y寸法2(寸法位置4, 補4)
     
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call P_橋脚_Stoper_Y断面(0, 0, 0)
   
      
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To 1: Xp = Stoper位置_X(ii):  Yp = Stoper位置_Y(ii)
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        
                       '[[[ H1 ]]]
                        D1$ = 橋脚_Stoper("H1"): YY = Val(鉄筋_Y$):
                        X1 = -Yp - S_BY / 2 - YY: X2 = Yp + S_BY / 2 + YY
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Next i3
                        
                        
                      '[[[ H2 ]]]
                        D1$ = 橋脚_Stoper("H2"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                        X1 = -Yp - S_BY / 2 - YY: X2 = Yp + S_BY / 2 + YY: LLL1 = X2 - X1: LLL2 = 2 * 鉄筋H - LLL1
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[色:黄]\[L:" + FD2(LLL1, 0) + "]"
                              Print #60, "[P:" + FD2(-LLL2 / 2, Y1 + 橋脚_J鉄筋開き * 現作図_Scale) + "]\[色:" + 鉄筋_Joint線色$ + "]\[L:" + FD2(LLL2, 0) + "]"
                              Next i3
                        
                      Print #60, "[色:黄]"
                      '[[[ H3** ]]]
                        D1$ = 橋脚_Stoper("H1"): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$): H3Y0 = 鉄筋P_位置(1)
                        D1$ = 橋脚_Stoper("H2"): H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_鉄筋B = Val(鉄筋_B$): H2_XX = Val(鉄筋_X$)
                        D1$ = 橋脚_Stoper("H3"): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)): 鉄筋YL = 鉄筋L_YL
                              H3_pit = Val(鉄筋_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                             ' H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                        
                            ' H3_X1 = S_BX / 2 + H2_XX + H2_鉄筋B - H2_鉄筋径D / 2 - 鉄筋径D / 2
                            ' H3_X2 = S_BX / 2 + H2_XX - H2_鉄筋径D / 2 - 鉄筋径D / 2
                            ' H3_X3 = S_BX / 2 - H1_鉄筋径D / 2 + 0.1 * 鉄筋径D

                        
                             H3_Y1 = S_BY / 2 + H1_YY - H1_鉄筋径D / 2 - 鉄筋径D / 2
                             H3_Y2 = S_BY / 2 + H1_YY - H1_鉄筋径D / 2 + 0.1 * 鉄筋径D - H1_YY
                             H3_Y3 = S_BY / 2 + H1_YY - H1_鉄筋径D / 2 + 0.1 * 鉄筋径D - 2 * H1_YY
                        
                             '向き = 1: DLX = 0
                             'If Yp < 0 Then 向き = -1: DLX = 橋脚_J鉄筋開き * 現作図_Scale
                             
                             Print #60, "[P:" + FD2(-(Yp + H3_Y3), -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                             Print #60, "[P:" + FD2(Yp + H3_Y3, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                             
                             Ypit = 2 * H3_Y2 / (H3_nY - 1)
                             For i2 = 1 To H3_nY
                                  Y01 = -Yp - H3_Y2 + (i2 - 1) * Ypit
                                  Y02 = Yp + H3_Y2 - (i2 - 1) * Ypit
                                  Print #60, "[P:" + FD2(Y01, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                                  Print #60, "[P:" + FD2(Y02, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                                  Next i2
                             
                             Print #60, "[P:" + FD2(-(Yp + H3_Y1), -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                             Print #60, "[P:" + FD2(Yp + H3_Y1, -H3Y0) + "]\[L:" + FD2(0, -鉄筋YL) + "]"
                        
                        
                        
                        Next ii
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To 1: Xp = Stoper位置_X(ii):  Yp = Stoper位置_Y(ii)
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        
                       '[[[ H1 ]]]
                        LLX = 7: LLY = 4
                        D1$ = 橋脚_Stoper("H1"): YY = Val(鉄筋_Y$):
                        X1 = -Yp - S_BY / 2 - YY: X2 = Yp + S_BY / 2 + YY
                        YS = -鉄筋P_位置(1)
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[Lm:" + FD2(-LLX, -LLY) + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[Lm:" + FD2(LLX, -LLY) + "]"
                              YE = Y1 - 9 * 現作図_Scale
                              Next i3
                        
                              Print #60, "[P:" + FD2(X1, YS) + "]\[pm:" + FD2(-LLX, -LLY) + "]\[L:" + FD2(0, YE - YS) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                              Call P_鉄筋_○名称(2)
                              Print #60, "[P:" + FD2(X2, YS) + "]\[pm:" + FD2(LLX, -LLY) + "]\[L:" + FD2(0, YE - YS) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                              Call P_鉄筋_○名称(2)
                        
                        
                        
                        
                      '[[[ H2 ]]]
                        D1$ = 橋脚_Stoper("H2"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                        X1 = -Yp - S_BY / 2 - YY + 70: X2 = Yp + S_BY / 2 + YY - 70: ' LLL1 = X2 - X1: LLL2 = 2 * 鉄筋H - LLL1
                        Y1 = -鉄筋P_位置(1): Y2 = -鉄筋P_位置(鉄筋P_Σ数)
                        
                        Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                        Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_鉄筋_○名称(2)
                        
                        Print #60, "[P:" + FD2(X2, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]"
                        Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_鉄筋_○名称(2)
                        
                        
                        Next ii
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 寸法 ]]]
                  寸法位置L2 = -.BYL - 寸法線位置_沓座H断面.L開き * 現作図_Scale + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_沓座F断面.L開き - 橋脚_寸法線_Pit_躯体図 - 1
                  D1$ = 橋脚_Stoper("H1"): Y0 = -鉄筋P_ΣL
                  Print #60, "  [P:" + FD2(寸法位置L2, Y0) + "]"
                        D11$ = "  [寸:" + FD1(-補L2) + ":"
                        For ii = 1 To 鉄筋P_Data数: i2 = 鉄筋P_Data数 - ii + 1
                              Ypit = 鉄筋P_L(i2)
                              Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + "|": If ii = 鉄筋P_Data数 Then Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, -補L2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
                  寸法位置R2 = .BYR + 寸法線位置_沓座H断面.L開き * 現作図_Scale - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R2 = 寸法線位置_沓座F断面.R開き - 橋脚_寸法線_Pit_躯体図 - 1
                  D1$ = 橋脚_Stoper("H1"): Y0 = -鉄筋P_ΣL
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
   
     
     End With
     End Sub






Sub P_沓座_断面E()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     With 土木橋脚_梁
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 2 * 現作図_Scale
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_沓座E平面.U開き + 2.2 * 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "ストッパー補強配筋図")
         Y0 = .BYR + (寸法線位置_沓座E平面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ｅ－Ｅ")
      
      
      '[[[ 断面位置指定 ]]]
         Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
         X1 = -.BXL - 10 * 現作図_Scale: X2 = .BXR + 10 * 現作図_Scale
         Y2 = 沓座起点側_Y - 50: Y1 = 沓座終点側_Y - 50
                Call P_橋脚_断面位置指定(X1, Y1, X2, Y1, "Ｆ", "Ｆ", 0)
                Call P_橋脚_断面位置指定(X1, Y2, X2, Y2, "Ｇ", "Ｇ", 0)
      
         X1 = Stoper位置_X(1) + 40:        Y1 = -.BYL - 10 * 現作図_Scale: Y2 = .BYR + 10 * 現作図_Scale
                Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, "Ｈ", "Ｈ", 0)
      
      
      
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
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No):
                        箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                      '[[[ H1 ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        D1$ = 橋脚_Stoper("H1"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Dcos(45) * Val(鉄筋_H$)
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
                        D1$ = 橋脚_Stoper("H2"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                        X1 = Xp - S_BX / 2 - XX - 鉄筋B: X2 = Xp + S_BX / 2 + XX
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp + S_BY / 2 + YY - 鉄筋H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, 鉄筋H) + "|" + FD2(鉄筋B, 0) + "|" + FD2(0, -鉄筋H) + "]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, 鉄筋H) + "|" + FD2(鉄筋B, 0) + "|" + FD2(0, -鉄筋H) + "]"
                        
                        Case Else:       X1 = X1 + 橋脚_J鉄筋開き * 現作図_Scale: X2 = X2 + 橋脚_J鉄筋開き * 現作図_Scale
                                         Y1 = Yp - S_BY / 2 - YY + 鉄筋H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "|" + FD2(鉄筋B, 0) + "|" + FD2(0, 鉄筋H) + "]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -鉄筋H) + "|" + FD2(鉄筋B, 0) + "|" + FD2(0, 鉄筋H) + "]"
                        End Select
                        
                       ' er ("i=" + f0(ii))
                      '[[[ H3 ]]]
                       Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        D1$ = 橋脚_Stoper("H1"): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$)
                        D1$ = 橋脚_Stoper("H2"): H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_鉄筋B = Val(鉄筋_B$): H2_XX = Val(鉄筋_X$)
                        D1$ = 橋脚_Stoper("H3"): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)):
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
                             
                             Print #60, "[P:" + FD2(Xp - H3_X1 + DLX, Yp + H3_Y3 * 向き) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                             Print #60, "[P:" + FD2(Xp + H3_X1 + DLX, Yp + H3_Y3 * 向き) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                             
                             Ypit = 2 * H3_Y2 / (H3_nY - 1)
                             For i2 = 1 To H3_nY
                                  Y00 = Yp + (H3_Y2 - (i2 - 1) * Ypit) * 向き
                                  Print #60, "[P:" + FD2(Xp - H3_X2 + DLX, Y00) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                  Print #60, "[P:" + FD2(Xp + H3_X2 + DLX, Y00) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                  Next i2
                             
                             Xpit = 2 * H3_X3 / (H3_nX - 1)
                             For i2 = 1 To H3_nX
                                 X00 = Xp - H3_X3 + (i2 - 1) * Xpit
                                 Print #60, "[P:" + FD2(X00, Yp + H3_Y1 * 向き) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                                 Next i2
                        
                        
                        
                       Next ii
      
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 Mark ]]]
        Print #60, "[色:白]\[con:]"
            Print #60, "[色:白]\[ﾚ:Mark]"
                 Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To Stoper位置_Data数: Xp = Stoper位置_X(ii):   Yp = Stoper位置_Y(ii)
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                      '[[[ H1 ]]]
                        D1$ = 橋脚_Stoper("H1"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Dcos(45) * Val(鉄筋_H$)
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
                        D1$ = 橋脚_Stoper("H2"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                        X1 = Xp - S_BX / 2 - XX - 鉄筋B: X2 = Xp + S_BX / 2 + XX
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp - S_BY / 2 - 77
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[<:0]"
                                         If ii = 1 Then
                                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[Lm:" + FD2(0, 15) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_鉄筋_○名称(1)
                                              End If
                        
                        Case Else:       X1 = X1 + 橋脚_J鉄筋開き * 現作図_Scale: X2 = X2 + 橋脚_J鉄筋開き * 現作図_Scale
                                         Y1 = Yp + S_BY / 2 + 77
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[<:0]"
                                         If ii = Stoper終点側位置数i + 1 Then
                                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[Lm:" + FD2(0, -22) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_鉄筋_○名称(1)
                                              End If
                        
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
                  Call P_橋脚_Stoper_X断面(下がり, -下がり)
                  Print #60, "[con:]"
      
      
      '[[[ ｽﾄｯﾊﾟｰ 配筋 ]]]
        Print #60, "[色:黄]\[con:]"
                 沓座$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
                 For ii = 1 To Stoper終点側位置数i: Xp = Stoper位置_X(ii): ' Yp = Stoper位置_Y(ii)
                        現Stoper_No = Stoper位置_No(ii): Call 橋脚_Stoper_Get(現Stoper_No): 箱抜$ = 橋脚_Stoper("箱抜"): S_BX = 躯体_D(1): S_BY = 躯体_D(2)
                        
                       '[[[ H1 ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        D1$ = 橋脚_Stoper("H1"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
                        鉄筋l = 鉄筋B + 2 * Dcos(45) * 鉄筋H
                        X1 = Xp - 鉄筋l / 2: ' Y1 = Y0 - 鉄筋H
                        For i3 = 1 To 鉄筋P_Σ数
                              Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(鉄筋l, 0) + "]"
                              Next i3
                        
                        
                      '[[[ H2 ]]]
                       Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                        D1$ = 橋脚_Stoper("H2"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$): XX = Val(鉄筋_X$): YY = Val(鉄筋_Y$)
                        X1 = Xp - S_BX / 2 - XX - 鉄筋B: X2 = Xp - S_BX / 2 - XX: X3 = Xp + S_BX / 2 + XX: X4 = Xp + S_BX / 2 + XX + 鉄筋B
                        For i3 = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X3, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Print #60, "[P:" + FD2(X4, Y1) + "]\[橋脚鉄筋:" + 鉄筋_径$ + "]"
                              Next i3
                        
                      '[[[ H3** ]]]
                        Print #60, "[色:黄]\[ﾚ:主筋]"
                        D1$ = 橋脚_Stoper("H1"): H1_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H1_YY = Val(鉄筋_Y$): H3Y0 = 鉄筋P_位置(1)
                        D1$ = 橋脚_Stoper("H2"): H2_鉄筋径D = Val(Mid(鉄筋_径$, 2)): H2_鉄筋B = Val(鉄筋_B$): H2_XX = Val(鉄筋_X$)
                        D1$ = 橋脚_Stoper("H3"): 鉄筋径$ = 鉄筋_径$: 鉄筋径D = Val(Mid(鉄筋_径$, 2)): 鉄筋YL = 鉄筋L_YL
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
                        D1$ = 橋脚_Stoper("H1"): 鉄筋B = Val(鉄筋_B$):   鉄筋H = Val(鉄筋_H$)
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
                  D1$ = 橋脚_Stoper("H2"): Y0 = -鉄筋P_ΣL
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
                  D1$ = 橋脚_Stoper("H2"): Y0 = -鉄筋P_ΣL
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

      '[[[ 躯体寸法 ]]]
     End Sub
Sub P_沓座_S1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_沓座("S1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)

     End Sub
Sub P_沓座_S2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_沓座("S2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)


     End Sub
Sub P_沓座_H1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 45
     D1$ = 橋脚_Stoper("H1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)


     End Sub
Sub P_沓座_H2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_Stoper("H2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)


     End Sub
Sub P_沓座_H3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_Stoper("H3*")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)

     Print #60, "[P:" + FD2(0, -鉄筋L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_鉄筋_○名称(3)


     End Sub

'┌─────────────────────────────────────────────┐
'│■ 柱         作図        　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_柱_断面AB()
     ' 縦断面
     ReDim 鉄筋_L位置(999) As Single
     ReDim Lpit(999) As Single
     ReDim 表示Y_主筋C_1段目(5) As Single
     ReDim 表示Y_主筋C_2段目(5) As Single
     ReDim 表示Y_主筋C_3段目(5) As Single
     
     With 土木橋脚_柱
          
          Cut位置 = 1000: ' 柱面ﾖﾘ
         基礎H = 土木橋脚_基礎.H: 柱H = .H: 梁H = 土木橋脚_梁.H
         Y00 = 基礎H + 柱H + 梁H
         
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      '[[[ 格図名 ]]]
         Y0 = Y00 + (寸法線位置_柱断面.U開き + 格図名開き位置) * 現作図_Scale
         X01 = -.BYL: X02 = .BYR
         Call P_橋脚_格図名(X01, Y0, 0, "断面Ａ－Ａ")
         Call P_橋脚_格図名(X02, Y0, 0, "断面Ｂ－Ｂ")
         
         
      '[[[ 断面位置指定 ]]]
         X1 = -0.7 * .BYL: Y1 = Y00 + (寸法線位置_柱断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ｃ", "Ｃ", 0)
         
         X1 = 0.7 * .BYR: Y1 = Y00 + (寸法線位置_柱断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ｄ", "Ｄ", 0)
         
         
      '[[[ 柱躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
         Print #60, "[P:" + FD2(-.BYL, 土木橋脚_基礎.H) + "]\[L:" + FD2(0, .H) + "|" + FD2(-土木橋脚_梁.BYL + .BYL, 0) + "|" + FD2(0, 土木橋脚_梁.H) + "|" + FD2(土木橋脚_梁.BYL, 0) + "]"
         Print #60, "[P:" + FD2(.BYR, 土木橋脚_基礎.H) + "]\[L:" + FD2(0, .H) + "|" + FD2(土木橋脚_梁.BYR - .BYR, 0) + "|" + FD2(0, 土木橋脚_梁.H) + "|" + FD2(-土木橋脚_梁.BYR, 0) + "]"
       
         Print #60, "[dot:]\[P:" + FD2(-.BYL, 土木橋脚_基礎.H) + "]\[L:" + FD2(.BY, 0) + "]\[con:]"
       
         Print #60, "[P:" + FD2(-.BYL - Cut位置, 0) + "]\[L:" + FD2(.BY + 2 * Cut位置, 0) + "]"
         Print #60, "[P:" + FD2(-.BYL - Cut位置, -土木橋脚_基礎.捨con_t) + "]\[L:" + FD2(.BY + 2 * Cut位置, 0) + "]"
       
         角度L = Calu角度(0, 0, 土木橋脚_基礎.BYL_端, 土木橋脚_基礎.H_U)
              XL = 土木橋脚_基礎.BYL_柱 - .BYL:   XLL = Cut位置 - XL: YL = XLL * Dsin(角度L)
              Print #60, "[P:" + FD2(-.BYL - Cut位置, 土木橋脚_基礎.H - YL) + "]\[L:" + FD2(XLL, YL) + "|" + FD2(XL, 0) + "]"
       
         角度R = Calu角度(0, 0, 土木橋脚_基礎.BYR_端, 土木橋脚_基礎.H_U)
              XL = 土木橋脚_基礎.BYR_柱 - .BYR:   XLL = Cut位置 - XL: YL = XLL * Dsin(角度L)
              Print #60, "[P:" + FD2(.BYR + Cut位置, 土木橋脚_基礎.H - YL) + "]\[L:" + FD2(-XLL, YL) + "|" + FD2(-XL, 0) + "]"
       
         X1 = -.BYL - Cut位置: Y1 = -土木橋脚_基礎.捨con_t - 100: X2 = X1: Y2 = 土木橋脚_基礎.H - YL + 100
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
         X1 = .BYR + Cut位置:  X2 = X1:
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
       
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call P_橋脚_Stoper_Y断面(Y00, 0, 0)
       
       
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
           Print #60, "  [寸:" + F9(-補11) + ":" + FD3(0, 基礎H, -補1) + "|" + FD3(0, 柱H + 梁H, -補1) + "]"
           寸法位置2 = 寸法位置1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = 寸法線位置_柱断面.L開き - 橋脚_寸法線_Pit_躯体図 - 1
           補21 = (-寸法位置2 - Cut位置 - .BYL) / 現作図_Scale - 1
           Print #60, "  [P:" + FD2(寸法位置2, 0) + "]"
           Print #60, "  [寸:" + FD3(0, 土木橋脚_基礎.H_D, -補21) + "|" + FD3(0, 土木橋脚_基礎.H_U, 0) + "|" + FD3(0, .H, -補2) + "|" + FD3(0, 土木橋脚_梁.H1, -補2) + "|" + FD3(0, 土木橋脚_梁.H2, 0) + "]"
            
            
       
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      ni = 2: If .r = 0 Then ni = 3
                  表示X_Hoop = -.BYL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
    
    
    
    '[[[ 表示Y 座標  ]]]
              左_LL = 20 * 現作図_Scale
              
              D1$ = 橋脚_柱("外HoopY")
                  Ny0 = Int(2 * 鉄筋P_Σ数 / 3)
                  Ny1 = Int(鉄筋P_Σ数 / 2)
                  表示Y_主筋被 = (鉄筋P_位置(Ny0) + 鉄筋P_位置(Ny0 + 1)) / 2
                  表示Y_主筋X = (鉄筋P_位置(Ny0 - 4) + 鉄筋P_位置(Ny0 - 3)) / 2
                  Y段数 = 橋脚_柱("Ypit段数")
                  Select Case Y段数
                  Case 1:   '  表示Y_主筋X = (鉄筋P_位置(Ny1 - 5) + 鉄筋P_位置(Ny1 - 4)) / 2
                              表示Y_主筋C_1段目(1) = (鉄筋P_位置(Ny1) + 鉄筋P_位置(Ny1 + 1)) / 2
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
       
       
    '**** 柱 rが無い場合 ????
    '[[[  X方向_主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      主筋番号 = 柱筋_柱筋番号(1):   D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      橋脚_鉄筋θ = 90:  Y0 = Val(鉄筋_位置$)
                      X0 = -.BYL + 主筋dt:  Call P_橋脚_鉄筋図("", "", "R", X0, Y0)
                      X0 = .BYR - 主筋dt: Call P_橋脚_鉄筋図("", "", "", X0, Y0)
     
           '[[[  X方向_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      XK1 = 橋脚_柱("X主筋被ﾘ_1段")
                      XL = .BY - 2 * XK1: XL2 = .BY - XK1 + Mark_L1
                      Print #60, "[P:" + FD2(.BYR - XK1, 表示Y_主筋X) + "]\[<:180," + F9(XL) + "]\[L:" + FD2(-XL2, 0) + "]"
                      D1$ = 橋脚_柱("X主筋_1段"):  柱筋番号 = 柱筋_D柱筋番号(1): D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                      出鉄筋_径$ = "": 前鉄筋_径$ = "": XL0 = 名称_L1 * 現作図_Scale + 1.6 * Mark_Pit * (柱筋_柱筋種類数 - 1)
                              
                              Print #60, "[L:" + FD2(-XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To 柱筋_柱筋種類数
                              柱筋番号 = 柱筋_D柱筋番号(ii): D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                              If 前鉄筋_径$ <> 鉄筋_径$ Then 出鉄筋_径$ = 出鉄筋_径$ + " " + 鉄筋_径$: 前鉄筋_径$ = 鉄筋_径$
                              鉄筋_○_符号1$ = Trim(出鉄筋_径$)
                              Select Case ii
                              Case 柱筋_柱筋種類数: Call P_鉄筋_○名称(1)
                              Case Else: Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              Next ii
                      
           
           '[[[ X方向_主筋 被ﾘ寸法  ]]]
              XK1 = 橋脚_柱("X主筋被ﾘ_1段")
                   D11$ = "  [P:" + FD2(-.BYL, 表示Y_主筋被) + "]\[寸:" + FD3(XK1, 0, 0) + ",,LR=8]"
                   D12$ = "  [P:" + FD2(.BYR - XK1, 表示Y_主筋被) + "]\[寸:" + FD3(XK1, 0, 0) + ",,RL=8]"
                   Print #60, D11$: Print #60, D12$
     
     

    '[[[  Y方向_主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii):   D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      橋脚_鉄筋θ = 90:  Y0 = Val(鉄筋_位置$): Fook向き$ = "R"
                      X0 = -.BYL + 鉄筋P_位置(ii): If X0 > 0 Then Fook向き$ = ""
                      Call P_橋脚_鉄筋図("", "V", Fook向き$, X0, Y0)
                      Next ii
           
           Print #60, "[色:白]"
           '[[[  Y方向_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      D1$ = 橋脚_柱("Y主筋_1段"):  D1$ = 橋脚_柱("Ypit_1段")
                      
                      For ii = 1 To 柱筋_柱筋種類数: ' D1$ = 橋脚_柱("C" + F9(ii) + "本数")
                            柱筋n = 0: 柱筋番号 = 柱筋_D柱筋番号(ii): ' D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                            For i2 = 1 To 柱筋_柱筋Σ数
                                 If 柱筋番号 = 柱筋_柱筋番号(i2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(i2)
                                 Next i2
                            
                            If 柱筋n > 0 Then
                            X0 = 鉄筋_L位置(柱筋n) - .BYL:    Y0 = 表示Y_主筋C_1段目(ii)
                            For i2 = 1 To 柱筋n:  Lpit(i2) = 鉄筋_L位置(i2 + 1) - 鉄筋_L位置(i2): Next i2
                            D1$ = ""
                            For i2 = 柱筋n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BYL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋番号):   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                            End If
                       Next ii
                 
                 If Y段数 > 1 Then
                      D1$ = 橋脚_柱("Y主筋_2段"):  D1$ = 橋脚_柱("Ypit_2段")
                      For ii = 1 To 柱筋_柱筋種類数: D1$ = 橋脚_柱("C" + F9(ii) + "本数")
                            柱筋n = 0: 柱筋番号 = 柱筋_D柱筋番号(ii): ' D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                            For i2 = 1 To 柱筋_柱筋Σ数
                                 If 柱筋番号 = 柱筋_柱筋番号(i2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(i2)
                                 Next i2
                            
                            If 柱筋n > 0 Then
                            X0 = 鉄筋_L位置(柱筋n) - .BYL:    Y0 = 表示Y_主筋C_2段目(ii)
                            For i2 = 1 To 柱筋n:  Lpit(i2) = 鉄筋_L位置(i2 + 1) - 鉄筋_L位置(i2): Next i2
                            D1$ = ""
                            For i2 = 柱筋n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BYL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋番号): 鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                            Print #60, "[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]"
                            Print #60, "[pm:" + FD2(2, -4.5) + "]\(二段目)"
                            End If
                       Next ii
                   
                   
                      End If
    
       
    '[[[  外周 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '     c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150     '###
     
              D1$ = 橋脚_柱("外HoopY")
              'D11$ = 鉄筋_Y$
                           Call Ddata("X", UCase(鉄筋_Y$), Ds$(), Di(), ni)
                           Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = .CHoop_r: If Hoop_r < 0 Then Hoop_r = 0
                  X0 = -Hoop_YL / 2
              For ii = 1 To 鉄筋P_Σ数
                  Y0 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(Hoop_YL, 0) + "]"
                  Next ii
              
    '[[[  外周 Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HoopY")
              X0 = 表示X_Hoop: Y0 = 鉄筋P_位置(1): YL = Y00 - Y0 + Mark_U1
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + 鉄筋_pit$ + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
              Print #60, D1$
                      Call P_鉄筋_○名称(2)
    
    
    
    
    '[[[  外周 Hoop 寸法 ]]]
              寸法位置3 = -土木橋脚_梁.BYL - 寸法線位置_柱断面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = 寸法線位置_柱断面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              補31 = (-寸法位置3 - Cut位置 - .BYL) / 現作図_Scale - 1
              Print #60, "  [P:" + FD2(寸法位置3, 0) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Select Case 鉄筋P_L(ii)
                        Case Is <= 基礎H:          補00 = 補31
                        Case Is <= 基礎H + 柱H:    補00 = 補3
                        Case Else:                 補00 = 補3
                        End Select
                        
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$
     
    '[[[  X方向 内側 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '     c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057    '(c3) Hoop X方向  内側 1
     
              YL = 橋脚_柱("内HoopX_YL")
              D1$ = 橋脚_柱("内HoopX")
                  X0 = -YL / 2
              For ii = 1 To 鉄筋P_Σ数
                  Y0 = 鉄筋P_位置(ii) + 15
                  '*2002.10.28
                  Print #60, "[P:" + FD2(X0 + YL, Y0) + "]\[皿2:" + FD4(-YL, 0, 1.5, 45) + "]"
                  Next ii
     
     End With

     End Sub




Sub P_柱_断面CD()
     ' 縦断面
     ReDim 鉄筋_L位置(999) As Single
     ReDim Lpit(999) As Single
     ReDim 表示Y_主筋C_1段目(5) As Single
     ReDim 表示Y_主筋C_2段目(5) As Single
     ReDim 表示Y_主筋C_3段目(5) As Single

     With 土木橋脚_柱
      
         Cut位置 = 1000: ' 柱面ﾖﾘ
         基礎H = 土木橋脚_基礎.H: 柱H = .H: 梁H = 土木橋脚_梁.H
         Y00 = 基礎H + 柱H + 梁H
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 20 * 現作図_Scale
                 Mark_L1 = 4 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = Y00 + (寸法線位置_柱長断面.U開き + 格図名開き位置) * 現作図_Scale
         X01 = -.BXL: X02 = .BXR
         Call P_橋脚_格図名(X01, Y0, 0, "断面Ｃ－Ｃ")
         Call P_橋脚_格図名(X02, Y0, 0, "断面Ｄ－Ｄ")
         
      '[[[ 断面位置指定 ]]]
         X1 = -0.7 * .BXL: Y1 = Y00 + (寸法線位置_柱長断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X1, Y1, X2, Y2, "Ａ", "Ａ", 0)
         
         X1 = 0.7 * .BXR: Y1 = Y00 + (寸法線位置_柱長断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図) * 現作図_Scale
         X2 = X1: Y2 = -断面位置指定開き * 現作図_Scale
         Call P_橋脚_断面位置指定(X2, Y1, X1, Y2, "Ｂ", "Ｂ", 0)
         
         X1 = -1.15 * 土木橋脚_梁.BXL: Y1 = 基礎H + 柱H + 土木橋脚_梁.H1 + 0.4 * 土木橋脚_梁.H2
         X2 = 1.15 * 土木橋脚_梁.BXR: Y2 = Y1
         Call P_橋脚_断面位置指定(X2, Y2, X1, Y1, "ａ", "ａ", 0)
      
         X1 = -1.3 * .BXL: Y1 = 基礎H + 0.25 * 柱H
         X2 = 1.3 * .BXR: Y2 = Y1
         Call P_橋脚_断面位置指定(X2, Y2, X1, Y1, "ｂ", "ｂ", 0)
      
      
      '[[[ 柱躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
     
         Y0 = 土木橋脚_基礎.H + .H + 土木橋脚_梁.H
         Call P_橋脚_梁_長断面図(0, Y0, 0, .H)

         Print #60, "[dot:]\[P:" + FD2(-.BXL, 土木橋脚_基礎.H) + "]\[L:" + FD2(.BX, 0) + "]\[con:]"
       
         Print #60, "[P:" + FD2(-.BXL - Cut位置, 0) + "]\[L:" + FD2(.BX + 2 * Cut位置, 0) + "]"
         Print #60, "[P:" + FD2(-.BXL - Cut位置, -土木橋脚_基礎.捨con_t) + "]\[L:" + FD2(.BX + 2 * Cut位置, 0) + "]"

         Print #60, "[P:" + FD2(-.BXL, 土木橋脚_基礎.H) + "]\[L:" + FD2(-Cut位置, 0) + "]"
         Print #60, "[P:" + FD2(.BXR, 土木橋脚_基礎.H) + "]\[L:" + FD2(Cut位置, 0) + "]"

         Print #60, "[dot:]\[P:" + FD2(-.BXR - Cut位置, 土木橋脚_基礎.H_D) + "]\[L:" + FD2(.BX + 2 * Cut位置, 0) + "]\[con:]"

         X1 = -.BXL - Cut位置: Y1 = -土木橋脚_基礎.捨con_t - 100: X2 = X1: Y2 = 土木橋脚_基礎.H + 100
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
         X1 = .BXR + Cut位置:  X2 = X1:
              Print #60, "[p:-50,0]\[切断M1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
       
      '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call P_橋脚_Stoper_X断面(Y00, 0)
       
       
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
           Print #60, "  [寸:" + FD3(0, 土木橋脚_基礎.H_D, -補L21) + "|" + FD3(0, 土木橋脚_基礎.H_U, 0) + "|" + FD3(0, .H, -補L22) + "|" + FD3(0, 土木橋脚_梁.H1, -補L2) + "|" + FD3(0, 土木橋脚_梁.H2, 0) + "]"
            
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
           Print #60, "  [寸:" + FD3(0, 土木橋脚_基礎.H_D, 補21) + "|" + FD3(0, 土木橋脚_基礎.H_U, 0) + "|" + FD3(0, .H, 補22) + "|" + FD3(0, 土木橋脚_梁.H1, 補2) + "|" + FD3(0, 土木橋脚_梁.H2, 0) + "]"
            
    
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示X_XHoop = -.BXL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  表示X_XHoop内 = 0.7 * .BXL
    
    
    
    '[[[ 表示Y 座標  ]]]
              左_LL = 20 * 現作図_Scale
              
              D1$ = 橋脚_柱("外HoopX")
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
                              表示Y_主筋C_1段目(3) = (鉄筋P_位置(Ny0 - 36) + 鉄筋P_位置(Ny0 - 35)) / 2
                              表示Y_主筋C_2段目(1) = (鉄筋P_位置(Ny0 - 12) + 鉄筋P_位置(Ny0 - 11)) / 2
                              表示Y_主筋C_2段目(2) = (鉄筋P_位置(Ny0 - 26) + 鉄筋P_位置(Ny0 - 25)) / 2
                              表示Y_主筋C_2段目(3) = (鉄筋P_位置(Ny0 - 40) + 鉄筋P_位置(Ny0 - 39)) / 2
                              
                 End Select
    
    
    '**** 柱 rが無い場合 ????
    '[[[  X方向_主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii):   D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      橋脚_鉄筋θ = 90:  Y0 = Val(鉄筋_位置$)
                      X0 = -.BXL + 鉄筋P_位置(ii):
                     '2002.10.28
                      If X0 > 0 Then Exit For
                      Fuck向き$ = "R": If X0 > 0 Then Fuck向き$ = ""
                      Call P_橋脚_鉄筋図("", "V", Fuck向き$, X0, Y0)
                      Next ii
           
           
           '[[[  X方向_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      D1$ = 橋脚_柱("X主筋_1段"):  D1$ = 橋脚_柱("Xpit_1段")
                      For ii = 1 To 柱筋_柱筋種類数: ' D1$ = 橋脚_柱("C" + F9(ii) + "本数")
                            柱筋n = 0: 柱筋番号 = 柱筋_D柱筋番号(ii): ' D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                            For i2 = 1 To 柱筋_柱筋Σ数
                                 '*2002.10.28
                                 X0 = -.BXL + 鉄筋P_位置(i2): If X0 > 0 Then Exit For
                                 If 柱筋番号 = 柱筋_柱筋番号(i2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(i2)
                                 Next i2
                            
                            If 柱筋n > 0 Then
                            X0 = 鉄筋_L位置(柱筋n) - .BXL:    Y0 = 表示Y_主筋C_1段目(ii)
                            For i2 = 1 To 柱筋n:  Lpit(i2) = 鉄筋_L位置(i2 + 1) - 鉄筋_L位置(i2): Next i2
                            D1$ = ""
                            For i2 = 柱筋n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BXL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋番号):   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                            End If
                       Next ii
                 
                 If X段数 > 1 Then
                      D1$ = 橋脚_柱("X主筋_2段"):  D1$ = 橋脚_柱("Xpit_2段")
                      For ii = 1 To 柱筋_柱筋種類数: 'D1$ = 橋脚_柱("C" + F9(ii) + "本数")
                            柱筋n = 0: 柱筋番号 = 柱筋_D柱筋番号(ii): ' D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                            For i2 = 1 To 柱筋_柱筋Σ数
                                 '*2002.10.28
                                 X0 = -.BXL + 鉄筋P_位置(i2): If X0 > 0 Then Exit For
                                 If 柱筋番号 = 柱筋_柱筋番号(i2) Then 柱筋n = 柱筋n + 1: 鉄筋_L位置(柱筋n) = 鉄筋P_位置(i2)
                                 Next i2
                            
                            If 柱筋n > 0 Then
                            X0 = 鉄筋_L位置(柱筋n) - .BXL:    Y0 = 表示Y_主筋C_2段目(ii)
                            For i2 = 1 To 柱筋n:  Lpit(i2) = 鉄筋_L位置(i2 + 1) - 鉄筋_L位置(i2): Next i2
                            D1$ = ""
                            For i2 = 柱筋n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BXL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_橋脚_柱_主筋(柱筋番号):   鉄筋_○_符号2$ = F9(柱筋n) + "-" + 鉄筋_径$
                            Call P_鉄筋_○名称(2)
                            Print #60, "[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]"
                            Print #60, "[pm:" + FD2(2, -4.5) + "]\(二段目)"
                       
                            End If
                       Next ii
                       End If

    '[[[  Y方向_主筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      'For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(1):   D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      橋脚_鉄筋θ = 90:  Y0 = Val(鉄筋_位置$)
                      X0 = -.BXL + 主筋dt:   Call P_橋脚_鉄筋図("", "", "R", X0, Y0)
                      X0 = .BXR - 主筋dt:   Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                      'Next ii

           '[[[  Y方向 左_主筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      XK1 = 橋脚_柱("Y主筋被ﾘ_1段")
                      XL = .BX - 2 * XK1: XL2 = XK1 + Marl_L1
                      Print #60, "[P:" + FD2(-.BXL + XK1, 表示Y_主筋Y) + "]\[<:180]\[L:" + FD2(-XL2, 0) + "]"
                      D1$ = 橋脚_柱("Y主筋_1段"):  柱筋番号 = 柱筋_D柱筋番号(1): D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                      出鉄筋_径$ = "": 前鉄筋_径$ = "":
                             XL0 = 名称_L1 * 現作図_Scale + 2# * Mark_Pit * (柱筋_柱筋種類数 - 1)

                              Print #60, "[L:" + FD2(-XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To 柱筋_柱筋種類数
                              柱筋番号 = 柱筋_D柱筋番号(ii): D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                              If 前鉄筋_径$ <> 鉄筋_径$ Then 出鉄筋_径$ = 出鉄筋_径$ + " " + 鉄筋_径$: 前鉄筋_径$ = 鉄筋_径$
                              鉄筋_○_符号1$ = Trim(出鉄筋_径$)
                              Select Case ii
                              Case 柱筋_柱筋種類数: Call P_鉄筋_○名称(1)
                              Case Else: Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              
                              Next ii
           
           
           
           
           '[[[  Y方向 右_主筋 Mark ]]]
                      XK1 = 橋脚_柱("Y主筋被ﾘ_1段")
                      XL = .BX - 2 * XK1: XL2 = XK1 + Mark_R1
                      Print #60, "[P:" + FD2(.BXR - XK1, 表示Y_主筋Y) + "]\[<:0]\[L:" + FD2(XL2, 0) + "]"
                      D1$ = 橋脚_柱("Y主筋_1段"):  柱筋番号 = 柱筋_D柱筋番号(1): D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                      出鉄筋_径$ = "": 前鉄筋_径$ = "":
                              XL0 = 名称_L1 * 現作図_Scale + 1.1 * Mark_Pit * (柱筋_柱筋種類数 - 1)
                              Print #60, "[l:" + FD2(XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To 柱筋_柱筋種類数
                              柱筋番号 = 柱筋_D柱筋番号(ii): D1$ = Fp_橋脚_柱_主筋(柱筋番号)
                              If 前鉄筋_径$ <> 鉄筋_径$ Then 出鉄筋_径$ = 出鉄筋_径$ + " " + 鉄筋_径$: 前鉄筋_径$ = 鉄筋_径$
                              鉄筋_○_符号1$ = Trim(出鉄筋_径$)
                              Select Case ii
                              Case 柱筋_柱筋種類数: Call P_鉄筋_○名称(1)
                              Case Else: Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              
                              Next ii
           
           
           '[[[ X方向_主筋 被ﾘ寸法  ]]]
              XK1 = 橋脚_柱("Y主筋被ﾘ_1段")
                   D11$ = "  [P:" + FD2(-.BXL, 表示Y_主筋被) + "]\[寸:" + FD3(XK1, 0, 0) + ",,LR=8]"
                   D12$ = "  [P:" + FD2(.BXR - XK1, 表示Y_主筋被) + "]\[寸:" + FD3(XK1, 0, 0) + ",,RL=8]"
                   Print #60, D11$: Print #60, D12$
     


          '[[[  外周 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '     c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150     '###
     
              D1$ = 橋脚_柱("外HoopX")
              'D11$ = 鉄筋_Y$
                         '  Call Ddata("X", UCase(鉄筋_Y$), Ds$(), Di(), ni)
                         '  Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = .CHoop_r: If Hoop_r < 0 Then Hoop_r = 0
                  
                  XL = .BXL - 鉄筋_SK位置: XDL = 3 * 現作図_Scale: YDL = 1.5 * 現作図_Scale
              For ii = 1 To 鉄筋P_Σ数:  Y0 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(0, Y0) + "]\[L:" + FD2(-XL, 0) + "|" + FD2(XDL, -YDL) + "]"
                  Next ii
    
    '[[[  外周 X Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HoopX")
              X0 = 表示X_XHoop: Y0 = 鉄筋P_位置(1): XL = 左_LL: YL = Y00 - Y0 + Mark_U1
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + 鉄筋_pit$ + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
              Print #60, D1$
                      Call P_鉄筋_○名称(2)
    


    '[[[  X方向 内側 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '     c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057    '(c3) Hoop X方向  内側 1

              XL = 橋脚_柱("内HoopX_XL")
              D1$ = 橋脚_柱("内HoopX")
              Print #60, "[dot:]"
              For ii = 1 To 鉄筋P_Σ数
                  Y0 = 鉄筋P_位置(ii)
                  Print #60, "[P:" + FD2(0, Y0) + "]\[L:" + FD2(XL / 2, 0) + "]"
                  Next ii
                  Print #60, "[con:]"

    '[[[  X方向 内側  Mark  c2-1  (c3) ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HoopX")
                    H_Jaji = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1)
                    H_Y1 = Val(鉄筋_D$) / 2
              
              X0 = 表示X_XHoop内: Y0 = 鉄筋P_位置(1): YL = Y00 - Y0 + Mark_U1
                  '* 2002.11.3
                  D2$ = "": nni = 0
                  For ii = 1 To 鉄筋P_Σ数
                       If 鉄筋P_位置(ii) > H_Jaji Then
                            If FP_Stoper_Y位置(H_Y1) <> "" Then Exit For
                            End If
                       nni = nni + 1
                       D2$ = D2$ + FP1(鉄筋P_位置(ii) - 鉄筋P_位置(ii - 1))
                       Next ii
              
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + Mid(D2$, 2) + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
              Print #60, D1$
                      Call P_鉄筋_○名称(2)
    
    '[[[  X方向 内側  Mark  c2-2  (c4) ]]]
           '* 2002.11.3
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HoopX-2")
              If D1$ <> "" Then
                    D1$ = 橋脚_柱("内HoopX")
                    H_Jaji = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H - Stoper位置_H(1)
                    H_Y1 = Val(鉄筋_D$) / 2
              
              X0 = 表示X_XHoop内 - 300: Y0 = 0: ' YL = Y00 - Y0 + Mark_U2
                  D2$ = "": nni = 0
                  For ii = 1 To 鉄筋P_Σ数
                       If 鉄筋P_位置(ii) > H_Jaji Then
                       If FP_Stoper_Y位置(H_Y1) <> "" Then
                            If Y0 = 0 Then Y0 = 鉄筋P_位置(ii): YL = Y00 - Y0 + Mark_U2
                            nni = nni + 1
                            D2$ = D2$ + FP1(鉄筋P_位置(ii) - 鉄筋P_位置(ii - 1))
                            
                            End If
                            End If
                       Next ii
              
              D1$ = "[P:" + FD2(X0, Y0) + "]\[<:90," + Mid(D2$, 2) + ",-]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
              Print #60, D1$
                      D1$ = 橋脚_柱("内HoopX-2")
                      Call P_鉄筋_○名称(2)
              End If

    '[[[  X方向 内側 Hoop 寸法 ]]]
              寸法位置3 = 土木橋脚_梁.BXR + 寸法線位置_柱断面.R開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補3 = 寸法線位置_柱断面.R開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              補31 = (寸法位置3 - Cut位置 - .BXR) / 現作図_Scale - 1
              D1$ = 橋脚_柱("内HoopX")
              Print #60, "  [P:" + FD2(寸法位置3, 0) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Select Case 鉄筋P_L(ii)
                        Case Is <= 基礎H:          補00 = 補31
                        Case Is <= 基礎H + 柱H:    補00 = 補3
                        Case Else:                 補00 = 補3
                        End Select
                        
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), 補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$

    '[[[  Y方向 内側 Hoop ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '    c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143　　　  '### (c3) Hoop Y方向  内側 1

              XL = 橋脚_柱("内HoopY_XL")
              D1$ = 橋脚_柱("内HoopY")
              For ii = 1 To 鉄筋P_Σ数 Step 2
                  
                  For i2 = 1 To 鉄筋X位置_Σ数 Step 2
                       Y0 = 鉄筋P_位置(ii) + 15
                       X0 = -.BXL + 鉄筋X位置_位置(i2) - XL / 2
                       '*2002.10.28
                       Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  For i2 = 2 To 鉄筋X位置_Σ数 Step 2
                       '*2002.10.31
                       If ii + 1 > 鉄筋P_Σ数 Then Exit For
                       Y0 = 鉄筋P_位置(ii + 1) + 15
                       X0 = -.BXL + 鉄筋X位置_位置(i2) - XL / 2
                       '*2002.10.28
                       Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[皿2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  Next ii

    '[[[  X方向 内側 Hoop 寸法 ]]]
              寸法位置L3 = -土木橋脚_梁.BXL - 寸法線位置_柱長断面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補L3 = 寸法線位置_柱長断面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
              補L31 = (-寸法位置L3 - Cut位置 - .BXL) / 現作図_Scale - 1
              Print #60, "  [P:" + FD2(寸法位置L3, 0) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        Select Case 鉄筋P_L(ii)
                        Case Is <= 基礎H:          補00 = 補31
                        Case Is <= 基礎H + 柱H:    補00 = 補3
                        Case Else:                 補00 = 補3
                        End Select
                        
                        D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$
    
    '[[[  CK ]]]  *2002.10.31
            Print #60, "[色:黄]\[ﾚ:主筋]"
              橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CK"):
                      If D1$ <> "" Then
                      X0 = .BXR - 鉄筋_SK位置: Y0 = .H + 土木橋脚_基礎.H
                      梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.H1)
                      角度1 = 45 - 梁角度 / 2
                      LL1 = Val(鉄筋_L$):   DLY = 土木橋脚_梁.r2 * Dtan(角度1) + LL1
                      Call P_橋脚_鉄筋図("", "", "", X0, Y0 - DLY)
                      
                      橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CKR"):
                      Call P_橋脚_鉄筋図("", "", "", -X0, Y0 - DLY)
                      End If
           
           '[[[  CK Mark ]]] *2002.10.31
            Print #60, "[色:白]\[ﾚ:Mark]"
              橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CK"):
                      If D1$ <> "" Then
                      X0 = .BXR - 鉄筋_SK位置: Y0 = .H + 土木橋脚_基礎.H
                      梁角度 = Calu角度(0, 0, 土木橋脚_梁.BXR2, 土木橋脚_梁.H1)
                      角度1 = 45 - 梁角度 / 2
                      LL1 = Val(鉄筋_L$): DLY = 土木橋脚_梁.r2 * Dtan(角度1) + LL1
                 
                      X1 = X0 + 鉄筋L_XL - 0.3 * LL1 * Dcos(梁角度): Y1 = Y0 - DLY + 鉄筋L_YL - 0.3 * LL1 * Dsin(梁角度)
                     ' X2 = -X1
                      Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]\[L:" + FD2(0, -Mark_D1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                      Call P_鉄筋_○名称(1)
                      Print #60, "[P:" + FD2(-X1, Y1) + "]\[<:270]\[L:" + FD2(0, -Mark_D1) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                      Call P_鉄筋_○名称(1)
                      End If

     End With
     End Sub
Sub P_柱_断面AA()
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
           
            Print #60, "[色:白]\[ﾚ:躯体]"
     Call P_橋脚_梁_平面図
     Call P_橋脚_柱_断面図
     
     主筋_Ck_L = 土木橋脚_基礎.H + 土木橋脚_柱.H + 土木橋脚_梁.H - 800
     
     
     
      '[[[ X方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
           Call PP_柱_X方向_主筋(主筋_Ck_L)
      
      '[[[ X方向_主筋 寸法  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
           寸法位置2 = X寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = (寸法位置2 - .BYR) / 現作図_Scale - 1
              Print #60, "  [P:" + FD2(-.BXL, 寸法位置2) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):    D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + "]"
              Print #60, D11$
     
      '[[[ X方向_主筋 被ﾘ寸法  ]]]
           寸法位置3 = Y寸法位置1 + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補3 = (-寸法位置3 - 土木橋脚_梁.BXL) / 現作図_Scale - 1
              X段数 = 1: XK2 = 0
              XK1 = 橋脚_柱("X主筋被ﾘ_1段"): If X段数 > 1 Then XK2 = 橋脚_柱("X主筋被ﾘ_2段")
                   YL = XK1: If XK2 > 0 Then YL = XK2
                   D11$ = "  [P:" + FD2(寸法位置3, -.BYL) + "]\"
                   D12$ = "  [P:" + FD2(寸法位置3, .BYR - YL) + "]\"
                   Select Case X段数
                   Case 1:       D11$ = D11$ + "[寸:" + FD3(0, XK1, -補3) + "]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(0, XK1, -補3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[寸:" + FD3(0, XK1, -補3) + ",,LR=5|" + FD3(0, XK2 - XK1, -補3) + ",,RL=5]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(0, XK2 - XK1, -補3) + ",,LR=5|" + FD3(0, XK1, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
      
      
      '[[[ Y方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
            Call PP_柱_Y方向_主筋(主筋_Ck_L)
      
      '[[[ Y方向_主筋 寸法  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
           寸法位置2 = Y寸法位置1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = (-寸法位置2 - 土木橋脚_梁.BXL) / 現作図_Scale - 1
              Print #60, "  [P:" + FD2(寸法位置2, -.BYL) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):      D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, .BY - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$
     
      '[[[ Y方向_主筋 被ﾘ寸法  ]]]
           寸法位置3 = X寸法位置1 - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補3 = (寸法位置3 - .BYR) / 現作図_Scale - 1
              Y段数 = 1: YK2 = 0
              YK1 = 橋脚_柱("Y主筋被ﾘ_1段"): If Y段数 > 1 Then YK2 = 橋脚_柱("Y主筋被ﾘ_2段")
                   XL = YK1: If YK2 > 0 Then XL = YK2
                   D11$ = "  [P:" + FD2(-.BXL, 寸法位置3) + "]\"
                   D12$ = "  [P:" + FD2(.BXR - XL, 寸法位置3) + "]\"
                   Select Case Y段数
                   Case 1:       D11$ = D11$ + "[寸:" + FD3(YK1, 0, -補3) + "]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(YK1, 0, -補3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[寸:" + FD3(YK1, 0, -補3) + ",,LR=5|" + FD3(YK2 - YK1, 0, -補3) + ",,RL=5]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(YK2 - YK1, 0, -補3) + ",,LR=5|" + FD3(YK1, 0, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
     
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
     
     Call PP_柱_外周_Hoop
     
     
      D1$ = 橋脚_柱("内HoopX-2")
      If D1$ <> "" Then Call PP_柱_X方向_内_Hoop_2 Else PP_柱_X方向_内_Hoop
     
     
     
     Call PP_柱_Y方向_内_Hoop
     
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示X_XHoop = -.BXL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.6 * 鉄筋P_Σ数)
                  表示X_XHoop内 = -.BXL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    '[[[  外周 X Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HoopX")
              X0 = 表示X_XHoop:   Y1 = -.BYL + 鉄筋_SK位置: Y2 = .BYR - 鉄筋_SK位置

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90," + F9(Y2 - Y1) + "]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
    '[[[  内部 X Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HoopX-2")
              If D1$ = "" Then D1$ = 橋脚_柱("内HoopX")
              X0 = 表示X_XHoop内: Y1 = Val(鉄筋_D$) / 2:

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90,]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
    
    
    '[[[ 表示Y 座標  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示Y_YHoop = .BYR - (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.5 * 鉄筋P_Σ数)
                  表示Y_YHoop内 = -.BYL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    
    
      D1$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
      R_Mark_R1 = Mark_R1 + Stoper位置_X(Stoper位置_Data数) + Stoper位置_BX(Stoper位置_Data数) / 2
    '[[[  外周 Y Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HoopY")
              Y0 = 表示Y_YHoop:   X1 = -.BXL + 鉄筋_SK位置: X2 = .BXR - 鉄筋_SK位置

              D1$ = "[P:" + FD2(X1, Y0) + "]\[<:0," + F9(X2 - X1) + "]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + R_Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
    '[[[  内部 Y Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HoopY")
              Y0 = 表示Y_YHoop内: X1 = -.BXL + Val(鉄筋_X$) + Val(鉄筋_B$) / 2: X2 = X1 - Val(鉄筋_X$)
              D1$ = "[P:" + FD2(X2, Y0) + "]\[<:0," + 鉄筋_X$ + ",*]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + R_Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
     
     Call P_橋脚_Stoper_平面("X")
     End With
     End Sub
Sub P_柱_断面BB()
     ' 横断面
     
     With 土木橋脚_柱
      
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
      '[[[ 格図名 ]]]
         Y0 = .BYR + (寸法線位置_柱平面B.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ｂ－ｂ")
      
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
           Call PP_柱_X方向_主筋(0)
      
      '[[[ X方向_主筋 寸法  ]]]
           D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
           寸法位置2 = X寸法位置1 - 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = (寸法位置2 - .BYR) / 現作図_Scale - 1
              Print #60, "  [P:" + FD2(-.BXL, 寸法位置2) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):    D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + "]"
              Print #60, D11$
     
      '[[[ X方向_主筋 被ﾘ寸法  ]]]
           寸法位置3 = Y寸法位置1 + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補3 = (-寸法位置3 - .BXL) / 現作図_Scale - 1
              X段数 = 橋脚_柱("Xpit段数"): XK2 = 0
              XK1 = 橋脚_柱("X主筋被ﾘ_1段"): If X段数 > 1 Then XK2 = 橋脚_柱("X主筋被ﾘ_2段")
                   YL = XK1: If XK2 > 0 Then YL = XK2
                   D11$ = "  [P:" + FD2(寸法位置3, -.BYL) + "]\"
                   D12$ = "  [P:" + FD2(寸法位置3, .BYR - YL) + "]\"
                   Select Case X段数
                   Case 1:       D11$ = D11$ + "[寸:" + FD3(0, XK1, -補3) + "]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(0, XK1, -補3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[寸:" + FD3(0, XK1, -補3) + ",,LR=5|" + FD3(0, XK2 - XK1, -補3) + ",,RL=5]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(0, XK2 - XK1, -補3) + ",,LR=5|" + FD3(0, XK1, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
     
     
     
     
      '[[[ Y方向_主筋  ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
           Call PP_柱_Y方向_主筋(0)
      
      '[[[ Y方向_主筋 寸法  ]]]
           D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
           寸法位置2 = Y寸法位置1 + 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補2 = (-寸法位置2 - .BXL) / 現作図_Scale - 1
              Print #60, "  [P:" + FD2(寸法位置2, -.BYL) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)):      D11$ = D11$ + FD3(0, 鉄筋P_L(ii), -補2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, .BY - 鉄筋P_位置(鉄筋P_Σ数), 0) + "]"
              Print #60, D11$
     
      '[[[ Y方向_主筋 被ﾘ寸法  ]]]
           寸法位置3 = X寸法位置1 - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
           補3 = (寸法位置3 - .BYR) / 現作図_Scale - 1
              Y段数 = 橋脚_柱("Ypit段数"): YK2 = 0
              YK1 = 橋脚_柱("Y主筋被ﾘ_1段"): If Y段数 > 1 Then YK2 = 橋脚_柱("Y主筋被ﾘ_2段")
                   XL = YK1: If YK2 > 0 Then XL = YK2
                   D11$ = "  [P:" + FD2(-.BXL, 寸法位置3) + "]\"
                   D12$ = "  [P:" + FD2(.BXR - XL, 寸法位置3) + "]\"
                   Select Case Y段数
                   Case 1:       D11$ = D11$ + "[寸:" + FD3(YK1, 0, -補3) + "]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(YK1, 0, -補3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[寸:" + FD3(YK1, 0, -補3) + ",,LR=5|" + FD3(YK2 - YK1, 0, -補3) + ",,RL=5]"
                                 D12$ = D12$ + "[寸:" + F9(-補3) + ":" + FD3(YK2 - YK1, 0, -補3) + ",,LR=5|" + FD3(YK1, 0, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
     
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
     
     
            Print #60, "[色:空]\[ﾚ:Hoop]"
     Call PP_柱_外周_Hoop
     Call PP_柱_X方向_内_Hoop
     Call PP_柱_Y方向_内_Hoop
     
     
    '[[[ 表示X 座標  ]]]
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示X_XHoop = -.BXL + (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.6 * 鉄筋P_Σ数)
                  表示X_XHoop内 = -.BXL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    '[[[  外周 X Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HoopX")
              X0 = 表示X_XHoop:   Y1 = -.BYL + 鉄筋_SK位置: Y2 = .BYR - 鉄筋_SK位置

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90," + F9(Y2 - Y1) + "]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
    '[[[  内部 X Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HoopX")
              X0 = 表示X_XHoop内: Y1 = Val(鉄筋_D$) / 2:

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90,]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
    
    
    '[[[ 表示Y 座標  ]]]
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
                      ni = 3: If .r = 0 Then ni = 4
                  表示Y_YHoop = .BYR - (鉄筋P_位置(ni) + 鉄筋P_位置(ni + 1)) / 2
                  ni2 = Int(0.5 * 鉄筋P_Σ数)
                  表示Y_YHoop内 = -.BYL + (鉄筋P_位置(ni2) + 鉄筋P_位置(ni2 + 1)) / 2
     
    '[[[  外周 Y Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("外HoopY")
              Y0 = 表示Y_YHoop:   X1 = -.BXL + 鉄筋_SK位置: X2 = .BXR - 鉄筋_SK位置

              D1$ = "[P:" + FD2(X1, Y0) + "]\[<:0," + F9(X2 - X1) + "]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
    '[[[  内部 Y Hoop Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_柱("内HoopY")
              Y0 = 表示Y_YHoop内: X1 = -.BXL + Val(鉄筋_X$) + Val(鉄筋_B$) / 2: X2 = X1 - Val(鉄筋_X$)
              D1$ = "[P:" + FD2(X2, Y0) + "]\[<:0," + 鉄筋_X$ + ",*]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_鉄筋_○名称(1)
     
     
     
     End With
     End Sub

Sub P_柱_断面BB鉄筋配筋図()
     ' 横断面
      
     With 土木橋脚_柱
      '[[[ 格図名 ]]]
         Y0 = .BYR + 格図名開き位置 * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ｂ－ｂ鉄筋配筋図")
      
     
            Print #60, "[Msize:" + FD1(橋脚_鉄筋_Mark_Msize) + "]"
   '  Print #60, "[Msize:2.5]"
            Print #60, "[色:白]\[ﾚ:躯体]"
     Call P_橋脚_柱_断面図
       
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
     Call PP_柱_X方向_主筋_Mark(0)
     Call PP_柱_Y方向_主筋_Mark(0)
     
     Call PP_柱_角主筋_Mark(0)
     
            Print #60, "[色:空]\[ﾚ:Hoop]"
     Call PP_柱_外周_Hoop
     Call PP_柱_X方向_内_Hoop
     Call PP_柱_Y方向_内_Hoop

     End With
        
     End Sub


Sub PP_柱_X方向_主筋(主筋_Ck_L)
     ' 主筋_Ck_L   主筋がその位置にあるか無いかのﾁｪｯｸ を行い
     ' 柱_X方向_主筋 Mark 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = .BYR - 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = -.BYL + 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      End If
                      Next ii
     
              D1$ = 橋脚_柱("X主筋_2段"):   D1$ = 橋脚_柱("Xpit_2段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = .BYR - 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = -.BYL + 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      End If
                      Next ii

     End With
     End Sub


Sub PP_柱_Y方向_主筋(主筋_Ck_L)
     ' 柱_Y方向_主筋 Mark 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii):   Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = .BXR - 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii):    Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      End If
                      Next ii
     
              D1$ = 橋脚_柱("Y主筋_2段"):   D1$ = 橋脚_柱("Ypit_2段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii): Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      Xp = .BXR - 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii):  Print #60, "   [P:" + FD2(Xp, Yp) + "]\[橋脚鉄筋:" + 主筋$ + "]"
                      End If
                      Next ii

     End With
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

Sub PP_柱_X方向_主筋_Mark(主筋_Ck_L)
     ' 柱_X方向_主筋 Mark字○ 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("外HOOPX"):   Hoop_dt = .CHoop_dt
                主筋dt = Hoop_dt + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
              
              D1$ = 橋脚_柱("X主筋_1段"):   D1$ = 橋脚_柱("Xpit_1段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): '主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = .BYR - 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = -.BYL + 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      End If
                      Next ii

              D1$ = 橋脚_柱("X主筋_2段"):   D1$ = 橋脚_柱("Xpit_2段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      '*2002.10.31
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = Hoop_dt + 1.6 * 橋脚_鉄筋_Mark_D * 現作図_Scale: '主筋dt = 鉄筋_SK位置
                      
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = .BYR - 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = -.BXL + 鉄筋P_位置(ii): Yp = -.BYL + 主筋dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      End If
                      Next ii

     End With
     End Sub

Sub PP_柱_Y方向_主筋_Mark(主筋_Ck_L)
     ' 柱_Y方向_主筋 Mark字○ 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("外HOOPX"):   Hoop_dt = .CHoop_dt
                主筋dt = Hoop_dt + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
              D1$ = 橋脚_柱("Y主筋_1段"):   D1$ = 橋脚_柱("Ypit_1段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): '主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii):   Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = .BXR - 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii):    Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      End If
                      Next ii
     
              D1$ = 橋脚_柱("Y主筋_2段"):   D1$ = 橋脚_柱("Ypit_2段")
              For ii = 1 To 柱筋_柱筋Σ数
                      主筋番号 = 柱筋_柱筋番号(ii)
                      '*2002.10.31
                      D1$ = 橋脚_柱("C" + F9(主筋番号)):  主筋$ = 橋脚鉄筋径$(1): 主筋dt = Hoop_dt + 1.6 * 橋脚_鉄筋_Mark_D * 現作図_Scale: 主筋dt = 鉄筋_SK位置
                      If 鉄筋L_全ΣL > 主筋_Ck_L Then
                      Xp = -.BXL + 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii): Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      Xp = .BXR - 主筋dt: Yp = -.BYL + 鉄筋P_位置(ii):  Print #60, "   [P:" + FD2(Xp, Yp) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(主筋番号) + "]"
                      End If
                      Next ii

     End With
     End Sub
Sub PP_柱_角主筋_Mark(主筋_Ck_L)
     ' 柱_角_主筋 Mark字○ 図
     With 土木橋脚_柱
              D1$ = 橋脚_柱("外HOOPX"):   Hoop_dt = .CHoop_dt
                Hoop_r = .CHoop_r: DX = Hoop_r - (Hoop_r - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2) * Dcos(45)
                主筋dt = Hoop_dt + DX
              '*2002.10.31
              If Hoop_r <= 0 Then 主筋dt = Hoop_dt + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
              
              
              D1$ = 橋脚_柱("角主筋"): 主筋$ = 橋脚鉄筋径$(1): 主筋番号 = 柱筋_柱筋番号(1)
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


Sub PP_柱_外周_Hoop()
     With 土木橋脚_柱
     D1$ = 橋脚_柱("外HOOPX")
           X_Hoop_XL = Val(鉄筋_X$)
           Call Ddata("X", UCase(鉄筋_Y$), Ds$(), Di(), ni)
           Y_HOOP_XL = Di(1): Y_Hoop_YL = Di(2)

                 X0 = -X_Hoop_XL / 2: Y0 = .BYR - .CHoop_dt
                 橋脚_鉄筋θ = 0:  Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                 X0 = X_Hoop_XL / 2: Y0 = -.BYL + .CHoop_dt
                 橋脚_鉄筋θ = 180:  Call P_橋脚_鉄筋図("", "", "", X0, Y0)

     D1$ = 橋脚_柱("外HOOPY")

                 X0 = -.BXL + Y_HOOP_XL + .CHoop_dt: Y0 = -Y_Hoop_YL / 2
                 橋脚_鉄筋θ = 180:  Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                 X0 = .BXR - Y_HOOP_XL - .CHoop_dt: Y0 = Y_Hoop_YL / 2
                 橋脚_鉄筋θ = 0:  Call P_橋脚_鉄筋図("", "", "", X0, Y0)


     End With
     End Sub

Sub PP_柱_X方向_内_Hoop()
     J鉄筋開き = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
     With 土木橋脚_柱
           
           D1$ = 橋脚_柱("内HOOPX")
           XL = FP_橋脚_鉄筋_長さ(鉄筋_B$): YL = FP_橋脚_鉄筋_長さ(鉄筋_D$)
           D1$ = 橋脚_柱("内HOOPX"): ' 必要
                 
                 X0 = -XL / 2: Y0 = -YL / 2
                 橋脚_鉄筋θ = 90:   Call P_橋脚_鉄筋図("", "", "", X0, Y0)

     End With
     橋脚_J鉄筋開き = J鉄筋開き
     End Sub

Sub PP_柱_X方向_内_Hoop_2()
     J鉄筋開き = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
     With 土木橋脚_柱
           
           D1$ = 橋脚_柱("内HOOPX-2")
           XL = FP_橋脚_鉄筋_長さ(鉄筋_B$): YL = FP_橋脚_鉄筋_長さ(鉄筋_D$)
           D1$ = 橋脚_柱("内HOOPX-2"): ' 必要
                 X0 = -XL / 2: Y0 = -YL / 2
                 橋脚_鉄筋θ = 90:   Call P_橋脚_鉄筋図("", "", "", X0, Y0)

     End With
     橋脚_J鉄筋開き = J鉄筋開き
     End Sub


Sub PP_柱_Y方向_内_Hoop()
     ' 断面配筋
     ReDim Hoop_位置(50) As Single
     J鉄筋開き = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
     With 土木橋脚_柱
           
           XL = 橋脚_柱("内HOOPY_XL"): YL = 橋脚_柱("内HOOPY_YL")
           D1$ = 橋脚_柱("内HOOPY"):    Xpit$ = 鉄筋_X$:    Call 橋脚_鉄筋_Pit_ck(Xpit$):           ΣHoop_数 = 鉄筋P_Σ数
           
           For ii = 1 To ΣHoop_数: Hoop_位置(ii) = 鉄筋P_位置(ii): Next ii
           
                 For ii = 1 To ΣHoop_数
                 If ii / 2 <> Int(ii / 2) Then Print #60, "[con:]": Hoop_Dy = 0 Else Print #60, "[dot:]": Hoop_Dy = 0.5
                 X0 = -.BXL + Hoop_位置(ii) - XL / 2: Y0 = -YL / 2 - Hoop_Dy * 現作図_Scale
                 D1$ = 橋脚_柱("内HOOPY")
                 橋脚_鉄筋θ = 90:   Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                 Next ii
                 Print #60, "[con:]"
             Hoop_Dy = 0
     End With
     橋脚_J鉄筋開き = J鉄筋開き
     End Sub


Sub P_柱_Cn(符号$)
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\* " + 符号$
     橋脚_鉄筋θ = 90:   D1$ = 橋脚_柱(符号$ + "本数"): Y0 = Val(鉄筋_位置$)

     Call P_橋脚_鉄筋図("Y", "", "", 0, Y0)
     Print #60, "[Pm:" + FD2(12, 70) + "]"
     Call P_鉄筋_○名称縦(3)
     End Sub


Sub P_柱_CK()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*CK"
      橋脚_鉄筋θ = 90: D1$ = 橋脚_柱("CK"):
     Call P_橋脚_鉄筋図("Y", "", "", 0, 0)
     Print #60, "[Pm:" + FD2(-5, -20) + "]"
     Call P_鉄筋_○名称(3)

     End Sub


Sub P_柱_c1_X()
     '  c1 の X方向
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c1-X"
     橋脚_鉄筋θ = 0
     D1$ = 橋脚_柱("外HoopX")
     
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, 0)
     
     Print #60, "[Pm:" + FD2(-10, -20) + "]"
     Call P_鉄筋_○名称(3)
     

     End Sub
Sub P_柱_c1_Y()
     '  c1 の Y方向
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c1-Y"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_柱("外HoopY")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[Pm:" + FD2(-1, -10) + "]"
     Call P_鉄筋_○名称(3)

     End Sub


Sub P_柱_c2_1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c2-1"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_柱("内HoopX")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
     Call P_鉄筋_○名称(3)

     End Sub
Sub P_柱_c2_2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c2-2"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_柱("内HoopX-2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
     Call P_鉄筋_○名称(3)
     End Sub

Sub P_柱_c3_1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c3-1"
     橋脚_鉄筋θ = 90
     鉄筋L_加工調整$ = "Y"
     D1$ = 橋脚_柱("内HoopY")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
     Call P_鉄筋_○名称(3)

     End Sub
Sub P_柱_c3_2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c3-2"
     橋脚_鉄筋θ = 90
     鉄筋L_加工調整$ = "Y"
     D1$ = 橋脚_柱("内HoopY-2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
     Call P_鉄筋_○名称(3)

     End Sub
Sub P_柱_c3_3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*c3-3"
     橋脚_鉄筋θ = 90
     鉄筋L_加工調整$ = "Y"
     D1$ = 橋脚_柱("内HoopY-3")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(-10 * 現作図_Scale, -鉄筋L_Ycen - 20 * 現作図_Scale) + "]"
     Call P_鉄筋_○名称(3)

     End Sub
                   
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
                        
     Select Case 位置$
     Case "U":   LL1 = 表示位置_Z(i1 - 1)
     Case "C":  LL1 = (表示位置_Z(i1) + 表示位置_Z(i1 - 1)) / 2
     Case Else: LL1 = 表示位置_Z(i1)
     End Select
     FP_表示位置Z = LL1
     End Function
 
 
'┌─────────────────────────────────────────────┐
'│■ 梁         作図        　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_梁_断面a()
     '梁X(長)断面
     
     ReDim SMark$(500)
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     
     With 土木橋脚_梁
     
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale:     Mark_U2 = Mark_U1 + 1.2 * Mark_Pit
                 Mark_D1 = .H + 1.2 * Mark_Pit:    Mark_D2 = Mark_D1 + 1.2 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
     
      '[[[ 格図名 ]]]
         
         左梁勾配 = -.H1 / .BXL2: 左梁角度 = Calu角度(0, 0, .BXL2, .H1)
         右梁勾配 = .H1 / .BXR2: 右梁角度 = Calu角度(0, 0, .BXR2, .H1)
         
         Y0 = (寸法線位置_梁長断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面Ａ－Ａ")
     
                
      '[[[ 躯体 ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
          下がり = 土木橋脚_梁.勾配L
          Call P_橋脚_梁_長断面図(0, 0, 下がり, 0)
          
      
      '[[[ 断面位置指定 ]]]
             X1 = -.BXL - 10 * 現作図_Scale: Y1 = 下がり - 1 * 現作図_Scale
             X2 = .BXR + 10 * 現作図_Scale
             Call P_橋脚_断面位置指定(X2, Y1, X1, Y1, "Ｂ", "Ｂ", 0)
             Y1 = -.H2 + 3 * 現作図_Scale
             Call P_橋脚_断面位置指定(X2, Y1, X1, Y1, "Ｃ", "Ｃ", 0)
             X1 = 土木橋脚_柱.BXR + 5 * 現作図_Scale: Y1 = 15 * 現作図_Scale
             X2 = X1: Y2 = -1.5 * .H - 10 * 現作図_Scale
             Call P_橋脚_断面位置指定(X1, Y1, X1, Y2, "ａ", "ａ", 0)
      
      
      '[[[ 躯体寸法 ]]]
          ' U寸法
                  寸法位置1 = 寸法線位置_梁長断面.U開き * 現作図_Scale
                  補1 = 寸法線位置_梁長断面.U開き - 1
                  Print #60, "[P:" + FD2(-.BXL, 寸法位置1) + "]"
                  Print #60, "[寸:" + F9(-補1) + ":" + FD3(.BX, 0, -補1) + "]"
          
          ' D寸法
                  寸法位置3 = 1.5 * .H + 寸法線位置_梁長断面.D開き * 現作図_Scale
                  補3 = 寸法線位置_梁長断面.D開き - 1
                  補31 = (寸法位置3 - .H2) / 現作図_Scale - 1
                  Print #60, "[P:" + FD2(-.BXL, -寸法位置3) + "]"
                  Print #60, "[寸:" + F9(補31) + ":" + FD3(.BXL2, 0, 補3) + "|" + FD3(土木橋脚_柱.BX, 0, 補3) + "|" + FD3(.BXR2, 0, 補31) + "]"
          
          
          
          ' L寸法
                  LLL = 寸法線位置_梁長断面.L開き
                  Print #60, "[P0:]\[p:" + FD2(-.BXL, -.H) + "]\[pm:" + FD2(-LLL, 0) + "]"
                  Print #60, "[寸:" + F9(-LLL - .BXL2 / 現作図_Scale + 1) + ":" + FD2(0, .H1) + "]"
                  Print #60, "[寸:" + F9(-LLL + 1) + ":" + FD3(0, .H2 + .勾配L, -LLL + 1) + "]"
          
          ' R寸法
                  RLL = 寸法線位置_梁長断面.R開き
                  Print #60, "[P0:]\[p:" + FD2(.BXR, -.H) + "]\[pm:" + FD2(RLL, 0) + "]"
                  Print #60, "[寸:" + F9(RLL + .BXR2 / 現作図_Scale - 1) + ":" + FD2(0, .H1) + "]"
                  Print #60, "[寸:" + F9(RLL - 1) + ":" + FD3(0, .H2 + .勾配L, RLL - 1) + "]"
          
     
    '[[[ ｽﾄｯﾊﾟｰ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
           Print #60, "[dot:]"
           Call P_橋脚_Stoper_X断面(下がり, -下がり)
           Print #60, "[con:]"
     
     
     
    '[[[  X 表示位置   ]]]
              D1$ = 橋脚_梁("Spit"):  表示位置_X個数 = 鉄筋P_Σ数
              For ii = 1 To 鉄筋P_Σ数:  表示位置_X(ii) = -.BXL + 鉄筋P_位置(ii):     Next ii
              表示位置_XPit = Abs(表示位置_X(2) - 表示位置_X(3))
             
             Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
     
    '[[[  Z 表示位置   ]]]
              D1$ = 橋脚_梁("B側1"): 表示位置_Z個数 = 鉄筋P_Σ数
              For ii = 1 To 鉄筋P_Σ数:  表示位置_Z(ii) = -鉄筋P_位置(ii):      Next ii
              表示位置_Zpit = Abs(表示位置_Z(2) - 表示位置_Z(3))
     
     
     Print #60, "[色:黄]"
      
    
    '[[[ ﾙｰﾌﾟ筋横図 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
        橋脚_J鉄筋開き_BAK = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
        For ii = 1 To 3:
              橋脚_鉄筋θ = 0
              Select Case ii
              Case 1:   D1$ = 橋脚_梁("BR1横"):
              Case 2:   D1$ = 橋脚_梁("BR2横"):
              Case 3:   D1$ = 橋脚_梁("BR3横"):
              End Select
             If D1$ <> "" Then
                   
                   For i2 = 1 To 鉄筋P_Σ数
                      X0 = -鉄筋L_Xcen: Y0 = -鉄筋P_位置(i2)
                       Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                      Next i2
              End If
              Next ii
            橋脚_J鉄筋開き = 橋脚_J鉄筋開き_BAK
     
     
    '[[[ ﾙｰﾌﾟ筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
            D1$ = 橋脚_梁("BR1横")
            If D1$ <> "" Then
                   XX = Stoper位置_X(1) - Stoper位置_BX(1) / 2:  X0 = FP_表示位置X("L", XX)
                   Y0 = -鉄筋P_位置(鉄筋P_Σ数):
                   Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]": ' ",-]"
                   YLL = -Y0 + Mark_U2
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(1)
                   End If
     
            D1$ = 橋脚_梁("BR2横")
            If D1$ <> "" Then
                   XX = Stoper位置_X(2) + Stoper位置_BX(2) / 2 + 500: X0 = FP_表示位置X("R", XX)
                   Y0 = -鉄筋P_位置(鉄筋P_Σ数):
                   Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]": ' ",-]"
                   YLL = -Y0 + Mark_U2
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(1)
                   End If
     
            D1$ = 橋脚_梁("BR3横")
            If D1$ <> "" Then
                   XX = Stoper位置_X(3) + Stoper位置_BX(3) / 2:  X0 = FP_表示位置X("R", XX)
                   Y0 = -鉄筋P_位置(鉄筋P_Σ数):
                   D01$ = "+" + 鉄筋_pit$
                   Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + 鉄筋_pit$ + ",*]": ' ",-]"
                   YLL = -Y0 + Mark_U2
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(1)
                   End If
     
     
     
     
     
     
     
    '[[[ B2-1 ]]]  Old B6
            Print #60, "[色:黄]\[ﾚ:主筋]"
             橋脚_鉄筋θ = 0:  D1$ = 橋脚_梁("B2-1")
                      X0 = -鉄筋L_Xcen:  Y0 = -鉄筋_SK位置:     Call P_橋脚_鉄筋図("", "", "", X0, Y0)
              X1 = -鉄筋L_Xcen: X2 = 鉄筋L_Xcen
    
               '[[[[ Mark ]]]
                   X0 = FP_表示位置X("C", 0)
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                   YLL = -Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(1)
    
    
    
    '[[[ B2-2 ]]]  Old B7
            Print #60, "[色:黄]\[ﾚ:主筋]"
             橋脚_鉄筋θ = 0: D1$ = 橋脚_梁("B2-2")
                      X0 = X1: Y0 = -鉄筋_SK位置:    Call P_橋脚_鉄筋図("", "", "", X0, Y0)
               
               '[[[[ Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                   X0 = FP_表示位置X("R", -.BXL)
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                   YLL = -Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(1)
    
    
    '[[[ B2-2R ]]]  Old B7
            Print #60, "[色:黄]\[ﾚ:主筋]"
             橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B2-2R")
                      X0 = X2 - 鉄筋L_XL: Y0 = -鉄筋_SK位置 - 鉄筋L_YL: Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                      Y0 = -鉄筋_SK位置
               '[[[[ Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                   X0 = FP_表示位置X("L", X2 - 鉄筋L_XL / 2)
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                   YLL = -Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(1)
    
    
    
    
    '[[[ B2-3 ]]]  Old B8
            Print #60, "[色:黄]\[ﾚ:主筋]"
             橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B2-3")
                      X0 = X2 - 鉄筋L_XL: Y0 = -鉄筋_SK位置 - 鉄筋L_YL:
                      For i2 = 1 To Stoper位置_X個数 - 1:
                            X3 = (Stoper位置_X(i2) + Stoper位置_X(i2 + 1)) / 2 - 鉄筋L_XL / 2
                            Call P_橋脚_鉄筋図("", "", "", X3, Y0)
                            Next i2
     
               '[[[[ Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                      Y0 = -鉄筋_SK位置
                      For i2 = 1 To Stoper位置_X個数 - 1:
                            X3 = (Stoper位置_X(i2) + Stoper位置_X(i2 + 1)) / 2
                            X0 = FP_表示位置X("R", X3)
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                            YLL = -Y0 + Mark_U1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                            Call P_鉄筋_○名称(1)
                            Next i2
     
     
    '[[[ 下鉄筋(あご部分) ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
           '  B3=D25_@3136+164+4x250+400+4x250+164_   B95+3445.1    D98+1327.9+1534.4_r150
             橋脚_鉄筋θ = 270:  D1$ = 橋脚_梁("BD1")
                    ' X0 = .BXR - あご筋_X1: Y0 = -あご筋_Y1
                    ' Call P_橋脚_鉄筋図("", "", "", X0, Y0)
                    ' X0_LL = 鉄筋L_XL: Y0_LL = 鉄筋L_YL
              
                    ' D1$ = 橋脚_梁("BD1R")
                    ' X0 = -.BXL + あご筋_X1: Y0 = -あご筋_Y1: 橋脚_鉄筋θ = 270:   '180 - あご筋_角度
                    ' Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             
             '
             '     .(X1,Y1)
             '
             '
             '     .(X01,Y01)
             '
             '                    .(X2,Y2)
             '
             被りL = あご筋_X1
             X1 = -.BXL + 被りL: Y1 = -あご筋_Y1
            ' Y=AA1*X+BB1
             X01 = -.BXL: Y01 = -.H + .H1: X02 = -土木橋脚_柱.BXL: Y02 = -.H
             Call CALUAB(X01, Y01, X02, Y02, 被りL, AA1, BB1)
             X2 = X1: Y2 = AA1 * X2 + BB1
             X3 = X2 + あご筋_LX:  Y3 = AA1 * X3 + BB1:
             Print #60, "[P:" + FD2(X1, Y1) + "]\[Lr:" + FD3(0, Y2 - Y1, あご筋_r) + "|" + FD2(X3 - X2, Y3 - Y2) + "]"
     
             被りL = あご筋_X1
             X1 = .BXR - 被りL: Y1 = -あご筋_Y1
            ' Y=AA2*X+BB2
             X01 = .BXR: Y01 = -.H + .H1: X02 = 土木橋脚_柱.BXR: Y02 = -.H
             Call CALUAB(X02, Y02, X01, Y01, 被りL, AA2, BB2)
             X2 = X1: Y2 = AA2 * X2 + BB2
             X3 = X2 - あご筋_LX:  Y3 = AA2 * X3 + BB2:
             Print #60, "[P:" + FD2(X1, Y1) + "]\[Lr:" + FD3(0, Y2 - Y1, あご筋_r) + "|" + FD2(X3 - X2, Y3 - Y2) + "]"
     
     
               '[[[[ Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                   X11 = -土木橋脚_柱.BXL + 300: X22 = 土木橋脚_柱.BXR - 300
                   Y11 = AA1 * X11 + BB1
                   Print #60, "[P:" + FD2(X11, Y11) + "]\[<:270]"
                   YLL = Mark_D2 - Abs(Y11)
                   Print #60, "[P:" + FD2(X11, Y11) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
     
                   Print #60, "[P:" + FD2(X22, Y11) + "]\[<:270]"
                   YLL = Mark_D2 - Abs(Y11)
                   Print #60, "[P:" + FD2(X22, Y11) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
     
     
     
    '[[[  上ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
              橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-1")
              D1$ = 橋脚_梁("Spit")
              X0 = -.BXL: Y0 = -鉄筋_SK位置: XL = 0: YL = 鉄筋L_YL
              For ii = 1 To 鉄筋P_Σ数
                       Print #60, "[P:" + FD2(X0 + 鉄筋P_位置(ii), Y0) + "]\[L:" + FD2(0, -YL) + "]"
                       Next ii
    
    '[[[  下ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
             ' 柱の際の鉄筋をもとに 躯体勾配により ｶｯﾄ
             ' B01 = D22_K98_B1618_D2292 + F_r160    ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01
              
              橋脚_鉄筋θ = 270: D1$ = 橋脚_梁("B01")
              D1$ = 橋脚_梁("Spit")
              X0 = -.BXL:
              左Y0 = -.H + 鉄筋_SK位置 * Dcos(左梁角度): 左Cut_YL = 0
              Σ左Xpit = 鉄筋P_L(2): 左Cut_YL = -Σ左Xpit * 左梁勾配
              
              右Y0 = -.H + 鉄筋_SK位置 * Dcos(右梁角度): 右Cut_YL = 0
              
              For ii = 1 To 鉄筋P_Σ数: X1 = X0 + 鉄筋P_位置(ii): Xpit = 鉄筋P_位置(ii + 1) - 鉄筋P_位置(ii)
                       Select Case X1
                       Case Is < -土木橋脚_柱.BXL:
                                Y1 = 左Y0 + 左Cut_YL
                                YL = 鉄筋L_YL - 左Cut_YL
                                Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YL) + "]"
                                 左Cut_YL = 左Cut_YL + Xpit * 左梁勾配
                       Case Is < 土木橋脚_柱.BXR:
                       
                       Case Else:
                                Y1 = 右Y0 + 右Cut_YL
                                YL = 鉄筋L_YL - 右Cut_YL
                                Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YL) + "]"
                                 右Cut_YL = 右Cut_YL + Xpit * 右梁勾配
                       
                       End Select
                       Next ii
    
    
    
    
    '[[[  ｽﾀｰﾗｯﾌﾟ  Mark  ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
    
              D1$ = 橋脚_梁("Spit")
              For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii):
                       Select Case X1
                       Case Is < -土木橋脚_柱.BXL:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      SMark$(ii) = "B02"
                                   Case Else:    SMark$(ii) = "B03":
                                   End Select
                                   
                       Case Is < 土木橋脚_柱.BXR:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      SMark$(ii) = "B5-1"
                                   Case Else:    SMark$(ii) = "B5-2"
                                   End Select
                       
                       Case Else:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      SMark$(ii) = "B02":
                                   Case Else:    SMark$(ii) = "B03"
                                   End Select
                       End Select
                       Next ii
              '[[[ B5-1 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-1"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL
                       Y0 = FP_表示位置Z("U", Y0) + 0.7 * 表示位置_Zpit
                       D1$ = 橋脚_梁("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B5-1": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, 15) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
    
    
              '[[[ B5-2 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-2"): Y0 = -鉄筋_SK位置 - 鉄筋L_YL
                       Y0 = FP_表示位置Z("U", Y0) + 0.3 * 表示位置_Zpit
                       D1$ = 橋脚_梁("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B5-2": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -9) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
    
              '[[[ B01, B02 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B01"): Y0 = Y0 - 2 * 表示位置_Zpit
                       Y0 = FP_表示位置Z("U", Y0) + 0.5 * 表示位置_Zpit
                       D1$ = 橋脚_梁("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B02": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1: X9 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<R:180," + Mid(D01$, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[Lm:" + FD2(-45, 0) + "]\[pm:5,0]"
                       D1$ = 橋脚_梁("B01"): Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       D1$ = 橋脚_梁("B02"): Call P_鉄筋_○名称(2)
    
              '[[[ (B01), B03,B04 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B03"): Y0 = Y0 - 表示位置_Zpit
                       D1$ = 橋脚_梁("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B03": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1: X9 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<R:180," + Mid(D01$, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, -1.2 * Mark_Pit + 表示位置_Zpit) + "]\[Lm:" + FD2(-45, 0) + "]\[pm:5,0]"
                       D1$ = 橋脚_梁("B01"): Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       D1$ = 橋脚_梁("B03"): Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       D1$ = 橋脚_梁("B04"): Call P_鉄筋_○名称(2)
    
    
    


    '[[[  ｽﾀｰﾗｯﾌﾟ 寸法 ]]]
              D1$ = 橋脚_梁("Spit")
              寸法位置2 = 寸法線位置_梁長断面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補2 = 寸法線位置_梁長断面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
              
              Print #60, "  [P:" + FD2(-.BXL, 寸法位置2) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii))
                        D11$ = D11$ + FD3(鉄筋P_L(ii), 0, -補2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + "]"
              Print #60, D11$


      
      
    '[[[   側鉄筋  ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
             '   B4=D25_K73_@98+12x150_B3150_D2829
              橋脚_鉄筋θ = 0
              D1$ = 橋脚_梁("B側1")
              XL = 鉄筋L_XL: YL = 0: 横被り = 鉄筋_SK位置
              X1 = -.BXL + 横被り: X2 = .BXR - 鉄筋_SK位置:
               
             ' あご筋_X1 あご筋_Y2 位置をもとに 躯体勾配により ｶｯﾄ
             ' 躯体交点 位置をもとに 躯体勾配により ｶｯﾄ
                   ' Y=A*X+B       X=(Y-B)/A    B=Y-A*X     A=左梁勾配  Y=-.H+.H1+横被り   B=Y-A*0
               Y_CK = -.H + .H1 + 横被り / Dcos(左梁角度)
               'AA1 = 左梁勾配: BB1 = Y_CK
              For ii = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(ii)
                       DXL = 0
                       If Y1 < Y_CK Then
                            If AA1 <> 0 Then DXL = .BXL + (Y1 - BB1) / AA1 - 横被り
                             If DXL < 0 Then DXL = Abs(DXL): '  R 部分
                             End If
                       Print #60, "[P:" + FD2(X1 + DXL, Y1) + "]\[L:" + FD2(XL - DXL, 0) + "]"
                       Print #60, "[P:" + FD2(X2 - DXL, Y1) + "]\[L:" + FD2(-XL + DXL, 0) + "]"
                       Next ii
    
    
               '[[[[ 側鉄筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
                   X1 = -.BXL + 横被り + 100: X2 = -土木橋脚_柱.BXL + 150: X3 = 土木橋脚_柱.BXR - 150: X4 = .BXR - 横被り - 100
                   Y0 = -鉄筋P_位置(1)
                   n01 = 0: D01$ = "": n02 = 0: D02$ = "": Y2 = 0
                   For ii = 1 To 鉄筋P_Σ数: Y1 = -鉄筋P_位置(ii):
                       Dpit = 鉄筋P_位置(ii) - 鉄筋P_位置(ii - 1)
                       Select Case Y1
                       Case Is > Y_CK: n01 = n01 + 1:  D01$ = D01$ + FP1(Dpit)
                       Case Else:  If Y2 = 0 Then Y2 = Y1
                                   n02 = n02 + 1: D02$ = D02$ + FP1(Dpit)
                       End Select
                       Next ii
                   
                   '[[[[ 側鉄筋 側1 ]]]
                   YLL = -Mark_D1 - Y0
                   Print #60, "[P:" + FD2(X1, 0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                   Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
    
                   Print #60, "[P:" + FD2(X4, 0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                   Print #60, "[P:" + FD2(X4, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
    
                   
                   '[[[[ 側鉄筋 側2 ]]]
                   D1$ = 橋脚_梁("B側2")
                   If D1$ <> "" Then
                   YLL = -Mark_D1 - Y2
                   Print #60, "[P:" + FD2(X2, Y2) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
                   Call P_鉄筋_○名称(2)
    
                   Print #60, "[P:" + FD2(X3, Y2) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X3, Y2) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                   Call P_鉄筋_○名称(2)
                   End If
    
    '[[[   側鉄筋  寸法 ]]]
              寸法位置6 = .BXR + 寸法線位置_梁長断面.R開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
              補6 = (寸法位置6 - .BXR) / 現作図_Scale - 1
              補61 = (寸法位置6 - .BXR) / 現作図_Scale - 1
              D1$ = 橋脚_梁("B側1")
              Print #60, "  [P:" + FD2(寸法位置6, -.H) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Ds$(鉄筋P_Data数 + 2 - ii) = 鉄筋P_Data$(ii): Di(鉄筋P_Data数 + 2 - ii) = 鉄筋P_L(ii)
                        Next ii
                        Ds(1) = "": Di(1) = .H + 下がり - 鉄筋P_位置(鉄筋P_Σ数)
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(Ds$(ii)): 'If ii > 鉄筋P_Data数 Then Moj$ = Moj$ + ",R=6"
                        D11$ = D11$ + FD3(0, Di(ii), 補6) + "," + Moj$ + "|"
                        Next ii
                        'D11$ = D11$ + "]"
                        D11$ = D11$ + FD3(0, Di(鉄筋P_Data数 + 1), 0) + ",,R=6]"
              Print #60, D11$
          
     End With
          
     End Sub




Sub P_梁_断面B()
     '梁平断面
     
     ReDim 寸法S(50) As Single, Roop鉄筋幅(50) As Single, Stoper_CX(19) As Single
     ReDim SMark$(100), Mark_Y(50) As Single
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
      
     With 土木橋脚_梁
      
                 
                 Mark_Pit = 橋脚_鉄筋名称_径 * 現作図_Scale
                 Mark_U1 = 8 * 現作図_Scale: Mark_U2 = Mark_U1 + 1.2 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.2 * Mark_Pit
                 Mark_L1 = 3 * 現作図_Scale
                 Mark_R1 = 3 * 現作図_Scale
      
      
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
             X1 = -.BXL - 10 * 現作図_Scale: Y1 = -.BYL + 5 * 現作図_Scale
             X2 = .BXR + 40 * 現作図_Scale
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
     
          ' L寸法
                  寸法位置L1 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale
                  補L1 = 寸法線位置_梁平面.L開き - 1
                  Print #60, "[P:" + FD2(寸法位置L1, -.BYL) + "]"
                  Print #60, "[寸:" + F9(-補L1) + ":" + FD3(0, .BY, -補L1) + "]"
     
      
      '[[[ ｽﾄｯﾊﾟｰ ｾﾝﾀｰ Line ]]]
                  Call P_橋脚_Stoper_平面("C")
      
     
      '[[[ ｽﾄｯﾊﾟｰ X寸法 ]]]
                  寸法位置2 = .BYR + 寸法線位置_梁平面.U開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補2 = 寸法線位置_梁平面.U開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper終点側_X寸法(寸法位置2, 補2)
      
      '[[[ ｽﾄｯﾊﾟｰ Y寸法 ]]]
                  寸法位置L2 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_梁平面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, FP_Stoper_Y寸法(寸法位置L2, 補L2)
      
      
      
      '[[[  X 表示位置   ]]]
                  D1$ = 橋脚_梁("Spit"):  表示位置_X個数 = 鉄筋P_Σ数
                  For ii = 1 To 鉄筋P_Σ数:  表示位置_X(ii) = -.BXL + 鉄筋P_位置(ii):     Next ii
                  表示位置_XPit = Abs(表示位置_X(2) - 表示位置_X(3))
      
      
      寸法数 = 0
      '[[[ ﾙｰﾌﾟ鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
                   '*OLD  B1-1=$ﾙｰﾌﾟ筋_6+6-D32_P±672_@126+2x80_XY_Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
                   '      B1=D32_K136_@126+2x80_B4124+J960+5124_D1244         ' ﾙｰﾌﾟ鉄筋(主筋) 1
                   '      B1=D32_K216_@126+3x80_B4044+J960+5044_D1084         ' ﾙｰﾌﾟ鉄筋(主筋) 2
          '* 2002.11.3  橋脚_J鉄筋開き_BAK = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
        For ii = 1 To 3:
              橋脚_鉄筋θ = 180
              Select Case ii
              Case 1:   D1$ = 橋脚_梁("BR1"): If D1$ <> "" Then 寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
              Case 2:   D1$ = 橋脚_梁("BR2"): If D1$ <> "" Then 寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
              Case 3:   D1$ = 橋脚_梁("BR3"): If D1$ <> "" Then 寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
              End Select
              Roop鉄筋_K位置 = 鉄筋_SK位置
                 X0 = -鉄筋L_Xcen: Y0 = .BYR - 鉄筋_SK位置 - 鉄筋L_YL / 2 - 鉄筋L_Ycen
                       '* 2002.11.13
                       Call P_橋脚_鉄筋図("杭", "", "", X0, Y0)
                 
                 X0 = -鉄筋L_Xcen: Y0 = -.BYL + 鉄筋_SK位置 + 鉄筋L_YL / 2 - 鉄筋L_Ycen
                       Call P_橋脚_鉄筋図("杭", "", "", X0, Y0)
              Roop鉄筋幅(寸法数) = 鉄筋L_YL
              Next ii
            
      
      '[[[ ﾙｰﾌﾟ鉄筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              Stoper$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
              橋脚_鉄筋θ = 180
               '[[[ BR1 Mak ]]]
                       D1$ = 橋脚_梁("BR1")
                       If D1$ <> "" Then
                       X1 = Stoper位置_X(1) - 7 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) + 3 * 表示位置_XPit
                       X1 = FP_表示位置X("L", X1): X2 = FP_表示位置X("R", X2)
                       Y1 = -.BYL + 鉄筋_SK位置 + 鉄筋L_YL - 橋脚_J鉄筋開き * 現作図_Scale: Y2 = .BYR - 鉄筋_SK位置
                       Ypit = Y2 - Y1:
                       YLL = -Y1 + .BYR + Mark_U1
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
      
               '[[[ BR2 Mak ]]]
                       D1$ = 橋脚_梁("BR2")
                       If D1$ <> "" Then
                       X1 = Stoper位置_X(1) + 4 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) - 7 * 表示位置_XPit
                       X1 = FP_表示位置X("R", X1): X2 = FP_表示位置X("L", X2)
                       Y1 = -.BYL + 鉄筋_SK位置 + 鉄筋L_YL - 橋脚_J鉄筋開き * 現作図_Scale: Y2 = .BYR - 鉄筋_SK位置
                       Ypit = Y2 - Y1:
                       YLL = -Y1 + .BYR + Mark_U1
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
      
               '[[[ BR2 Mak ]]]
                       D1$ = 橋脚_梁("BR3")
                       If D1$ <> "" Then
                       X1 = Stoper位置_X(1) + 3 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) - 8 * 表示位置_XPit
                       X1 = FP_表示位置X("R", X1): X2 = FP_表示位置X("L", X2)
                       Y1 = -.BYL + 鉄筋_SK位置 + 鉄筋L_YL - 橋脚_J鉄筋開き * 現作図_Scale: Y2 = .BYR - 鉄筋_SK位置
                       Ypit = Y2 - Y1:
                       YLL = -Y1 + .BYR + Mark_U2
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
                       End If
      
      
      
      '[[[ ﾙｰﾌﾟ鉄筋寸法 ]]]
                  寸法位置L3 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_梁平面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
            LLM1 = Roop鉄筋幅(寸法数): LLM2 = .BY - 2 * (寸法S(1) + Roop鉄筋幅(1))
            For ii = 寸法数 To 1 Step -1:    寸法S(ii) = 寸法S(ii) - 寸法S(ii - 1):    Next ii
                  D1$ = ""
                  For ii = 1 To 寸法数
                        D1$ = D1$ + "|" + FD3(0, 寸法S(ii), -補L3): If ii = 1 Then D1$ = D1$ + ",,L=7"
                        Next ii
                  D1$ = D1$ + "|" + FD3(0, LLM1, -補L3)
                  If 寸法数 > 1 Then
                          For ii = 寸法数 To 2 Step -1: D1$ = D1$ + "|" + FD3(0, 寸法S(ii), -補L3): If ii = 2 Then D1$ = D1$ + ",,LC=5"
                               Next ii
                          End If
                  '.... ｾﾝﾀｰ
                  D1$ = D1$ + "|" + FD3(0, LLM2, -補L3)
      
                  If 寸法数 > 1 Then
                          For ii = 2 To 寸法数: D1$ = D1$ + "|" + FD3(0, 寸法S(ii), -補L3): If ii = 2 Then D1$ = D1$ + ",,RC=5"
                               Next ii
                          End If
                  D1$ = D1$ + "|" + FD3(0, LLM1, -補L3)
                  If 寸法数 > 1 Then For ii = 寸法数 To 2 Step -1: D1$ = D1$ + "|" + FD3(0, 寸法S(ii), -補L3): Next ii
                  
                  D1$ = "[寸:" + Mid(D1$, 2) + "|" + FD3(0, 寸法S(1), -補L3) + ",,R=7]"
                  Print #60, "[P:" + FD2(寸法位置L3, -.BYL) + "]"
                  Print #60, D1$
      
      '[[[ 上鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:主筋]"
        ' 上鉄鉄筋  B2-1  B2-2  B2-3
             '            B2=D16_K126_@396.7+4*180.7_LF+8900+F
                         ' ※ B2-2, B2-3 は計算します
      
              橋脚_鉄筋θ = 0:      D1$ = 橋脚_梁("BU1")
                X1 = -鉄筋L_XL / 2: X2 = 鉄筋L_XL / 2
                   For ii = 1 To Stoper位置_X個数
                       Stoper_CX(ii) = (Stoper位置_X(ii) + Stoper位置_X(ii + 1)) / 2
                       Next ii
              
              For ii = 1 To 鉄筋P_Σ数
                       Y0 = .BYR - 鉄筋P_位置(ii)
                       Select Case FP_Stoper_Y位置(Y0)
                       Case "":      D1$ = 橋脚_梁("B2-1"): X0 = -鉄筋L_Xcen: Call P_橋脚_鉄筋図("", "V", "", X0, Y0)
                       Case Else:
                                     D1$ = 橋脚_梁("B2-2平面"):  Call P_橋脚_鉄筋図("", "V", "", X1, Y0)
                                     橋脚_鉄筋θ = 180:          Call P_橋脚_鉄筋図("", "V", "R", X2, Y0)
                                     橋脚_鉄筋θ = 0: D1$ = 橋脚_梁("B2-3平面"): XL2 = 鉄筋L_XL / 2
                                     For i2 = 1 To Stoper位置_X個数 - 1:
                                         X3 = Stoper_CX(i2) - XL2: Call P_橋脚_鉄筋図("", "V", "", X3, Y0)
                                         Next i2
                       End Select
              
                       X0 = -鉄筋L_Xcen: Y0 = -.BYL + 鉄筋P_位置(ii)
                       Select Case FP_Stoper_Y位置(Y0)
                       Case "":      D1$ = 橋脚_梁("B2-1"): X0 = -鉄筋L_Xcen: Call P_橋脚_鉄筋図("", "V", "", X0, Y0)
                       Case Else:
                                     D1$ = 橋脚_梁("B2-2平面"):  Call P_橋脚_鉄筋図("", "V", "", X1, Y0)
                                     橋脚_鉄筋θ = 180:          Call P_橋脚_鉄筋図("", "V", "R", X2, Y0)
                                     橋脚_鉄筋θ = 0: D1$ = 橋脚_梁("B2-3平面"): XL2 = 鉄筋L_XL / 2
                                     For i2 = 1 To Stoper位置_X個数 - 1:
                                         X3 = Stoper_CX(i2) - XL2: Call P_橋脚_鉄筋図("", "V", "", X3, Y0)
                                         Next i2
                       End Select
                       
                  
                  Next ii
              
      
      '[[[ 上鉄筋　Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
      
              橋脚_鉄筋θ = 0:      D1$ = 橋脚_梁("BU1")
              
              表示位置_Y個数 = 鉄筋P_Σ数 * 2
              For ii = 1 To 鉄筋P_Σ数:   表示位置_Y(ii) = -.BYL + 鉄筋P_位置(ii):     Next ii
              For ii = 1 To 鉄筋P_Σ数:   表示位置_Y(表示位置_Y個数 + 1 - ii) = .BYR - 鉄筋P_位置(ii):   Next ii
              表示位置_Ypit = Abs(表示位置_Y(2) - 表示位置_Y(1))
              
              For ii = 1 To 表示位置_Y個数
                       Y0 = 表示位置_Y(ii)
                       Select Case FP_Stoper_Y位置(Y0)
                       Case "":     SMark$(ii) = "B2-1"
                       Case Else:   SMark$(ii) = "B2-23"
                       End Select
                       Next ii
                       
              '[[[ B2-1 Mark ]]]
                       橋脚_鉄筋θ = 0: D1$ = 橋脚_梁("B2-1"):
                       X0 = FP_表示位置X("C", -3 * 表示位置_XPit)
                       D01$ = "": Y0 = 0: Y_1 = 99999: D01$ = ""
                       For ii = 1 To 表示位置_Y個数: Y1 = 表示位置_Y(ii)
                             Select Case SMark$(ii)
                             Case "B2-1": If Y0 = 0 Then Y0 = Y1
                                          Ypit = Y1 - Y_1: If Y_1 <> 99999 Then D01$ = D01$ + FP1(Ypit)
                                          Y_1 = Y1: Y9 = Y1
                             Case Else:
                             End Select
                             Next ii
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       YLL = Y9 + .BYL + Mark_D1
                       Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
              
              '[[[ B2-2, B2-3 Mark ]]]
                       橋脚_鉄筋θ = 0: D1$ = 橋脚_梁("B2-2"):
                       X1 = Stoper位置_X(1) - 6 * 表示位置_XPit: X2 = Stoper位置_X(Stoper位置_Data数) + 4 * 表示位置_XPit
                       X1 = FP_表示位置X("L", X1): X2 = FP_表示位置X("R", X2)
                       
                       X3 = Stoper位置_X(1) + 5 * 表示位置_XPit: X4 = Stoper位置_X(Stoper位置_Data数) - 5 * 表示位置_XPit
                       X3 = FP_表示位置X("R", X3): X4 = FP_表示位置X("L", X4)
                       D01$ = "": Y0 = 0: Y_1 = 99999: D01$ = ""
                       For ii = 1 To 表示位置_Y個数: Y1 = 表示位置_Y(ii)
                             Select Case SMark$(ii)
                             Case "B2-23": If Y0 = 0 Then Y0 = Y1
                                          Ypit = Y1 - Y_1: If Y_1 <> 99999 Then D01$ = D01$ + FP1(Ypit)
                                          Y_1 = Y1: Y9 = Y1
                             Case Else:
                             End Select
                             Next ii
                       YLL = Y9 + .BYL + Mark_D1
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X1, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
              
                       Print #60, "[P:" + FD2(X2, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X2, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
              
                       D1$ = 橋脚_梁("B2-3")
                       Print #60, "[P:" + FD2(X3, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X3, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
              
                       Print #60, "[P:" + FD2(X4, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X4, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(2)
      
      
      
      
      '[[[ 上鉄筋寸法 ]]]
                  寸法位置L4 = -.BXL - 寸法線位置_梁平面.L開き * 現作図_Scale + 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L4 = 寸法線位置_梁平面.L開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  上鉄筋寸法幅 = Roop鉄筋幅(寸法数)
                  上鉄筋pit = 上鉄筋寸法幅 / (鉄筋P_Σ数 + 1)
                  Moj$ = F9(鉄筋P_Σ数 + 1) + "x" + f1(上鉄筋pit) + "=" + F9(上鉄筋寸法幅)
                  Y1 = -.BYL + Roop鉄筋_K位置: Y2 = .BYR - Roop鉄筋_K位置 - 上鉄筋寸法幅
                  Print #60, "[P:" + FD2(寸法位置L4, Y1) + "]\[寸:" + FD3(0, 上鉄筋寸法幅, 0) + "," + Moj$ + "]"
                  Print #60, "[P:" + FD2(寸法位置L4, Y2) + "]\[寸:" + FD3(0, 上鉄筋寸法幅, 0) + "," + Moj$ + "]"
      
      
      
      
      '[[[ 側鉄筋 上 ]]]
            Print #60, "[色:緑]\[ﾚ:Hoop]"
                  '        B4=D25_K73_@98+12x150_B3150_D2829
                 '*OLD  B4-1=9+9-D25_@98+8x150_L2880+r270+2289+r270+2880
             橋脚_鉄筋θ = 180:      D1$ = 橋脚_梁("B側1")
                       X0 = -.BXL + 鉄筋_SK位置 + 鉄筋L_XL / 2 - 鉄筋L_Xcen: Y0 = -鉄筋L_Ycen: '- 鉄筋位置_位置(jj)
                       Call P_橋脚_鉄筋図("", "", "", X0, Y0)
     
             橋脚_鉄筋θ = 0:      D1$ = 橋脚_梁("B側1")
                       X0 = .BXR - 鉄筋_SK位置 - 鉄筋L_XL / 2 - 鉄筋L_Xcen: Y0 = -鉄筋L_Ycen: '- 鉄筋位置_位置(jj)
                       Call P_橋脚_鉄筋図("", "", "", X0, Y0)
     
     
      '[[[ 側鉄筋 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
             橋脚_鉄筋θ = 180:      D1$ = 橋脚_梁("B側1")
                       X1 = Stoper位置_X(1): X1 = FP_表示位置X("C", X1):
                       X2 = Stoper位置_X(Stoper位置_Data数): X2 = FP_表示位置X("C", X2):
                       Y1 = -鉄筋L_YL / 2:
     
                       YLL = .BYL + Y1 + Mark_D2
                       XLL = 0: If .H1 > 0 Then XLL = 1.3 * 橋脚_鉄筋名称_径
                       '*2002.10.29
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L1 + XLL, 0) + "]\[pm:6,0]"
                       If XLL > 0 Then Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.2 * Mark_Pit, 0) + "]": D1$ = 橋脚_梁("B側2")
                       Call P_鉄筋_○名称(1)
     
                       D1$ = 橋脚_梁("B側1")
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:270]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(名称_L1 + XLL, 0) + "]\[pm:6,0]"
                       If XLL > 0 Then Call P_鉄筋_○名称(0): Print #60, "[p:" + FD2(1.2 * Mark_Pit, 0) + "]": 橋脚_梁 ("B側2")
                       Call P_鉄筋_○名称(1)
     
     
     
     
    '[[[  上ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '      B01 = D22_X98_K98_B1618_D2292 + F_r160    ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01
                    '      B02 = D22_X98_K98_B1618_DF + 440          ' 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B02, B03, B04
                    '      B03 = D16_K98_B2776_D500              ' 柱内ｽﾀｰﾗｯﾌﾟ    --->  B5-1, B5-2, B5-3

              
              橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B02"): XL1 = 鉄筋L_XL: X被り = 鉄筋_XX
                                D1$ = 橋脚_梁("B03"): XL1外 = 鉄筋L_XL
                                D1$ = 橋脚_梁("B04"): XL1内 = 鉄筋L_XL
              橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-1"): XL2 = 鉄筋L_XL
                                D1$ = 橋脚_梁("B5-2"): XL2外 = 鉄筋L_XL
                                D1$ = 橋脚_梁("B5-3"): XL2内 = 鉄筋L_XL
              
              
              D1$ = 橋脚_梁("Spit")
              X0 = -.BXL:  XL = 鉄筋L_XL
              Y1 = -.BYL + X被り
              Y2 = .BYR - X被り
              Y0 = -XL2 / 2
    
              For ii = 1 To 鉄筋P_Σ数: X1 = X0 + 鉄筋P_位置(ii):
                       Select Case X1
                       Case Is < -土木橋脚_柱.BXL:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      Print #60, "[P:" + FD2(X1 + 橋脚_J鉄筋開き * 現作図_Scale, Y2) + "]\[皿2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[皿2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   
                                   Case Else:    Print #60, "[P:" + FD2(X1, Y2) + "]\[皿2:" + FD4(0, -XL1外, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[皿2:" + FD4(0, XL1外, 1.5, -45) + "]"
                                                 Print #60, "[P:" + FD2(X1, -XL1内 / 2) + "]\[皿2:" + FD4(0, XL1内, 1.5, -45) + "]"
                                   End Select
                                   
                       Case Is < 土木橋脚_柱.BXR:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, XL2) + "]"
                                   Case Else:    Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, XL2外) + "]"
                                                 Print #60, "[P:" + FD2(X1, -XL2内 / 2) + "]\[L:" + FD2(0, XL2内) + "]"
                                                 Print #60, "[P:" + FD2(X1, -Y0) + "]\[L:" + FD2(0, -XL2外) + "]"
                                   End Select
                       
                       Case Else:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      Print #60, "[P:" + FD2(X1 + 橋脚_J鉄筋開き * 現作図_Scale, Y2) + "]\[皿2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[皿2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   
                                   Case Else:    Print #60, "[P:" + FD2(X1, Y2) + "]\[皿2:" + FD4(0, -XL1外, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[皿2:" + FD4(0, XL1外, 1.5, -45) + "]"
                                                 Print #60, "[P:" + FD2(X1, -XL1内 / 2) + "]\[皿2:" + FD4(0, XL1内, 1.5, -45) + "]"
                                   End Select
                       End Select
                       Next ii
    
    
    
    
    '[[[  上ｽﾀｰﾗｯﾌﾟ 寸法 ]]]
              D1$ = 橋脚_梁("Spit")
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
     
    '[[[  ｽﾀｰﾗｯﾌﾟ Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
              D1$ = 橋脚_梁("Spit")
              For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii):
                       Select Case X1
                       Case Is < -土木橋脚_柱.BXL:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      SMark$(ii) = "B02"
                                   Case Else:    SMark$(ii) = "B03":
                                   End Select
                                   
                       Case Is < 土木橋脚_柱.BXR:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      SMark$(ii) = "B5-1"
                                   Case Else:    SMark$(ii) = "B5-2"
                                   End Select
                       
                       Case Else:
                                   Select Case FP_Stoper_X位置(X1)
                                   Case "":      SMark$(ii) = "B02":
                                   Case Else:    SMark$(ii) = "B03"
                                   End Select
                       End Select
                       Next ii
              '[[[ B02 Mark ]]]
                       X0_02 = 0: X1_02 = 99999: D0_02$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B02": If X0_02 = 0 Then X0_02 = X1
                                          Xpit = X1 - X1_02: If X1_02 <> 99999 Then D0_02$ = D0_02$ + FP1(Xpit)
                                          X1_02 = X1: X9_02 = X1
                             Case Else:
                             End Select
                             Next ii
              
              '[[[ B03 Mark ]]]
                       X0_03 = 0: X1_03 = 99999: D0_03$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B03": If X0_03 = 0 Then X0_03 = X1
                                          Xpit = X1 - X1_03: If X1_03 <> 99999 Then D0_03$ = D0_03$ + FP1(Xpit)
                                          X1_03 = X1
                             Case Else:
                             End Select
                             Next ii
                       
              '[[[ B5-1 Mark ]]]
                       X0_51 = 0: X1_51 = 99999: D0_51$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B5-1": If X0_51 = 0 Then X0_51 = X1
                                          Xpit = X1 - X1_51: If X1_51 <> 99999 Then D0_51$ = D0_51$ + FP1(Xpit)
                                          X1_51 = X1
                             Case Else:
                             End Select
                             Next ii
                       
              '[[[ B5-2 Mark ]]]
                       X0_52 = 0: X1_52 = 99999: D0_52$ = ""
                       For ii = 1 To 鉄筋P_Σ数: X1 = -.BXL + 鉄筋P_位置(ii)
                             Select Case SMark$(ii)
                             Case "B5-2": If X0_52 = 0 Then X0_52 = X1
                                          Xpit = X1 - X1_52: If X1_52 <> 99999 Then D0_52$ = D0_52$ + FP1(Xpit)
                                          X1_52 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       
                Mark_Y(1) = .BYR
                For ii = 1 To 10: Mark_Y(ii + 1) = Mark_Y(ii) - 1.15 * Mark_Pit: Next ii
                       B03_Y1 = 表示位置_Y(表示位置_Y個数) + 0.6 * 表示位置_Ypit
                       B03_Y2 = 表示位置_Y(1) - 0.6 * 表示位置_Ypit
                       B52_Y1 = 表示位置_Y(表示位置_Y個数) + 0.3 * 表示位置_Ypit
                       B52_Y2 = 表示位置_Y(1) - 0.3 * 表示位置_Ypit
                       
                       B51_Y1 = FP_表示位置Y("U", Stoper位置_Y(1) + Stoper位置_BY(1) / 2) + 0.6 * 表示位置_Ypit
                       B53_Y1 = 50
                       B04_Y1 = -50
                       
                       
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B03")
                       Call P_MarkR(D0_03$, X0_03, B03_Y1, Mark_Y(1), Mark_R1)
                       Call P_MarkR(D0_03$, X0_03, B03_Y2, Mark_Y(7), Mark_R1 - 40)
    
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-2")
                       Call P_MarkR(D0_52$, X0_52, B52_Y1, Mark_Y(2), Mark_R1)
                       Call P_MarkR(D0_52$, X0_52, B52_Y2, Mark_Y(6), Mark_R1)
     
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-1")
                       Call P_MarkR(D0_51$, X0_51, B51_Y1, Mark_Y(3), Mark_R1 - 40)
     
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B5-3")
                       Call P_MarkR(D0_52$, X0_52, B53_Y1, Mark_Y(4), Mark_R1)
     
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B04")
                       Call P_MarkR(D0_03$, X0_03, B04_Y1, Mark_Y(5), Mark_R1 - 40)
     
     
                       B02_Y1 = FP_表示位置Y("D", Stoper位置_Y(1) + Stoper位置_BY(1) / 2 - 20) + 0.5 * 表示位置_Ypit
                       B02_Y2 = FP_表示位置Y("D", Stoper位置_Y(Stoper位置_Data数) - Stoper位置_BY(Stoper位置_Data数) / 2 + 20) + 0.5 * 表示位置_Ypit
                       B02_Y1_2 = .BYR + Mark_U1
                       B02_Y2_2 = -.BYL - Mark_D1
                       橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B02")
     
                       Call P_MarkL(D0_02$, X0_02, X9_02, B02_Y1, B02_Y1_2, Mark_L1)
                       Call P_MarkL(D0_02$, X0_02, X9_02, B02_Y2, B02_Y2_2, Mark_L1)
     
      End With
     ' Cir
     End Sub

Sub P_MarkR(D01$, X0, Y1, Y2, Mark_R1)
        Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + Mid(D01$, 2) + "]"
        XLL = -X0 + 土木橋脚_梁.BXR + Mark_R1
        Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[lm:" + FD2(名称_L2, 0) + "]\[pm:6,0]"
        Call P_鉄筋_○名称(2)

       End Sub
Sub P_MarkL(D01$, X0, X9, Y1, Y2, Mark_L1)
        Print #60, "[P:" + FD2(X0, Y1) + "]\[<R:180," + Mid(D01$, 2) + "]"
        XLL = X9 + 土木橋脚_梁.BXL + Mark_L1
        Print #60, "[P:" + FD2(X9, Y1) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[Lm:" + FD2(-名称_L2, 0) + "]\[pm:5,0]"
        Call P_鉄筋_○名称(2)

       End Sub

Sub P_梁_断面C()
     '梁平断面
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
              橋脚_鉄筋θ = 270: D1$ = 橋脚_梁("BD1"): X0_LL = 鉄筋L_XL
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
              橋脚_鉄筋θ = 270: D1$ = 橋脚_梁("BD1"): 'X0_LL = 鉄筋L_XL
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
                  D1$ = 橋脚_梁("BD1"):  表示位置_Y個数 = 鉄筋P_Σ数
                  For ii = 1 To 鉄筋P_Σ数:  表示位置_Y(ii) = -.BYL + 鉄筋P_位置(ii):     Next ii
                  表示位置_Ypit = Abs(表示位置_Y(2) - 表示位置_Y(3))
        
        
        
    '[[[  下ｽﾀｰﾗｯﾌﾟ   ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                    '      B01 = D22_X98_K98_B1618_D2292 + F_r160    ' 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01
                    '      B02 = D22_X98_K98_B1618_DF + 440          ' 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B02, B03, B04
                    '      B03 = D16_K98_B2776_D500              ' 柱内ｽﾀｰﾗｯﾌﾟ    --->  B5-1, B5-2, B5-3

              
              橋脚_鉄筋θ = 90: D1$ = 橋脚_梁("B01"): XL1 = 鉄筋L_XL: X被り = 鉄筋_XX
              
              
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
    
              '[[[ B01 Mark ]]]
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




Sub P_梁_断面sa()
     '梁横断面
     ReDim 寸法S(50) As Single, Roop鉄筋幅(50) As Single
     
     
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     '原点   梁上端  橋脚芯
     
     With 土木橋脚_梁
      
      
      '[[[ 格図名 ]]]
         Y0 = (寸法線位置_梁断面.U開き + 格図名開き位置) * 現作図_Scale
         Call P_橋脚_格図名(0, Y0, 0, "断面ａ－ａ")
     
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
                  Print #60, FP_Stoper_断面Y寸法(寸法位置2, 補2)
          
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
                  Print #60, "[P:" + FD2(寸法位置L1, -.H) + "]\[寸:" + F9(-補L1) + ":" + FD3(0, .H, -補L12) + "]"
     
                  寸法位置L2 = -.BYL - 寸法線位置_梁断面.L開き * 現作図_Scale + 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L2 = 寸法線位置_梁断面.L開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  補L22 = 寸法線位置_梁断面.L開き + .BYL / 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 - 1
                  Print #60, "[P:" + FD2(寸法位置L2, -.H) + "]"
                  Print #60, "[寸:" + FD3(0, .H + .勾配L, -補L2) + "|" + FD3(0, -.勾配L, -補L2) + ",,L=7|" + FD3(0, .勾配C, -補L22) + ",,R=8]"
     
          ' R寸法
     
                  寸法位置R1 = .BYR + 寸法線位置_梁断面.L開き * 現作図_Scale
                  補R1 = 寸法線位置_梁断面.R開き - 1
                  補R12 = 寸法線位置_梁断面.R開き + .BYR / 現作図_Scale - 1
                  Print #60, "[P:" + FD2(寸法位置R1, -.H) + "]"
                  Print #60, "[寸:" + FD1(補R1) + ":" + FD3(0, .H + .勾配L, 補R1) + "|" + FD3(0, -.勾配L, 補R1) + ",,L=7|" + FD3(0, .勾配C, 補R12) + ",,R=8]"
     
     
     
      '[[[ ｽﾄｯﾊﾟ ]]]
            Print #60, "[色:白]\[ﾚ:躯体]"
          
          Print #60, "[dot:]"
          Call P_橋脚_Stoper_Y断面(0, -下がり, 上がり)
          Print #60, "[con:]"
          
      
      '[[[ ﾙｰﾌﾟ鉄筋 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
        寸法数 = 0
        Roop_鉄筋Pit_寸法$ = "": Roop_Pit_ΣL = 0
        B02_X0 = 0
            橋脚_J鉄筋開き_BAK = 橋脚_J鉄筋開き: 橋脚_J鉄筋開き = 0
        For ii = 1 To 3:
              橋脚_鉄筋θ = 180
              
              Select Case ii
              Case 1:   D1$ = 橋脚_梁("BR1"): If D1$ <> "" Then 寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
              Case 2:   D1$ = 橋脚_梁("BR2"): If D1$ <> "" Then 寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
              Case 3:   D1$ = 橋脚_梁("BR3"): If D1$ <> "" Then 寸法数 = 寸法数 + 1: 寸法S(寸法数) = 鉄筋_SK位置
              End Select
              
              If D1$ <> "" Then
                  If 鉄筋P_ΣL > Roop_Pit_ΣL Then Roop_Pit_ΣL = 鉄筋P_ΣL: Roop_鉄筋Pit_寸法$ = 鉄筋_pit$
                  鉄筋径$ = 鉄筋_径$
                  Roop鉄筋間隔 = 鉄筋L_YL: Roop鉄筋_K位置 = 鉄筋_SK位置
                  B02_X0 = Roop鉄筋_K位置
                  X1 = -.BYL + Roop鉄筋_K位置: X2 = X1 + Roop鉄筋間隔
                  X3 = .BYR - Roop鉄筋_K位置: X4 = X3 - Roop鉄筋間隔
                  Roop鉄筋幅(寸法数) = 鉄筋L_YL

                  For i2 = 1 To 鉄筋P_Σ数:  Y0 = -鉄筋P_位置(i2)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]\[P:" + FD2(X2, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                            Print #60, "[P:" + FD2(X3, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]\[P:" + FD2(X4, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next i2
                 End If
              Next ii
            橋脚_J鉄筋開き = 橋脚_J鉄筋開き_BAK
        
      '[[[ ﾙｰﾌﾟ鉄筋 寸法  ---> ]]]
                  寸法位置3 = 寸法線位置_梁断面.U開き * 現作図_Scale - 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補3 = 寸法線位置_梁断面.U開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
            LLM1 = Roop鉄筋幅(寸法数): LLM2 = .BY - 2 * (寸法S(1) + Roop鉄筋幅(1))
            For ii = 寸法数 To 1 Step -1:    寸法S(ii) = 寸法S(ii) - 寸法S(ii - 1):    Next ii
                  D1$ = ""
                  For ii = 1 To 寸法数
                        D1$ = D1$ + "|" + FD3(寸法S(ii), 0, -補3): If ii = 1 Then D1$ = D1$ + ",,L=7"
                        Next ii
                  D1$ = D1$ + "|" + FD3(LLM1, 0, -補3)
                  If 寸法数 > 1 Then
                          For ii = 寸法数 To 2 Step -1: D1$ = D1$ + "|" + FD3(寸法S(ii), 0, -補3): If ii = 2 Then D1$ = D1$ + ",,LC=5"
                               Next ii
                          End If
                  '.... ｾﾝﾀｰ
                  D1$ = D1$ + "|" + FD3(LLM2, 0, -補3)
      
                  If 寸法数 > 1 Then
                          For ii = 2 To 寸法数: D1$ = D1$ + "|" + FD3(寸法S(ii), 0, -補3): If ii = 2 Then D1$ = D1$ + ",,RC=5"
                               Next ii
                          End If
                  D1$ = D1$ + "|" + FD3(LLM1, 0, -補3)
                  If 寸法数 > 1 Then For ii = 寸法数 To 2 Step -1: D1$ = D1$ + "|" + FD3(寸法S(ii), 0, -補3): Next ii
                  
                  D1$ = "[寸:" + Mid(D1$, 2) + "|" + FD3(寸法S(1), 0, -補3) + ",,R=7]"
                  Print #60, "[P:" + FD2(-.BYL, 寸法位置3) + "]"
                  Print #60, D1$
                  
                  
                  
                  
      '[[[ ﾙｰﾌﾟ鉄筋 Y 寸法 ]]]
                  寸法位置L3 = -.BYL - 寸法線位置_梁断面.L開き * 現作図_Scale + 2 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補L3 = 寸法線位置_梁断面.L開き - 2 * 橋脚_寸法線_Pit_躯体図 - 1
         If Roop_鉄筋Pit_寸法$ <> "" Then
                  Call 橋脚_鉄筋_Pit_ck(Roop_鉄筋Pit_寸法$)
                  Y00 = -.H: D11$ = "[P:" + FD2(寸法位置L3, -.H) + "]\[寸:"
                  For ii = 鉄筋P_Σ数 To 1 Step -1: Y1 = -鉄筋P_位置(ii)
                        D11$ = D11$ + FD3(0, Y1 - Y00, -補L3) + "|"
                        Y00 = Y1
                        Next ii
                        Y1 = .勾配L
                        D11$ = D11$ + FD3(0, Y1 - Y00, 0) + ",,R=6]"
                  Print #60, D11$
             End If
      
      '[[[ 上鉄筋 B2-1 B2-2 B2-3 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
              '           B2=D16_K126_@396.7+4x180.7_LF+8900+F        ' ###  *  ---> x
                  橋脚_鉄筋θ = 0:      D1$ = 橋脚_梁("BU1")
                  鉄筋径$ = 鉄筋_径$: Y0 = -鉄筋_SK位置
                  For ii = 1 To 鉄筋P_Σ数:
                            X1 = -.BYL + 鉄筋P_位置(ii): X2 = .BYR - 鉄筋P_位置(ii)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next ii
                  
                  
                  
      '[[[ 上鉄筋 B2-1 B2-2 B2-3 寸法 ]]]
                  
                  寸法位置4 = 寸法線位置_梁断面.U開き * 現作図_Scale - 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補4 = 寸法線位置_梁断面.U開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
                  上鉄筋寸法幅 = Roop鉄筋幅(寸法数)
                  上鉄筋pit = 上鉄筋寸法幅 / (鉄筋P_Σ数 + 1)
                  Moj$ = F9(鉄筋P_Σ数 + 1) + "x" + f1(上鉄筋pit) + "=" + F9(上鉄筋寸法幅)
                  X1 = -.BYL + Roop鉄筋_K位置: X2 = .BYR - Roop鉄筋_K位置 - 上鉄筋寸法幅
                  Print #60, "[P:" + FD2(X1, 寸法位置4) + "]\[寸:" + FD3(上鉄筋寸法幅, 0, 0) + "," + Moj$ + "]"
                  Print #60, "[P:" + FD2(X2, 寸法位置4) + "]\[寸:" + FD3(上鉄筋寸法幅, 0, 0) + "," + Moj$ + "]"
      
                  
                  
                  
                  
                  
                  
                  
        
      '[[[ 下鉄筋(あご部分) ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                '         B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                        ' 端部の鉄筋の位置  *2002.10.28
                            橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1")
                             DXL = Val(鉄筋_X$):  DYL = 0.6 * 鉄筋_r
        
                  橋脚_鉄筋θ = 270:      D1$ = 橋脚_梁("BD1")
                  鉄筋径$ = 鉄筋_径$: Y0 = -.H + あご筋_X1
                  For ii = 1 To 鉄筋P_Σ数: X0 = -.BYL + 鉄筋P_位置(ii):
                       Select Case ii
                       Case 1, 鉄筋P_Σ数: Print #60, "[P:" + FD2(X0, Y0 + DYL) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Case Else:          Print #60, "[P:" + FD2(X0, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       End Select
                       Next ii
    
    '[[[ 下鉄筋(あご部分) 寸法 ]]]
                  寸法位置D3 = -.H - 寸法線位置_梁断面.D開き * 現作図_Scale + 3 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補D3 = 寸法線位置_梁断面.D開き - 3 * 橋脚_寸法線_Pit_躯体図 - 1
              
              Print #60, "  [P:" + FD2(-.BYL, 寸法位置D3) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(鉄筋P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                        D11$ = D11$ + FD3(鉄筋P_L(ii), 0, 補D3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BY - 鉄筋P_位置(鉄筋P_Σ数), 0, 0) + ",,R=7]"
              Print #60, D11$
        
        
      '[[[ 側鉄筋   B4-1 ]]]
            Print #60, "[色:紫]\[ﾚ:鉄筋断面]"
                '          B4=D25_K73_@126+12x150_B3150_D2829
                  橋脚_鉄筋θ = 180:     D1$ = 橋脚_梁("B側1")
                  X1 = -鉄筋L_YL / 2: X2 = 鉄筋L_YL / 2
                  For ii = 1 To 鉄筋P_Σ数:   Y0 = -鉄筋P_位置(ii)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]\[P:" + FD2(X2, Y0) + "]\[橋脚鉄筋:" + 鉄筋径$ + "]"
                       Next ii
     
    '[[[   側鉄筋  寸法 ]]]
      
                  寸法位置R2 = .BYR + 寸法線位置_梁断面.L開き * 現作図_Scale - 1 * 橋脚_寸法線_Pit_躯体図 * 現作図_Scale
                  補R2 = 寸法線位置_梁断面.R開き - 1 * 橋脚_寸法線_Pit_躯体図 - 1
              Print #60, "  [P:" + FD2(寸法位置R2, -.H) + "]"
                  D11$ = "  [寸:"
                  For ii = 1 To 鉄筋P_Data数
                        Ds$(鉄筋P_Data数 + 2 - ii) = 鉄筋P_Data$(ii): Di(鉄筋P_Data数 + 2 - ii) = 鉄筋P_L(ii)
                        Next ii
                        Ds(1) = "": Di(1) = .H + 下がり - 鉄筋P_位置(鉄筋P_Σ数)
                  For ii = 1 To 鉄筋P_Data数
                        Moj$ = P_橋脚_ΣPit寸法(Ds$(ii)): 'If ii > 鉄筋P_Data数 Then Moj$ = Moj$ + ",R=6"
                        D11$ = D11$ + FD3(0, Di(ii), 補R2) + "," + Moj$ + "|"
                        Next ii
                        'D11$ = D11$ + "]"
                        D11$ = D11$ + FD3(0, Di(鉄筋P_Data数 + 1), 0) + ",,R=6]"
              Print #60, D11$
        
        
        
       '[[[ 上ｽﾀｰﾗｯﾌﾟ  B02 ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '         B02 = D22_X98_K98_B1618_DF + 440      '### 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B02, B03, B04
             橋脚_鉄筋θ = 90:     D1$ = 橋脚_梁("B02")
             X0 = -.BYL + 鉄筋_XX: Y0 = -鉄筋_SK位置 - 鉄筋L_YL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             X0 = .BYR - 鉄筋_XX - 鉄筋L_XL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
     
        
      '[[[ 上ｽﾀｰﾗｯﾌﾟ B02 Mark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
             橋脚_鉄筋θ = 90:      D1$ = 橋脚_梁("B02")
                       X1 = -.BYL + B02_X0 + 95
                       X2 = .BYR - B02_X0 - 95
                       Y1 = -鉄筋_SK位置:
     
                       YLL = -Y1 + 4 * 現作図_Scale
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-名称_L1, 0) + "]\[pm:5,0]"
                       Call P_鉄筋_○名称(1)
     
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(名称_L1, 0) + "]\[pm:6,0]"
                       Call P_鉄筋_○名称(1)
     
       
       '[[[ 下ｽﾀｰﾗｯﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '          B01 = D22_X98_K98_B1618_D2292 + F_r160 '### 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01
             橋脚_鉄筋L計算_max$ = "Y" ' 鉄筋L 最大長さSet
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1")
             X0 = -.BYL + 鉄筋_XX + 鉄筋L_XL: Y0 = -.H + 鉄筋_SK位置 + 鉄筋L_YL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1R")
             X0 = .BYR - 鉄筋_XX: Y0 = -.H + 鉄筋_SK位置 + 鉄筋L_YL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             橋脚_鉄筋L計算_max$ = "" ' 鉄筋L 最大長さReset
     
       '[[[ 下ｽﾀｰﾗｯﾌﾟMark ]]]
            Print #60, "[色:白]\[ﾚ:Mark]"
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1")
             X1 = -.BYL + 鉄筋_XX + 鉄筋L_XL: Y1 = -.H + 鉄筋_SK位置 + 280
                       XLL = -X0 + .BYR + 5 * 現作図_Scale
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -25) + "|" + FD2(名称_L1, 0) + "]\[pm:-14,0]"
                       Call P_鉄筋_○名称(1)
     
     
     
     End With
     End Sub
Sub P_梁_断面sa鉄筋配筋図()
     
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
          Call P_橋脚_Stoper_Y断面(0, -下がり, 上がり)
          Print #60, "[con:]"
          
      
       '[[[ ｽﾀｰﾗｯﾌﾟ位置  ]]]
             ' 上ｽﾀｰﾗｯﾌﾟ          B02 = D22_X98_K98_B1618_DF + 440      '### 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B02, B03, B04
               橋脚_鉄筋θ = 90:     D1$ = 橋脚_梁("BS2")
               Strap_U = -鉄筋_SK位置
               Strap_L1 = -.BYL + 鉄筋_XX: Strap_L2 = Strap_L1 + 鉄筋L_XL
               Strap_R1 = .BYR - 鉄筋_XX: Strap_L2 = Strap_R1 - 鉄筋L_XL
             ' 下ｽﾀｰﾗｯﾌﾟ           B01 = D22_X98_K98_B1618_D2292 + F_r160 '### 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01
               橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1")
               Strap_D = -.H + 鉄筋_SK位置
      
               M径2 = 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
      
      鉄筋番号 = 0
      
      '[[[ ﾙｰﾌﾟ鉄筋 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
        For ii = 1 To 3:
              橋脚_鉄筋θ = 180
              Select Case ii
              Case 1:              D1$ = 橋脚_梁("BR1"): If D1$ <> "" Then 鉄筋番号 = 鉄筋番号 + 1
              Case 2:              D1$ = 橋脚_梁("BR2"): If D1$ <> "" Then 鉄筋番号 = 鉄筋番号 + 1
              Case 3:              D1$ = 橋脚_梁("BR3"): If D1$ <> "" Then 鉄筋番号 = 鉄筋番号 + 1
              End Select
                  鉄筋径$ = 鉄筋_径$
                  Roop鉄筋間隔 = 鉄筋L_YL: Roop鉄筋_K位置 = 鉄筋_SK位置
                  X1 = -.BYL + Roop鉄筋_K位置: If ii = 1 Then X1 = Strap_L1 + M径2:
                  X2 = -.BYL + Roop鉄筋_K位置 + Roop鉄筋間隔
                  X3 = .BYR - Roop鉄筋_K位置: If ii = 1 Then X3 = Strap_R1 - M径2
                  X4 = .BYR - Roop鉄筋_K位置 - Roop鉄筋間隔
                  Y_DL = Strap_U - M径2 + 鉄筋P_位置(1)
                  For i2 = 1 To 鉄筋P_Σ数:  Y0 = -鉄筋P_位置(i2) + Y_DL
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X3, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X4, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                       Next i2
              Next ii
        
        
      '[[[ 下鉄筋(あご部分) ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
                '         B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                        ' 端部の鉄筋の位置  *2002.10.28
                            橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1")
                             DXL = Val(鉄筋_X$):  DYL = 0.6 * 鉄筋_r
                             X1 = -.BYL + DXL + 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                             X9 = .BYR - DXL - 橋脚_鉄筋_Mark_D * 現作図_Scale / 2
                  
                  鉄筋番号 = 鉄筋番号 + 1
                  橋脚_鉄筋θ = 270:      D1$ = 橋脚_梁("BD1")
                  鉄筋径$ = 鉄筋_径$: Y0 = Strap_D + M径2
                  For ii = 1 To 鉄筋P_Σ数: X0 = -.BYL + 鉄筋P_位置(ii):
                        Select Case ii
                        Case 1:               Print #60, "[P:" + FD2(X1, Y0 + DYL) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                        Case 鉄筋P_Σ数:      Print #60, "[P:" + FD2(X9, Y0 + DYL) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                        Case Else:            Print #60, "[P:" + FD2(X0, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                        End Select
                       Next ii
      
      '[[[ 側鉄筋   B4-1 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
                '          B4=D25_K73_@126+12x150_B3150_D2829
                  鉄筋番号 = 鉄筋番号 + 1: あご筋Ck$ = ""
                  橋脚_鉄筋θ = 180:     D1$ = 橋脚_梁("B側1")
                  X1 = Strap_L1 - M径2: X2 = Strap_R1 + M径2
                  For ii = 1 To 鉄筋P_Σ数:   Y0 = -鉄筋P_位置(ii)
                           If あご筋Ck$ = "" And Y0 <= あご筋_Y2 Then 鉄筋番号 = 鉄筋番号 + 1: あご筋Ck$ = "N"
                            
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号) + "]"
                       Next ii
     
        
      '[[[ 上鉄筋 B2-1 B2-2 B2-3 ]]]
            Print #60, "[色:黄]\[ﾚ:鉄筋Mark]"
              '           B2=D16_K126_@396.7+4x180.7_LF+8900+F        ' ###  *  ---> x
                  鉄筋番号 = 鉄筋番号 + 1
                  番号2 = 0
                  橋脚_鉄筋θ = 0:      D1$ = 橋脚_梁("BU1")
                  鉄筋径$ = 鉄筋_径$: Y0 = Strap_U - M径2
                  For ii = 1 To 鉄筋P_Σ数:
                            X1 = -.BYL + 鉄筋P_位置(ii): X2 = .BYR - 鉄筋P_位置(ii)
                            番号2 = 0: If FP_Stoper_Y位置(X1) <> "" Then 番号2 = 1
                            
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号 + 番号2) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[字○:" + F9(橋脚_鉄筋_Mark_D) + "," + F9(鉄筋番号 + 番号2) + "]"
                       Next ii
                  
        
       '[[[ 上ｽﾀｰﾗｯﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '         B02 = D22_X98_K98_B1618_DF + 440      '### 上ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B02, B03, B04
             橋脚_鉄筋θ = 90:     D1$ = 橋脚_梁("BS2")
             X0 = -.BYL + 鉄筋_XX: Y0 = -鉄筋_SK位置 - 鉄筋L_YL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             X0 = .BYR - 鉄筋_XX - 鉄筋L_XL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
     
        
       '[[[ 下ｽﾀｰﾗｯﾌﾟ ]]]
            Print #60, "[色:空]\[ﾚ:Hoop]"
                '          B01 = D22_X98_K98_B1618_D2292 + F_r160 '### 下ｽﾀｰﾗｯﾌﾟ  Y軸 対象考慮  --> B01
             橋脚_鉄筋L計算_max$ = "Y" ' 鉄筋L 最大長さSet
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1")
             X0 = -.BYL + 鉄筋_XX + 鉄筋L_XL: Y0 = -.H + 鉄筋_SK位置 + 鉄筋L_YL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             
             橋脚_鉄筋θ = 270:     D1$ = 橋脚_梁("BS1R")
             X0 = .BYR - 鉄筋_XX: Y0 = -.H + 鉄筋_SK位置 + 鉄筋L_YL
             Call P_橋脚_鉄筋図("", "", "", X0, Y0)
             橋脚_鉄筋L計算_max$ = "" ' 鉄筋L 最大長さ Rset
     
     
     End With
     End Sub
Sub P_梁_B1(Data1$)
     ' B1-1   B1-2
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_梁(Data1$)
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
            ' Yp = 2.2 * 橋脚_寸法線_開き_鉄筋図 * 現作図_Scale
             'Xp = 鉄筋L_Xmin
             Print #60, "[P:" + FD2(-鉄筋L_Xcen, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(20, -2.3 * 橋脚_鉄筋名称_径) + "]"
             Call P_鉄筋_○名称(3)
     
            ' Xp = 鉄筋L_Xmax
              Print #60, "[P:" + FD2(鉄筋L_Xcen, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-30, -2.3 * 橋脚_鉄筋名称_径) + "]"
             Call P_鉄筋_○名称(4)
     End Sub



Sub P_梁_B2_1()
    ' B2-1
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
     D1$ = 橋脚_梁("B2-1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     
     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-15, -1.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
     
Sub P_梁_B2_2()
    ' B2-1
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
     D1$ = 橋脚_梁("B2-2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B2_3()
    ' B2-1
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B2-3")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub



Sub P_梁_B3_1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_梁("BD1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P0:]\[pm:" + FD2(-20, 0) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B4_1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 180
     D1$ = 橋脚_梁("B側1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P0:]\[pm:" + FD2(-10, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B4_2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 0
     D1$ = 橋脚_梁("B側2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P0:]\[pm:" + FD2(-10, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B5_1()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B5-1")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B5_2()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B5-2")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B5_3()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B5-3")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub

Sub P_梁_B01()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 270
     D1$ = 橋脚_梁("B01")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -2.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B02()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B02")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-15, -1.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B03()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B03")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-10, -1.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
     End Sub
Sub P_梁_B04()
     If 橋脚原点表示$ = "Y" Then Print #60, "[点:]\*原点"
     橋脚_鉄筋θ = 90
     D1$ = 橋脚_梁("B04")
     Call P_橋脚_鉄筋図("Y", "", "", -鉄筋L_Xcen, -鉄筋L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(鉄筋L_Ycen)) + "]\[pm:" + FD2(-10, -1.5 * 橋脚_鉄筋名称_径) + "]"
     Call P_鉄筋_○名称(3)
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
           X1 = -0.55 * BB: Y1 = -HH: X2 = 0.55 * BB: Y2 = Y1: W1 = 12: H1 = -5
           Print #60, Uxf_切断M1(X1, Y1, X2, Y2, W1, H1)
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
          柱H2 = 柱H: If 柱H2 = 0 Then 柱H2 = 0.5 * .H
          
          C_HH = .H + 柱H2
         ' C_HH = .H * 1.5
                B_H0 = C_HH - .H
                
                Print #60, Uxf_P(X0 - 土木橋脚_柱.BXL, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0, .r2) + "|" + FD3(-.BXL2, .H1, .r) + "|" + FD2(0, .H2 + 勾配_L) + "]"
     
                Print #60, Uxf_P(X0 + 土木橋脚_柱.BXR, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0, .r2) + "|" + FD3(.BXR2, .H1, .r) + "|" + FD2(0, .H2 + 勾配_L) + "]"
          
               If .r > 0 Then
                    Print #60, UXF_線種("DOT")
                    If .BXL2 = 0 Then TAN1 = 0 Else TAN1 = .H1 / .BXL2:
                    COS1 = .BXL2 / Sqr(.H1 ^ 2 + .BXL2 ^ 2): L3 = .r * TAN1: L2 = .r / COS1: RrD = L2 - L3
                    Print #60, Uxf_P(X0 - 土木橋脚_柱.BXL + .r, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0 + RrD, .r2) + "|" + FD3(-.BXL2, .H1, .r) + "|" + FD2(0, .H2 + 勾配_L - RrD) + "]"
     
                    If .BXR2 = 0 Then TAN1 = 0 Else TAN1 = .H1 / .BXR2:
                    COS1 = .BXR2 / Sqr(.H1 ^ 2 + .BXR2 ^ 2):   L3 = .r * TAN1: L2 = .r / COS1:   RrD = L2 - L3
                    Print #60, Uxf_P(X0 + 土木橋脚_柱.BXR - .r, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0 + RrD, .r2) + "|" + FD3(.BXR2, .H1, .r) + "|" + FD2(0, .H2 + 勾配_L - RrD) + "]"
                    End If
     
            If 柱H2 < .H Then
     
               Print #60, UXF_線種("CON")
               X1 = X0 - 土木橋脚_柱.BXL: Y1 = Y0 - C_HH: X2 = X0 + 土木橋脚_柱.BXR: Y2 = Y1: W1 = 12: H1 = -5
               Print #60, Uxf_切断M1(X1, Y1, X2, Y2, W1, H1)
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
Sub P_橋脚_鉄筋図(寸法出力$, Ftype$, F向き$, 鉄筋X0, 鉄筋Y0)
           '寸法出力$   Y N   杭
           ' Ftype$　ﾌｯｸType      U   V
           ' F向き$  ﾌｯｸ向き      +  R
           ' 鉄筋X0, 鉄筋Y0  Start 位置
          
          
          
          Select Case F向き$
          Case "R": Fook向き = -1
          Case Else: Fook向き = 1
          End Select
          
          ' (1)  or   (2),(3) が必要
          '(1) CALL  橋脚_鉄筋_ck(項目$, 鉄筋Data$)
          
          '(2) CALL  橋脚_鉄筋_径_数_ck(DATA1$)
          '(3) CALL  橋脚_鉄筋_L_ck(DATA1$)
            
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
                               'Moj$ = F9(LL)
                               If 寸法出力$ = "Y" Then D01$ = D01 + "\[P:" + FD2(X1, Y1) + "]\[寸:" + F9(引符号 * S引出線) + ":" + FD3(XLL, YLL, 引符号 * E引出線) + "," + Moj$ + "]"
                               Print #60, "     " + D01$
                               
                               Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
                              End If
                Case "F":
                               Hook_D1 = FP_橋脚_鉄筋_Data("D1", 鉄筋径$)
                               Hook_b1 = FP_橋脚_鉄筋_Data("b", 鉄筋径$)
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
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\" + UXF_点()
                               '*2002.11.5
                               If 寸法出力$ = "Y" Then
                               Print #60, "[設定out:]"
                                   Print #60, "[色:白]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"

                               LL1 = 8 * 現作図_Scale: LL2 = 22 * 現作図_Scale
                               XLL1 = LL1 * Dcos(鉄筋θ - 60): YLL1 = LL1 * Dsin(鉄筋θ - 60)
                               XLL2 = LL2 * Dcos(鉄筋θ): YLL2 = LL2 * Dsin(鉄筋θ)
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL1, YLL1) + "|" + FD2(XLL2, YLL2) + "]"
                               Print #60, "   [P:" + FD2(Point_X + XLL1, Point_Y + YLL1) + "]\[字:" + FD3(0, 0, 鉄筋θ) + ",L,ガス圧接]"
                               Print #60, "[設定in:]"
                               End If
                
                Case "K":      '機械継ぎ手
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\" + UXF_点()
                
                               If 寸法出力$ = "Y" Then
                               Print #60, "[設定out:]"
                                   Print #60, "[色:白]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"

                               LL1 = 8 * 現作図_Scale: LL2 = 22 * 現作図_Scale
                               XLL1 = LL1 * Dcos(鉄筋θ - 60): YLL1 = LL1 * Dsin(鉄筋θ - 60)
                               XLL2 = LL2 * Dcos(鉄筋θ): YLL2 = LL2 * Dsin(鉄筋θ)
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL1, YLL1) + "|" + FD2(XLL2, YLL2) + "]"
                               Print #60, "   [P:" + FD2(Point_X + XLL1, Point_Y + YLL1) + "]\[字:" + FD3(0, 0, 鉄筋θ) + ",L,機械式継手]"
                               Print #60, "[設定in:]"
                               End If
                
                Case "J":      If LL <= 0 Then LL = 2 * FP_橋脚_鉄筋_Data("L1", 鉄筋径$): Stop
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
                                     D01$ = D01$ + "\" + UXF_寸法_Arc(寸_開き + RR, r1, r2, S引出線, S引出線, "<>", R寸法$)
                               
                                     X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2: 角度θ = Calu角度(X0, Y0, X3, Y3)
                                     
                                     Print #60, "[設定out:]"
                                     Print #60, "[色:空]\[ﾚ:寸法線]\[Msize:" + F9(図_寸法_Msize) + "]"
                                     Print #60, "[Li:" + FD4(X0, Y0, X1, Y1) + "]\[Li:" + FD4(X0, Y0, X2, Y2) + "]"
                                     Select Case 角度θ
                                     Case Is <= 90: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                     Case Is < 270: Print #60, "[P:" + FD2(X0, Y0) + "]\[lm:16,0]\[pm:2,0]\R=" + F9(RR)
                                     Case Else: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
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

            Print #60, "[色:白]\[ﾚ:Stoper]"

           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           For ii = 1 To Stoper位置_Data数
                X0 = Stoper位置_X(ii): Y0 = Stoper位置_Y(ii): BX = Stoper位置_BX(ii): BY = Stoper位置_BY(ii)
                
                Select Case BX
                Case 0:       D1$ = "[P:" + FD2(X0, Y0) + "]\[Cir:" + FD1(BY / 2) + "]"
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
'│■ P_橋脚_Stoper_X断面   (長断面)     　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_Stoper_X断面(Y00, DY)
     ' Y00  梁上の作図ﾚﾍﾞﾙ
     ' DY   Stoperの高さをちじめる  (+)縮小
            Print #60, "[色:白]\[ﾚ:Stoper]"
           
           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           For ii = 1 To Stoper終点側位置数i
                X0 = Stoper位置_X(ii): Y0 = Stoper位置_Y(ii): BX = Stoper位置_BX(ii): BY = Stoper位置_BY(ii): HH = Stoper位置_H(ii) - DY
                D1$ = "[P:" + FD2(X0 - BX / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BX, O) + "|" + FD2(0, HH) + "]"
                Print #60, D1$
                Next ii
         Print #60, "[con:]"

    End Sub
'┌─────────────────────────────────────────────┐
'│■ P_橋脚_Stoper_Y断面   (短断面)     　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────┘
Sub P_橋脚_Stoper_Y断面(Y00, DY端, 上がり)
     ' Y00  梁上の作図ﾚﾍﾞﾙ
     ' DY端 梁の端部下がり
           
            Print #60, "[色:白]\[ﾚ:Stoper]"
           
           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           For ii = 1 To Stoper位置_Data数
                X0 = Stoper位置_X(ii): Y0 = Stoper位置_Y(ii): BX = Stoper位置_BX(ii): BY = Stoper位置_BY(ii): HH = Stoper位置_H(ii)
                D1$ = "[P:" + FD2(Y0 - BY / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BY, O) + "|" + FD2(0, HH) + "]"
                Print #60, D1$
                Next ii
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
      D1$ = "[P:" + FD2(寸法位置1, -土木橋脚_梁.BYL) + "]\[寸:"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(1), -補1) + "|"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(2) / 2, -補1) + "|"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(2) / 2, -補1) + "|"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(Stoper位置_Y個数 + 1), 0) + "]"
      FP_Stoper_Y寸法 = D1$
      End Function
Function FP_Stoper_Y寸法2(寸法位置1, 補1)
           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           BX = Stoper位置_BX(1): BY = Stoper位置_BY(1)
      D1$ = "[P:" + FD2(寸法位置1, -土木橋脚_梁.BYL) + "]\[寸:"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(1) - BY / 2, -補1) + "|"
      D1$ = D1$ + FD3(0, BY, -補1) + "|"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(2) - BY, -補1) + "|"
      D1$ = D1$ + FD3(0, BY, -補1) + "|"
      D1$ = D1$ + FD3(0, Stoper位置_Ypit(Stoper位置_Y個数 + 1) - BY / 2, 0) + "]"
      FP_Stoper_Y寸法2 = D1$
      End Function

Function FP_Stoper_断面Y寸法(寸法位置1, 補1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
      D1$ = D1$ + FD3(Stoper位置_Ypit(1), 0, -補1) + "|"
      D1$ = D1$ + FD3(Stoper位置_Ypit(2) / 2, 0, -補1) + "|"
      D1$ = D1$ + FD3(Stoper位置_Ypit(2) / 2, 0, -補1) + "|"
      D1$ = D1$ + FD3(Stoper位置_Ypit(Stoper位置_Y個数 + 1), 0, 0) + "]"
      FP_Stoper_断面Y寸法 = D1$
      End Function
Function FP_Stoper_断面Y寸法2(寸法位置1, 補1)
           D0$ = 橋脚_梁("ｽﾄｯﾊﾟ位置")
           BX = Stoper位置_BX(1): BY = Stoper位置_BY(1)
      D1$ = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
      D1$ = D1$ + FD3(Stoper位置_Ypit(1) - BY / 2, 0, -補1) + "|"
      D1$ = D1$ + FD3(BY, 0, -補1) + "|"
      D1$ = D1$ + FD3(Stoper位置_Ypit(2) - BY, 0, -補1) + "|"
      D1$ = D1$ + FD3(BY, 0, -補1) + "|"
      D1$ = D1$ + FD3(Stoper位置_Ypit(Stoper位置_Y個数 + 1) - BY / 2, 0, 0) + "]"
      FP_Stoper_断面Y寸法2 = D1$
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
            沓座no = 沓座位置_No(ii): Call 橋脚_沓座_Get(沓座no): 沓座D$ = 橋脚_沓座("S2"):
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
            沓座no = 沓座位置_No(ii2): Call 橋脚_沓座_Get(沓座no): 沓座D$ = 橋脚_沓座("S2"):
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
            Case 1:   沓座no = 沓座位置_No(沓座終点側位置数i + 1)
            Case Else: 沓座no = 沓座位置_No(1)
            End Select
            
            Call 橋脚_沓座_Get(沓座no): 沓座D$ = 橋脚_沓座("S1"):
            Y_ずれ = Val(鉄筋_Y$): If ii > 1 Then Y_ずれ = -Y_ずれ
            Lpit1 = 鉄筋P_ΣL
            LLL = 沓座位置_Ypit(ii) - Lpit0 / 2 - Lpit1 / 2 - Y_ずれ
            ΣLL = ΣLL + LLL
            D2$ = FD3(0, LLL, -補1) + "|"
             If ii = 1 And LLL < 寸法表示基準L Then D2$ = FD3(0, LLL, -補1) + ",,L=6|"
            
    '*OK        If ii = 2 Then D2$ = D2$ + FD3(0, LLL, -補1) + "|": ΣLL = ΣLL + LLL
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
      D1$ = "[P:" + FD2(-土木橋脚_梁.BYL, 寸法位置1) + "]\[寸:"
      Lpit0 = 0: ΣLL = 0
      For ii = 1 To 沓座位置_Y個数:
            Select Case ii
            Case 1:   沓座no = 沓座位置_No(沓座終点側位置数i + 1)
            Case Else: 沓座no = 沓座位置_No(1)
            End Select
            
            Call 橋脚_沓座_Get(沓座no): 沓座D$ = 橋脚_沓座("S1"):
            Y_ずれ = Val(鉄筋_Y$): If ii > 1 Then Y_ずれ = -Y_ずれ
            Lpit1 = 鉄筋P_ΣL
            LLL = 沓座位置_Ypit(ii) - Lpit0 / 2 - Lpit1 / 2 - Y_ずれ
            ΣLL = ΣLL + LLL
            D2$ = FD3(LLL, 0, -補1) + "|"
            If ii = 1 And LLL < 寸法表示基準L Then D2$ = FD3(LLL, 0, -補1) + ",,L=6|"
      '*      If ii = 2 Then D2$ = D2$ + FD3(LLL, 0, -補1) + "|": ΣLL = ΣLL + LLL
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
'│■ P_鉄筋_○名称          　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
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
    
    XX5 = 0.65 * DD: If Len(Moj3$) > 1 Then XX5 = 0.8 * DD
    D5$ = "[re:900]\[pm:" + FD2(XX5, 0) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]\[字:0,0,0,LD," + Moj4$ + "]"
    Print #60, "     " + D1$
    Print #60, "     " + D2$
    Print #60, "     " + D3$
    Print #60, "     " + D4$
    If Moj4$ <> "" Then Print #60, "     " + D5$
    Print #60, "[設定in:]\[re:150]"
    End Sub

'┌─────────────────────────────────────────────┐
'│■ P_鉄筋_○名称縦          　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
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
    D5$ = "[re:900]\[pm:" + FD2(0, 0.6 * DD) + "]\[Msize:" + F9(橋脚_鉄筋名称_Msize3) + "]\[字:0,0,90,LD," + Moj4$ + "]"
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


Public Sub 土木_橋脚_鉄筋材料表_Write(Temp$)

        Temp2$ = Data_dsk + "鉄筋材料表.Dat"

           ReDim DK$(100)

       Open Temp2$ For Output As #10
       
       Print #10, Space(10); "鉄筋材料表.DXF     鉄筋材料表      葉ノ内"
       Print #10, Space(10); "表間隔=20    原点=50,520"
       Print #10, Space(10)
       
       Print #10, Space(10); "/はり"
              KOMO$ = "BR1,BR2,BR3,*,B2-1,B2-2,B2-3,*,BD1,B側1,B側2,*,B5-1,B5-2,B5-3,*,B01,B02,B03,B04"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = 橋脚_梁(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
             
              KOMO$ = "*,S1,S2"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = 橋脚_沓座(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
              KOMO$ = "*,*,H1,H2,H3*"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = 橋脚_Stoper(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
       
       Print #10, ""
       Print #10, "/PAGE"
       Print #10, Space(10); "/柱"
              KOMO$ = "C1本数,C2本数,C3本数,C4本数,C5本数,C6本数,*,外HOOPX,外HOOPY,*,内HOOPX,内HOOPX-2,*,内HOOPY,内HOOPY-2,*,CK"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = 橋脚_柱(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
       
       Print #10, ""
       'Print #10, "/PAGE"
       Print #10, Space(10); "/基礎"
              KOMO$ = "FY1,FY2,FY3,*,FX1,FX2,FX3,FX4,*,FH1*,FH2*"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = 橋脚_基礎(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
       
       
       
       
       
       Print #10, ""
       Print #10, "/PAGE"
       Print #10, Space(10); "/鉄筋総重量"
       
       Print #10, ""
       Print #10, ""
       Print #10, Space(10); "/杭"
             Da$ = 橋脚_基礎("杭位置")
             Print #10, Space(10); "部材箇所=" + f0(杭位置_Data数)
             Da$ = 橋脚_杭("HOOP")
              KOMO$ = "K1-1,K1-2,K1-3,K1-4,K1-5,"
              KOMO$ = KOMO$ + "K2-1,K2-2,K2-3,K2-4,K2-5,"
              KOMO$ = KOMO$ + "K3-1,K3-2,K3-3,K3-4,K3-5,"
              KOMO$ = KOMO$ + "*,組立筋,HOOP底,*,HOOP1,HOOP2,HOOP3,*,ｽﾍﾟｰｻ1,ｽﾍﾟｰｻ2,ｽﾍﾟｰｻ3"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = 橋脚_杭(Da$)
                  P_鉄筋材料表_Write (Da$)
                  Next ii
       
       
       
       
       
       Close #10




End Sub

Private Sub P_鉄筋材料表_Write(Da$)
    Select Case Da$
    Case "":
    Case "*": Print #10, Spc(10); "."
    Case Else: Print #10, Spc(10); "."; F左$(表符号$, 10); F左$(表鉄筋径$, 10); f(F橋2(表鉄筋L), 11.1); f(表鉄筋本数, 7);
         
            Print #10, "   $"; F左$(表鉄筋適用$, 12); " "; 表鉄筋材質$; "   W"; f0(表鉄筋W箇所)
    'Stop
    End Select
    
    End Sub



Public Sub 土木_橋脚_鉄筋材料表_Read(Temp$)

          Dxf_No = Dxf_No + 1

     EMS0$ = "土木橋脚 鉄筋材料表 Read": EMS1 = "": EMS2 = ""
     縮尺$ = "": 図基本_Scale = 50
    ZU_Scale = 図基本_Scale
    鉄筋表_項目$ = ""
            鉄筋表_項目$ = ""
            鉄筋表_集計$ = ""
            原点X = 50: 原点Y = 520
            表間隔 = 50
            表部材箇所 = 1
      
      
      For ii = 1 To 20: 表_ΣΣ鉄筋重量(ii) = 0: 表_Σ鉄筋重量(ii) = 0
            表_鉄筋W箇所(ii) = 0: 表_鉄筋ΣW箇所(ii) = 0
            表_鉄筋K箇所(ii) = 0: 表_鉄筋ΣK箇所(ii) = 0
            Next ii
     
     
     
     Open Temp$ For Input As #2
                Line Input #2, 土木_橋脚_DXF_F名$: EMS1 = "作図Data  " + 土木_橋脚_DXF_F名$ + "  "
                Line Input #2, 図_名称$
                Line Input #2, 図番号$
     
                Call 図_File_名(土木_橋脚_DXF_F名$, Input_F$, Output_F$)
                変換type$ = "Dxf": Data_Type$ = "Ploter": 用紙size$ = "A1"
                
                Call 図_File_Start(Input_F$, 変換type$, Data_Type$, 用紙size$, 図基本_Scale, 橋脚_LAYER_N, 橋脚_layer$())
                現作図_Scale = 図基本_Scale

                For ii = 1 To 橋脚図_基本設定数:    Print #60, "[基本設定:" + 橋脚図_基本設定(ii) + "]":    Next ii
     
                Call 土木_橋脚_枠作図
                鉄筋材料表出力$ = "Y"
                
                
             '   Print #60, "[Msize:3]"
                Print #60, "[Msize:" + F9(鉄筋材料表_Msize) + "]"
     
        Do
                If INP$ <> "N" Then Line Input #2, Da$
                INP$ = ""
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
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
                         
                                       鉄筋表_項目$ = Mid(Da$, 2)
                                       前鉄筋径$ = ""
                                       前鉄筋材質$ = ""
                                     鉄筋表_現Y = 鉄筋表_現Y - 鉄筋表_Ypit:  '   現在のY座標
                                      Print #60, "[P:" + FD2(5 * 現作図_Scale, 鉄筋表_現Y) + "]\[wl:" + 鉄筋表_項目$ + "]"
                                      鉄筋表_集計$ = "Y"
                         
                         End Select
             
             Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             
             
             
             Case "原点=":        Call Ddata(",", 項目3s$, Ds$(), Di(), ni)
                                  If ni <> 2 Then 世er = " 原点=X0,Y0 でない (" + Da$ + ")": If 世誤CK > 99 Then Stop
                                  原点X = Di(1): 原点Y = Di(2)
                                  Call 図_原点(原点X, 原点Y)
                                  '現作図_Scale = 図基本_Scale
        
             
             Case "表間隔=":        表間隔 = Val(項目3s$)
             
             Case "部材箇所=": 表部材箇所 = Val(項目3s$)
             
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
     
     Close #2
     End Sub


Sub P_鉄筋表(Da$)
     '鉄筋表_現Y   現在のY座標
     
     
     'Dim 前鉄筋径$, 前鉄筋材質$
     
     鉄筋表_現Y = 鉄筋表_現Y - 鉄筋表_Ypit
     鉄筋1重量 = 0: 鉄筋重量 = 0: 鉄筋摘要$ = "":
     鉄筋材質$ = 前鉄筋材質$
     鉄筋符号$ = Trim(Mid(Da$, 2))
     鉄筋W箇所 = 0: 鉄筋K箇所 = 0
     
     If 鉄筋符号$ = "" Then 前鉄筋符号$ = "*": Line Input #2, Da$: Exit Sub
              
              
     EMS2$ = 鉄筋符号$ + "  "
     Y0 = 鉄筋表_現Y
         
              
              Input #2, 鉄筋径$
                   鉄筋単位重量 = FP_橋脚_鉄筋_Data("W", 鉄筋径$) / 1000
     
              Input #2, 鉄筋長さs$: 鉄筋長さ = Val(鉄筋長さs$)
              Input #2, 鉄筋本数s$: 鉄筋本数 = Val(鉄筋本数s$)
     
     
     Do
                If INP$ <> "N" Then Line Input #2, Da$
                INP$ = ""
     
                 Call INP項目3(Da$, 項目s$, 項目2s$, 項目3s$)
        
                 If Mid$(Da$, 1, 1) = "S" Then 項目s$ = "SD"
                 If Mid$(Da$, 1, 1) = "W" Then 項目s$ = "W"
                 If Mid$(Da$, 1, 1) = "K" Then 項目s$ = "K"
             
             Select Case 項目s$
             Case "/": Exit Do
             
             Case "**": er (項目3s$): ' User ｺﾒﾝﾄ
             Case "*": ' ｺﾒﾝﾄ　　　exp  *ｺﾒﾝﾄ
             Case "原点=":     Exit Do
             Case ".":  Exit Do
             
             Case "$": 鉄筋摘要$ = 項目3s$
             
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
                    If 表示鉄筋径$ = 前鉄筋径$ Then 表示鉄筋径$ = "〃"
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
                    If 表示鉄筋材質$ = 前鉄筋材質$ Then 表示鉄筋材質$ = "〃"
                    If 前鉄筋符号$ = "*" Then 表示鉄筋材質$ = 鉄筋材質$
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + 表示鉄筋材質$ + "]"
     
           '[[[ 鉄筋W箇所 ]]]
                    X1 = 鉄筋表X(9) + 1 * 現作図_Scale
                    鉄筋W箇所s$ = "(" + f0(鉄筋W箇所) + ")"
                    If 鉄筋W箇所 > 0 Then Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + 鉄筋W箇所s$ + "]"
           
           
           
           Call P_鉄筋重量_集計(鉄筋径$, 鉄筋重量, 鉄筋W箇所)
           
           前鉄筋径$ = 鉄筋径$
           前鉄筋材質$ = 鉄筋材質$
           前鉄筋符号$ = 鉄筋符号$
    
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
    If 表部材箇所 > 1 Then X3 = 120 * 現作図_Scale: X4 = 140 * 現作図_Scale
         
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
                 If 表部材箇所 > 1 Then
                        表部材箇所s$ = "x " + F9(表部材箇所) + " = " + f(鉄筋重量 * 表部材箇所, 9.1)
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
     Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + 鉄筋表_項目$ + "合計" + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_鉄筋F1$(Σ鉄筋重量) + "]"
                 If 表部材箇所 > 1 Then
                        表部材箇所s$ = "x " + F9(表部材箇所) + " = " + f(Σ鉄筋重量 * 表部材箇所, 9.1)
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
    ' 鉄筋表項目$(30), 鉄筋表項目2$(30)
    ' 鉄筋表L(i)  :  X 枠幅
    ' 鉄筋表X(i)  :  X 枠 左位置
    ' 鉄筋表_Ypit, 鉄筋表_YL, 鉄筋表_XL
     鉄筋表_XN = 8: 鉄筋表_YN = 66
     鉄筋表_現Y = 0: '   現在のY座標
    
    '[[[  X  ]]]
           鉄筋表項目$(1) = "符  号":       鉄筋表項目$(2) = "径":      鉄筋表項目$(3) = "長  さ":      鉄筋表項目$(4) = "本  数"
           鉄筋表項目$(5) = "一本当り重量": 鉄筋表項目$(6) = "重  量":  鉄筋表項目$(7) = "適  要":      鉄筋表項目$(8) = "材  質"
           
           鉄筋表項目2$(1) = "":       鉄筋表項目2$(2) = "":      鉄筋表項目2$(3) = "(mm)":      鉄筋表項目2$(4) = ""
           鉄筋表項目2$(5) = "(Kg)": 鉄筋表項目2$(6) = "(Kg)":  鉄筋表項目2$(7) = "":      鉄筋表項目2$(8) = ""
           
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
           For XX = 1 To 鉄筋表_XN:   Print #60, "[P:" + FD2((鉄筋表X(XX) + 鉄筋表X(XX + 1)) / 2, -0.5 * 鉄筋表_Ypit) + "]\[wc:" + 鉄筋表項目$(XX) + "]":  Next XX
           
           For XX = 1 To 鉄筋表_XN: Print #60, "[P:" + FD2((鉄筋表X(XX) + 鉄筋表X(XX + 1)) / 2, -1.5 * 鉄筋表_Ypit) + "]\[wc:" + 鉄筋表項目2$(XX) + "]":  Next XX
           
           Print #60, "[P:" + FD2(0, 0) + "]\[L:" + FD2(鉄筋表_XL, 0) + "]"
           For YY = 1 To 鉄筋表_YN: 鉄筋表_YL = 鉄筋表_YL + 鉄筋表_Ypit
               Print #60, "[P:" + FD2(0, -鉄筋表_YL) + "]\[L:" + FD2(鉄筋表_XL, 0) + "]"
               Next YY
    
           Print #60, "[P:" + FD2(0, 0) + "]\[L:" + FD2(0, -鉄筋表_YL) + "]"
           Print #60, "[P:" + FD2(鉄筋表_XL, 0) + "]\[L:" + FD2(0, -鉄筋表_YL) + "]"
    
    
    
    
    End Sub




