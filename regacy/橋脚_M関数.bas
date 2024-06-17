Attribute VB_Name = "橋脚_M関数"
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃　　　　　　　橋脚_M関数                                    　　　　　　　　　　　　　　　  　　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┃           2003.10.27                                  　　　　　　　　　　　　　　　　　　   　　　　　　　　　　　┃
'┃　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
'
'
'*************************************************************************************************************************************************************
'
' gTips Library - www.vbvbvb.com
'
' このサンプルプログラムの使用に関して、直接的または間接的に生じるいっさいの損害について、当社は如何なる責任も負わ
' ないものとします。ここに掲げる点に関しては、このサンプルプログラムの使用をもって、同意されたものとみなします。
'
' (c)1996-2000 galliver, inc. all rights reserved.
'
'Option Explicit

' Form構造で使用
' 独自のキャレットを作成する関数の宣言
Declare Function CreateCaret Lib "user32.dll" (ByVal hwnd As Long, ByVal hBitmap As Long, ByVal nWidth As Long, ByVal nHeight As Long) As Long

' キャレットを破棄する関数の宣言
Declare Function DestroyCaret Lib "user32.dll" () As Long

' キャレットを非表示にする関数の宣言
Declare Function HideCaret Lib "user32.dll" (ByVal hwnd As Long) As Long

' キャレットを表示する関数の宣言
Declare Function ShowCaret Lib "user32.dll" (ByVal hwnd As Long) As Long

'*************************************************************************************************************************************************************
'
'        [[[[[ Fuction    1993-08-07   ]]]]]
'
     Public 世_Form_個数 As Integer
     Public 構造_Form(200) As New Form_橋脚
     Public 世_構造Form_No As Integer

        Public SYS_dsk As String
        Public Data_dsk  As String
        Public Dxf_dsk  As String
        Public 橋脚_Data_dsk As String
        Public TEMP_Data_dsk As String
        Public SS1床_Data_dsk As String
              
       
        Public P_code_1$, P_code_2$, P_code_3$, P_code_4$, P_code_5$
        Public P_code_6$, P_code_7$, P_code_8$, P_code_9$, P_code_10$
        Public 世誤CK As Single
            ' 世誤CK  >=100   stop
        Public 世er As String
        
        Public 世_前Branc$: '  UXF　data の前のﾌﾞﾗﾝｸ
        Public 世NG$(2000), NG数 As Single
        
        Public 世f_end$: ' Ran File の文字の End ﾏｰｸ
     Public 世検索_Type$, 世検索_文字$, 世検索_OPTIONS:  ', Form構造で使用
        
        Public 世界_フォルダ名$
        
        Public 結果_File$, 結果_File2$, 表紙出力$
       
        Public π As Double
        Public 世_改Page$, Pend As Single, Pa As Single, Npage As Single, 改行間隔 As Single, br$
        Public LP_scale As Single: ' ﾌﾟﾘﾝﾀｰ GRAP ｽｹｰﾙ
     
        Public 構造ブラウザ$
        Type CRTDATA
             内容 As String * 350
             End Type
        Public Data_File名$, CRT_File名$
        
        Public 橋脚_Data名$
        Public 橋脚_Data入力$
        Public 世界出力項目$
        
        Public 室名入力$, 電卓入力$
        Public 世構造文字SIZE As Single
        Public 世PROGRAM$
        Public 世SI変換 As Single
        Public 世荷重単位$
        
       Public 世View$:  ' CRT 出力 View
      Public 世_実行位置$, 世_実行位置2$
        
        Public 世荷実行位置$
        
        Public 出力_CONT$

      Public EMS0$, EMS1$, EMS2$, EMS3$, EMS4$, EMS5$, EMS99$
       
      Public Ds$(1500), Ds1$(1500), Ds2$(1500), Ds3$(1500)
      Public Di(1500), Di1(1500), Di2(1500), Di3(1500), Di4(1500)
      Public IDi(1500) As Integer, IDi1(1500) As Integer, IDi2(1500) As Integer
      Public ADDi(100, 100)
      
      Public Dlp$(5000), 仮Dlp$(5000), Lm As Integer, Dpit As Single
    '  Public Rob_Text$(1000)
      
      Public SDi1(1500) As Single, SDi2(1500) As Single, SDi3(1500) As Single: 'Test 用
      Public LDi1(1500) As Long, LDi2(1500) As Long, LDi3(1500) As Long:  'Test 用
       
      Public XY位置$, Old_XY位置$

      Public 各NG箇所数 As Integer, ΣNG箇所数 As Integer, NG項目$(5000)
        
      Public twip As Single

      Public cr As String
      Public 橋脚_Dir1$

      Dim oo

'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃
'┃　　　dsk2     ﾄﾞﾗｲﾌﾞ決定  Robot 用
'┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub dsk2()
    
    
     世f_end$ = Chr(9)
     cr = Chr(13) + Chr(10)
    
    'File1.Path = Dir1.Path
    'D1$ = MDIForm_橋脚.Pa
    橋脚_Dir1$ = App.Path + "\"
    
    PROGRAM_data$ = 橋脚_Dir1$ + "橋脚_Dir.dat"
    
    世構造文字SIZE = 9
    世誤CK = 0: 世er = ""
     
     '世誤CK = 100:     ' ｴﾗｰでStop
     ' 世誤CK = 200:     ' Sub ﾙｰﾁﾝ内ｴﾗｰでStop
    
    
    
    Dxf_dsk = 橋脚_Dir1$ + "Dxf_File\"
    橋脚_Data_dsk = 橋脚_Dir1$ + "User\":     RET$ = Dir(橋脚_Data_dsk, 16): If RET$ = "" Then MkDir 橋脚_Data_dsk
    
    
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
    
    
    SYS_dsk = 橋脚_Dir1$ + "System\":       RET$ = Dir(SYS_dsk, 16): If RET$ = "" Then MkDir SYS_dsk
    
    
    TEMP_Data_dsk = 橋脚_Dir1$ + "Temp\":   RET$ = Dir(TEMP_Data_dsk, 16): If RET$ = "" Then MkDir TEMP_Data_dsk
    
    
    '[[[ Dxf File ]]]
           RET$ = Dir(Dxf_dsk, 16): If RET$ = "" Then er (Dxf_dsk + " が無い  "): 'MkDir Dxf_dsk
    
    
    

    RET$ = Dir(橋脚_Dir1$ + "File_user.dat")
    
    If RET$ = "" Then
         Open 橋脚_Dir1$ + "File_user.dat" For Output As #1
         Print #1, 橋脚_Data_dsk
         Close #1
         Else
         Open 橋脚_Dir1$ + "File_user.dat" For Input As #1
         Input #1, D10$
         橋脚_Data_dsk = D10$
         Close #1
         End If
    
    
     
    Data_dsk = 橋脚_Data_dsk
    
    
   ' If Dir(橋脚_Data_dsk, 16) = "" Then ER (橋脚_Data_dsk + " が無い  "): 'MkDir 橋脚_Data_dsk:    'User ｻﾌﾞﾃﾞﾞｨﾚｸﾄﾘがないので作る
    If Dir(橋脚_Data_dsk, 16) = "" Then MkDir 橋脚_Data_dsk:     'User ｻﾌﾞﾃﾞﾞｨﾚｸﾄﾘがないので作る
     
     
     
     橋脚_Data名$ = "橋脚図化"
     
     '橋脚_Data名$ = Data_dsk$ & "橋脚図化.dat"
     'Fn$ = Data_dsk$ &+橋脚_Data名$+ ".dat"
     
     橋脚_Data入力$ = ""
    
    
    π = 3.14159265359: ' 4*ATN(1)
    
    twip = 56.7: ' /cm
    
    End Sub



'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃
'┃　　　計算結果     Err ck 以後計算
'┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub 計算結果(Cda$, dblResult As Double, err1$)
    ' 2001_5_24
'   Dim objScriptControl   As ScriptControl
    
    Dim ii As Integer, ni As Integer, ni3   As Integer, Sii As Integer
    Dim Moj_n As Integer
    Dim START_ni As Integer
    
    '***********************************************************
   ' Set objScriptControl = Form関数.ScriptControl1
    Set objScriptControl = Form_橋脚.ScriptControl1
    '***********************************************************
    
    
    
    ' 言語に「VBScript」を選択
    
    objScriptControl.Language = "VBScript" ' Form Load になる
    ' 文字列式を計算
   ' Stop

    err1$ = ""
    dblResult = 0
   '    小数点桁数 = 3
    DD0$ = Trim(Cda$)
    
    If InStr(DD0$, "　") > 0 Then err1$ = "漢字ﾌﾞﾗﾝｸ": Exit Sub
    If InStr(DD0$, " ") > 0 Then err1$ = "途中にﾌﾞﾗﾝｸ": Exit Sub
    
    If InStr(DD0$, "++") > 0 Then err1$ = "++": Exit Sub
    If InStr(DD0$, "+-") > 0 Then err1$ = "+-": Exit Sub
    If InStr(DD0$, "-+") > 0 Then err1$ = "-+": Exit Sub
    If InStr(DD0$, "--") > 0 Then err1$ = "--": Exit Sub
    If InStr(DD0$, "*+") > 0 Then err1$ = "*+": Exit Sub
    If InStr(DD0$, "*-") > 0 Then err1$ = "*-": Exit Sub
    If InStr(DD0$, "/+") > 0 Then err1$ = "/+": Exit Sub
    If InStr(DD0$, "/-") > 0 Then err1$ = "/-": Exit Sub
    
    'If 電卓_文字_0_ck$ = "Y" Then  ' 計算式の文字を +. -. *. /. ck
         If InStr(DD0$, "+.") > 0 Then err1$ = "+.": Exit Sub
         If InStr(DD0$, "-.") > 0 Then err1$ = "-.": Exit Sub
         If InStr(DD0$, "*.") > 0 Then err1$ = "*.": Exit Sub
         If InStr(DD0$, "/.") > 0 Then err1$ = "/.": Exit Sub
     '    End If
    
    
    DD1$ = DD0$
    Do:  ni = InStr(DD1$, "√"):
         If ni = 0 Then Exit Do
         D1$ = Mid$(DD1$, 1, ni - 1):   D2$ = Mid(DD1$, ni + 1)
         DD1$ = D1$ + "SQR" + D2$
         Loop
    
    'If 電卓_文字ck$ = "Y" Then
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
              Case "E":  ' OK とする
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
    
   ' If Lbl_角度.Caption = "度" Then
        
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
               If ni3 = 0 Then err1$ = " sin(  ) ﾚﾍﾞﾙ ": Exit Sub
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
               If ni3 = 0 Then err1$ = " cos(  ) ﾚﾍﾞﾙ ": Exit Sub
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
               If ni3 = 0 Then err1$ = " tan(  ) ﾚﾍﾞﾙ ": Exit Sub
               D1$ = Mid$(DD1$, 1, ni + 3):
               D2$ = Mid$(DD1$, ni + 4, ni3 - ni - 4)
               D3$ = Mid(DD1$, ni3)
               DD1$ = D1$ + "(" + D2$ + ")*3.14159265358979/180" + D3$
          Loop
        
       ' End If
    
    '******** 計算  ******************************************
    On Error GoTo Scripterr1
    dblResult = objScriptControl.Eval(DD1$)
    On Error GoTo 0
    '*********************************************************
    
    
    ' 計算結果を表示
    'Select Case 小数点桁数
    'Case Is < 0: 計算_結果$ = Str(dblResult)
    'Case 0
    '            計算_結果$ = Format(dblResult, "##0")
    'Case Else:
    '            結果Format$ = "###0." + Mid("0000000000000000", 1, 小数点桁数)
    '            計算_結果$ = Format(dblResult, 結果Format$)
    'End Select

    ' With Clipboard
    '       .Clear
    '       .SetText 計算_結果$:  '
    '       End With
    
    '結果$ = 計算_結果$
    
    Exit Sub
    
Scripterr1:
    err1$ = " (  " + Error$ + " ) "
    Resume 100: ' NEXT はだめ
    
100: ' Call 構文ERR(ERR1$)
     計算_結果$ = " ・Error " + err1$ + " が有る"
    On Error GoTo 0
    
    End Sub

Sub calu2(ByVal Cda As String, ByRef Scda As Variant, ByRef er1 As String)
    ' 橋脚専用 2003.9.1
    '  +  のみ考慮
    Dim ii As Integer, ni As Integer, Ds(200) As String, Di(200) As Variant
    er1 = F_数式ck0s(Cda): If er1 <> "" Then Scda = 99999: Exit Sub
    Scda = 0: er1 = ""
    Call Ddata("+", Cda, Ds(), Di(), ni)
    For ii = 1 To ni
    Scda = Scda + Di(ii)
       Next ii
    
    End Sub

Sub calu(Cda$, Scda, er1$)
    Dim dblResult As Double
    
    Call 計算結果(Cda$, dblResult, er1$)
    
    Scda = dblResult
    Select Case er1$
    Case "": If Abs(Val(Cda$) - Scda) > 0.000001 Then Cda$ = Cda$ + "=" + f3(Scda)
    Case Else:
            If InStr(Cda$, "O") > 0 Then er1$ = er1$ + " ( O ｵｰ) が有る "
            If InStr(Cda$, ",") > 0 Then er1$ = er1$ + " ( , ｺﾝﾏ) が有る "
            er1$ = er1$ + " 計算式 ｴﾗｰ"
    End Select
            
    End Sub

Function F_誤差(数値, 有効桁)
    ' Abs(数値) < 有効桁(少数点以下)  の場合 O とする
    丸め = 10 ^ 有効桁
    XXX0 = 数値:  XXX = 1: If 数値 < 0 Then XXX = -1: XXX0 = -数値
    F_誤差 = XXX * Int(XXX0 * 丸め) / 丸め
    End Function

'======================================================================================================================
'======================================================================================================================
Sub CALU順序(数値(), 順番(), n, 数値max, 数値min, e$)
'======================================================================================================================
    ' n個の Data
    ' 数値小さい順に順番を付ける  数値max, 数値min
    ' 順番(i)   i番目の数の順番    数値(順番(3)) 3番目に値小さい値
    
    ReDim 順番(n + 1)
    e$ = "": 数値max = 数値(1): 数値min = 数値(1)
    For i = 1 To n: 順位 = 1
    For j = 1 To n
       Select Case 数値(i) - 数値(j)
       Case Is > 0: 順位 = 順位 + 1
       Case 0: If i > j Then 順位 = 順位 + 1
       Case Else
       End Select
       Next j
       If 順位 = 0 Then e$ = "順位 = 0"
       順番(順位) = i
    Next i
    数値min = 数値(順番(1)): 数値max = 数値(順番(n))
    
    End Sub

