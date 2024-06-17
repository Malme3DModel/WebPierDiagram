Attribute VB_Name = "橋脚_Outdxf"
'┌─────────────────────────────────────────────────────────────────┐
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　橋脚_OutDxf                                                                                                             │
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　2003.10.27 　　　　 　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'│　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　│
'└─────────────────────────────────────────────────────────────────┘
'
'
'
     
     ' X1         : 始点X座標原寸
     ' Y1         : 始点Y座標原寸
     ' X2         : 終点X座標原寸
     ' Y2         : 終点Y座標原寸
     ' r          : 図形回転反時計回り +
     ' D          : 円半径標原寸 ?
     ' Jda$       : 文字出力
     ' Jsda$      : 寸法出力時の文字出力

     
     Public ZU_Scale As Single: ' 図面ｽｹｰﾙ   1/Zu_scale
     
     Dim 変換M As Single '  変換M=現作図_Scale   図面の作図状態のｽｹｰﾙ  1/変換M  図面に 別のｽｹｰﾙの図を描く
     Dim 図基本_Scale As Single
     Dim 現作図_Scale As Single: ' 途中で Scaleの変更

     Public Zlayer$(1500), LAYER_N As Single
     
          Dim outdxf$: ' Output File Name
          
          Dim Data_Type$: '    Printer  Proter
          Dim 変換type$:  ' DXF   SXF  現在未使用
          
          Dim Sub倍率 As Single:  '  Sub倍率 = 図基本_Scale / 現作図_Scale
          
          Dim 用紙size$:                           '  A1  A2
          Dim P_用紙原点X, P_用紙原点Y As Single:  ' 用紙の作図原点 mm
          Dim P_原点X, P_原点Y As Single:          ' 原点 P_原点X = P_用紙原点X * 図基本_Scale: P_原点Y = P_用紙原点Y * 図基本_Scale
     
          Dim ペンStart位置_X As Single:           ' PRINTER mode 現在のペンStart位置
     
          Dim P_PloterX, P_PloterY As Single:      ' 現在 ペン位置
          Dim P_改行pit:                           ' 改行ﾋﾟｯﾁ    2.5mm
          Dim Wda$, Wd$
          Dim 文字 As String
          Dim 倍率, 倍率X, 倍率Y, 倍率M As Single

          Dim P_Layer_0 As String:                 ' 現在 ﾚｲﾔｰ
          Dim P_Layer_線 As String:                ' 線Layer
          Dim P_Layer_点 As String:                ' 点Layer
          Dim P_Layer_円 As String:                ' 円Layer
          Dim P_Layer_Arc As String:               ' ArcLayer
          Dim P_Layer_文字 As String:              ' 文字Layer
          Dim P_Layer_寸法 As String:              ' 寸法Layer
          Dim P_Layer_ハッチ As String:            ' ﾊｯﾁLayer
          
          Dim P_Layer_0_Bak As String:
          Dim P_Layer_線_Bak As String:
          Dim P_Layer_点_Bak As String:
          Dim P_Layer_円_Bak As String:
          Dim P_Layer_Arc_Bak As String:
          Dim P_Layer_文字_Bak As String:
          Dim P_Layer_寸法_Bak As String:
          Dim P_Layer_ハッチ_Bak As String:
    
    
          Dim P_線種_0 As String:                  ' 現在 線の種類  CONTINUOUS   DOT  DASHED1  DASHED2   CENTER1  CENTER2 PHANTOM1 PHANTOM2
          Dim P_線種_寸法 As String:               ' 寸法線種
          Dim P_線種_ハッチ As String:             ' ﾊｯﾁ線種
          Dim P_線種_線 As String
          Dim P_線種_円 As String
          Dim P_線種_Arc As String
          
          
          Dim P_線種_0_Bak As String:
          Dim P_線種_寸法_Bak As String:
          Dim P_線種_ハッチ_Bak As String:
          Dim P_線種_線_Bak As String
          Dim P_線種_円_Bak As String
          Dim P_線種_Arc_Bak As String
    
          
          Dim P_色_0 As String:                    ' 現在 線の色（太さ）  1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
          Dim P_色_線 As String:                   ' 線色
          Dim P_色_点 As String:                   ' 点線色
          Dim P_色_円 As String:                   ' 円線色
          Dim P_色_Arc As String:                  ' Arc線色
          Dim P_色_文字 As String:                 ' 文字色
          Dim P_色_寸法 As String:                 ' 寸法色
          Dim P_色_ハッチ As String:               ' ﾊｯﾁ色

          Dim P_色_0_Bak As String:
          Dim P_色_線_Bak As String:
          Dim P_色_点_Bak As String:
          Dim P_色_円_Bak As String:
          Dim P_色_Arc_Bak As String:
          Dim P_色_文字_Bak As String:
          Dim P_色_寸法_Bak As String:
          Dim P_色_ハッチ_Bak As String:

          
          Dim P_文字_size_0 As Single:             ' 現在 文字ｻｲｽﾞmm
          Dim P_超Big_Font As Single
          Dim P_Big_Font As Single
          Dim P_Middle_Font As Single
          Dim P_Small_Font As Single
          Dim P_超Small_Font As Single
          
          Dim P_寸法_Msize As Single:              ' 寸法 文字ｻｲｽﾞ

          Dim P_文字_size_0_Bak As Single
          Dim P_超Big_Font_Bak As Single
          Dim P_Big_Font_Bak As Single
          Dim P_Middle_Font_Bak As Single
          Dim P_Small_Font_Bak As Single
          Dim P_超Small_Font_Bak As Single
          Dim P_寸法_Msize_Bak As Single

          Dim P_Mdx As Single:   ' mm 文字のずれ
          Dim P_Mdy As Single:   '

          Dim P_寸法_端部 As String:            '  寸法_端部のﾏｰｸの指定    .  矢   上矢   下矢
          Dim P_寸法_端部_矢_size As Single:    '  寸法_端部のﾏｰｸの 矢長さ mm
          Dim P_寸法_端部_矢_角度 As Single:    '  寸法_端部のﾏｰｸの 角度(度)
          Dim P_寸法_値_小数点桁数 As Integer:  '  寸法_値_小数点桁数   exp 2  1  0
          Dim P_寸法_補助線_出 As Single:       '  寸法_端部の補助線の_出矢長さ mm

          Dim P_鉄筋径_倍率 As Single:             ' 鉄筋径の作図倍率


          Dim P_矢_Mark$:                       '  図 Mark    L  <
          Dim P_矢_長さ As Single:              '  図 矢印長さmm
          Dim P_矢_角度 As Single:              '  図 矢印角度 度


     
     
          Dim MXp(3000) As Single:       ' ﾌﾟﾘﾝﾀｰの X座標の記憶
          Dim MYp(3000) As Single:       ' ﾌﾟﾘﾝﾀｰの Y座標の記憶
     
          Dim Ds11$(500)
          Dim XX1(500), YY1(500), XX2(500), YY2(500), 左t(500), 右t(500)
          Dim RR1(500)
     
     
     Dim oo


'┌─────────────────────────────────────────────────────────────────┐
'│   UXF_変換                                                                                                                       │
'└─────────────────────────────────────────────────────────────────┘

Sub UXF_変換(Input_F$, Output_F$)
    ' ﾚｲﾔｰを Fileから入力
    
    ' 変換Type$    DXF    SXF  未使用
    ' Data_Type$  Protor  Printer
    ' 用紙Size$   A1  A2
    ' ZU_Scale    図面ｽｹｰﾙ   1/Zu_scale
    
    outdxf$ = Output_F$
    
    変換type$ = "Dxf"
    Data_Type$ = "Proter":  '  Printer  Proter
    用紙size$ = "A1"
    ZU_Scale = 0
    LAYER_N = 0
    
    'Call Dxf_start(Output_F$, LAYER_N, Zlayer$())
    'Call PROTER初期値
    
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


'┌─────────────────────────────────────────────────────────────────┐
'│   PROTER初期値                                                                                                                   │
'└─────────────────────────────────────────────────────────────────┘
Sub PROTER初期値()
     ' Data_Type$    Printer  Proter
    
    変換M = 図基本_Scale
    Sub倍率 = 1:  ' Sub倍率 = 図基本_Scale / 現作図_Scale
    
    
    P_Layer_0 = Zlayer$(1):            ' PRINTER mode ﾚｲﾔｰ
    P_線種_0 = "CONTINUOUS":      ' PRINTER mode 線の種類  CONTINUOUS   DOT  DASHED1  DASHED2   CENTER1  CENTER2 PHANTOM1 PHANTOM2
    P_文字_size_0 = 2.5:                ' PRINTER mode 文字ｻｲｽﾞmm
    'P_寸法_Msize = 2.5:                ' PRINTER mode 文字ｻｲｽﾞmm
    P_色_0 = "7":                   ' PRINTER mode 線の色（太さ）  1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
    ペンStart位置_X = 0:                    ' PRINTER mode 現在のペンStart位置
    
    Select Case UCase(Data_Type$)
         Case "PRINTER": P_用紙原点X = 0: P_用紙原点Y = 420: ' mm
         Case Else:    P_用紙原点X = 0: P_用紙原点Y = 0: ' mm
         End Select
    
    P_原点X = P_用紙原点X * 図基本_Scale: P_原点Y = P_用紙原点Y * 図基本_Scale:
    P_PloterX = P_原点X: P_PloterY = P_原点Y:   ' PRINTER mode 現在のペン位置
    
    倍率 = 1 * 図基本_Scale: 倍率X = 1 * 図基本_Scale: 倍率Y = 1 * 図基本_Scale: 倍率M = 1
    
         P_改行pit = 2.5 * 倍率Y:           ' 改行ﾋﾟｯﾁ
         Xline = 175 * 倍率X:               ' 横罫線長さ mm
         Line_XL = 175 * 倍率X:             ' 指定無しのline長さmm
         
         
         P_Layer_線 = P_Layer_0:              ' 線Layer
         P_Layer_点 = P_Layer_0
         P_Layer_円 = P_Layer_0
         P_Layer_Arc = P_Layer_0
         P_Layer_文字 = P_Layer_0:            ' 文字Layer
         P_Layer_寸法 = P_Layer_0:             ' 寸法Layer
         P_Layer_ハッチ = P_Layer_0:          ' ﾊｯﾁLayer
    
         P_線種_寸法 = P_線種_0:         ' 寸法線種
         P_線種_ハッチ = P_線種_0:       ' ﾊｯﾁ線種
         P_線種_線 = P_線種_0
         P_線種_円 = P_線種_0
         P_線種_Arc = P_線種_0
    
         P_色_線 = P_色_0:                 ' 線色
         P_色_点 = P_色_0
         P_色_円 = P_色_0
         P_色_Arc = P_色_0
         P_色_文字 = P_色_0:               ' 文字色
         P_色_寸法 = P_色_0:               ' 寸法色
         P_色_寸法 = 5:              ' 寸法色 ****
         P_色_ハッチ = P_色_0:             ' ﾊｯﾁ色
    
         P_文字_size_0 = 2.5
         P_超Big_Font = 7
         P_Big_Font = 3.5
         P_Middle_Font = 2.5
         P_Small_Font = 2
         P_超Small_Font = 1
         
         P_Mdx = 0: ' mm
         P_Mdy = 0.3: '######## Auto Cad 用
    
    
         P_寸法_Msize = 2.5:              ' 寸法_Msize  mm
         P_寸法_端部 = ".":          '  寸法_端部のﾏｰｸの指定  .  矢   上矢   下矢
         P_寸法_端部_矢_size = 2.5:  '  寸法_端部のﾏｰｸの 矢長さ mm
         P_寸法_端部_矢_角度 = 15:   '  寸法_端部のﾏｰｸの 角度(度)
         P_寸法_値_小数点桁数 = 1: '  寸法_値_小数点桁数   exp 2  1  0
         P_寸法_補助線_出 = 0:        '  寸法_端部の補助線の_出矢長さ mm
    
         P_鉄筋径_倍率 = 1:           ' 鉄筋径の作図倍率
         P_矢_Mark$ = "<":            '  図 Mark    L  <
         P_矢_長さ = 3:               ' 図 矢印長さmm
         P_矢_角度 = 15:              ' 図 矢印角度 度
    
    Call 設定_記憶_Out
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub Dレイヤ番号(番号)
   '* 処理予定
    レイヤ番号 = Int(番号)
    If レイヤ番号 < 1 Then レイヤ番号 = 1
    If レイヤ番号 > LAYER_N Then レイヤ番号 = LAYER_N
    P_Layer_0 = Zlayer$(レイヤ番号)
    End Sub
Sub Dlayer(LAYER1$)
   '* 処理予定
    P_Layer_0 = LAYER1$
         P_Layer_線 = P_Layer_0:              ' 線Layer
         P_Layer_点 = P_Layer_0
         P_Layer_円 = P_Layer_0
         P_Layer_Arc = P_Layer_0
         P_Layer_文字 = P_Layer_0:            ' 文字Layer
         P_Layer_寸法 = P_Layer_0:             ' 寸法Layer
         P_Layer_ハッチ = P_Layer_0:          ' ﾊｯﾁLayer
    
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub Dcolor(Color1$)
   '* 処理予定
     ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白

    Select Case Color1$
    Case "2", "ｷ", "黄": P_色_0 = "2"
    Case "3", "ﾐ", "緑": P_色_0 = "3"
    Case "4", "ｿ", "空": P_色_0 = "4"
    Case "5", "ｱ", "青": P_色_0 = "5"
    Case "6", "ﾑ", "紫": P_色_0 = "6"
    Case "7", "ｼ", "白": P_色_0 = "7"
    Case Else: er ("Dxf P_色_0 = " & Color1$):: If 世誤CK > 99 Then Stop
    End Select
    
         P_色_線 = P_色_0:                 ' 線色
         P_色_点 = P_色_0
         P_色_円 = P_色_0
         P_色_Arc = P_色_0
         P_色_文字 = P_色_0:               ' 文字色
    
    
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub DLineStyle(LineStyle1$)
   '* 処理予定
    P_線種_0 = LineStyle1$
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub DFontSize(FontSize1)
   '* 処理予定
    P_文字_size_0 = FontSize1
    
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub 原点Pmode(X0, Y0)
    P_用紙原点X = X0: P_用紙原点Y = Y0: ' mm
     
     P_原点X = P_用紙原点X * 図基本_Scale: P_原点Y = P_用紙原点Y * 図基本_Scale
     'P_PloterX = P_原点X: P_PloterY = P_原点Y

    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   PRINTER1                                                                                                                       │
'└─────────────────────────────────────────────────────────────────┘
Sub PRINTER1(Da$)
    
   ' ReDim D(50)
       
       Select Case UCase$(Mid$(LTrim$(Da$), 1, 1))
       Case "'":
       Case "/":  D2$ = Mid$(Da$, 4)
           Select Case UCase$(Mid$(LTrim$(Da$), 1, 4))
           'Case "/END": 'Exit Do
           Case "/DO:": Da$ = Trim$(Da$): 回数 = Val(Mid$(Da$, 5))
                           ni = InStr(Da$, " "): If ni = 0 Then er (Da$ + " ﾌﾞﾗﾝｸが」ない"): If 世誤CK > 99 Then Stop
                        
                        Da$ = Trim$(Mid$(Da$, ni)): DATA01$ = "": DATA02$ = Da$
                        ni2 = InStr(Da$, "___")
                        If ni2 > 1 Then DATA01$ = Mid$(Da$, 1, ni2 - 1): DATA02$ = Mid$(Da$, ni2 + 3)
                        If ni > 0 And 回数 > 0 Then
                            If DATA01$ <> "" Then Call DXFprintermode(DATA01$)
                            For III1 = 1 To 回数: Call DXFprintermode(DATA02$)
                            Next III1
                            End If
           Case "/PAG": ' Call PPAGE(t1$, Otpgs, Pout())
           Case "/PEN": 'Printer.EndDoc
           Case "/KPA": ' Call KPAGE(t1$, Otpgs, Pout())
           Case "/LMM": 'If PrI <> "N" Then Wda$ = Mid$(DA$, 6): Call LmM(Wda$)
           Case "/LMK": 'If PrI <> "N" Then Wda$ = Mid$(DA$, 6): Call LAmi(Wda$, 0)
           Case "/AMI", "/LMA": ' If PrI <> "N" Then Wda$ = Mid$(DA$, 6): Call LAmi(Wda$, 5)
           Case "/LIN": er ("/Line ﾊﾅｼ"):: If 世誤CK > 99 Then Stop
           Case "/P=" To "/P=ZZZ": Npage = Val(Mid$(Da$, 4)): Otpgs = ""
           Case "/T" To "/TZZZ": T1$ = Mid$(Da$, 4)
           Case "/STA": 'Call syokiti:
           Case "/■■■": ' Call KPAGE(t1$, Otpgs, Pout())
           Case "/NOP": 改ページ = "N": ' NOPAGE
           Case "/DXF": DXF = "D":      ' 文字のPointを上端から下端に変更
           Case "/倍率 ": ' 倍率 = Val(Mid$(DA$, 5)) / 100: ' 倍率=1.0  拡大･縮小
                      '    倍率X = 倍率: 倍率Y = 倍率
                      '    P_文字_size_0 = 倍率 * P_文字_size_0:  ' ﾌｫﾝﾄｻｲｽﾞ
           Case "/原点[": Call Ddata(",", Mid$(Da$, 5), Ds$(), Di(), Data_n)
                          P_原点X = Di(1) * 図基本_Scale: P_原点Y = Di(2) * 図基本_Scale
                          P_PloterX = P_原点X: P_PloterY = P_原点Y
           Case Else: er ("[[[ ﾌﾟﾘﾝﾀｰﾓｰﾄﾞ ]]]  " + Da$): If 世誤CK > 99 Then Stop
           End Select
       Case Else: 'If Printer.CurrentY > 280 Then Call PPAGE(t1$, Otpgs, Pout())
         '  If Mid$(LTrim$(Da$), 1, 1) <> "'" Then P_PloterX = ペンStart位置_X: Call DXFprintermode(Da$)
           If Mid$(LTrim$(Da$), 1, 1) <> "'" Then Call DXFprintermode(Da$)
       End Select

    End Sub


'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub DXFPmode(Da$)
    DXFprintermode (Da$)
    End Sub


