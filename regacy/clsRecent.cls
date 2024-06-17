VERSION 1.0 CLASS
BEGIN
  MultiUse = -1  'True
END
Attribute VB_Name = "clsRecent"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = False
'=================================================================
'clsRecent - clsRecent.cls：ファイル履歴管理クラス  99/09/18 kit
'=================================================================

'※使用には、IniFile.bas と StringFnc.bas が必要

'使い方-----------------------------------------------------------
'使用したいフォームのメニューにあらかじめ
'mnuFileRecent(n)、とmnuFileRecentSepを作成しておくこと（名前も統一する必要がある）。
'
'モジュールレベルで
'    Dim usrFileRecent As clsRecent
'と宣言し、Form_Load()などで
'    Set usrFileRecent = New clsRecent
'    Call usrFileRecent.Init(5, Me, App.Path & "\Jin2.ini")
'のようにして使用する。
'
'メニュークリック時のイベントは各アプリケーションで用意すること。
'
'アプリケーションの終了時に
'    Set usrFileRecent = Nothing
'でオブジェクトを開放する必要あり？（ＶＢが自動的に開放してくれる？）
'-----------------------------------------------------------------

'履歴の最大数を決めておき、実際に使用する数を可変にできるようにした。
'                                                   2000/10/10 kit

Option Explicit

Dim intUseRecent As Integer
Dim intRecentMax As Integer
Dim strRecentName() As String * 256 '128 実際はファイルパスに何文字使えるのか？
Dim frmTarget As Form
Dim strIniFileName As String

'機　能：使用する履歴数の変更
'引　数
'       vintUseRecent       使用する履歴の数
'返却値
'       成功したら true、失敗したら false を返す
Public Function ChangeUseNum(ByVal vintUseRecent As Integer) As Boolean
    ChangeUseNum = False
    
    If vintUseRecent < 0 Or vintUseRecent > intRecentMax Then Exit Function
    
    intUseRecent = vintUseRecent
    ChangeUseNum = True
   
    Call SetCaption
   
End Function

'機　能：履歴クラスの初期化（最大値指定バージョン）
'引　数
'       vintUseRecent       使用する履歴の数
'       vintRecentMax       履歴の最大値
'       frmArgForm          履歴メニューを持つフォーム
'       rstrIniFileName     履歴を読み込む設定ファイル名（パス名含む）
Public Sub InitWithMax(ByVal vintUseRecent As Integer, ByVal vintRecentMax As Integer, ByVal frmArgForm As Form, ByRef rstrIniFileName As String)
    Dim i As Integer
    
    intUseRecent = vintUseRecent
    intRecentMax = vintRecentMax
    ReDim strRecentName(intRecentMax)
    strIniFileName = rstrIniFileName

    'オブジェクト変数のセット
    Set frmTarget = frmArgForm

    'ファイル履歴の取得
    For i = 0 To intRecentMax - 1
        strRecentName(i) = gGetIniString("File", "Recent" & Format$(i + 1), "", strIniFileName)
        frmTarget.mnuFileRecent(i).Visible = False
    Next

    Call SetCaption
   
End Sub

'機　能：履歴クラスの初期化
'引　数
'       vintRecentMax       履歴の最大値
'       frmArgForm          履歴メニューを持つフォーム
'       rstrIniFileName     履歴を読み込む設定ファイル名（パス名含む）
Public Sub Init(ByVal vintRecentMax As Integer, ByVal frmArgForm As Form, ByRef rstrIniFileName As String)
    Dim i As Integer
    
    intUseRecent = vintRecentMax
    intRecentMax = vintRecentMax
    ReDim strRecentName(intRecentMax)
    strIniFileName = rstrIniFileName

    'オブジェクト変数のセット
    Set frmTarget = frmArgForm

    'ファイル履歴の取得
    For i = 0 To intRecentMax - 1
        strRecentName(i) = gGetIniString("File", "Recent" & Format$(i + 1), "", strIniFileName)
        frmTarget.mnuFileRecent(i).Visible = False
    Next

    Call SetCaption
   
End Sub

'機　能：履歴の保存（アプリケーションを閉じる際に呼び出す）
'引　数
'       rstrIniFileName     履歴を保存する設定ファイル名（パス名含む）。指定しない場合はInitで開いたファイルに書き込む
Public Sub Save(Optional ByRef rstrIniFileName As String = "")
    Dim i As Integer
    
    If rstrIniFileName <> "" Then strIniFileName = rstrIniFileName
    
    'ファイル履歴の書き込み
    For i = 0 To intRecentMax - 1
        Call WritePrivateProfileString("File", "Recent" & Format$(i + 1), strRecentName(i), strIniFileName)
    Next

End Sub

'機　能：ファイル名の取得（mnuFileRecent_Clickで使用する）
'引　数
'       vIndex  mnuFileRecentのIndex
Public Function GetFileName(ByVal vIndex As Integer) As String
    
    GetFileName = gClearStr(strRecentName(vIndex))

End Function

'機　能：ファイル履歴の更新
'引　数
'       rstrNewFile       新しく登録するファイル名
Public Sub RenewRecent(ByRef rstrNewFile As String)
    Dim i As Integer
    
    '同じのがあるかを調べる
    For i = 0 To intRecentMax - 1
        If gClearStr(strRecentName(i)) = gClearStr(rstrNewFile) Then
            strRecentName(i) = ""
        End If
    Next
    
    '空データがあれば詰める（同じのがあった場合に空白を詰める）
    For i = 0 To intRecentMax - 1 - 1
        If gClearStr(strRecentName(i)) = "" Then
            strRecentName(i) = strRecentName(i + 1)
            strRecentName(i + 1) = ""
        End If
    Next
    
    '古い履歴を一個ずつ下にずらす
    For i = intRecentMax - 1 To 0 Step -1
        strRecentName(i + 1) = strRecentName(i)
    Next

    strRecentName(0) = gClearStr(rstrNewFile)
    
    Call SetCaption

End Sub

Private Sub SetCaption()
    Dim i As Integer
    Dim strFileName As String
    Dim bolRecentNone As Boolean

    With frmTarget
        '空データがあれば詰める
        For i = 0 To intRecentMax - 1 - 1
            If gClearStr(strRecentName(i)) = "" Then
                strRecentName(i) = strRecentName(i + 1)
                strRecentName(i + 1) = ""
            End If
        Next
    
        'ファイルメニューにキャプションをセット
        bolRecentNone = True
        For i = 0 To intRecentMax - 1
            strFileName = gClearStr(strRecentName(i))
            If strFileName <> "" And i < intUseRecent Then
                .mnuFileRecent(i).Caption = "&" & Format$(i + 1) & " " & gCutLongFileName(strFileName)
                .mnuFileRecent(i).Visible = True
                
                bolRecentNone = False
            Else
                .mnuFileRecent(i).Visible = False
            End If
        Next
    
        .mnuFileRecentSep.Visible = Not bolRecentNone
    End With
    
End Sub

