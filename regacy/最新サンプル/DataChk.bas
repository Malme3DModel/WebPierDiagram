Attribute VB_Name = "DataChk"
Option Explicit
Dim faLoadBuf As vsFlexGrid
Public Const gOlderVersionErrNo = 1 + vbObjectError + 512
Public Const gOlderVersionErrMes = "データが以前のバージョンです"
'*** Grid の列の有無 **
'Public Const gcCol_PHAI = 1             ' φの列有り
'Public Const gcCol_Rf = 0               ' "最大周面支持力度" & vbCrLf & "Rf"
'Public Const gcCOL_圧密沈下 = 0          '   圧 密沈 下考 慮"
'Public Const gcColPos_PHAI = 7
'
'Public 桁分担 As Single
'Public eval_B() As Single
'Public eval_C() As Single
'Public p群集1() As Single
'Public p群集M() As Single
'Public SONOTA風 As Single
'Public p群杭FLG(2) As Integer '1=ノーマル配置    2=千鳥配置
'
Public p杭本数 As Single
Public p杭列数(2) As Single
Public p杭座標X() As Single
Public p杭座標Y() As Single
' 躯体
Public pkuitaiKaburi(3) As Single
Public pkuitaiJiknaga As Single
Public pkuitaiDai(3) As Single
Public pkuitaiJikuN(4) As Integer
Public pkuitaiJikuctc(4) As Integer
Public pkuitaiPictW(4) As String
Public pkuitaikumitate(1) As String
Public pkuitaiStrPictW(4) As String
Public pkuitaiStr(5, 7) As Integer

' はり ==============================
Public pHariKaburi(4) As Integer
Public pHariDai(5) As Integer
Public pHariPictW(4) As String
Public pHariBon(2) As Integer
Public pHariLoop(3, 6) As Integer
Public pHariN(2) As Integer
Public pHariPicth(2) As String
Public pHariループ直線長(2) As Single
Public pHariStrD(2) As String
Public pHariStrW(2) As String
Public pHariStrBon(1) As String
Public 左水平かぶり As Single
Public 右水平かぶり As Single

' 支承 ストッパー ====================
Public pSisyuDai(1) As Integer
Public pSisyu1(2, 6) As Integer
Public pSisyuPictW(2) As String
Public pSisyuD(2, 2) As Integer
Public pSisyu2(2, 2) As String
Public pSisyukabu(2) As Integer
Public pSisyu3(2, 4) As String

Public pStop1(2, 6) As Integer
Public pStopPictW(2) As String
Public pStop2(3, 3) As Integer
Public pStop3(3, 3) As String
Public pStopPictW1(3) As String
Public pStopPictW2(3) As String

