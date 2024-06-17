VERSION 5.00
Object = "{A8561640-E93C-11D3-AC3B-CE6078F7B616}#1.0#0"; "vsprint7.ocx"
Begin VB.Form Form_}–Ê‰æ–Ê 
   AutoRedraw      =   -1  'True
   BorderStyle     =   5  '‰Â•ÏÂ°Ù ³¨İÄŞ³
   Caption         =   "}–ÊÌŞ×³»Ş"
   ClientHeight    =   9240
   ClientLeft      =   45
   ClientTop       =   165
   ClientWidth     =   11730
   BeginProperty Font 
      Name            =   "‚l‚r ƒSƒVƒbƒN"
      Size            =   9
      Charset         =   128
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   9240
   ScaleWidth      =   11730
   Begin VSPrinter7LibCtl.VSPrinter VSPrt}–Ê 
      Height          =   4455
      Left            =   3000
      TabIndex        =   9
      Top             =   120
      Width           =   5775
      _cx             =   10186
      _cy             =   7858
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      MousePointer    =   0
      BackColor       =   -2147483643
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "‚l‚r ƒSƒVƒbƒN"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty HdrFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "‚l‚r ƒSƒVƒbƒN"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _ConvInfo       =   1
      AutoRTF         =   -1  'True
      Preview         =   -1  'True
      DefaultDevice   =   0   'False
      PhysicalPage    =   -1  'True
      AbortWindow     =   -1  'True
      AbortWindowPos  =   0
      AbortCaption    =   "ˆóü’†..."
      AbortTextButton =   "·¬İ¾Ù"
      AbortTextDevice =   "o—Íæ %s ( %s )"
      AbortTextPage   =   "%d Íß°¼Ş–Ú‚ğˆóü’†"
      FileName        =   ""
      MarginLeft      =   1440
      MarginTop       =   1440
      MarginRight     =   1440
      MarginBottom    =   1440
      MarginHeader    =   0
      MarginFooter    =   0
      IndentLeft      =   0
      IndentRight     =   0
      IndentFirst     =   0
      IndentTab       =   720
      SpaceBefore     =   0
      SpaceAfter      =   0
      LineSpacing     =   100
      Columns         =   1
      ColumnSpacing   =   180
      ShowGuides      =   2
      LargeChangeHorz =   300
      LargeChangeVert =   300
      SmallChangeHorz =   30
      SmallChangeVert =   30
      Track           =   0   'False
      ProportionalBars=   -1  'True
      Zoom            =   21.6384683882458
      ZoomMode        =   3
      ZoomMax         =   400
      ZoomMin         =   10
      ZoomStep        =   25
      EmptyColor      =   -2147483636
      TextColor       =   0
      HdrColor        =   0
      BrushColor      =   0
      BrushStyle      =   0
      PenColor        =   0
      PenStyle        =   0
      PenWidth        =   0
      PageBorder      =   0
      Header          =   ""
      Footer          =   ""
      TableSep        =   "|;"
      TableBorder     =   7
      TablePen        =   0
      TablePenLR      =   0
      TablePenTB      =   0
      NavBar          =   3
      NavBarColor     =   -2147483633
      ExportFormat    =   0
      URL             =   ""
      Navigation      =   3
      NavBarMenuText  =   "Íß°¼Ş‘S‘Ì(&P)|Íß°¼Ş•(&W)|2Íß°¼Ş(&T)|»ÑÈ²Ù(&N)"
   End
   Begin VB.ComboBox Cbx}–¼ 
      Height          =   300
      Left            =   135
      TabIndex        =   8
      Text            =   "}–¼"
      Top             =   5760
      Width           =   1785
   End
   Begin VB.CommandButton Command•ÏŠ·2 
      Caption         =   "•ÏŠ·2"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   8880
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.ComboBox cbx•`‰æ—p† 
      Height          =   300
      Left            =   1080
      TabIndex        =   6
      Text            =   "—p†"
      Top             =   7320
      Width           =   735
   End
   Begin VB.ComboBox cbx}–Ê—p† 
      Height          =   300
      Left            =   240
      TabIndex        =   5
      Text            =   "—p†"
      Top             =   7320
      Width           =   735
   End
   Begin VB.CommandButton Command•ÏŠ· 
      Caption         =   "•ÏŠ· D00"
      Height          =   315
      Left            =   120
      TabIndex        =   2
      ToolTipText     =   "Dxf ‚ğ  D00 ‚É•ÏŠ·‚µ‚Ü‚·"
      Top             =   8400
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton Command•`‰æ 
      Caption         =   "•` ‰æ ŠJ n"
      Height          =   360
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "dxf Ì§²Ù‚ğ•`‰æ‚µ‚Ü‚·"
      Top             =   6360
      Width           =   1515
   End
   Begin VB.FileListBox File}–Êdxf 
      BeginProperty Font 
         Name            =   "‚l‚r ‚oƒSƒVƒbƒN"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5310
      Left            =   0
      TabIndex        =   0
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label Label•`‰æ—p† 
      Caption         =   "•`‰æ—p†"
      Height          =   255
      Left            =   1080
      TabIndex        =   4
      Top             =   7080
      Width           =   735
   End
   Begin VB.Label Label}–Ê 
      Caption         =   "}–Ê»²½Ş"
      Height          =   255
      Left            =   300
      TabIndex        =   3
      Top             =   7080
      Width           =   735
   End
