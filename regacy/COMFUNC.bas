Attribute VB_Name = "COMFUNC"
Option Explicit
'共通に使う関数などを、ここに集める
Public Const plus = " + "
Public Const minus = " - "
Public Const multi = " x "
Public Const divide = " / "
Public Const equal = " = "
Public Const edln = vbCrLf & vbCrLf
Public Const myspace = "           "
Public Const Wmyspace = "                "
Public Const same = " 〃"
Public Const le_ = " ≦ "
Public Const ge_ = " ≧ "
Public Const lt_ = " ＜ "
Public Const gt_ = " ＞ "
Public Const c_ = " ( "
Public Const cc_ = " ) "
Public Const z1z = "0.0"
Public Const z1zz = "0.00"
Public Const z1zzz = "0.##0"
Public Const scssz = "#,##0"
Public Const t_eq = "Ｔeq"
Public Const myarrow = " → "
Public Function pai() As Double
pai = 4# * Atn(1#)
End Function
Public Sub darrow(ByVal a, n As Integer, m As Integer, out As String)
Dim i As Integer
Dim str As String
Dim str1 As String
'Dim BB As Single
'BB = max(Round(a, 2), 0.2)

    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(a, str1)

End Sub

Public Sub darrow1(ByVal a, b, n As Integer, m As Integer, out As String)
Dim i As Integer
Dim str As String
Dim str1 As String
Dim BB As Single
BB = max(Round(a, 2), Round(0.2 * b, 2))

    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(BB, str1)

End Sub

Public Sub darrow2(ByVal a, n As Integer, c As Single, m As Integer, out As String, AB As Single)
Dim i As Integer
Dim str As String
Dim str1 As String
Dim BB As Single
BB = min(Round(a, 2), Round(c, 2))
AB = BB
    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(BB, str1)

End Sub

Public Sub darrow3(ByVal a, n As Integer, c As Single, m As Integer, out As String, AB As Single)
Dim i As Integer
Dim str As String
Dim str1 As String
Dim BB As Single
BB = Round(c, 2) 'min(Round(a, 2), Round(c, 2))
AB = BB
    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(BB, str1)

End Sub

Public Function Sround(ByVal Number As Double) As String
Dim a As Double
a = Abs(Fix(Number * (10 ^ 3) + Sgn(Number) * 0.5))
If Abs(a) > 1000000000# Then a = 0
Sround = Format(Number, "0.000")
If (a Mod 10 = 0) Then
   Sround = Format(Number, "0.00")
Else
   Sround = Format(Number, "0.000")
End If

End Function

Public Function Round(ByVal Number As Double, ByVal Exp As Integer) As Double
Dim DblNum As Double
    If Abs(Number) < 1E+20 Then
    
    DblNum = Number * (10 ^ Exp) + Sgn(Number) * 0.5
    Round = Fix(DblNum) / 10 ^ Exp
    
'    Round = Fix(Number * (10 ^ Exp) + Sgn(Number) * 0.5) / 10 ^ Exp
    End If
End Function

Public Function min(a, b)
'        min = (A + B - Abs(A - B)) / 2#     ← ＡとＢの桁の差が大きいときに正しい答えを返さない
    If a < b Then
        min = a
    Else
        min = b
    End If

End Function

Public Function max(a, b)
'        max = (A + B + Abs(A - B)) / 2#     ← ＡとＢの桁の差が大きいときに正しい答えを返さない
    If a > b Then
        max = a
    Else
        max = b
    End If

End Function