' 基　礎 ==============================================
Public pKisoKaburi(3) As Integer '''''純かぶり
Public pKisoKaburi1(4) As Single  ''''線路方向 芯かぶり
Public pKisoKaburi2(4) As Single  ''''線路方向 芯かぶり
Public pKisoDai(9) As Integer
Public pKisoPictW(9) As String
Public pKisoStrDai(2) As Integer
Public pKisoStrPictW(6) As String
Public Kiso重ね(2) As Integer
Public Kisoかぶせ As Integer

'===================================== 杭 ========
Public pKuiHon As Integer
Public pKuiTouNaga As Single
Public pKuiKaburi As Integer
Public pKuiKaburi0 As Integer ''''''''芯かぶり
Public pKuiJiku(2, 15) As Integer
Public pKuiStr(12, 3) As Integer
Public pKuiKumiDai(2) As Integer
Public pKuiKumitateW(2) As String
Public pKuiSpesaN As Integer
Public pHari水平筋 As Integer
Public ループ鉄筋R(4) As Single

''上部工反力の各支点データの合計が入る配列インデックス
'Public Const NKE As Integer = 20
'
Public Function SetfaLoadBuf(fa As vsFlexGrid)
    Set faLoadBuf = fa
End Function

'機　能 ：  計算前の準備。データを計算用配列におとす。
'戻り値 ：  0で正常終了
Public Function SetCalcArrayFromFile() As String
    
    SetCalcArrayFromFile = CalcSet_KKouzou()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Katamochi()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Kisohaikin()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_KuiHaikin()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Shishou()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Kutai()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
    SetCalcArrayFromFile = CalcSet_Calc()
    If Len(SetCalcArrayFromFile) <> 0 Then Exit Function
    
End Function

'機　能 ：  計算前の準備。データを計算用配列におとす。
'戻り値 ：  0で正常終了
Private Function CalcSet_KKouzou() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_KKouzou = ""
    
    '-----------------------------------------------------------
    '下部構造(frmKKouzou)のデータ
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKKouzouFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pB, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pW, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pH, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pKuihaic1, strData, lngRows, lngCols)
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pKuihaic2, strData, lngRows, lngCols)

    'Shakaku
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pShakaku, strData, lngRows, lngCols)

    'txtShindo(i)
    Input #FileNo, strData
    pKuikei = gStrToDbl(strData)
    
    Input #FileNo, strData
    pKuinaga = gStrToDbl(strData)
    
    'フーチング両方テーパ付き チェックボックス
    Input #FileNo, pFootingBothTepa
    
    'RHanti
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(pRHanti, strData, lngRows, lngCols)
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    CalcSet_KKouzou = "frmKKouzou:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function


'機　能 ：  計算前の準備。データを計算用配列におとす。
'戻り値 ：  0で正常終了
Private Function CalcSet_Shishou() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_Shishou = ""
    
    
    '-----------------------------------------------------------
    '支承(frmShishou)のデータ
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrShishouFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pShishou0())
    Call LoadArray(FileNo, pShishou1())
    Call LoadArray(FileNo, pShishou2())
    Call LoadArray(FileNo, pShishou3())
    Call LoadArray(FileNo, pShishou4())
    Call LoadArray(FileNo, pShishou5())
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Shishou = "frmShishou:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function

'機　能 ：  計算前の準備。データを計算用配列におとす。
'戻り値 ：  0で正常終了
Private Function CalcSet_KuiHaikin() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_KuiHaikin = ""
    
    '-----------------------------------------------------------
    '杭配筋(frmKuihaikin)のデータ
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pKuiHaikin0())
    Call LoadArray(FileNo, pKuiHaikin1())
    Call LoadArray(FileNo, pKuiHaikin2())
    Call LoadArray(FileNo, pKuiHaikin3())
    Call LoadArray(FileNo, pKuiHaikin4())
    Call LoadArray(FileNo, pKuiHaikin5())
    Call LoadArray(FileNo, pKuiHaikin6())
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    CalcSet_KuiHaikin = "frmKuihaikin:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function

Private Function CalcSet_Katamochi() As String
    Dim i As Integer, j As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKatamochiFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
        
    Call LoadArray(FileNo, pKatamochi0())
    Call LoadArray(FileNo, pKatamochi1())
    Call LoadArray(FileNo, pKatamochi2())
    Call LoadArray(FileNo, pKatamochi3())
    Call LoadArray(FileNo, pKatamochi4())
    Call LoadArray(FileNo, pKatamochi5())
    Call LoadArray(FileNo, pKatamochi6())
    Call LoadArray(FileNo, pKatamochi7())
    Call LoadArray(FileNo, pKatamochi8())
    Call LoadArray(FileNo, pKatamochi9())
    Call LoadArray(FileNo, pKatamochi10())
    Call LoadArray(FileNo, pKatamochi11())
    Call LoadArray(FileNo, pKatamochi12())
    Call LoadArray(FileNo, pKatamochi13())
    Call LoadArray(FileNo, pKatamochi14())
    Call LoadArray(FileNo, pKatamochi15())
    Call LoadArray(FileNo, pKatamochi16())
    Call LoadArray(FileNo, pKatamochi17())
    Call LoadArray(FileNo, pKatamochi18())
    
    Close #FileNo
    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Katamochi = "frmKatamochi:" & Format$(Err.Number) & vbCrLf & Err.Description
End Function

Private Function CalcSet_Kisohaikin() As String
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim intTmp As Integer
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pKiso0())
    Call LoadArray(FileNo, pKiso1())
    Call LoadArray(FileNo, pKiso2())
    Call LoadArray(FileNo, pKiso3())
    Call LoadArray(FileNo, pKiso4())
    Call LoadArray(FileNo, pKiso5())
    Call LoadArray(FileNo, pKiso6())
    Call LoadArray(FileNo, pKiso7())
    
    
    'かぶせ筋なし チェックボックス
    Input #FileNo, pKisoKabuse
    
    
    Close #FileNo
    Exit Function
    
ErrorHandle:
    Close
    CalcSet_Kisohaikin = "frmKisohaikin:" & Format$(Err.Number) & vbCrLf & Err.Description
End Function

Private Function CalcSet_Kutai() As String
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim i As Long
    Dim j As Long
    Dim k As Integer
    Dim intOptIdx As Integer
    
    On Error GoTo ErrorHandle
    
    CalcSet_Kutai = ""
    
    
    '-----------------------------------------------------------
    '躯体(frmKutai)のデータ
    '-----------------------------------------------------------
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKutaiFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
    
    Call LoadArray(FileNo, pKutai0())
    Call LoadArray(FileNo, pKutai1())
    Call LoadArray(FileNo, pKutai2())
    Call LoadArray(FileNo, pKutai3())
    Call LoadArray(FileNo, pKutai4())
    Call LoadArray(FileNo, pKutai5())
    Call LoadArray(FileNo, pKutai6())
    Call LoadArray(FileNo, pKutai7())
    Call LoadArray(FileNo, pKutai8())
    Call LoadArray(FileNo, pKutai9())
    Call LoadArray(FileNo, pKutai10())
    Call LoadArray(FileNo, pKutai11())
    
    Close #FileNo

    Exit Function
    
ErrorHandle:
    Close
    
    CalcSet_Kutai = "frmKutai:" & Format$(Err.Number) & vbCrLf & Err.Description
End Function

Private Function CalcSet_Calc() As String
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim intTmp As Integer
    Dim strTmp As String
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKeisanFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
    
    '更新フラグ
    For i = 0 To 6
        Input #FileNo, intTmp
        pUpdate(i) = intTmp
    Next

    '出力順
    For i = 0 To 6
        Input #FileNo, strTmp
        pOutputPriority(i) = strTmp
    Next

    '図面名称
    For i = 0 To 6
        Input #FileNo, strTmp
        pOutputName(i) = strTmp
    Next

    '縮尺
    For i = 0 To 6
        Input #FileNo, strTmp
        pOutputSize(i) = strTmp
    Next

    'タイトル、契約番号、DXFディレクトリ
    For i = 0 To 2
        Input #FileNo, strTmp
        pEtc(i) = strTmp
    Next
    
    Close #FileNo
    Exit Function
    pEtc(2) = pEtc(2)
ErrorHandle:
    Close
    CalcSet_Calc = "frmCalc:" & Format$(Err.Number) & vbCrLf & Err.Description

End Function

'機　能 ：  データ文字列を配列にコピーする
'引　数 ：  vfaTarget       対象の配列
'           rstrData        データ文字列(.Clip形式）
Private Sub gStrToDblArray(ByRef rArray() As Double, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim i As Long
    Dim j As Long
    
    Call gStrPasteToLoadGrid(faLoadBuf, rstrData, vlngRows, vlngCols)
    
    With faLoadBuf
        If vlngRows <= 1 Then
            ReDim rArray(vlngCols - 1)
            
            For i = 0 To vlngCols - 1
                rArray(i) = gStrToDbl(.TextMatrix(0, i))
            Next
        
        ElseIf vlngCols <= 1 Then
            ReDim rArray(vlngRows - 1)
            
            For j = 0 To vlngRows - 1
                rArray(j) = gStrToDbl(.TextMatrix(j, 0))
            Next
        Else
            ReDim rArray(vlngCols - 1, vlngRows - 1)
            
            For i = 0 To vlngCols - 1
                For j = 0 To vlngRows - 1
                    rArray(i, j) = gStrToDbl(.TextMatrix(j, i))
                Next
            Next
        End If
        
    End With
    
End Sub

'機　能 ：  データ文字列を配列にコピーする
'引　数 ：  vfaTarget       対象の配列
'           rstrData        データ文字列(.Clip形式）
Private Sub gStrToVariantArray(ByRef rArray() As Variant, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim i As Long
    Dim j As Long
    
    Call gStrPasteToLoadGrid(faLoadBuf, rstrData, vlngRows, vlngCols)
    
    With faLoadBuf
        If vlngRows <= 1 Then
            ReDim rArray(vlngCols - 1)
            
            For i = 0 To vlngCols - 1
                rArray(i) = .TextMatrix(0, i)
            Next
        
        ElseIf vlngCols <= 1 Then
            ReDim rArray(vlngRows - 1)
            
            For j = 0 To vlngRows - 1
                rArray(j) = .TextMatrix(j, 0)
            Next
        Else
            ReDim rArray(vlngCols - 1, vlngRows - 1)
            
            For i = 0 To vlngCols - 1
                For j = 0 To vlngRows - 1
                    rArray(i, j) = .TextMatrix(j, i)
                Next
            Next
        End If
        
    End With
    
End Sub


'機　能 ：  データ文字列を配列にコピーする
'引　数 ：  vfaTarget       対象の配列
'           rstrData        データ文字列(.Clip形式）
Private Sub gStrToStrArray(ByRef rArray() As String, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim i As Long
    Dim j As Long
    
    Call gStrPasteToLoadGrid(faLoadBuf, rstrData, vlngRows, vlngCols)
    
    With faLoadBuf
        If vlngRows <= 1 Then
            ReDim rArray(vlngCols - 1)
            
            For i = 0 To vlngCols - 1
                rArray(i) = .TextMatrix(0, i)
            Next
        
        ElseIf vlngCols <= 1 Then
            ReDim rArray(vlngRows - 1)
            
            For j = 0 To vlngRows - 1
                rArray(j) = .TextMatrix(j, 0)
            Next
        Else
            ReDim rArray(vlngCols - 1, vlngRows - 1)
            
            For i = 0 To vlngCols - 1
                For j = 0 To vlngRows - 1
                    rArray(i, j) = .TextMatrix(j, i)
                Next
            Next
        End If
        
    End With
    
End Sub

'ファイルから読み込んだデータを配列に入れる
Private Sub LoadArray(ByVal FileNo As Integer, ary() As Variant)
    
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    Call gStrToVariantArray(ary(), strData, lngRows, lngCols)
    
End Sub

Public Sub CalcDataSet()
Dim i As Integer
Dim k As Integer
Dim LL As Single, L1 As Single, L2 As Single, L3 As Single

'============================== 躯体寸法
Dim pfB(8) As Variant
Dim pfW(8) As Variant
Dim pfH(8) As Variant

    For i = 0 To 8
        pfB(i) = IIf(pB(i) = "", "0 ", pB(i))
        pfW(i) = IIf(pW(i) = "", "0 ", pW(i))
        pfH(i) = IIf(pH(i) = "", "0 ", pH(i))
    Next i
    
ReDim pB(9) 'As Single
ReDim pW(9) 'As Single
ReDim pH(9) 'As Single

    For i = 0 To 8
        pfB(i) = pfB(i) * 1000
        pfW(i) = pfW(i) * 1000
        pfH(i) = pfH(i) * 1000
    Next i
    For i = 9 To 1 Step -1
        pB(i) = pfB(i - 1)
        pW(i) = pfW(i - 1)
        pH(i) = pfH(i - 1)
    Next i
    If pRHanti(0) = "" Then
        pRHanti(0) = 0
    Else
        pRHanti(0) = pRHanti(0) * 1000
    End If
    
'======================================================== 杭
    pKuikei = IIf(pKuikei = "", 0, pKuikei * 1000)
    pKuinaga = IIf(pKuinaga = "", 0, pKuinaga * 1000)
    
''''''' 杭配置
p杭本数 = 0: p杭列数(1) = 0: p杭列数(2) = 0

For i = 0 To 20
If pKuihaic1(0, i) = "" Then
    p杭列数(1) = i - 1
    Exit For
Else
    pKuihaic1(0, i) = pKuihaic1(0, i) * 1
    pKuihaic1(1, i) = pKuihaic1(1, i) * 1
    p杭本数 = p杭本数 + pKuihaic1(1, i)
End If
Next i

For i = 0 To 20
If pKuihaic2(0, i) = "" Then
    p杭列数(2) = i - 1
    Exit For
Else
    pKuihaic2(0, i) = pKuihaic2(0, i) * 1
    pKuihaic2(1, i) = pKuihaic2(1, i) * 1
End If
Next i

'''''''''''''' 杭座標 '''''''''''
 ReDim p杭座標X(p杭本数) As Single
 ReDim p杭座標Y(p杭本数) As Single
 
    Dim 杭列(1 To 2) As Integer
    杭列(1) = p杭列数(1) + 1 ' 杭列をセット
    杭列(2) = p杭列数(2) + 1 ' 杭列をセット
    
    Dim L杭本() As Integer: ReDim L杭本(1 To 杭列(1))
    Dim C杭本() As Integer: ReDim C杭本(1 To 杭列(2))
    Dim L座標() As Single:  ReDim L座標(1 To 杭列(1))
    Dim C座標() As Single:  ReDim C座標(1 To 杭列(2))
    Dim 杭X() As Single
    Dim 杭Y() As Single
    
    For i = 1 To 杭列(1)
        L杭本(i) = pKuihaic1(1, i - 1) ' 線路 杭本数をセット
        L座標(i) = pKuihaic1(0, i - 1) ' 線路 杭座標をセット
    Next i
    For i = 1 To 杭列(2)
        C杭本(i) = pKuihaic2(1, i - 1) ' 直角 杭本数をセット
        C座標(i) = pKuihaic2(0, i - 1) ' 直角 杭座標をセット
    Next i

 
    Call Get各杭座標(杭列, L杭本, C杭本, L座標, C座標, 杭X, 杭Y)
     ' 杭座標を 1000倍 mm 単位にする。
    For i = 0 To (p杭本数 - 1)
       p杭座標X(i) = 杭X(i + 1) * 1000
       p杭座標Y(i) = 杭Y(i + 1) * 1000
    Next i
 
    'フーチング中心 からの座標に変換する。
    Dim fCenterX As Single: fCenterX = (pB(7) + pB(8) + pB(9)) / 2
    Dim fCenterY As Single: fCenterY = pW(7) / 2
    For i = 0 To (p杭本数 - 1)
       p杭座標X(i) = p杭座標X(i) - fCenterX
       p杭座標Y(i) = p杭座標Y(i) - fCenterY
    Next i

