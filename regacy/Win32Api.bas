Attribute VB_Name = "Win32Api"
Option Explicit

'Windows API
'************************* Constants ***********************************
Public Const MB_ICONEXCLAMATION = &H30&
Public Const MB_ICONASTERISK = &H40&
Public Const MB_ICONHAND = &H10&
Public Const MB_ICONINFORMATION = MB_ICONASTERISK
Public Const MB_ICONQUESTION = &H20&
Public Const MB_OK = &H0&
Public Const MB_OKCANCEL = &H1&
Public Const MB_YESNO = &H4&
Public Const MB_YESNOCANCEL = &H3&
Public Const MB_DEFBUTTON1 = &H0&
Public Const MB_DEFBUTTON2 = &H100&
Public Const MB_DEFBUTTON3 = &H200&

Public Const IDABORT = 3
Public Const IDCANCEL = 2
Public Const IDOK = 1
Public Const IDNO = 7
Public Const IDYES = 6
Public Const IDRETRY = 4

'Windows API の宣言
Declare Function WinHelp Lib "user32.dll" Alias "WinHelpA" (ByVal hwnd As Long, ByVal lpHelpFile As String, ByVal wCommand As Long, ByVal dwData As Any) As Long
Declare Function OSWinHelp% Lib "user32" Alias "WinHelpA" (ByVal hwnd&, ByVal HelpFile$, ByVal wCommand%, dwData As Any)
Public Const HELP_CONTEXT = &H1& 'Display topic in ulTopic
Public Const HELP_QUIT = &H2&    'Terminate help
Public Const HELP_INDEX = &H3&   'Display index
Public Const HELP_CONTENTS = &H3&
Public Const HELP_HELPONHELP = &H4&    'Display help on using help
Public Const HELP_SETINDEX = &H5&      'Set current Index for multi index help
Public Const HELP_SETCONTENTS = &H5&
Public Const HELP_CONTEXTPOPUP = &H8&
Public Const HELP_COMMAND = &H102&
Public Const HELP_PARTIALKEY = &H105&
Public Const HELP_MULTIKEY = &H201&
Public Const HELP_SETWINPOS = &H203&
Public Const HELP_CONTEXTMENU = &HA&
Public Const HELP_FINDER = &HB&


Public Type SYSTEMTIME
        wYear As Integer
        wMonth As Integer
        wDayOfWeek As Integer '0:Sun 1:Mon
        wDay As Integer
        wHour As Integer
        wMinute As Integer
        wSecond As Integer
        wMilliseconds As Integer
End Type

' スプラッシュの前面表示に使用
Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Long, ByVal hWndInsertAfter As Long, ByVal x As Long, ByVal y As Long, ByVal cx As Long, ByVal cy As Long, ByVal wFlags As Long) As Long

'********************************************* Functions ****************
'Declare Function MessageBeep Lib "user32" (ByVal wType As Long) As Long
'Declare Function GetTickCount Lib "kernel32" () As Long
'
'Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
'Declare Function GetModuleFileName Lib "kernel32" Alias "GetModuleFileNameA" (ByVal hModule As Long, ByVal lpFileName As String, ByVal nSize As Long) As Long
'
'Declare Function MessageBox Lib "user32" Alias "MessageBoxA" (ByVal hwnd As Long, ByVal lpText As String, ByVal lpCaption As String, ByVal wType As Long) As Long

Declare Function ImmReleaseContext Lib "imm32.dll" (ByVal hwnd As Long, ByVal himc As Long) As Long
Declare Function ImmSetOpenStatus Lib "imm32.dll" (ByVal himc As Long, ByVal b As Long) As Long
Declare Function ImmGetContext Lib "imm32.dll" (ByVal hwnd As Long) As Long

'Declare Sub GetLocalTime Lib "kernel32" (lpSystemTime As SYSTEMTIME)

'連続したメモリをゼロで埋める
'Declare Sub ZeroMemory Lib "kernel32" Alias "RtlZeroMemory" (dest As Any, ByVal bytes As Long)

'ウィンドウの描画抑止
'Declare Function LockWindowUpdate Lib "User32" (ByVal hwndLock As Long) As Long

'------------------------------------------------------------------------------------------------------------------------------------------------
'ここから 【外部プログラム起動関連】

'プログラムを停止して他のプロセスを速く実行させる
Declare Sub Sleep Lib "kernel32" (ByVal millsec As Long)

' セキュリティ属性に関する情報を定義する構造体
Type SECURITY_ATTRIBUTES
  nLength              As Long
  lpSecurityDescriptor As Long
  bInheritHandle       As Long
End Type

