VERSION 5.00
Object = "{7491AC02-BFD8-11D1-BB52-00E0290EA3C9}#1.0#0"; "PROTEKIT.OCX"
Begin VB.Form frmChkPr 
   Caption         =   "PForce"
   ClientHeight    =   4248
   ClientLeft      =   60
   ClientTop       =   348
   ClientWidth     =   6636
   LinkTopic       =   "Form1"
   ScaleHeight     =   4248
   ScaleWidth      =   6636
   StartUpPosition =   3  'Windows �̊���l
   Begin PROTEKITLibCtl.ProtectKit ProtectKit1 
      Left            =   3360
      OleObjectBlob   =   "frmChkPr.frx":0000
      Top             =   720
   End
End
Attribute VB_Name = "frmChkPr"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Public Function ChkProtect() As Boolean
    #Const ProtectMode = 3 ' 3:�L�������t���v���e�N�g  3:�v���e�N�g����
    
    With ProtectKit1
    
    #If ProtectMode = 3 Then
        .ProtectWay = 3      '�f���p �L�������t��
        .LockWord = App.Title & "DemoVersion"
        .PassWord = ""
        .ProtectMsg = "���̃A�v���P�[�V�����͕]���̂��߂̎g�p�������o�߂��܂����B" & vbCrLf _
                    & "(��)���M�G���W�j�A�����O�܂ł��₢���킹���������B"
        .ProtectMsgCap = "���q�l�ւ̂��ē�"
        .ProtectMsgDsp = True
' ------ �g�p�����͂�����ύX���� ---------
        .ValidDate = 20301230
' ---------------------------------------
    #End If
    #If ProtectMode > 0 Then
        .RegKey = 1 'Hkey_Current_User
        .RegName1 = "SubLeft"
        .RegName2 = "SubTop"
        .RegName3 = "SubWidth"
        .RegName4 = "SubHeight"
        .RegSubKey = "Software\VB and VBA Program Settings\" _
                   & App.Title & "\Settings"
        ChkProtect = .CheckProtect
        Exit Function
    #End If
    End With
    
    ChkProtect = False
End Function