'''''''''''''' 杭座標 end '''''''''''

'============================= 躯体 ==============================
Dim DD As Single
pkuitaiDai(1) = IIf(pKutai3(0) = "", 0, pKutai3(0))
pkuitaiDai(2) = IIf(pKutai4(0) = "", 0, pKutai4(0))

pkuitaiKaburi(1) = Round(pKutai0(0) + pkuitaiDai(1) / 2 + pKutai9(1, 2), 0) '線路方向かぶり
pkuitaiKaburi(2) = pKutai1(0) '天端かぶり
pkuitaiKaburi(3) = Round(pKutai0(0) + pkuitaiDai(2) / 2 + pKutai9(1, 2), 0) '直角方向かぶり
pkuitaiJiknaga = IIf(pKutai2(0) = "", 0, pKutai2(0))

DD = IIf(pW(9) = 0, pkuitaiKaburi(1), pkuitaiKaburi(3))
pkuitaiPictW(1) = pKutai7(0) 'pKutai7(0, 0)
'If Not (pKutai7(1, 0) = "" Or pKutai7(2, 0) = "") Then
'    pkuitaiJikuN(1) = pKutai7(1, 0)
'    pkuitaiJikuctc(1) = pKutai7(2, 0)
'    L1 = (pW(6) - (pkuitaiJikuN(1) - 1) * pkuitaiJikuctc(1)) / 2 - pkuitaiKaburi(1)
'    pkuitaiPictW(1) = Format(pkuitaiKaburi(1), "0") & "+" & Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(1) - 1, "0") & "x" & Format(pkuitaiJikuctc(1), "0") & _
'                      "+" & Format(L1, "0") & "+" & Format(pkuitaiKaburi(1), "0")
'End If

pkuitaiPictW(2) = pKutai7(1) 'pKutai7(0, 1)
'If Not (pKutai7(1, 1) = "" Or pKutai7(2, 1) = "") Then
'    pkuitaiJikuN(2) = pKutai7(1, 1)
'    pkuitaiJikuctc(2) = pKutai7(2, 1)
'    L1 = (pW(6) - (pkuitaiJikuN(2) - 1) * pkuitaiJikuctc(2)) / 2
'    pkuitaiPictW(2) = Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(2) - 1, "0") & "x" & Format(pkuitaiJikuctc(2), "0") & _
'                      "+" & Format(L1, "0")
'End If

pkuitaiPictW(3) = pKutai8(0) 'pKutai8(0, 0)
'If Not (pKutai8(1, 0) = "" Or pKutai8(2, 0) = "") Then
'    pkuitaiJikuN(3) = pKutai8(1, 0)
'    pkuitaiJikuctc(3) = pKutai8(2, 0)
'    L1 = (pB(6) - (pkuitaiJikuN(3) - 1) * pkuitaiJikuctc(3)) / 2 - pkuitaiKaburi(1)
'    pkuitaiPictW(3) = Format(pkuitaiKaburi(1), "0") & "+" & Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(3) - 1, "0") & "x" & Format(pkuitaiJikuctc(3), "0") & _
'                      "+" & Format(L1, "0") & "+" & Format(pkuitaiKaburi(1), "0")
'End If

pkuitaiPictW(4) = pKutai8(1) 'pKutai8(0, 1)
'If Not (pKutai8(1, 1) = "" Or pKutai8(2, 1) = "") Then
'    pkuitaiJikuN(4) = pKutai8(1, 1)
'    pkuitaiJikuctc(4) = pKutai8(2, 1)
'    L1 = (pB(6) - (pkuitaiJikuN(4) - 1) * pkuitaiJikuctc(4)) / 2
'    pkuitaiPictW(4) = Format(L1, "0") & "+" & _
'                      Format(pkuitaiJikuN(4) - 1, "0") & "x" & Format(pkuitaiJikuctc(4), "0") & _
'                      "+" & Format(L1, "0")
'End If

For i = 1 To 4
    If pkuitaiPictW(i) <> "" Then
        If i <= 2 Then
            L3 = pW(6)
            DD = IIf(pW(9) = 0, pkuitaiKaburi(1), pkuitaiKaburi(3))
        Else
            L3 = pB(6)
            DD = pkuitaiKaburi(1)
        End If
        LL = F_Total_L(pkuitaiPictW(i))
        If LL <> L3 Then
            If InStr(pkuitaiPictW(i), "x") + InStr(pkuitaiPictW(i), "*") = 0 Then '''''' 150
               L1 = Round((L3 - DD * 2) / LL, 4)
               If L1 - Int(L1) < 0.0001 Then
                    pkuitaiPictW(i) = Format(DD, "0") & "+" & Format(L1, "0") & "x" & _
                                      Format(LL, "0") & "+" & Format(DD, "0")
               Else
                    L1 = Int(L1 - 2)
                    L2 = (L3 - L1 * LL - DD * 2) / 2
                    If L2 = LL Then L1 = L1 + 2
                    pkuitaiPictW(i) = Format(DD, "0") & "+" & Format(L2, "0") & "+" & _
                                    Format(L1, "0") & "x" & Format(LL, "0") & "+" & _
                                    Format(L2, "0") & "+" & Format(DD, "0")
               End If
            Else '''''' 46x150
               L2 = (L3 - LL - DD * 2) / 2
               pkuitaiPictW(i) = Format(DD, "0") & "+" & Format(L2, "0") & "+" & _
                               pkuitaiPictW(i) & "+" & _
                               Format(L2, "0") & "+" & Format(DD, "0")
            End If
        End If
    End If
Next i

pkuitaiDai(3) = pKutai5(0) ''''''''''組立て筋
pkuitaikumitate(1) = pKutai6(0)

 ''''''''''''''''''''''''''''''''''''スターラップ
