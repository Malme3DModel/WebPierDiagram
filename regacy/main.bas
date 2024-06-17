Attribute VB_Name = "ProjectMain"
Option Explicit
Public CurD                     As String

Private Sub main()
    Dim strRestoreFilename As String
    Dim intAns As Integer

    CurD = CurDir
     'プロテクトチェック
'    frmChkPr.ChkProtect = False '''''''''''''''''''''''''''プロテクトチェック　パス　nagase
    If frmChkPr.ChkProtect = True Then
        Unload frmChkPr
        Exit Sub
    Else
        Unload frmChkPr
    End If

     '二重起動チェック
    If App.PrevInstance = True Then
        MsgBox "既に起動中の" & App.Title & "があります"
        'AppActivate App.Title
        End
    End If
    
    'スプラッシュの表示
    frmSplash.Show
    frmSplash.Refresh
    
    '----------------------------------------------
    'ディレクトリ構造の確認
    '----------------------------------------------
    gstrAppDir = gGetRegularPath(App.Path)

    '作業用ディレクトリの有無をチェック
    gstrTmpDir = gstrAppDir & "temp\"
    If Dir$(gstrTmpDir, vbDirectory) = "" Then MkDir gstrTmpDir
    
    '計算用ディレクトリの有無をチェック
    gstrCalcDir = gstrAppDir & "WDATA\"
    If Dir$(gstrCalcDir, vbDirectory) = "" Then MkDir gstrCalcDir
    
    '共通データ用ディレクトリの有無をチェック
    gstrMarkDir = gstrAppDir & "MARK\"
    If Dir$(gstrMarkDir, vbDirectory) = "" Then MkDir gstrMarkDir
    
    'データ保存用ディレクトリの有無をチェック
    gstrCurDir = gstrAppDir & "Data\"
    gstrInitDirPartOpen = "" 'gstrCurDir
    If Dir$(gstrCurDir, vbDirectory) = "" Then MkDir gstrCurDir
    
    '設計総括表用
    gstrSOKKATUDir = gstrAppDir & "Data\" & "設計総括表"
    If Dir$(gstrSOKKATUDir, vbDirectory) = "" Then MkDir gstrSOKKATUDir
    
    'TruExeディレクトリのセット
    gstrExeDir = gstrAppDir & "Exe\"
    
    gstrPfsDir = gGetIniString("Programs", "PForce", " ", gstrAppDir & gcstrInitFile & ".ini")
    If gstrPfsDir = "" Or Dir(gstrPfsDir & "pforce2k.exe") = "" Then
        gstrPfsDir = getFileDrive(gstrAppDir) & "\pforce2k\"
        Call gPutIniString("Programs", "PForce", gstrPfsDir, gstrAppDir & gcstrInitFile & ".ini")
    End If
    
    gstrFrXDir = gGetIniString("Programs", "FRAME", " ", gstrAppDir & gcstrInitFile & ".ini")
    If gstrFrXDir = "" Or Dir(gstrFrXDir & "FRAME.exe") = "" Then
        gstrFrXDir = getFileDrive(gstrAppDir) & "\WinFrame\"
        Call gPutIniString("Programs", "FRAME", gstrFrXDir, gstrAppDir & gcstrInitFile & ".ini")
    End If
    
    gstrSNAPDir = gstrAppDir & "SNAP"
    If Dir$(gstrSNAPDir, vbDirectory) = "" Then MkDir gstrSNAPDir
    
    'デバッグモードの設定
    If Dir$(gstrAppDir & "debug.txt") <> "" Then gbolIsDebug = True Else gbolIsDebug = False
    
    '----------------------------------------------
    '復帰用ファイルが存在するかをチェック
    '----------------------------------------------
    strRestoreFilename = gstrTmpDir & "*." & gcstrFileExtNoDot
    If Dir$(strRestoreFilename) <> "" Then
        intAns = MsgBox("前回、異常終了した際のデータが残っています。" & vbCrLf & "復帰しますか？" & vbCrLf & "（「いいえ」を選択した場合、そのデータは失われます！）", vbExclamation + vbYesNoCancel + vbDefaultButton1, "データの復帰")
        frmSplash.Refresh
        
        Select Case intAns
        Case vbCancel
            End
        Case vbNo
            '作業フォルダ内のデータファイルを全て消す
            Call gDeleteAllFile(gstrTmpDir, gcstrFileExtNoDot)
        
            Load MDIForm_橋脚
            Call MDIForm_橋脚.ChgCaption("")
            'SI単位の設定
            Call MDIForm_橋脚.SetSI(gcintSI)
            Call MDIForm_橋脚.InitChangedFlag
        Case vbYes
            Load MDIForm_橋脚
            gstrCurFilename = gGetFileName(gstrTmpDir, gcstrNameFile, "無題" & gcstrFileExt)
            gstrCurFilename = getFilePath(gstrCurFilename) & getFileTitle(gstrCurFilename) & "." & getFileExt(gstrCurFilename)
            
            gstrCurDir = getFilePath(gstrCurFilename)
            
'            gstrCurFilename = getFilePath(gstrCurFilename) & getFileTitle(gstrCurFilename) & "～復帰データ." & getFileExt(gstrCurFilename)
            Call MDIForm_橋脚.ChgCaption(gstrCurFilename)
            Call MDIForm_橋脚.InitChangedFlag(True)
        End Select
    End If
    
    Call SetWindowPos(frmSplash.hwnd, -1, 0, 0, 0, 0, &H43)
    MDIForm_橋脚.Show
    Sleep (600)
    
    'スクロ－ルバーのサイズを取得する
    Unload frmSplash
    
End Sub