' 新しいプロセスのメインウィンドウの表示状態を定義する構造体
Type STARTUPINFO
    cb              As Long
    lpReserved      As Long
    lpDesktop       As Long
    lpTitle         As Long
    dwX             As Long
    dwY             As Long
    dwXSize         As Long
    dwYSize         As Long
    dwXCountChars   As Long
    dwYCountChars   As Long
    dwFillAttribute As Long
    dwFlags         As Long
    wShowWindow     As Integer
    cbReserved2     As Integer
    lpReserved2     As Long
    hStdInput       As Long
    hStdOutput      As Long
    hStdError       As Long
End Type
Public Const STARTF_USESHOWWINDOW = &H1
Public Const STARTF_USESIZE = &H2
Public Const STARTF_USEPOSITION = &H4
Public Const STARTF_USECOUNTCHARS = &H8
Public Const STARTF_USEFILLATTRIBUTE = &H10
Public Const STARTF_RUNFULLSCREEN = &H20
Public Const STARTF_FORCEONFEEDBACK = &H40
Public Const STARTF_FORCEOFFFEEDBACK = &H80
Public Const STARTF_USESTDHANDLES = &H100
Public Const STARTF_USEHOTKEY = &H200       ' Windows95 Only
Public Const SW_HIDE = 0
Public Const SW_SHOWNORMAL = 1
Public Const SW_NORMAL = 1
Public Const SW_SHOWMINIMIZED = 2
Public Const SW_SHOWMAXIMIZED = 3
Public Const SW_MAXIMIZE = 3
Public Const SW_SHOWNOACTIVATE = 4
Public Const SW_SHOW = 5
Public Const SW_MINIMIZE = 6
Public Const SW_SHOWMINNOACTIVE = 7
Public Const SW_SHOWNA = 8
Public Const SW_RESTORE = 9
Public Const SW_SHOWDEFAULT = 10
Public Const SW_MAX = 10

' 新しいプロセスに関する識別情報を定義する構造体
Type PROCESS_INFORMATION
    hProcess    As Long
    hThread     As Long
    dwProcessId As Long
    dwThreadId  As Long
End Type

' 新しいプロセスとそのプライマリスレッドを作成する関数の宣言
Declare Function CreateProcess Lib "kernel32" Alias "CreateProcessA" _
   (ByVal lpApplicationName As String, ByVal lpCommandLine As String, _
    lpProcessAttributes As SECURITY_ATTRIBUTES, _
    lpThreadAttributes As SECURITY_ATTRIBUTES, _
    ByVal bInheritHandles As Long, _
    ByVal dwCreationFlags As Long, _
    lpEnvironment As Any, _
    ByVal lpCurrentDriectory As String, _
    lpStartupInfo As STARTUPINFO, _
    lpProcessInformation As PROCESS_INFORMATION) As Long
Public Const DEBUG_PROCESS = &H1
Public Const DEBUG_ONLY_THIS_PROCESS = &H2
Public Const CREATE_SUSPENDED = &H4
Public Const DETACHED_PROCESS = &H8
Public Const CREATE_NEW_CONSOLE = &H10
Public Const NORMAL_PRIORITY_CLASS = &H20
Public Const IDLE_PRIORITY_CLASS = &H40
Public Const HIGH_PRIORITY_CLASS = &H80
Public Const REALTIME_PRIORITY_CLASS = &H100
Public Const CREATE_NEW_PROCESS_GROUP = &H200
Public Const CREATE_UNICODE_ENVIRONMENT = &H400
Public Const CREATE_SEPARATE_WOW_VDM = &H800
Public Const CREATE_SHARED_WOW_VDM = &H1000
Public Const CREATE_DEFAULT_ERROR_MODE = &H4000000
Public Const CREATE_NO_WINDOW = &H8000000

' 指定されたプロセスの終了状態を取得する関数の宣言
Declare Function GetExitCodeProcess Lib "kernel32" _
   (ByVal hProcess As Long, _
    lpExitCode As Long) As Long
Public Const STATUS_PENDING = &H103&
Public Const STILL_ACTIVE = STATUS_PENDING
'ここまで 【外部プログラム起動関連】
'------------------------------------------------------------------------------------------------------------------------------------------------

'iniファイル関連
'Declare Function GetPrivateProfileString Lib "kernel32" Alias "GetPrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpDefault As String, ByVal lpReturnedString As String, ByVal nSize As Long, ByVal lpFileName As String) As Long
'Declare Function GetPrivateProfileInt Lib "kernel32" Alias "GetPrivateProfileIntA" (ByVal lpApplicationName As String, ByVal lpKeyName As String, ByVal nDefault As Long, ByVal lpFileName As String) As Long
'Declare Function WritePrivateProfileString Lib "kernel32" Alias "WritePrivateProfileStringA" (ByVal lpApplicationName As String, ByVal lpKeyName As Any, ByVal lpString As Any, ByVal lpFileName As String) As Long