L1 = 0: L2 = 0
For i = 1 To 7
    For k = 1 To 5
        pkuitaiStr(k, i) = IIf(pKutai9(i - 1, k - 1) = "", 0, pKutai9(i - 1, k - 1))
        If i = 1 And k > 2 Then
            L1 = L1 + pkuitaiStr(k, i)
            If L2 = 0 And pkuitaiStr(k, i) = 0 Then L2 = k
        End If
    Next k
Next i
If L1 <> pH(2) + pH(3) + pH(4) Then
    pkuitaiStr(L2, 1) = pH(2) + pH(3) + pH(4) - L1
End If
pkuitaiStrPictW(1) = pKutai10(0)
pkuitaiStrPictW(2) = pKutai10(1)
pkuitaiStrPictW(3) = pKutai11(0)
pkuitaiStrPictW(4) = pKutai11(1)

'===================================== はり ==============================
Dim aa1 As Single, aa2 As Single, strQ As String
Dim bb1 As Single, bb2 As Single
Dim LL1 As Single, LL2 As Single, LL3 As Single

If pKatamochi2(0) <> "" Then
    pHariDai(1) = pKatamochi2(0) ''''''''ループ鉄筋径
Else
    pHariDai(1) = 0
End If

If pKatamochi4(0) <> "" Then
    pHariDai(2) = pKatamochi4(0) ''''''''ループ内直筋径
Else
    pHariDai(2) = 0
End If

'''''''''''''''''''''''''''''''''''''直筋
If pKatamochi3(0) <> "" Then
    pHariDai(3) = pKatamochi3(0)
Else
    pHariDai(3) = 0
End If

pHariKaburi(1) = Round(pKatamochi0(0) + max(pHariDai(1), pHariDai(3)) / 2 + pKatamochi12(0), 0)
pHariKaburi(4) = pKatamochi0(1) + pKatamochi6(0) / 2 + max(pKatamochi9(0), pKatamochi12(0))
If pW(4) * pH(3) = 0 Then
    pHariKaburi(2) = Round(pHariKaburi(4), 0)
Else
    pHariKaburi(2) = Round(pHariKaburi(4) * Sqr(pW(4) ^ 2 + pH(3) ^ 2) / pW(4), 0)
End If
pHariKaburi(4) = Round(pHariKaburi(4), 0)
pHariKaburi(3) = Round(pKatamochi0(2) + pKatamochi6(0) / 2 + pKatamochi9(0), 0)

 ''''''''''''''''''''''''''''''''''''ループ筋
For i = 1 To 6
    For k = 1 To 3
        pHariLoop(k, i) = IIf(pKatamochi1(i - 1, k - 1) = "", 0, pKatamochi1(i - 1, k - 1))
    Next k
Next i

'外ループ鉄筋の直線長 起点側
pHariループ直線長(1) = pW(1) - (pHariKaburi(3) + pKatamochi6(0) / 2 + pHariDai(1) / 2 + pHariLoop(1, 2) / 2) * 2
pHariループ直線長(1) = Int(pHariループ直線長(1) / 2) * 2
'外ループ鉄筋の直線長 起点側
pHariループ直線長(2) = pW(1) - (pHariKaburi(3) + pKatamochi6(0) / 2 + pHariDai(1) / 2 + pHariLoop(1, 5) / 2) * 2
pHariループ直線長(2) = Int(pHariループ直線長(2) / 2) * 2

'ループ鉄筋R(1) = 0 '''''''''' ループの半径　単円  B/2
'ループ鉄筋R(1) = 340 '''''''' ループの半径----- 直線区間有り

ループ鉄筋R(1) = 0: ループ鉄筋R(2) = 0: ループ鉄筋R(3) = 0: ループ鉄筋R(4) = 0
If pHariLoop(3, 2) <> 0 And pHariLoop(1, 2) / 2 <> pHariLoop(3, 2) Then
    ループ鉄筋R(1) = pHariLoop(3, 2)
End If
If pHariLoop(3, 3) <> 0 And pHariLoop(1, 3) / 2 <> pHariLoop(3, 3) Then
    ループ鉄筋R(2) = pHariLoop(3, 3)
End If
If pHariLoop(3, 5) <> 0 And pHariLoop(1, 5) / 2 <> pHariLoop(3, 5) Then
    ループ鉄筋R(3) = pHariLoop(3, 5)
End If
If pHariLoop(3, 6) <> 0 And pHariLoop(1, 6) / 2 <> pHariLoop(3, 6) Then
    ループ鉄筋R(4) = pHariLoop(3, 6)
End If

'''''''''''''''''''''''''''''''''''''直筋
'If pKatamochi3(0) <> "" Then
'    pHariDai(3) = pKatamochi3(0)
'Else
'    pHariDai(3) = 0
'End If
If pKatamochi4(1) <> "" Then
    pHariN(1) = pKatamochi4(1)
Else
    pHariN(1) = 0
End If

If pKatamochi4(2) <> "" Then
    pHariN(2) = pKatamochi4(2)
Else
    pHariN(2) = 0
End If
pHariPictW(1) = pKatamochi5(0)

''''''''''''''''''''''''''''''''''''''''''''''''''''''''''水平かぶり