End
Attribute VB_Name = "Form_}–Ê‰æ–Ê"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'„¬„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„­
'„«                                                                                                                    „«
'„«                                                                                                                    „«
'„«                                                                                                                    „«
'„«                          Form_}–Ê‰æ–Ê                                                                             „«
'„«                                                                                                                    „«
'„«                                                                                                                    „«
'„«      2003.11.14                                                                                                    „«
'„«                                                                                                                    „«
'„¯„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„ª„®
'
'
     
     
     Dim }–¼$
     Dim Pic_X, Pic_Y, •¶š”{—¦, SkÚ, }”{—¦ As Single
     Dim ‰¼Œ´“_X, ‰¼Œ´“_Y As Single
     Dim •`‰æ•, •`‰æ¬  As Single
     Dim }–Ê‰æ–ÊH As Single
     Dim }–Êpage As Integer, €–ÚIndex(1000)
     Dim XX0 As Single, YY0 As Single
     Dim }–ÊZoomSize As Single



    Dim oioi As Integer
    
Private Sub Form_Load()
     '}–Ê‰æ–Ê.ScaleMode = 6: 'mm
     'Me.BorderStyle = 1
     'Me.ControlBox = False
     
     Me.Top = 0:   Me.Left = 0
    
         Select Case ¢PROGRAM$
         Case "o—Í": W1 = 200 * twip: h1 = 200 * twip
         Case Else: W1 = MDIForm_‹´‹r.Width: h1 = MDIForm_‹´‹r.Height - MDIForm_‹´‹r.Picture1.Height
         End Select
     
     Me.Width = 0.7 * W1:  Me.Height = h1 - 5 * twip
     
     
     File}–Êdxf.Path = Dxf_dsk
     }–Ê—p†SET
     
     If }_‹´‹r_Auto•\¦s = "Y" Then Call •`‰æ_‹´‹r}
     
     End Sub


Sub •`‰æ_‹´‹r}()
    Dim ii As Integer, }–¼s As String, }–Ê—p†s As String, •`‰æ—p†s As String
    
'    }–Ê—p†s = "A1": •`‰æ—p†s = "A3"
    }–Ê—p†s = cbx}–Ê—p†.TEXT '"A1"
    •`‰æ—p†s = cbx•`‰æ—p†.TEXT '"A3"
    For ii = 1 To 6  ''''''''''' o—Í‡@nagase     gstrTitle ‚ğ’Ç‰Á  05/04/11
        }–¼s = ""
'        If }_‹´‹r_•\¦–¼Ìs(ii) <> "" Then }–¼s = }_‹´‹r_•\¦–¼Ìs(ii) + ".Dxf"
        If }_‹´‹r_–¼Ìs(ii) <> "" Then }–¼s = }_‹´‹r_–¼Ìs(ii) + ".Dxf" ''' 05/04/12
        If }–¼s <> "" Then
            Call DXF}–Ê•`‰æ(}–¼s, }–Ê—p†s, •`‰æ—p†s)
            €–ÚIndex(ii) = ii
        End If
    Next ii
'        }–¼s = ""
'        If }_‹´‹r_•\¦–¼Ìs(1) <> "" Then }–¼s = }_‹´‹r_•\¦–¼Ìs(1) + ".Dxf"
'        If }–¼s <> "" Then Call DXF}–Ê•`‰æ(}–¼s, }–Ê—p†s, •`‰æ—p†s)
   }_‹´‹r_Auto•\¦s = ""
   End Sub




Private Sub Form_Unload(Cancel As Integer)
         
    VSPrt}–Ê.EndDoc

    }–Êpage = 0
    '}–Ê‰æ–Ê.Visible = False
    'Me.Hide
    '}–Ê‰æ–Ê.Show
    End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    }–Êpage = 0
    Me.Hide
    MDIForm_‹´‹r.Cmd_}–Êì¬.Enabled = True

    End Sub
Private Sub }–Ê—p†SET()
     Me.cbx}–Ê—p†.TEXT = "A1"
     Me.cbx}–Ê—p†.AddItem "A4"
     Me.cbx}–Ê—p†.AddItem "A3"
     Me.cbx}–Ê—p†.AddItem "A2"
     Me.cbx}–Ê—p†.AddItem "A1"

     
     Me.cbx•`‰æ—p†.TEXT = "A3"
     Me.cbx•`‰æ—p†.AddItem "A4"
     Me.cbx•`‰æ—p†.AddItem "A3"
     
     

     End Sub

Private Sub CommandEND_Click()
    
    End Sub

Private Sub Command•`‰æ_Click()
     
     }–Ê—p†$ = cbx}–Ê—p†.TEXT
     
     •`‰æ—p†$ = cbx•`‰æ—p†.TEXT
     
    ' Stop
   ' }–Ê—p†$ = "A1"
      If }–¼$ <> "" Then
           'DXF}–Ê•`‰æ }–Ê‰æ–Ê.VSPrt}–Ê, }–¼$, }–Ê—p†$, •`‰æ—p†$
           Call DXF}–Ê•`‰æ(}–¼$, }–Ê—p†$, •`‰æ—p†$)
           End If
     End Sub