'┌─────────────────────────────────────────────────────────────────┐
'│   DXFprintermode                                                                                                                 │
'└─────────────────────────────────────────────────────────────────┘
Private Sub DXFprintermode(WDATA$)
    
    ' 長さ単位は図面上のmm
    
    
    ' Wda$="ﾛﾛﾛﾛ\#A67\#uﾛﾛﾛﾛ\ﾛﾛﾛ
    '
    ' \#A____     ｱﾐｶｹ mm
    ' \#K____     罫線+ｱﾐｶｹ mm
    ' \#uﾛﾛﾛﾛﾛﾛ   ﾙﾋﾞｰ 上
    '
    '
    '  (Dx,Dy,)は現在位置からのｽﾀｰﾄ位置の移動
    '
    '  XL,YL   ｽﾀｰﾄ位置からの長さ

    ' [Scale:ｽｹｰﾙ]                   Scale=1/ｽｹｰﾙ
    ' [原点:X0,Y0]                   図の原点位置の変更          X0,Y0  mm
    ' [Arc1:(Dx,Dy,)r,r1,r2]         半径rのｱｰﾁを  r1(ﾄﾞ) から r2(ﾄﾞ) へ描く
    ' [arc1:(Dx,Dy,)r,r1,r2]         半径rのｱｰﾁを  r1(ﾄﾞ) から r2(ﾄﾞ) へ描く
    ' [Arc3:X2,Y2,X3,Y3]             3点を通るｱｰﾁを描く  X1,Y1は現在のPoint  PointはX3,Y3に移動
    ' [arc3:X2,Y2,X3,Y3]             3点を通るｱｰﾁを描く  X1,Y1は現在のPoint  Pointを元の位置に戻す
    ' [B:(Dx,DY,)BX,BY]              Boxを描く
    ' [b:(Dx,DY,)BX,BY]              Boxを描く  Pointを元の位置に戻す
    ' [Cir:(Dx,Dy,)r]                円を描く
    ' [cir:(Dx,Dy,)r]                円を描く  Pointを元の位置に戻す
    ' [cen:]                         [Ltype:CHA] と同じ
    ' [con:]                         [Ltype:CON] と同じ
    ' [dot:]                         [Ltype:DOT] と同じ
    ' [Dstyle:__]                    0:実線  2:点線  5:透明  Ltypeと同じ機能
    ' [Dwidth:__]                    線幅
    ' [Fstyle:__]
    ' [L:XL,YL|XL,YL|____]      Lineを描く
    '                        [L:XL],[L:] は [L:0,-0.3,Line_XL,0] と同じ
    ' [L:S:(Dx,DY,)XL,YL|(Dx,DY,)XL,YL|___]      Lineを描く
    ' [L:r_:(Dx,DY,)XL,YL|(Dx,DY,)XL,YL|____]     Lineを描く    r>0  ｺｰﾅｰを○くする
    ' [l:(Dx,DY,)XL,YL]               Lineを描く Pointを元の位置に戻す
    '                                [l:XL],[l:] は [l:0,-0.3,Line_XL,0] と同じ
    
    ' [Lr:XL,YL,r|______]            r(半径)
    ' [L2:印$:XL,YL,t(,tR)|____]     2重線を描く  幅=t       印$ ( [ or ] or  [] ) 端部の処理                   H14.8.17
    ' [l2:印$:XL,YL,t(,tR)|____]     2重線を描く  幅=t Pointを元の位置に戻す     H14.8.17
    ' [Ltype:___]                    線種選択 3文字    CONtinue  DOT  CHAin 1DOt  2DOt  WHIte BLAck
    ' [me:no]                        ﾌﾟﾘﾝﾀｰの 座標の記憶  no < 1000
    ' [mx:no]                        ﾌﾟﾘﾝﾀｰの 座標の記憶  X座標のみ記憶 no < 1000
    ' [my:no]                        ﾌﾟﾘﾝﾀｰの 座標の記憶  Y座標のみ記憶 no < 1000
    ' [Msize:___]                    文字サイズ指定
    ' [DMsize:___]                   文字サイズ指定mm
    ' [字H:__]                       文字サイズ指定mm
    ' [Mtype:___]                    文字種類指定   標準明朝  ＭＳ 明朝
    
    ' [P0:]                          原点に戻る
    ' [P:X,Y]                        位置指定絶対座標 ﾎﾟｲﾝﾄ移動
    ' [p:Dx,Dy]                      現在位置からの位置指定(相対座標) ﾎﾟｲﾝﾄ移動
    ' [pm:Dx,Dy]                     現在位置からの位置指定(相対座標) ﾎﾟｲﾝﾄ移動   Dx,Dy は用紙mm
    
    ' [R:___]                        改行しての tab___mmの位置にｾｯﾄ
    ' [r:___]                        改行(文字の書き始めの位置)しての tab___mmの位置にｾｯﾄ
    ' [re:no]                        ﾌﾟﾘﾝﾀｰの記憶座標のｾｯﾄ
    ' [rx:no]                        ﾌﾟﾘﾝﾀｰの記憶座標のｾｯﾄ X座標のみｾｯﾄ
    ' [ry:no]                        ﾌﾟﾘﾝﾀｰの記憶座標のｾｯﾄ Y座標のみｾｯﾄ
    ' [T:X]                          位置指定 X方向のみ
    ' [tab:__]                       左ﾏｰｼﾞﾝ位置指定 X方向のみ DXF
    ' [U:___]                        上付きﾙﾋﾞｰ文字
    ' [u:___]                        上付きﾙﾋﾞｰ文字
    ' [Ul:___]                       Lineを描く Pointを元の位置に戻す
    '                                [Ul:] は [l:0,文字高さ+0.4,Line_XL,0] と同じ
    ' [字:Dx,Dy,角度,__]                mm
    ' [wc:moj]                       現ﾎﾟｲﾝﾄ位置のｾﾝﾀｰにして文字を描く
    ' [wr:moj]                       現ﾎﾟｲﾝﾄ位置から左側に文字を描く
    ' [XL:___]                       Line_XL 指定無しのline長さ(mm)を記憶
    ' [_]                            _を描く
    '
    
    ' [点:(Dx,Dy)]                     点を描く pointは元に戻す

    ' [段:C,XL,YL,(xpit,ypit):___|___|____]         文字を階段状に描く pointは元に戻す
    ' [寸:(Dx,Dy,)引出線:(Dx,Dy,),XL,YL,引出線,文字|___|____]       寸法を描く pointは元に戻す  文字="***" は文字を描かない  Pointは最終点に移動
    
    ' [寸法Arc1:r,r1,r2,S引出線,E引出線,点$,文字$]     KK
    
    ' [矢:記号,矢長さ,○直径:XL,YL,文字,位置$|___|____]       XL,YL mm  引出線で文字を描く  位置$ L C R    Pointは最終点に移動
    ' [矢°:記号,矢長さ,○直径:XL,YL,文字,位置$|___|____]     矢°(度) °  引出線で文字を描く  Pointは最終点に移動
    ' [<:角度,p1,p2,p3,____]"        P_矢_Mark$, P_矢_長さ, P_矢_角度 による
    
    ' [色:__]                 黄   緑   空   青   紫   白            H10.3.28
    ' [ﾊｯﾁ1:ﾋﾟｯﾁmm,角度,XL,YL]    BOXにﾊｯﾁを入れる Pointを元の位置に戻す
    ' [ﾌｯｸ:(Dx,Dy):XL,YL,角度°,D,L]       ﾌｯｸを描く  D直径   Lﾌｯｸ長さ Pointを元の位置に戻す
    ' [ｽﾘｯﾄ:(Dx,Dy),XL,YL,角度,ﾋﾟｯﾁ]      ｽﾘｯﾄを描く  Pointを元の位置に戻す  H10.3.29
    ' [○:(Dx,Dy,)直径]      mm 円を描く  Pointを元の位置に戻す
    ' [●:(Dx,Dy,)直径]      mm 円(黒丸)を描く  Pointを元の位置に戻す
    ' [×:(Dx,Dy,)B(,D)]    mm ×を描く  Pointを元の位置に戻す  Dは上向きが+
    ' [／:(Dx,Dy,)B(,D)]    mm ／を描く  Pointを元の位置に戻す  Dは上向きが+

    
    
    ' New
    ' [ﾚ線:Layer]　　　　　　  　P_Layer_線=線Layer
    ' [ﾚ文字:Layer]              P_Layer_文字=文字Layer
    ' [ﾚ寸法:Layer]              P_Layer_寸法=寸法Layer
    ' [ﾚﾊｯﾁ:Layer]               P_Layer_ﾊｯﾁ=Layer
    
    ' [線種寸法:寸法線種]        P_線種_寸法=寸法線種
    ' [線種ﾊｯﾁ:ﾊｯﾁ線種]          P_線種_ﾊｯﾁ=ﾊｯﾁ線種
    
    ' [色線:線色]                P_色_線=線色
    ' [色文字:文字色]            P_色_文字=文字色
    ' [色寸法:寸法色]            P_色_寸法=寸法色
    ' [色ﾊｯﾁ:ﾊｯﾁ色]              P_色_ﾊｯﾁ=ﾊｯﾁ色
    '
    ' [字□:B,D,角度,moj]       □の中に文字を描く  B,D mm
    ' [断面:Data,角度,ﾊｯﾁ,幅倍率,成倍率]     Data     exp   RC 620x620    □-250x250x12 r=30
    '                                        角度,  ﾊｯﾁ(Y,N)  幅倍率(幅の倍率),  成倍率(成の倍率)
    ' [Msize寸法:__]          寸法線の文字size　mm
    
    ' [切断M1:X1,Y1,X2,Y2,W,H]   線 (X1,Y1) - (X2,Y2) に切断Mark1を付ける W 幅mm  H 高さmm
    
    ' [基本設定:_____]           基本設定
    
    
    'P_PloterX = ペンStart位置_X
    'LP_Y = P_PloterY
    
    datalp$ = ""
    'Delta_X = -4.5: Delta_Y = -4.5: '位置の調整 PRINTER
    Delta_X = 0: Delta_Y = 0: '位置の調整
    Wda$ = WDATA$
    '..... MMX1  ﾙﾋﾞｰ文字　　2001.8.24
       ' Do: ni = InStr(Wda$, "^"): If ni = 0 Then Exit Do
       '     Wda$ = Mid$(Wda$, 1, ni - 1) + "\[U:" + Mid$(Wda$, ni + 1, 1) + "]\" + Mid$(Wda$, ni + 2)
       '     ni = InStr(ni, Wda$, " ")
       '     If ni > 1 Then Wda$ = Mid$(Wda$, 1, ni - 1) + " " + Mid$(Wda$, ni)
       '     Loop
    
    
    
    Do:       ' r$ = "":
                    N00 = InStr(Wda$, "\")
                    If N00 = 0 Then Wd$ = Wda$ Else Wd$ = Mid$(Wda$, 1, N00 - 1): Wda$ = Mid$(Wda$, N00 + 1)
       
                    OLD_X = X0:  X0 = P_PloterX: Y0 = P_PloterY: 指示$ = ""
       
                    DDD1$ = Mid$(Trim(Wd$), 1, 1)
                    ni = InStr(Wd$, ":"): If ni = 0 Then DDD1$ = ""
                    If Right$(Wd$, 1) <> "]" Then DDD1$ = ""
                    If Wd$ = "[_]" Then DDD1$ = "["
            
            
       Select Case DDD1$
       Case "[":    Wd$ = Mid(Trim(Wd$), 2)
                    LN = Len(Wd$): Wd$ = Mid$(Wd$, 1, LN - 1): ' ] を取る
                    
                    ni = InStr(Wd$, ":"): '  [Wd$]  →  [Wmark$:Wd2$]     ( Wd2$  [ と ] は含まない )
                    Wmark$ = Wd$: WD2$ = "":    If ni > 1 Then Wmark$ = Mid$(Wd$, 1, ni - 1): WD2$ = Mid$(Wd$, ni + 1)
                    
                    Call Ddata(",", WD2$, Ds$(), Di(), Data_n)
             
                    X000 = P_PloterX: Y000 = P_PloterY
             
             
             Select Case Wmark$
            '┌────────────────────────────────────┐
            '│   ***                                                                  │
            '└────────────────────────────────────┘
             Case "用紙size":    用紙size$ = WD2$
             
             Case "変換type":    変換type$ = WD2$: '  Dxf Sxf
             Case "Datatype":    Data_Type$ = WD2$: ' Ploter  Printer
             
             Case "Layer":      ' exp  [Layer:ﾚｲﾔ名]
                                 LAYER_N = LAYER_N + 1
                                 Zlayer$(LAYER_N) = WD2$
             
             Case "Scale":       ZU_Scale = Di(1): If ZU_Scale <= 0 Then ZU_Scale = 1
                                 図基本_Scale = ZU_Scale
                                 変換M = 図基本_Scale
                                 倍率 = 1 * 図基本_Scale: 倍率X = 1 * 図基本_Scale: 倍率Y = 1 * 図基本_Scale: 倍率M = 1
             
             
             Case "Scaleｻﾌﾞ":    現作図_Scale = Di(1):
                                 If 現作図_Scale <= 0 Then 現作図_Scale = 1
                                 Sub倍率 = 図基本_Scale / 現作図_Scale:
                                 変換M = 現作図_Scale: '図基本_Scale / Sub倍率:
             
             Case "Scaleﾘｾｯﾄ":   現作図_Scale = 図基本_Scale: 変換M = 図基本_Scale:    Sub倍率 = 1
             
             Case "Start":    '  outdxf$ = WD2$
                                If 図基本_Scale = 0 Then er (" Scale の入力が無い "): Stop
                                If LAYER_N = 0 Then er (" ﾚｲﾔ名の入力が無い "): Stop
                                Call Dxf_start(outdxf$, LAYER_N, Zlayer$())
                                Call PROTER初期値
                                
            
             Case "基本設定":    ' Call Ddata(",", Mid$(Da$, 5), Ds$(), Di(), Data_n)
                                Call INP項目3(WD2$, 項目s$, 項目2s$, 項目3s$)
                                Select Case 項目s$
                                Case "寸法端部=": P_寸法_端部 = 項目3s$
                                Case "寸法Msize=": P_寸法_Msize = Val(項目3s$): If P_寸法_Msize < 0.5 Then P_寸法_Msize = 0.5
                                Case "寸法端部矢size=": P_寸法_端部_矢_size = Val(項目3s$): If P_寸法_端部_矢_size < 0.1 Then P_寸法_端部_矢_size = 0.1
                                Case "寸法端部矢角度=": P_寸法_端部_矢_角度 = Val(項目3s$)
                                Case "寸法色=": P_色_寸法 = D色$(項目3s$)
                                
                                Case "矢Mark=": P_矢_Mark$ = 項目3s$
                                Case "矢size=": P_矢_長さ = Val(項目3s$): If P_矢_長さ < 0.1 Then P_矢_長さ = 0.1
                                Case "矢角度=": P_矢_角度 = Val(項目3s$):
                                
                                Case "Msize=": P_文字_size_0 = D文字size_CK(Val(項目3s$))
                                
                                Case Else: er ("System Uxf 基本設定 " + Wda$ + " は使用できません"):   If 世誤CK > 99 Then Stop

                                End Select
             
             Case "設定out":   '基本設定を保存
                                Call 設定_記憶_Out

             Case "設定in":    '基本設定を戻す
                                Call 設定_記憶_In
            
            '┌────────────────────────────────────┐
            '│   原点                                                                 │
            '└────────────────────────────────────┘
             Case "原点":    ' Call Ddata(",", Mid$(Da$, 5), Ds$(), Di(), Data_n)
                          P_用紙原点X = Di(1): P_用紙原点Y = Di(2): ' mm
                          P_原点X = Di(1) * 図基本_Scale: P_原点Y = Di(2) * 図基本_Scale
                          
                          P_PloterX = 0: P_PloterY = 0
                          現作図_Scale = 図基本_Scale: 変換M = 図基本_Scale:    Sub倍率 = 1
                          
                          'P_PloterX = P_原点X: P_PloterY = P_原点Y
             
             
            '┌────────────────────────────────────┐
            '│   ﾚｲﾔ                                                                  │
            '└────────────────────────────────────┘
             Case "ﾚ":            P_Layer_0 = DLayer_CK(WD2$): 'Call Dレイヤ番号(Di(1)):  'ﾚｲﾔｰ設定
                                  P_Layer_線 = P_Layer_0: P_Layer_点 = P_Layer_0: P_Layer_円 = P_Layer_0: P_Layer_Arc = P_Layer_0
                                  P_Layer_文字 = P_Layer_0
             
             Case "ﾚ線":          P_Layer_線 = DLayer_CK(WD2$)
             Case "ﾚ点":          P_Layer_点 = DLayer_CK(WD2$)
             Case "ﾚ円":          P_Layer_円 = DLayer_CK(WD2$)
             Case "ﾚarc":         P_Layer_Arc = DLayer_CK(WD2$)
             Case "ﾚ文字":        P_Layer_文字 = DLayer_CK(WD2$)
             Case "ﾚ寸法":        P_Layer_寸法 = DLayer_CK(WD2$)
             Case "ﾚﾊｯﾁ":         P_Layer_ハッチ = DLayer_CK(WD2$)
             
             
            
            '┌────────────────────────────────────┐
            '│   円                                                                   │
            '└────────────────────────────────────┘
             Case "Arc1", "arc1", "変Arc1", "変arc1": ' [Arc1:(Dx,Dy,)r,r1,r2]         半径rのｱｰﾁを  r1(ﾄﾞ) から r2(ﾄﾞ) へ描く
                       L倍 = 1: If Mid(Wmark$, 1, 1) = "変" Then X0 = 0: Y0 = 0: L倍 = ZU_Scale
                       Wd$ = Mid$(Wd$, 6): Wsign$ = ""
                       ni = InStr(Wd$, ":"): If ni > 1 Then Wsign$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                       Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                   Select Case Data_n
                       Case 3: AX0 = X0: AY0 = Y0: Arc_r = Di(1) * L倍: r1 = Di(2) * L倍: r2 = Di(3) * L倍
                       Case 5: AX0 = X0 + Di(1) * L倍: AY0 = Y0 + Di(2) * L倍:  Arc_r = Di(3) * L倍: r1 = Di(4) * L倍: r2 = Di(5) * L倍
                       Case Else:  er ("[" + Wmark$ + "] " + WDATA$): AX0 = X0: AYO = Y0: Arc_r = 0: r1 = 0: r2 = 0
                                    If 世誤CK > 99 Then Stop
                       End Select
                   Call Darc(Wsign$, AX0, AY0, Arc_r, r1, r2)
                   If Wmark$ = "Arc1" Or Wmark$ = "変Arc1" Then P_PloterX = AX0: P_PloterY = AY0
             
             Case "Arc1m", "arc1m": ' [Arc1m:(Dx,Dy,)r,r1,r2]         半径rのｱｰﾁを  r1(ﾄﾞ) から r2(ﾄﾞ) へ描く  単位 mm
                       Wd$ = Mid$(Wd$, 7): Wsign$ = ""
                       ni = InStr(Wd$, ":"): If ni > 1 Then Wsign$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                       Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                   Select Case Data_n
                       Case 3: AX0 = X0: AY0 = Y0: Arc_r = Di(1) * 変換M: r1 = Di(2): r2 = Di(3)
                       Case 5: AX0 = X0 + Di(1) * 変換M: AY0 = Y0 + Di(2) * 変換M:  Arc_r = Di(3) * 変換M: r1 = Di(4): r2 = Di(5)
                       Case Else:  er ("[" + Wmark$ + "] " + WDATA$): AX0 = X0: AYO = Y0: Arc_r = 0: r1 = 0: r2 = 0
                                    If 世誤CK > 99 Then Stop
                       End Select
                   Call Darc(Wsign$, AX0, AY0, Arc_r, r1, r2)
                   If Wmark$ = "Arc1m" Then P_PloterX = AX0: P_PloterY = AY0
             
             Case "Arc3", "arc3"
                   X1 = X0: Y1 = Y0
                       X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                       X3 = X1 + Di(3): Y3 = Y1 + Di(4)
                   Call Darc3("", X1, Y1, X2, Y2, X3, Y3)
                   If Wmark$ = "Arc3" Then P_PloterX = X3: P_PloterY = Y3
             
             
             Case "Cir", "cir", "変Cir", "変cir"
                       L倍 = 1: If Mid(Wmark$, 1, 1) = "変" Then X0 = 0: Y0 = 0: L倍 = ZU_Scale
                   Select Case Data_n
                   Case 1: X1 = X0: Y1 = Y0: 半径 = Di(1) * L倍
                   Case 3: X1 = X0 + Di(1) * L倍: Y1 = Y0 + Di(2) * L倍: 半径 = Di(3) * L倍
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): 半径 = 0: If 世誤CK > 99 Then Stop
                   End Select
                   Call Dcircle(X1, Y1, 半径)
                   If Wmark$ = "Cir" Then P_PloterX = X1: P_PloterY = Y1
             
             
             Case "○", "●": ' 直径 用紙mm
                   Select Case Data_n
                   Case 1: X1 = X0: Y1 = Y0: 直径 = Di(1): Moj$ = ""
                   Case 2: X1 = X0: Y1 = Y0: 直径 = Di(1): Moj$ = Ds$(2)
                   Case 3: X1 = X0 + Di(1): Y1 = Y0 + Di(2): 直径 = Di(3): Moj$ = ""
                   Case 4: X1 = X0 + Di(1): Y1 = Y0 + Di(2): 直径 = Di(3): Moj$ = Ds$(4)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): CIRD = 0: If 世誤CK > 99 Then Stop
                   End Select
                   If Wmark$ = "○" Then Call D○(X1, Y1, 直径, Moj$):
                   If Wmark$ = "●" Then Call D●(X1, Y1, 直径):
             
            '┌────────────────────────────────────┐
            '│   Box                                                                  │
            '└────────────────────────────────────┘
             Case "B", "b": X0 = P_PloterX: Y0 = P_PloterY
                   'Di(1) = 倍率X * Di(1): Di(2) =  Di(2)
                   'Di(3) = 倍率X * Di(3): Di(4) = 倍率Y * Di(4)
                   BOXR = 0
                   Select Case Data_n
                   Case 4: X1 = X0 + Di(1): Y1 = Y0 + Di(2):  BOXB = Di(3): BOXH = Di(4)
                   Case 2: X1 = X0: Y1 = Y0:  BOXB = Di(1): BOXH = Di(2)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): BOXB = 0: BOXH = 0: If 世誤CK > 99 Then Stop
                   End Select
                   Call D_Box(X1, Y1, BOXR, BOXB, BOXH, P_Layer_0, P_線種_0, P_色_0)
                   If Wmark$ = "B" Then P_PloterX = X1: P_PloterY = Y1
             
             
            '┌────────────────────────────────────┐
            '│   色                                                                   │
            '└────────────────────────────────────┘
             Case "色": ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
                                P_色_0 = D色$(WD2$)
                                P_色_線 = P_色_0: P_色_点 = P_色_0: P_色_円 = P_色_0: P_色_Arc = P_色_0
                                P_色_文字 = P_色_0
             Case "色線":       P_色_線 = D色$(WD2$)
             Case "色点":       P_色_点 = D色$(WD2$)
             Case "色円":       P_色_円 = D色$(WD2$)
             Case "色arc":      P_色_Arc = D色$(WD2$)
             
             Case "色文字":     P_色_文字 = D色$(WD2$)
             Case "色寸法":     P_色_寸法 = D色$(WD2$):
             Case "色ﾊｯﾁ":      P_色_ハッチ = D色$(WD2$)
             
             
             Case "Fstyle": PFillStyle = Di(1): 'Printer.FillStyle = PFillStyle
             
            '┌────────────────────────────────────┐
            '│   線種                                                                 │
            '└────────────────────────────────────┘
             Case "線種", "Ltype": ' CONTINUOUS   DOT  DASHED1  DASHED2   CENTER1  CENTER2 PHANTOM1 PHANTOM2
                                P_線種_0 = D線種$(WD2$)
                                'P_線種_線 = P_線種_0: P_線種_円 = P_線種_0: P_線種_Arc = P_線種_0
                                 Call D線種set(P_線種_0)
             
             Case "線種寸法":    P_線種_寸法 = D線種$(WD2$)
             Case "cen":         Call D線種set("CENTER1")
             Case "cen2":        Call D線種set("CENTER2")
             Case "con":         Call D線種set("CONTINUOUS")
             Case "dot":         Call D線種set("DOT")
             Case "1dot":        Call D線種set("DASHED1")
             Case "Dstyle":
                   Select Case Di(1)
                   Case 1: P_線種_0 = "CONTINUOUS"
                   Case 2: P_線種_0 = "CONTINUOUS"
                   Case 3: P_線種_0 = "CONTINUOUS"
                   Case Else: P_線種_0 = "CONTINUOUS"
                   End Select
             Case "Dwidth": 'PDrawWidth = Di(1): 'Printer.DrawWidth = PDrawWidth
                   ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
                   Select Case Di(1)
                   Case 1: P_色_0 = "5"
                   Case 2: P_色_0 = "4"
                   Case 3, 4: P_色_0 = "7"
                   Case 5: P_色_0 = "2"
                   Case Is >= 6: P_色_0 = "6"
                   Case Else: P_色_0 = "7"
                   End Select
             
            '┌────────────────────────────────────┐
            '│   線 Line                                                              │
            '└────────────────────────────────────┘
             Case "L", "l": ' [L:   :XL,YL|     ]
                   WD3$ = Mid$(Wd$, 3): RD = 0: Nline = 0: LSTART0$ = ""
                   ni = InStr(WD3$, ":")
                       If ni > 1 Then
                            D1$ = Mid$(WD3$, 1, ni - 1)
                            Select Case Mid$(D1$, 1, 1)
                            Case "S": LSTART0$ = "Y"
                            Case "r": RD = Val(Mid$(D1$, 2))
                            Case Else: er ("[L:  : " + "[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
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
                                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If 世誤CK > 99 Then Stop
                                   End Select
                           Case 2: X1 = P_PloterX: Y1 = P_PloterY:  X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                           Case 3: X1 = P_PloterX + Di(1): Y1 = P_PloterY + Di(2): X2 = X1: Y2 = Y1
                                   If Ds$(3) <> "." Then er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If 世誤CK > 99 Then Stop
                                   If RD = 0 Then Call DPoint(X1, Y1)
                           Case 4: X1 = P_PloterX + Di(1): Y1 = P_PloterY + Di(2): X2 = X1 + Di(3): Y2 = Y1 + Di(4)
                           Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If 世誤CK > 99 Then Stop
                           End Select
                   
                       Nline = Nline + 1: XX1(Nline) = X1: XX2(Nline) = X2: YY1(Nline) = Y1: YY2(Nline) = Y2
                       P_PloterX = X2: P_PloterY = Y2
                       If ni = 0 Then Exit Do
                       Loop
                   
                      Call DLine2(XX1(), YY1(), XX2(), YY2(), Nline, RD)
                      'Call DLine_r(ni, X(), Y(), r())
                      
                   If Wmark$ = "l" Then P_PloterX = X000: P_PloterY = Y000
                   
             Case "Lm", "lm":  ' [Lm:XL,YL,r|______]     Arc を含む線  Data 単位mm
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
                           Case 2: XX1(Nline) = Di(1) * 変換M: YY1(Nline) = Di(2) * 変換M: RR1(Nline) = 0
                           Case 3: XX1(Nline) = Di(1) * 変換M: YY1(Nline) = Di(2) * 変換M: RR1(Nline) = Di(3) * 変換M
                           Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If 世誤CK > 99 Then Stop
                           End Select
                   
                       If ni = 0 Then Exit Do
                       Loop
                   
                      Call P_DLine_r(Nline, X000, Y000, XX1(), YY1(), RR1())
                      
                   If Wmark$ = "lm" Then P_PloterX = X000: P_PloterY = Y000
                   
             Case "Lr", "lr":  ' [Lr:XL,YL,r|______]     Arc を含む線
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
                           Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If 世誤CK > 99 Then Stop
                           End Select
                   
                       If ni = 0 Then Exit Do
                       Loop
                   
                      Call P_DLine_r(Nline, X000, Y000, XX1(), YY1(), RR1())
                      
                   If Wmark$ = "l" Then P_PloterX = X000: P_PloterY = Y000

             Case "Li", "変Li":
                         L倍 = 1: If Mid(Wmark$, 1, 1) = "変" Then L倍 = ZU_Scale
                         Call DLine(Di(1) * L倍, Di(2) * L倍, Di(3) * L倍, Di(4) * L倍): 'X1, Y1, X2, Y2
                         P_PloterX = Di(3) * L倍: P_PloterY = Di(4) * L倍
             
             
             Case "L2", "l2": '[l2:印$:1000,0,90,120]      印$ exp  [ (  ～         ] ) ～      [l2:印$:XL,YL,90,BB]
                    WD3$ = Mid$(Wd$, 4):  Nline = 0: 印$ = ""
                   ni = InStr(WD3$, ":")
                       If ni > 1 Then
                            印$ = Mid$(WD3$, 1, ni - 1)
                            WD3$ = Mid$(WD3$, ni + 1)
                            End If
                   
                   XX1(1) = X000: YY1(1) = Y000
                   Do
                       WD4$ = WD3$: ni = InStr(WD4$, "|"): If ni > 1 Then WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1) Else WD3$ = ""
                           Call Ddata(",", WD4$, Ds$(), Di(), Data_n)
                         Nline = Nline + 1
                 '   X0 = P_PloterX: Y0 = P_PloterY
                   Select Case Data_n
                   Case 3: XX1(Nline + 1) = XX1(Nline) + Di(1): YY1(Nline + 1) = YY1(Nline) + Di(2): 左t(Nline) = Di(3) / 2: 右t(Nline) = Di(3) / 2
                   Case 4: XX1(Nline + 1) = XX1(Nline) + Di(1): YY1(Nline + 1) = YY1(Nline) + Di(2): 左t(Nline) = Di(3): 右t(Nline) = Di(4)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): BOXB = 0: BOXH = 0: If 世誤CK > 99 Then Stop
                   End Select
                   If ni = 0 Then Exit Do
                   Loop
                   
                   Call D_2重線1(XX1(), YY1(), 左t(), 右t(), Nline, 印$)
     
                   P_PloterX = XX1(Nline + 1): P_PloterY = YY1(Nline + 1)
                   If Wmark$ = "l2" Then P_PloterX = X000: P_PloterY = Y000
             
             
            '┌────────────────────────────────────┐
            '│   移動                                                                 │
            '└────────────────────────────────────┘
             Case "me": If Di(1) > 0 Then MXp(Di(1)) = P_PloterX: MYp(Di(1)) = P_PloterY
             Case "mx": If Di(1) > 0 Then MXp(Di(1)) = P_PloterX
             Case "my": If Di(1) > 0 Then MYp(Di(1)) = P_PloterY
             
             
             Case "P0":  P_PloterX = 0: P_PloterY = 0: ' 原点
             Case "P":  P_PloterX = (Di(1) + Delta_X): P_PloterY = (Di(2) + Delta_Y)
             Case "p":  P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
             
             Case "Pm": ' [Pm:Dx,Dy]             原点位置からの位置指定 ﾎﾟｲﾝﾄ移動   Dx,Dy は用紙mm
                        P_PloterX = 変換M * Di(1): P_PloterY = 変換M * Di(2)
             
             Case "pm": ' [pm:Dx,Dy]             現在位置からの位置指定(相対座標) ﾎﾟｲﾝﾄ移動   Dx,Dy は用紙mm
                       ' P_PloterX = P_PloterX + 変換M * Di(1): P_PloterY = P_PloterY + 変換M * Di(2)
                        P_PloterX = P_PloterX + 変換M * Di(1): P_PloterY = P_PloterY + 変換M * Di(2)
             
             
             
             Case "R":  P_PloterX = ペンStart位置_X + Di(1): P_PloterY = P_PloterY - P_改行pit
             Case "r":  P_PloterX = OLD_X + Di(1): P_PloterY = P_PloterY - P_改行pit
             
             Case "re": If Di(1) > 0 Then P_PloterX = MXp(Di(1)): P_PloterY = MYp(Di(1))
             Case "rx": If Di(1) > 0 Then P_PloterX = MXp(Di(1))
             Case "ry": If Di(1) > 0 Then P_PloterY = MYp(Di(1))
             
             Case "T":  P_PloterX = (Di(1) + Delta_X)
             Case "tab": ペンStart位置_X = P_PloterX
             
             
             Case "XL": Line_XL = Di(1)
             
            '┌────────────────────────────────────┐
            '│   点                                                                   │
            '└────────────────────────────────────┘
             Case "点", "変点":           ' [点:(Dx,Dy)]             点を描く pointは元に戻す
                       L倍 = 1: If Mid(Wmark$, 1, 1) = "変" Then X000 = 0: Y000 = 0: L倍 = ZU_Scale
                      Select Case Data_n
                      Case 0: X0 = X000: Y0 = Y000
                      Case 2: X0 = X000 + Di(1) * L倍: Y0 = Y000 + Di(2) * L倍
                      Case Else:  er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If 世誤CK > 99 Then Stop
                      End Select
                      Call DPoint(X0, Y0)
            
            '┌────────────────────────────────────┐
            '│   ﾊｯﾁ                                                                  │
            '└────────────────────────────────────┘
             Case "ﾊｯﾁ1"
                  Select Case Data_n
                     Case 4: Pit = Di(1): 角度 = Di(2): XL = Di(3): YL = Di(4)
                     Case 6: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
                             Pit = Di(3): 角度 = Di(4): XL = Di(5): YL = Di(6)
                     Case Else:  er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                     End Select
                 If Data_n = 4 Or Data_n = 6 Then
                     ni = 4
                     XX1(1) = P_PloterX: YY1(1) = P_PloterY
                     XX1(2) = XX1(1): YY1(2) = YY1(1) + YL
                     XX1(3) = XX1(1) + XL: YY1(3) = YY1(1) + YL
                     XX1(4) = XX1(1) + XL: YY1(4) = YY1(1)
                   
                   Call D_ハッチ_1(XX1(), YY1(), ni, 角度, Pit, P_Layer_0, P_線種_0, P_色_0, er1$)
                   End If
                   
                   P_PloterX = X000: P_PloterY = Y000
             
                      
            '┌────────────────────────────────────┐
            '│   文字                                                                 │
            '└────────────────────────────────────┘
             Case "G": P_改行pit = Di(1)
             Case "Msize": If Di(1) > 0 Then P_文字_size_0 = D文字size_CK(Di(1))
             Case "Mtype": PFontName = Ds$(1): ' Printer.FontName = PFontName
             Case "Msize寸法": P_寸法_Msize = D文字size_CK(Di(1)):
             Case "字H", "DMsize":
                      
                      If Di(1) > 0 Then P_文字_size_0 = Di(1):  'Printer.FontSize = P_文字_size_0

             Case "u", "U": Wd$ = Mid$(Wd$, 4)
                  Stop
                  'moj_h = Printer.TextHeight(Wd$): moj_w = Printer.TextWidth(Wd$)
                  'Printer.FontSize = 0.7 * P_文字_size_0
                  P_PloterX = X0 + 0.2: P_PloterY = Y0 - 0.2
                  'Printer.Print Wd$;
                  P_PloterX = X0 + Moj_w: P_PloterY = Y0
                  'Printer.FontSize = P_文字_size_0
             
             Case "_":
                      X = P_PloterX: Y = P_PloterY
                      Call Dsym□(X, Y, -P_文字_size_0 / 2, 1.1 * P_文字_size_0, "L", 0, "_")
                      P_PloterX = X: P_PloterY = Y
             
             Case "字", "変字": '[字:Dx,Dy,角度,文字位置,Moj$]
                  'Select Case Data_n
                   
                       If Mid(Wmark$, 1, 1) = "変" Then X000 = 0: Y000 = 0: 変換M = ZU_Scale
                   
                   If Data_n < 5 Then
                       er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                       Else
                       X0 = X000 + Di(1) * 変換M: Y0 = Y000 + Di(2) * 変換M
                      角度 = Di(3): 文字位置 = Ds$(4)
                      Moj$ = "":
                      For ii = 5 To Data_n:  Moj$ = Moj$ & Ds$(ii):  Next ii
                      Call Dsym(X0, Y0, 文字位置, 角度, Moj$)
                      End If
             
             Case "CL": ' [CL:Msize,角度]    CL を描く
                       P_文字_size_0 = Di(1): DL = 0.2 * Di(1) * 変換M: 角度 = Di(2)
                       X0 = X000: Y0 = Y000: X1 = X0 + DL * Dsin(25 + 角度): Y1 = Y0 - DL * Dcos(25 + 角度)
                       Call Dsym(X0, Y0, "C", 角度, "Ｃ")
                       Call Dsym(X1, Y1, "C", 角度, "Ｌ")
             
                       
             Case "wl", "wc", "wr":
                  If PrI <> "N" Then
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  Select Case Wmark$
                      Case "wl": 文字位置 = "LC"
                      Case "wc": 文字位置 = "CC"
                      Case "wr": 文字位置 = "RC"
                      End Select
                  
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n
                      WD3$ = Ds$(Mii)
                      Call Ddata(",", WD3$, Ds11$(), Di(), Data_n2)
                      Select Case Data_n2
                          Case 1: X0 = X000: Y0 = Y000: Wd$ = Ds11$(1)
                          Case 3: X0 = X000 + 倍率X * Di(1): Y0 = Y000 + 倍率Y * Di(2): Wd$ = Ds11$(3)
                          Case Else:  er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If 世誤CK > 99 Then Stop
                          End Select
                      Call Dsym(X0, Y0, 文字位置, 0, Wd$)
     
                      Next Mii
                  End If
             
             Case "字_": '  [字_:角度,α,Moj$]    α  下線の倍率  Under Line
                  Select Case Data_n
                     Case 1:  角度 = 0: α = 1: Moj$ = Ds(1)
                     Case 3:  角度 = Di(1): α = Di(2): Moj$ = Ds(3)
                     Case 4:  角度 = Di(1): α = Di(2): Moj$ = Ds(3) + "," + Ds(4)
                     Case Else: er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If 世誤CK > 99 Then Stop
                     
                     End Select
                     X0 = X000: Y0 = Y000
                     Call Dsym_Ander_Line(X0, Y0, α, 角度, Moj$)
                     
             
             
             Case "字□": b = Di(1): D = Di(2): 角度 = Di(3): Moj$ = Ds(4)
                     ni = InStr(WD2$, Moj$)
                     Moj$ = Mid(WD2$, ni)
                     位置$ = "CC": ' X0 = P_PloterX: Y0 = P_PloterY ok
                     X0 = X000: Y0 = Y000
                     Call Dsym□(X0, Y0, b, D, 位置$, 角度, Moj$)
             
             Case "字○": ' exp  [字○:6,X1]   [字○:8,90.X1]
                     'ni = InStr(WD2$, Moj$)
                     'Moj$ = Mid(WD2$, ni)
                  Select Case Data_n
                     Case 1: D = 8: 角度 = 0: Moj$ = Ds(1)
                     Case 2: D = Di(1): 角度 = 0: Moj$ = Ds(2)
                     Case 3: D = Di(1): 角度 = Di(2): Moj$ = Ds(3)
                     Case Else: er ("[" + Wmark$ + "] " + WDATA$): Wd$ = "": If 世誤CK > 99 Then Stop
                     End Select
                     
                     X0 = X000: Y0 = Y000
                     Call Dsym○(X0, Y0, D, 角度, Moj$)
             
             
             Case "段", "段□"
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  X000 = P_PloterX: Y000 = P_PloterY
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                    
                  Lxpit$ = "": Lypit$ = "": Lxypit$ = "": XL = 0: YL = 0: Xpit = 0: Ypit = 0
                  Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                  Select Case Data_n
                     Case 1: 文字位置 = Ds$(1): Lxypit$ = "Y"
                     Case 3: 文字位置 = Ds$(1): XL = 倍率X * Di(2): YL = 倍率Y * Di(3)
                     Case 5: 文字位置 = Ds$(1): XL = 倍率X * Di(2): YL = 倍率Y * Di(3)
                             Xpit = 倍率X * Di(4): Ypit = 倍率Y * Di(5)
                             If Ds$(4) = "P" Then Lxpit$ = "Y"
                             If Ds$(5) = "P" Then Lypit$ = "Y"
                     Case Else: 文字位置 = "": er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                     End Select
                  X11 = X0 + XL: Y11 = Y0 + YL
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n: 文字角度 = 0
                      WD3$ = Ds$(Mii)
                      ni = InStr(WD3$, ":"): If Lxpit$ = "Y" Then If ni > 1 Then X11 = X11 + 倍率X * Val(WD3$): WD3$ = Mid$(WD3$, ni + 1)
                      ni = InStr(WD3$, ":"): If Lypit$ = "Y" Then If ni > 1 Then Y11 = Y11 + 倍率Y * Val(WD3$): WD3$ = Mid$(WD3$, ni + 1)
                      
                      ni = InStr(WD3$, ":")
                      If Lxypit$ = "Y" And ni > 1 Then
                          WD4$ = Mid$(WD3$, 1, ni - 1): WD3$ = Mid$(WD3$, ni + 1)
                          Call Ddata(",", WD4$, Ds11$(), Di(), Data_n2)
                          Select Case Data_n2
                          Case 1: X001 = 倍率X * Di(1): Y001 = 0
                          Case 2: X001 = 倍率X * Di(1): Y001 = 倍率Y * Di(2)
                          Case 3: X001 = 倍率X * Di(1): Y001 = 倍率Y * Di(2): 文字角度 = Di(3)
                          Case Else: er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                          End Select
                          End If
                      
                      
                      If Wmark$ = "段□" Then
                          X1 = X11 + X001: Y1 = Y11 + Y001
                          Call Dsym□(X1, Y1, 0, 0, 文字位置, 文字角度, WD3$)
                          Else
                          Call Dsym(X11 + X001, Y11 + Y001, 文字位置, 文字角度, WD3$)
                          End If
                      
                      
                      X001 = 0: Y001 = 0
                      X11 = X11 + Xpit: Y11 = Y11 + Ypit
                      Next Mii
                  
                  P_PloterX = X000: P_PloterY = Y000
             
             
            '┌────────────────────────────────────┐
            '│   寸法                                                                 │
            '└────────────────────────────────────┘
             
             Case "寸端部":         P_寸法_端部 = WD2$:          '  寸法_端部のﾏｰｸの指定  .  矢   上矢   下矢
             Case "寸小数点桁数":   P_寸法_値_小数点桁数 = Di(1)
             Case "寸矢印size":     P_寸法_端部_矢_size = Di(1): '  寸法_端部のﾏｰｸの 矢長さ mm
             Case "寸矢印角度":     P_寸法_端部_矢_角度 = Di(1):   '  寸法_端部のﾏｰｸの 角度(度)
             
             
             Case "寸Arc1": '(r, r1, r2, S引出線, E引出線, 点$, 寸法値$)
                           Arc_r = Di(1): r1 = Di(2): r2 = Di(3):  寸法線1 = Di(4) * 変換M: 寸法線2 = Di(5) * 変換M: 点$ = Ds(6): 寸法値$ = Ds$(7)
                           Call 設定_記憶_Out
                           P_Layer_0 = P_Layer_寸法: P_Layer_Arc = P_Layer_寸法
                           P_Layer_文字 = P_Layer_寸法: P_Layer_線 = P_Layer_寸法: P_Layer_点 = P_Layer_寸法
                           
                           P_色_0 = P_色_寸法: P_線種_0 = P_線種_寸法: P_文字_size_0 = P_寸法_Msize
                           P_色_線 = P_色_寸法: P_色_Arc = P_色_寸法: P_色_点 = P_色_寸法
                           
                           If 寸法値$ = "***" Then 寸法値$ = ""
                           If 寸法値$ <> "" Then 点$ = 点$ + "," + 寸法値$
                           Call Darc(点$, X0, Y0, Arc_r, r1, r2)
                                  If 寸法線1 <> 0 Then
                                         Arc_r寸1 = Arc_r - 寸法線1
                                         X1 = X0 + Arc_r寸1 * Dcos(r1): Y1 = Y0 + Arc_r寸1 * Dsin(r1)
                                         X2 = X1 + 寸法線1 * Dcos(r1): Y2 = Y1 + 寸法線1 * Dsin(r1)
                                         Call DLine(X1, Y1, X2, Y2)
                                         End If
                                         
                                  If 寸法線2 <> 0 Then
                                         Arc_r寸2 = Arc_r - 寸法線2
                                         X1 = X0 + Arc_r寸2 * Dcos(r2): Y1 = Y0 + Arc_r寸2 * Dsin(r2)
                                         X2 = X1 + 寸法線2 * Dcos(r2): Y2 = Y1 + 寸法線2 * Dsin(r2)
                                         Call DLine(X1, Y1, X2, Y2)
                                         End If
                           
                           Call 設定_記憶_In
                  
                           P_PloterX = X000: P_PloterY = Y000
             
             
             
             Case "寸": Wd1$ = "": LLL = 0: RD = 0: ' LLL 最初の寸法引き出し線長さ
                           ' [寸:(Dx,Dy,)引出線:(Dx,Dy,),XL,YL,引出線,文字(,文字位置)|___|____]       寸法を描く pointは元に戻す  文字="***" は寸法の文字を描かない
                            '  exp   [寸:6:500,0,5,,L5|300,0,5,,RL=6]          LR=6     LC=6   L=6   LCR=6        RL=6    RC=6   R=6   RCL=6
                           Call 設定_記憶_Out
                           P_Layer_0 = P_Layer_寸法
                           P_Layer_文字 = P_Layer_寸法: P_Layer_線 = P_Layer_寸法: P_Layer_点 = P_Layer_寸法
                           
                           P_色_0 = P_色_寸法: P_線種_0 = P_線種_寸法:
                           P_文字_size_0 = P_寸法_Msize
                           P_色_線 = P_色_寸法: P_色_点 = P_色_寸法
                  
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                           Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                           Select Case Data_n
                           Case 1: LLL = Di(1) * 変換M
                           Case 2: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2): LLL = 0
                           Case 3: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2): LLL = Di(3) * 変換M
                           Case 4: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2): LLL = Di(3) * 変換M: RD = Di(4)
                           Case Else: 文字位置 = "": er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                           End Select
                           End If
                  
                  
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n
                          WD3$ = Ds$(Mii):            Call Ddata(",", WD3$, Ds11$(), Di(), Data_n2)
                          文字$ = Ds11$(4)
                          X1 = P_PloterX: Y1 = P_PloterY:   X2 = X1 + Di(1): Y2 = Y1 + Di(2): Di(3) = Di(3) * 変換M
                          寸法文字位置$ = UCase(Ds11$(5))
                         
                         ' XX1(Mii + 1) = X2: YY1(Mii + 1) = Y2
                          角0 = Calu角度(X1, Y1, X2, Y2): 角度 = 角0: If 角度 >= 180 Then 角度 = 角度 - 180
                      If Mii = 1 Then 角度0 = 角度
                      
                      '　Start補助線
                      If LLL <> 0 Then
                          角L = 角0 + 90: If 角L >= 360 Then 角L = 角L - 360
                          If 角L > 180 Then LLL = -LLL
                          If 角L = 0 Then LLL = -LLL
                          X3 = X1 + LLL * Dcos(角L): Y3 = Y1 + LLL * Dsin(角L)
                          Call DLine(X1, Y1, X3, Y3):  LLL = 0
                          End If
                      
                      '　End 補助線
                      If Di(3) <> 0 Then
                          角R = 角0 + 90: If 角R >= 360 Then 角R = 角R - 360
                          If 角R > 180 Then Di(3) = -Di(3)
                          If 角R = 0 Then Di(3) = -Di(3)
                          X3 = X2 + Di(3) * Dcos(角R): Y3 = Y2 + Di(3) * Dsin(角R)
                          Call DLine(X2, Y2, X3, Y3)
                          End If
                      
                      'If 角度0 = 角度 Then Call DPoint(X1, Y1)
                      角度0 = 角度
                      Select Case 文字$
                          Case "***": 文字$ = ""
                          Case "":  LL = F_点AB間_距離(X1, Y1, 0, X2, Y2, 0): 文字$ = F9(LL)
                          Case Else:
                          End Select
                      
                      矢r = P_寸法_端部_矢_size:
                      引出線L = 6
                      ni = InStr(寸法文字位置$, "="): If ni > 1 Then 引出線L = Val(Mid(寸法文字位置$, ni + 1)): 寸法文字位置$ = Mid(寸法文字位置$, 1, ni - 1)
                      '引出線L = Val(Mid(寸法文字位置$, 3)): If 引出線L = 0 Then 引出線L = 6
                      
                      引出線L = 引出線L * 変換M
                      
                      Select Case Mid(寸法文字位置$, 1, 1)
                           Case "L": Call Dsym(X1, Y1, "R", 角度, 文字$): 引出線LL = 引出線L: 引出線RL = 0.5 * 引出線L
                           Case "R": Call Dsym(X2, Y2, "L", 角度, 文字$): 引出線LL = 0.5 * 引出線L: 引出線RL = 引出線L
                           Case Else:
                                       ni = InStr(文字$, "="):
                                       Select Case ni
                                       Case 0: If 文字$ <> "0" Then Call DLine文字(1, X1, Y1, X2, Y2, "C", 文字$) '***
                                       Case Else:
                                       
                                                文字線長さ = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2) / 変換M
                                                文字数 = Len(文字$)
                                                文字長さ = 文字数 * P_寸法_Msize / 2
                                                If 文字長さ > 0.9 * 文字線長さ Then
                                                      文字1$ = Mid(文字$, 1, ni - 1): 文字2$ = Mid(文字$, ni)
                                                      Call DLine文字(1, X1, Y1, X2, Y2, "C", 文字1$)
                                                      
                                                      HH = 1.1 * P_寸法_Msize * 変換M
                                                      X3 = X1 + HH * Dsin(角0): Y3 = Y1 - HH * Dcos(角0)
                                                      X4 = X2 + HH * Dsin(角0): Y4 = Y2 - HH * Dcos(角0)
                                                      Call DLine文字(0, X3, Y3, X4, Y4, "C", 文字2$)
                                                      Else
                                                      Call DLine文字(1, X1, Y1, X2, Y2, "C", 文字$)
                                                      End If
                                       End Select
                                       
                           End Select
                           X3 = X1 - 引出線LL * Dcos(角0): Y3 = Y1 - 引出線LL * Dsin(角0)
                           X4 = X2 + 引出線RL * Dcos(角0): Y4 = Y2 + 引出線RL * Dsin(角0)
                      
                      If 文字$ <> "0" Then
                      Select Case 寸法文字位置$
                          Case "LR", "RL", "LCR", "RCL":
                                         Select Case P_寸法_端部
                                         Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                                        Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                                        Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                                        Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case Else:   Call DPoint(X1, Y1):    ' Call DLine(X1, Y1, X2, Y2)
                                         End Select
                                         If Mid(寸法文字位置$, 2, 1) = "C" Then Call DLine(X1, Y1, X2, Y2)
                          
                          Case "L", "LC": '   Call Dsym(X1, Y1, "R", 角度, 文字$): ' X3 = X1 - 引出線L * Dcos(角0): Y3 = Y1 - 引出線L * Dsin(角0)
                                         Select Case P_寸法_端部
                                         Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                         Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                         Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X3, Y3, 0): Call DLine(X3, Y3, X1, Y1)
                                         Case Else:   Call DPoint(X1, Y1):  '   Call DLine(X1, Y1, X2, Y2)
                                         End Select
                                         If Mid(寸法文字位置$, 2, 1) = "C" Then Call DLine(X1, Y1, X2, Y2)
                          
                          Case "R", "RC": ' Stop:  Call Dsym(X2, Y2, "L", 角度, 文字$): '  X4 = X2 + 引出線L * Dcos(角0): Y4 = Y2 + 引出線L * Dsin(角0)
                                         Select Case P_寸法_端部
                                         Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X4, Y4, 0): Call DLine(X2, Y2, X4, Y4)
                                         Case Else:   Call DPoint(X2, Y2):  '  Call DLine(X1, Y1, X2, Y2)
                                         End Select
                                         If Mid(寸法文字位置$, 2, 1) = "C" Then Call DLine(X1, Y1, X2, Y2)
                          
                          Case "":   '  Call DLine文字(1, X1, Y1, X2, Y2, "C", 文字$)
                                         Select Case P_寸法_端部
                                         Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0): Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                                         Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0): Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                                         Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0): Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                                         Case Else:   Call DPoint(X1, Y1): Call DPoint(X2, Y2)
                                         End Select
                          
                          Case Else:   er (" 寸法Data   [" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                          
                          
                          End Select
                          End If
                          
                      P_PloterX = X2: P_PloterY = Y2
                      Next Mii
                   
                           Call 設定_記憶_In
                   
                 '  P_PloterX = X000: P_PloterY = Y000
             
            '┌────────────────────────────────────┐
            '│   記号                                                                 │
            '└────────────────────────────────────┘
             Case "<", "<R": '[<:角度,Data(,描きだし位置)]"      描き出し位置="*"  2番目から描き出す   Point は戻す
                                                          ' 描き出し位置="-"  1番目から  n-1 を描き出す
                         ''[<:角度,6x200+4x150+40x150+12x300]     [<:角度,6x200+4x150+40x150+12x300,*]
                         '  矢印は原点に向かって描く
                         '      <R  逆方向に位置が移動  移動方向 = -1
  
                           移動方向 = 1
                           If Wmark$ = "<R" Then 移動方向 = -1
                           描き出し位置 = 1
                          Select Case Data_n
                          Case 0: 角度 = 0: Wd1$ = "": ' ni = 1
                          Case 1: 角度 = Di(1): Wd1$ = "": ' ni = 1
                          Case 2: 角度 = Di(1): Wd1$ = Ds$(2):
                          Case 3: 角度 = Di(1): Wd1$ = Ds$(2): 描き出し位置 = 2: ' ni = 1
                                                    If Ds$(3) = "-" Then 描き出し位置 = -1
                          Case Else: Wd1$ = "": er ("System Uxf 基本設定 " + Wda$ + " は使用できません"): If 世誤CK > 99 Then Stop
                          End Select
                      X0 = X000: Y0 = Y000
                      Call P_D_Mark(X0, Y0, 角度, Wd1$, 描き出し位置, 移動方向)
                      P_PloterX = X000: P_PloterY = Y000
             
             
             
             Case "皿": '[皿:XL,YL,DL,角度(,LR$)]"      LR$="L"  左のみ      LR$="R"　右のみ
                          LR$ = ""
                          Select Case Data_n
                          Case 1: XL = Di(1): YL = 0: DL = 2.5: 角度 = 45
                          Case 2: XL = Di(1): YL = Di(2): DL = 2.5: 角度 = 45
                          Case 3: XL = Di(1): YL = Di(2): DL = Di(3): 角度 = 45
                          Case 4: XL = Di(1): YL = Di(2): DL = Di(3): 角度 = Di(4)
                          Case 5: XL = Di(1): YL = Di(2): DL = Di(3): 角度 = Di(4): LR$ = Ds(5)
                          Case Else: Wd1$ = "": er ("System Uxf 基本設定 " + Wda$ + " は使用できません"): If 世誤CK > 99 Then Stop
                          End Select
                          X0 = X000: Y0 = Y000
                          DL = DL * 変換M: 線角度 = Calu角度(0, 0, XL, YL): LL = Sqr(XL ^ 2 + YL ^ 2)
                          DXL = DL * Dcos(角度): DYL = DL * Dsin(角度)
                          X1 = X0 + DYL * Dsin(線角度): Y1 = Y0 + DYL * Dcos(線角度)
                          X2 = X0 + DXL * Dcos(線角度): Y2 = Y0 + DXL * Dsin(線角度)
                          X3 = X0 + (LL - DXL) * Dcos(線角度): Y3 = Y0 + (LL - DXL) * Dsin(線角度)
                          X4 = X0 + XL + DYL * Dsin(線角度): Y4 = Y0 + YL + DYL * Dcos(線角度)
                          Select Case LR$
                          Case "L": X4 = X0 + XL: Y4 = Y0 + YL
                          Case "R": X1 = X0: Y1 = Y0
                          Case Else:
                          End Select
                          
                          Call DLine(X1, Y1, X2, Y2)
                          Call DLine(X2, Y2, X3, Y3)
                          Call DLine(X3, Y3, X4, Y4)
                                            
                          P_PloterX = X000: P_PloterY = Y000
             
             Case "皿2": '[皿2:XL,YL,DL,角度(,LR$)]"      LR$="L"  左のみ      LR$="R"　右のみ   外側に開く
                          LR$ = ""
                          Select Case Data_n
                          Case 1: XL = Di(1): YL = 0: DL = 2.5: 角度 = 45
                          Case 2: XL = Di(1): YL = Di(2): DL = 2.5: 角度 = 45
                          Case 3: XL = Di(1): YL = Di(2): DL = Di(3): 角度 = 45
                          Case 4: XL = Di(1): YL = Di(2): DL = Di(3): 角度 = Di(4)
                          Case 5: XL = Di(1): YL = Di(2): DL = Di(3): 角度 = Di(4): LR$ = Ds(5)
                          Case Else: Wd1$ = "": er ("System Uxf 基本設定 " + Wda$ + " は使用できません"): If 世誤CK > 99 Then Stop
                          End Select
                          X0 = X000: Y0 = Y000
                          DL = DL * 変換M: 線角度 = Calu角度(0, 0, XL, YL): LL = Sqr(XL ^ 2 + YL ^ 2)
                          X1 = X0 + DL * Dcos(線角度 + 180 - 角度): Y1 = Y0 + DL * Dsin(線角度 + 180 - 角度)
                          X2 = X0: Y2 = Y0
                          X3 = X0 + LL * Dcos(線角度): Y3 = Y0 + LL * Dsin(線角度)
                          X4 = X3 + DL * Dcos(線角度 + 角度): Y4 = Y3 + DL * Dsin(線角度 + 角度)
                          Select Case LR$
                          Case "L": X4 = X0 + XL: Y4 = Y0 + YL
                          Case "R": X1 = X0: Y1 = Y0
                          Case Else:
                          End Select
                          
                          Call DLine(X1, Y1, X2, Y2)
                          Call DLine(X2, Y2, X3, Y3)
                          Call DLine(X3, Y3, X4, Y4)
                                            
                          P_PloterX = X000: P_PloterY = Y000
             
             
             '矢L
             Case "矢", "矢°": Wd1$ = "": 矢mark$ = P_矢_Mark$: '  円D = 10: 矢L = 2.5
                           矢L = P_矢_長さ
                                 ' [矢:記号,矢長さ,○直径:XL,YL,文字,位置$|___|____]       引出線で文字を描く  位置$ L C R
                                 ' exp  [矢:<,2,5:10,10,Test.C|20,0,,,7]
                                 ' [矢°:記号,矢長さ,○直径:XL,YL,文字,位置$|___|____]     矢°(度) °  引出線で文字を描く
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                               Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                          Select Case Data_n
                          Case 1: 矢mark$ = Ds$(1)
                          Case 2: 矢mark$ = Ds$(1): 矢L = Di(2)
                          Case 3: 矢mark$ = Ds$(1): 矢L = Di(2): 円D = Di(3)
                          Case Else: 文字位置 = "": er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                          End Select
                          End If
                  
                  Call Ddata("|", Wd$, Ds$(), Di(), Data_n)
                  For Mii = 1 To Data_n
                      WD3$ = Ds$(Mii): Call Ddata(",", WD3$, Ds11$(), Di(), Data_n2)
                      X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + Di(1) * 変換M: Y2 = Y1 + Di(2) * 変換M: 文字$ = Ds11$(3): 位置$ = Ds11$(4)
                      If Wmark$ = "矢°" Then DD = Di(1): LLL = Di(2)
                      
                      If Mii = 1 Then
                          Select Case Wmark$
                              Case "矢": Call D矢(矢mark$, 円D, 矢L, P_矢_角度, X1, Y1, X2, Y2, 1)
                                         If 位置$ = "" Then 位置$ = "R"
                                         Call DLine文字(0, X1, Y1, X2, Y2, 位置$, 文字$)
                              
                              'If InStr(Wd$, "帯鉄筋") > 0 Then Stop
                              Case "矢°": 角度 = Di(1): LLL = Di(2)
                                        'X2 = X1 + LLL * Dcos(角度): Y2 = Y1 + LLL * Dsin(角度)
                                        Call D矢角度(矢mark$, 円D, 矢L, P_矢_角度, X1, Y1, 角度, LLL, X2, Y2)
                              
                              End Select
                          Else
                          Select Case Data_n2
                          Case 2:  Call DLine(X1, Y1, X2, Y2)
                          Case 3: 位置$ = "L": 文字$ = Ds11$(3): Call DLine文字(1, X1, Y1, X2, Y2, 位置$, 文字$)
                          Case 4: 位置$ = Ds11$(4): 文字$ = Ds11$(3): Call DLine文字(1, X1, Y1, X2, Y2, 位置$, 文字$)
                          Case 5: 円D = Di(4): 文字$ = Ds11$(5): Call DLine○(X1, Y1, X2, Y2, 円D, 文字$)
                          Case Else:
                          End Select
                          End If
                      P_PloterX = X2: P_PloterY = Y2
             
                      Next Mii
             
                  ' P_PloterX = X000: P_PloterY = Y000
             
             Case "ｽﾘｯﾄ":  ' [ｽﾘｯﾄ:XL,YL,角度,ﾋﾟｯﾁ]      ｽﾘｯﾄを描く  Pointを元の位置に戻す  H10.3.29
                  Select Case Data_n
                  Case 4: 指示$ = "Y":  幅 = Di(1) * 変換M: 高さ = Di(2) * 変換M: 回転角 = Di(3): Pit = Di(4)
                  Case 6: 指示$ = "Y": X0 = X0 + Di(1): Y0 = Y0 + Di(2): 幅 = Di(3) * 変換M: 高さ = Di(4) * 変換M: 回転角 = Di(5): Pit = Di(6)
                  Case Else: 文字位置 = "": er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                  End Select
                   
                  If 指示$ = "Y" Then Call Dスリット(X0, Y0, 幅, 高さ, 回転角, Pit, e$)
             
                  P_PloterX = X000: P_PloterY = Y000
             
             Case "ﾌｯｸ": Wd1$ = "": ' [ﾌｯｸ:(Dx,Dy):XL,YL,角度°,D,L]       ﾌｯｸを描く  D直径   Lﾌｯｸ長さ Pointを元の位置に戻す
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                         Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                         Select Case Data_n
                         Case 2: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
                         Case Else: er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                         End Select
                         End If
                  Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                  X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                   
                  角度 = Di(3): DD = Di(4): LL = Di(5)
                  Call Dフック(X1, Y1, X2, Y2, 角度, DD, LL)
                   
                  P_PloterX = X000: P_PloterY = Y000
             
             Case "ﾌｯｸV": Wd1$ = "": ' [ﾌｯｸV:(Dx,Dy):XL,YL,角度°,D,L]     V  ﾌｯｸを描く  D直径(ﾌｯｸ出)   Lﾌｯｸ長さ Pointを元の位置に戻す
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd$ = Mid$(Wd$, ni + 1)
                  ni = InStr(Wd$, ":"): If ni > 1 Then Wd1$ = Mid$(Wd$, 1, ni - 1): Wd$ = Mid$(Wd$, ni + 1)
                  
                  If Wd1$ <> "" Then
                         Call Ddata(",", Wd1$, Ds$(), Di(), Data_n)
                         Select Case Data_n
                         Case 2: P_PloterX = P_PloterX + Di(1): P_PloterY = P_PloterY + Di(2)
                         Case Else:  er ("[" + Wmark$ + "] " + WDATA$): If 世誤CK > 99 Then Stop
                         End Select
                         End If
                  Call Ddata(",", Wd$, Ds$(), Di(), Data_n)
                  'XL = Di(1): YL = Di(2):
                  X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + Di(1): Y2 = Y1 + Di(2)
                   角度1 = Di(3): DD = Di(4) / 2: LL = Di(5) + DD
                   '角度1 = 角度1 / 3
                   If Dcos(角度1) <> 0 Then LL = LL / Dcos(角度1)
                   角度 = Calu角度(X1, Y1, X2, Y2)
                   角度1 = 角度 + 180 - 角度1
                   X2 = X2 + DD * Dcos(角度): Y2 = Y2 + DD * Dsin(角度)
                   X3 = X2 + LL * Dcos(角度1): Y3 = Y2 + LL * Dsin(角度1)
                 ' Call Dフック(X1, Y1, X2, Y2, 角度, DD, LL)
                   Call DLine(X1, Y1, X2, Y2): Call DLine(X2, Y2, X3, Y3)
                  
                  P_PloterX = X000: P_PloterY = Y000
             
             
             Case "×", "／"
                   Select Case Data_n
                   Case 1: BB = Di(1): DD = Di(1): DX = 0: DY = 0:
                   Case 2: BB = Di(1): DD = Di(2): DX = 0: DY = 0:
                   Case 3: DX = Di(1): DY = Di(2): BB = Di(3): DD = Di(3)
                   Case 4: DX = Di(1): DY = Di(2): BB = Di(3): DD = Di(4)
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: If 世誤CK > 99 Then Stop
                   End Select
                   
                   X1 = P_PloterX + DX - BB / 2: Y1 = P_PloterY + DY - DD / 2: X2 = X1 + BB: Y2 = Y1 + DD
                   X3 = P_PloterX + DX - BB / 2: Y3 = P_PloterY + DY + DD / 2: X4 = X3 + BB: Y4 = Y3 - DD
                   
                   
                   
                   Call DLine(X1, Y1, X2, Y2)
                   If Wmark$ = "×" Then Call DLine(X3, Y3, X4, Y4)
             
             
             Case "橋脚鉄筋": ' 橋脚鉄筋Mark
                  鉄筋径$ = Ds$(1)
                  X0 = X000: Y0 = Y000
                  Call D_鉄筋_橋脚(X0, Y0, 鉄筋径$)
             
             
             Case "切断M1":     ' [切断M1:X1,Y1,X2,Y2,W,H]   線 (X1,Y1) - (X2,Y2) に切断Mark1を付ける W 幅mm  H 高さmm
                                ' [切断M1:XL,YL,W,H]
                                 '  1-3-5-6-4-2
                   Select Case Data_n
                   Case 4: X1 = X000: Y1 = Y000: X2 = X1 + Di(1): Y2 = Y1 + Di(2): W1 = Di(3) * 変換M: h1 = Di(4) * 変換M
                   Case 6: X1 = Di(1): Y1 = Di(2): X2 = Di(3): Y2 = Di(4): W1 = Di(5) * 変換M: h1 = Di(6) * 変換M
                   Case Else: er ("[" + Wmark$ + "] " + WDATA$): X1 = 0: Y1 = 0: X2 = 0: Y2 = 0: W1 = 0: h1 = 0: If 世誤CK > 99 Then Stop
                   End Select
                   Call C_三角関数1(X1, Y1, X2, Y2, SN1, CS1, TAN1, RTAN1, LL)
                          L1 = 0.5 * LL - W1 / 2: L2 = 0.5 * LL + W1 / 2
                          X3 = X1 + L1 * CS1: Y3 = Y1 + L1 * SN1:   X4 = X1 + L2 * CS1: Y4 = Y1 + L2 * SN1
                          X5 = X3 - h1 * SN1: Y5 = Y3 + h1 * CS1:   X6 = X4 + h1 * SN1: Y6 = Y4 - h1 * CS1
                          Call DLine(X1, Y1, X3, Y3)
                          Call DLine(X3, Y3, X5, Y5)
                          Call DLine(X5, Y5, X6, Y6)
                          Call DLine(X6, Y6, X4, Y4)
                          Call DLine(X4, Y4, X2, Y2)
             
                          P_PloterX = X2: P_PloterY = Y2
             
             Case "切断～1":     ' [切断～1:X1,Y1,X2,Y2,H]   線 (X1,Y1) - (X2,Y2) に切断Mark～1を付ける  H 高さmm
                      X1 = Di(1): Y1 = Di(2): X2 = Di(3): Y2 = Di(4): H = Di(5)
                      Call D切断_Arc1(X1, Y1, X2, Y2, H)
            
            
            '┌────────────────────────────────────┐
            '│   断面位置指定                                                         │
            '└────────────────────────────────────┘
            
            
    '
    '       5                6
    '       │               │
    '      1└─ 3        4─┘2
    '
    '
        '        断面位置指定_XL = 7: 'mm
        '        断面位置指定_YL = 6: 'mm
        '        断面位置指定_矢L = 2.5: 'mm
        '        断面位置指定_矢角 = 15: '度
        '        断面位置指定_Msize = 5: '
    
            
            
            '┌────────────────────────────────────┐
            '│   断面                                                                 │
            '└────────────────────────────────────┘
             Case "断面": D断面$ = Ds$(1): 角度 = Di(2): DHat$ = Ds$(3): 幅倍率 = Di(4): 成倍率 = Di(5)
                        ' Data, 角度,  ﾊｯﾁ(Y,N)  幅倍率(幅の倍率),  成倍率(成の倍率)
                          D断面type$ = ""
                          If Mid$(D断面$, 1, 2) = "RC" Then D断面type$ = "RC": Data2$ = Mid(D断面$, 4)
                          Select Case D断面type$
                          Case "RC":   b = Val(Data2$): D = FD(Data2$)
                                     角度 = 0
                                     Call D_Box(X0, Y0, 角度, b, D, Layer$, Zline$, Zcolor$)
                          Case Else:
                  
                              Call ROB_S_分解(D断面$, D断面type$, H, b, tw, tf, r1, r2, er1$)
                              If er1$ <> "" Then D断面type$ = D断面$ + er1$
                              H = 成倍率 * 10 * H: b = 幅倍率 * 10 * b: tw = 幅倍率 * 10 * tw: tf = 成倍率 * 10 * tf: r1 = 10 * r1: r2 = 10 * r2
                               Select Case D断面type$
                               Case "H": Call D_ste_H(X0, Y0, 角度, b, H, tf, tw, r1, Layer$, Zline$, Zcolor$)
                               Case "BH": Call D_ste_BH(X0, Y0, 角度, b, b, H, tf, tf, tw, JCU, JCD, HR, Layer$, Zline$, Zcolor$)
                               Case "□": Call D_ste_box(X0, Y0, 角度, b, H, tw, r1, Layer$, Zline$, Zcolor$)
                               Case Else: er (D断面type$): Stop
                               End Select
                          End Select
                          P_PloterX = X000: P_PloterY = Y000
                          
             Case Else:
                     er (" [" + Wd$ + "]  は使用できない 無視します"): If 世誤CK > 99 Then Stop

             End Select
            ' End If
       Case Else:
               'MdxL = 0: MdyL = 0: MR = 0: Mtype = P_文字_size_0
               N0 = Len(Wd$): Wd$ = LTrim$(Wd$): n1 = Len(Wd$)
               P_PloterX = P_PloterX + 倍率 * (N0 - n1) * P_文字_size_0 * 0.5: X0 = P_PloterX
               Call Dsym(X0, Y0, "L", 0, Wd$)
               P_PloterX = P_PloterX + (Len(Wd$) + N漢字(Wd$)) * P_文字_size_0 * 倍率Y * 0.55
               datalp$ = "Y"
       
       
       End Select
    Loop While N00 <> 0
    
       If datalp$ <> "" Then P_PloterY = P_PloterY - P_改行pit


    
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   設定_記憶                                                                                                                      │
'└─────────────────────────────────────────────────────────────────┘
Private Sub 設定_記憶_Out()
          P_Layer_0_Bak = P_Layer_0
          P_Layer_線_Bak = P_Layer_線
          P_Layer_点_Bak = P_Layer_点
          P_Layer_円_Bak = P_Layer_円
          P_Layer_Arc_Bak = P_Layer_Arc
          P_Layer_文字_Bak = P_Layer_文字
          P_Layer_寸法_Bak = P_Layer_寸法
          P_Layer_ハッチ_Bak = P_Layer_ハッチ
    
          P_線種_0_Bak = P_線種_0
          P_線種_寸法_Bak = P_線種_寸法
          P_線種_ハッチ_Bak = P_線種_ハッチ
          P_線種_線_Bak = P_線種_線
          P_線種_円_Bak = P_線種_円
          P_線種_Arc_Bak = P_線種_Arc
          
          
          P_色_0_Bak = P_色_0
          P_色_線_Bak = P_色_線
          P_色_点_Bak = P_色_点
          P_色_円_Bak = P_色_円
          P_色_Arc_Bak = P_色_Arc
          P_色_文字_Bak = P_色_文字
          P_色_寸法_Bak = P_色_寸法
          P_色_ハッチ_Bak = P_色_ハッチ
          
          P_文字_size_0_Bak = P_文字_size_0
          P_超Big_Font_Bak = P_超Big_Font
          P_Big_Font_Bak = P_Big_Font
          P_Middle_Font_Bak = P_Middle_Font
          P_Small_Font_Bak = P_Small_Font
          P_超Small_Font_Bak = P_超Small_Font
          P_寸法_Msize_Bak = P_寸法_Msize
    
    End Sub
Private Sub 設定_記憶_In()
          P_Layer_0 = P_Layer_0_Bak
          P_Layer_線 = P_Layer_線_Bak
          P_Layer_点 = P_Layer_点_Bak
          P_Layer_円 = P_Layer_円_Bak
          P_Layer_Arc = P_Layer_Arc_Bak
          P_Layer_文字 = P_Layer_文字_Bak
          P_Layer_寸法 = P_Layer_寸法_Bak
          P_Layer_ハッチ = P_Layer_ハッチ_Bak
    
          P_線種_0 = P_線種_0_Bak
          P_線種_寸法 = P_線種_寸法_Bak
          P_線種_ハッチ = P_線種_ハッチ_Bak
          P_線種_線 = P_線種_線_Bak
          P_線種_円 = P_線種_円_Bak
          P_線種_Arc = P_線種_Arc_Bak
          
          P_色_0 = P_色_0_Bak
          P_色_線 = P_色_線_Bak
          P_色_点 = P_色_点_Bak
          P_色_円 = P_色_円_Bak
          P_色_Arc = P_色_Arc_Bak
          P_色_文字 = P_色_文字_Bak
          P_色_寸法 = P_色_寸法_Bak
          P_色_ハッチ = P_色_ハッチ_Bak
          
          P_文字_size_0 = P_文字_size_0_Bak
          P_超Big_Font = P_超Big_Font_Bak
          P_Big_Font = P_Big_Font_Bak
          P_Middle_Font = P_Middle_Font_Bak
          P_Small_Font = P_Small_Font_Bak
          P_超Small_Font = P_超Small_Font_Bak
          P_寸法_Msize = P_寸法_Msize_Bak
    
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   DLayer_CK                                                                                                                      │
'└─────────────────────────────────────────────────────────────────┘
Private Function DLayer_CK(Layer$)
    D1$ = ""
    For ii = 1 To LAYER_N
        If Zlayer$(ii) = Layer$ Then D1$ = Zlayer$(ii)
        Next ii
    If D1$ = "" Then er (EMS0$ + "  [" + Wd$ + "]  ﾚｲﾔｰ名が登録されていない"): D1$ = Zlayer$(ii): If 世誤CK > 99 Then Stop
    DLayer_CK = D1$
    End Function

'┌─────────────────────────────────────────────────────────────────┐
'│   D文字size_CK                                                                                                                   │
'└─────────────────────────────────────────────────────────────────┘
Private Function D文字size_CK(文字size)
    ddd = 文字size
    If ddd < 0.1 Then ddd = 0.1
    D文字size_CK = ddd
    End Function
'┌─────────────────────────────────────────────────────────────────┐
'│   D色                                                                                                                            │
'└─────────────────────────────────────────────────────────────────┘
Private Function D色$(色$)
      ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
      Select Case 色$
           Case "空": D1$ = "4"
           Case "白": D1$ = "7"
           Case "黄": D1$ = "2"
           Case "緑": D1$ = "3"
           Case "紫": D1$ = "6"
           Case "青": D1$ = "5"
           Case Else: D1$ = "7"
           End Select
      D色$ = D1$
 
      End Function
'┌─────────────────────────────────────────────────────────────────┐
'│   D線種$                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Private Function D線種$(線種$)
      Select Case UCase$(Mid$(線種$, 1, 3))
           Case "CON":                 D1$ = "CONTINUOUS"
           Case "CHA", "CEN", "CEN1":  D1$ = "CENTER1"
           Case "CEN2":                D1$ = "CENTER2"
           Case "DOT":                 D1$ = "DOT"
           Case "1DO", "DAS":          D1$ = "DASHED1"
           Case "2DO":                 D1$ = "DASHED2"
           Case "WHI":                 D1$ = "CONTINUOUS"
           Case "BRA":                 D1$ = "CONTINUOUS"
           Case Else:                  D1$ = "CONTINUOUS": er (EMS0$ + "線種  [" + Wd$ + "] は使用できない"): If 世誤CK > 99 Then Stop
           End Select
      D線種$ = D1$
      End Function

Sub D線種set(線種$)
      P_線種_0 = 線種$
      P_線種_線 = P_線種_0: P_線種_円 = P_線種_0: P_線種_Arc = P_線種_0

      End Sub


'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub DXY(X0, Y0)
    ' X0,Y0 の位置にｾｯﾄ
    P_PloterX = X0: P_PloterY = Y0
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub Daline(XL, YL, AA)
    ' AA=変換M と考える
    X1 = P_PloterX: Y1 = P_PloterY: X2 = X1 + XL * AA: Y2 = Y1 + YL * AA
    Call DLine(X1, Y1, X2, Y2)
    P_PloterX = X2: P_PloterY = Y2
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│  Line                                                                                                                            │
'└─────────────────────────────────────────────────────────────────┘
Sub DLine(X1, Y1, X2, Y2)
   '■ 最終 sub
    Select Case Sub倍率
    Case 1: X01 = X1: Y01 = Y1: X02 = X2: Y02 = Y2
    Case Else:  ' LL1 = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): 角度 = Calu角度(X1, Y1, X2, Y2)
                 X01 = Sub倍率 * X1: Y01 = Sub倍率 * Y1: X02 = Sub倍率 * X2: Y02 = Sub倍率 * Y2
    End Select
    Call Dxf_Line(X01, Y01, X02, Y02)
    P_PloterX = X2: P_PloterY = Y2
    End Sub
Sub DLine1(X(), Y(), ni, r)
    '  X(i),Y(i) の線を描く i=1 TO ni+1
    ' ni  線の本数
    ' r ｺｰﾅｰの半径
    If ni < 1 Then Exit Sub
    If ni = 1 Then r = 0
    If r < 0 Then r = 0
    X1 = X(1): Y1 = Y(1)
    For i = 1 To ni - 1
        X2 = X(i + 1): Y2 = Y(i + 1): X3 = X(i + 2): Y3 = Y(i + 2)
        If r > 0 Then
           Call calu接円中心1(X1, Y1, X2, Y2, X3, Y3, r, AX0, AY0, X4, Y4, X5, Y5, r1, r2)
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
    ' 現在の点から XL(i),YL(i) の折れ線を描く i=1 TO ni+1
    ' ni  線の本数
    ' r(i) ｺｰﾅｰの半径
    ReDim X(1000) As Single, Y(1000) As Single
    If ni < 1 Then Exit Sub
    
    X(1) = X000: Y(1) = Y000
    For ii = 1 To ni:  X(ii + 1) = X(ii) + XL(ii):  Y(ii + 1) = Y(ii) + YL(ii):  Next ii
    
    X1 = X(1): Y1 = Y(1)
    For ii = 1 To ni - 1
        X2 = X(ii + 1): Y2 = Y(ii + 1): X3 = X(ii + 2): Y3 = Y(ii + 2)
        If r(ii) > 0 Then
           Call calu接円中心1(X1, Y1, X2, Y2, X3, Y3, r(ii), AX0, AY0, X4, Y4, X5, Y5, r1, r2)
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
    '  [X1(),Y1()] から [X2(),Y2()] へ線を描く
    ' ni 線の本数
    ' r ｺｰﾅｰの半径
    If ni < 1 Then Exit Sub
    If ni = 1 Then r = 0
    If r < 0 Then r = 0
    Select Case r
        Case 0
               For i = 1 To ni: Call DLine(XX1(i), YY1(i), XX2(i), YY2(i)): Next i
        Case Else:    X1 = XX1(1): Y1 = YY1(1)
               For i = 1 To ni - 1
                   X2 = XX2(i): Y2 = YY2(i): X3 = XX2(i + 1): Y3 = YY2(i + 1)
                   Call calu接円中心1(X1, Y1, X2, Y2, X3, Y3, r, AX0, AY0, X4, Y4, X5, Y5, r1, r2)
                   Call Darc("", AX0, AY0, r, r1, r2)
                   Call DLine(X1, Y1, X4, Y4)
                   X1 = X5: Y1 = Y5
                   Next i
               Call DLine(X1, Y1, XX2(ni), YY2(ni))
        End Select
                      
    End Sub
'===================================================================================================================================
Sub DLine点(X1, Y1, X2, Y2, SE$)
    ' SE$="S"   (X1,Y1)に点を描く Start
    ' SE$="E"   (X2,Y2)に点を描く End
    ' SE$="SE"  (X1,Y1),(X2,Y2)に点を描く
'===================================================================================================================================
    Call DLine(X1, Y1, X2, Y2)
    Select Case SE$
         Case "S": Call DPoint(X1, Y1)
         Case "E": Call DPoint(X2, Y2)
         Case "SE", "*": Call DPoint(X1, Y1): Call DPoint(X2, Y2)
         End Select
    End Sub
'===================================================================================================================================
Sub DLineX範囲(X1, Y1, X2, Y2, 左端X位置, 右端X位置)
    '左端X位置<  X  <右端X位置 の範囲のみ線を描く
'===================================================================================================================================
    Xp1 = X1: Yp1 = Y1: Xp2 = X2: Yp2 = Y2
    If Xp1 > Xp2 Then Xp1 = X2: Yp1 = Y2: Xp2 = X1: Yp2 = Y1
    If 右端X位置 < Xp1 Then Exit Sub
    If Xp2 < 左端X位置 Then Exit Sub
    Select Case Xp2 - Xp1
    Case 0: Call DLine(Xp1, Yp1, Xp2, Yp2)
    Case Else: a = (Yp2 - Yp1) / (Xp2 - Xp1): b = Yp1 - a * Xp1
           If Xp1 < 左端X位置 Then Xp1 = 左端X位置: Yp1 = a * Xp1 + b
           If 右端X位置 < Xp2 Then Xp2 = 右端X位置: Yp2 = a * Xp2 + b
           Call DLine(Xp1, Yp1, Xp2, Yp2)
    End Select
    End Sub
'===================================================================================================================================
Sub DLine文字(j, X1, Y1, X2, Y2, 位置$, Moj$)
    ' J <>0  線を描く
    ' 線と文字を描く
'===================================================================================================================================
    Ppos$ = 位置$
    角度 = Calu角度(X1, Y1, X2, Y2): 'If 角度 >= 180 Then 角度 = 角度 - 180
         Select Case 角度
         Case Is <= 90:
         Case Is <= 270: 角度 = 角度正規化(角度 + 180)
         Case Else:
         End Select
    If j <> 0 Then Call DLine(X1, Y1, X2, Y2)
    Select Case 位置$
        Case "L": X3 = X1: Y3 = Y1: MdxL = 0.3: MdyL = 0.1
        Case "C": X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2: MdxL = 0: MdyL = 0.1
        Case "R": X3 = X2: Y3 = Y2: MdxL = 0: MdyL = 0.1
        Case "EX": X3 = X2: Y3 = Y2: MdxL = 0.3: MdyL = -P_文字_size_0 / 2: Ppos$ = "L":  ' ----文字
        Case Else: er ("[Sub DLine文字] 位置=" + 位置$): e = 1: If 世誤CK > 99 Then Stop
        End Select
    ' ** MdxL
    If e = 0 And Moj$ <> "" Then Call Dsym(X3, Y3, Ppos$, 角度, Moj$)
    End Sub
'===================================================================================================================================
Sub DLine○(X1, Y1, X2, Y2, D, Moj$)
    ' 線を描き 線の終端部に○を描き文字を入れる D=○の直径mm
'===================================================================================================================================
    Call calu角度1(X1, Y1, X2, Y2, 角度)
    LLL = Abs(Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)) + 倍率 * D / 2
    Call DLine(X1, Y1, X2, Y2)
    X3 = X1 + LLL * Dcos(角度): Y3 = Y1 + LLL * Dsin(角度)
    Call Dsym○(X3, Y3, D, 0, Moj$)
    End Sub