aa1 = Val(pKutai0(0)) + pkuitaiDai(1) + Val(pKutai9(1, 2)) '躯体線路方向かぶり
aa2 = Val(pKatamochi0(2)) + Val(pKatamochi12(0))

   If pB(4) = 0 Then
      bb1 = aa1
   Else
      bb1 = aa2
   End If
   If pB(5) = 0 Then
      bb2 = aa1
   Else
      bb2 = aa2
   End If

    If pHariLoop(1, 1) = 0 Then '左水平かぶり
       pHariLoop(1, 1) = Round(bb1 + pHariDai(1) / 2, 0)
    End If
    If pHariLoop(1, 4) = 0 Then '右水平かぶり
       pHariLoop(1, 4) = Round(bb2 + pHariDai(1) / 2, 0)
    End If
    
    左水平かぶり = pHariLoop(1, 1) 'min(pHariLoop(1, 1), Round(bb1 + pHariDai(1) / 2, 0))
    右水平かぶり = pHariLoop(1, 4) 'min(pHariLoop(1, 4), Round(bb2 + pHariDai(1) / 2, 0))
    
Dim Da1 As Single, Da2 As Single, DA3 As Single
Dim L4 As Single, L5 As Single, L6 As Single, L7 As Single
Dim strQ1 As String, strQ2 As String

    Da1 = pHariDai(1)
    Da2 = pHariDai(1)

If pHariPictW(1) <> "" Then
    LL = F_Total_L(pHariPictW(1))
    Call L1L2(pHariPictW(1), LL1, LL2)
    If Mid(pHariPictW(1), 1, 1) = "-" Then
        LL1 = pHariLoop(1, 1)
        LL2 = pB(1) - LL2 ' Abs(LL2)
    End If
'    If LL2 > pB(1) / 2 Then LL2 = pB(1) - LL2
    If LL1 = 0 Then
       左水平かぶり = min(Round(bb1 + pHariDai(3) / 2, 0), pHariLoop(1, 1))
       If Round(bb1 + pHariDai(3) / 2, 0) < pHariLoop(1, 1) Then Da1 = pHariDai(3)
    Else
       左水平かぶり = min(LL1, pHariLoop(1, 1))
    End If
    If LL2 = 0 Then
       右水平かぶり = min(Round(bb2 + pHariDai(3) / 2, 0), pHariLoop(1, 4))
       If Round(bb2 + pHariDai(3) / 2, 0) < pHariLoop(1, 4) Then Da2 = pHariDai(3)
    Else
       右水平かぶり = min(LL2, pHariLoop(1, 4))
    End If
    左水平かぶり = Round(左水平かぶり, 0)
    右水平かぶり = Round(右水平かぶり, 0)
    If InStr(pHariPictW(1), "0+") = 1 Then
       pHariPictW(1) = Format(左水平かぶり, "0") & Mid(pHariPictW(1), 2, Len(pHariPictW(1)))
    End If
    If InStr(pHariPictW(1), "+0") <> 0 Then
       pHariPictW(1) = Mid(pHariPictW(1), 1, Len(pHariPictW(1)) - 1) & Format(右水平かぶり, "0")
    End If
End If
''''''''''''''''''''''''''''''''''''スターラップ
If pKatamochi12(0) <> "" Then
    pHariStrD(1) = pKatamochi12(0)
Else
    pHariStrD(1) = 0
End If
If pKatamochi13(0) <> "" Then
    pHariStrW(1) = pKatamochi13(0)
Else
    pHariStrW(1) = 0
End If
If pKatamochi14(0) <> "" Then
    pHariStrW(2) = pKatamochi14(0)
Else
    pHariStrW(2) = 0
End If

'''''''''''''''''''''''''''''''''''''下側鉄筋
If pKatamochi6(0) <> "" Then
    pHariDai(4) = pKatamochi6(0)
Else
    pHariDai(4) = 0
End If
DA3 = Da1 'pHariDai(4) '''''''' DA3 = DA1

If pKatamochi7(0) <> "" Then
    pHariBon(1) = pKatamochi7(0)
Else
    pHariBon(1) = 0
End If
pHariStrW(1) = pHariStrW(1) - 左水平かぶり
pHariStrW(2) = pHariStrW(2) - 右水平かぶり

    pHariPictW(2) = pKatamochi8(0)
    LL = F_Total_L(pHariPictW(2))
    If LL <> pB(1) Then
            L2 = Round(左水平かぶり - (Da1 - DA3) / 2, 0)
            L7 = Round(右水平かぶり - (Da1 - DA3) / 2, 0)
        If LL < 51 Then ''''''''''''' 本数の入力の場合
            L1 = (Val(pHariStrW(1)) + Val(pHariStrW(2))) - pB(1) + 左水平かぶり + 右水平かぶり
            If pHariLoop(1, 3) = 0 Then
                L3 = 0
            Else
                L3 = Round(pHariLoop(1, 1) + (pHariLoop(1, 2) - pHariLoop(1, 3)) / 2, 0) - 左水平かぶり
            End If
            L4 = Round(左水平かぶり + Val(pHariStrW(1)) - L1 - L2 - L3, 0)
            If pHariLoop(1, 6) = 0 Then
                L6 = 0
            Else
                L6 = Round(pHariLoop(1, 4) + (pHariLoop(1, 5) - pHariLoop(1, 6)) / 2, 0) - 右水平かぶり
            End If
            L5 = Round(右水平かぶり + Val(pHariStrW(2)) - L1 - L7 - L6, 0)
            
            If L4 = L5 Then
                LL1 = (LL - 6) / 2 + 1
                LL2 = (LL - 6) / 2 + 1
            Else
                LL1 = Int((LL - 5) * L4 / (L4 + L5))
                LL2 = Int((LL - 5) * L5 / (L4 + L5))
                LL2 = (LL - 5) - LL1
                LL1 = LL1 + 1
                LL2 = LL2 + 1
            End If

            If LL1 = 1 Then
                strQ1 = Format(L4, "0")
            Else
                strQ1 = Format(L4 / LL1, "0.0")
                If Mid(strQ1, Len(strQ1)) = "0" Then strQ1 = Format(L4 / LL1, "0")
                strQ1 = Format(LL1, "0") & "x" & strQ1
            End If
            If LL2 = 1 Then
                strQ2 = Format(L5, "0")
            Else
                strQ2 = Format(L5 / LL2, "0.0")
                If Mid(strQ2, Len(strQ2)) = "0" Then strQ2 = Format(L5 / LL2, "0")
                strQ2 = Format(LL2, "0") & "x" & strQ2
            End If
            pHariPictW(2) = Format(L2, "0") & "+" & IIf(L3 = 0, "", Format(L3, "0") & "+") & strQ1 & "+" & _
                            Format(L1, "0") & "+" & strQ2 & "+" & IIf(L6 = 0, "", Format(L6, "0") & "+") & Format(L7, "0")
        Else
'            If LL + L2 + L7 = pB(1) Then
                If InStr(pHariPictW(2), "0+") = 1 Then
                   pHariPictW(2) = Format(L2, "0") & Mid(pHariPictW(2), 2, Len(pHariPictW(2)))
                End If
                If InStr(pHariPictW(2), "+0") <> 0 Then
                   pHariPictW(2) = Mid(pHariPictW(2), 1, Len(pHariPictW(2)) - 1) & Format(L7, "0")
                End If
'            End If
        End If
    End If

'''''''''''''''''''''''''''''''''''''水平補強鉄筋
If pKatamochi9(0) <> "" Then
    pHariDai(5) = pKatamochi9(0)
Else
    pHariDai(5) = 0
End If

