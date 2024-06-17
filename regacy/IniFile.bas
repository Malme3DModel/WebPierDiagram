Attribute VB_Name = "IniFile"
Option Explicit

'*.ini�t�@�C���֌W
Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
Declare Function GetPrivateProfileInt Lib "kernel32" Alias "GetPrivateProfileIntA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long

'�@�@�\�FIni�t�@�C������l�i������j�����o��
'�߂�l�F�f�t�H���g���邢�͎��o����������
Public Function gGetIniString(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vstrDefault As String, ByVal vstrFileName As String) As String
    Dim strRet As String * 256
    Dim intRetNum As Integer

    '�f�t�H���g�l��NULL�͎w��ł��Ȃ�
    If vstrDefault = "" Then vstrDefault = " "
    
    intRetNum = GetPrivateProfileString(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), vstrDefault & Chr$(0), strRet, Len(strRet), vstrFileName & Chr$(0))
    
    gGetIniString = Left$(strRet, intRetNum)
    
End Function

'�@�@�\�FIni�t�@�C������l�iLong�l�j�����o��
'�߂�l�F�f�t�H���g���邢�͎��o����Long�l
Public Function gGetIniLong(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vlngDefault As Long, ByVal vstrFileName As String) As Long
    Dim lngRet As Long

    lngRet = GetPrivateProfileInt(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), vlngDefault, vstrFileName & Chr$(0))
    
    gGetIniLong = lngRet
    
End Function

'�@�@�\�FIni�t�@�C���ɒl�i������j����������
'�߂�l�F����ɏ������߂�� True�A����ȊO�� False
Public Function gPutIniString(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vstrData As String, ByVal vstrFileName As String) As Boolean

    gPutIniString = WritePrivateProfileString(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), vstrData & Chr$(0), vstrFileName & Chr$(0))
    
End Function

'�@�@�\�FIni�t�@�C���ɒl�iLong�l�j����������
'�߂�l�F����ɏ������߂�� True�A����ȊO�� False
Public Function gPutIniLong(ByVal vstrSectionName As String, ByVal vstrKeyName As String, ByVal vlngData As Long, ByVal vstrFileName As String) As Boolean

    gPutIniLong = WritePrivateProfileString(vstrSectionName & Chr$(0), vstrKeyName & Chr$(0), Format$(vlngData) & Chr$(0), vstrFileName & Chr$(0))
    
End Function