'===================================================================================================================================
Sub D_2重線1(X(), Y(), 左t(), 右t(), 線数, 印$)
    '  X(i),Y(i) により 2重線を描く i=1 TO 線数+1
    ' 線数  線の本数
    ' 左t  :  線左の間隔
    ' 右t  :  線右の間隔
    ' 印=[  :  最初を閉じる
    ' 印=]  :  最後を閉じる
    ' 印=[] :  最初と最後を閉じる
'===================================================================================================================================
    ReDim X1(1000), Y1(1000), X2(1000), Y2(1000), 右t2(1000)
    NE = 線数 + 1
                     
   For ii = 1 To 線数: 右t2(ii) = -右t(ii): Next ii
   
   '左ﾗｲﾝ
        Call CALU_複線座標(X(), Y(), 左t(), X1(), Y1(), 線数 + 1)
        Call DLine1(X1(), Y1(), 線数, 0)
   '右ﾗｲﾝ
        Call CALU_複線座標(X(), Y(), 右t2(), X2(), Y2(), 線数 + 1)
        Call DLine1(X2(), Y2(), 線数, 0)
    
    
   '... 端部
    LL_S = Sqr((X2(1) - X1(1)) ^ 2 + (Y2(1) - Y1(1)) ^ 2)
    LL_E = Sqr((X2(NE) - X1(NE)) ^ 2 + (Y2(NE) - Y1(NE)) ^ 2)
               
           Select Case Mid(印$, 1, 1)
           Case "[": Call DLine(X1(1), Y1(1), X2(1), Y2(1))
           Case "]": Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
           Case "(":    Call Darc_H("", X1(1), Y1(1), X2(1), Y2(1), LL_S / 2)
           Case "～":   H = 0.125 * LL_S:    Call D切断_Arc1(X1(1), Y1(1), X2(1), Y2(1), H)
           Case Else:
           End Select
    
           Select Case Mid(印$, 2, 1)
           Case "]": Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
           Case ")":    Call Darc_H("", X1(NE), Y1(NE), X2(NE), Y2(NE), LL_E / 2)
           Case "～": H = 0.125 * LL_E:   Call D切断_Arc1(X2(NE), Y2(NE), X1(NE), Y1(NE), H)
           Case Else:
           End Select
    End Sub