Private Sub Command•ÏŠ·_Click()
     '   dxf Files‚ğ    ___.D00 (Uxf  “àRCode)‚É•ÏŠ·‚·‚é
     
     FN$ = }–¼$
     If FN$ = "" Then er ("Ì§²Ù–¼‚ªw’è‚³‚ê‚Ä‚¢‚È‚¢"): If ¢ŒëCK > 99 Then Stop: Exit Sub Else Exit Sub
     
     Call •ÏŠ·DXF(FN$)
     er ("•ÏŠ·I—¹  ")
     End Sub

Private Sub Command•ÏŠ·2_Click()
     '   dxf Files‚ğ    ___.DX2 (DXF ‚ğ“Ç‚İ‚â‚·‚­‚·‚é)‚É•ÏŠ·‚·‚é
     
     FN$ = }–¼$
     If FN$ = "" Then er ("Ì§²Ù–¼‚ªw’è‚³‚ê‚Ä‚¢‚È‚¢"):  If ¢ŒëCK > 99 Then Stop: Exit Sub Else Exit Sub
     Call “ÇDXF(FN$)
     er ("•ÏŠ·I—¹  ")
     End Sub

Private Sub File}–Êdxf_Click()
     }–¼$ = File}–Êdxf.filename
     End Sub

Private Sub Cbx}–¼_Click()
    
    
         AAA = Cbx}–¼.ListIndex
        
        '€–ÚIndex(€–Ú”) = }–Êpage '''''05/04/12
         
        PPP = €–ÚIndex(AAA + 1)
         VSPrt}–Ê.PreviewPage = PPP: 'Val(AAA$) + 1
         VSPrt}–Ê.SetFocus
    
    
    End Sub


Private Sub cmdPrint_Click()
    ¢Forcus$ = ""
    Call DoPrint
    End Sub

Private Sub DoPrint()
    Dim iFromPage As Integer, iToPage As Integer, iCopies As Integer
    'Õ°»Ş° º°ÄŞ
    
    With CommonDialog
        .Flags = cdlPDNoSelection: ' ‘I‘ğ‚µ‚½•”•ª‚ğ–³Œø‚É‚·‚é
        .Copies = 1
        
        .min = 1: ' ˆóüƒy[ƒWÅ¬
        .max = VSPrt}–Ê.PageCount - 1: ' ˆóüƒy[ƒWÅ‘å
        
        .FromPage = 1
        .ToPage = VSPrt}–Ê.PageCount - 1
        
        .CancelError = True: '

        On Error Resume Next
        .ShowPrinter: 'Dialog BOX •\¦

        If Err > 0 Then Exit Sub
        On Error GoTo 0

        iFromPage = .FromPage:        iToPage = .ToPage:        iCopies = .Copies
    End With

    VSPrt}–Ê.PrintDoc False, iFromPage, iToPage
    
    VSPrt}–Ê.SetFocus
    
    End Sub


Private Sub Command2_Click()
    ¢Forcus$ = ""
 
    VSPrt}–Ê.ZoomMode = 1
   
   
   End Sub



Private Sub Form_Resize()
    Call ResizeForm
    End Sub

Private Sub ResizeForm()
    Dim H As Single, T As Single, w As Single

     Select Case ¢PROGRAM$
     Case "o—Í": W0 = 200 * twip
     Case Else: W0 = MDIForm_‹´‹r.Width
     End Select
    
    H = ScaleHeight:  T = 0:   w = ScaleWidth
         W1 = File}–Êdxf.Width
         ¶ = W1
    T = File}–Êdxf.Top:   H = H - 200: w = w - W1 - 20
    
    w3 = W0 - Form_}–Ê‰æ–Ê.Left - Form_}–Ê‰æ–Ê.Width - 3 * twip
     H = H - T - 20

    If w < 0 Then w = 0
    If W2 < 0 Then W2 = 10
    If H < 0 Then H = 0

    VSPrt}–Ê.Move ¶, T, w, H

     'Form\‘¢.Left = ¶ + w + 3 * twip
     
     'Form\‘¢.Width = W3

    End Sub



Private Sub VSPrt}–Ê_Click()
    ¢Forcus$ = "VSPrt}–Ê"
    End Sub
Private Sub vsDraw1_Click()
    ¢Forcus$ = "vsDraw1"
    End Sub


Private Sub VSPrt}–Ê_GotFocus()
    ¢Forcus$ = "VSPrt}–Ê"
    End Sub
Private Sub vsDraw1_GotFocus()
    ¢Forcus$ = "vsDraw1"
    End Sub
Private Sub txtPage_GotFocus()
    ¢Forcus$ = ""
    End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

          Select Case Shift
          Case 0:
                     '¢•¶šCode$ = "*"
                     Select Case KeyCode
                   '  Case 27:    ¢Forcus$ = "":    Unload Me: ' ESC
                     
                     Case 37:   VSPrt}–Ê.ScrollLeft = VSPrt}–Ê.ScrollLeft - 600:    '¶·°
                     Case 38:   VSPrt}–Ê.ScrollTop = VSPrt}–Ê.ScrollTop - 600:      'ã·°
                     Case 39:   VSPrt}–Ê.ScrollLeft = VSPrt}–Ê.ScrollLeft + 600:    '‰E·°
                     Case 40:   VSPrt}–Ê.ScrollTop = VSPrt}–Ê.ScrollTop + 600:      '‰º·°
                     Case Else
                     End Select
                     VSPrt}–Ê.SetFocus
              
       
          Case 1: ' Shift
          
          Case 2: ' Ctrl
                 ' RET = MsgBox("Ctrl + " + SS$, 0, "KeyDown")
          
          Case 3: ' Shift+Ctrl
                  'RET = MsgBox("Shift + Ctrl + " + SS$, 0, "KeyDown")
          
          Case 4: ' Alt
         
         Case Else
         End Select
     '   RET = MsgBox("Form_KeyDown", 0, "Form ")
          
    
    End Sub


Private Sub VSPrt}–Ê_KeyDown(KeyCode As Integer, Shift As Integer)
    
          ZZ = VSPrt}–Ê.Zoom
          SS$ = str$(KeyCode)
    
          Select Case Shift
          Case 0:
                  
                  
                  Select Case KeyCode
                  Case 49, 97: ' 1
                                     VSPrt}–Ê.PreviewPage = 1
                                     'cbxINDEX.ListIndex = txtPage - 1
                  Case 69: ' E
                                     VSPrt}–Ê.PreviewPage = VSPrt}–Ê.PageCount - 1
                                     'cbxINDEX.ListIndex = txtPage - 1
                               
                  Case 109, 189: ' -
                                     PP = VSPrt}–Ê.PreviewPage:
                                     If PP = 1 Then PP = VSPrt}–Ê.PageCount
                                     VSPrt}–Ê.PreviewPage = PP - 1:
                                     'cbxINDEX.ListIndex = txtPage - 1
                  Case 13, 107: ' Enter +
                                     PP = VSPrt}–Ê.PreviewPage:
                                     If PP = VSPrt}–Ê.PageCount - 1 Then PP = 0
                                     VSPrt}–Ê.PreviewPage = PP + 1:
                                     'cbxINDEX.ListIndex = txtPage - 1

            
                  Case 33: ZZ = ZZ + 10: 'Page up
                  Case 34: ZZ = ZZ - 10: 'Page down
            
                  Case 35: ZZ = 400: 'END
                  Case 36: ZZ = }–ÊZoomSize: 'Home
            
                  Case 80: ' P
                                      PP = VSPrt}–Ê.PreviewPage
                                      VSPrt}–Ê.ColorMode = 2: ' ¶×°
                                      'VSPrt}–Ê.ColorMode = 1: ' ÓÉ¸Û
                                      
                                      VSPrt}–Ê.EndDoc: ' *** •K—v ***
                                      
                                      VSPrt}–Ê.PrintDoc False, PP, PP
                              MsgBox "PAGE - " + f0$(PP), 0, "PRINTER o—Í"
                  Case 37, 38, 39, 40: Stop
                  Case Else:  RET = MsgBox(SS$, 0, "KeyDown"): 'Stop
                  End Select
                  
          
          Case 1: ' Shift
                  Select Case KeyCode
                  Case 33: ZZ = ZZ + 50: 'Page up
                  Case 34: ZZ = ZZ - 50: 'Page down
                  
                  Case 13: VSPrt}–Ê.PreviewPage = VSPrt}–Ê.PreviewPage - 1
                  
                  Case 37:   VSPrt}–Ê.ScrollLeft = VSPrt}–Ê.ScrollLeft - 600:  '¶·°
                  Case 38:   VSPrt}–Ê.ScrollTop = VSPrt}–Ê.ScrollTop - 600:  'ã·°
                  Case 39:   VSPrt}–Ê.ScrollLeft = VSPrt}–Ê.ScrollLeft + 600:  '‰E·°
                  Case 40:   VSPrt}–Ê.ScrollTop = VSPrt}–Ê.ScrollTop + 600: '‰º·°
                  
                  
                  End Select
                 'RET = MsgBox("Shift + " + SS$, 0, "KeyDown")
          
          Case 2: ' Ctrl
              '    RET = MsgBox("Ctrl + " + SS$, 0, "KeyDown")
          
          Case 3: ' Shift+Ctrl
                  RET = MsgBox("Shift + Ctrl + " + SS$, 0, "KeyDown")
          
          Case 4: ' Alt
                  Select Case KeyCode
                  Case 33:  'Page up
                       Form_}–Ê‰æ–Ê.Width = Form_}–Ê‰æ–Ê.Width + 600
                       Form_}–Ê‰æ–Ê.Height = Form_}–Ê‰æ–Ê.Height + 600
                 
                  Case 34: 'Page down
                       Form_}–Ê‰æ–Ê.Width = Form_}–Ê‰æ–Ê.Width - 600
                       Form_}–Ê‰æ–Ê.Height = Form_}–Ê‰æ–Ê.Height - 600
            
                  Case 110: ZZ = 71: ' .
                  End Select
              '    RET = MsgBox("Alt + " + SS$, 0, "KeyDown")
          
          
          
          End Select

          If ZZ < 10 Then ZZ = 10
          VSPrt}–Ê.Zoom = ZZ
    
          VSPrt}–Ê.SetFocus

End Sub





'===============================================================================================================================================
Private Sub DXF}–Ê•`‰æ(}–¼$, }–Ê—p†$, •`‰æ—p†$)
     
     
'===============================================================================================================================================
     
     Dim Obj As Object
     
     ' VSPrinter g—p
     Set Obj = Form_}–Ê‰æ–Ê.VSPrt}–Ê
     
     
     }–Êpage = }–Êpage + 1
      
     W1 = Form_}–Ê‰æ–Ê.Width - Form_}–Ê‰æ–Ê.File}–Êdxf.Width
           
           F = QBColor(0)
           
           
           Select Case }–Ê—p†$
                Case "A0": }–Ê—p†• = 1188: ' 1188*840
                Case "A1": }–Ê—p†• = 841: '841*594
                Case "A2": }–Ê—p†• = 594: '594*420
                Case "A3": }–Ê—p†• = 420: '420*297
                Case "A4": }–Ê—p†• = 297: '297*210
                Case Else: }–Ê—p†• = 594
                End Select
           
         '  ER ("•`‰æ—p†$"):              If ¢ŒëCK > 99 Then Stop
         '****************************************************************
           Select Case •`‰æ—p†$
                Case "A4": Obj.PaperSize = pprA4: —p†• = 297
                Case "A3": Obj.PaperSize = pprA3: —p†• = 420
                Case Else: Obj.PaperSize = pprA3: —p†• = 420
                End Select
         '****************************************************************
           
           •`‰ækÚŒW” = }–Ê—p†• / —p†•
           
           Select Case OLD•`‰æ—p†$
           Case "": ' }–Êpage = }–Êpage + 1: Cbx}–¼.AddItem }–¼$: €–ÚIndex(}–Êpage) = }–Êpage
           Case •`‰æ—p†$:
           Case Else: Obj.NewPage: }–Êpage = }–Êpage + 1: €–ÚIndex(}–Êpage) = }–Êpage '  Cbx}–¼.AddItem }–¼$: €–ÚIndex(}–Êpage) = }–Êpage
           End Select
           
           
           OLD•`‰æ—p†$ = •`‰æ—p†$
           'Obj.MarginBottom = -200 * Twip
           Obj.Orientation = 1: ' —p†‰¡
           
           If }–Êpage <= 1 Then Obj.StartDoc
           
           
           }–ÊZoomSize = 0.98 * 100 * W1 / (—p†• * twip)
           Obj.Zoom = }–ÊZoomSize
           Obj.ZoomMax = 800
           Obj.PenColor = F
           Obj.TextColor = F
           Obj.TextAlign = 0
   
           'Obj.ScaleOutput = 50
           Obj.BrushStyle = 1:  ' 0 “h‚è‚Â‚Ô‚µ 1 “§–¾ 2 ‰¡ü 3 cü 4 Îü/  5 Îü‹t/  6 ¸Û½(‚’¼)  7 ¸Û½(Î‚ß)

           Obj.ColorMode = 1: ' ÓÉ¸Û
           Obj.MarginTop = 0: Obj.MarginBottom = 0:  Obj.MarginLeft = 0:   Obj.MarginRight = 0
     
     •¶š”{—¦ = 0.06
     
     ‰æ–ÊH = Obj.PageHeight - 3 * twip
     }–Ê‰æ–ÊH = Obj.PageHeight - 5 * twip
     
    ' ReDim Ds$(50), Di(50)
     
        Form_}–Ê‰æ–Ê.Cbx}–¼.AddItem }–¼$
        €–ÚIndex(}–Êpage) = }–Êpage
     
     iFN$ = }–¼$: ' "•š}1F.DXF": '  OFN$ = fn$
     ' •`‰ækÚ = 1.514 * }–ÊkÚ / twip
     
     •`‰ækÚ = 3: ' ‰¼‚É•K—v
     
     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
      
      
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_‘Š·(iFN$, TEMP_F$)
      
      
      Open TEMP_F$ For Input As #2
      
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         Da$ = Trim$(Da$)
         Select Case Da$
         Case "0": ' Secttion
                  Input #2, €–Ú$
                  Select Case €–Ú0$
                  Case "": DD2$ = ""
                  Case "LINE": 'DD2$ = "l:" & X1$ & "," & Y1$ & "," & X2$ & "," & Y2$
                  
                            'Call PLine(Obj, SX1, SY1, SX2, SY2)
                               Obj.DrawLine SX1, SY1, SX2, SY2
                   Case "TEXT": 'DD2$ = "š:" & X1$ & "," & Y1$ & "," & Šp“x50$ & "," & "L" & "," & •¶š$
                               
                               Font_s = •¶š”{—¦ * D•¶šH: If Font_s <= 1 Then Font_s = 1
                               Obj.FontSize = Font_s
                               Select Case •¶šˆÊ’u$
                                    Case "’†‰›": MojW = Obj.TextWidth(•¶š$) / 2: TEXT_X = SX2: TEXT_Y = SY2
                                    Case "‰E’[": MojW = Obj.TextWidth(•¶š$):     TEXT_X = SX2: TEXT_Y = SY2
                                    Case Else: MojW = 0:                         TEXT_X = SX1: TEXT_Y = SY1
                                    End Select
                               
                               MojH = Obj.TextHeight(•¶š$)
                                •¶šˆÊ’u$ = ""
                               
                               Select Case SŠp“x50
                                    Case 0:       SN2 = 0: CS2 = 1
                                    Case 90:      SN2 = 1: CS2 = 0
                                    Case 180:     SN2 = 0: CS2 = -1
                                    Case 270:     SN2 = -0: CS2 = 0
                                    Case 360:     SN2 = 0: CS2 = 1
                                    Case Else:    SN2 = Sin(rad(SŠp“x50)): CS2 = Cos(rad(SŠp“x50))
                                    End Select
                               
       
                                  SNH = Sin(rad(SŠp“x50 + 90)): CSH = Cos(rad(SŠp“x50 + 90))
                                  SNW = Sin(rad(SŠp“x50)): CSW = Cos(rad(SŠp“x50))
                                  DX = MojH * CSH - MojW * CSW:
                                  DY = MojH * SNH - MojW * SNW
                               
                               
                               Obj.CurrentX = TEXT_X + DX
                               Obj.CurrentY = TEXT_Y - DY
                               
                               Obj.TextAngle = 10 * SŠp“x50
                               If Obj.CurrentY > ‰æ–ÊH Then Obj.CurrentY = ‰æ–ÊH
                               Obj.TEXT = •¶š$
                  
                  Case "CIRCLE": ' DD2$ = "cir:" & X1$ & "," & Y1$ & "," & f3$(”¼Œa)
                               Obj.DrawCircle SX1, SY1, ”¼Œa
                  
                  Case "ARC": 'DD2$ = "arc1:" & X1$ & "," & Y1$ & "," & f3$(”¼Œa) & "," & Šp“x50$ & "," & Šp“x51$
                               Obj.DrawCircle SX1, SY1, ”¼Œa, rad(SŠp“x50), rad(SŠp“x51)
                  
                  
                  Case "POINT": ' DD2$ = "“_:" & X1$ & "," & Y1$
                               Obj.DrawCircle SX1, SY1, 0.15 * twip
                               Obj.DrawCircle SX1, SY1, 0.3 * twip
                  Case Else: DD2$ = ""
                  
                  End Select
                  
                    €–Ú0$ = €–Ú$
                   'Call •ÏŠ·o—Í(DD2$): €–Ú0$ = €–Ú$
         
         Case "1":  Line Input #2, •¶š$: ' •¶š$ = ‹tƒuƒ‰ƒ“ƒN(•¶š$): •¶š$ = ƒVƒtƒg7(•¶š$)

         
         
         Case "8":  Input #2, ƒŒƒCƒ„$
         Case "6":  Input #2, üí$
                    If üí$ <> üí0$ Then
                        Select Case üí$
                        Case "CONTINUOUS": DD2$ = "con:":  Obj.PenStyle = 0
                        Case "DOT": DD2$ = "dot:":         Obj.PenStyle = 2
                        Case "CENTER1": DD2$ = "cen:":     Obj.PenStyle = 3
                        Case Else: DD2$ = "üí:" & üí$: Obj.PenStyle = 0
                        End Select
                    'Call •ÏŠ·o—Í(DD2$): üí0$ = üí$
                    End If
         
         Case "9": Input #2, Da$
                   '********************************************
                   '    Print #19, "  9": Print #19, "$EXTMAX"
                   '   Print #19, " 10": Print #19, 59400 * ZU_Scale / 100
                   '   Print #19, " 20": Print #19, 42000 * ZU_Scale / 100
                   If UCase$(Da$) = "$EXTMAX" Then
                       Input #2, D1$, D2$
                       '}–ÊkÚ = Val(D2$) / 594
                       }–ÊkÚ = Val(D2$) / 841
                       '%%%%%%%%%%%
                       •`‰ækÚ = •`‰ækÚŒW” * }–ÊkÚ / twip
                       If •`‰ækÚ = 0 Then •`‰ækÚ = 100
                       End If
         
         
         Case "62": Input #2, üF$
                    ' 1:       2:‰©   3:—Î   4:‹ó   5:Â   6:‡   7:”’
                    If üF$ <> üF0$ Then
                        Select Case üF$
                        Case "2": DD2$ = "F:‰©": Obj.PenColor = QBColor(6)
                        Case "3": DD2$ = "F:—Î": Obj.PenColor = QBColor(2)
                        Case "4": DD2$ = "F:‹ó": Obj.PenColor = QBColor(9)
                        Case "5": DD2$ = "F:Â": Obj.PenColor = QBColor(1)
                        Case "6": DD2$ = "F:‡": Obj.PenColor = QBColor(5)
                        Case "7": DD2$ = "F:”’": Obj.PenColor = QBColor(0)
                        Case Else: DD2$ = "F:”’": Obj.PenColor = QBColor(0)
                        End Select
                    'Call •ÏŠ·o—Í(DD2$): üF0$ = üF$
                    End If
         Case "10": Input #2, X1$: SX1 = -‰¼Œ´“_X + Val(X1$) / •`‰ækÚ
         Case "11": Input #2, X2$: SX2 = -‰¼Œ´“_X + Val(X2$) / •`‰ækÚ
         Case "20": Input #2, Y1$: SY1 = }–Ê‰æ–ÊH + ‰¼Œ´“_Y - Val(Y1$) / •`‰ækÚ
         Case "21": Input #2, Y2$: SY2 = }–Ê‰æ–ÊH + ‰¼Œ´“_Y - Val(Y2$) / •`‰ækÚ
         
         Case "40": Input #2, D40$: S40 = Val(D40$) / •`‰ækÚ
                   Select Case €–Ú$
                   Case "ARC", "CIRCLE": ”¼Œa = S40
                   Case "TEXT": •¶šH$ = D40$: D•¶šH = S40:
                        'If •¶šH$ <> •¶šH0$ Then DD2$ = "šH:" & F2$(D•¶šH): Call •ÏŠ·o—Í(DD2$): •¶šH0$ = •¶šH$
                   Case "LTYPE":
                   Case "STYLE":
                   Case "SECTION":
                   Case Else: er ("[40‚Å €–Ú=" & €–Ú$ & "ÃŞ°À=" & D40$):  If ¢ŒëCK > 99 Then Stop
                   End Select
         Case "41": Input #2, •¶š•”ä—¦$
         
         Case "50": Input #2, Šp“x50$: SŠp“x50 = Val(Šp“x50$)
         Case "51": Input #2, Šp“x51$: SŠp“x51 = Val(Šp“x51$)
         Case "72": Input #2, •¶šˆÊ’u$
                   Select Case •¶šˆÊ’u$
                   Case "1": •¶šˆÊ’u$ = "’†‰›"
                   Case "2": •¶šˆÊ’u$ = "‰E’["
                   Case Else: ' ER ("•¶šˆÊ’u [" & •¶šˆÊ’u & "]"): ' Stop
                   End Select
         Case Else: If EOF(2) Then Exit Do Else Input #2, DD$
         End Select
         Loop
     
     Close #2
     
     Obj.NewPage
     
         Obj.PreviewPage = }–Êpage
         'txtPage.TEXT = vsPrt1.PreviewPage
         
         
 '###        Obj.SetFocus
     
     
     
     '  Obj.EndDoc
     
     
     End Sub



'***************************************
'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„ @@@@“ÇDXF(FN$)
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
Sub “ÇDXF(FN$)
     
     VVV$ = "V1.01  1995_06_07"
     '  DXF ‚ğ  “Ç‚İ‚â‚·‚¢ DX2 ‚É•ÏŠ·‚µ‚Ü‚·
     'Call dsk
     'Pend = 260
     iFN$ = FN$: Ofn$ = FN$
     

     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
     If InStr(Ofn$, ":") = 0 Then Ofn$ = Data_dsk + Ofn$
     n = InStr(Ofn$, "."): If n > 0 Then Ofn$ = Mid$(Ofn$, 1, n - 1)
         Ofn$ = Ofn$ + ".DX2"
     
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_‘Š·(iFN$, TEMP_F$)
     
   '  GoSub START
   
  '   Exit Sub


   'START: '.......................
      
      Open TEMP_F$ For Input As #2
      Open Ofn$ For Output As #3
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         If Da$ = "  0" Then
            If Data1$ <> "" Then Print #3, f$(lnumner, 7); " "; Data1$: Data1$ = "": LN2 = LN2 + 1
            lnumner = Ln1
            End If
         Data1$ = Data1$ + "|" + Da$
         Loop
         
         If Data1$ <> "" Then Print #3, Data1$: Data1$ = ""
      Close #3
      Close #2
     
    

     End Sub


'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„ @@@@Dxf_File_‘Š·(DXF_File–¼$, TEMP_F$)
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
Sub Dxf_File_‘Š·(DXF_File–¼$, TEMP_F$)
      ' DXF File ‚É@Return ‚ğ“ü‚ê‚é
      On Error GoTo ErrorHandle ''''''''''''''' 05/04/11
      Open TEMP_F$ For Output As #3
      Open DXF_File–¼$ For Input As #2
          Do
            If EOF(2) Then Exit Do
            Line Input #2, Da$: Ln1 = Ln1 + 1
                Do
                    ni = InStr(Da$, Chr(10))
                    If ni = 0 Then Print #3, Da$: Exit Do
                    Print #3, Mid(Da$, 1, ni - 1)
                    Da$ = Mid(Da$, ni + 1)
                Loop
          Loop
          Close #2
          Close #3
          Exit Sub
