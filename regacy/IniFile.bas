Attribute VB_Name = "IniFile"
Option Explicit

'*.iniファイル関係
Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Declare Function GetPrivateProfileInt Lib "kernel32" Alias "GetPrivateProfileIntA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

'機　能：Iniファイルから値（文字列）を取り出す
'戻り値：デフォルトあるいは取り出した文字列
Public Function gGetIniString(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vstrDefault As String, ByVal vstrFileName As String) As String
    Dim strRet As String * 256
    Dim intRetNum As Integer

    'デフォルト値にNULLは指定できない
    If vstrDefault = "" Then vstrDefault = " "
    
    intRetNum = GetPrivateProfileString(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), vstrDefault & Chr$(0), strRet, Len(strRet), vstrFileName & Chr$(0))
    
    gGetIniString = Left$(strRet, intRetNum)
    
End Function

'機　能：Iniファイルから値（Long値）を取り出す
'戻り値：デフォルトあるいは取り出したLong値
Public Function gGetIniLong(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vlngDefault As Long, ByVal vstrFileName As String) As Long
    Dim lngRet As Long

    lngRet = GetPrivateProfileInt(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), vlngDefault, vstrFileName & Chr$(0))
    
    gGetIniLong = lngRet
    
End Function

'機　能：Iniファイルに値（文字列）を書き込む
'戻り値：正常に書き込めれば True、それ以外は False
Public Function gPutIniString(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vstrData As String, ByVal vstrFileName As String) As Boolean

    gPutIniString = WritePrivateProfileString(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), vstrData & Chr$(0), vstrFileName & Chr$(0))
    
End Function

'機　能：Iniファイルに値（Long値）を書き込む
'戻り値：正常に書き込めれば True、それ以外は False
Public Function gPutIniLong(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vlngData As Long, ByVal vstrFileName As String) As Boolean

    gPutIniLong = WritePrivateProfileString(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), Format$(vlngData) & Chr$(0), vstrFileName & Chr$(0))
    
End Function

