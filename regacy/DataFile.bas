Attribute VB_Name = "DataFile"
'**************************************************************
'vsFlexGrid用　データセーブ・ロードライブラリ - DataFile.bas
'99/11/06 kit 作成
'**************************************************************

Option Explicit

Public Type gtypVersion
    FileID As String
    Major As Integer
    Minor As Integer
    Revision As Integer
End Type

Public gusrVersion As gtypVersion

'機　能 ：  グリッドのデータを文字列にして返す
'引　数 ：  vfaTarget       対象のグリッド
'戻り値 ：  データ文字列（vbTab=chr$(9)とvbCr=chr$(13)による区切り : .Clipプロパティ参照）
Public Function gGridToStr(ByVal vfaTarget As vsFlexGrid) As String
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        Row = .Row
        Col = .Col
        
        .Redraw = False
        
        .Select .FixedRows, .FixedCols, .rows - 1, .Cols - 1
        gGridToStr = .Clip
        .Select Row, Col
    
        .Redraw = True
    End With
End Function

'機　能 ：  ロード用のグリッドにデータ文字列を貼り付ける。固定行、固定列は0でサイズも自動調整する。
'引　数 ：  vfaTarget       対象のグリッド
'           rstrData        データ文字列(.Clip形式）
'           vlngRows, vlngCols 変更後のグリッド行数、列数
Public Sub gStrPasteToLoadGrid(ByVal vfaTarget As vsFlexGrid, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        .FixedRows = 0
        .FixedCols = 0
        .rows = vlngRows
        .Cols = vlngCols
    
        Call gStrPasteToGrid(vfaTarget, rstrData)
    End With
End Sub

'機　能 ：  データ文字列をグリッド全面に貼り付ける
'引　数 ：  vfaTarget       対象のグリッド
'           rstrData        データ文字列(.Clip形式）
Public Sub gStrPasteToGrid(ByVal vfaTarget As vsFlexGrid, rstrData As String)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        'スクロール領域のテキストをクリア
        .Clear flexClearScrollable, flexClearText
        
        Row = .Row
        Col = .Col
        
        .Redraw = False
        
        .Select .FixedRows, .FixedCols, .rows - 1, .Cols - 1
        .Clip = rstrData
        .Select Row, Col
    
        .Redraw = True
    End With
End Sub

'機　能 ：  グリッドサイズを変更して、データ文字列をグリッド全面に貼り付ける
'引　数 ：  vfaTarget       対象のグリッド
'           rstrData        データ文字列(.Clip形式）
'           vlngRows, vlngCols 変更後のグリッド行数、列数
Public Sub gStrPasteToGridChgSize(ByVal vfaTarget As vsFlexGrid, rstrData As String, ByVal vlngRows As Long, ByVal vlngCols As Long)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        .rows = vlngRows
        .Cols = vlngCols
        
        Call gStrPasteToGrid(vfaTarget, rstrData)
    End With
End Sub

'機　能 ：  データ文字列をグリッドの指定領域に貼り付ける
'引　数 ：  vfaTarget       対象のグリッド
'           rstrData        データ文字列(.Clip形式）
Public Sub gStrPasteToGridSelect(ByVal vfaTarget As vsFlexGrid, rstrData As String, vStartRow As Long, vStartCol As Long, vEndRow As Long, vEndCol As Long)
    Dim Row As Long
    Dim Col As Long
    
    With vfaTarget
        Row = .Row
        Col = .Col
        
        .Redraw = False
        
        .Select vStartRow, vStartCol, vEndRow, vEndCol
        .Clip = rstrData
        .Select Row, Col
    
        .Redraw = True
    End With
End Sub

'機　能 ：  コントロール配列になっているオプションボタンのうち選択されているもののインデックスを取得する
'引　数 ：  vfaOption       対象となるオプションボタン
Public Function gGetSelectedOpt(ByVal vForm As Form, ByVal vOption As OptionButton) As Integer
    Dim i As Integer
    
    With vOption
        For i = 0 To vForm.Controls.Count - 1
            If vForm.Controls(i).Name = vOption.Name Then
                If vForm.Controls(i).VALUE = True Then
                    gGetSelectedOpt = vForm.Controls(i).Index
                    Exit Function
                End If
            End If
        Next
    End With
    
    gGetSelectedOpt = -1
    
End Function

'機　能 ：  App.Pathがルートの場合￥マークが含まれるが、それ以外には含まれないので、統一化する
'引　数 ：  rstrPath        パス名
'戻り値 ：  最後に￥が付いたパス名
Public Function gGetRegularPath(rstrPath As String) As String
    If Right$(rstrPath, 1) <> "\" Then
        gGetRegularPath = rstrPath & "\"
    Else
        gGetRegularPath = rstrPath
    End If

End Function

'機　能 ：  指定ディレクトリの中身をvsFlexGridのアーカイブファイルにまとめる（サブディレクトリ無効）
'引　数 ：  rstrArcPath     アーカイブ対象ファイルがあるパス
'           rstrArcFile     アーカイブファイル名
'           vfaGrid         アーカイブに使うグリッドコントロール
'           vbCompless      圧縮の有無(Trueで圧縮)
Public Sub gArchiveFile(rstrArcPath As String, rstrArcFile As String, ByVal vfaGrid As vsFlexGrid, Optional ByVal vbCompless = False, Optional ByVal frmProgress As Variant)
    Dim i As Integer
    Dim strFileName As String
    Dim bCall As Boolean
    
    'ヘルプにはIsNothing()という関数があると書いてあるが、存在しないらしい。（謎）
    bCall = False
    If Not IsMissing(frmProgress) Then If IsObject(frmProgress) Then bCall = True
    
    With vfaGrid
        strFileName = Dir$(rstrArcPath)    ' 最初のファイル名を返します。
        Do While strFileName <> ""   ' ループを開始します。
            strFileName = gGetRegularPath(rstrArcPath) & strFileName
            
            If vbCompless Then
                Call .Archive(rstrArcFile, strFileName, arcAdd)
            Else
                Call .Archive(rstrArcFile, strFileName, arcStore)
            End If
            
            strFileName = Dir                    ' 次のファイル名を返します。
        
            '途中経過表示用プロシージャを呼出す
            If bCall Then Call frmProgress.ProcProgress
        Loop
    End With

End Sub

'機　能 ：  指定ディレクトリの中身にファイルが何個あるかを調べる（サブディレクトリ無効）
'引　数 ：  rstrArcPath     アーカイブ対象ファイルがあるパス
'戻り値 ：　ファイルの個数 as Integer
Public Function gGetFileNum(rstrArcPath As String, rstrArcExt As String) As Integer
    Dim iNum As Integer
    Dim strFileName As String
    
    iNum = 0
    strFileName = Dir$(rstrArcPath)    ' 最初のファイル名を返します。
    Do While strFileName <> ""   ' ループを開始します。
        strFileName = Dir                    ' 次のファイル名を返します。
        iNum = iNum + 1
    Loop
    
    gGetFileNum = iNum

End Function

'機　能 ：  指定ディレクトリの中身の指定拡張子ファイルをvsFlexGridのアーカイブファイルにまとめる（サブディレクトリ無効）
'引　数 ：  rstrArcPath     アーカイブ対象ファイルがあるパス
'           rstrArcFile     アーカイブファイル名
'           vfaGrid         アーカイブに使うグリッドコントロール
'           rstrArcExt      アーカイブしたい拡張子（ドットなしで指定）
'                           複数指定対応 "txt;doc;csv"の様にセミコロンで区切る。最後はセミコロンなし
'                           2001/09/08 kit
'
'           vbCompless      圧縮の有無(Trueで圧縮)
'           frmProgress     プログレスバーを表示させたい場合に用いる
'                           このフォームには必ず Public Sub ProcProgress() という名前でプロシージャを用意しておくこと
Public Sub gArchiveExtFile(rstrArcPath As String, rstrArcFile As String, ByVal vfaGrid As vsFlexGrid, rstrArcExt As String, Optional ByVal vbCompless = False, Optional ByVal frmProgress As Variant)
    Dim strFileName As String
    Dim bCall As Boolean
    Dim iSPos As Integer, iEPos As Integer
    Dim sArcExt As String
    
    bCall = False
    If Not IsMissing(frmProgress) Then If IsObject(frmProgress) Then bCall = True
    
    With vfaGrid
        iSPos = 1
        
        Do
            '展開する拡張子を取得する
            iEPos = InStr(iSPos, rstrArcExt, ";", vbTextCompare)
            If iEPos = 0 Then iEPos = Len(rstrArcExt) + 1
            sArcExt = Mid$(rstrArcExt, iSPos, iEPos - iSPos)
            
            strFileName = Dir$(rstrArcPath & "\*." & sArcExt)    ' 最初のファイル名を返します。
            Do While strFileName <> ""   ' ループを開始します。
                strFileName = gGetRegularPath(rstrArcPath) & strFileName
                
                If vbCompless Then
                    Call .Archive(rstrArcFile, strFileName, arcAdd)
                Else
                    Call .Archive(rstrArcFile, strFileName, arcStore)
                End If
                
                strFileName = Dir                    ' 次のファイル名を返します。
                
                '途中経過表示用プロシージャを呼出す
                If bCall Then Call frmProgress.ProcProgress
            Loop
            
            iSPos = iEPos + 1
            If iSPos > Len(rstrArcExt) Then Exit Do
        Loop While True
    
    End With

End Sub

'機　能 ：  指定ディレクトリの中身の指定拡張子ファイルが何個あるかを調べる（サブディレクトリ無効）
'引　数 ：  rstrArcPath     アーカイブ対象ファイルがあるパス
'           rstrArcExt      アーカイブしたい拡張子（ドットなしで指定）
'                           複数指定対応 "txt;doc;csv"の様にセミコロンで区切る。最後はセミコロンなし
'                           2001/09/08 kit
'
'戻り値 ：　ファイルの個数 as Integer
Public Function gGetExtFileNum(rstrArcPath As String, rstrArcExt As String) As Integer
    Dim iNum As Integer
    Dim strFileName As String
    Dim iSPos As Integer, iEPos As Integer
    Dim sArcExt As String
    
    iNum = 0
    iSPos = 1
    
    Do
        '展開する拡張子を取得する
        iEPos = InStr(iSPos, rstrArcExt, ";", vbTextCompare)
        If iEPos = 0 Then iEPos = Len(rstrArcExt) + 1
        sArcExt = Mid$(rstrArcExt, iSPos, iEPos - iSPos)
        
        strFileName = Dir$(rstrArcPath & "\*." & sArcExt)    ' 最初のファイル名を返します。
        Do While strFileName <> ""   ' ループを開始します。
            strFileName = Dir                    ' 次のファイル名を返します。
            iNum = iNum + 1
        Loop
    
        iSPos = iEPos + 1
        If iSPos > Len(rstrArcExt) Then Exit Do
    Loop While True
    
    gGetExtFileNum = iNum

End Function

'機　能 ：  vsFlexGridのアーカイブファイルから指定ディレクトリにファイルを展開する
'引　数 ：  rstrExtPath     展開する先のパス
'           rstrArcFile     アーカイブファイル名
'           vfaGrid         アーカイブに使うグリッドコントロール
'           frmProgress     プログレスバーを表示させたい場合に用いる
'                           このフォームには必ず Public Sub ProcProgress() という名前でプロシージャを用意しておくこと
Public Sub gExtractFile(rstrExtPath As String, rstrArcFile As String, ByVal vfaGrid As vsFlexGrid, Optional ByVal frmProgress As Variant)
    Dim intCount As Integer
    Dim i As Integer
    Dim strFileName As String
    Dim bCall As Boolean
    
    If Len(Dir$(rstrArcFile)) = 0 Then Exit Sub
    bCall = False
    If Not IsMissing(frmProgress) Then If IsObject(frmProgress) Then bCall = True
    
    With vfaGrid
        intCount = .ArchiveInfo(rstrArcFile, arcFileCount)
        
        For i = 0 To intCount - 1
            strFileName = .ArchiveInfo(rstrArcFile, arcFileName, i)
            strFileName = gGetRegularPath(rstrExtPath) & strFileName
            Call .Archive(rstrArcFile, strFileName, arcExtract)
            
            '途中経過表示用プロシージャを呼出す
            If bCall Then Call frmProgress.ProcProgress
        Next
    End With
    
End Sub

'機　能 ：  指定アーカイブの中身にファイルが何個あるかを調べる
'引　数 ：  rstrArcPath     アーカイブファイルがあるパス
'           vfaGrid         アーカイブに使うグリッドコントロール
'戻り値 ：　ファイルの個数 as Integer
Public Function gGetArchiveFileNum(rstrArcFile As String, ByVal vfaGrid As vsFlexGrid) As Integer
    
    If Len(Dir$(rstrArcFile)) = 0 Then
        gGetArchiveFileNum = 0
    Else
        gGetArchiveFileNum = vfaGrid.ArchiveInfo(rstrArcFile, arcFileCount)
    End If
    
End Function

'機　能 ：  vsFlexGridのアーカイブファイルから指定ディレクトリに指定ファイルのみを展開する
'引　数 ：  rstrExtPath     展開する先のパス
'           rstrArcFile     アーカイブファイル名
'           vstrExtractFile 展開するファイル名
'               （  "file1.dat|file2.dat..."のように複数書ける。
'                   ただし、ファイル名が他のファイル名の部分文字列になっていると誤動作するので、ファイル名に使えない文字"|"で区切ること）
'           vfaGrid         アーカイブに使うグリッドコントロール
Public Sub gExtractSelectFile(rstrExtPath As String, rstrArcFile As String, ByVal vstrExtractFile As String, ByVal vfaGrid As vsFlexGrid)
    Dim intCount As Integer
    Dim i As Integer
    Dim strFileName As String
    
    With vfaGrid
        intCount = .ArchiveInfo(rstrArcFile, arcFileCount)
        vstrExtractFile = "|" & vstrExtractFile & "|"
        
        For i = 0 To intCount - 1
            strFileName = .ArchiveInfo(rstrArcFile, arcFileName, i)
            
            '対象ファイルが見つかったら実際に展開する
            If InStr(1, vstrExtractFile, strFileName, vbTextCompare) > 0 Then
                strFileName = gGetRegularPath(rstrExtPath) & strFileName
                Call .Archive(rstrArcFile, strFileName, arcExtract)
            End If
        Next
    End With
    
End Sub

'機　能 ：  指定ディレクトリ内の、指定拡張子のファイルを全て消す
'引　数 ：  rstrDelPath     中身を消すディレクトリ
'           rstrDelExt      消したい拡張子（ドットなしで指定）
Public Sub gDeleteAllFile(rstrDelPath As String, rstrDelExt As String)
    Dim i As Integer
            
    'ドットの有無も調べる（ただし、ドットが二つ続くファイルを想定していない）
    If Left$(rstrDelExt, 1) = "." Then
        If Dir$(gGetRegularPath(rstrDelPath) & "*" & rstrDelExt) = "" Then Exit Sub
        Kill (gGetRegularPath(rstrDelPath) & "*" & rstrDelExt)
    Else
        If Dir$(gGetRegularPath(rstrDelPath) & "*." & rstrDelExt) = "" Then Exit Sub
        Kill (gGetRegularPath(rstrDelPath) & "*." & rstrDelExt)
    End If
    
End Sub

'機　能 ：  指定ディレクトリ内の、指定ファイルを消す
'引　数 ：  rstrDelPath     中身を消すディレクトリ
'           vstrDelFile     消したいファイル名
'               （  "file1.dat|file2.dat..."のように複数書ける。
'                   ただし、ファイル名が他のファイル名の部分文字列になっていると誤動作するので、ファイル名に使えない文字"|"で区切ること）
Public Sub gDeleteSelectFile(rstrDelPath As String, ByVal vstrDelFile As String)
    Dim i As Integer
    Dim l As Integer
    Dim S As Integer
    Dim sDelFile As String
    
    vstrDelFile = vstrDelFile & "|"
    l = Len(vstrDelFile)

    For i = 1 To l
        'ファイル名抽出
        S = InStr(i, vstrDelFile, "|", vbTextCompare)
        sDelFile = Mid$(vstrDelFile, i, S - i)
        i = S 'Nextで1足されるので、i = s + 1 ではない
        
        'Killステートメントがコメントアウトされていたので、外した。
        '履歴を追跡すると、このサブルーチンができたときからコメントアウトされていた模様。
        'おそらくテストのつもりでつけておいたのを外し忘れていたのであろう。   kit 2001/01/23
        If Dir$(gGetRegularPath(rstrDelPath) & sDelFile) <> "" Then Kill (gGetRegularPath(rstrDelPath) & sDelFile)
    Next
    
End Sub

Public Sub msgNoFile(fname As String)
    Dim strMsg As String
    If fname <> "" Then
        strMsg = fname & " というファイルは有りません。"
    Else
        strMsg = "ファイル名が有りません"
    End If
    MsgBox strMsg, vbOKOnly + vbExclamation
End Sub

Public Sub MakeFullDir(sPath As String)
    Dim sTmp As String
    Dim iPos As Integer
    
    If Right(sPath, 1) <> "\" Then
        sPath = sPath & "\"
    End If
    iPos = 1
    iPos = InStr(iPos, sPath, "\")
    Do
        sTmp = Left(sPath, iPos)
        If Dir(sTmp & "nul") = "" Then
            MkDir (sTmp)
        End If
        iPos = InStr(iPos + 1, sPath, "\")
    Loop Until iPos = 0
End Sub

Public Function getFileDrive(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    
    filepath = Trim(filepath)
    length = Len(filepath)
    If length > 1 And Mid(filepath, 2, 1) = ":" Then
        getFileDrive = Left(filepath, 2)
    Else
        getFileDrive = ""
    End If
End Function

Public Function getFilePath(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    
    filepath = Trim(filepath)
    length = Len(filepath)
    If length > 1 And Mid(filepath, 2, 1) = ":" Then
        i = 2: j = 2
    Else
        i = 0: j = 0
    End If
    Do Until i > length
        i = InStr(i + 1, filepath, "\")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    getFilePath = Left(filepath, j)
End Function

Public Function getFileName(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    
    filepath = Trim(filepath)
    length = Len(filepath)
    If length > 1 And Mid(filepath, 2, 1) = ":" Then
        i = 2: j = 2
    Else
        i = 0: j = 0
    End If
    Do Until i > length
        i = InStr(i + 1, filepath, "\")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    getFileName = Mid(filepath, j + 1)
End Function

Public Function getFileTitle(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    Dim filename As String
    
    filename = getFileName(filepath)
    length = Len(filename)
    i = 0: j = 0
    Do Until i > length
        i = InStr(i + 1, filename, ".")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    If j = 0 Then j = length + 1
    getFileTitle = Left(filename, j - 1)
End Function

Public Function getFileExt(ByVal filepath As String) As String
    Dim i As Integer
    Dim j As Integer
    Dim length As Integer
    Dim filename As String
    
    filename = getFileName(filepath)
    length = Len(filename)
    i = 0: j = 0
    Do Until i > length
        i = InStr(i + 1, filename, ".")
        If i = 0 Then
            Exit Do
        End If
        j = i
    Loop
    getFileExt = Mid(filename, j + 1)
End Function

'===========================================================
' FOR VERSION
'   WinDanからパクリ
'===========================================================

'機　能 ：  FileIDを切り離した文字列を取得する
'引　数 ：  strVer      バージョン文字列 "FileID:Major.Minor.Revision" Major等は0～9999の数字
'戻り値 ：  バージョン文字列 "Major.Minor.Revision"
Public Function gGetTrueVersionStr(ByRef strVer As String) As String
    Dim j As Integer
    j = InStr(strVer, ":")
    
    gGetTrueVersionStr = Mid$(strVer, j + 1)
    
End Function

'機　能 ：  現在のバージョンを文字列で取得する
'引　数 ：  FileID      ファイルの種別
'戻り値 ：  バージョン文字列 "FileID:Major.Minor.Revision"
Public Function gGetCurVersion(ByVal FileID As String) As String
    gGetCurVersion = FileID & ":" & Format(App.Major) & "." & Format(App.Minor) & "." & Format(App.Revision)
    
End Function

'機　能 ：  strVerよりIndatVerが古ければTrueを返す
'引　数 ：  strVer      バージョン文字列 "FileID:Major.Minor.Revision" Major等は0～9999の数字
'           IndatVer    比較するバージョン構造体
'戻り値 ：  strVerよりIndatVerが古ければTrue
Public Function gIsOlder(ByVal strVer As String, IndatVer As gtypVersion) As Boolean
    Dim tmpVer As gtypVersion
    
    Call SplitVersion(strVer, tmpVer)
    gIsOlder = (gCompVersion(tmpVer, IndatVer) = 1)

End Function

'機　能 ：  strVerよりstrFileVerが古ければTrueを返す
'引　数 ：  strVer      バージョン文字列 "FileID:Major.Minor.Revision" Major等は0～9999の数字
'           strFileVer  ファイルのバージョン文字列
'戻り値 ：  strVerよりstrFileVerが古ければTrue
Public Function gIsOlderStr(ByVal strVer As String, ByVal strFileVer As String) As Boolean
    Dim tmpVer As gtypVersion
    Dim tmpVer2 As gtypVersion
    
    Call SplitVersion(strVer, tmpVer)
    Call SplitVersion(strFileVer, tmpVer2)
    gIsOlderStr = (gCompVersion(tmpVer, tmpVer2) = 1)

End Function

'機　能 ：  現在のバージョンと同じだったらTrueを返す
'引　数 ：  strVer      バージョン文字列 "FileID:Major.Minor.Revision" Major等は0～9999の数字
'戻り値 ：  同じならTrue
Public Function gIsCurrent(ByVal strVer As String) As Boolean
    Dim tmpVer As gtypVersion
    Dim tmpVer2 As gtypVersion
    
    Call SplitVersion(strVer, tmpVer)
    Call GetPrgVersion(tmpVer2)
    gIsCurrent = (gCompVersion(tmpVer, tmpVer2) = 0) '''09/09/14
    If (App.Major + App.Minor / 10 + App.Revision / 100) >= 2.11 Then
        gIsCurrent = True '''09/09/14
    End If
End Function

'機　能 ：  バージョンの比較
'引　数 ：  datVer1,datVer2 比較対象になるバージョン構造体
'戻り値 ：  datVer1の方が新しければ1、古ければ-1、同じなら0を返す
Public Function gCompVersion(datVer1 As gtypVersion, datVer2 As gtypVersion) As Integer
'  v1 <-> v2    : v1 > v2 ---> 1    v1 = v2 ---> 0    v1 < v2 ---> -1
    If datVer1.Major > datVer2.Major Then
        gCompVersion = 1
    ElseIf datVer1.Major = datVer2.Major Then
    '   Minor
        If datVer1.Minor > datVer2.Minor Then
            gCompVersion = 1
        ElseIf datVer1.Minor < datVer2.Minor Then
            gCompVersion = -1
        Else
        '   Revision
            If datVer1.Revision > datVer2.Revision Then
                gCompVersion = 1
            ElseIf datVer1.Revision = datVer2.Revision Then
                gCompVersion = 0
            Else
                gCompVersion = -1
            End If
        End If
    Else
        gCompVersion = -1
    End If
'    If (datVer2.Major * 100 + datVer2.Minor * 10 + datVer2.Revision) = 131 Then gCompVersion = 0   ''''''06/04/07  06/10/23やめた
End Function

Private Function convVerNum(ByVal strFixed32, ByVal strID As String, verdt As gtypVersion) As Boolean
    Dim strT As String, idLen As Integer
    
    idLen = Len(strID)
    If Left(strFixed32, idLen) <> strID Then
        convVerNum = False
    Else
        convVerNum = True
        strT = Trim(Mid(strFixed32, idLen + 2, 99))
        Call SplitVersion(strT, verdt)
    End If
End Function

Private Sub SplitVersion(ByVal strV As String, dtver As gtypVersion)
    Dim i As Integer, j As Integer
    Dim strT As String
    
    i = 1
    j = InStr(i, strV, ":")
    dtver.FileID = Mid$(strV, i, j - i)
    i = j + 1
    j = InStr(i, strV, ".")
    dtver.Major = val(Mid$(strV, i, j - i))
    i = j + 1
    j = InStr(i, strV, ".")
    dtver.Minor = val(Mid$(strV, i, j - i))
    i = j + 1
    dtver.Revision = val(Mid$(strV, i, 99))
End Sub

Private Sub GetPrgVersion(PrgVer As gtypVersion)
    With PrgVer
        .Major = App.Major
        .Minor = App.Minor
        .Revision = App.Revision
    End With
End Sub

Public Sub gPutFileName(rstrExtPath As String, rstrNameFile As String, rstrArcFile As String)
    Dim fno As Integer
    fno = FreeFile
    Open rstrExtPath & rstrNameFile For Output As fno
    Print #fno, rstrArcFile
    Close fno
    
End Sub

Public Function gGetFileName(rstrExtPath As String, rstrNameFile As String, Optional ByVal vsDefaultFilename As String = "")
    Dim fno As Integer
    Dim strArcFile
    
    fno = FreeFile
    On Error GoTo ErrorHandle
    Open rstrExtPath & rstrNameFile For Input As fno
    Line Input #fno, strArcFile
    Close fno
    gGetFileName = strArcFile
    Exit Function
    
ErrorHandle:
    'デフォルト値に直接入れると、無題.pirが無題.pexとかに化ける。バグか？
    '開発環境上しか試していないが、不安なので。
    If vsDefaultFilename = "" Then vsDefaultFilename = "無題.pir"
    gGetFileName = vsDefaultFilename
    
End Function

' ~(チルダ)が入ったDOS形式のpathやファイル名からLFN形式の名前を得る。
Public Function getLFN(strdirname As String) As String
    Dim strdir As String
    Dim tmp As String, tmp2 As String
    Dim i As Integer, ii As Integer
    Dim j As Integer, jj As Integer
    Dim RootPoint As Integer
    
    strdir = strdirname
    If Left(strdir, 1) = """" Then
        strdir = Mid(strdir, 2, Len(strdir) - 1)
    End If
    
    If Left(strdir, 2) = "\\" Then                'ネットワーク上のフォルダ
        RootPoint = InStr(3, strdir, "\")
        RootPoint = InStr(RootPoint + 1, strdir, "\")
        tmp = Left(strdir, RootPoint - 1)
    Else                                          'ローカルのフォルダ
        RootPoint = InStr(1, strdir, "\")
        tmp = UCase(Left(strdir, RootPoint - 1))
    End If
    
    ii = RootPoint
    i = InStr(RootPoint + 1, strdir, "\")
    
    Do While i > 0
        tmp2 = Mid(strdir, ii + 1, i - ii - 1)
        Select Case tmp2
        Case "." 'カレントフォルダ→何もしない
        Case ".." '親フォルダ→文字列を短くする
            jj = RootPoint
            j = InStr(RootPoint + 1, tmp, "\")
            Do While j > 0
                jj = j
                j = InStr(jj + 1, tmp, "\")
            Loop
            tmp = Left(tmp, jj - 1)
        Case Else '通常のファイルやフォルダ
            tmp = tmp & "\" & Dir(Left(strdir, i - 1), vbDirectory)
        End Select
        ii = i
        i = InStr(ii + 1, strdir, "\")
    Loop
    tmp2 = Mid(strdir, ii + 1)
    Select Case tmp2
    Case "." 'カレントフォルダ→何もしない
    Case ".." '親フォルダ→文字列を短くする
        jj = RootPoint
        j = InStr(RootPoint + 1, tmp, "\")
        Do While j > 0
            jj = j
            j = InStr(jj + 1, tmp, "\")
        Loop
        tmp = Left(tmp, jj - 1)
    Case Else '通常のファイルやフォルダ
        tmp = tmp & "\" & Dir(Left(strdir, i - 1), vbDirectory)
    End Select
    getLFN = tmp
End Function

'機　能 ：  ディレクトリの存在をチェックし、なければフラグに従って作成
'引　数 ：  rsPath          検索パス
'           vbMakeDir       true ならディレクトリを作成する
'戻り値 ：  vbMakeDir が false 時に、ディレクトリが存在しないとき、
'           もしくはディレクトリ作成に失敗したら false を返す
'           （vbMakeDir = true 時にディレクトリ作成に成功したら true を返す）
Public Function gChkDirExistAndMake(ByRef rsPath As String, ByVal vbMakeDir) As Boolean
    gChkDirExistAndMake = True
    
    On Error GoTo ErrorHandle

    If Len(Dir$(rsPath, vbDirectory)) = 0 Then
        If vbMakeDir Then
            MkDir rsPath
        Else
            gChkDirExistAndMake = False
        End If
    End If
    
    Exit Function
    
ErrorHandle:
    gChkDirExistAndMake = False

End Function