ErrorHandle:
          Close #2
          Close #3
      
    End Sub

'„¡„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„¢
'„ @@@@•ÏŠ·DXF(FN$)
'„¤„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„Ÿ„£
Sub •ÏŠ·DXF(FN$)
     '   dxf Files‚ğ    ___.D00 (“àRCode)‚É•ÏŠ·‚·‚é
     
     'Call dsk
     'Pend = 260
     
     iFN$ = FN$: Ofn$ = FN$:
     
     
     ‰¼Œ´“_X = 0: ‰¼Œ´“_Y = 0: kÚ = 100
     Da$ = InputBox("  (X0,Y0, ) kÚ‚ğ“ü—Í‚µ‚Ä‰º‚³‚¢  ", "kÚ", 100, 500, 500)
     Call Ddata(",", Da$, Ds$(), Di(), ni)
     Select Case ni
     Case 1: kÚ = Di(1)
     Case 3: ‰¼Œ´“_X = Di(1): ‰¼Œ´“_Y = Di(2): kÚ = Di(3)
     Case Else: er ("ÃŞ°À‚ÌŒÂ”‚ªˆá‚¤ "): If ¢ŒëCK > 99 Then Stop
     End Select
     
     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
     
     ni = InStr(Ofn$, ":"): If ni = 0 Then Ofn$ = Data_dsk + Ofn$
     
     n = InStr(Ofn$, "."): If n > 0 Then Ofn$ = Mid$(Ofn$, 1, n - 1)
         Ofn$ = Ofn$ + ".D00"

      
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_‘Š·(iFN$, TEMP_F$)
      
      
      
    '  Open iFN$ For Input As #2
      Open TEMP_F$ For Input As #2
      Open Ofn$ For Output As #3
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         Da$ = Trim$(Da$)
        ' ER (DA$)
         
        ' Stop
         
         Select Case Da$
         Case "0": ' Secttion
                    Input #2, €–Ú$
                  Select Case €–Ú0$
                  Case "": DD2$ = ""
                  Case "LINE": DD2$ = "•ÏLi:" + FD4(DX1, DY1, DX2, DY2): '
                  Case "TEXT": DD2$ = "•Ïš:" + FD3(DX1, DY1, SŠp“x50) + ",L," + •¶š$
                  Case "CIRCLE": DD2$ = "•ÏCir:" + FD3(DX1, DY1, ”¼Œa)
                  Case "ARC": DD2$ = "•ÏArc1:" + FD5(DX1, DY1, ”¼Œa, SŠp“x50, SŠp“x51)
                  Case "POINT": DD2$ = "•Ï“_:" + FD2(DX1, DY1):
                  Case Else: DD2$ = ""
                  'ER (DA$): 'Stop
                  End Select
                  
                   Call •ÏŠ·o—Í(DD2$): €–Ú0$ = €–Ú$
         
         Case "1":  Line Input #2, •¶š$: •¶š$ = ‹tƒuƒ‰ƒ“ƒN(•¶š$): •¶š$ = ƒVƒtƒg7(•¶š$)

         Case "8":  Input #2, ƒŒƒCƒ„$
         Case "6":  Input #2, üí$
                    If üí$ <> üí0$ Then
                        Select Case üí$
                        Case "CONTINUOUS": DD2$ = "con:"
                        Case "DOT": DD2$ = "dot:"
                        Case "CENTER1": DD2$ = "cen:"
                        Case Else: DD2$ = "üí:" & üí$
                        End Select
                    Call •ÏŠ·o—Í(DD2$): üí0$ = üí$
                    End If
         
         Case "9": Input #2, Da$
                   '********************************************
                   '    Print #19, "  9": Print #19, "$EXTMAX"
                   '   Print #19, " 10": Print #19, 59400 * ZU_Scale / 100
                   '   Print #19, " 20": Print #19, 42000 * ZU_Scale / 100
                   If UCase$(Da$) = "$EXTMAX" Then
                       Input #2, D1$, D2$
                       }–ÊkÚ = 100 * Val(D2$) / 59400
                       •`‰ækÚ = •`‰ækÚŒW” * }–ÊkÚ / twip
                       End If
         
         Case "62": Input #2, üF$
                    ' 1:       2:‰©   3:—Î   4:‹ó   5:Â   6:‡   7:”’
                    If üF$ <> üF0$ Then
                        Select Case üF$
                        Case "2": DD2$ = "F:‰©"
                        Case "3": DD2$ = "F:—Î"
                        Case "4": DD2$ = "F:‹ó"
                        Case "5": DD2$ = "F:Â"
                        Case "6": DD2$ = "F:‡"
                        Case "7": DD2$ = "F:”’"
                        Case Else: DD2$ = "F:”’"
                        End Select
                    Call •ÏŠ·o—Í(DD2$): üF0$ = üF$
                    End If
         Case "10": Input #2, X1$: DX1 = (Val(X1$) - ‰¼Œ´“_X) / kÚ:
         Case "11": Input #2, X2$: DX2 = (Val(X2$) - ‰¼Œ´“_X) / kÚ:
         Case "20": Input #2, Y1$: DY1 = (Val(Y1$) - ‰¼Œ´“_Y) / kÚ:
         Case "21": Input #2, Y2$: DY2 = (Val(Y2$) - ‰¼Œ´“_Y) / kÚ:
         
         Case "40": Input #2, D40$: S40 = Val(D40$) / kÚ
                   Select Case €–Ú$
                   Case "ARC", "CIRCLE": ”¼Œa = S40
                   Case "TEXT": •¶šH$ = D40$: D•¶šH = S40: If •¶šH$ <> •¶šH0$ Then DD2$ = "šH:" & f2$(D•¶šH): Call •ÏŠ·o—Í(DD2$): •¶šH0$ = •¶šH$
                   Case "LTYPE":
                   Case "STYLE":
                   Case Else: er ("[40‚Å €–Ú=" & €–Ú$ & "ÃŞ°À=" & D40$): If ¢ŒëCK > 99 Then Stop
                   End Select
         Case "41": Input #2, •¶š•”ä—¦$
         
         Case "50": Input #2, Šp“x50$: SŠp“x50 = Val(Šp“x50$)
         Case "51": Input #2, Šp“x51$: SŠp“x51 = Val(Šp“x51$)
         Case Else: 'ER (DA$)
               If EOF(2) Then Exit Do Else Input #2, DD$
         End Select
         
         Loop
     
     Call •ÏŠ·o—Í("/END"): 'Stop
     Close #3
     Close #2
     
     End Sub
Private Sub •ÏŠ·o—Í(Da$)
     Static Moj$
     If Da$ = "" Then Exit Sub
     If Da$ = "/END" Then
         Print #3, Mid$(Moj$, 2): Moj$ = ""
         Else
         
         
         Da2$ = "\[" & Da$ & "]":
         Moj2$ = Moj$ & Da2$
         If Len(Moj2$) + NŠ¿š(Moj2$) > 120 Then Print #3, Mid$(Moj$, 2): Moj$ = ""
         Moj$ = Moj$ & Da2$
         End If
     End Sub