pHari水平筋 = 1 '''''''''' ｽﾀｰﾗｯﾌﾟの内側に配置
If pKatamochi10(0) <> "" Then
    If Mid(pKatamochi10(0), Len(pKatamochi10(0))) = "@" Then
        pHari水平筋 = 2 '''''''' ｽﾀｰﾗｯﾌﾟの外側に配置
        pKatamochi10(0) = Mid(pKatamochi10(0), 1, Len(pKatamochi10(0)) - 1)
    End If
    pHariBon(2) = pKatamochi10(0)
Else
    pHariBon(2) = 0
End If
pHariPicth(2) = pKatamochi11(0)

''''''''''''''''''''''''''''''''''''スターラップ
'''If pKatamochi12(0) <> "" Then
'''    pHariStrD(1) = pKatamochi12(0)
'''Else
'''    pHariStrD(1) = 0
'''End If
'''If pKatamochi13(0) <> "" Then
'''    pHariStrW(1) = pKatamochi13(0)
'''Else
'''    pHariStrW(1) = 0
'''End If
'''If pKatamochi14(0) <> "" Then
'''    pHariStrW(2) = pKatamochi14(0)
'''Else
'''    pHariStrW(2) = 0
'''End If
''''''''''''''''''''''''''''''''''''スターラップ
pHariPictW(3) = pKatamochi15(0)
LL = F_Total_L(pHariPictW(3))
LL3 = max(pW(4), pW(5))
If LL <> 0 And LL <> LL3 Then
        If InStr(pHariPictW(3), "x") + InStr(pHariPictW(3), "*") = 0 Then '''''' 150
           L1 = Int((LL3) / LL - 1.2)
           L2 = LL3 - L1 * LL
           pHariPictW(3) = Format(L1, "0") & "x" & Format(LL, "0") & "+" & Format(L2, "0")
        Else '''''' 46x150
           L2 = LL3 - LL
           pHariPictW(3) = pHariPictW(3) & "+" & Format(L2, "0")
        End If
End If
 ''''''''''''''''''''''''''''''''''''躯体幅止め筋
If pKatamochi16(0) <> "" Then
    pHariStrD(2) = pKatamochi16(0)
Else
    pHariStrD(2) = 0
End If
If pKatamochi17(0) <> "" Then
    pHariStrBon(1) = pKatamochi17(0)
Else
    pHariStrBon(1) = 0
End If
pHariPictW(4) = pKatamochi18(0)
LL = F_Total_L(pHariPictW(4))
LL3 = pW(6)
If LL <> 0 And LL <> LL3 Then
        If InStr(pHariPictW(4), "x") + InStr(pHariPictW(4), "*") = 0 Then '''''' 150
           L1 = Round(LL3 / LL, 4)
           If L1 - Int(L1) < 0.0001 Then
                pHariPictW(4) = Format(L1, "0") & "x" & Format(LL, "0")
           Else
                L1 = Int(L1 - 2)
                L2 = (LL3 - L1 * LL) / 2
                pHariPictW(4) = Format(L2, "0") & "+" & Format(L1, "0") & "x" & Format(LL, "0") & "+" & Format(L2, "0")
           End If
        Else '''''' 46x150
           L2 = (LL3 - LL) / 2
           pHariPictW(4) = Format(L2, "0") & "+" & pHariPictW(4) & "+" & Format(L2, "0")
        End If
End If

'===================================== 支承 ストッパー ========

''''''''''''''''''''''''''''''''''''支承
For i = 1 To 6
    For k = 1 To 2
        pSisyu1(k, i) = IIf(pShishou0(i - 1, k - 1) = "", 0, pShishou0(i - 1, k - 1))
    Next k
Next i
pSisyuPictW(1) = pShishou0(6, 0)
pSisyuPictW(2) = pShishou0(6, 1)

'For i = 1 To 5
'    For k = 1 To 2
'        pSisyu2(k, i) = IIf(pShishou1(i - 1, k - 1) = "", 0, pShishou1(i - 1, k - 1))
'    Next k
'Next i
pSisyuD(1, 1) = IIf(pShishou1(0, 0) = "", 0, pShishou1(0, 0)) '線路方向
pSisyuD(1, 2) = IIf(pShishou1(2, 0) = "", 0, pShishou1(2, 0))
pSisyuD(2, 1) = IIf(pShishou1(0, 1) = "", 0, pShishou1(0, 1)) '直角方向
pSisyuD(2, 2) = IIf(pShishou1(2, 1) = "", 0, pShishou1(2, 1))

pSisyu2(1, 1) = pShishou1(1, 0) '線路方向
pSisyu2(1, 2) = pShishou1(3, 0)
pSisyu2(2, 1) = pShishou1(1, 1) '直角方向
pSisyu2(2, 2) = pShishou1(3, 1)

pSisyukabu(1) = IIf(pShishou1(4, 0) = "", 0, pShishou1(4, 0)) '線路方向
pSisyukabu(2) = IIf(pShishou1(4, 1) = "", 0, pShishou1(4, 1)) '直角方向

pSisyuDai(1) = IIf(pShishou2(0) = "", 0, pShishou2(0)) '''無収縮モルタル
For i = 1 To 4
    For k = 1 To 2
        pSisyu3(k, i) = pShishou3(i - 1, k - 1)
    Next k
Next i

''''''''''''''''''''''''''''''''''''ストッパー
For i = 1 To 4
    For k = 1 To 2
        pStop1(k, i) = IIf(pShishou4(i - 1, k - 1) = "", 0, pShishou4(i - 1, k - 1))
    Next k
Next i
pStopPictW(1) = pShishou4(4, 0)
pStopPictW(2) = pShishou4(4, 1)

'''''''''''''''''''''''''''''''''' 補強鉄筋
'起点側
For i = 1 To 3
    For k = 1 To 3
        pStop2(k, i) = IIf(pShishou5(i - 1, k - 1) = "", 0, pShishou5(i - 1, k - 1))
    Next k
Next i
pStopPictW1(1) = pShishou5(3, 0)
pStopPictW1(2) = pShishou5(3, 1)
pStopPictW1(3) = pShishou5(3, 2)
If pStopPictW1(2) = "" Then pStopPictW1(2) = Format(pStop2(2, 2), "0")

'終点側
For i = 1 To 3
    For k = 1 To 3
        pStop3(k, i) = IIf(pShishou5(i + 3, k - 1) = "", 0, pShishou5(i + 3, k - 1))
    Next k
Next i
pStopPictW2(1) = pShishou5(7, 0)
pStopPictW2(2) = pShishou5(7, 1)
pStopPictW2(3) = pShishou5(7, 2)
If pStopPictW2(2) = "" Then pStopPictW2(2) = Format(pStop3(2, 2), "0")

'LL = F_Total_L(pStopPictW2(1)) '''''''''''''''''''''''''''''''''''''''''''' 03/10/25

'===================================== 基　礎 ========
pKisoKaburi(1) = pKiso0(0) '上側
pKisoKaburi(2) = pKiso0(1) '下側
pKisoKaburi(3) = pKiso0(2) '側方

'主鉄筋　線路方向
For i = 1 To 4
    pKisoDai(i) = IIf(pKiso1(0, i - 1) = "", 0, pKiso1(0, i - 1))
Next i
For i = 1 To 4
    pKisoPictW(i) = pKiso1(1, i - 1)
Next i

'主鉄筋　直角方向
For i = 1 To 4
    pKisoDai(i + 4) = IIf(pKiso2(0, i - 1) = "", 0, pKiso2(0, i - 1))
Next i

For i = 1 To 4
    pKisoPictW(i + 4) = pKiso2(1, i - 1)
Next i

'側方鉄筋
pKisoDai(9) = IIf(pKiso3(0) = "", 0, pKiso3(0))
pKisoPictW(9) = pKiso3(1)