'===================================================================================================================================
Sub D_2重線2(始CUT$, 終CUT$, SX1, SY1, SX2, SY2, EX1, EY1, EX2, EY2, X(), Y(), 左t(), 右t(), 線数, 印$, e$)
    '  X(i),Y(i) により 2重線を描く i=1 TO 線数+1
    ' 始CUT$ (Y,N)   Y Start線を 点1(SX1,SY1),点2(SX2,SY2) でｶｯﾄ
    ' 終CUT$ (Y,N)   Y End  線を 点1(EX3,EY3),点2(EX4,EY4) でｶｯﾄ
    ' Start線を 点1(SX1,SY1),点2(SX2,SY2) でｶｯﾄ
    ' End  線を 点1(EX3,EY3),点2(EX4,EY4) でｶｯﾄ
    ' 線数  線の本数
    ' 左t  :  線左の間隔
    ' 右t  :  線右の間隔
    ' 印=[  :  最初を閉じる
    ' 印=]  :  最後を閉じる
    ' 印=[] :  最初と最後を閉じる
'===================================================================================================================================
    ReDim X1(1000), Y1(1000), X2(1000), Y2(1000), 右t2(1000)
    NE = 線数 + 1
   '中止予定
   For i = 1 To 線数: 右t2(i) = -右t(i): Next i
   
   '左ﾗｲﾝ
        Call CALU_複線座標(X(), Y(), 左t(), X1(), Y1(), 線数 + 1)
        If 始CUT$ = "Y" Then Call CALUP2(SX1, SY1, SX2, SY2, X1(1), Y1(1), X1(2), Y1(2), X0, Y0, JA, e$): X1(1) = X0: Y1(1) = Y0: e$ = e$ + e$
        If 終CUT$ = "Y" Then Call CALUP2(EX1, EY1, EX2, EY2, X1(線数), Y1(線数), X1(線数 + 1), Y1(線数 + 1), X0, Y0, JA, e$): X1(線数 + 1) = X0: Y1(線数 + 1) = Y0: e$ = e$ + e$
        Call DLine1(X1(), Y1(), 線数, 0)
   '右ﾗｲﾝ
        Call CALU_複線座標(X(), Y(), 右t2(), X2(), Y2(), 線数 + 1)
        If 始CUT$ = "Y" Then Call CALUP2(SX1, SY1, SX2, SY2, X2(1), Y2(1), X2(2), Y2(2), X0, Y0, JA, e$): X2(1) = X0: Y2(1) = Y0: e$ = e$ + e$
        If 終CUT$ = "Y" Then Call CALUP2(EX1, EY1, EX2, EY2, X2(線数), Y2(線数), X2(線数 + 1), Y2(線数 + 1), X0, Y0, JA, e$): X2(線数 + 1) = X0: Y2(線数 + 1) = Y0: e$ = e$ + e$
        Call DLine1(X2(), Y2(), 線数, 0)
    
    Select Case 印$
    Case "[": Call DLine(X1(1), Y1(1), X2(1), Y2(1))
    Case "]": Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
    Case "[]": Call DLine(X1(1), Y1(1), X2(1), Y2(1))
               Call DLine(X1(NE), Y1(NE), X2(NE), Y2(NE))
    Case Else:
    End Select
    End Sub