Public Function Using(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    strUsing = Format(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        'strUsing = String(intFormat, "#")
    End If
    Using = strUsing
End Function
Public Function UsingA(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    strUsing = Format(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        strUsing = String(intFormat, "#")
    End If
    UsingA = strUsing
End Function
Public Function moment(ByVal a1, ByVal a2, ByVal m1, ByVal m2) As Double

   moment = -a1 * m1 + a2 * m2

End Function
'////////////// Get各杭座標 関数 /////////////////////////////////////////////////// 作成：03-8-11 sasa ////
' 機能　：杭の入力情報から 各杭の X座標 と Y座標 を計算する。
'           注）この関数が 対応できる杭配置 には限界があります。
'                 ・四隅 に必ず杭が配置されていることを前提とする。
'                 ・下記のパターン以外の杭配置には対応できません。
'
'                  （例１　１つ飛ばし）（例２　全列配置）　（例３　前の組み合わせ）
'                  　　　○　○　　　　　　　○○○　　　　　　○○○　　　○○
'                  　　　　○　　　　　　　　○○○　　　　　　○　○　　　○
'                  　　　○　○　　　　　　　○○○　　　　　　○○○　　　○○
'
' 引数　：杭列 　(1-線路, 2-直角)　各方向の杭列数
'　　　 　L杭本　(1～線路杭列) 　　各列の杭本数
'　　　 　C杭本　(1～直角杭列) 　　各列の杭本数
'　　　 　L座標　(1～線路杭列) 　　各列の座標
'　　　 　C座標　(1～直角杭列) 　　各列の座標
'　　　 　X杭座標(1～杭本数) 　　　各杭のX座標  <------ ※ 答え格納用
'　　　 　Y杭座標(1～杭本数) 　　　各杭のY座標  <------ ※ 答え格納用
'
' 戻り値：杭の総本数 (エラー なら  "-1" )
Public Function Get各杭座標(杭列() As Integer, L杭本() As Integer, C杭本() As Integer _
                        , L座標() As Single, C座標() As Single, X杭座標() As Single, Y杭座標() As Single) As Integer

    Dim i As Integer, j As Integer
    Dim 杭配置() As Integer: ReDim 杭配置(1 To 杭列(1), 1 To 杭列(2))
    Dim L As Integer: L = int∑(L杭本)
    Dim c As Integer: c = int∑(C杭本)
    
    If L <> c Then
        Get各杭座標 = -1
        Exit Function
    Else
         ReDim X杭座標(L)
         ReDim Y杭座標(L)
         Get各杭座標 = L   '杭の総本数をセット（*** 戻り値 ***）
    End If
    
'// ****** 杭配置フラグ  : 1 杭あり、 0 未定、 -1 ありえない *******
    
    ' まず四隅に杭をセット ---------------------------------------------------------------------------------------------------------
    杭配置(1, 1) = 1
    杭配置(杭列(1), 1) = 1
    杭配置(1, 杭列(2)) = 1
    杭配置(杭列(1), 杭列(2)) = 1
    ' 決め! ------------------------------------------------------------------------------------------------------------------------
    For i = 1 To 杭列(1)
        If 杭列(2) = L杭本(i) Then                                              '決め① 直角杭列=線路杭本数の場合
            For j = 1 To 杭列(2)
                杭配置(i, j) = 1
            Next j
        Else
            If (杭列(2) Mod 2 <> 0) And (Int(杭列(2) / 2) + 1) = L杭本(i) Then  '決め② 直角杭列が奇数の場合 かつ 直角杭列/2 =線路杭本数 の場合
                For j = 1 To 杭列(2) Step 2  ' １つ飛ばしに杭ハイチ
                    杭配置(i, j) = 1
                Next j
            End If
        End If
    Next i
    ' ありえない個所をセット ---------------------------------------------------------------------------------------------------------
    ' 線路方向列 の サーチ
    For i = 1 To 杭列(1)
        If L杭本(i) = Get数_2(杭配置, i, 1) Then
            For j = 1 To 杭列(2)
                If 杭配置(i, j) <> 1 Then 杭配置(i, j) = -1
            Next j
        End If
    Next i
    ' 直角方向列 の サーチ
    For j = 1 To 杭列(2)
        If C杭本(j) = Get数_1(杭配置, j, 1) Then
            For i = 1 To 杭列(1)
                If 杭配置(i, j) <> 1 Then 杭配置(i, j) = -1
            Next i
        End If
    Next j
    ' のこり１本の個所に"1"(杭あり) をセット -------------------------------------------------------------------------------------------
    ' 線路方向列 の サーチ
    For i = 1 To 杭列(1)
        If 杭列(2) = (Get数_2(杭配置, i, 1) + Get数_2(杭配置, i, -1) + 1) Then
            For j = 1 To 杭列(2)
                If 杭配置(i, j) <> -1 Then 杭配置(i, j) = 1
            Next j
        End If
    Next i
    ' 直角方向列 の サーチ
    For j = 1 To 杭列(2)
        If 杭列(1) = (Get数_1(杭配置, j, 1) + Get数_1(杭配置, j, -1) + 1) Then
            For i = 1 To 杭列(1)
                If 杭配置(i, j) <> -1 Then 杭配置(i, j) = 1
            Next i
        End If
    Next j
    ' 配列に座標を代入して返す ---------------------------------------------------------------------------------------------------------
    Dim n As Integer: n = 1
    For i = 1 To 杭列(1)
        For j = 1 To 杭列(2)
            If 杭配置(i, j) = 1 Then
                X杭座標(n) = L座標(i)
                Y杭座標(n) = C座標(j)
                n = n + 1
            End If
        Next j
    Next i
End Function
'////////////// "Sub Get各杭座標" 関連関数  ////////////////////////////////////////////////////
' No の数が配列 列にいくつ入っているか探す
Private Function Get数_1(Srch() As Integer, p As Integer, No As Integer) As Integer
    Dim i As Integer, n As Integer
    For i = 1 To UBound(Srch, 1)
        If Srch(i, p) = No Then n = n + 1
    Next i
    Get数_1 = n
End Function
' No の数が配列 行にいくつ入っているか探す
Private Function Get数_2(Srch() As Integer, p As Integer, No As Integer) As Integer
    Dim i As Integer, n As Integer
    For i = 1 To UBound(Srch, 2)
        If Srch(p, i) = No Then n = n + 1
    Next i
    Get数_2 = n
End Function
' Int型の1次元配列の合計を返す
Private Function int∑(IntArry() As Integer) As Integer
    Dim mx As Integer: mx = UBound(IntArry, 1)
    Dim mn As Integer: mn = LBound(IntArry, 1)
    Dim i As Integer, Temp As Integer
    For i = mn To mx
        Temp = IntArry(i) + Temp
    Next i
    int∑ = Temp
End Function