'======================================================================================================================
Sub CALUAB(X1, Y1, X2, Y2, l, a, b)
    '2点を通る関数に垂直に L 移動した直線  Y=A*X+B で AとBを計算
    ' (X1,Y1),(X2,Y2)の方向を考慮  L>0 直線の進行方向の左に移動
    If X2 = X1 Then a = 0: b = 0: Exit Sub
    c = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): D = X2 - X1: H = l * c / D
    a = (Y2 - Y1) / (X2 - X1): b = Y1 - a * X1 + H
    End Sub
Sub CALUABD(X1, Y1, X2, Y2, l, a, b)
    '2点を通る関数に垂直に L 移動した直線  Y=A*X+B で AとBを計算
    ' (X1,Y1),(X2,Y2)の方向を考慮しない L>0 直線の絶対座標の上に移動
    If X2 = X1 Then a = 0: b = 0: Exit Sub
    c = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2): D = X2 - X1: H = l * c / Abs(D)
    a = (Y2 - Y1) / (X2 - X1): b = Y1 - a * X1 + H
    End Sub
Sub CALUAB1(X1, Y1, X2, Y2, a, b)
    '2点の中芯を通り2点を通る直線に垂直な直線  Y=A*X+B で AとBを計算
    If Y1 = Y2 Then a = 0: b = 0: Exit Sub: 'X=(X1+X2)/2
    
    X0 = (X1 + X2) / 2: Y0 = (Y1 + Y2) / 2
    a = -(X2 - X1) / (Y2 - Y1): b = Y0 - a * X0
    End Sub
Sub CALUAB垂線(X1, Y1, X2, Y2, X3, Y3, a, b)
    '2点(X1,Y1),(X2,Y2)に垂直で 点(X3,Y3)を通る直線  Y=A*X+B で AとBを計算
    If Y1 = Y2 Then a = 0: b = 0: Exit Sub: 'X=(X1+X2)/2
    Call CALUAB1(X1, Y1, X2, Y2, a, b)
    b = Y3 - a * X3
    End Sub
Sub CALUAB2分角(X0, Y0, X1, Y1, X2, Y2, a, b)
    '点(X0,Y0)から2点(X1,Y1),(X2,Y2)通る直線の角度を2等分した角度で 点(X0,Y0)を通る直線  Y=A*X+B で AとBを計算
    Call calu角度1(X0, Y0, X1, Y1, r1)
    Call calu角度1(X0, Y0, X2, Y2, r2)
    a = (r1 + r2) / 2
    If a = 90 Or a = 180 Then a = 0: b = 0: Exit Sub
    a = Tan(3.1415927 * a / 180)
    b = Y0 - a * X0
    End Sub
'======================================================================================================================
Sub CALUCIR3(X1, Y1, X2, Y2, X3, Y3, X0, Y0, r, r1, r3)
    '97_9_12
    '3点を通る円の中芯(X0,Y0), 半径(r),    開始角(r1), 終始角(r3) の計算
    ' 位置                (X2,Y2)は中間点
    '            (X1,Y1)              (X3,Y3)
    '
    ' R=0 はｴﾗｰ
    
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
    Call calu角度1(X0, Y0, X1, Y1, r1)
    Call calu角度1(X0, Y0, X2, Y2, r2)
    Call calu角度1(X0, Y0, X3, Y3, r3)
    
    
    Select Case r3 - r1
    Case Is > 0: If r2 >= r1 And r2 < r3 Then BB = 1 Else BB = -1
    Case O: BB = 0
    Case Is < 0: If r2 >= r3 And r2 < r1 Then BB = -1 Else BB = 1
    End Select
    
    If BB < 0 Then r5 = r3: r3 = r1: r1 = r5
    End Sub
Sub calu角度1(X1, Y1, X2, Y2, D)
    '97_9_12
    '(X1,Y1),(X2,Y2) 間の角度(D°)を計算    0≦ D <360
    D = Calu角度(X1, Y1, X2, Y2)
    End Sub
Sub calu接円中心1(X1, Y1, X2, Y2, X3, Y3, r, X0, Y0, X4, Y4, X5, Y5, r4, r5)
    '97_9_12
    '点1-2を通る直線 と 点3-4を通る直線に半径(r)で接する 円の中芯(X0,Y0)と 接点(X4,Y4),(X5,Y5)を求める
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
        Case 1: X0 = X2: Y0 = Y2: er ("System  SUB calu接円中心1  "):  If 世誤CK > 99 Then Stop
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
        Case 2: X0 = X2: Y0 = Y2: er ("System  SUB calu接円中心1  "): If 世誤CK > 99 Then Stop:  'Else 世er = "*": Exit Sub
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
    Call CALUP垂点(X1, Y1, X2, Y2, X0, Y0, X4, Y4)
    Call CALUP垂点(X2, Y2, X3, Y3, X0, Y0, X5, Y5)
    
    Call calu角度1(X0, Y0, X4, Y4, r4)
    Call calu角度1(X0, Y0, X5, Y5, r5)
    Call calu角度1(X0, Y0, X2, Y2, r2)
    
    Select Case r5 - r4
    Case Is > 0: If r2 >= r4 And r2 < r5 Then BB = 1 Else BB = -1
    Case O: BB = 0
    Case Is < 0: If r2 >= r5 And r2 < r4 Then BB = -1 Else BB = 1
    End Select
    
    If BB < 0 Then r7 = r5: r5 = r4: r4 = r7
    
    End Sub
'======================================================================================================================
Sub CALU交点AB(a, b, X1, Y1, X2, Y2, X3, Y3, er1)
    ' ﾊｯﾁ専用
    '直線  Y=A*X+B  線分(X1,Y1),(X2,Y2) の交点(X3,Y3)を求める
    ' ER1=-1 交点なし
    ' ER1=0 線分内に交点なし
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
               Y3 = b: X3 = 0: er1 = -1: ' X3はﾀﾞﾆｰ
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


Function CALU交点X(Y, X1, Y1, X2, Y2)
    '点(X1,Y1),(X2,Y2)を通る直線 と  Y座標の交点を求める
    If Y1 = Y2 Then CALU交点X = -999990: Exit Function
    Select Case X2 - X1
    Case 0: CALU交点X = X1
    Case Else: a = (Y2 - Y1) / (X2 - X1): b = Y1 - a * X1: CALU交点X = (Y - b) / a
    End Select
    
    End Function


Sub CALU交点XY(a, X1, Y1, X2, Y2, X3, Y3, er1)
    ' ﾊｯﾁ専用
    '直線  X=A  線分(X1,Y1),(X2,Y2) の交点(X3,Y3)を求める
    ' ER1=-1 交点なし
    ' ER1=0 線分内に交点なし
    er1 = 0
    If X1 = X2 Then CaseNo = 1
    If Y1 = Y2 Then CaseNo = 2
    
    X3 = a
    Select Case CaseNo
    Case 1:    ' X1=X2
               Y3 = 0: er1 = -1: ' Y3はﾀﾞﾆｰ
    
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
    '直線  Y=A1*X+B1 と Y=A2*X+B2 の交点計算
    If a1 = a2 Then X = 0: Y = 0: Exit Sub
       
    X = -(B1 - B2) / (a1 - a2):  Y = a1 * X + B1
    End Sub
Sub CALUP2(X1, Y1, X2, Y2, X3, Y3, X4, Y4, X0, Y0, JA, e$)
    ' 線分(X1,Y1),(X2,Y2) と 線分(X3,Y3),(X4,Y4) の交点(X0,Y0)を求める
    'JA=-1 交点無し
    'JA=0 線分(X1,Y1),(X2,Y2) 外でまじあっている
    'JA=1 線分(X1,Y1),(X2,Y2) 内でまじあっている
    'JA=2 線分(X3,Y3),(X4,Y4) 内でまじあっている
    'JA=3 線分が交点している
    JA = -1: e$ = "": X0 = -99999: Y0 = -99999
    a1 = 0: B1 = 0: C1 = 0: a2 = 0: B2 = 0: C2 = 0
    '2点X(1),Y(1),X(2),Y(2)を通る関数  Y0=A1*X0+B1  A1とB1を計算
       If X1 <> X2 Then Call CALUAB(X1, Y1, X2, Y2, 0, a1, B1): C1 = 1

    '2点X(3),Y(3),X(4),Y(4)を通る関数  Y0=A2*X0+B2  A2とB2を計算
       If X3 <> X4 Then Call CALUAB(X3, Y3, X4, Y4, 0, a2, B2): C2 = 1
    Select Case C1 + C2
    Case 0: e$ = "交点が無い": Exit Sub
    Case 1: If C1 = 0 Then X0 = X1: Y0 = a2 * X0 + B2
            If C2 = 0 Then X0 = X3: Y0 = a1 * X0 + B1
    Case 2: If B1 = B2 Then e$ = "交点が無い": Exit Sub
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
    ' JA 使用していない
    '点1-2を通る直線+D1 と 点2-3を通る直線+D2  の交点を求める
    '2点X1,Y1,X2,Y2を通る関数  Y0=A1*X0+B1  A1とB1を計算
       If X1 = X2 Then C1 = 0 Else C1 = 1: Call CALUAB(X1, Y1, X2, Y2, D1, a1, B1)
    '2点X2,Y2,X3,Y3を通る関数  Y0=A2*X0+B2  A2とB2を計算
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
    ' JA=-1   交点無し
    '点(X1,Y1),(X2,Y2)を通る直線+D1 と 点(X3,Y3),(X4,Y4)を通る直線+D2  の交点を求める
    e$ = "": JA = 0
    '2点X1,Y1,X2,Y2を通る関数  Y0=A1*X0+B1  A1とB1を計算
       If X1 = X2 Then C1 = 0 Else C1 = 1: Call CALUAB(X1, Y1, X2, Y2, D1, a1, B1)
    '2点X3,Y3,X4,Y4を通る関数  Y0=A2*X0+B2  A2とB2を計算
       If X3 = X4 Then C2 = 0 Else C2 = 1: Call CALUAB(X3, Y3, X4, Y4, D2, a2, B2)
    
    Select Case C1 + C2
    Case 0: JA = -1: e$ = "X=一定で交点無し": Exit Sub
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
            If a1 = 0 And a2 = 0 Then JA = -1: e$ = "Y=一定で交点無し": Exit Sub
            Call CALUP1(a1, B1, a2, B2, X0, Y0)
    End Select
    End Sub
Sub CALUPD1(X1, Y1, X2, Y2, D1, X, Y)
    '96_10_24
    '点1-2を通る直線と 点1 から直角に D1 離れた点を求める
    ' D1>0 点1-2を通る直線に対して時計回りが +
    
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
Sub CALUP垂点(X1, Y1, X2, Y2, X3, Y3, X4, Y4)
    '97_9_12
    '点1-2を通る直線と 点3 から垂線の交点(X4,Y4)を求める
    If Y1 = Y2 Then X4 = X3: Y4 = Y1: Exit Sub: ' Y=一定
    If X1 = X2 Then X4 = X1: Y4 = Y3: Exit Sub: ' X=一定
    Call CALUAB(X1, Y1, X2, Y2, 0, a1, B1)
    Call CALUP垂線(X1, Y1, X2, Y2, X3, Y3, a2, B2)
    Call CALUP1(a1, B1, a2, B2, X4, Y4)
    End Sub
Sub CALUP垂線(X1, Y1, X2, Y2, X3, Y3, a, b)
    '97_9_12
    '点1-2を通る直線と 点3を通る垂線   Y=A*X+B の A,Bを求める
    If Y1 = Y2 Then a = X3: b = 0: Exit Sub:  '  X=A の直線
    If X1 = X2 Then a = 0: b = Y3: Exit Sub:  ' Y=B の直線
    Call CALUAB(X1, Y1, X2, Y2, 0, a1, B1)
    a = -1 / a1: b = Y3 - a * X3
    End Sub
Function CALU_点位置(X0, Y0, X9, Y9, X1, Y1)
    ' H10.2.18
    ' 点(X1,Y1)が 線分(X0,Y0),(X9,Y9)の左側か 右左側かを判断
    ' 判断$=左 or 右 or 中 ベクトル方向の対して
    点X = X1: 点Y = Y1
    角度 = -Calu角度(X0, Y0, X9, Y9)
       'LLL = Sqr((X1 - X0) ^ 2 + (Y1 - Y0) ^ 2)
    Call 座標回転(X0, Y0, 角度, 点X, 点Y)
    Select Case 点Y - Y0
    Case Is > 0: CALU_点位置 = "左"
    Case 0: CALU_点位置 = "中"
    Case Is < 0: CALU_点位置 = "右"
    End Select
    End Function
Sub CALU_複線座標(X(), Y(), D(), X1(), Y1(), ni)
    '98_2_2
    ' X,Y  からD離れた点の座標を求める
    ' ni 点の数
    ' X(i),Y(i)   D(i)
    
    If ni < 2 Then er ("* CALU_複線座標  n < 2 "): Exit Sub
    If ni > 1000 Then er ("* CALU_複線座標  n > 1000 "): Exit Sub
    Call CALUPD1(X(1), Y(1), X(2), Y(2), D(1), X1(1), Y1(1))
    Call CALUPD1(X(ni), Y(ni), X(ni - 1), Y(ni - 1), -D(ni - 1), X1(ni), Y1(ni))
                         
    If ni >= 3 Then
        For i = 2 To ni - 1: Call CALUP3(X(i - 1), Y(i - 1), X(i), Y(i), X(i + 1), Y(i + 1), D(i - 1), D(i), X1(i), Y1(i), JA): Next i
        End If
                         
    End Sub