'===================================================================================================================================
Sub D_複線(X(), Y(), 間隔(), ni)
    '  X(i),Y(i) により 複線を描く i=1 TO ni+1
    ' ni  線の本数
    ' 間隔  :  線上の間隔 +上 -下
'===================================================================================================================================
    ReDim X1(1000), Y1(1000)
    NE = ni + 1
        Call CALU_複線座標(X(), Y(), 間隔(), X1(), Y1(), ni + 1)
        Call DLine1(X1(), Y1(), ni, 0)
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   Point                                                                                                                          │
'└─────────────────────────────────────────────────────────────────┘
Sub DPoint(X0, Y0)
   '■ 最終 sub
    Call Dxf_point(X0, Y0)
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   Circle                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Sub Dcircle(X0, Y0, r)
   '■ 最終 sub
    ' ○を描く r=○の半径
    Call Dxf_circle(X0 * Sub倍率, Y0 * Sub倍率, r * Sub倍率)
    End Sub
Sub D○(X0, Y0, D, Moj$)
    ' ○を描く D=○の直径
   ' r = 倍率 * D / 2
    r = 変換M * D / 2
    Call Dcircle(X0, Y0, r)
    
    If Moj$ <> "" Then Call Dsym(X0, Y0, "CC", 0, Moj$)
    
    End Sub
Sub D●(X0, Y0, D)
    ' ●を描く D=○の直径
    r = 変換M * D / 2
    Do: If r <= 0 Then Exit Do
        r1 = r: Call Dcircle(X0, Y0, r1): r = r - 0.15 * 変換M
        Loop
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│  Arc                                                                                                                             │
'└─────────────────────────────────────────────────────────────────┘
Sub Darc(Amark$, X0, Y0, r, r1, r2)
   '■ 最終 sub
    ' 中心(X0,Y0) r1,r2  の円弧  r1 から r2
    ' Amark 端部点の指示
    
    r11 = 角度正規化(r1)
    r22 = 角度正規化(r2)
    
    Call Dxf_arc(X0 * Sub倍率, Y0 * Sub倍率, r * Sub倍率, r11, r22)
    X1 = X0 + r * Dcos(r11): Y1 = Y0 + r * Dsin(r11)
    X2 = X0 + r * Dcos(r22): Y2 = Y0 + r * Dsin(r22)
    
    X11 = X0 + r * Dcos(r11 + 15): Y11 = Y0 + r * Dsin(r11 + 15)
    X22 = X0 + r * Dcos(r22 - 15): Y22 = Y0 + r * Dsin(r22 - 15)
    
    rcen = 角度正規化(r1 + (r2 - r1) / 2)
    If r1 > r2 Then rcen = 角度正規化(r1 + (r2 + 360 - r1) / 2)
    Xcen = X0 + r * Dcos(rcen): Ycen = Y0 + r * Dsin(rcen)
    
    
    Moj$ = "": 端部Mark$ = Amark$
    ni = InStr(Amark$, ","): If ni > 2 Then 端部Mark$ = Mid(Amark$, 1, ni - 1): Moj$ = Mid(Amark$, ni + 1)
    矢r = P_寸法_端部_矢_size
    Select Case 端部Mark$
        Case ""
        Case "<":
                   Select Case P_寸法_端部
                   Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X11, Y11, 0)
                   Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X11, Y11, 0)
                   Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X11, Y11, 0)
                   Case Else:   Call DPoint(X1, Y1)
                   End Select
        
        Case ">":
                   Select Case P_寸法_端部
                   Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X22, Y22, 0)
                   Case "上矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X22, Y22, 0)
                   Case "下矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X22, Y22, 0)
                   Case Else:   Call DPoint(X2, Y2)
                   End Select
        
        
        Case "<>":
                   Select Case P_寸法_端部
                   Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X11, Y11, 0): Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X22, Y22, 0)
                   Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X11, Y11, 0): Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X22, Y22, 0)
                   Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X11, Y11, 0): Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X22, Y22, 0)
                   Case Else:   Call DPoint(X1, Y1): Call DPoint(X2, Y2)
                   End Select
        
        Case Else: er ("[Darc] Amark=" + Amark$): If 世誤CK > 99 Then Stop
    
    End Select
        
    If Moj$ <> "" Then Call DsymC_D(Xcen, Ycen, 文字上向角度化(rcen - 90), Moj$):    ' Call DPoint(Xcen, Ycen)
    
    End Sub
Sub Darc3(Amark$, X1, Y1, X2, Y2, X3, Y3)
    ' 3点を通る円弧
    ' 位置                (X2,Y2)は中間点
    '            (X1,Y1)              (X3,Y3)
    ' Amark 端部点の指示
    Call CALUCIR3(X1, Y1, X2, Y2, X3, Y3, AX0, AY0, Arc_r, r1, r2)
    Call Darc(Amark$, AX0, AY0, Arc_r, r1, r2)
    End Sub
Sub Darc_H(Amark$, X1, Y1, X2, Y2, H)
    ' 2点を通る  高さHの円弧
    ' Amark 端部点の指示
    LL1 = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2) / 2
    HH1 = Abs(H): If HH1 > LL1 Then HH1 = LL1
         If HH1 = 0 Then HH1 = 1
         HH1 = HH1 * Sgn(H)
    角度 = Calu角度(X1, Y1, X2, Y2): 角度2 = 角度 + 90
    X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2
    X3D = X3 - HH1 * Dcos(角度2): Y3D = Y3 - HH1 * Dsin(角度2)
    Call Darc3(Amark$, X1, Y1, X3D, Y3D, X2, Y2)
    End Sub



'┌─────────────────────────────────────────────────────────────────┐
'│   Sym    文字                                                                                                                    │
'└─────────────────────────────────────────────────────────────────┘
Sub Dsym(X0, Y0, 文字位置, 角度, Moj$)
   '■ 最終 sub
    If Moj$ = "" Then Exit Sub
    Call Dxf_sym(X0 * Sub倍率, Y0 * Sub倍率, 文字位置, 角度, Moj$)
    'Call Z_sym(X0, Y0, P_文字_size_0, 文字位置, MdxL, MdyL, 角度, Moj$, P_Layer_0)
    End Sub


Sub DsymC(X0, Y0, 角度, Moj$)
    ' X0,Y0 が文字の中芯
    Call Dsym(X0, Y0, "CC", 角度, Moj$)
    End Sub
Sub DsymL(X0, Y0, 角度, Moj$)
    ' X0が文字の左端     Y0 が文字の中芯
    Call Dsym(X0, Y0, "LC", 角度, Moj$)
    End Sub
Sub DsymC_D(X0, Y0, 角度, Moj$)
    ' X0 が文字の中芯  Y0 文字の下
    Call Dsym(X0, Y0, "C", 角度, Moj$)
    End Sub
Sub DsymL_D(X0, Y0, 角度, Moj$)
   Stop
    ' X0が文字の左端     Y0 が文字の下
     'MdyL = -P_文字_size_0 / 2:  ' 倍率 *は不必要
    Call Dsym(X0, Y0, "L", 角度, Moj$)
    End Sub

'===================================================================================================================================
Sub Dsym_Ander_Line(X0, Y0, α, 角度, Moj$)
    ' X0,Y0 Moj はｾﾝﾀｰ
    ' α 下線の倍率
       DL = 変換M * α * 0.5 * P_文字_size_0 * (Len(Moj$) + N漢字(Moj$))
    XL = DL * Dcos(角度): YL = DL * Dsin(角度)
    X1 = X0 - XL / 2: Y1 = Y0 - YL / 2: X2 = X0 + XL / 2: Y2 = Y0 + YL / 2
    Call DLine(X1, Y1, X2, Y2)
    Call DsymC_D(X0, Y0, 角度, Moj$)
    End Sub

'===================================================================================================================================
Sub Dsym○(X0, Y0, D, 角度, Moj$)
    ' ○を描き文字を入れる D=○の直径mm
'===================================================================================================================================
    D1 = D
    If D1 <= 0 Then
       D1 = P_文字_size_0
       D2 = 0.5 * P_文字_size_0 * (Len(Moj$) + N漢字(Moj$))
       If D1 < D2 Then D1 = D2
       D1 = D1 + 1
       End If
    Call D○(X0, Y0, D1, "")
    Call DsymC(X0, Y0, 角度, Moj$)
    End Sub

'===================================================================================================================================
Sub Dsym□(X0, Y0, b, D, 位置, 角度, Moj$)
    ' □を描き文字を入れる  B*Dmm