Function xGetPrivateProfileString(ApplicationName As String, KeyName As String, Default As String, ReturnedString As String, nSize As Long, FileName As String) As Long
    Dim fno As Integer
    Dim lbuf As String
    Dim ePos As Integer
    fno = FreeFile
    ReturnedString = Default
    On Error GoTo ErrorHandle
    Open FileName For Input As fno
    Do Until EOF(fno) = True
        Line Input #fno, lbuf
        lbuf = Trim(lbuf)
        If lbuf = "[" & ApplicationName & "]" Then
            Do Until EOF(fno) = True
                Line Input #fno, lbuf
                lbuf = LTrim(lbuf)
                ePos = InStr(lbuf, "=")
                If ePos > 1 And Trim(Left(lbuf, ePos - 1)) = KeyName Then
                    If ePos = Len(lbuf) Then
                        ReturnedString = ""
                    Else
                        ReturnedString = Mid(lbuf, ePos + 1)
                    End If
                    Exit Do
                End If
            Loop
            Exit Do
        End If
    Loop
    Close #fno
    xGetPrivateProfileString = 0
    Exit Function
    
ErrorHandle:
    xGetPrivateProfileString = 1
End Function

Function xGetPrivateProfileInt(ApplicationName As String, KeyName As String, Default As Long, FileName As String) As Long
    Dim result As Long
    Dim nSize As Long
    Dim ReturnedString As String
    result = xGetPrivateProfileString(ApplicationName, KeyName, "", ReturnedString, nSize, FileName)
    If result = 0 And Len(ReturnedString) > 0 Then
        xGetPrivateProfileInt = CInt(ReturnedString)
    Else
        xGetPrivateProfileInt = Default
    End If
End Function

Function xWritePrivateProfileString(ByVal ApplicationName As String, ByVal KeyName As String, ByVal WriteString As String, FileName As String) As Long
    Dim fno As Integer
    Dim fno2 As Integer
    Dim lbuf As String
    Dim lbuf2 As String
    Dim ePos As Integer
    Dim eflag As Boolean
    
    ApplicationName = Trim(cmnDelChr0(ApplicationName))
    KeyName = Trim(cmnDelChr0(KeyName))
    WriteString = cmnDelChr0(WriteString)
    If Dir(FileName) = "" Then
        fno = FreeFile
        Open FileName For Output As fno
        Print #fno, "[" & ApplicationName & "]"
        Print #fno, KeyName & "=" & WriteString
        Close #fno
    Else
        fno = FreeFile
        Open FileName For Input As fno
        fno2 = FreeFile
        Open FileName & ".$$$" For Output As fno2
'        Open FileName For Output As fno2
        eflag = False
        Do Until EOF(fno) = True
            Line Input #fno, lbuf
            Print #fno2, lbuf
            If Trim(lbuf) = "[" & ApplicationName & "]" Then
                lbuf2 = ""
                Do Until EOF(fno) = True
                    Line Input #fno, lbuf
                    Select Case Trim(lbuf)
                    Case ""
                        lbuf2 = lbuf2 & vbCrLf & lbuf
                    Case "[" & ApplicationName & "]"
                        Print #fno2, KeyName & "=" & WriteString
                        eflag = True
                        If Len(lbuf2) > 0 Then
                            Print #fno2, lbuf2
                        End If
                        Print #fno2, lbuf
                        Exit Do
                    Case Else
                        ePos = InStr(lbuf, "=")
                        If ePos > 1 And Trim(Left(lbuf, ePos - 1)) = KeyName Then
                            Print #fno2, KeyName & "=" & WriteString
                            eflag = True
                            Exit Do
                        Else
                            Print #fno2, lbuf
                        End If
                    End Select
                Loop
                If eflag = False Then
                    Print #fno2, KeyName & "=" & WriteString
                    eflag = True
                    If Len(lbuf2) > 0 Then
                        Print #fno2, lbuf2
                    End If
                End If
            End If
        Loop
        If eflag = False Then
            If lbuf <> "" Then
                Print #fno2,
            End If
            Print #fno2, "[" & ApplicationName & "]"
            Print #fno2, KeyName & "=" & WriteString
            Print #fno2,
        End If
        
        Close #fno
        Close #fno2
        Kill FileName
'        FileCopy FileName, FileName
'        Kill FileName
        FileCopy FileName & ".$$$", FileName
        Kill FileName & ".$$$"
    End If
    xWritePrivateProfileString = 0
    Exit Function
    
ErrorHandle:
    xWritePrivateProfileString = 1
End Function


Public Function cmnDelChr0(stTmp As String) As String
  Dim i As Integer
'  Dim stRet As String
  
'  stRet = ""
  
  i = InStr(1, stTmp, Chr$(0), vbTextCompare)
'  For i = 1 To Len(stTmp)
'    If Mid$(stTmp, i, 1) <> chr$(0) Then stRet = stRet + Mid$(stTmp, i, 1)
'  Next
  
  'i = 1ならLeft$は""を返す
  If i > 0 Then cmnDelChr0 = Left$(stTmp, i - 1) Else cmnDelChr0 = stTmp

End Function