'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''スターラップ
pKisoStrDai(1) = IIf(pKiso4(0) = "", 0, pKiso4(0))
pKisoStrDai(2) = IIf(pKiso6(0) = "", 0, pKiso6(0))
Kiso重ね(1) = 0: Kiso重ね(2) = 0
If InStr(pKiso5(0), "k") <> 0 Or InStr(pKiso5(0), "K") <> 0 Then
   Kiso重ね(1) = 1
   pKiso5(0) = Mid(pKiso5(0), 1, Len(pKiso5(0)) - 1)
End If
If InStr(pKiso7(0), "k") <> 0 Or InStr(pKiso7(0), "K") <> 0 Then
   Kiso重ね(2) = 1
   pKiso7(0) = Mid(pKiso7(0), 1, Len(pKiso7(0)) - 1)
End If
For i = 1 To 3
    pKisoStrPictW(i) = pKiso5(i - 1)
Next i
For i = 1 To 3
    pKisoStrPictW(i + 3) = pKiso7(i - 1)
Next i

''''''''''''''''''''''''' 線路方向の かぶり
'上側
If pKiso0(0) < 0 Then
    pKisoKaburi1(1) = -pKiso0(0)
Else
    pKisoKaburi1(1) = pKiso0(0) + pKisoStrDai(1) + pKisoDai(1) / 2
End If
'下側
If pKiso0(1) < 0 Then
    pKisoKaburi1(2) = -pKiso0(1)
Else
    pKisoKaburi1(2) = pKiso0(1) + pKisoStrDai(1) + pKisoDai(3) / 2
End If
'側方 上側
If pKiso0(2) < 0 Then
    pKisoKaburi1(3) = -pKiso0(2)
Else
    pKisoKaburi1(3) = pKiso0(2) + pKisoDai(9) + pKisoDai(1) + pKisoDai(5) / 2
End If
'側方 下側
If pKiso0(2) < 0 Then
    pKisoKaburi1(4) = -pKiso0(2)
Else
    pKisoKaburi1(4) = pKiso0(2) + pKisoDai(9) + pKisoDai(1) + pKisoDai(7) / 2
End If

''''''''''''''''''''''''' 直角方向の かぶり
'上側
    pKisoKaburi2(1) = pKisoKaburi1(1) + pKisoDai(1) / 2 + pKisoDai(5) / 2
'下側
    pKisoKaburi2(2) = pKisoKaburi1(2) + pKisoDai(3) / 2 + pKisoDai(7) / 2
'側方 上側
    pKisoKaburi2(3) = pKiso0(2) + pKisoDai(9) + pKisoDai(1) / 2
'側方 下側
    pKisoKaburi2(4) = pKiso0(2) + pKisoDai(9) + pKisoDai(3) / 2

    For i = 1 To 4
        pKisoKaburi1(i) = Round(pKisoKaburi1(i), 0)
        pKisoKaburi2(i) = Round(pKisoKaburi2(i), 0)
    Next i
For i = 1 To 4
    If pKisoPictW(i) <> "" Then
        LL = F_Total_L(pKisoPictW(i))
        LL3 = pW(7)
        If i <= 2 Then
            L7 = Round(pKisoKaburi2(3), 0)
        Else
            L7 = Round(pKisoKaburi2(4), 0)
        End If
        
        If LL <> LL3 Then
            If InStr(pKisoPictW(i), "x") + InStr(pKisoPictW(i), "*") = 0 Then '''''' 150
               L1 = Round((LL3 - L7 * 2) / LL, 4)
               If L1 - Int(L1) < 0.0001 Then
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L1, "0") & "x" & _
                                         Format(LL, "0") & "+" & Format(L7, "0")
               Else
                    L1 = Int(L1 - 2)
                    L2 = (LL3 - L1 * LL - L7 * 2) / 2
                    If L2 = LL Then L1 = L1 + 2
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                                    Format(L1, "0") & "x" & Format(LL, "0") & "+" & _
                                    Format(L2, "0") & "+" & Format(L7, "0")
               End If
            Else '''''' 46x150
               L2 = (LL3 - LL - L7 * 2) / 2
               pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                               pKisoPictW(i) & "+" & _
                               Format(L2, "0") & "+" & Format(L7, "0")
            End If
        End If
    End If
Next i

