Attribute VB_Name = "StringFnc"
Option Explicit

'**************************************************************
'VisualBasic 5.0以降対応 文字列操作ライブラリ - StringFnc.bas
'2000/04/29 kit 編集
'**************************************************************

'機　能：長いファイル名（パス含む）の間を...で省略した文字列にして返す
'戻り値：加工後の文字列
Public Function gCutLongFileName(ByRef rstrFileName As String) As String
    Dim intLeftEnd As Integer
    Dim intRightStart As Integer
    Dim intYenNum As Integer
    Dim i As Integer
    
    gCutLongFileName = rstrFileName
    
    If Len(rstrFileName) < 48 Then Exit Function
    
    '￥マークの個数をチェックして真中あたりを省略する
    i = 0
    intYenNum = 0
    Do While True
        i = InStr(i + 1, rstrFileName, "\")
        If i = 0 Then Exit Do
        
        intYenNum = intYenNum + 1
        If intYenNum = 2 Then intLeftEnd = i
    Loop
    
    If intYenNum < 5 Then Exit Function
    
    intYenNum = 0
    intRightStart = 0
    For i = Len(rstrFileName) To 1 Step -1
        If i = InStr(i, rstrFileName, "\") Then
            intYenNum = intYenNum + 1
            If intYenNum = 2 Then Exit For
        End If
    Next
    
    intRightStart = i
    
    gCutLongFileName = Left$(rstrFileName, intLeftEnd) & "..." & Mid$(rstrFileName, intRightStart)

End Function

'機　能：固定文字列中の"･"=chr$(0)と空白を取り除いた文字列を返す
'       "･"=chr$(0)は後ろについた分だけしか消さないので注意
'戻り値：加工後の文字列
Public Function gClearStr(ByRef rstrSorc As String) As String
  Dim i As Integer
  
  i = InStr(1, rstrSorc, vbNullChar, vbTextCompare)
  
  'i = 1ならLeft$は""を返す
  If i > 0 Then gClearStr = Trim$(Left$(rstrSorc, i - 1)) Else gClearStr = Trim$(rstrSorc)

End Function

'   gClearStr が　ByVal になっただけ
Public Function gStrFromFixed(ByVal strSorc As String) As String
  Dim i As Integer
  
  i = InStr(1, strSorc, vbNullChar, vbTextCompare)
  
  If i > 0 Then gStrFromFixed = Trim$(Left$(strSorc, i - 1)) Else gStrFromFixed = Trim$(strSorc)

End Function

'機　能：入力された文字列を、指定文字で２つに分ける。
'戻り値：分割成功 True 、分割失敗 False
Public Function gSplitString(strInputText As String, strSplitCharacter As String, strLeftText As String, strRightText As String)
    Dim iPos As Integer
    Dim iLenText As Integer, iLenChr As Integer
    
    iLenChr = Len(strSplitCharacter)
    iLenText = Len(strInputText)
    iPos = InStr(strInputText, strSplitCharacter)
    If iPos = 0 Or iLenText = iLenChr Then
        strLeftText = strInputText
        strRightText = ""
        gSplitString = False
    Else
        Select Case iPos
        Case 1
            strLeftText = ""
            strRightText = Mid(strInputText, iPos + iLenChr)
        Case iLenText - iLenChr + 1
            strLeftText = Left(strInputText, iPos - 1)
            strRightText = ""
        Case Else
            strLeftText = Left(strInputText, iPos - 1)
            strRightText = Mid(strInputText, iPos + iLenChr)
        End Select
        gSplitString = True
    End If
End Function

'機　能：文字列 strDt を iNum個 つなげた文字列を返す。（N88等のString$()みたいなもの）
'戻り値：複製された文字列
Public Function gDupStr(iNum As Integer, strDt As String) As String
Dim i As Integer
  gDupStr = ""
  For i = 1 To iNum
    gDupStr = gDupStr & strDt
  Next i
End Function


'機　能：値をフォーマッティングした文字列にして返す
'        Format()と同様の機能だが、整形後の文字列がフォーマット文字列よりも短い場合に
'        左側から空白をつめる所が異なる。
'        N88Basic等の USING に近い。
'戻り値：整形された文字列
Public Function gUsing(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    
    strUsing = Format$(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        'strUsing = String(intFormat, "#")
    End If
    gUsing = strUsing
End Function

'機　能：値をフォーマッティングした文字列にして返す
'        Format()と同様の機能だが、整形後の文字列がフォーマット文字列よりも短い場合に
'        左側から空白をつめる所が異なる。
'        フォーマット文字列の方が短かった場合は、フォーマット文字列と同じ長さの"#"の羅列を返す？
'戻り値：整形された文字列
Public Function gUsingA(verNumber As Variant, strFormat As String) As String
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
    gUsingA = strUsing
End Function

'機　能：strTarget から　文字列 strToRemove を取り除いた文字列を返す
'戻り値：   求める　不要な文字列を取り除いた文字列
Public Function RemovedStr(strTarget As String, strToRemove As String) As String
Dim i As Integer
Dim strT As String
    
    strT = strTarget
    If strToRemove <> "" Then
        i = InStr(strTarget, strToRemove)
        If i > 0 Then
            strT = ""
            If i > 1 Then
                strT = Left(strTarget, i - 1)
            End If
            strT = strT & Mid(strTarget, i + Len(strToRemove))
        End If
    End If
    RemovedStr = strT
End Function