'===================================================================================================================================
    ReDim X(6), Y(6)
    BB = b * 倍率: DD = D * 倍率
    If DD <= 0 Then DD = (P_文字_size_0 + 0.6) * 倍率
    If BB <= 0 Then BB = (0.5 * P_文字_size_0 * (Len(Moj$) + N漢字(Moj$)) + 1#) * 倍率
                      
    Select Case 位置
        Case "L", "LC": X(1) = X0: X(3) = X0 + BB: Y(1) = Y0 - DD / 2: Y(3) = Y0 + DD / 2
        Case "C", "CC": X(1) = X0 - BB / 2: X(3) = X0 + BB / 2: Y(1) = Y0 - DD / 2: Y(3) = Y0 + DD / 2
        Case "R", "RC": X(1) = X0 - BB: X(3) = X0: Y(1) = Y0 - DD / 2: Y(3) = Y0 + DD / 2
        Case "LD": X(1) = X0:  X(3) = X0 + BB: Y(1) = Y0:  Y(3) = Y0 + DD
        Case "CD": X(1) = X0 - BB / 2: X(3) = X0 + BB / 2: Y(1) = Y0: Y(3) = Y0 + DD
        Case "RD": X(1) = X0 - BB: X(3) = X0: Y(1) = Y0: Y(3) = Y0 + DD
        Case Else: er ("[Sub Dsym□] 位置=" + 位置): If 世誤CK > 99 Then Stop
        End Select
        X(2) = X(1): X(4) = X(3): Y(2) = Y(3): Y(4) = Y(1)
        X(5) = X(1): Y(5) = Y(1)
        X(6) = (X(1) + X(3)) / 2: Y(6) = (Y(1) + Y(3)) / 2
                          
    Call Thenkan(X0, Y0, 角度, X(), Y(), 6)
    Call DLine1(X(), Y(), 4, 0)
    Call DsymC(X(6), Y(6), 角度, Moj$)
    
    End Sub
'===================================================================================================================================
Sub D特記事項(X0, Y0, 特記X, 特記Y, 特記pit, 特記事項数, 特記事項$(), e$)
    ' X0, Y0
    ' 特記X, 特記Y, 特記pit mm
'===================================================================================================================================
               
    'Call PROTER初期値
    'Call Dレイヤ番号(17)
    X1 = 特記X:  Y1 = 特記Y: Ypit = 特記pit
    
    For ii = 1 To 特記事項数: Moj$ = 特記事項$(ii)
    Select Case Mid$(Moj$, 1, 1)
    Case "#":  Call Ddata(",", Mid$(Moj$, 2), Ds$(), Di(), Nii)
               For iii = 1 To Nii
               D1$ = Mid$(Ds$(iii), 1, 1): ddd = Val(Mid$(Ds$(iii), 2))
               Select Case D1$
               Case "X": X1 = ddd
               Case "Y": Y1 = ddd
               Case "P": Ypit = ddd
               Case Else: e$ = "特記事項  " & Moj$ & " がおかしい": Exit Sub
               End Select
               Next iii
'               Call D図形("P*")
               jX1 = X0 + X1 * ZU_Scale: jY1 = Y0 + Y1 * ZU_Scale
'               Call D図形("p:" & F9$(jX1) & "," & F9$(jY1))
'     Case "*": Call D図形(Mid$(Moj$, 2))
     Case Else:
               jX1 = X0 + X1 * ZU_Scale: jY1 = Y0 + Y1 * ZU_Scale
               Call DXY(jX1, jY1)
               Call DXFPmode(Moj$)
               Y1 = Y1 - Ypit
    End Select
    Next ii

    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   図形file                                                                                                                       │
'└─────────────────────────────────────────────────────────────────┘
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub D連続寸法(X(), Y(), 寸法線(), 寸法値$(), ni)
    '  寸法を描く
    '  X(i),Y(i)  : 点の座標
    '  寸法線()    : 0 寸法線無し                     [初期化]
    '  寸法値$()   : 寸法値$()="" の場合 寸法値を計算  [初期化]
    '  ni  点の数
'===================================================================================================================================
    For i = 1 To ni: Call DPoint(X(i), Y(i)): Next i
    For i = 1 To ni - 1: l = Sqr((X(i + 1) - X(i)) ^ 2 + (Y(i + 1) - Y(i)) ^ 2)
        Moj$ = 寸法値$(i): If Moj$ = "" Then Moj$ = f0$(l)
        Call DLine文字(1, X(i), Y(i), X(i + 1), Y(i + 1), "C", Moj$)
        角度 = 90 + Calu角度(X(i), Y(i), X(i + 1), Y(i + 1))
        
        If 寸法線(i) <> 0 Then
           L2 = 倍率 * 寸法線(i): 角度 = 90 + Calu角度(X(i), Y(i), X(i + 1), Y(i + 1))
           X2 = X(i) + L2 * Dcos(角度):  Y2 = Y(i) + L2 * Dsin(角度): Call DLine(X(i), Y(i), X2, Y2)
           End If
        Next i
        
        If 寸法線(ni) <> 0 Then
           L2 = 倍率 * 寸法線(ni): X2 = X(ni) + L2 * Dcos(角度):  Y2 = Y(ni) + L2 * Dsin(角度): Call DLine(X(ni), Y(ni), X2, Y2)
           End If
    For i = 1 To ni: 寸法線(i) = 0: 寸法値$(i) = "": Next i
    End Sub
'===================================================================================================================================
Sub D寸法(X1, Y1, X2, Y2, 寸法値$, 点$, 寸法線1, 寸法線2, e$)
    ' H10.2.26
    ' 文字ｺﾝﾄﾛｰﾙ有り *****
    '  寸法を描く
    '  (X1,Y1) (X2,Y2) : 点の座標
    '  寸法値$   : 寸法値にもじを描く     [初期化]
    '  寸法線1   : (X1,Y1)に寸法線を描くmm
    '  寸法線2   : (X2,Y2)に寸法線を描くmm
    '  点  <  S   (X1,Y1)に点を描く Start
    '  点  >  E   (X2,Y2)に点を描く End
    '  点  <> SE   (X1,Y1),(X2,Y2)に点を描く
'===================================================================================================================================
    ' 中止予定
    If 寸法値$ = "" Then 寸法値$ = f0$(Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2))
    角度 = 90 + Calu角度(X1, Y1, X2, Y2)
    If 寸法線1 <> 0 Then X3 = X1 + ZU_Scale * 寸法線1 * Dcos(角度): Y3 = Y1 + ZU_Scale * 寸法線1 * Dsin(角度): Call DLine(X1, Y1, X3, Y3)
    If 寸法線2 <> 0 Then X3 = X2 + ZU_Scale * 寸法線2 * Dcos(角度): Y3 = Y2 + ZU_Scale * 寸法線2 * Dsin(角度): Call DLine(X2, Y2, X3, Y3)
    
    
    矢r = P_寸法_端部_矢_size
    Select Case 点$
        Case "<", "S":
                   Select Case P_寸法_端部
                   Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0)
                   Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0)
                   Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0)
                   Case Else:   Call DPoint(X1, Y1)
                   End Select
        Case ">", "E":
                   Select Case P_寸法_端部
                   Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                   Case "上矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                   Case "下矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                   Case Else:   Call DPoint(X2, Y2)
                   End Select
        
        Case "<>", "SE":
                   Select Case P_寸法_端部
                   Case "矢":     Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0): Call D矢("<", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                   Case "上矢":   Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0): Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                   Case "下矢":   Call D矢("L", 0, -矢r, P_寸法_端部_矢_角度, X1, Y1, X2, Y2, 0): Call D矢("L", 0, 矢r, P_寸法_端部_矢_角度, X2, Y2, X1, Y1, 0)
                   Case Else:   Call DPoint(X1, Y1): Call DPoint(X2, Y2)
                   End Select
        
        Case Else: '点無し
        End Select
    
    Call DLine文字(1, X1, Y1, X2, Y2, "C", 寸法値$)
    
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   三角形                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Sub D三角形(X0, Y0, 幅, 高さ, 回転角, e$)
    ' 逆三角形を描く
    ' (X0,Y0) 原点
    ' 回転角(ﾄﾞ)
    'If 回転角 <> 0 Then ER ("D三角形 回転角 <> 0"): Stop
    X1 = X0: Y1 = Y0: X2 = X1 - 幅 / 2: Y2 = Y1 + 高さ:: X3 = X1 + 幅 / 2: Y3 = Y1 + 高さ
    If 回転角 <> 0 Then Call 座標回転(X1, Y1, 回転角, X2, Y2): Call 座標回転(X1, Y1, 回転角, X3, Y3)
    Call DLine(X1, Y1, X2, Y2)
    Call DLine(X1, Y1, X3, Y3)
    Call DLine(X2, Y2, X3, Y3)
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ハッチ                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Sub Dハッチ4点(X1, Y1, X2, Y2, X3, Y3, X4, Y4, 角度, Pit, e$)
    ' ﾊｯﾁを描く  -90<=  角度(ﾄﾞ) <=90  Pit:ﾋﾟｯﾁmm
    ' ni 点の数
    ReDim X(10), Y(10)
    X(1) = X1: Y(1) = Y1: X(2) = X2: Y(2) = Y2: X(3) = X3: Y(3) = Y3: X(4) = X4: Y(4) = Y4
    pit2 = Pit * ZU_Scale: '**** ﾒﾝﾃ  Rob_部材ﾘｽﾄ
    Call D_ハッチ_1(X(), Y(), 4, 角度, pit2, P_Layer_0, P_線種_0, P_色_0, e$)
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   矢                                                                                                                             │
'└─────────────────────────────────────────────────────────────────┘
Sub P_D_Mark(X0, Y0, 角度, Pdata$, 描き出し位置, 移動_方向)
    ' Pdata$    exp  6x200+4x150+40x150+12x300
    ' X0,Y0 Start位置の値から End位置の値に変わる
    ' 描き出し位置=2  1番目の を描かない
    ' 描き出し位置=-1  n番目のｸﾞﾙｰﾌﾟ を描かない
    
    ' 移動方向 < 0 の場合 逆方向に位置が移動
    移動方向 = 1: If 移動_方向 < 0 Then 移動方向 = -1
    Mark$ = P_矢_Mark$:  矢r = P_矢_長さ * 変換M:  矢印_角度 = P_矢_角度
    
    If 描き出し位置 <> 2 Then Call P_Dmark(X0, Y0, 角度)
    If Pdata$ <> "" Then
           Call Ddata("+", Pdata$, Ds$(), Di(), nni)
           For ii = 1 To nni: D1$ = UCase(Ds$(ii))
               Dpit = Di(ii): ni2 = 1:   ni = InStr(D1$, "X"): If ni > 1 Then ni2 = Val(D1$): Dpit = Val(Mid(D1$, ni + 1))
               For jj = 1 To ni2
                    X0 = X0 + 移動方向 * Dpit * Dcos(角度): Y0 = Y0 + 移動方向 * Dpit * Dsin(角度)
                    If ii = nni And jj = ni2 And 描き出し位置 = -1 Then Exit For
                    Call P_Dmark(X0, Y0, 角度)
                    Next jj
               Next ii
           End If
    End Sub






Sub P_Dmark(X0, Y0, 角度)
    ' ni個  Mark を描く
    ' X0,Y0 Start位置の値から End位置の値に変わる
    Mark$ = P_矢_Mark$:  矢r = P_矢_長さ * 変換M:  矢印_角度 = P_矢_角度
              Select Case Mark$
              Case ""
              Case "L": 角度1 = 角度 + 矢印_角度: If 矢r < 0 Then 角度1 = 角度 - 矢印_角度
                        X3 = X0 + 矢r * Dcos(角度1): Y3 = Y0 + 矢r * Dsin(角度1): Call DLine(X0, Y0, X3, Y3)
        
              Case "<": 角度1 = 角度 + 矢印_角度: 角度2 = 角度 - 矢印_角度
                        X3 = X0 + 矢r * Dcos(角度1): Y3 = Y0 + 矢r * Dsin(角度1): Call DLine(X0, Y0, X3, Y3)
                        X3 = X0 + 矢r * Dcos(角度2): Y3 = Y0 + 矢r * Dsin(角度2): Call DLine(X0, Y0, X3, Y3)
              Case ".": Call DPoint(X0, Y0)
              Case Else: er ("Uxf [Sub D矢] 矢mark=" + 矢mark): If 世誤CK > 99 Then Stop
              End Select
    End Sub




Sub D矢(矢mark$, D, 矢r, 矢印_角度, X0, Y0, X2, Y2, 線L)
    ' D=○の直径mm   矢r 矢印長さmm   座標で指定
    ' 矢mark     L, <,                ' Ng  ○L,  ○<
    ' 線L   線L=0 で線を描かない
    
    矢M$ = 矢mark$
    X1 = X0: Y1 = Y0
    角度 = Calu角度(X1, Y1, X2, Y2)
   ' If Mid$(矢M$, 1, 1) = "○" Then
    If D > 0 Then
        '矢M$ = Mid(矢M$, 2)
        r = (D / 2) * 変換M: Call Dcircle(X1, Y1, r)
        X1 = X1 + r * Dcos(角度): Y1 = Y1 + r * Dsin(角度):  矢mark = Mid$(矢mark, 2)
        LL = F_点AB間_距離(X1, Y1, 0, X2, Y2, 0)
        If r > LL Then 角度 = 角度 + 180
        End If
    r = Abs(矢r) * 変換M
    Select Case 矢M$
        Case ""
        Case "L": 角度1 = 角度 + 矢印_角度: If 矢r < 0 Then 角度1 = 角度 - 矢印_角度
                  X3 = X1 + r * Dcos(角度1): Y3 = Y1 + r * Dsin(角度1): Call DLine(X1, Y1, X3, Y3)
        
        Case "<": 角度1 = 角度 + 矢印_角度: 角度2 = 角度 - 矢印_角度
                  X3 = X1 + r * Dcos(角度1): Y3 = Y1 + r * Dsin(角度1): Call DLine(X1, Y1, X3, Y3)
                  X3 = X1 + r * Dcos(角度2): Y3 = Y1 + r * Dsin(角度2): Call DLine(X1, Y1, X3, Y3)
        Case Else: er ("Uxf [Sub D矢] 矢mark=" + 矢mark): If 世誤CK > 99 Then Stop
        End Select
    If 線L <> 0 Then Call DLine(X1, Y1, X2, Y2)
    End Sub
'===================================================================================================================================
Sub D矢1(矢mark$, D, 矢r, 矢印_角度, X0, Y0, 方向$, 長さ1, 長さ2, 文字$)
    ' D=○の直径mm   矢r 矢印長さmm   座標で指定
    ' 矢mark$     L, <,   NG ○L,  ○<
    ' 方向$
    ' 長さ1,長さ2  mm
    ' 98.9.17
'===================================================================================================================================
    L1 = 倍率 * 長さ1: L2 = 倍率 * 長さ2: 矢r1 = 矢r
    Select Case 方向$
    Case "U": X2 = X0: Y2 = Y0 + L1: X3 = X2 + L2: Y3 = Y2: 角度 = 0
    Case "D": X2 = X0: Y2 = Y0 - L1: X3 = X2 + L2: Y3 = Y2: 角度 = 0: 矢r1 = -矢r1
    Case "L": X2 = X0 - L1: Y2 = Y0: X3 = X2: Y3 = Y2 + L2: 角度 = 90
    Case "R": X2 = X0 + L1: Y2 = Y0: X3 = X2: Y3 = Y2 + L2: 角度 = 90: 矢r1 = -矢r1
    Case Else: Stop
    End Select
    Call D矢(矢mark$, D, 矢r1, 矢印_角度, X0, Y0, X2, Y2, 1)
    Call DLine(X2, Y2, X3, Y3)
    Call Dsym(X2, Y2, "L", 角度, 文字$)
    
    End Sub
'===================================================================================================================================
Sub D矢角度(矢mark, D, 矢r, 矢印_角度, X0, Y0, 角度, l, X2, Y2)
    ' D=○の直径mm   矢r 矢印長さmm  角度(ﾄﾞ)  角度で指定
'===================================================================================================================================
    X1 = X0: Y1 = Y0
    X2 = X0 + l * Dcos(角度): Y2 = Y0 + l * Dsin(角度)
    If Mid$(矢mark, 1, 1) = "○" Then
        r = 倍率 * D / 2: Call D○(X1, Y1, D, "")
        X1 = X1 + r * Dcos(角度): Y1 = Y1 + r * Dsin(角度):  矢mark = Mid$(矢mark, 2)
        End If
    r = 倍率 * 矢r
    Select Case 矢mark
        Case ""
        Case "L": 角度1 = 角度 + 矢印_角度:  X3 = X1 + r * Dcos(角度1): Y3 = Y1 + r * Dsin(角度1): Call DLine(X1, Y1, X3, Y3)
        Case "<": 角度1 = 角度 + 矢印_角度: 角度2 = 角度 - 矢印_角度
                  X3 = X1 + r * Dcos(角度1): Y3 = Y1 + r * Dsin(角度1): Call DLine(X1, Y1, X3, Y3)
                  X3 = X1 + r * Dcos(角度2): Y3 = Y1 + r * Dsin(角度2): Call DLine(X1, Y1, X3, Y3)
        Case Else: er ("[Sub D矢] 矢mark=" + 矢mark): If 世誤CK > 99 Then Stop
        End Select
    Call DLine(X1, Y1, X2, Y2)
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   線切断                                                                                                                         │
'└─────────────────────────────────────────────────────────────────┘
Sub D切断_Arc1(X1, Y1, X2, Y2, H)

'             Case "切断～1":     ' [切断～1:X1,Y1,X2,Y2,H]   線 (X1,Y1) - (X2,Y2) に切断Mark～1を付ける  H 高さmm
    ' H      : Arc の高さ
    '     ･   ･   ･
    '     1   3   2
     
     LL1 = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2) / 4
     HH1 = H: If HH1 > LL1 Then HH1 = LL1
     角度 = Calu角度(X1, Y1, X2, Y2): 角度2 = 角度 + 90
     X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2
     Amark$ = ""
     Call Darc_H(Amark$, X1, Y1, X3, Y3, H)
     Call Darc_H(Amark$, X3, Y3, X2, Y2, H)
     Call Darc_H(Amark$, X3, Y3, X2, Y2, -H)
            
            

    End Sub




'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub Dスリット(X0, Y0, 幅, 高さ, 回転角, Pit, e$)
    '[ｽﾘｯﾄ:(Dx,Dy),XL,YL,角度,ﾋﾟｯﾁ]
    ' 逆三角形を描く
    ' (X0,Y0) 原点
    ' 回転角(ﾄﾞ)
'===================================================================================================================================
    ReDim X(10), Y(10)
    X1 = X0: Y1 = Y0: X2 = X1 - 幅 / 2: Y2 = Y1 + 高さ: X3 = X1 + 幅 / 2: Y3 = Y1 + 高さ
    ハッチ角度 = 90 + 回転角
    If 回転角 <> 0 Then Call 座標回転(X1, Y1, 回転角, X2, Y2): Call 座標回転(X1, Y1, 回転角, X3, Y3)
    Call DLine(X1, Y1, X2, Y2)
    Call DLine(X1, Y1, X3, Y3)
    Call DLine(X2, Y2, X3, Y3)
    X(1) = X1: Y(1) = Y1: X(2) = X2: Y(2) = Y2: X(3) = X3: Y(3) = Y3
    Call D_ハッチ_1(X(), Y(), 3, ハッチ角度, Pit, P_Layer_0, P_線種_0, P_色_0, e$)
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub Dフック(X0, Y0, X1, Y1, 角度, D, l)
    ' (X0,Y0)         (X1,Y1) 曲り初め位置
    ' D : 直径     L:曲り終位置からの長さ 4d 6d など
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
    r = Abs(D / 2): Si = Sgn(角度)
    r1 = Calu角度(X0, Y0, X1, Y1): r3 = r1 + 角度
    LLL = Sqr((X1 - X0) ^ 2 + (Y1 - Y0) ^ 2): LL2 = LLL - RR
    X2 = X0 + LL2 * Dcos(r1): Y2 = Y0 + LL2 * Dsin(r1)
    
    X00 = X2 + r * Dcos(r1 + Si * 90): Y00 = Y2 + r * Dsin(r1 + Si * 90)
    
    X3 = X00 + r * Dcos(角度 + r1 - Si * 90): Y3 = Y00 + r * Dsin(角度 + r1 - Si * 90)
    
    X4 = X3 + l * Dcos(r3): Y4 = Y3 + l * Dsin(r3)
    Call DLine(X0, Y0, X2, Y2):    Call DLine(X3, Y3, X4, Y4)
    Rs = r1 - Si * 90: RE = Rs + 角度: If Si < 0 Then rS2 = Rs: Rs = RE: RE = rS2: '角度<0 で逆になる
    Call Darc("", X00, Y00, r, Rs, RE)
    
    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub D_BOLT(X0, Y0, r, BOLT$, ALPKEI, Layer$, color$, er1$)
     ' X0,Y0 ﾎﾞﾙﾄ中心
     'ALPKEI  図形倍率
'===================================================================================================================================
     ReDim Xp(10), Yp(10)
     
     P_Layer_0 = Layer$: P_線種_0 = "CONTINUOUS":  P_色_0 = color$
     
     kei = Val(Mid$(BOLT$, 2))
     If ALPKEI <= 0 Then er1$ = " 図形倍率 <=0 ": Exit Sub
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
                 er ("M24 ******"): If 世誤CK > 99 Then Stop
     Case Else: er1$ = "ﾎﾞﾙﾄ径がおかしい " + BOLT$
     End Select
     
End Sub
'===================================================================================================================================
Sub D_BOLTDANMEN(X0, Y0, r, Ztype, BOLT$, BL, ALPKEI, Layer$, color$, er1$)
     ' X0,Y0 ﾎﾞﾙﾄ下中心
     ' BL ﾎﾞﾙﾄ長さ
     ' Ztype   1:見えるﾎﾞﾙﾄ  2:見えないﾎﾞﾙﾄ
     ' ALPKEI  図形倍率
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
     If ALPKEI <= 0 Then er1$ = " 図形倍率 <=0 ": Exit Sub
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
     
     'ﾎﾞﾙﾄ頭部分
     Zline$ = "CONTINUOUS": If Ztype = 2 Then Zline$ = "DOT"
     r1 = r: r2 = 180 + r: Call Z_arc(Xp(1), Yp(1), D2, r1, r2, Layer$, Zline$, color$)
     
     'ﾎﾞﾙﾄ軸部分
     If Ztype = 1 Then
        Zline$ = "DOT"
        Call Dxf_Line(Xp(2), Yp(2), Xp(5), Yp(5))
        Call Dxf_Line(Xp(3), Yp(3), Xp(6), Yp(6))
        End If

     'ﾅｯﾄ部分
     Zline$ = "CONTINUOUS": If Ztype = 2 Then Zline$ = "DOT"
     Call Dxf_Line(Xp(4), Yp(4), Xp(8), Yp(8))
     Call Dxf_Line(Xp(8), Yp(8), Xp(11), Yp(11))
     Call Dxf_Line(Xp(11), Yp(11), Xp(7), Yp(7))

     'ﾎﾞﾙﾄ出部分
     Zline$ = "CONTINUOUS": If Ztype = 2 Then Zline$ = "DOT"
'     Call Dxf_Line(Xp(9), Yp(9), Xp(12), Yp(12), Layer$)
'     Call Dxf_Line(Xp(12), Yp(12), Xp(13), Yp(13), Layer$)
'     Call Dxf_Line(Xp(13), Yp(13), Xp(10), Yp(10), Layer$)
     
     'ﾎﾞﾙﾄ軸中心
     Zline$ = "CENTER1"
     Call Dxf_Line(X0, Y0, Xp(14), Yp(14))


End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub Z_JOINT(X0, Y0, 文字Y位置, 回転角, Jname$, BOLT$, JSteel$, FraALP, 接合部開き, Ds$(), Layer$, Zcolor$, er1$)
    '
    ' 文字Y位置     : mm
    ' 接合部開き    : 接合部開き 5mm
    '
    '
