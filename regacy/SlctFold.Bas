Attribute VB_Name = "SlctFoldFnc"
Option Explicit

'SHBrowseForFolderqで使用する構造体
Public Type BROWSEINFO
   hwndOwner As Long    '親Windowのﾊﾝﾄﾞﾙ
   pidlRoot As Long     'ﾙｰﾄﾌｫﾙﾀﾞ
   pszDisplayName As Long
   lpszTitle As String  'ﾀﾞｲｱﾛｸﾞに表示するﾒｯｾｰｼﾞ
   ulFlags As Long      'ｵﾌﾟｼｮﾝ
   lpfn As Long
   lParam As Long
   iImage As Long
End Type

'ﾙｰﾄﾌｫﾙﾀﾞ定数
Public Const CSIDL_DESKTOP = &H0           'ﾃﾞｽｸﾄｯﾌﾟ
Public Const CSIDL_PROGRAMS = &H2          'ﾌﾟﾛｸﾞﾗﾑ
Public Const CSIDL_CONTROLS = &H3          'ｺﾝﾄﾛｰﾙﾊﾟﾈﾙ
Public Const CSIDL_PRINTERS = &H4          'ﾌﾟﾘﾝﾀｰ
Public Const CSIDL_PERSONAL = &H5          'ﾊﾟｰｿﾅﾙ
Public Const CSIDL_FAVORITES = &H6         'ﾌﾞｯｸﾏｰｸ
Public Const CSIDL_STARTUP = &H7           'ｽﾀｰﾄｱｯﾌﾟ
Public Const CSIDL_RECENT = &H8            '[最近使ったﾌｧｲﾙ]
Public Const CSIDL_SENDTO = &H9            '[送る]
Public Const CSIDL_BITBUCKET = &HA
Public Const CSIDL_STARTMENU = &HB         '[ｽﾀｰﾄ]ﾒﾆｭｰ
Public Const CSIDL_DESKTOPDIRECTORY = &H10 'ﾃﾞｽｸﾄｯﾌﾟ
Public Const CSIDL_DRIVES = &H11
Public Const CSIDL_NETWORK = &H12
Public Const CSIDL_NETHOO = &H13           'Network Neighborhood
Public Const CSIDL_FONTS = &H14            'ﾌｫﾝﾄ
Public Const CSIDL_TEMPLATES = &H15        'Shell New

'特殊ﾌｫﾙﾀﾞ(ﾏｲｺﾝﾋﾟｭｰﾀ、ｺﾝﾄﾛｰﾙﾊﾟﾈﾙ等)を選択させない
Public Const BIF_BROWSEFORCOMPUTER = 1

'[ﾌｫﾙﾀﾞの参照]ﾀﾞｲｱﾛｸﾞを呼び出すAPI
Public Declare Function SHBrowseForFolder Lib "shell32.dll" _
    Alias "SHBrowseForFolderA" (lpBROWSEINFO As BROWSEINFO) As Long

'SHBrowseForFolderで得られた値からﾌｫﾙﾀﾞのﾊﾟｽを取得するAPI
Public Declare Function SHGetPathFromIDList Lib "shell32.dll" _
    Alias "SHGetPathFromIDListA" (ByVal pidl As Long, ByVal pszPath As String) As Long

'SHBrowseForFolderで得られた値のﾒﾓﾘを開放するAPI
Public Declare Function SHFree Lib "shell32" Alias "#195" _
        (ByVal pidl As Long) As Long

'機　能：これを呼び出すとフォルダ選択ダイアログが表示される
'引　数
'       なし
'返却値
'       取得したフォルダパスを返す
Public Function GetFolderName(ByVal vForm As Form, ByVal viRootFolder As Integer, _
    Optional ByVal vsCaption As String = "ﾌｫﾙﾀﾞを選択してください", Optional ByVal viFlags As Integer = BIF_BROWSEFORCOMPUTER) As String
    
    Dim typBrowseInfo As BROWSEINFO
    Dim lngFoldPointer As Long
    Dim strPathName As String

    With typBrowseInfo
        '親ｳｨﾝﾄﾞｳを設定
        .hwndOwner = vForm.hwnd
        'ﾙｰﾄﾌｫﾙﾀﾞを設定
        .pidlRoot = viRootFolder
        .lpszTitle = vsCaption
        '特殊ﾌｫﾙﾀﾞを選択させない
        .ulFlags = viFlags
    End With

    '[ﾌｫﾙﾀﾞの参照]ﾀﾞｲｱﾛｸﾞを呼び出す
    lngFoldPointer = SHBrowseForFolder(typBrowseInfo)

    '予めNull文字をｾｯﾄ
    strPathName = String$(256, vbNullChar)
    'SHBrowseForFolderで得られた値からﾌｫﾙﾀﾞのﾊﾟｽを取得
    Call SHGetPathFromIDList(lngFoldPointer, strPathName)

    '割り当てられたﾒﾓﾘを開放
    Call SHFree(lngFoldPointer)

    '結果表示
    GetFolderName = strPathName

End Function