''''''''''''''''''''''''' 直角方向の かぶり
'''上側
''    pKisoKaburi2(1) = pKisoKaburi1(1) + pKisoDai(1) / 2 + pKisoDai(5) / 2
'''下側
''    pKisoKaburi2(2) = pKisoKaburi1(2) + pKisoDai(3) / 2 + pKisoDai(7) / 2
'''側方
''    pKisoKaburi2(3) = pKiso0(2) + pKisoDai(9) + pKisoDai(5) / 2

For i = 5 To 8
    If pKisoPictW(i) <> "" Then
        LL = F_Total_L(pKisoPictW(i))
        LL3 = pB(7) + pB(8) + pB(9)
        If i <= 6 Then
            L7 = Round(pKisoKaburi1(3), 0)
        Else
            L7 = Round(pKisoKaburi1(4), 0)
        End If

        If LL <> LL3 Then
            If InStr(pKisoPictW(i), "x") + InStr(pKisoPictW(i), "*") = 0 Then '''''' 150
               L1 = Round((LL3 - L7 * 2) / LL, 4)
               If L1 - Int(L1) < 0.0001 Then
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L1, "0") & "x" & _
                                    Format(LL, "0") & "+" & Format(L7, "0")
               Else
                    L1 = Int(L1 - 2)
                    L2 = (LL3 - L1 * LL - L7 * 2) / 2
                    If L2 = LL Then L1 = L1 + 2
                    pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                                    Format(L1, "0") & "x" & Format(LL, "0") & "+" & _
                                    Format(L2, "0") & "+" & Format(L7, "0")
               End If
            Else '''''' 46x150
               L2 = (LL3 - LL - L7 * 2) / 2
               pKisoPictW(i) = Format(L7, "0") & "+" & Format(L2, "0") & "+" & _
                               pKisoPictW(i) & "+" & _
                               Format(L2, "0") & "+" & Format(L7, "0")
            End If
        End If
    End If
Next i


For i = 1 To 3
    pKisoKaburi1(i) = Round(pKisoKaburi1(i), 0)
    pKisoKaburi2(i) = Round(pKisoKaburi2(i), 0)
Next i
Kisoかぶせ = pKisoKabuse

'===================================== 杭 ========

pKuiHon = IIf(pKuiHaikin0(0) = "", 0, pKuiHaikin0(0))
pKuiTouNaga = IIf(pKuiHaikin1(0) = "", 0, pKuiHaikin1(0))
pKuiKaburi = IIf(pKuiHaikin2(0) = "", 0, pKuiHaikin2(0))
L1 = -pKuiTouNaga
L2 = 0
L3 = 2
For i = 1 To 15
    For k = 1 To 2
        If (pKuiHaikin4(i - 1, k - 1) = "a" Or pKuiHaikin4(i - 1, k - 1) = "A" Or _
            pKuiHaikin4(i - 1, k - 1) = "k" Or pKuiHaikin4(i - 1, k - 1) = "K") Then
            If (pKuiHaikin4(i - 1, k - 1) = "a" Or pKuiHaikin4(i - 1, k - 1) = "A") Then
                pKuiJiku(k, i) = -2 ''''''''''' 圧接
            Else
                pKuiJiku(k, i) = -1 '''''''''' 機械接合
            End If
        Else
            pKuiJiku(k, i) = IIf(pKuiHaikin4(i - 1, k - 1) = "", 0, pKuiHaikin4(i - 1, k - 1))
            If k = 1 And (i = L3 Or i = 15) Then
                L1 = L1 + pKuiJiku(k, i)
                If L2 = 0 And pKuiJiku(k, i) = 0 Then L2 = i
                L3 = L3 + 3
            End If
        End If
    Next k
Next i
If L1 <> pKuinaga Then
    pKuiJiku(1, L2) = pKuinaga - L1
'    pKuiJiku(1, L2 + 1) = pKuiJiku(1, 15)
'    If L2 + 1 <> 15 Then
'    pKuiJiku(1, 15) = 0
'    End If
End If
For i = 1 To 3
    For k = 1 To 10
        pKuiStr(k, i) = IIf(pKuiHaikin5(i - 1, k - 1) = "", 0, pKuiHaikin5(i - 1, k - 1))
    Next k
Next i
L1 = 0: L2 = 0
    For k = 3 To 10
            L1 = L1 + pKuiStr(k, 2) * pKuiStr(k, 3)
            If L2 = 0 And pKuiStr(k, 1) = 0 Then L2 = k
    Next k

If L1 <> pKuinaga - pKuiJiku(1, 15) Then
      pKuiStr(L2, 1) = pKuiStr(L2 - 1, 1)
      pKuiStr(L2, 2) = 1
      pKuiStr(L2, 3) = pKuinaga - pKuiJiku(1, 15) - L1
'      pKuiStr(L2 + 1, 1) = pKuiStr(L2, 1)
'      pKuiStr(L2 + 1, 2) = 1
'      pKuiStr(L2 + 1, 3) = pKuiJiku(1, 15)
End If

pKuiKumiDai(1) = IIf(pKuiHaikin6(0, 0) = "", 0, pKuiHaikin6(0, 0))
pKuiKumiDai(2) = IIf(pKuiHaikin6(0, 1) = "", 0, pKuiHaikin6(0, 1))

pKuiKumitateW(1) = pKuiHaikin6(1, 0) '''''''' 組み立て
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
'Call L1L2(pKuiKumitateW(1), LL1, LL2)
'LL1 = LL1 + pKuiTouNaga
'pKuiKumitateW(1) = Format(LL1, "0") & Mid(pKuiKumitateW(1), InStr(pKuiKumitateW(1), "+"))
LL = F_Total_L(pKuiKumitateW(1))
If LL <> pKuinaga - pKuiJiku(1, 15) Then
pKuiKumitateW(1) = pKuiKumitateW(1) & "+" & Format((pKuinaga - pKuiJiku(1, 15) - LL), "0")
End If
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
pKuiKumitateW(2) = pKuiHaikin6(1, 1) '''''''' スペーサー
pKuiSpesaN = IIf(pKuiHaikin3(0) = "", 0, pKuiHaikin3(0))

pKuiKaburi0 = pKuiKaburi + pKuiJiku(1, 1) / 2 '''''''' 芯かぶり


Call 橋脚作図実行

End Sub

Private Function F_Total_L(ByVal Moj As String) As Single
   '  計算式 のを合計計算   長瀬専用
   
    ' exp Moj="250+3*(1000+250)+2x(400+300)"  ---> 5400
    Dim Ds(500) As String, Di(200), ii As Integer, ni As Integer, Mojn As Integer
    Dim D1s As String, D2s As String, D3s As String, DDs As String
    Dim K_in As Integer, n2i As Integer, 個数i As Integer, ii2 As Integer
    Dim Dii(900) As Single, 合計 As Single
    
    合計 = 0
    K_in = 0
    Moj = Replace式s(Moj)
    Mojn = Len(Moj)
    For ii = 1 To Mojn
        D1s = Mid(Moj, ii, 1)
        Select Case D1s
        Case "+":
                 Select Case K_in
                 Case 0
                 Case Else: D2s = Mid(Moj, 1, ii - 1): D3s = Mid(Moj, ii + 1):  Moj = D2s + "\" + D3s
                 End Select
        Case "(": K_in = K_in + 1: If K_in > 1 Then 世er = " (" + Moj + ")  ( ) がおかしい":  If 世誤CK > 99 Then Stop
        Case ")": K_in = K_in - 1: If K_in < 0 Then 世er = " (" + Moj + ")  ( ) がおかしい":  If 世誤CK > 99 Then Stop
        End Select
        Next ii
   
    DDs = "": Call Ddata("+", Moj, Ds, Di, ni)
    For ii = 1 To ni
        D1s = Ds(ii)
        個数i = 1: n2i = InStr(D1s, "x"): If n2i > 1 Then 個数i = Val(Mid(D1s, 1, n2i - 1)): D1s = Mid(D1s, n2i + 1)
        Select Case Mid(D1s, 1, 1)
        Case "(": n2i = Len(D1s): D1s = Mid(D1s, 2, n2i - 2)
        Case Else
        End Select
    
        For ii2 = 1 To 個数i:   DDs = DDs + "+" + D1s: Next ii2
        Next ii
   
    DDs = 文字変換(DDs, "\", "+")
    Moj = Mid(DDs, 2)
   
   
   Call Ddata_D("+", Moj, Dii, ni)
   For ii = 1 To ni: 合計 = 合計 + Dii(ii): Next ii
   F_Total_L = 合計
   
   End Function

Private Sub L1L2(ByVal Moj As String, L1 As Single, L2 As Single)
   '  計算式 の前後の長さ   長瀬専用
   
    ' exp Moj="250+3*(1000+250)+2x(400+300)"  ---> 5400
    Dim Ds(500) As String, Di(200), ii As Integer, ni As Integer, Mojn As Integer
    Dim D1s As String, D2s As String, D3s As String, DDs As String
    Dim K_in As Integer, n2i As Integer, 個数i As Integer, ii2 As Integer
    Dim Dii(900) As Single, 合計 As Single
    
    合計 = 0
    K_in = 0
    Moj = Replace式s(Moj)
    Mojn = Len(Moj)
    For ii = 1 To Mojn
        D1s = Mid(Moj, ii, 1)
        Select Case D1s
        Case "+":
                 Select Case K_in
                 Case 0
                 Case Else: D2s = Mid(Moj, 1, ii - 1): D3s = Mid(Moj, ii + 1):  Moj = D2s + "\" + D3s
                 End Select
        Case "(": K_in = K_in + 1: If K_in > 1 Then 世er = " (" + Moj + ")  ( ) がおかしい":  If 世誤CK > 99 Then Stop
        Case ")": K_in = K_in - 1: If K_in < 0 Then 世er = " (" + Moj + ")  ( ) がおかしい":  If 世誤CK > 99 Then Stop
        End Select
        Next ii
   
    DDs = "": Call Ddata("+", Moj, Ds, Di, ni)
    For ii = 1 To ni
        D1s = Ds(ii)
        個数i = 1: n2i = InStr(D1s, "x"): If n2i > 1 Then 個数i = Val(Mid(D1s, 1, n2i - 1)): D1s = Mid(D1s, n2i + 1)
        Select Case Mid(D1s, 1, 1)
        Case "(": n2i = Len(D1s): D1s = Mid(D1s, 2, n2i - 2)
        Case Else
        End Select
    
        For ii2 = 1 To 個数i:   DDs = DDs + "+" + D1s: Next ii2
        Next ii
   
    DDs = 文字変換(DDs, "\", "+")
    Moj = Mid(DDs, 2)
   
   
   Call Ddata_D("+", Moj, Dii, ni)
'   For ii = 1 To ni: 合計 = 合計 + Dii(ii): Next ii
'   F_Total_L = 合計
   L1 = Dii(1)
   L2 = Dii(ni)
   
   End Sub