'===================================================================================================================================
       ReDim Xp(100), Yp(100)
       
       r = 回転角
       文字Y位置2 = 文字Y位置 * 変換M
       er2$ = "": '       er1$ = "文字位置=" + F1$(10 * 変換M)
       ni = InStr(er1$, "="): If ni > 0 Then er2$ = Mid$(er1$, ni + 1): er1$ = Mid$(er1$, 1, ni)
       
       Select Case er1$
       Case "文字NO": 文字描画$ = "N"
       Case "文字位置=": 文字Y位置2 = Val(er2$) * 変換M
       Case Else
       End Select

       フランジ厚 = 0
       ni = InStr(JSteel$, "|"): If ni > 1 Then フランジ厚 = Val(Mid$(JSteel$, ni + 1)): JSteel$ = Mid$(JSteel$, 1, ni - 1)
       
       
       er1$ = ""
          ni = InStr(JSteel$, "-"): Steel_H = Val(Mid$(JSteel$, ni + 1)): ' H型鋼成
          If ni = 0 Then er ("*Z_JOINT  鉄骨部材ﾃﾞｰﾀがおかしい " + JSteel$): Stop
          ni = InStr(JSteel$, "x"): Steel_B = Val(Mid$(JSteel$, ni + 1)): ' H型鋼幅
          ni = InStr(ni + 1, JSteel$, "x"): Web_t = Val(Mid$(JSteel$, ni + 1)): ' H型web t
          ni = InStr(ni + 1, JSteel$, "x"): Fra_t = Val(Mid$(JSteel$, ni + 1)): ' H型Fra t

          If フランジ厚 > Fra_t Then Fra_t = フランジ厚
              
              JboltM = Val(Mid$(BOLT$, 2))
              Select Case JboltM
                 Case 16, 20, 22: Fe1 = 40: We1 = 40: Bpit = 60: Bpit2 = 45: ': Bpit2 =ﾁﾄﾞﾘﾋﾟｯﾁ
                 Case 24: Fe1 = 45: We1 = 45: Bpit = 70: Bpit2 = 50
                 Case Else: er (Jname$ + " ﾎﾞﾙﾄ径がおかしい " + BOLT$): Stop
                 End Select

          Frabolt1$ = Ds$(1): FraboltnF = Val(Ds$(2)): FraP1 = Val(Ds$(3))
          Webbolt1$ = Ds$(4):
          WebboltnF1 = Val(Ds$(5)): WebboltnF2 = Val(Ds$(6)): WebboltnF = WebboltnF1 + WebboltnF2
          WebP2 = Val(Ds$(7))
          Frag1 = Val(Ds$(8)): Frag2 = Val(Ds$(9)): Webg3 = Val(Ds$(10))
          Frat1 = Val(Ds$(11)): Fraa1 = Val(Ds$(12)): Frat2 = Val(Ds$(13)): Fraa2 = Val(Ds$(14)): FraL1 = Val(Ds$(15))
          Webt3 = Val(Ds$(16)): Weba3 = Val(Ds$(17)): Weba4 = Val(Ds$(18)): WebL2 = Val(Ds$(19))

          Moj1$ = "$LT=0.55\[接合部 " + Jname$ + "]"
          Moj2$ = "$LT=0.55\ﾌﾗﾝｼﾞ [外]  SPL-" + F9$(Frat1) + " H.T.B " + F9$(FraboltnF) + "-" + BOLT$ + " " + Frabolt1$
          Moj3$ = "$LT=0.55\      [内]  SPL-" + F9$(Frat2)
          Moj4$ = "$LT=0.55\ｳｪﾌﾞ   　  2SPL-" + F9$(Webt3) + " H.T.B " + F9$(WebboltnF) + "-" + BOLT$ + " " + Webbolt1$
      
     Xp(1) = X0: Yp(1) = Y0: Xp(2) = X0: Yp(2) = Y0 - Steel_H
     Call Thenkan(X0, Y0, r, Xp(), Yp(), 2)
     Call Z_Line(Xp(1), Yp(1), Xp(2), Yp(2), Layer$, "DOT", "2")
      
     Frat1 = FraALP * Frat1: Frat2 = FraALP * Frat2
      '上ﾌﾗﾝｼﾞ
          b = FraL1: H = Frat1: X1 = X0: Y1 = Y0 + H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
          b = FraL1: H = Frat2: X1 = X0: Y1 = Y0 - Fra_t - H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
      '下ﾌﾗﾝｼﾞ
          b = FraL1: H = Frat1: X1 = X0: Y1 = Y0 - Steel_H - H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
          b = FraL1: H = Frat2: X1 = X0: Y1 = Y0 - Steel_H + Fra_t + H / 2
          Call D_Box(X1, Y1, r, b, H, Layer$, "CONTINUOUS", Zcolor$)
      'ｳｴﾌﾞ
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
      'ﾌﾗﾝｼﾞﾎﾞﾙﾄ
       'Call D_BOLTDANMEN(X0, Y0, R, ZTYPE, Bolt$, BL, ALPKEI, LAYER$, Zcolor$, er1$)
       BL = Frat1 + Frat2 + Fra_t
       Select Case Frabolt1$
       Case "1列"
                  '上ﾌﾗﾝｼﾞﾎﾞﾙﾄ
                  n2 = FraboltnF / 2: n3 = n2 + 1
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - 接合部開き) / 4 + 接合部開き / 2: Yp(1) = Y0 + Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = n3 To FraboltnF: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = 1 To FraboltnF: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
                  '下ﾌﾗﾝｼﾞﾎﾞﾙﾄ
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - 接合部開き) / 4 + 接合部開き / 2: Yp(1) = Y0 - Steel_H - Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = n3 To FraboltnF: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = 1 To FraboltnF: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r + 180, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
       Case "2列"
                  '上ﾌﾗﾝｼﾞﾎﾞﾙﾄ
                  n2 = FraboltnF / 4: n3 = n2 + 1
                  Xp(1) = (FraL1 - (FraboltnF / 2 - 2) * FraP1 - 接合部開き) / 4 + 接合部開き / 2: Yp(1) = Y0 + Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = n3 To FraboltnF / 2: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 + Frat1: Next II9
                  For II9 = 1 To FraboltnF / 2: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF / 2: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
                  '下ﾌﾗﾝｼﾞﾎﾞﾙﾄ
                  Xp(1) = (FraL1 - (FraboltnF / 2 - 2) * FraP1 - 接合部開き) / 4 + 接合部開き / 2: Yp(1) = Y0 - Steel_H - Frat1
                  For II9 = 2 To n2: Xp(II9) = Xp(II9 - 1) + FraP1: Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = n3 To FraboltnF / 2: Xp(II9) = -Xp(II9 - n2): Yp(II9) = Y0 - Steel_H - Frat1: Next II9
                  For II9 = 1 To FraboltnF / 2: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), FraboltnF)
                  For II9 = 1 To FraboltnF / 2: Call D_BOLTDANMEN(Xp(II9), Yp(II9), r + 180, 1, BOLT$, BL, 1, Layer$, Zcolor$, er1$): Next II9
       Case "千鳥", "ﾁﾄﾞﾘ"
                  '上ﾌﾗﾝｼﾞﾎﾞﾙﾄ
                  n2 = FraboltnF / 2: n3 = n2 + 1
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - 接合部開き) / 4 + 接合部開き / 2: Yp(1) = Y0 + Frat1
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
                  '下ﾌﾗﾝｼﾞﾎﾞﾙﾄ
                  Xp(1) = (FraL1 - (FraboltnF - 2) * FraP1 - 接合部開き) / 4 + 接合部開き / 2: Yp(1) = Y0 - Steel_H - Frat1
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
       Case Else: er ("ﾌﾗﾝｼﾞﾎﾞﾙﾄ 並び " + Frabolt1$): Stop
       End Select
       
      'ｳｴﾌﾞﾎﾞﾙﾄ
       'Call D_BOLT(X0, Y0, R, Bolt$, ALPKEI, LAYER$, Zcolor$, er1$)
       Select Case Webbolt1$
       Case "1列"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (WebboltnF1 - 1) / 2
                  Xp(1) = (WebL2 - 接合部開き) / 4 + 2.5: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 + WebY1
                  For II9 = 2 To WebboltnF1: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  n3 = WebboltnF1 + 1: N4 = 2 * WebboltnF1
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
          If WebboltnF2 > 0 Then
                  N0 = WebboltnF2: n2 = (WebboltnF2 - 1) / 2
                  Xp(1) = (WebL2 - 接合部開き) / 4 + 2.5: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 - WebY2
                  For II9 = 2 To WebboltnF2: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  n3 = WebboltnF2 + 1: N4 = 2 * WebboltnF2
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
       Case "2列"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (Int(WebboltnF1 / 2 + 0.6) - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + 接合部開き / 2: Xp(2) = Xp(1) + WebP2
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
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + 接合部開き / 2: Xp(2) = Xp(1) + WebP2
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
       Case "3列"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (Int(WebboltnF1 / 2 + 0.6) - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + 接合部開き / 2: Xp(2) = Xp(1) + WebP2
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
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + 接合部開き / 2: Xp(2) = Xp(1) + WebP2
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
       Case "千鳥", "ﾁﾄﾞﾘ"
          If WebboltnF1 > 0 Then
                  N0 = WebboltnF1: n2 = (WebboltnF1 - 1) / 2
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + 接合部開き / 2: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 + WebY1
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
                  Xp(1) = (WebL2 - 2 * WebP2) / 4 + 接合部開き / 2: Yp(1) = Y0 - Steel_H / 2 - n2 * Webg3 - WebY2
                  For II9 = 2 To WebboltnF2: Xp(II9) = Xp(1): Yp(II9) = Yp(II9 - 1) + Webg3: Next II9
                  For II9 = 2 To WebboltnF2 Step 2: Xp(II9) = Xp(1) + WebP2: Next II9
                  n3 = WebboltnF2 + 1: N4 = 2 * WebboltnF2
                  For II9 = n3 To N4: Xp(II9) = -Xp(II9 - N0): Yp(II9) = Yp(II9 - N0): Next II9
                  For II9 = 1 To N4: Xp(II9) = Xp(II9) + X0: Next II9
                  Call Thenkan(X0, Y0, r, Xp(), Yp(), N4)
                  For II9 = 1 To N4: Call D_BOLT(Xp(II9), Yp(II9), r, BOLT$, 1.5, Layer$, Zcolor$, er1$): Next II9
                  End If
       Case Else: er ("ｳｴﾌﾞﾎﾞﾙﾄ 並び " + Webbolt1$): Stop
       End Select

        
        jX1 = X0: jY1 = Y0 - Steel_H - 文字Y位置2 ':     Call Z_sym(jX1, jY1, 2, "C", 0, 0, 0, Moj1$, Layer$)
        
        If 文字描画$ = "" Then

            jX1 = X0 - 20 * 変換M: jY1 = jY1 - 2.8 * 変換M ':      Call Z_sym(jX1, jY1, 2, "L", 0, 0, 0, Moj2$, Layer$)
            jY1 = jY1 - 2.5 * 変換M ':        Call Z_sym(jX1, jY1, 2, "L", 0, 0, 0, Moj3$, Layer$)
            jY1 = jY1 - 2.8 * 変換M ':        Call Z_sym(jX1, jY1, 2, "L", 0, 0, 0, Moj4$, Layer$)
            End If


      End Sub

Private Sub SC_角度(角度, SN, CS)
    ' 角度　(度)
     r = 角度
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
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub D_Box(X1, Y1, 回転角, b, H, Layer$, Zline$, Zcolor$)
     ' boxｾﾝﾀｰが原点
     '回転角 : 図形回転 反時計回りを+
     'X1,Y1,B,  H
     
     ReDim X(50), Y(50)
     
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     
     XXi = X1: YYi = Y1
     X(1) = XXi - b / 2: X(4) = X(1)
     X(2) = XXi + b / 2: X(3) = X(2)
     Y(1) = YYi + H / 2: Y(2) = Y(1)
     Y(3) = YYi - H / 2: Y(4) = Y(3)

     If 回転角 <> 0 Then er ("回転角<>0  "):  Stop
     Call DLine(X(1), Y(1), X(2), Y(2))
     Call DLine(X(2), Y(2), X(3), Y(3))
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(4), Y(4), X(1), Y(1))
     X1 = XXi: Y1 = YYi


End Sub


'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub D_ste_BH(X1, Y1, 回転角, BH_U, BH_D, H, FrU, FrD, web, JCU, JCD, HR, Layer$, Zline$, Zcolor$)
     'JSTEBH: '.......
     '回転角 図中心 反時計回り+, BH_U,BH_D, H, FrU, FrD, Web
     'JCU,JCD  : ｳｪﾌﾞ位置ずれ
     'HR : BHの変形角度 ﾄﾞ 時計回り+
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     
     r = 回転角
     
     If HR >= 90 Then er ("HR>=90ﾟ"): Stop
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
          Call SC_角度(r, SN_B, CS_B)
          
          For i = 1 To 20
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 20: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     
     
     '上ﾌﾗﾝｼﾞ
     Call DLine(X(1), Y(1), X(3), Y(3))
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(4), Y(4), X(16), Y(16))
     Call DLine(X(1), Y(1), X(16), Y(16))
    
     '下ﾌﾗﾝｼﾞ
     Call DLine(X(9), Y(9), X(10), Y(10))
     Call DLine(X(10), Y(10), X(12), Y(12))
     Call DLine(X(12), Y(12), X(13), Y(13))
     Call DLine(X(9), Y(9), X(13), Y(13))

     'ｳｪﾌﾞ
     Call DLine(X(5), Y(5), X(8), Y(8))
     Call DLine(X(14), Y(14), X(15), Y(15))
    
     X1 = XXi: Y1 = YYi