Sub CALU_枠交点(X1, Y1, X2, Y2, XL1, XL2, YL1, YL2, X3, Y3, e$)
      ' (X1,Y1) と (X2,Y2) を結んだ直線と枠との交点を計算
      ' (X1,Y1)  枠内点
      ' (X2,Y2)  枠外点
      ' (X3,Y3)    (X1,Y1) と (X2,Y2) を結んだ直線と枠との交点
               
      '
      '  2┌────────┐1     YL2
      '   │　　　　　　　　│
      '   │　　　　　　　　│
      '  3└────────┘4     YL1
      '   XL1              XL2
      '
      '
         X3 = X2: Y3 = Y2: e$ = ""
         If XL1 < X2 And X2 < XL2 Then If YL1 < Y2 And Y2 < YL2 Then Exit Sub:  'e$ = "(X2,Y2)が枠内点"
         If X1 < XL1 Or XL2 < X1 Then e$ = "(X1,Y1)が X枠外点": Exit Sub
         If Y1 < YL1 Or YL2 < Y1 Then e$ = "(X1,Y1)が Y枠外点": Exit Sub
         
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

         
         e$ = "交点が無い"
    End Sub



Sub CaluTH2(X0, Y0, SN, CS, X1, Y1)
    ' X0,Y0 を中心に回転した座標を求める
    r = Sqr((X1 - X0) * (X1 - X0) + (Y1 - Y0) * (Y1 - Y0))
    SN1 = (Y1 - Y0) / r: CS1 = (X1 - X0) / r
    X1 = X0 + r * (CS1 * CS - SN1 * SN)
    Y1 = Y0 + r * (SN1 * CS + CS1 * SN)
    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│        図形角度                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
'======================================================================================================================
Function Calu角度(X1, Y1, X2, Y2)
    '97_9_20
    '座標(X1,Y1),(X2,Y2) 間の角度(D°)を計算    0≦ D <360
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
    Calu角度 = D
    If D > 360 Then er ("[Calu角度]  角度 >360°"): Stop
    End Function


Function 角度正規化(r)
    'r を  0<= r <360 に修正する
    r1 = r
    If r1 < 0 Then
       Do: r1 = 360 + r1: If r1 >= 0 Then Exit Do
           Loop
       End If
    Do: If r1 < 360 Then Exit Do
        r1 = r1 - 360
        Loop
    角度正規化 = r1
    End Function
Function 文字上向角度化(r)
    'r を  0<= r <=90   270<= r <=360  に修正する
    r1 = 角度正規化(r)
    Select Case r1
    Case Is <= 90:
    Case Is <= 270: r1 = 角度正規化(r1 + 180)
    Case Else:
    End Select
    文字上向角度化 = r1
    End Function
Function rad(r)
    'r を  0<= r <360 に修正してﾗｼﾞｱﾝを求める
    r1 = r
    If r1 < 0 Then
       Do: r1 = 360 + r1: If r1 >= 0 Then Exit Do
           Loop
       End If
    Do: If r1 < 360 Then Exit Do
        r1 = r1 - 360
        Loop
    rad = π * r1 / 180
    End Function
Sub C_三角関数1(X1, Y1, X2, Y2, SN1, CS1, TAN1, RTAN1, l)
    ' RTAN1=1/TAN1
    SN1 = 0: CS1 = 0: TAN1 = 0: RTAN1 = 0
    l = Sqr((X2 - X1) ^ 2 + (Y2 - Y1) ^ 2)
    If l = 0 Then Exit Sub
    SN1 = (Y2 - Y1) / l
    CS1 = (X2 - X1) / l
    If X2 - X1 = 0 Then TAN1 = 9E+30 Else TAN1 = (Y2 - Y1) / (X2 - X1)
    If Y2 - Y1 = 0 Then RTAN1 = 9E+30 Else RTAN1 = (X2 - X1) / (Y2 - Y1)
    End Sub


Function Dsin(角度)
    D角度 = 角度正規化(角度)
    Select Case D角度
    Case 0, 180, -180: Dsin = 0
    Case 90, -270: Dsin = 1
    Case -90, 270: Dsin = -1
    Case Else:    Dsin = Sin(3.1415927 * D角度 / 180)
    End Select
    End Function
Function Dcos(角度)
    D角度 = 角度正規化(角度)
    Select Case D角度
    Case 0: Dcos = 1
    Case 180, -180: Dcos = -1
    Case 90, -90, 270, -270: Dcos = 0
    Case Else:   Dcos = Cos(3.1415927 * D角度 / 180)
    End Select
    End Function
Function Dtan(角度)
    D角度 = 角度正規化(角度)
    Dtan = Tan(3.1415927 * D角度 / 180)
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




'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│        空間図形 (3D)  2002.5.28                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Function F_外積平面定義(cx, cy, CZ)
     '外積_Vector(CX, CY, CZ) により 垂直な平面を定義  XY  YZ  ZX
     CX1 = Abs(cx): CY1 = Abs(cy): CZ1 = Abs(CZ)
     Vector_Max = CX1: D1$ = "YZ"
     If Vector_Max <= CY1 Then Vector_Max = CY1: D1$ = "ZX"
     If Vector_Max <= CZ1 Then Vector_Max = CZ1: D1$ = "XY"
     F_外積平面定義 = D1$
     End Function
Sub Calu_2点_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
    ' 2点　A(XA1,YA1,ZA1) B(XB1,YB1,ZB1)  を通るﾍﾞｸﾄﾙ   AB(ABX,ABY,ABZ)を求める
     ABX = XB1 - XA1: ABY = YB1 - YA1: ABZ = ZB1 - ZA1
     End Sub

Sub Calu_2点を通る_直線(XA1, YA1, ZA1, XB1, YB1, ZB1, LA1, LB1, LC1, LD1, LE1, LF1)
     '　点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)　を通る_直線式
     '
     '              | X | = | LA1 |    | LD1 |
     '  直線L1      | Y | = | LB1 | + t| LE1 |
     '              | Z | = | LC1 |    | LF1 |
     '
     LA1 = XA1: LB1 = YA1: LC1 = ZA1
     Call Calu_2点_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, LD1, LE1, LF1)
     End Sub

Sub Calu_外積_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
    ' Vector A(XA1,YA1,ZA1) B(XB1,YB1,ZB1) の外積ﾍﾞｸﾄﾙ   C(CX,CY,CZ)を求める
     cx = YA1 * ZB1 - ZA1 * YB1:    cy = ZA1 * XB1 - XA1 * ZB1:    CZ = XA1 * YB1 - YA1 * XB1
     End Sub

Sub Calu_3点_外積_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
    '　点P1(XP1,YP1,ZP1)から 点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)   ﾍﾞｸﾄﾙPA  ﾍﾞｸﾄﾙPB の外積ﾍﾞｸﾄﾙ   C(CX,CY,CZ)を求める
     Call Calu_2点_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, PAX, PAY, PAZ)
     Call Calu_2点_Vector(Xp1, Yp1, Zp1, XB1, YB1, ZB1, PBX, PBY, PBZ)
    
     Call Calu_外積_Vector(PAX, PAY, PAZ, PBX, PBY, PBZ, cx, cy, CZ)
     End Sub

Sub Calu_3点_平面定義(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, a1, B1, C1, D1)
    'Calu_3点_平面定義
    '　点P1(XP1,YP1,ZP1)から 点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)   ﾍﾞｸﾄﾙPA  ﾍﾞｸﾄﾙPB が作る平面 Ax+By+Cy+D=0 を求める
    Call Calu_3点_外積_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, a1, B1, C1)
    D1 = -(a1 * Xp1 + B1 * Yp1 + C1 * Zp1)
    End Sub


Sub Calu_Vector_平面_交点_座標(a1, B1, C1, D1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
    '　平面 Ax+By+Cy+D=0  と 2点　A(XA1,YA1,ZA1) B(XB1,YB1,ZB1)  を通るﾍﾞｸﾄﾙAB  との交点の座標 P1(Xp1,Yp1,Zp1) を求める
    Call Calu_2点_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
         OO1 = a1 * ABX + B1 * ABY + C1 * ABZ
    If OO1 = 0 Then
         er ("*** System Calu_平面_Vector_交点座標"): If 世誤CK > 99 Then Stop
         Xp1 = 999999999: Yp1 = 999999999: Zp1 = 999999999
         Else
         OO2 = a1 * XA1 + B1 * YA1 + C1 * ZA1 + D1
         OOt = -OO2 / OO1
         Xp1 = XA1 + ABX * OOt: Yp1 = YA1 + ABY * OOt: Zp1 = ZA1 + ABZ * OOt
         End If
    End Sub

Sub Calu_点_平面_垂線足_座標(Xp1, Yp1, Zp1, a1, B1, C1, D1, Xp2, Yp2, Zp2)
    '　点P1(Xp1,Yp1,Zp1)から 平面 Ax+By+Cy+D=0  に下ろした　垂線足の座標 P2(Xp2,Yp2,Zp2) を求める
    ' ﾍﾞｸﾄﾙP1P2 (-A,-B,-C)  <---- 法線ﾍﾞｸﾄﾙ (A,B,C)
    ' ﾍﾞｸﾄﾙOP2=ﾍﾞｸﾄﾙOP1+ﾍﾞｸﾄﾙP1P2
    HH = F_点_平面_距離(Xp1, Yp1, Zp1, a1, B1, C1, D1)
    LL = Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2)
    Select Case LL
    Case 0: Xp2 = Xp1: Yp2 = Yp1: Zp2 = Zp1
    Case Else:   kk = -HH / LL:    Xp2 = Xp1 + kk * a1: Yp2 = Yp1 + kk * B1: Zp2 = Zp1 + kk * C1
    End Select
    End Sub

Sub Calu_平面と平面_交線_Vector(a1, B1, C1, D1, a2, B2, C2, D2, cx, cy, CZ)
    ' 平面1と平面2の交線の VectorC(CX,CY,CZ)を求める
    Call Calu_外積_Vector(a1, B1, C1, a2, B2, C2, cx, cy, CZ)
    End Sub



Sub Calu_点AB間_A点_距離L_座標(L1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
    '　ﾍﾞｸﾄﾙAB 点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1) 線上で   点A から距離 L1の座標 点P1(Xp1,Yp1,Zp1)を求める
    '
    Call Calu_2点_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, a1, B1, C1)
    D1 = L1 * Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2) - (a1 * XA1 + B1 * YA1 + C1 * ZA1)
    Call Calu_Vector_平面_交点_座標(a1, B1, C1, D1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
 
    
    Call Calu_2点_Vector(XA1, YA1, ZA1, Xp1, Yp1, Zp1, AP1, BP1, CP1)
    If F_Vector_角度(a1, B1, C1, AP1, BP1, CP1) < 1 Then Exit Sub
 
    D1 = -L1 * Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2) - (a1 * XA1 + B1 * YA1 + C1 * ZA1)
    Call Calu_Vector_平面_交点_座標(a1, B1, C1, D1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp1, Yp1, Zp1)
 
    End Sub


Function F_点ABC_面積(XA1, YA1, ZA1, XB1, YB1, ZB1, XC1, YC1, ZC1)
    '3点ABC A(XA1,YA1,ZA1), B(XB1,YB1,ZB1)、C(XC1,YC1,ZC1) で囲まれた面積の計算
     Call Calu_2点_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
     Call Calu_2点_Vector(XA1, YA1, ZA1, XC1, YC1, ZC1, ACX, ACY, ACZ)
     
     F_点ABC_面積 = Sqr((ABY * ACZ - ABZ * ACY) ^ 2 + (ABZ * ACX - ABX * ACZ) ^ 2 + (ABX * ACY - ABY * ACX) ^ 2) / 2
     End Function