End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub D_ste_box(X1, Y1, 回転角, b, H, T, br, Layer$, Zline$, Zcolor$)
     'JSTEBOX: '.......
     '回転角(度) 図中心 反時計回り+,  B, H, t,BR
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     r = 回転角

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
          Call SC_角度(r, SN_B, CS_B)
          
          For i = 1 To 20
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 20: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     
     
     'ﾌﾗﾝｼﾞ
     Call DLine(X(1), Y(1), X(2), Y(2))
     Call DLine(X(9), Y(9), X(10), Y(10))
     Call DLine(X(5), Y(5), X(6), Y(6))
     Call DLine(X(13), Y(13), X(14), Y(14))
   
     'ｳｪﾌﾞ
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

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub D_ste_H(X1, Y1, 回転角, b, H, Fr, web, HR, Layer$, Zline$, Zcolor$)
     ' JSTEH: '.......
     '回転角(度) 図中心 反時計回り+,  B,  H, Fr, Web, HR
     
     r = 回転角
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     
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
          Call SC_角度(r, SN_B, CS_B)
          
          For i = 1 To 20
              LLX = X(i): LLY = Y(i): LLL = Sqr(LLX ^ 2 + LLY ^ 2): If LLL = 0 Then LLL = 0.01
              SN_A = LLY / LLL: CS_A = LLX / LLL
              SN_AB = SN_A * CS_B + CS_A * SN_B
              CS_AB = CS_A * CS_B - SN_A * SN_B
              X(i) = LLL * CS_AB: Y(i) = LLL * SN_AB
              Next i
          End If
     
     For i = 1 To 20: X(i) = XXi + X(i): Y(i) = YYi + Y(i): Next i
     
     
     '上ﾌﾗﾝｼﾞ
     Call DLine(X(1), Y(1), X(2), Y(2))
     Call DLine(X(2), Y(2), X(3), Y(3))
     Call DLine(X(3), Y(3), X(4), Y(4))
     Call DLine(X(19), Y(19), X(20), Y(20))
     Call DLine(X(1), Y(1), X(20), Y(20))
       
     '下ﾌﾗﾝｼﾞ
     Call DLine(X(9), Y(9), X(10), Y(10))
     Call DLine(X(10), Y(10), X(11), Y(11))
     Call DLine(X(11), Y(11), X(12), Y(12))
     Call DLine(X(12), Y(12), X(13), Y(13))
     Call DLine(X(13), Y(13), X(14), Y(14))
       
     'ｳｪﾌﾞ
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

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub D_ste_L(X1, Y1, 回転角, b, H, T, Layer$, Zline$, Zcolor$)
     ' JSTEL: '.......
     '回転角 図中心 反時計回り+,  B,  H, t
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     r = 回転角
     
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
          Call SC_角度(r, SN_B, CS_B)
          
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
Sub D_ste_L_r(X1, Y1, 回転角, b, H, T, Layer$, Zline$, Zcolor$)
     ' JSTEL: '.......
     '回転角 図中心 反時計回り+,  B,  H, t
     
     Stop
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     r = 回転角
     
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
          Call SC_角度(r, SN_B, CS_B)
          
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

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
Sub D_ste_MIZO(X1, Y1, 回転角, b, H, Fr, web, Layer$, Zline$, Zcolor$)

     ' JSTEMIZO: '....... [ 型鋼
     '回転角 図中心 反時計回り+,  B,  H, Fr, Web
     
     ReDim X(50), Y(50)
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     r = 回転角
     
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
          Call SC_角度(r, SN_B, CS_B)
          
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
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub D_寸法(X1, Y1, X2, Y2, Moj$, jl, jld, Ldot$, Rdot$, Layer$, Zline$, Zcolor$)
     'Moj$  入力があれば 寸法値を置き換える
     'X1, X2, Y1, Y2(寸法両端の位置原寸)
     'JL(引き出し線長さ+-原寸),JLD(引き出し線出mm)
     'Ldot$="N" 左端Point ﾅｼ, Rdot$="N" 右端Point ﾅｼ,
  
  '変更予定　===> D寸法
'===================================================================================================================================
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     Xi1 = X1: Yi1 = Y1: XI2 = X2: Yi2 = Y2
     Rdot$ = UCase$(Rdot$): Ldot$ = UCase$(Ldot$)
     Spo_LL = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
     If X1 = X2 Then Spo_LL = Y2 - Y1
     If Y1 = Y2 Then Spo_LL = X2 - X1
     If Spo_LL = 0 Then er ("Spo_LL  長さ=0"): Spo_LL = 1: If 世誤CK > 99 Then Stop: 'Stop
     SN = (Y2 - Y1) / Spo_LL: CS = (X2 - X1) / Spo_LL
     If CS <> 0 Then Moj_R = 180 * Atn(SN / CS) / 3.14159265
     If Y1 = Y2 Then Moj_R = 0: SN = 0: CS = 1
     If X1 = X2 Then Moj_R = 90: SN = 1: CS = 0
     Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
        If Ldot$ <> "N" Then Call DPoint(X1, Y1)
        If Rdot$ <> "N" Then Call DPoint(X2, Y2)
     '..... 寸法補助線
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
     '..... 寸法
     Spo_LL = Int(10000 * Abs(Spo_LL) + 0.5) / 10000
     Moj_pos$ = "C": Moj_type = 2.5: Moj_dxL = 0: Moj_dyL = 0.3
     X1 = (Xi1 + XI2) / 2: Y1 = (Yi1 + Yi2) / 2
     jDa$ = F9$(Spo_LL): If Moj$ <> "" Then jDa$ = Moj$
    ' Call Z_sym(X1, Y1, Moj_type, Moj_pos$, Moj_dxL, Moj_dyL, Moj_R, jDa$, Layer$)
     Call DsymC_D(X1, Y1, Moj_R, jDa$)
     X1 = Xi1: Y1 = Yi1: X2 = XI2: Y2 = Yi2
     Moj$ = ""
     End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub D_鉄筋_建築(X0, Y0, Tekin$, ALPKEI, Layer$, Zline$, Zcolor$, er1$)
     'ALPKEI  図形倍率
'===================================================================================================================================
     ' 鉄筋ｺﾝｸﾘｰﾄ造配筋指針･同解説  P67
     P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     
     Te_kei = Val(Mid$(Tekin$, 2))
     If ALPKEI <= 0 Then er1$ = " 図形倍率 <=0 ": Exit Sub
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
     Case Else: er1$ = "鉄筋径がおかしい " + Tekin$
     End Select
     X0 = XXi: Y0 = YYi

     End Sub
'===================================================================================================================================
Sub D_鉄筋_橋脚(X0, Y0, 鉄筋径$)
     'ALPKEI  図形倍率
'===================================================================================================================================
     ' 鉄筋ｺﾝｸﾘｰﾄ造配筋指針･同解説  P67
     'P_Layer_0 = Layer$: P_線種_0 = Zline$:  P_色_0 = Zcolor$
     ALPKEI = P_鉄筋径_倍率
     Te_kei = Val(Mid$(鉄筋径$, 2))
     If ALPKEI <= 0 Then er1$ = " 図形倍率 <=0 ": Exit Sub
     D = ALPKEI * Te_kei / 2 + 8: D2 = 1.1 * D: XXi = X0: YYi = Y0
     Select Case 鉄筋径$
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
                 
                 
     Case Else: 'er1$ = "鉄筋径がおかしい " + 鉄筋径$: er (er1$): If 世誤CK > 99 Then Stop
               'ﾒﾝﾃ　2003.10.31  長瀬さんのバグ対応
     End Select
     X0 = XXi: Y0 = YYi
     End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘
'===================================================================================================================================
Sub D_ハッチ_1(X(), Y(), ni, 角度, Pit, Layer$, Zline$, Zcolor$, er1$)
    ' ﾊｯﾁを描く  -90<=  角度(ﾄﾞ) <=90  Pit:ﾋﾟｯﾁ
    ' ni 点の数
'===================================================================================================================================
    If Pit <= 0 Then er ("*ﾊｯﾁで ﾋﾟｯﾁ<=0"): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
    'Bpit = Pit
    'If Abs(角度) > 90 Then ER ("*ﾊｯﾁで  -90<= 角度  <=90  でない "): Exit Sub
    ReDim X2(ni + 1), Y2(ni + 1)
    For i = 1 To ni: X2(i) = X(i + 1): Y2(i) = Y(i + 1): Next i
    X2(ni) = X(1): Y2(ni) = Y(1)
    Call D_ハッチ_2(X(), Y(), X2(), Y2(), ni, 角度, Pit, Layer$, Zline$, Zcolor$, er1$)
    
    End Sub
'===================================================================================================================================
Sub D_ハッチ_2(X01(), Y01(), X02(), Y02(), ni, INP角度, Pit, Layer$, Zline$, Zcolor$, er1$)
    ' ﾊｯﾁを描く  -90<=  角度(ﾄﾞ) <=90  Pit:ﾋﾟｯﾁ
    ' ni 線の数  (X01,Y01),(X02,Y02)
    ' Bmax,Bmin は図形が Close されていないと計算がおかしい
    
'===================================================================================================================================
    If Pit <= 0 Then er ("*ﾊｯﾁで ﾋﾟｯﾁ<=0"): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
    'Stop
    Bpit = Pit * 変換M: If 変換M = 0 Then Bpit = Pit: '******************** ﾒﾝﾃ
    計算角度 = Abs(INP角度)
    Do: If 計算角度 < 360 Then Exit Do
        計算角度 = 計算角度 - 360
        Loop
        Do: If 計算角度 < 180 Then Exit Do
            計算角度 = 計算角度 - 180
            Loop
        Do: If 計算角度 <= 90 Then Exit Do
        計算角度 = 計算角度 - 180
        Loop
    角度 = 計算角度: If INP角度 < 0 Then 角度 = -角度
    If Abs(角度) > 90 Then er ("*ﾊｯﾁで  -90<= 角度  <=90  でない "):: If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
    
    ReDim b(ni + 1), NN(ni + 1), XX(ni + 1), YY(ni + 1), 順番(ni + 1)
    Select Case 角度
    Case 0:
         Call CALU順序(Y01(), NN(), ni, Bmax, Bmin, e$)
         If Bmin > 0 Then Bstart = Bpit * (1 + Int(Bmin / Bpit)) Else Bstart = Bpit * Int(Bmin / Bpit)
         For BB = Bstart To Bmax Step Bpit
             N交点 = 0
             For i = 1 To ni: Call CALU交点AB(0, BB, X01(i), Y01(i), X02(i), Y02(i), X3, Y3, JA1)
                 If JA1 = 1 Then N交点 = N交点 + 1: XX(N交点) = X3: YY(N交点) = Y3
                 Next i
         
             If N交点 > 1 Then
                 Call CALU順序(XX(), 順番(), N交点, XLLmax, XLLmin, e$): If e$ <> "" Then er ("SUB D_ハッチ_2  " & e$): If 世誤CK > 99 Then Stop
                 For i = 1 To N交点 Step 3:
                     KK1 = 順番(i): KK2 = 順番(i + 1)
                     X1 = XX(KK1): Y1 = YY(KK1): X2 = XX(KK2): Y2 = YY(KK2)
                    ' Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
                     Call DLine(X1, Y1, X2, Y2)
                     Next i
                 End If
             Next BB
    
    Case 90, -90:
         Call CALU順序(X01(), NN(), ni, Bmax, Bmin, e$)
         If Bmin > 0 Then Bstart = Bpit * (1 + Int(Bmin / Bpit)) Else Bstart = Bpit * Int(Bmin / Bpit)
         'Bstart = Bstart + 0.001
         For BB = Bstart To Bmax Step Bpit
             N交点 = 0
             For i = 1 To ni: Call CALU交点XY(BB, X01(i), Y01(i), X02(i), Y02(i), X3, Y3, JA1)
                 If JA1 = 1 Then N交点 = N交点 + 1: XX(N交点) = X3: YY(N交点) = Y3
                 Next i
        
             If N交点 > 1 Then
                 Call CALU順序(YY(), 順番(), N交点, YLLmax, YLLmin, e$): If e$ <> "" Then er ("SUB D_ハッチ_2  " & e$): If 世誤CK > 99 Then Stop
                 For i = 1 To N交点 Step 3:
                     KK1 = 順番(i): KK2 = 順番(i + 1)
                     X1 = XX(KK1): Y1 = YY(KK1): X2 = XX(KK2): Y2 = YY(KK2)
                     'Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
                     Call DLine(X1, Y1, X2, Y2)
                     Next i
                 End If
             Next BB
    
    
    Case Else:
         a1 = Tan(rad(角度)): Bpit = Abs(Bpit / Cos(rad(角度)))
         For i = 1 To ni: b(i) = Y01(i) - a1 * X01(i): Next i
         Call CALU順序(b(), NN(), ni, Bmax, Bmin, e$)
         If Bmin > 0 Then Bstart = Bpit * (1 + Int(Bmin / Bpit)) Else Bstart = Bpit * Int(Bmin / Bpit)
         
         For BB = Bstart To Bmax Step Bpit
             N交点 = 0
             For i = 1 To ni: Call CALU交点AB(a1, BB, X01(i), Y01(i), X02(i), Y02(i), X3, Y3, JA1)
                 If JA1 = 1 Then N交点 = N交点 + 1: XX(N交点) = X3: YY(N交点) = Y3
                 Next i
         
             
            If N交点 > 1 Then
                 Call CALU順序(XX(), 順番(), N交点, XLLmax, XLLmin, e$): If e$ <> "" Then er ("SUB D_ハッチ_2  " & e$): If 世誤CK > 99 Then Stop
                 For i = 1 To N交点 Step 3:
                     KK1 = 順番(i): KK2 = 順番(i + 1)
                     X1 = XX(KK1): Y1 = YY(KK1): X2 = XX(KK2): Y2 = YY(KK2)
                    ' Call Z_Line(X1, Y1, X2, Y2, Layer$, Zline$, Zcolor$)
                     Call DLine(X1, Y1, X2, Y2)
                     Next i
                 End If
             
             Next BB
    End Select
    

    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   ****                                                                                                                           │
'└─────────────────────────────────────────────────────────────────┘


'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Start AutoCad                                                                                                              │
'└─────────────────────────────────────────────────────────────────┘
Sub Dxf_start_AutoCad(outdxf$, LAYER_N, Zlayer$())
     '02_09_21
     ReDim Dxd1$(50)
     
     P_原点X = 0: P_原点Y = 0: ' DXF原点初期化
     
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
     
     用紙$ = "A1"
     Select Case 用紙$
     Case "A1": 用紙B = 841: 用紙D = 594
     Case "A2": 用紙B = 594: 用紙D = 420
     Case "A3": 用紙B = 594: 用紙D = 420
     End Select
     
     'Print #19, "  9": Print #19, "$EXTMIN"
     'Print #19, " 10": Print #19, "0"
     'Print #19, " 20": Print #19, "0"
     
     'Print #19, "  9": Print #19, "$EXTMAX"
     'Print #19, " 10": Print #19, 用紙B * ZU_Scale
     'Print #19, " 20": Print #19, 用紙D * ZU_Scale
     
     'Print #19, "  9": Print #19, "$LIMMIN"
     'Print #19, " 10": Print #19, "0"
     'Print #19, " 20": Print #19, "0"
     
     'Print #19, "  9": Print #19, "$LIMMAX"
     'Print #19, " 10": Print #19, 用紙B * ZU_Scale
     'Print #19, " 20": Print #19, 用紙D * ZU_Scale
     
     
     
     'DDD1 = Int(ZU_Scale / 30): Da$ = "  " + F9$(50):   '線種のグローバルな尺度
     'Print #19, "  9": Print #19, "$LTSCALE": Print #19, " 40": Print #19, Da$
     
     'Print #19, "  9": Print #19, "$PDMODE": Print #19, " 70": Print #19, "  33": '点の表示モード
     'Print #19, "  9": Print #19, "$PDSIZE": Print #19, " 40": Print #19, " 10": '点の表示サイズ
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
        ' Dxd1$(3) = "  0\LTYPE\  2\CONTINUOUS\ 70\    64\  3\実線\ 72\    65\ 73\     0\ 40\0.0"
        ' Dxd1$(4) = "  0\LTYPE\  2\DASHED1\ 70\    64\  3\--  --  --  --  --  --  --  --  \ 72\    65\ 73\     2\ 40\2.5\ 49\1.25\ 49\-1.25"
        ' Dxd1$(5) = "  0\LTYPE\  2\DASHED2\ 70\    64\  3\----    ----    ----    ----    \ 72\    65\ 73\     2\ 40\5.0\ 49\2.5\ 49\-2.5"
        ' Dxd1$(6) = "  0\LTYPE\  2\DASHED3\ 70\    64\  3\------  ------  ------  ------  \ 72\    65\ 73\     2\ 40\5.0\ 49\3.75\ 49\-1.25"
        ' Dxd1$(7) = "  0\LTYPE\  2\CENTER1\ 70\    64\  3\----- - ----- - ----- - ----- - \ 72\    65\ 73\     4\ 40\10.0\ 49\6.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(8) = "  0\LTYPE\  2\CENTER2\ 70\    64\  3\----------  --  ----------  --  \ 72\    65\ 73\     4\ 40\20.0\ 49\12.5\ 49\-2.5\ 49\2.5\ 49\-2.5"
        ' Dxd1$(9) = "  0\LTYPE\  2\PHANTOM1\ 70\    64\  3\--- - - --- - - --- - - --- - - \ 72\    65\ 73\     6\ 40\10.0\ 49\3.25\ 49\-1.25\ 49\1.25\ 49\-1.25\ 49\1.25\ 49\-1.25"
        ' Dxd1$(10) = "  0\LTYPE\  2\PHANTOM2\ 70\    64\  3\--------  -  -  --------  -  -  \ 72\    65\ 73\     6\ 40\20.0\ 49\10.0\ 49\-2.5\ 49\1.25\ 49\-2.5\ 49\1.25\ 49\-2.5"
        ' Dxd1$(11) = "  0\LTYPE\  2\DOT\ 70\    64\  3\-   -   -   -   -   -   -   -   \ 72\    65\ 73\     2\ 40\2.5\ 49\0.625\ 49\-1.875"
        ' Dxd1$(12) = "  0\LTYPE\  2\DUMMY\ 70\    64\  3\ダミー\ 72\    65\ 73\     0\ 40\0.0"
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
   Dxd1$(3) = "  0\LAYER\  5\40\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\躯体\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(4) = "  0\LAYER\  5\41\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\主筋\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(5) = "  0\LAYER\  5\42\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Hoop\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(6) = "  0\LAYER\  5\43\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-3\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(7) = "  0\LAYER\  5\44\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\鉄筋断面\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(8) = "  0\LAYER\  5\45\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\鉄筋Mark\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(9) = "  0\LAYER\  5\46\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Stoper\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(10) = "  0\LAYER\  5\47\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\鉄筋加工図\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(11) = "  0\LAYER\  5\48\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-8\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(12) = "  0\LAYER\  5\49\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Mark\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(13) = "  0\LAYER\  5\4A\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\寸法線\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(14) = "  0\LAYER\  5\4B\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-B\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(15) = "  0\LAYER\  5\4C\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\ETC\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(16) = "  0\LAYER\  5\4D\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Center-Line\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(17) = "  0\LAYER\  5\4E\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\断面位置指定\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(18) = "  0\LAYER\  5\4F\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\0-G\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(19) = "  0\LAYER\  5\50\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\Title\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(20) = "  0\LAYER\  5\51\100\AcDbSymbolTableRecord\100\AcDbLayerTableRecord\  2\図枠\ 70\     0\ 62\     5\  6\Continuous\290\     1\370\    -3\390\1F\1001\TCAD\1000\TCW_LAYER_ORDER\1002\{\1071\        0\1002\}"
   Dxd1$(21) = "  0\ENDTAB"
    
         For ii = 1 To 21:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
    
    
    '[[[ Moji ]]]
         Dxd1$(1) = "  0\TABLE\  2\STYLE\  5\3\100\AcDbSymbolTable\ 70\     1"
         Dxd1$(2) = "  0\STYLE\  5\10\100\AcDbSymbolTableRecord\100\AcDbTextStyleTableRecord\  2\STANDARD\ 70\     0\ 40\0.0\ 41\1.0\ 50\0.0\ 71\     0\ 42\0.2\  3\txt\  4\bigfont.shx"
         Dxd1$(3) = "  0\STYLE\  5\F7\100\AcDbSymbolTableRecord\100\AcDbTextStyleTableRecord\  2\_TCW_TXTSTY_1\ 70\     0\ 40\0.0\ 41\1.0\ 50\0.0\ 71\     0\ 42\250.0\  3\\  4\\1001\ACAD\1000\ＭＳ ゴシック\1071\    32802"
         Dxd1$(4) = "  0\ENDTAB"
         For ii = 1 To 4:      Call Ddata("\", Dxd1$(ii), Ds(), Di(), ni)
              For i2 = 1 To ni: D001$ = Ds(i2): If i2 = 1 Then D001$ = "  0"
                     Print #19, D001$:
                     Next i2
              Next ii
     
     
   Dxd1$(1) = "  0|TABLE|  2|VIEW|  5|5|100|AcDbSymbolTable| 70|     1"
   Dxd1$(2) = "  0|VIEW|  5|52|100|AcDbSymbolTableRecord|100|AcDbViewTableRecord|  2|表示_0| 70|     0| 40|210.0| 10|148.5| 20|105.0| 41|297.0| 11|0.0| 21|0.0| 31|1.0| 12|0.0| 22|0.0| 32|0.0| 42|50.0| 43|0.0| 44|0.0| 50|0.0| 71|     0|281|     0| 72|     0|110|0.0|120|0.0|130|0.0|111|1.0|121|0.0|131|0.0|112|0.0|122|1.0|132|0.0"
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



'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Start                                                                                                                      │
'└─────────────────────────────────────────────────────────────────┘
Sub Dxf_start(outdxf$, LAYER_N, Zlayer$())
     '02_09_21
     ReDim Dxd1$(50)
     
     P_原点X = 0: P_原点Y = 0: ' DXF原点初期化
     
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
     
     用紙$ = "A1"
     Select Case 用紙$
     Case "A1": 用紙B = 841: 用紙D = 594
     Case "A2": 用紙B = 594: 用紙D = 420
     Case "A3": 用紙B = 594: 用紙D = 420
     End Select
     
     Print #19, "  9": Print #19, "$EXTMIN"
     Print #19, " 10": Print #19, "0"
     Print #19, " 20": Print #19, "0"
     
     Print #19, "  9": Print #19, "$EXTMAX"
     Print #19, " 10": Print #19, 用紙B * ZU_Scale
     Print #19, " 20": Print #19, 用紙D * ZU_Scale
     
     Print #19, "  9": Print #19, "$LIMMIN"
     Print #19, " 10": Print #19, "0"
     Print #19, " 20": Print #19, "0"
     
     Print #19, "  9": Print #19, "$LIMMAX"
     Print #19, " 10": Print #19, 用紙B * ZU_Scale
     Print #19, " 20": Print #19, 用紙D * ZU_Scale
     
     
     
     DDD1 = Int(ZU_Scale / 30): Da$ = "  " + F9$(50):   '線種のグローバルな尺度
     Print #19, "  9": Print #19, "$LTSCALE": Print #19, " 40": Print #19, Da$
     
     Print #19, "  9": Print #19, "$PDMODE": Print #19, " 70": Print #19, "  33": '点の表示モード
     Print #19, "  9": Print #19, "$PDSIZE": Print #19, " 40": Print #19, " 10": '点の表示サイズ
     Print #19, "  0": Print #19, "ENDSEC"
     
     
     '[[[ Line Type ]]]
    
         Dxd1$(1) = "  0|SECTION|  2|TABLES"
         Dxd1$(2) = "  0|TABLE|  2|LTYPE| 70|     9"
         Dxd1$(3) = "  0|LTYPE|  2|CONTINUOUS| 70|    64|  3|実線| 72|    65| 73|     0| 40|0.0"
         Dxd1$(4) = "  0|LTYPE|  2|DASHED1| 70|    64|  3|--  --  --  --  --  --  --  --  | 72|    65| 73|     2| 40|2.5| 49|1.25| 49|-1.25"
         Dxd1$(5) = "  0|LTYPE|  2|DASHED2| 70|    64|  3|----    ----    ----    ----    | 72|    65| 73|     2| 40|5.0| 49|2.5| 49|-2.5"
         Dxd1$(6) = "  0|LTYPE|  2|DASHED3| 70|    64|  3|------  ------  ------  ------  | 72|    65| 73|     2| 40|5.0| 49|3.75| 49|-1.25"
         Dxd1$(7) = "  0|LTYPE|  2|CENTER1| 70|    64|  3|----- - ----- - ----- - ----- - | 72|    65| 73|     4| 40|10.0| 49|6.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(8) = "  0|LTYPE|  2|CENTER2| 70|    64|  3|----------  --  ----------  --  | 72|    65| 73|     4| 40|20.0| 49|12.5| 49|-2.5| 49|2.5| 49|-2.5"
         Dxd1$(9) = "  0|LTYPE|  2|PHANTOM1| 70|    64|  3|--- - - --- - - --- - - --- - - | 72|    65| 73|     6| 40|10.0| 49|3.25| 49|-1.25| 49|1.25| 49|-1.25| 49|1.25| 49|-1.25"
         Dxd1$(10) = "  0|LTYPE|  2|PHANTOM2| 70|    64|  3|--------  -  -  --------  -  -  | 72|    65| 73|     6| 40|20.0| 49|10.0| 49|-2.5| 49|1.25| 49|-2.5| 49|1.25| 49|-2.5"
         Dxd1$(11) = "  0|LTYPE|  2|DOT| 70|    64|  3|-   -   -   -   -   -   -   -   | 72|    65| 73|     2| 40|2.5| 49|0.625| 49|-1.875"
         Dxd1$(12) = "  0|LTYPE|  2|DUMMY| 70|    64|  3|ダミー| 72|    65| 73|     0| 40|0.0"
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

'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_End                                                                                                                        │
'└─────────────────────────────────────────────────────────────────┘
Sub Dxf_End()
     'Jend: '..........
     Print #19, "  0": Print #19, "ENDSEC"
     Print #19, "  0": Print #19, "EOF"
     Close #19

     End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Line                                                                                                                       │
'└─────────────────────────────────────────────────────────────────┘
Sub Z_Line(X1, Y1, X2, Y2, LAYER0$, Zline0$, Zcolor0$)
     'X1,X2,Y1,Y2
     Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Dxf_Line"): Stop
     
     Print #19, "  0": Print #19, "LINE"
     Print #19, "  8": Print #19, Layer$
     Print #19, "  6": Print #19, Zline$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": If P_原点X + X1 = 0 Then Print #19, "0.0" Else Print #19, P_原点X + X1
     Print #19, " 20": If P_原点Y + Y1 = 0 Then Print #19, "0.0" Else Print #19, P_原点Y + Y1
     Print #19, " 11": If P_原点X + X2 = 0 Then Print #19, "0.0" Else Print #19, P_原点X + X2
     Print #19, " 21": If P_原点Y + Y2 = 0 Then Print #19, "0.0" Else Print #19, P_原点Y + Y2

     End Sub
Sub Dxf_Line(X1, Y1, X2, Y2)
     'X1,X2,Y1,Y2
     'Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
  '   Call TTT(P_Layer_0, P_線種_0, P_色_0): If Layer$ = "" Then ER ("Dxf_Line"): Stop
     
     Print #19, "  0": Print #19, "LINE"
     Print #19, "  8": Print #19, P_Layer_線
     Print #19, "  6": Print #19, P_線種_線
     Print #19, " 62": Print #19, P_色_線
     Print #19, " 10": Print #19, P_原点X + X1
     Print #19, " 20": Print #19, P_原点Y + Y1
     Print #19, " 11": Print #19, P_原点X + X2
     Print #19, " 21": Print #19, P_原点Y + Y2

     End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Point                                                                                                                      │
'└─────────────────────────────────────────────────────────────────┘
Sub Z_point(X1, Y1, LAYER0$, Zcolor0$)
     Layer$ = LAYER0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Z_Point"): Stop
     Print #19, "  0": Print #19, "POINT"
     Print #19, "  8": Print #19, Layer$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": Print #19, P_原点X + X1
     Print #19, " 20": Print #19, P_原点Y + Y1
     End Sub

Sub Dxf_point(X1, Y1)
     'Layer$ = LAYER0$: Zcolor$ = Zcolor0$
     'Call TTT(P_Layer_0, Zline$, Zcolor$): If Layer$ = "" Then ER ("Dxf_Point"): Stop
     Print #19, "  0": Print #19, "POINT"
     Print #19, "  8": Print #19, P_Layer_点
     Print #19, " 62": Print #19, P_色_点
     Print #19, " 10": Print #19, P_原点X + X1
     Print #19, " 20": Print #19, P_原点Y + Y1
     End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Circle                                                                                                                     │
'└─────────────────────────────────────────────────────────────────┘
Sub Z_circle(X0, Y0, D, LAYER0$, Zline0$, Zcolor0$)
     'X1,Y1,D(半径)
      Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Z_cir"): Stop
     Print #19, "  0": Print #19, "CIRCLE"
     Print #19, "  8": Print #19, Layer$
     Print #19, "  6": Print #19, Zline$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": Print #19, P_原点X + X0
     Print #19, " 20": Print #19, P_原点Y + Y0
     Print #19, " 40": Print #19, D
     'Print #19, " 39": Print #19, 1#: '*****
     End Sub
Sub Dxf_circle(X0, Y0, r)
     'X1,Y1,r(半径)
      'Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     'Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then ER ("Z_cir"): Stop
     Print #19, "  0": Print #19, "CIRCLE"
     Print #19, "  8": Print #19, P_Layer_円
     Print #19, "  6": Print #19, P_線種_円
     Print #19, " 62": Print #19, P_色_円
     Print #19, " 10": Print #19, P_原点X + X0
     Print #19, " 20": Print #19, P_原点Y + Y0
     Print #19, " 40": Print #19, r
     'Print #19, " 39": Print #19, 1#: '*****
     End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   DXF_Arc                                                                                                                        │
'└─────────────────────────────────────────────────────────────────┘
Sub Z_arc(X0, Y0, D, r1, r2, LAYER0$, Zline0$, Zcolor0$)
     'X1,Y1,D,r1,r2(ﾄﾞ)
     Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then er ("Z_arc"): Stop
     Print #19, "  0": Print #19, "ARC"
     Print #19, "  8": Print #19, Layer$
     Print #19, "  6": Print #19, Zline$
     Print #19, " 62": Print #19, Zcolor$
     Print #19, " 10": Print #19, P_原点X + X0
     Print #19, " 20": Print #19, P_原点Y + Y0
     Print #19, " 40": Print #19, D
     Print #19, " 50": If r1 = 0 Then Print #19, " 0.0" Else Print #19, r1
     Print #19, " 51": If r2 = 0 Then Print #19, " 0.0" Else Print #19, r2
     End Sub
Sub Dxf_arc(X0, Y0, D, r1, r2)
     'X1,Y1,D,r1,r2(ﾄﾞ)
     'Layer$ = LAYER0$: Zline$ = Zline0$: Zcolor$ = Zcolor0$
     'Call TTT(Layer$, Zline$, Zcolor$): If Layer$ = "" Then ER ("Z_arc"): Stop
     Print #19, "  0": Print #19, "ARC"
     Print #19, "  8": Print #19, P_Layer_Arc
     Print #19, "  6": Print #19, P_線種_Arc
     Print #19, " 62": Print #19, P_色_Arc
     Print #19, " 10": Print #19, P_原点X + X0
     Print #19, " 20": Print #19, P_原点Y + Y0
     Print #19, " 40": Print #19, D
     Print #19, " 50": If r1 = 0 Then Print #19, " 0.0" Else Print #19, r1
     Print #19, " 51": If r2 = 0 Then Print #19, " 0.0" Else Print #19, r2
     End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Sym  AutoCad                                                                                                               │
'└─────────────────────────────────────────────────────────────────┘
Sub Dxf_sym_AutoCad(X0, Y0, 文字位置, MR, jDa$)
     'X0,Y0,Msize,文字位置,MdxL,MdyL,MR,Jda$
      MdxL = P_Mdx: ' MdxL (mm)
      MdyL = P_Mdy: ' MdyL (mm)
     ' exp $LT=1.20\_______

     'MojWL$ = "0.55"
     
     Dxf_Msize = 変換M * Sub倍率
     If Trim$(jDa$) = "" Then Exit Sub
     
     Msize = P_文字_size_0
     MojWL$ = "1.0"
     NKANJI = N漢字(jDa$)
     If NKANJI > 0 Then MojWL$ = "1.0": ' 漢字
     
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
     
     Select Case 文字位置
        Case "L", "LD": Moj_LCR_XL = 0:                             ' 左寄り
        Case "C", "CD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: ' 中央
        Case "R", "RD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit):     ' 右寄り
        Case "LC": Moj_LCR_XL = 0: MdyL = MdyL - MojH / 2: ' 中央
        Case "CC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: MdyL = MdyL - MojH / 2:  ' 中央
        Case "RC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit): MdyL = MdyL - MojH / 2:   ' 中央
        
        Case Else: er ("文字位置=" + 文字位置 + " L or C or R ﾃﾞﾅｲ"): Stop
        End Select
     
     'MdyL = -P_文字_size_0 / 2:  ' 倍率 *は不必要

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
     Print #19, "  8": Print #19, P_Layer_文字
     
     Print #19, " 10": Print #19, P_原点X + X0 + Moj_XL
     Print #19, " 20": Print #19, P_原点Y + Y0 + Moj_YL

    Print #19, " 40": Print #19, MojH * Dxf_Msize:  '* ZU_Scale
   '  Print #19, " 40": Print #19, MojH * ZU_Scale
     Print #19, " 41": Print #19, MojWL$
     Print #19, " 50": Print #19, MR
     Print #19, "  1": Print #19, jDa$
     Select Case 文字位置
        Case "L", "LC", "LD": ' 左寄り
        Case "C", "CC", "CD": ' 中央
                  Print #19, " 72": Print #19, "   1"
                  Print #19, " 11": Print #19, P_原点X + X2: Print #19, " 21": Print #19, P_原点Y + Y2
        
        Case "R", "RC", "RD": ' 右寄り
                  Print #19, " 72": Print #19, "   2"
                  Print #19, " 11": Print #19, P_原点X + X2: Print #19, " 21": Print #19, P_原点Y + Y2
        Case Else: er ("文字位置=" + 文字位置 + " L or C or R ﾃﾞﾅｲ"): Stop
        End Select
     
  '***********************
     Print #19, "  7": Print #19, "_TCW_TXTSTY_1"



     End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│   Dxf_Sym                                                                                                                        │
'└─────────────────────────────────────────────────────────────────┘
Sub Dxf_sym(X0, Y0, 文字位置, MR, jDa$)
     'X0,Y0,Msize,文字位置,MdxL,MdyL,MR,Jda$
      MdxL = P_Mdx: ' MdxL (mm)
      MdyL = P_Mdy: ' MdyL (mm)
     ' exp $LT=1.20\_______

     'MojWL$ = "0.55"
     
     Dxf_Msize = 変換M * Sub倍率
     If Trim$(jDa$) = "" Then Exit Sub
     
     Msize = P_文字_size_0
     MojWL$ = "1.0"
     NKANJI = N漢字(jDa$)
     If NKANJI > 0 Then MojWL$ = "1.0": ' 漢字
     
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
     
     Select Case 文字位置
        Case "L", "LD": Moj_LCR_XL = 0:                             ' 左寄り
        Case "C", "CD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: ' 中央
        Case "R", "RD": Moj_LCR_XL = Moj_n * (MojW + Moj_pit):     ' 右寄り
        Case "LC": Moj_LCR_XL = 0: MdyL = MdyL - MojH / 2: ' 中央
        Case "CC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit) / 2: MdyL = MdyL - MojH / 2:  ' 中央
        Case "RC": Moj_LCR_XL = Moj_n * (MojW + Moj_pit): MdyL = MdyL - MojH / 2:   ' 中央
        
        Case Else: er ("文字位置=" + 文字位置 + " L or C or R ﾃﾞﾅｲ"): Stop
        End Select
     
     'MdyL = -P_文字_size_0 / 2:  ' 倍率 *は不必要

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
     Print #19, "  8": Print #19, P_Layer_文字
     
     Print #19, " 10": Print #19, P_原点X + X0 + Moj_XL
     Print #19, " 20": Print #19, P_原点Y + Y0 + Moj_YL

    Print #19, " 40": Print #19, MojH * Dxf_Msize:  '* ZU_Scale
   '  Print #19, " 40": Print #19, MojH * ZU_Scale
     Print #19, " 41": Print #19, MojWL$
     Print #19, " 50": Print #19, MR
     Print #19, "  1": Print #19, jDa$
     Select Case 文字位置
        Case "L", "LC", "LD": ' 左寄り
        Case "C", "CC", "CD": ' 中央
                  Print #19, " 72": Print #19, "   1"
                  Print #19, " 11": Print #19, P_原点X + X2: Print #19, " 21": Print #19, P_原点Y + Y2
        
        Case "R", "RC", "RD": ' 右寄り
                  Print #19, " 72": Print #19, "   2"
                  Print #19, " 11": Print #19, P_原点X + X2: Print #19, " 21": Print #19, P_原点Y + Y2
        Case Else: er ("文字位置=" + 文字位置 + " L or C or R ﾃﾞﾅｲ"): Stop
        End Select
     
     

     End Sub

Private Sub TTT(Layer$, Zline$, Zcolor$)
    If Layer$ = "" Then Layer$ = Zlayer$(18)
    If Zline$ = "" Then Zline$ = "CONTINUOUS"
    If Zcolor$ = "" Then Zcolor$ = "2"
    End Sub