Function F_点AB間_距離(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '2点AB間 A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) 間の距離を計算
     F_点AB間_距離 = Sqr((XB1 - XA1) ^ 2 + (YB1 - YA1) ^ 2 + (ZB1 - ZA1) ^ 2)
     F_点AB間_距離 = F_誤差(F_点AB間_距離, 9)
     End Function

Function F_点_平面_距離(Xp1, Yp1, Zp1, a1, B1, C1, D1)
    '点 P1(Xp1,Yp1,Zp1) と平面 Ax+By+Cy+D=0   間の距離を計算
    ' + - 有り
     OO1 = Sqr(a1 ^ 2 + B1 ^ 2 + C1 ^ 2)
     If OO1 = 0 Then F_点_平面_距離 = 0: Exit Function
     F_点_平面_距離 = (a1 * Xp1 + B1 * Yp1 + C1 * Zp1 + D1) / OO1
     End Function


Function F_Vector間_ねじれ距離(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '2つのﾍﾞｸﾄﾙ A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) 間のねじれにより生じる距離
    '
    
    Stop
    
    End Function

Function F_3点_角度(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' 点P1(XP1,YP1,ZP1)から 点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)   ﾍﾞｸﾄﾙPA  ﾍﾞｸﾄﾙPB 間の角度(θ°)を計算    0≦ θ ≦180
    Call Calu_2点_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, PAX, PAY, PAZ)
    Call Calu_2点_Vector(Xp1, Yp1, Zp1, XB1, YB1, ZB1, PBX, PBY, PBZ)
    F_3点_角度 = F_Vector_角度(PAX, PAY, PAZ, PBX, PBY, PBZ)
    End Function

Function F_3点_角度2(平面$, Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' 平面$   ""  "XY"  "YZ"  "ZX"    角度を計算する基準平面
    ' 点P1(XP1,YP1,ZP1)から 点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)   ﾍﾞｸﾄﾙPA  ﾍﾞｸﾄﾙPB 間の角度(θ°)を計算    0≦ θ ＜360  反時計回り
    ' 角度は　ﾍﾞｸﾄﾙPA から ﾍﾞｸﾄﾙPB への角度 反時計回り +
    Call Calu_2点_Vector(Xp1, Yp1, Zp1, XA1, YA1, ZA1, PAX, PAY, PAZ)
    Call Calu_2点_Vector(Xp1, Yp1, Zp1, XB1, YB1, ZB1, PBX, PBY, PBZ)
    F_3点_角度2 = F_Vector_角度2(平面$, PAX, PAY, PAZ, PBX, PBY, PBZ)
    End Function


Function F_Vector_角度(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '02_5_11
    '2つのﾍﾞｸﾄﾙ A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) 間の角度(θ°)を計算    0≦ θ ≦180
     AB = XA1 * XB1 + YA1 * YB1 + ZA1 * ZB1
     AA = Sqr(XA1 ^ 2 + YA1 ^ 2 + ZA1 ^ 2)
     BB = Sqr(XB1 ^ 2 + YB1 ^ 2 + ZB1 ^ 2)
     Select Case AA * BB
     Case 0: Cθ = 0
     Case Else:
               COSθ = AB / (AA * BB)
               If COSθ > 1 Then COSθ = 1
               Select Case CSng(COSθ)
               Case 0: Cθ = 90
               Case 1: Cθ = 0
               Case -1: Cθ = 180
               Case Else:   Tanθ = Sqr(Abs(1 - COSθ ^ 2)) / COSθ
                            Cθ = 180 * Atn(Tanθ) / 3.14159265358979
                  If Cθ < 0 Then Cθ = 180 + Cθ
               Cθ = CSng(Cθ)
               End Select
     End Select
     F_Vector_角度 = Cθ
     End Function

Function F_Vector_角度2(平面$, XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' 平面$   ""  "XY"  "YZ"  "ZX"    角度を計算する基準平面
    ' 2つのﾍﾞｸﾄﾙ A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) 間の角度(θ°)を計算    0≦ θ ＜360  反時計回り
    ' 角度は　ﾍﾞｸﾄﾙPA から ﾍﾞｸﾄﾙPB への角度 反時計回り +
        
        Cθ = F_Vector_角度(XA1, YA1, ZA1, XB1, YB1, ZB1)
    ' ﾍﾞｸﾄﾙA,ﾍﾞｸﾄﾙB の法線ﾍﾞｸﾄﾙを作る
         Call Calu_外積_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
     
     平面2$ = 平面$:  If 平面2$ = "" Then 平面2$ = F_外積平面定義(cx, cy, CZ)
     Select Case 平面2$
     Case "XY": If CZ < 0 Then Cθ = 360 - Cθ
     Case "YZ": If cx < 0 Then Cθ = 360 - Cθ
     Case "ZX": If cy > 0 Then Cθ = 360 - Cθ
     Case Else: er ("*System F_Vector_角度2"): Stop
     End Select
     
     F_Vector_角度2 = Cθ
    ' Stop
     End Function

Function F_Vector_開き角度(XA1, YA1, ZA1, XB1, YB1, ZB1)
    '2つのﾍﾞｸﾄﾙ A(XA1,YA1,ZA1), B(XB1,YB1,ZB1) 間の 開き角度(θ°)を計算    -90< θ ≦90
     開き角度 = F_Vector_角度(XA1, YA1, ZA1, XB1, YB1, ZB1)
     If 開き角度 > 90 Then 開き角度 = 開き角度 - 180
     F_Vector_開き角度 = 開き角度
     End Function

Function F_Vector_平面_角度(Xp1, Yp1, Zp1, a1, B1, C1, D1)
    '　平面 Ax+By+Cy+D=0  と ﾍﾞｸﾄﾙ P(Xp1,Yp1,Zp1) の角度(θ°)を計算    -90≦ θ ≦90
    '  D は関係しない
    Hθ = F_Vector_角度(a1, B1, C1, Xp1, Yp1, Zp1)
    F_Vector_平面_角度 = 90 - Hθ
    End Function


Sub Calu_2等分_Vector(XP0, YP0, ZP0, XA1, YA1, ZA1, XB1, YB1, ZB1, cx, cy, CZ)
    ' 3点　O(XP0,YP0,ZP0) A(XA1,YA1,ZA1) B(XB1,YB1,ZB1)   Oを通ﾘ ﾍﾞｸﾄﾙ0A,ﾍﾞｸﾄﾙOB を2等分する ﾍﾞｸﾄﾙ   OC(CX,CY,CZ)
     Call Calu_2点_Vector(XP0, YP0, ZP0, XA1, YA1, ZA1, AX1, AY1, AZ1)
     Call Calu_2点_Vector(XP0, YP0, ZP0, XB1, YB1, ZB1, BX1, BY1, BZ1)
     AL1 = Sqr(AX1 * AX1 + AY1 * AY1 + AZ1 * AZ1)
     BL1 = Sqr(BX1 * BX1 + BY1 * BY1 + BZ1 * BZ1)
     Select Case AL1 * BL1
     Case 0:     cx = 0:  cy = 0:     CZ = 0
     Case Else:     cx = AX1 / AL1 + BX1 / BL1:   cy = AY1 / AL1 + BY1 / BL1:     CZ = AZ1 / AL1 + BZ1 / BL1
     End Select
     End Sub

Sub Calu_点_直線_垂線足_座標(Xp1, Yp1, Zp1, a1, B1, C1, BX1, BY1, BZ1, Xp2, Yp2, Zp2)
    '　点P1(XP1,YP1,ZP1)から 直線ABに下ろした垂線の足の座標P2(XP2,YP2,ZP2)を求める
    '
    '              | X | = | A1 |    | BX1 |
    '  直線AB      | Y | = | B1 | + t| BY1 |
    '              | Z | = | C1 |    | BZ1 |
    '
    '  座標P2 (a1+BX1*t,b1+BY1*t,c1+BZ1*t)
    '
     DD1 = BX1 * BX1 + BY1 * BY1 + BZ1 * BZ1: If DD1 = 0 Then Xp2 = Xp1: Yp2 = Yp1: Zp2 = Zp1: Exit Sub
     結果T = (-BX1 * a1 - BY1 * B1 - BZ1 * C1 + BX1 * Xp1 + BY1 * Yp1 + BZ1 * Zp1) / DD1
     Xp2 = a1 + BX1 * 結果T: Yp2 = B1 + BY1 * 結果T: Zp2 = C1 + BZ1 * 結果T
     End Sub
Function F_点_直線_垂線足_距離(Xp1, Yp1, Zp1, a1, B1, C1, BX1, BY1, BZ1)
    '　点P1(XP1,YP1,ZP1から 直線ABに下ろした垂線の足の座標P2(XP2,YP2,ZP2)との距離を求める
    '
    '              | X | = | A1 |    | BX1 |
    '  直線AB      | Y | = | B1 | + t| BY1 |
    '              | Z | = | C1 |    | BZ1 |
    '
    '  座標P2 (XP2,YP2,ZP2)
    '
'     Call Calu_点_垂線足_座標(Xp1, Yp1, Zp1, A1, B1, C1, BX1, BY1, BZ1, Xp2, Yp2, Zp2)
     F_点_垂線足_距離 = Sqr((Xp2 - Xp1) ^ 2 + (Yp2 - Yp1) ^ 2 + (Zp2 - Zp1) ^ 2)
     End Function

Sub Calu_3点_垂線足_座標_距離(Xp1, Yp1, Zp1, XA1, YA1, ZA1, XB1, YB1, ZB1, Xp2, Yp2, Zp2, 垂線足_距離, 判定$)
    '　点P1(XP1,YP1,ZP1)から 点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)を通る直線に下ろした垂線の足の座標P2(XP2,YP2,ZP2)を求める
    '  垂線足_距離 を求める
    '  垂線足座標の  判定$   *(A,Bの範囲内)   *A(A点)    *B(B点)     >A  >B　(範囲外)
     Call Calu_2点_Vector(XA1, YA1, ZA1, XB1, YB1, ZB1, ABX, ABY, ABZ)
     Call Calu_点_直線_垂線足_座標(Xp1, Yp1, Zp1, XA1, YA1, ZA1, ABX, ABY, ABZ, Xp2, Yp2, Zp2)
     垂線足_距離 = Sqr((Xp2 - Xp1) ^ 2 + (Yp2 - Yp1) ^ 2 + (Zp2 - Zp1) ^ 2)
     
     LAB = Sqr((XB1 - XA1) ^ 2 + (YB1 - YA1) ^ 2 + (ZB1 - ZA1) ^ 2)
     LP2A = Sqr((Xp2 - XA1) ^ 2 + (Yp2 - YA1) ^ 2 + (Zp2 - ZA1) ^ 2)
     LP2B = Sqr((Xp2 - XB1) ^ 2 + (Yp2 - YB1) ^ 2 + (Zp2 - ZB1) ^ 2)
     LPmax = LP2A: 端部$ = "B": If LPmax < LP2B Then LPmax = LP2B: 端部$ = "A"
     Select Case LPmax
     Case LAB:      判定$ = "*" + 端部$
     Case Is < LAB: 判定$ = "*"
     Case Else:     判定$ = ">" + 端部$
     End Select
     End Sub

Sub Calu_2点直線_2点直線_交点_座標(平面$, XA1, YA1, ZA1, XB1, YB1, ZB1, XC1, YC1, ZC1, XD1, YD1, ZD1, Xp1, Yp1, Zp1, 誤差)
     '  平面$  XY  YZ  ZX   計算に使用する平面の指定（面のねじれを考慮)
     '　点A(XA1,YA1,ZA1),点B(XB1,YB1,ZB1)　を通る_直線式
     '　点C(XC1,YC1,ZC1),点D(XD1,YD1,ZD1)　を通る_直線式
     '　2直線の交点の座標(XP1,YP1,ZP1)を求める
     '
     ' 誤差  平面のねじれによる 座標の誤差

     Call Calu_2点を通る_直線(XA1, YA1, ZA1, XB1, YB1, ZB1, LA1, LB1, LC1, LD1, LE1, LF1)
     Call Calu_2点を通る_直線(XC1, YC1, ZC1, XD1, YD1, ZD1, MA1, MB1, MC1, MD1, ME1, MF1)
     
     Call Calu_2直線交点_座標(平面$, LA1, LB1, LC1, LD1, LE1, LF1, MA1, MB1, MC1, MD1, ME1, MF1, Xp1, Yp1, Zp1, 誤差)
     End Sub



Sub Calu_2直線交点_座標(平面$, LA1, LB1, LC1, LD1, LE1, LF1, MA1, MB1, MC1, MD1, ME1, MF1, Xp1, Yp1, Zp1, 誤差)
     '  平面$  XY  YZ  ZX   計算に使用する平面の指定（面のねじれを考慮)
     '　2直線の交点の座標(XP1,YP1,ZP1)を求める   ZP2 は 直線M1のZ座標    ZP1<>ZP2 は同一平面でない
     '
     '              | X | = | LA1 |    | LD1 |
     '  直線L1      | Y | = | LB1 | + t| LE1 |
     '              | Z | = | LC1 |    | LF1 |
     '
     '              | X | = | MA1 |    | MD1 |
     '  直線M1      | Y | = | MB1 | + s| ME1 |
     '              | Z | = | MC1 |    | MF1 |
     '
     ' X座標   LA1+LD1*t = MA1+MD1*s  (1)   a+d*t = A+D*s    s=(a+d*t-A)/D
     ' Y座標   LB1+LE1*t = MB1+ME1*s  (2)   b+e*t = B+E*s    s=(b+e*t-B)/E
     ' Z座標   LC1+LF1*t = MC1+MF1*s  (3)   c+f*t = C+F*s    s=(c+f*t-C)/F
     
     ' 誤差  平面のねじれによる 座標の誤差
    
    
     平面2$ = 平面$
     If 平面$ = "" Then
          Call Calu_外積_Vector(LD1, LE1, LF1, MD1, ME1, MF1, cx, cy, CZ)
          平面2$ = F_外積平面定義(cx, cy, CZ)
          End If
     
     Select Case 平面2$
     Case "XY":  'XY平面  (d*E-e*D)*t=A*E-B*D-a*E+b*D
                 aat = LD1 * ME1 - LE1 * MD1
                 If aat <> 0 Then
                 結果T = (MA1 * ME1 - MB1 * MD1 - LA1 * ME1 + LB1 * MD1) / aat
                 Xp1 = LA1 + LD1 * 結果T:  Yp1 = LB1 + LE1 * 結果T:   Zp1 = LC1 + LF1 * 結果T
                     Select Case ME1
                     Case 0:       結果S = (LA1 + LD1 * 結果T - MA1) / MD1: ' MD1=0 + MF1=0 は無い
                     Case Else:    結果S = (LB1 + LE1 * 結果T - MB1) / ME1
                     End Select
                 Zp2 = MC1 + MF1 * 結果S: 誤差 = Zp1 - Zp2
                 Zp1 = (Zp1 + Zp2) / 2
                 End If
     Case "YZ":  'YZ平面  (e*F-f*E)*t=B*F-C*E-b*F+c*E
                 aat = LE1 * MF1 - LF1 * ME1
                 If aat <> 0 Then
                 結果T = (MB1 * MF1 - MC1 * ME1 - LB1 * MF1 + LC1 * ME1) / aat
                 Xp1 = LA1 + LD1 * 結果T:  Yp1 = LB1 + LE1 * 結果T:   Zp1 = LC1 + LF1 * 結果T
                     Select Case MF1
                     Case 0:       結果S = (LB1 + LE1 * 結果T - MB1) / ME1: ' ME1=0 + MF1=0 は無い
                     Case Else:    結果S = (LC1 + LF1 * 結果T - MC1) / MF1
                     End Select
                 Xp2 = MA1 + MD1 * 結果S: 誤差 = Xp1 - Xp2
                 Xp1 = (Xp1 + Xp2) / 2
                 End If
     
     Case "ZX":  'ZX平面  (f*D-d*F)*t=C*D-A*F-c*D+a*F
                 aat = LF1 * MD1 - LD1 * MF1
                 If aat <> 0 Then
                 結果T = (MC1 * MD1 - MA1 * MF1 - LC1 * MD1 + LA1 * MF1) / aat
                 Xp1 = LA1 + LD1 * 結果T:  Yp1 = LB1 + LE1 * 結果T:   Zp1 = LC1 + LF1 * 結果T
                     Select Case MD1
                     Case 0:       結果S = (LC1 + LF1 * 結果T - MC1) / MF1: ' ME1=0 + MD1=0 は無い
                     Case Else:    結果S = (LA1 + LD1 * 結果T - MA1) / MD1
                     End Select
                 Yp2 = MB1 + ME1 * 結果S: 誤差 = Yp1 - Yp2
                 Yp1 = (Yp1 + Yp2) / 2
                 End If
     
     Case Else: er ("*System Calu_2直線交点_座標"): Stop
     End Select
     誤差 = F_誤差(誤差, 10)
     If aat = 0 Then Xp1 = 0: Yp1 = 0: Zp1 = 0: 誤差 = 99999999999#
     End Sub

Sub Calu_4点面内_P5_P6_座標(平面$, Xp1, Yp1, Zp1, Xp2, Yp2, Zp2, XP3, YP3, ZP3, XP4, YP4, ZP4, XP5, YP5, ZP5, XP6, YP6, ZP6, 誤差P5, 誤差P6)
     '  平面$  XY  YZ  ZX   計算に使用する平面の指定（面のねじれを考慮)
     '  平面$=""   平面 自動計算
     '  P1,P2,P3,P4  から P5,P6 XYZの座標を計算
     '
     '           ･P2 --------------- ･P3
     '           |＼               ／|
     '           |  ･P5---------- ･P6|
     '           |／               ＼|
     '           ･P1 --------------- ･P4
     '
     ' 誤差  平面のねじれによる 座標の誤差
     '
     平面2$ = 平面$
     If 平面$ = "" Then
          Call Calu_3点_外積_Vector(Xp1, Yp1, Zp1, Xp2, Yp2, Zp2, XP4, YP4, ZP4, cx, cy, CZ)
          平面2$ = F_外積平面定義(cx, cy, CZ)
          End If
     
     ' P5 の計算
     Call Calu_2等分_Vector(Xp1, Yp1, Zp1, XP4, YP4, ZP4, Xp2, Yp2, Zp2, BX1, BY1, BZ1)
     Call Calu_2等分_Vector(Xp2, Yp2, Zp2, Xp1, Yp1, Zp1, XP3, YP3, ZP3, BX2, BY2, BZ2)
     Call Calu_2直線交点_座標(平面2$, Xp1, Yp1, Zp1, BX1, BY1, BZ1, Xp2, Yp2, Zp2, BX2, BY2, BZ2, XP5, YP5, ZP5, 誤差P5)
     
     ' P6 の計算
     Call Calu_2等分_Vector(XP3, YP3, ZP3, Xp2, Yp2, Zp2, XP4, YP4, ZP4, BX3, BY3, BZ3)
     Call Calu_2等分_Vector(XP4, YP4, ZP4, XP3, YP3, ZP3, Xp1, Yp1, Zp1, BX4, BY4, BZ4)
     Call Calu_2直線交点_座標(平面2$, XP3, YP3, ZP3, BX3, BY3, BZ3, XP4, YP4, ZP4, BX4, BY4, BZ4, XP6, YP6, ZP6, 誤差P6)
    ' 誤差 = 誤差5: If Abs(誤差) < Abs(誤差6) Then 誤差 = 誤差6
     End Sub


'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│        範囲                                                                                                                      │
'│                                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Function Rob_範囲(Dp, Dmin, Dmax)
     ' 2002.1.26
     ' <        範囲外
     ' *=<      範囲内
     ' *        範囲内
     ' *=>      範囲内
     ' >        範囲外
     D1$ = ""
     Select Case Dp
     Case Dmin: D1$ = "*=<"
     Case Dmax: D1$ = "*=>"
     Case Is < Dmin: D1$ = "<"
     Case Is > Dmax: D1$ = ">"
     Case Else: D1$ = "*"
     End Select

     Rob_範囲 = D1$
     
     End Function

Function Rob_範囲XY(Xp, Yp, Xmin, Ymin, Xmax, Ymax)
     ' 2002.1.26
     ' ***    範囲内
     ' **<    <>>    <*<    範囲外
     D1$ = Mid(Rob_範囲(Xp, Xmin, Xmax), 1, 1)
     D2$ = Mid(Rob_範囲(Yp, Ymin, Ymax), 1, 1)
     Rob_範囲XY = D1$ + D2$
     
     End Function
Function Rob_範囲XYZ(Xp, Yp, Zp, Xmin, Ymin, Zmin, Xmax, Ymax, Zmax)
     ' 2002.1.26
     ' ***    範囲内
     ' **<    <>>    <*<    範囲外
     D1$ = Mid(Rob_範囲(Xp, Xmin, Xmax), 1, 1)
     D2$ = Mid(Rob_範囲(Yp, Ymin, Ymax), 1, 1)
     D3$ = Mid(Rob_範囲(Zp, Zmin, Zmax), 1, 1)
     Rob_範囲XYZ = D1$ + D2$ + D3$
     
     End Function


'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　                                                                                                                          │
'│　　　　部材Data項目                                                                                                              │
'│                                                                                                                                  │
'│　　　　                                                                                                                          │
'└─────────────────────────────────────────────────────────────────┘
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃　　　　　　ROB_S_分解
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
Sub ROB_S_分解(STE_型鋼$, 断面type$, H, b, tw, tf, r1, r2, er1$)
     'STE_型鋼を分解して  H,B,tw,tf,r(cm) を取得する
     'Exp H-200x100x5.5x8 r=8     H-200x100x5.5x8 r8    ○-216.3x8.2
     ' 断面type$ は  H,[,I など
     ' H, B, tw, tf, r1, r2  cm
     ' Rob_関数に置く
     
     er1$ = ""
     
  'F_RAN(
     STE_型鋼$ = F_RAN(STE_型鋼$)
     Sname$ = STE_型鋼$: H = 0: b = 0: r1 = 0: r2 = 0
     ReDim Ste_Ds$(20), Ste_Di(20)
    
     
     
     ni = InStr(Sname$, "r="): If ni > 2 Then r1 = Val(Mid(Sname$, ni + 2)) / 10: Sname$ = Mid(Sname$, 1, ni - 1)
     ni = InStr(Sname$, "r1="): If ni > 2 Then r1 = Val(Mid(Sname$, ni + 3)) / 10: Sname$ = Mid(Sname$, 1, ni - 1)
     ni = InStr(Sname$, "r2="): If ni > 2 Then r2 = Val(Mid(Sname$, ni + 3)) / 10: Sname$ = Mid(Sname$, 1, ni - 1)
     ni = InStr(Sname$, "r"):
        If ni > 2 Then If Val(Mid(Sname$, ni + 1)) > 0 Then r1 = Val(Mid(Sname$, ni + 1)) / 10: Sname$ = Mid(Sname$, 1, ni - 1):   ' r13
        
     
      If Mid$(Sname$, 1, 1) = "M" Then
             H = Val(Mid(Sname$, 2)) / 10: If Len(Sname$) > 3 Then er1$ = EMS0$: Exit Sub
             b = H: tw = H / 2: tf = H / 2
             断面type$ = "M":   Exit Sub
             End If
     
     n = InStr(Sname$, "-"):
          If n = 0 Then er1$ = EMS0$ + " S断面で無い": Exit Sub
     
     
     断面type$ = Mid$(Sname$, 1, n - 1): Da$ = Mid$(Sname$, n + 1):
      If InStr(Da$, "*") > 0 Then er1$ = EMS0$ + " ﾃﾞｰﾀに [*] 文字が有る": Exit Sub
      eck$ = Rob_数式ck$(Da$): If eck$ <> "" Then er1$ = EMS0$ + " ﾃﾞｰﾀに [" + eck$ + "] 文字が有る": Exit Sub
     
     Call Ddata("x", Da$, Ste_Ds$(), Ste_Di(), Nii)
     
     Select Case 断面type$
     Case "H":        If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      If r1 <= 0 Then er1$ = EMS0$ + " r=0":  Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case "BH":      If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case "T":      If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     Case "□":
                    Select Case Nii
                    Case 3: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(3) / 10
                    Case 4: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
                    Case Else: er1$ = EMS0$: Exit Sub
                    End Select
     
     
     Case "○":     If Nii <> 2 Then er1$ = EMS0$: Exit Sub
                    H = Ste_Di(1) / 10: b = Ste_Di(1) / 10: tw = Ste_Di(2) / 10: tf = Ste_Di(2) / 10
     
     
     Case "I", "[", "2[":  If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case "L", "2L":       If Nii <> 3 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(3) / 10
     
     Case "PL":       If Nii <> 2 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(2) / 10: tf = 0
     
     Case "C", "2C": If Nii <> 4 Then er1$ = EMS0$: Exit Sub
                      H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
     
     Case Else: 'ER (" ROB_S_分解  [" + STE_型鋼$ + "]"): If 世誤CK > 99 Then Stop Else 世er = "*": Exit Sub

                    Select Case Nii
                    Case 1:               er1$ = EMS0$: Exit Sub
                    Case 2: H = Ste_Di(1) / 10: b = Ste_Di(1) / 10: tw = Ste_Di(2) / 10: tf = Ste_Di(2) / 10
                    Case 3: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(3) / 10
                    Case 4: H = Ste_Di(1) / 10: b = Ste_Di(2) / 10: tw = Ste_Di(3) / 10: tf = Ste_Di(4) / 10
                    Case Else: 'er1$ = EMS0$: Exit Sub
                    End Select
                  er1$ = EMS0$ + "断面typeが無い": If 世誤CK > 99 Then Stop
     
     End Select
     
    

     End Sub





'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　                                                                                                                          │
'│　　　　Data項目                                                                                                                  │
'│                                                                                                                                  │
'│　　　　                                                                                                                          │
'└─────────────────────────────────────────────────────────────────┘
Sub Data項目(Da$, 項目1$, Data1$, 数値1)
   ' INP項目3(ByVal da$, 項目s$, 項目2s$, 項目3s$)
      ' 2001.2.16
     ' 項目=DATA1  項目とDATA を分割する
     ' =  が無い場合　項目1$ に 全文字を
     ' / .  $  を除く
     
     ni = InStr(Da$, "="):
     If ni > 1 Then
           項目1$ = Mid$(Da$, 1, ni - 1): 数値1 = Val(Mid$(Da$, ni + 1)): Data1$ = Mid$(Da$, ni + 1)
           Else
           項目1$ = Da$: 数値1 = 0: Data1$ = ""
           End If
    
     If Mid(Da$, 1, 1) = "/" Then 項目1$ = "/": Data1$ = Mid$(Da$, 2)
     If Mid(Da$, 1, 2) = "//" Then 項目1$ = "//": Data1$ = Mid$(Da$, 3)
     If Mid(Da$, 1, 1) = "." Then 項目1$ = ".": Data1$ = Mid$(Da$, 2)
     If Mid(Da$, 1, 1) = "$" Then 項目1$ = "$": Data1$ = Mid$(Da$, 2)
     If Mid(Da$, 1, 2) = "$=" Then 項目1$ = "$": Data1$ = Mid$(Da$, 3)
    
    End Sub




Sub Dda(D$, Wda$, Ds$(), ni As Integer)
     ' 2001.9.29 renew 復活
     ' D$ 分割する印文字
     ' Wda$ 分割する文字
     ' D$=" " の時は  ﾌﾞﾗﾝｸで分割  2001.9.21
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
     ' D$ 分割する印文字
     ' Wda$ 分割する文字
     'N = 1: DD$ = LTrim$(Wda$)
     n = 1: DD$ = Wda$ ' Data の前のﾌﾞﾗﾝｸを残す  *****************************
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
     ' D$ 分割する印文字
     ' Wda$ 分割する文字
     ' D$=" " の時は  ﾌﾞﾗﾝｸで分割  2001.9.21
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
     ' D$ 分割する印文字
     ' Wda$ 分割する文字
     ' D$=" " の時は  ﾌﾞﾗﾝｸで分割  2001.9.21
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
     ' D$ 分割する印文字
     ' Wda$ 分割する文字
     ' D$=" " の時は  ﾌﾞﾗﾝｸで分割  2001.9.21
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
     ' Di() は  Ds$() の計算結果
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
     ' Ds$() は X or Y or $ で始まる
     ' Di() は  MID$(Ds$(),2) の計算結果
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
Public Sub Data_分解(ByVal Moj As String, ByRef n As Integer, ByRef l() As Single)
    'Wda="3x400+500+34+150"   --->  n=38  L(1)=400  L(4)=500  L(5)=150
    ' () は NG
    Dim Ds(500) As String, D1s As String, ii As Integer, ni As Integer, i2 As Integer, i3 As Integer, jj As Integer, LL As Single
    n = 0: Moj = Replace式s(Moj)
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

Function Replace式s(ByVal Moj As String) As String
   '  Moj   *  --->  x
   '        X  --->  x
   
    Moj = 文字変換(Moj, "*", "x")
    Moj = 文字変換(Moj, "-", "") '********************** ﾒﾝﾃ　2003.10.31  長瀬さんのバグ対応
    
    
    Replace式s = LCase(Moj)

   End Function

'======================================================================================================================
Sub DSPACE(Da1$, Ds$(), Kosu)
      ' Kosu 個数
      ' DA1$ を　Space で分割する
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

'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　                                                                                                                          │
'│　　　　NG  項目                                                                                                                  │
'│                                                                                                                                  │
'│　　　　                                                                                                                          │
'└─────────────────────────────────────────────────────────────────┘

Sub er(ByVal Xs As String)
        Select Case Xs
            Case "0"
                Xs = "[[[ " + EMS0 + " ]]]" + cr
                Xs = Xs + 世er
            Case "1"
                Xs = "[[[ " + EMS0 + " ]]]" + cr
                Xs = Xs + EMS1 + cr
                Xs = Xs + 世er
            Case "", "2"
                Xs = "[[[ " + EMS0 + " ]]]" + cr
                Xs = Xs + EMS1 + cr
                Xs = Xs + EMS2 + cr
                Xs = Xs + 世er
            Case Else
        End Select

'        MsgBox (Xs)  '''''''''''''' nagase
        
     '世誤CK=200
    End Sub


Sub NG表示(項目$, N_NG係数, M_NG係数, Q_NG係数)
     If NG数 > 0 Then
        If Pa + (NG数 + 18) * 改行間隔 > Pend Then Call Page
         Print #40, ""
         Print #40, "[QB:12]"
         Print #40, Tab(20); String$(50, "*")
         Print #40, ""
         Print #40, Tab(25); 項目$; "の  NG "
         Print #40, ""
         Print #40, Tab(20); String$(50, "*")
         Print #40, ""
         Print #40, ""
         
         For i = 1 To NG数
         Print #40, " 　　   "; 世NG$(i)
         Next i
         Print #40, "[QB:0]"
         Pa = Pa + (NG数 + 8) * 改行間隔
     
     Else
         
         Print #40, ""
         Print #40, ""
         Print #40, Tab(20); "'"; String$(50, "*")
         Print #40, ""
         Print #40, Tab(25); "'"; 項目$; "は  NG はありません"
         Print #40, ""
         Print #40, Tab(20); "'"; String$(50, "*")
         Print #40, ""
         
         Pa = Pa + 9 * 改行間隔
     End If
     NG数 = 0

     End Sub


Sub 個々NG表示(個々NG数)
    If 個々NG数 = NG数 Then Exit Sub
    
        If Pa + (個々NG数 + 3) * 改行間隔 > Pend Then Call Page
    Print #40, "[QB:12]"
    For i = 個々NG数 + 1 To NG数
         Print #40, " 　　  ***** "; 世NG$(i)
         Next i
    Print #40, "[QB:0]"
    Print #40, "":
    Pa = Pa + (個々NG数 + 3) * 改行間隔

    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│　　　　計算
'└─────────────────────────────────────────────────────────────────┘
Function FΣN(区切$, Da$)
      ' 区切$="/"    DA$="5/4/2"  FΣN=11
      ' FΣN=5+4+2=11 となる
      Σn = 0: DN$ = Da$
      Do: Σn = Σn + Val(DN$)
           ni = InStr(DN$, 区切$): If ni < 1 Then Exit Do
           DN$ = Mid(DN$, ni + 1)
           Loop
     FΣN = Σn
     End Function
'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│　　　　文字
'│                                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Function Rob_No_space$(Moji$)
    ' ﾌﾞﾗﾝｸを取り除く
    D0$ = Trim(Moji$)
    Do: ni = InStr(D0$, " "): If ni = 0 Then Exit Do
        D1$ = Mid(D0$, 1, ni - 1): D2$ = Mid(D0$, ni + 1)
        D0$ = D1$ + D2$
        Loop
    Rob_No_space$ = D0$
    End Function
Function Rob_前M(D1$, Moji$)
    ' D1$ 文字を探してその文字より前の文字列を返す
    ' D1$="x"  Moji$="100x500"   --->  "100"
    D0$ = Moji$
    ni = InStr(D0$, D1$): If ni > 1 Then D0$ = Mid(D0$, 1, ni - 1)
    Rob_前M = D0$
    End Function
Function Rob_後M(D1$, Moji$)
    ' D1$ 文字を探してその文字より後の文字列を返す
    ' D1$="*x"  Moji$="100*x500"   --->  "500"
    D0$ = Moji$
    ni = InStr(D0$, D1$): If ni > 1 Then D0$ = Mid(D0$, ni + Len(D1$))
    Rob_後M = D0$
    End Function


Function Rob_No_ck$(Moji$)
    ' 節点番号,部材番号の Ck 用です
    ' MOJI$ の中に Mojが有るのを捜す  無ければ　Data 個数( exp "2"  "1") を返す
    ReDim S_Ds$(500), S_Di(500)
    
    D1$ = Moji$:     ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case "(", ")"
       Case " ", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "　": Rob_No_ck$ = " 漢字ﾌﾞﾗﾝｸ があります": Exit Function
       Case "O", "o": Rob_No_ck$ = " O(ｵ) があります": Exit Function
       Case Else: D2$ = Mid(D1$, i, 1)
            If N漢字(D2$) > 0 Then D2$ = "漢字" + Mid(D1$, i, 1)
            Rob_No_ck$ = "" + D2$ + " があります": Exit Function
       End Select
       Next i
    
    
    Call Ddata(" ", D1$, S_Ds$(), S_Di(), ni)
        For ii = 1 To ni
            D1$ = S_Ds$(ii): Lnn = Len(D1$)
            If Mid(D1$, 1, 1) = "(" Then
                  If Right(D1$, 1) <> ")" Then Rob_No_ck$ = " 番号 " + S_Ds$(ii) + "が (___) でない": Exit Function
                  D1$ = Mid(D1$, 2, Lnn - 2)
                  End If
            
            If InStr(D1$, "(") > 0 Then Rob_No_ck$ = " 番号 " + S_Ds$(ii) + " がおかしい": Exit Function
            If InStr(D1$, ")") > 0 Then Rob_No_ck$ = " 番号 " + S_Ds$(ii) + " がおかしい": Exit Function
            If Mid(D1$, 1, 1) = "0" Then Rob_No_ck$ = " 番号 " + S_Ds$(ii) + "が 0 です": Exit Function
            番号 = Val(D1$)
            
            If 番号 <= 0 Then Rob_No_ck$ = " 番号 " + S_Ds$(ii) + " がおかしい": Exit Function
            If 番号 > 990000 Then Rob_No_ck$ = " 番号 " + S_Ds$(ii) + " > 990000": Exit Function
            Next ii
    Rob_No_ck$ = f0(ni)
    End Function

Function F_数式ck0s(Moji As String) As String
    ' 橋脚専用 MOJI$ の中に Mojが有るのを捜す  無ければ　"" を返す
    Dim D1s As String, D2s As String
    F_数式ck0s = ""
    D1s = Moji
    ni = Len(D1s)
    For i = 1 To ni
       Select Case Mid(D1s, i, 1)
       Case ".", "+", "-"
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "　": F_数式ck0s = "漢字ﾌﾞﾗﾝｸ": Exit For
       Case "O", "o": F_数式ck0s = "O(ｵ)": Exit For
       Case Else: D2s = Mid(D1s, i, 1)
            If N漢字(D2s) > 0 Then D2s = "漢字" + Mid(D1s, i, 1)
            F_数式ck0s = D2s: Exit For
       End Select
       Next i
    
    End Function
Function Rob_数式ck0$(Moji$)
    ' MOJI$ の中に Mojが有るのを捜す  無ければ　"" を返す
    Rob_数式ck0$ = ""
    D1$ = Moji$
    ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case "."
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "　": Rob_数式ck0$ = "漢字ﾌﾞﾗﾝｸ": Exit For
       Case "O", "o": Rob_数式ck0$ = "O(ｵ)": Exit For
       Case Else: D2$ = Mid(D1$, i, 1)
            If N漢字(D2$) > 0 Then D2$ = "漢字" + Mid(D1$, i, 1)
            Rob_数式ck0$ = D2$: Exit For
       End Select
       Next i
    
    End Function

Function Rob_数式ck$(Moji$)
    ' MOJI$ の中に Mojが有るのを捜す  無ければ　"" を返す
    Rob_数式ck$ = ""
    D1$ = Moji$
    ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case " "
       Case "x"
       Case "=", "\", "|", "@"
       Case ".", "-", "+", "/", "*":
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case "　": Rob_数式ck$ = "漢字ﾌﾞﾗﾝｸ": Exit For
       Case "O", "o": Rob_数式ck$ = "O(ｵ)": Exit For
       Case Else: D2$ = Mid(D1$, i, 1)
            If N漢字(D2$) > 0 Then D2$ = "漢字" + Mid(D1$, i, 1)
            Rob_数式ck$ = D2$: Exit For
       End Select
       Next i
    
    End Function

Function J文字$(Moji$)
    ' MOJI$ が　文字(M) か 数値(1) かを判断する
    D1$ = Moji$
    J文字$ = "1"
    ni = Len(D1$)
    For i = 1 To ni
       Select Case Mid(D1$, i, 1)
       Case ".", "-":
       Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9":
       Case Else: J文字$ = "M": Exit For
       End Select
       Next i
    
    End Function



Function 文字変換$(Moji$, D1$, D2$)
    ' Moji$ から D1$ を捜して D2$ に変換する
    ' D1$ が 2ﾊﾞｲﾄ以上でも可
    ' ? 文字変換("H-300*150*6.5*9","*","x")  ---> H-300x150x6.5x9
    
    If InStr(D2$, D1$) > 0 Then er ("ERR 文字変換  "): Stop: 世er = "*": Exit Function
    Moj$ = Moji$
    n1 = Len(D1$)
    Do: ni = InStr(Moj$, D1$): If ni = 0 Then Exit Do
         Moj1$ = Mid(Moj$, 1, ni - 1): Moj2$ = Mid$(Moj$, ni + n1)
         Moj$ = Moj1$ + D2$ + Moj2$
         Loop
    文字変換$ = Moj$
    End Function



Function N漢字(Moji$)
   ' 含まれる漢字の数を返す
   NSU = 0: LNi = Len(Moji$)
   For i = 1 To LNi: ni = Asc(Mid$(Moji$, i, 1)): If ni < 1 Then NSU = NSU + 1
      Next i
   N漢字 = NSU
   End Function

'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│　　　　Fomat 関数
'│                                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
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
   ' n   E表示
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

Function F8$(数値)
   ' 数値の前に (,)を付ける
   F8$ = "," + F9(数値)
   End Function


Function F9$(数値)
   'XXXii = F_誤差(数値, 10)
   XXXii = CSng(数値)
   Ds11$ = Trim$(str$(XXXii))
   If Mid$(Ds11$, 1, 1) = "." Then Ds11$ = "0" + Ds11$
   If Mid$(Ds11$, 1, 2) = "-." Then Ds11$ = "-0." + Mid$(Ds11$, 3)
   F9$ = Ds11$
   End Function
Function FP1$(数値)
   FP1$ = "+" + F9(数値)
   End Function

Function FD1$(数値1)
   FD1$ = F9(数値1)
   End Function
Function FD2$(数値1, 数値2)
   FD2$ = F9(数値1) + F8(数値2)
   End Function
Function FD3$(数値1, 数値2, 数値3)
   FD3$ = F9(数値1) + F8(数値2) + F8(数値3)
   End Function
Function FD4$(数値1, 数値2, 数値3, 数値4)
   FD4$ = F9(数値1) + F8(数値2) + F8(数値3) + F8(数値4)
   End Function
Function FD5$(数値1, 数値2, 数値3, 数値4, 数値5)
   FD5$ = F9(数値1) + F8(数値2) + F8(数値3) + F8(数値4) + F8(数値5)
   End Function
Function FD6$(数値1, 数値2, 数値3, 数値4, 数値5, 数値6)
   FD6$ = F9(数値1) + F8(数値2) + F8(数値3) + F8(数値4) + F8(数値5) + F8(数値6)
   End Function
Function FDn$(n, 数値())
   ' n<0 の場合  数値は -数値とする
   D1$ = ""
   ni = n: 符号 = 1: If ni < 0 Then ni = -n: 符号 = -1
   For ii = 1 To ni: D1$ = D1$ + F8(符号 * 数値(ii)):  Next ii
   FDn$ = Mid(D1$, 2)
   End Function



Function FABC$(X)
   ' X(数値) を 123456789ABCDEFGHIJKLMNOPQRSTUXYZ(文字) に変換
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
   ' Moj$ を n ﾊﾞｲﾄの文字にする 漢字を考慮　　漢字は2ﾊﾞｲﾄ
   文字$ = Trim$(Moj$): mn = N漢字(文字$) + Len(文字$): sp$ = "": If mn < n Then sp$ = Space$(n - mn)
   Fmoj$ = 文字$ + sp$
   End Function

Function 数21(X)
   'H12.01.25   format 00_00_21 の内 1桁目と2桁目の数値
   XX = Int(X):   数21 = XX - 100 * Int(XX / 100)
   End Function
Function 数43(X)
   'H12.01.25   format 00_43_00 の内 3桁目と4桁目の数値
   XX = Int(X / 100): 数43 = XX - 100 * Int(XX / 100)
   End Function
Function 数65(X)
   'H12.01.25   format 65_00_00 の内 5桁目と6桁目の数値
   XX = Int(X / 10000): 数65 = XX - 100 * Int(XX / 100)
   End Function
Function F左$(Da$, ni)
   ' H10.9.21 文字左寄り ni 個
   ' Da$ を n ﾊﾞｲﾄの文字にする 漢字を考慮　　漢字は2ﾊﾞｲﾄ
   Da2$ = RTrim$(Da$): N漢 = N漢字(Da2$)
   'Stop
   'LL = Len(DA2$): If Mid(DA2$, LL - 1) = " " Then DA2$ = RTrim(Mid$(DA2$, 1, LL - 1))
   If Len(Da2$) + N漢 > ni Then F左$ = Da$: Exit Function
   F左$ = Mid$(Da2$ + Space$(ni), 1, ni - N漢)
   End Function
Function F中$(Da$, ni)
   ' H10.9.24 文字中寄り ni 個
   Da2$ = Trim$(Da$): N漢 = N漢字(Da2$)
   N0 = Len(Da2$) + N漢: If N0 >= ni Then F中$ = Da$: Exit Function
   n1 = Int((ni - N0) / 2)
   n2 = ni - N0 - n1
   F中$ = Space$(n1) + Da2$ + Space$(n2)
   End Function
Function F右$(Da$, ni)
   ' ﾌﾞﾗﾝｸでない場合広げる
   Da2$ = LTrim$(Da$): N漢 = N漢字(Da2$)
   N0 = Len(Da2$) + N漢: If N0 >= ni Then F右$ = Da$: Exit Function
  
   F右$ = Right$(Space$(ni) + Da2$, ni - N漢)
  ' F右$ = Right$(Space$(ni) + Da2$, ni)
  
  End Function

Function FD(Da$)
   ' B*D  BxD  などで   Dの値を計算
      Wda$ = UCase(Da$)
        Do
             ni = InStr(Wda$, "X"): If ni > 1 Then Exit Do
             ni = InStr(Wda$, "*"): If ni > 1 Then Exit Do
             Exit Do
             Loop
   If ni < 1 Then FD = 0: Exit Function
   FD = Val(Mid$(Wda$, ni + 1))

   End Function



'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│
'│　　　　値 min  max 関数
'│
'│                                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub Calu_順番min(個数, 数値() As Single, 順番() As Integer)
    ' 値の小さい順番の番号をつける
    ' 順番(1)=1番目の　数値(n1) のn1  順番(3)=3番目の　数値(n3) のn3
    For ii = 1 To 個数
        順番1 = 1:  数値1 = 数値(ii)
        For jj = 1 To 個数
        Select Case 数値(jj) - 数値1
        Case 0:     If ii > jj Then 順番1 = 順番1 + 1
        Case Is < 0: 順番1 = 順番1 + 1
        Case Else
        End Select
        Next jj
        順番(順番1) = ii
    Next ii
    End Sub

Sub Calu_順番max(個数, 数値() As Single, 順番() As Integer)
    ' 値の大きい順番の番号をつける
    ' 順番(1)=1番目の　数値(n1) のn1  順番(3)=3番目の　数値(n3) のn3
    For ii = 1 To 個数
        順番1 = 1:  数値1 = 数値(ii)
        For jj = 1 To 個数
        Select Case 数値(jj) - 数値1
        Case 0:     If ii > jj Then 順番1 = 順番1 + 1
        Case Is > 0: 順番1 = 順番1 + 1
        Case Else
        End Select
        Next jj
        順番(順番1) = ii
    Next ii
    End Sub



Function 値max(X1, X2, X3, X4, X5)
    Stop: ' 2001.12.5 Rob OK
    X0 = X1
    If X2 > X0 Then X0 = X2
    If X3 > X0 Then X0 = X3
    If X4 > X0 Then X0 = X4
    If X5 > X0 Then X0 = X5
    値max = X0
    End Function
Function Fmax3(a1, a2, A3)
    ' A1, A2, A3 の最大値を返す
    A0 = a1
    If A0 < a2 Then A0 = a2
    If A0 < A3 Then A0 = A3
    Fmax3 = A0
    End Function
Function Fmax5(a1, a2, A3, A4, A5)
    ' A1, A2, A3, A4, A5 の最大値を返す
    A0 = a1
    If A0 < a2 Then A0 = a2
    If A0 < A3 Then A0 = A3
    If A0 < A4 Then A0 = A4
    If A0 < A5 Then A0 = A5
    Fmax5 = A0
    End Function

Function Fmax_N(D1$, Wda$)
    '最大値を返す
    ' D1$="/"  Wda$="5/6/2"  ---> 6
    ' Fmax_n
    
    Call Ddata(D1$, Wda$, Ds$(), Di(), ni)
    Fmax_N = Di(1)
    For ii = 1 To ni: If Fmax_N < Di(ii) Then Fmax_N = Di(ii)
         Next ii
    
    End Function

Function Fmin3(a1, a2, A3)
    ' A1, A2, A3 の最小値を返す
    A0 = a1
    If A0 > a2 Then A0 = a2
    If A0 > A3 Then A0 = A3
    Fmin3 = A0
    
    End Function


Function 値min(X1, X2, X3, X4, X5)
    X0 = X1
    If X2 < X0 Then X0 = X2
    If X3 < X0 Then X0 = X3
    If X4 < X0 Then X0 = X4
    If X5 < X0 Then X0 = X5
    値min = X0
    End Function
'┌─────────────────────────────────────────────────────────────────┐
'│
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│
'│
'└─────────────────────────────────────────────────────────────────┘
'======================================================================================================================
'======================================================================================================================
'======================================================================================================================
Sub LP_Circle(X0, Y0, r, e$)
     ' LP_scale
     '絶対座標(X0,Y0)に 半径Rの 円を描く
     Xiii = X0 / LP_scale: Yiii = 296 - Y0 / LP_scale
     Print #40, "[P:"; f2$(Xiii); ","; f2$(Yiii); "]\[Cir:"; f2$(r / LP_scale); "]"
   End Sub

Sub LP_Line(X(), Y(), n, e$)
     '絶対座標(X(i),Y(i))から 絶対座標(X(i+1),Y(i+1))へを描く
     If n < 1 Then e$ = "ｴﾗｰ N<1 ": Exit Sub
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
     '絶対座標(X0,Y0)に 文字を描く
     Xiii = X0 / LP_scale: Yiii = 296 - Y0 / LP_scale

     Print #40, "[P:"; f2$(Xiii); ","; f2$(Yiii); "]\"; Moj$

End Sub

Sub LP_Poly(X(), Y(), n, e$)
     '絶対座標(X(i),Y(i))から 相対座標(X(i+1),Y(i+1))へを描く
     If n < 1 Then e$ = "ｴﾗｰ N<1 ": Exit Sub
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
     '絶対座標(X1,Y1)から (X2,Y2)へ Box を描く

     X1i = X1 / LP_scale: Y1i = 296 - Y1 / LP_scale
     X2i = X2 / LP_scale: Y2i = 296 - Y2 / LP_scale
     Print #40, "[P:"; f2$(X1i); ","; f2$(Y1i); "]\";
     Print #40, "[B:"; f2$(X2i - X1i); ","; f2$(Y2i - Y1i); "]"
End Sub


Function ブランク(Moj$)
    ' _ を ﾌﾞﾗﾝｸ に変える
    D$ = Moj$
    Do: ni = InStr(D$, "_"): If ni = 0 Then Exit Do
        D$ = Mid$(D$, 1, ni - 1) & " " & Mid$(D$, ni + 1)
        Loop
    ブランク = D$
    End Function
Function 逆ブランク(Moj$)
    ' ﾌﾞﾗﾝｸ を _ に変える
    D$ = Moj$
    Do: ni = InStr(D$, " "): If ni = 0 Then Exit Do
        D$ = Mid$(D$, 1, ni - 1) & "_" & Mid$(D$, ni + 1)
        Loop
    逆ブランク = D$
    End Function
Function シフト7(Moj$)
    ' ｼﾌﾄ7 を _ に変える
    D$ = Moj$
    Do: ni = InStr(D$, "'"): If ni = 0 Then Exit Do
        D$ = Mid$(D$, 1, ni - 1) & "_" & Mid$(D$, ni + 1)
        Loop
    シフト7 = D$
    End Function
Function F_RAN(Moj$)
    ' RANDAN File から 前後のﾌﾞﾗﾝｸ文字をとる
    D$ = Moj$
    ni = InStr(D$, Chr$(0)): If ni > 1 Then D$ = Mid$(D$, 1, ni - 1)
    ni = InStr(D$, 世f_end$): If ni > 1 Then D$ = Mid$(D$, 1, ni - 1): ' 漢字の場合
    F_RAN = Trim$(D$)
    End Function
Sub Page()
    Npage = Npage + 1: Pa = 13: ' 確認画面.Cls
    Print #40, ""
    Print #40, "/"; String$(84, "■"); Npage
    世_改Page$ = "New"
    LP_Y位置 = 13
    End Sub
Sub 出力題名(題名$, n)
    Call Page
     Print #40, "/LmM "; 題名$
    If n > 0 Then For i = 1 To n: Print #40, "": Pa = Pa + 2.5: Next i
    End Sub
Sub P_網掛(種類$)
         
    Select Case 種類$
    Case ".": Print #40, "/"; String$(165, ".")
    Case "-": Print #40, "/"; String$(165, "-")
    Case Else: Print #40, "/"; String$(165, "="): '1ﾗｲﾝ網掛
    End Select
    End Sub
Function F網掛$(種類$)
    
    Select Case 種類$
    Case ".": F網掛$ = "/" + String$(165, ".")
    Case "-": F網掛$ = "/" + String$(165, "-")
    Case Else: F網掛$ = "/" + String$(165, "="): '1ﾗｲﾝ網掛
    End Select

    End Function


Sub TEMPFILE(iFN$, Temp$, 終記号$)
     Open iFN$ For Input As #80
     Open Temp$ For Output As #81
     Do: If EOF(80) Then Exit Do Else Line Input #80, Da$
        Da$ = Trim$(Da$)
        Select Case Mid$(Da$, 1, 1)
           Case ""
           Case "'"
           Case "$": Print #81, ブランク(Da$)
           Case Else
              Do: ni = InStr(Da$, " "): If ni = 0 Then Exit Do
              If Mid$(Da$, 1, 1) = "'" Then Exit Do
              Da1$ = Mid$(Da$, 1, ni - 1): Print #81, ブランク(Da1$)
              Da$ = LTrim$(Mid$(Da$, ni))
              Loop
              If Mid$(Da$, 1, 1) <> "'" Then Print #81, ブランク(Da$)
           End Select
        Loop
        Print #81, 終記号$: Print #81, 終記号$: Print #81, 終記号$: Print #81, 終記号$
     Close #80
     Close #81

    End Sub

Sub Thenkan(X0, Y0, 角度, Xiii(), Yiii(), n)
    'X0,Y0 回転中心座標   角度 ﾄﾞ
    '反時計回りを +
    If 角度 <> 0 Then
    C角度 = 角度
    Select Case C角度
       Case 0, 360, -360: CS = 1: SN = 0
       Case 90, -270: CS = 0: SN = 1
       Case 180, -180: CS = -1: SN = 0
       Case 270, -90: CS = 0: SN = -1
       Case Else: CS = Cos(3.1415926 * C角度 / 180): SN = Sin(3.1415926 * C角度 / 180)
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
Sub 座標回転(X0, Y0, 角度, X1, Y1)
    'X0,Y0 回転中心座標   角度 ﾄﾞ
    '反時計回りを +
    If 角度 <> 0 Then
    Select Case 角度
       Case 0, 360, -360: CS = 1: SN = 0
       Case 90, -270: CS = 0: SN = 1
       Case 180, -180: CS = -1: SN = 0
       Case 270, -90: CS = 0: SN = -1
       Case Else: CS = Cos(3.1415926 * 角度 / 180): SN = Sin(3.1415926 * 角度 / 180)
       End Select
    LX1 = X1 - X0: LY1 = Y1 - Y0
    LLL = Sqr(LX1 * LX1 + LY1 * LY1)
    If LLL > 0 Then CS1 = LX1 / LLL: SN1 = LY1 / LLL Else CS1 = 0: SN1 = 0
    X1 = X0 + LLL * (CS1 * CS - SN1 * SN)
    Y1 = Y0 + LLL * (SN1 * CS + CS1 * SN)
    End If

    End Sub


'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　Text 出力
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub TEXT(Temp$)
    ' 2001_2_19
    '
    '    //TEXT の出力
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

'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│　　　　入力DATA処理
'│                                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub 入力DATA処理(WTYPE$, Da$)
          ' 2001.12.30
           'Data0$ = ブランク(Da$)
           Data0$ = 文字変換$(Da$, "　", "  "): ' 漢字ﾌﾞﾗﾝｸを置きかえる
           Select Case WTYPE$
           Case "D": ' 一般DATA  Dataを ﾌﾞﾗﾝｸで分割して Return にする
                     ' 空data を ｶｯﾄ
                     ' (') の後を ｶｯﾄ
                     ' ($) の後を全て ｺﾒﾝﾄ Data とする　  但し $=___ を除く
                       ni = InStr(Data0$, "'"): If ni > 1 Then Data0$ = Mid(Data0, 1, ni - 1): ' (') を　ｶｯﾄ
                       If Mid(Data0$, 1, 1) = "'" Then Data0$ = ""
                     '**********************************************************************
                     '**********************************************************************
                       Do:  Data0$ = Trim(Data0$)
                           Ck_Data_Type$ = "**"
                           If Data0$ = "" Then Ck_Data_Type$ = ""
                           If Mid$(Data0$, 1, 1) = "'" Then Ck_Data_Type$ = "'"
                           If UCase(Mid$(Data0$, 1, 5)) = "READ=" Then Ck_Data_Type$ = "READ="
                           If UCase(Mid$(Data0$, 1, 6)) = "READ枠=" Then Ck_Data_Type$ = "READ枠="
                           If Mid$(Data0$, 1, 1) = "$" Then
                                   Ck_Data_Type$ = "$"
                                    ni = InStr(Data0$, ":")
                                    If ni = 2 Then Ck_Data_Type$ = "$:"
                                    If ni > 2 And ni < 6 Then
                                             '  $123:
                                         D1$ = Mid(Data0$, 2, ni - 2):   D1$ = Rob_数式ck0$(D1$):  If D1$ = "" Then Ck_Data_Type$ = "$:"
                                         End If
                                   End If
                           
                           If UCase(Mid$(Trim(Data0$), 1, 4)) = "READ=" Then Stop
                           
                           Select Case Ck_Data_Type$
                           Case "", "'": Exit Do
                           Case "$:": Print #5, ブランク(Data0$): Exit Do
                           Case "READ=":
                                     ni = InStr(Data0$, " "):
                                     If ni = 0 Then Data1$ = Data0$: Data0$ = "" Else Data1$ = Mid$(Data0$, 1, ni - 1): Data0$ = Mid$(Data0$, ni + 1)
                                     Call Data_Read_処理(WTYPE$, Data1$)
                                  Data0$ = ""
                           Case "READ枠=": ifn2$ = Mid$(Data0$, 7): If InStr(ifn2$, ":") = 0 Then ifn2$ = Data_dsk$ + ifn2$
                                     RET$ = Dir(ifn2$)
                                     If RET$ = "" Then
                                          er ("Data File " + ifn2$ + " が無い 無視します"): If 世誤CK > 99 Then Stop
                                          Else
                                          Open ifn2$ For Input As #2
                                               Do: If EOF(2) Then Exit Do
                                               Line Input #2, Data0$
                                               Print #5, ブランク(Data0$)
                                               Loop
                                               Close #2
                                          End If
                                  Data0$ = ""
                           Case Else:   'Case "$" を含む
                                     ni = InStr(Data0$, " "):  If ni = 0 Then Print #5, ブランク(Data0$):  Exit Do
                                     Data1$ = Mid$(Data0$, 1, ni - 1): Data0$ = Mid$(Data0$, ni + 1)
                                     Print #5, ブランク(Data1$)
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
                     
                     Case "*":      Print #5, ブランク(Data1$): If ni < 1 Then Exit Do
                     Case "/":      Print #5, ブランク(Data0$):  Exit Do
                     
                     Case "$":          Print #5, Trim(Data0$): Exit Do
                     Case "[":          n2 = InStr(Data0$, ":"): n3 = InStr(Data0$, "]"):
                                        If n2 = 0 Or n2 >= n3 Then Print #5, Data0$: Exit Do
                                        Print #5, Trim(Data0$): Exit Do
                     Case Else:         Print #5, "$"; Data0$: Exit Do
                     End Select
                     Data0$ = Trim(Data0$)
                     Data0$ = Mid$(Data0$, ni + 1)
                     Loop
           
           Case "*1": '　表紙
           
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
                     Case Else:         Print #5, ブランク(Data1$)
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
          ni = InStr(Data0$, "'"): If ni > 0 Then Data0$ = Mid(Data0$, 1, ni - 1): ' ｺﾒﾝﾄの削除
     
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
           Da1$ = Mid$(Data0$, 1, ni - 1): DD1$ = ブランク(Da1$): If DD1$ <> "" Then Print #5, DD1$
           Data0$ = LTrim$(Mid$(Data0$, ni))
           Loop
           
       'If Mid$(DATA0$, 1, 1) <> "'" Then DD1$ = ブランク(DATA0$): If DD1$ <> "" Then Print #5, DD1$
           DD1$ = ブランク(Data0$): If DD1$ <> "" Then Print #5, DD1$
     End Select
   Return
      
      End Sub

Private Sub Data_Read_処理(WTYPE$, Input_File$)
     ' Read=Fn$ の処理
      iFN$ = Mid(Input_File$, 6)
      ni = InStr(iFN$, ":"): If ni = 0 Then iFN$ = Data_dsk + iFN$
      RET$ = Dir(iFN$)
      If RET$ = "" Then er1$ = EMS0$ + " ﾌｧｲﾙ [ " + iFN$ + " } が無い": er (er1$): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
      Open iFN$ For Input As #3
      Do: If EOF(3) Then Exit Do
           Line Input #3, Da$
           Call 入力DATA処理(WTYPE$, Da$)
           Loop
      Close #3
      End Sub




'┌─────────────────────────────────────────────────────────────────┐
'│　　　　INP項目
'└─────────────────────────────────────────────────────────────────┘
Sub INP項目(ByVal Da$, 項目s$, 項目2s$)
    ' 2001.06.13
    ' 項目s$     /  .   $   [   M=
    ' 項目2s$    DA$=FF=123   項目2s$=125
    '            DA$=/FF=123  項目2s$=FF=125
    '            DA$=[KKK     項目2s$=""
    
     Da$ = Trim(Da$)
     項目s$ = Da$: 項目2s$ = ""
          ni = InStr(Da$, "="): If ni > 1 Then 項目s$ = Mid$(Da$, 1, ni): 項目2s$ = Mid$(Da$, ni + 1)
          Select Case Mid$(Da$, 1, 1)
          Case "/", ".", "$": 項目s$ = Mid$(Da$, 1, 1): 項目2s$ = Mid$(Da$, 2)
          Case "[": 項目s$ = Mid$(Da$, 1, 1): 項目2s$ = ""
          End Select

    End Sub
'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　INP項目3
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub INP項目3(ByVal Da$, 項目s$, 項目2s$, 項目3s$)
    ' 2002.1.12
    '(1) , を捜す 　ni<7   exp DA$="P,1.235,300"  項目s$="P"  項目2s$="P"  項目3s$="1.235,300"
    
    '(2) = を捜す   項目s$="___=" と定義
    
    '(3) /  .  $   [  は   exp　項目s$="/" とする
    
    ' 項目s$    /  .   $    $:   M=   *   **     $*
    ' 項目2s$   /M=    .K=  $:   /MIDA  /END   *  **   $*
    ' 項目3s$   exp  /Mida=ABCD   項目3s$="ABCD"
    
     DA0$ = Trim(Da$)
     項目s$ = DA0$: 項目2s$ = "": 項目3s$ = ""
          ni = InStr(DA0$, ","):
               If ni > 1 And ni < 7 Then
                   項目s$ = Mid$(DA0$, 1, ni): 項目2s$ = 項目s$: 項目3s$ = Mid$(DA0$, ni + 1)
                   End If
          
          ni = InStr(DA0$, "="): If ni > 1 Then 項目s$ = Mid$(DA0$, 1, ni): 項目2s$ = 項目s$: 項目3s$ = Mid$(DA0$, ni + 1)
          
          
          Select Case Mid$(DA0$, 1, 1)
          Case "/", ".": 項目s$ = Mid$(DA0$, 1, 1): If 項目2s$ = "" Then 項目2s$ = DA0$
                                              '   If 項目3s$ = "" Then 項目3s$ = Mid(Da0$, 2)
          Case "$": 項目s$ = "$": 項目2s$ = "$": 項目3s$ = Mid(DA0$, 2)
                    ni = InStr(DA0$, ":")
                    If ni > 2 And ni < 6 Then
                        TAB1$ = Mid$(DA0$, 2, ni - 2)
                        If Rob_数式ck0$(TAB1$) = "" Then 項目s$ = "$:": 項目2s$ = "$:": 項目3s$ = Mid$(DA0$, 2)
                        End If
                    If Mid(DA0$, 1, 2) = "$*" Then
                        項目s$ = "$*": 項目2s$ = "$*": 項目3s$ = Mid(DA0$, 3)
                        End If
          
          Case "[": 項目s$ = "[": '項目3s$ = ""
          Case "*": 項目s$ = "*": 項目2s$ = "*": 項目3s$ = ""
                    If Mid$(DA0$, 1, 2) = "**" Then
                         項目s$ = "**": 項目2s$ = "**"
                         項目3s$ = "■ User ｺﾒﾝﾄ  " + Mid(DA0$, 3)
                         End If
          
          
          End Select

    End Sub

'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　Rob 出力_Lp
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub 出力_Lp(項目数, 出力DATA$(), Dpit)
     ' 出力DATA を Fileに出力   改ﾍﾟｰｼﾞを考慮
     ' 項目数         Endは 項目数=0 とする
     ' 出力DATA
     ' 出力DATAが 1 ﾍﾟｰｼﾞ に入らない時 改ﾍﾟｰｼﾞ
     ' 世_改Page$ = "New" は改Page 済み
        
        A_pit = 0
        Mpit = Dpit * 4
        For ii = 1 To 項目数: A_pit = A_pit + Dpit
              If UCase(Mid$(Data1$, 1, 4)) = "/LMM" Then A_pit = A_pit + Mpit - Dpit
              Next ii
        If Pa + A_pit > Pend Then If UCase(世_改Page$) <> "NEW" Then Call Page
        'Call P_網掛("")
        For ii = 1 To 項目数: Pit = Dpit
              Data1$ = RTrim$(出力DATA(ii))
              
              If UCase(Mid$(Data1$, 1, 4)) = "/LMM" Then Pit = Mpit
              If Pa + Pit > 270 Then Page
              Print #40, Data1$: Pa = Pa + Pit
              世_改Page$ = ""
            Next ii

     項目数 = 0
     End Sub




'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　特記コメント
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub 特記コメント(特記come数, 特記come$(), 条件変更$)
     Print #40, ""
     If 特記come数 > 0 Then
         For i = 1 To 特記come数:
         Moj$ = ブランク(特記come$(i)): Call P_特記事項(Moj$):
         Next i
         End If
     If 条件変更$ = "" Then Print #40, "" Else Print #40, "'          <<<<< "; 条件変更$; " >>>>>"
     
     Pa = Pa + 特記come数 * 改行間隔
     特記come数 = 0
     End Sub
Sub P_特記事項(特記$)
    'exp    特記$="15:___________"
    D$ = 特記$: Ntab = Val(D$)
    'D$ = ブランク(D$)
    ni = InStr(D$, ":"): If Ntab > 0 And ni > 0 And ni < 6 Then Print #40, Tab(Ntab);: D$ = Mid$(D$, ni + 1)
    Print #40, D$
    End Sub

Function 特記_Dlp$(特記_come$, 条件変更$)
    ' 2001_7_25
    ' 条件変更$ 未使用
    'exp    特記_come$="15:___________"
    'exp    特記_come$="100:___________"
    
    D$ = Trim(特記_come$): D$ = ブランク(D$)
 '    Ntab = Val(D$)

    
    '$12:___ の ck
    ni = InStr(D$, ":"):
    If ni > 0 And ni < 5 Then
          TAB1$ = Mid$(D$, 1, ni - 1)
          If Rob_数式ck0$(TAB1$) = "" Then
               Ntab = Val(D$)
               If Ntab > 0 Then D$ = Space$(Ntab) + Mid$(D$, ni + 1)
               End If
          End If
    
    特記_Dlp$ = D$

    End Function

'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│　　　　NG_出力
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub NG_出力(計算項目$, NG箇所数 As Integer, NG内容$(), Dpit)
     '  500 項目 しか出力出来ません
    ReDim 出力DATA$(510)
    Dim 箇所数 As Integer
    D1$ = Space$(15)
    箇所数 = NG箇所数: If 箇所数 > 500 Then 箇所数 = 500
    
     ni = Len(計算項目$) + N漢字(計算項目$) + 3 + 18 + 5
    
    Select Case NG箇所数
    Case 0:
                出力DATA$(1) = D1$ + String$(ni, "=")
                出力DATA$(2) = D1$ + "   " + 計算項目$ + " に NGはありません"
                出力DATA$(3) = D1$ + String$(ni, "=")
                出力DATA$(4) = ""
                出力DATA$(5) = ""
                
                箇所数 = 5
    
    Case Else:
                出力DATA$(1) = D1$ + String$(ni, "=")
                出力DATA$(2) = D1$ + "   " + 計算項目$ + " の NG リスト"
                出力DATA$(3) = D1$ + String$(ni, "=")
                For ii = 1 To 箇所数
                    出力DATA$(3 + ii) = D1$ + NG内容$(ii)
                    Next ii
                出力DATA$(箇所数 + 4) = ""
                出力DATA$(箇所数 + 5) = ""
                箇所数 = 箇所数 + 5
    End Select
    
    Call 出力_Lp(箇所数, 出力DATA$(), Dpit)
    End Sub
           
'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│        数学計算                                                                                                                  │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
Sub Calu_Gauss(NN1, aa1(), Y1(), X1())
    ' Gauss の消去法
    ' AA1(i,j)   i 行  j 列
    ' 対角要素が 0の場合計算できない は　Err で止まる
    '     A(1,1)*X(1)+A(1,2)*X(2)+A(1,3)*X(3)････+A(1,j)*X(j)+=Y(1)
    '     A(2,1)*X(1)+A(2,2)*X(2)+A(2,3)*X(3)････+A(2,j)*X(j)+=Y(2)
    '     A(3,1)*X(1)+A(3,2)*X(2)+A(3,3)*X(3)････+A(3,j)*X(j)+=Y(3)
    '     A(i,1)*X(1)+A(i,2)*X(2)+A(i,3)*X(3)････+A(i,j)*X(j)+=Y(i)
    '
    ' X1(i) 答え
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
    ' 東邦エンジニアリング専用
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
                   個数 = 1
                   Do
                       ni = InStr(Da$, " ")
                       If ni = 0 Then Data1(個数) = Val(Da$): Exit Do
                       Data1(個数) = Val(Mid(Da$, 1, ni)): Da$ = Trim(Mid(Da$, ni + 1))
                       個数 = 個数 + 1
                       Loop

           If 個数 = 4 Then
                Call Calu_AB(Data1(1), Data1(2), Data1(3), Data1(4), a, b, a2, B2)
                If a1 <> 0 Or B1 <> 0 Then
                     XX = -(B1 - B2) / (a1 - a2)
                     YY = a1 * XX + B1
                     Print #6, Space$(15); "T="; XX; ",  Kh="; YY

                     End If
                a1 = a2: B1 = B2
                Print #6, ""
                Else
                er1$ = "*ｴﾗｰ " + str(NN) + " 番目 ﾃﾞｰﾀｰ   個数<>4 である"
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
      er1$ = "計算終了"
      MsgBox er1$


    End Sub

Private Sub Calu_AB(T1, KH1, T2, KH2, a, b, a2, B2)
    ' 東邦エンジニアリング専用
    '
    '  T1,Kh1,   T2,Kh2
    '
    '  Kh=A*T^B        A,B  を求める
    '

    b = Log(KH1 / KH2) / Log(T1 / T2)
    a = KH1 / T1 ^ b
    res$ = Space$(15) + "Kh =" + str(a) + " * T ^" + str(b)
    Print #6, res$

    a2 = (KH1 - KH2) / (T1 - T2)
    B2 = KH1 - a2 * T1
    Print #6, Space$(15); "A="; a2; ",   B="; B2
    End Sub




'┌─────────────────────────────────────────────────────────────────┐
'│                                                                                                                                  │
'│                                                                                                                                  │
'│            UXF 関数                                                                                                              │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│                                                                                                                                  │
'│        2002.7.20                                                                                                                 │
'│                                                                                                                                  │
'└─────────────────────────────────────────────────────────────────┘
'
' 座標系は 1象限の座標とします 左下原点
' 座標は全て UXF_原点(X0, Y0) からの座標です
' 角度は X座標+からとし 反時計回りを + とする

Sub 図名入力(図面名$, 縮尺$, ZU_Scale, 図番号$)
     Line Input #2, 図面名$: ' 確認画面.Print 図面名$; "  ";
         
     Line Input #2, 図番号$: ' 確認画面.Print 図番号$
     
     Line Input #2, 縮尺$: ' 確認画面.Print 縮尺$; "  ";
         ni = InStr(縮尺$, ":")
         If ni = 0 Then ni = InStr(縮尺$, "/")
         If ni = 0 Then 世er = "   [" & 縮尺$ & "] 図面スケールが   1:____ 1/____   S 1:____   S 1/____    S=1:___   or  S=1/___ でない"
         
         ZU_Scale = Val(Mid$(縮尺$, ni + 1))
          
         If ZU_Scale <= 0 Then 世er = 世er & "  図面スケール  <= 0":
         If 世er <> "" Then If 世誤CK > 99 Then er (世er): Stop: Exit Sub Else Exit Sub

    End Sub

Sub 図_File_名(Ofn$, Input_F$, Output_F$)
    ' ﾌｧｲﾙ名を決める
    ' Input_F$   UXF File の出力ﾌｧｲﾙ名
    ' Output_F$  DXF File の出力ﾌｧｲﾙ名
     
     FN$ = Ofn$
     ni = InStr(FN$, "."):     If ni > 1 Then FN$ = Mid(FN$, 1, ni - 1)
     
     Input_F$ = FN$ + ".UXF"
          Do: ni = InStr(Input_F$, ":"): If ni = 0 Then Exit Do
              Input_F$ = Mid(Input_F$, ni + 1)
              Loop
              Input_F$ = TEMP_Data_dsk + Input_F$
     
     If 変換type$ = "" Then 変換type$ = "Dxf"
     Output_F$ = FN$ + "." + 変換type$
     ni = InStr(Output_F$, ":"):     If ni = 0 Then Output_F$ = Dxf_dsk + Output_F$
     
    End Sub

Sub 図_File_Start(Input_F$, 変換type$, DataType$, 用紙size$, 図_Scale, 図LAYER_N, 図Zlayer$())
    
           '**************************************************************************
           On Error Resume Next
                Close #60
                On Error GoTo 0
           '**************************************************************************
    
    Open Input_F$ For Output As #60
          Print #60, UXF_用紙size(用紙size$)
          Print #60, UXF_変換type(変換type$)
          Print #60, UXF_Datatype(DataType$)
          Print #60, UXF_Scale(図_Scale)
          For ii = 1 To 図LAYER_N
          Print #60, "     " + UXF_Layer名登録(図Zlayer$(ii))
          Next ii
          
          Print #60, UXF_Start("")
   
   
   End Sub


Sub 図_原点(原点X, 原点Y)
  '[[[[[  原点 ]]]]]
      
      Print #60, "'"
      Print #60, "'┌───────────────────────────────────────────────────┐"
      Print #60, "'│   原点                                                                                               │"
      Print #60, "'└───────────────────────────────────────────────────┘"
      Print #60, UXF_原点(原点X, 原点Y)

   End Sub

