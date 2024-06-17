VERSION 5.00
Object = "{A8561640-E93C-11D3-AC3B-CE6078F7B616}#1.0#0"; "vsprint7.ocx"
Begin VB.Form Form_図面画面 
   AutoRedraw      =   -1  'True
   BorderStyle     =   5  '可変ﾂｰﾙ ｳｨﾝﾄﾞｳ
   Caption         =   "図面ﾌﾞﾗｳｻﾞ"
   ClientHeight    =   9240
   ClientLeft      =   45
   ClientTop       =   165
   ClientWidth     =   11730
   BeginProperty Font 
      Name            =   "ＭＳ ゴシック"
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
   Begin VSPrinter7LibCtl.VSPrinter VSPrt図面 
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
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty HdrFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
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
      AbortCaption    =   "印刷中..."
      AbortTextButton =   "ｷｬﾝｾﾙ"
      AbortTextDevice =   "出力先 %s ( %s )"
      AbortTextPage   =   "%d ﾍﾟｰｼﾞ目を印刷中"
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
      NavBarMenuText  =   "ﾍﾟｰｼﾞ全体(&P)|ﾍﾟｰｼﾞ幅(&W)|2ﾍﾟｰｼﾞ(&T)|ｻﾑﾈｲﾙ(&N)"
   End
   Begin VB.ComboBox Cbx図名 
      Height          =   300
      Left            =   135
      TabIndex        =   8
      Text            =   "図名"
      Top             =   5760
      Width           =   1785
   End
   Begin VB.CommandButton Command変換2 
      Caption         =   "変換2"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   8880
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.ComboBox cbx描画用紙 
      Height          =   300
      Left            =   1080
      TabIndex        =   6
      Text            =   "用紙"
      Top             =   7320
      Width           =   735
   End
   Begin VB.ComboBox cbx図面用紙 
      Height          =   300
      Left            =   240
      TabIndex        =   5
      Text            =   "用紙"
      Top             =   7320
      Width           =   735
   End
   Begin VB.CommandButton Command変換 
      Caption         =   "変換 D00"
      Height          =   315
      Left            =   120
      TabIndex        =   2
      ToolTipText     =   "Dxf を  D00 に変換します"
      Top             =   8400
      Visible         =   0   'False
      Width           =   1095
   End
   Begin VB.CommandButton Command描画 
      Caption         =   "描 画 開 始"
      Height          =   360
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "dxf ﾌｧｲﾙを描画します"
      Top             =   6360
      Width           =   1515
   End
   Begin VB.FileListBox File図面dxf 
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
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
   Begin VB.Label Label描画用紙 
      Caption         =   "描画用紙"
      Height          =   255
      Left            =   1080
      TabIndex        =   4
      Top             =   7080
      Width           =   735
   End
   Begin VB.Label Label図面 
      Caption         =   "図面ｻｲｽﾞ"
      Height          =   255
      Left            =   300
      TabIndex        =   3
      Top             =   7080
      Width           =   735
   End
End
Attribute VB_Name = "Form_図面画面"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
'┃                                                                                                                    ┃
'┃                                                                                                                    ┃
'┃                                                                                                                    ┃
'┃                          Form_図面画面                                                                             ┃
'┃                                                                                                                    ┃
'┃                                                                                                                    ┃
'┃      2003.11.14                                                                                                    ┃
'┃                                                                                                                    ┃
'┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
'
'
     
     
     Dim 図名$
     Dim Pic_X, Pic_Y, 文字倍率, S縮尺, 図倍率 As Single
     Dim 仮原点X, 仮原点Y As Single
     Dim 描画幅, 描画成  As Single
     Dim 図面画面H As Single
     Dim 図面page As Integer, 項目Index(1000)
     Dim XX0 As Single, YY0 As Single
     Dim 図面ZoomSize As Single



    Dim oioi As Integer
    
Private Sub Form_Load()
     '図面画面.ScaleMode = 6: 'mm
     'Me.BorderStyle = 1
     'Me.ControlBox = False
     
     Me.Top = 0:   Me.Left = 0
    
         Select Case 世PROGRAM$
         Case "出力": W1 = 200 * twip: h1 = 200 * twip
         Case Else: W1 = MDIForm_橋脚.Width: h1 = MDIForm_橋脚.Height - MDIForm_橋脚.Picture1.Height
         End Select
     
     Me.Width = 0.7 * W1:  Me.Height = h1 - 5 * twip
     
     
     File図面dxf.Path = Dxf_dsk
     図面用紙SET
     
     If 図_橋脚_Auto表示s = "Y" Then Call 描画_橋脚図
     
     End Sub


Sub 描画_橋脚図()
    Dim ii As Integer, 図名s As String, 図面用紙s As String, 描画用紙s As String
    
'    図面用紙s = "A1": 描画用紙s = "A3"
    図面用紙s = cbx図面用紙.TEXT '"A1"
    描画用紙s = cbx描画用紙.TEXT '"A3"
    For ii = 1 To 6  ''''''''''' 出力順　nagase     gstrTitle を追加  05/04/11
        図名s = ""
'        If 図_橋脚_表示名称s(ii) <> "" Then 図名s = 図_橋脚_表示名称s(ii) + ".Dxf"
        If 図_橋脚_名称s(ii) <> "" Then 図名s = 図_橋脚_名称s(ii) + ".Dxf" ''' 05/04/12
        If 図名s <> "" Then
            Call DXF図面描画(図名s, 図面用紙s, 描画用紙s)
            項目Index(ii) = ii
        End If
    Next ii
'        図名s = ""
'        If 図_橋脚_表示名称s(1) <> "" Then 図名s = 図_橋脚_表示名称s(1) + ".Dxf"
'        If 図名s <> "" Then Call DXF図面描画(図名s, 図面用紙s, 描画用紙s)
   図_橋脚_Auto表示s = ""
   End Sub




Private Sub Form_Unload(Cancel As Integer)
         
    VSPrt図面.EndDoc

    図面page = 0
    '図面画面.Visible = False
    'Me.Hide
    '図面画面.Show
    End Sub
Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)

    図面page = 0
    Me.Hide
    MDIForm_橋脚.Cmd_図面作成.Enabled = True

    End Sub
Private Sub 図面用紙SET()
     Me.cbx図面用紙.TEXT = "A1"
     Me.cbx図面用紙.AddItem "A4"
     Me.cbx図面用紙.AddItem "A3"
     Me.cbx図面用紙.AddItem "A2"
     Me.cbx図面用紙.AddItem "A1"

     
     Me.cbx描画用紙.TEXT = "A3"
     Me.cbx描画用紙.AddItem "A4"
     Me.cbx描画用紙.AddItem "A3"
     
     

     End Sub

Private Sub CommandEND_Click()
    
    End Sub

Private Sub Command描画_Click()
     
     図面用紙$ = cbx図面用紙.TEXT
     
     描画用紙$ = cbx描画用紙.TEXT
     
    ' Stop
   ' 図面用紙$ = "A1"
      If 図名$ <> "" Then
           'DXF図面描画 図面画面.VSPrt図面, 図名$, 図面用紙$, 描画用紙$
           Call DXF図面描画(図名$, 図面用紙$, 描画用紙$)
           End If
     End Sub

Private Sub Command変換_Click()
     '   dxf Filesを    ___.D00 (Uxf  内山Code)に変換する
     
     FN$ = 図名$
     If FN$ = "" Then er ("ﾌｧｲﾙ名が指定されていない"): If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     
     Call 変換DXF(FN$)
     er ("変換終了  ")
     End Sub

Private Sub Command変換2_Click()
     '   dxf Filesを    ___.DX2 (DXF を読みやすくする)に変換する
     
     FN$ = 図名$
     If FN$ = "" Then er ("ﾌｧｲﾙ名が指定されていない"):  If 世誤CK > 99 Then Stop: Exit Sub Else Exit Sub
     Call 読込DXF(FN$)
     er ("変換終了  ")
     End Sub

Private Sub File図面dxf_Click()
     図名$ = File図面dxf.filename
     End Sub

Private Sub Cbx図名_Click()
    
    
         AAA = Cbx図名.ListIndex
        
        '項目Index(項目数) = 図面page '''''05/04/12
         
        PPP = 項目Index(AAA + 1)
         VSPrt図面.PreviewPage = PPP: 'Val(AAA$) + 1
         VSPrt図面.SetFocus
    
    
    End Sub


Private Sub cmdPrint_Click()
    世Forcus$ = ""
    Call DoPrint
    End Sub

Private Sub DoPrint()
    Dim iFromPage As Integer, iToPage As Integer, iCopies As Integer
    'ﾕｰｻﾞｰ ｺｰﾄﾞ
    
    With CommonDialog
        .Flags = cdlPDNoSelection: ' 選択した部分を無効にする
        .Copies = 1
        
        .min = 1: ' 印刷ページ最小
        .max = VSPrt図面.PageCount - 1: ' 印刷ページ最大
        
        .FromPage = 1
        .ToPage = VSPrt図面.PageCount - 1
        
        .CancelError = True: '

        On Error Resume Next
        .ShowPrinter: 'Dialog BOX 表示

        If Err > 0 Then Exit Sub
        On Error GoTo 0

        iFromPage = .FromPage:        iToPage = .ToPage:        iCopies = .Copies
    End With

    VSPrt図面.PrintDoc False, iFromPage, iToPage
    
    VSPrt図面.SetFocus
    
    End Sub


Private Sub Command2_Click()
    世Forcus$ = ""
 
    VSPrt図面.ZoomMode = 1
   
   
   End Sub



Private Sub Form_Resize()
    Call ResizeForm
    End Sub

Private Sub ResizeForm()
    Dim H As Single, T As Single, w As Single

     Select Case 世PROGRAM$
     Case "出力": W0 = 200 * twip
     Case Else: W0 = MDIForm_橋脚.Width
     End Select
    
    H = ScaleHeight:  T = 0:   w = ScaleWidth
         W1 = File図面dxf.Width
         左 = W1
    T = File図面dxf.Top:   H = H - 200: w = w - W1 - 20
    
    w3 = W0 - Form_図面画面.Left - Form_図面画面.Width - 3 * twip
     H = H - T - 20

    If w < 0 Then w = 0
    If W2 < 0 Then W2 = 10
    If H < 0 Then H = 0

    VSPrt図面.Move 左, T, w, H

     'Form構造.Left = 左 + w + 3 * twip
     
     'Form構造.Width = W3

    End Sub



Private Sub VSPrt図面_Click()
    世Forcus$ = "VSPrt図面"
    End Sub
Private Sub vsDraw1_Click()
    世Forcus$ = "vsDraw1"
    End Sub


Private Sub VSPrt図面_GotFocus()
    世Forcus$ = "VSPrt図面"
    End Sub
Private Sub vsDraw1_GotFocus()
    世Forcus$ = "vsDraw1"
    End Sub
Private Sub txtPage_GotFocus()
    世Forcus$ = ""
    End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)

          Select Case Shift
          Case 0:
                     '世文字Code$ = "*"
                     Select Case KeyCode
                   '  Case 27:    世Forcus$ = "":    Unload Me: ' ESC
                     
                     Case 37:   VSPrt図面.ScrollLeft = VSPrt図面.ScrollLeft - 600:    '左ｷｰ
                     Case 38:   VSPrt図面.ScrollTop = VSPrt図面.ScrollTop - 600:      '上ｷｰ
                     Case 39:   VSPrt図面.ScrollLeft = VSPrt図面.ScrollLeft + 600:    '右ｷｰ
                     Case 40:   VSPrt図面.ScrollTop = VSPrt図面.ScrollTop + 600:      '下ｷｰ
                     Case Else
                     End Select
                     VSPrt図面.SetFocus
              
       
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


Private Sub VSPrt図面_KeyDown(KeyCode As Integer, Shift As Integer)
    
          ZZ = VSPrt図面.Zoom
          SS$ = str$(KeyCode)
    
          Select Case Shift
          Case 0:
                  
                  
                  Select Case KeyCode
                  Case 49, 97: ' 1
                                     VSPrt図面.PreviewPage = 1
                                     'cbxINDEX.ListIndex = txtPage - 1
                  Case 69: ' E
                                     VSPrt図面.PreviewPage = VSPrt図面.PageCount - 1
                                     'cbxINDEX.ListIndex = txtPage - 1
                               
                  Case 109, 189: ' -
                                     PP = VSPrt図面.PreviewPage:
                                     If PP = 1 Then PP = VSPrt図面.PageCount
                                     VSPrt図面.PreviewPage = PP - 1:
                                     'cbxINDEX.ListIndex = txtPage - 1
                  Case 13, 107: ' Enter +
                                     PP = VSPrt図面.PreviewPage:
                                     If PP = VSPrt図面.PageCount - 1 Then PP = 0
                                     VSPrt図面.PreviewPage = PP + 1:
                                     'cbxINDEX.ListIndex = txtPage - 1

            
                  Case 33: ZZ = ZZ + 10: 'Page up
                  Case 34: ZZ = ZZ - 10: 'Page down
            
                  Case 35: ZZ = 400: 'END
                  Case 36: ZZ = 図面ZoomSize: 'Home
            
                  Case 80: ' P
                                      PP = VSPrt図面.PreviewPage
                                      VSPrt図面.ColorMode = 2: ' ｶﾗｰ
                                      'VSPrt図面.ColorMode = 1: ' ﾓﾉｸﾛ
                                      
                                      VSPrt図面.EndDoc: ' *** 必要 ***
                                      
                                      VSPrt図面.PrintDoc False, PP, PP
                              MsgBox "PAGE - " + f0$(PP), 0, "PRINTER 出力"
                  Case 37, 38, 39, 40: Stop
                  Case Else:  RET = MsgBox(SS$, 0, "KeyDown"): 'Stop
                  End Select
                  
          
          Case 1: ' Shift
                  Select Case KeyCode
                  Case 33: ZZ = ZZ + 50: 'Page up
                  Case 34: ZZ = ZZ - 50: 'Page down
                  
                  Case 13: VSPrt図面.PreviewPage = VSPrt図面.PreviewPage - 1
                  
                  Case 37:   VSPrt図面.ScrollLeft = VSPrt図面.ScrollLeft - 600:  '左ｷｰ
                  Case 38:   VSPrt図面.ScrollTop = VSPrt図面.ScrollTop - 600:  '上ｷｰ
                  Case 39:   VSPrt図面.ScrollLeft = VSPrt図面.ScrollLeft + 600:  '右ｷｰ
                  Case 40:   VSPrt図面.ScrollTop = VSPrt図面.ScrollTop + 600: '下ｷｰ
                  
                  
                  End Select
                 'RET = MsgBox("Shift + " + SS$, 0, "KeyDown")
          
          Case 2: ' Ctrl
              '    RET = MsgBox("Ctrl + " + SS$, 0, "KeyDown")
          
          Case 3: ' Shift+Ctrl
                  RET = MsgBox("Shift + Ctrl + " + SS$, 0, "KeyDown")
          
          Case 4: ' Alt
                  Select Case KeyCode
                  Case 33:  'Page up
                       Form_図面画面.Width = Form_図面画面.Width + 600
                       Form_図面画面.Height = Form_図面画面.Height + 600
                 
                  Case 34: 'Page down
                       Form_図面画面.Width = Form_図面画面.Width - 600
                       Form_図面画面.Height = Form_図面画面.Height - 600
            
                  Case 110: ZZ = 71: ' .
                  End Select
              '    RET = MsgBox("Alt + " + SS$, 0, "KeyDown")
          
          
          
          End Select

          If ZZ < 10 Then ZZ = 10
          VSPrt図面.Zoom = ZZ
    
          VSPrt図面.SetFocus

End Sub





'===============================================================================================================================================
Private Sub DXF図面描画(図名$, 図面用紙$, 描画用紙$)
     
     
'===============================================================================================================================================
     
     Dim Obj As Object
     
     ' VSPrinter 使用
     Set Obj = Form_図面画面.VSPrt図面
     
     
     図面page = 図面page + 1
      
     W1 = Form_図面画面.Width - Form_図面画面.File図面dxf.Width
           
           色 = QBColor(0)
           
           
           Select Case 図面用紙$
                Case "A0": 図面用紙幅 = 1188: ' 1188*840
                Case "A1": 図面用紙幅 = 841: '841*594
                Case "A2": 図面用紙幅 = 594: '594*420
                Case "A3": 図面用紙幅 = 420: '420*297
                Case "A4": 図面用紙幅 = 297: '297*210
                Case Else: 図面用紙幅 = 594
                End Select
           
         '  ER ("描画用紙$"):              If 世誤CK > 99 Then Stop
         '****************************************************************
           Select Case 描画用紙$
                Case "A4": Obj.PaperSize = pprA4: 用紙幅 = 297
                Case "A3": Obj.PaperSize = pprA3: 用紙幅 = 420
                Case Else: Obj.PaperSize = pprA3: 用紙幅 = 420
                End Select
         '****************************************************************
           
           描画縮尺係数 = 図面用紙幅 / 用紙幅
           
           Select Case OLD描画用紙$
           Case "": ' 図面page = 図面page + 1: Cbx図名.AddItem 図名$: 項目Index(図面page) = 図面page
           Case 描画用紙$:
           Case Else: Obj.NewPage: 図面page = 図面page + 1: 項目Index(図面page) = 図面page '  Cbx図名.AddItem 図名$: 項目Index(図面page) = 図面page
           End Select
           
           
           OLD描画用紙$ = 描画用紙$
           'Obj.MarginBottom = -200 * Twip
           Obj.Orientation = 1: ' 用紙横
           
           If 図面page <= 1 Then Obj.StartDoc
           
           
           図面ZoomSize = 0.98 * 100 * W1 / (用紙幅 * twip)
           Obj.Zoom = 図面ZoomSize
           Obj.ZoomMax = 800
           Obj.PenColor = 色
           Obj.TextColor = 色
           Obj.TextAlign = 0
   
           'Obj.ScaleOutput = 50
           Obj.BrushStyle = 1:  ' 0 塗りつぶし 1 透明 2 横線 3 縦線 4 斜線/  5 斜線逆/  6 ｸﾛｽ(垂直)  7 ｸﾛｽ(斜め)

           Obj.ColorMode = 1: ' ﾓﾉｸﾛ
           Obj.MarginTop = 0: Obj.MarginBottom = 0:  Obj.MarginLeft = 0:   Obj.MarginRight = 0
     
     文字倍率 = 0.06
     
     画面H = Obj.PageHeight - 3 * twip
     図面画面H = Obj.PageHeight - 5 * twip
     
    ' ReDim Ds$(50), Di(50)
     
        Form_図面画面.Cbx図名.AddItem 図名$
        項目Index(図面page) = 図面page
     
     iFN$ = 図名$: ' "伏図1F.DXF": '  OFN$ = fn$
     ' 描画縮尺 = 1.514 * 図面縮尺 / twip
     
     描画縮尺 = 3: ' 仮に必要
     
     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
      
      
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_書換(iFN$, TEMP_F$)
      
      
      Open TEMP_F$ For Input As #2
      
      Do: If EOF(2) Then Exit Do
         Line Input #2, Da$: Ln1 = Ln1 + 1
         Da$ = Trim$(Da$)
         Select Case Da$
         Case "0": ' Secttion
                  Input #2, 項目$
                  Select Case 項目0$
                  Case "": DD2$ = ""
                  Case "LINE": 'DD2$ = "l:" & X1$ & "," & Y1$ & "," & X2$ & "," & Y2$
                  
                            'Call PLine(Obj, SX1, SY1, SX2, SY2)
                               Obj.DrawLine SX1, SY1, SX2, SY2
                   Case "TEXT": 'DD2$ = "字:" & X1$ & "," & Y1$ & "," & 角度50$ & "," & "L" & "," & 文字$
                               
                               Font_s = 文字倍率 * D文字H: If Font_s <= 1 Then Font_s = 1
                               Obj.FontSize = Font_s
                               Select Case 文字位置$
                                    Case "中央": MojW = Obj.TextWidth(文字$) / 2: TEXT_X = SX2: TEXT_Y = SY2
                                    Case "右端": MojW = Obj.TextWidth(文字$):     TEXT_X = SX2: TEXT_Y = SY2
                                    Case Else: MojW = 0:                         TEXT_X = SX1: TEXT_Y = SY1
                                    End Select
                               
                               MojH = Obj.TextHeight(文字$)
                                文字位置$ = ""
                               
                               Select Case S角度50
                                    Case 0:       SN2 = 0: CS2 = 1
                                    Case 90:      SN2 = 1: CS2 = 0
                                    Case 180:     SN2 = 0: CS2 = -1
                                    Case 270:     SN2 = -0: CS2 = 0
                                    Case 360:     SN2 = 0: CS2 = 1
                                    Case Else:    SN2 = Sin(rad(S角度50)): CS2 = Cos(rad(S角度50))
                                    End Select
                               
       
                                  SNH = Sin(rad(S角度50 + 90)): CSH = Cos(rad(S角度50 + 90))
                                  SNW = Sin(rad(S角度50)): CSW = Cos(rad(S角度50))
                                  DX = MojH * CSH - MojW * CSW:
                                  DY = MojH * SNH - MojW * SNW
                               
                               
                               Obj.CurrentX = TEXT_X + DX
                               Obj.CurrentY = TEXT_Y - DY
                               
                               Obj.TextAngle = 10 * S角度50
                               If Obj.CurrentY > 画面H Then Obj.CurrentY = 画面H
                               Obj.TEXT = 文字$
                  
                  Case "CIRCLE": ' DD2$ = "cir:" & X1$ & "," & Y1$ & "," & f3$(半径)
                               Obj.DrawCircle SX1, SY1, 半径
                  
                  Case "ARC": 'DD2$ = "arc1:" & X1$ & "," & Y1$ & "," & f3$(半径) & "," & 角度50$ & "," & 角度51$
                               Obj.DrawCircle SX1, SY1, 半径, rad(S角度50), rad(S角度51)
                  
                  
                  Case "POINT": ' DD2$ = "点:" & X1$ & "," & Y1$
                               Obj.DrawCircle SX1, SY1, 0.15 * twip
                               Obj.DrawCircle SX1, SY1, 0.3 * twip
                  Case Else: DD2$ = ""
                  
                  End Select
                  
                    項目0$ = 項目$
                   'Call 変換出力(DD2$): 項目0$ = 項目$
         
         Case "1":  Line Input #2, 文字$: ' 文字$ = 逆ブランク(文字$): 文字$ = シフト7(文字$)

         
         
         Case "8":  Input #2, レイヤ$
         Case "6":  Input #2, 線種$
                    If 線種$ <> 線種0$ Then
                        Select Case 線種$
                        Case "CONTINUOUS": DD2$ = "con:":  Obj.PenStyle = 0
                        Case "DOT": DD2$ = "dot:":         Obj.PenStyle = 2
                        Case "CENTER1": DD2$ = "cen:":     Obj.PenStyle = 3
                        Case Else: DD2$ = "線種:" & 線種$: Obj.PenStyle = 0
                        End Select
                    'Call 変換出力(DD2$): 線種0$ = 線種$
                    End If
         
         Case "9": Input #2, Da$
                   '********************************************
                   '    Print #19, "  9": Print #19, "$EXTMAX"
                   '   Print #19, " 10": Print #19, 59400 * ZU_Scale / 100
                   '   Print #19, " 20": Print #19, 42000 * ZU_Scale / 100
                   If UCase$(Da$) = "$EXTMAX" Then
                       Input #2, D1$, D2$
                       '図面縮尺 = Val(D2$) / 594
                       図面縮尺 = Val(D2$) / 841
                       '%%%%%%%%%%%
                       描画縮尺 = 描画縮尺係数 * 図面縮尺 / twip
                       If 描画縮尺 = 0 Then 描画縮尺 = 100
                       End If
         
         
         Case "62": Input #2, 線色$
                    ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
                    If 線色$ <> 線色0$ Then
                        Select Case 線色$
                        Case "2": DD2$ = "色:黄": Obj.PenColor = QBColor(6)
                        Case "3": DD2$ = "色:緑": Obj.PenColor = QBColor(2)
                        Case "4": DD2$ = "色:空": Obj.PenColor = QBColor(9)
                        Case "5": DD2$ = "色:青": Obj.PenColor = QBColor(1)
                        Case "6": DD2$ = "色:紫": Obj.PenColor = QBColor(5)
                        Case "7": DD2$ = "色:白": Obj.PenColor = QBColor(0)
                        Case Else: DD2$ = "色:白": Obj.PenColor = QBColor(0)
                        End Select
                    'Call 変換出力(DD2$): 線色0$ = 線色$
                    End If
         Case "10": Input #2, X1$: SX1 = -仮原点X + Val(X1$) / 描画縮尺
         Case "11": Input #2, X2$: SX2 = -仮原点X + Val(X2$) / 描画縮尺
         Case "20": Input #2, Y1$: SY1 = 図面画面H + 仮原点Y - Val(Y1$) / 描画縮尺
         Case "21": Input #2, Y2$: SY2 = 図面画面H + 仮原点Y - Val(Y2$) / 描画縮尺
         
         Case "40": Input #2, D40$: S40 = Val(D40$) / 描画縮尺
                   Select Case 項目$
                   Case "ARC", "CIRCLE": 半径 = S40
                   Case "TEXT": 文字H$ = D40$: D文字H = S40:
                        'If 文字H$ <> 文字H0$ Then DD2$ = "字H:" & F2$(D文字H): Call 変換出力(DD2$): 文字H0$ = 文字H$
                   Case "LTYPE":
                   Case "STYLE":
                   Case "SECTION":
                   Case Else: er ("[40で 項目=" & 項目$ & "ﾃﾞｰﾀ=" & D40$):  If 世誤CK > 99 Then Stop
                   End Select
         Case "41": Input #2, 文字幅比率$
         
         Case "50": Input #2, 角度50$: S角度50 = Val(角度50$)
         Case "51": Input #2, 角度51$: S角度51 = Val(角度51$)
         Case "72": Input #2, 文字位置$
                   Select Case 文字位置$
                   Case "1": 文字位置$ = "中央"
                   Case "2": 文字位置$ = "右端"
                   Case Else: ' ER ("文字位置 [" & 文字位置 & "]"): ' Stop
                   End Select
         Case Else: If EOF(2) Then Exit Do Else Input #2, DD$
         End Select
         Loop
     
     Close #2
     
     Obj.NewPage
     
         Obj.PreviewPage = 図面page
         'txtPage.TEXT = vsPrt1.PreviewPage
         
         
 '###        Obj.SetFocus
     
     
     
     '  Obj.EndDoc
     
     
     End Sub



'***************************************
'┌─────────────────────────────────────────────────────────────────┐
'│　　　　読込DXF(FN$)
'└─────────────────────────────────────────────────────────────────┘
Sub 読込DXF(FN$)
     
     VVV$ = "V1.01  1995_06_07"
     '  DXF を  読みやすい DX2 に変換します
     'Call dsk
     'Pend = 260
     iFN$ = FN$: Ofn$ = FN$
     

     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
     If InStr(Ofn$, ":") = 0 Then Ofn$ = Data_dsk + Ofn$
     n = InStr(Ofn$, "."): If n > 0 Then Ofn$ = Mid$(Ofn$, 1, n - 1)
         Ofn$ = Ofn$ + ".DX2"
     
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_書換(iFN$, TEMP_F$)
     
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


'┌─────────────────────────────────────────────────────────────────┐
'│　　　　Dxf_File_書換(DXF_File名$, TEMP_F$)
'└─────────────────────────────────────────────────────────────────┘
Sub Dxf_File_書換(DXF_File名$, TEMP_F$)
      ' DXF File に　Return を入れる
      On Error GoTo ErrorHandle ''''''''''''''' 05/04/11
      Open TEMP_F$ For Output As #3
      Open DXF_File名$ For Input As #2
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

'┌─────────────────────────────────────────────────────────────────┐
'│　　　　変換DXF(FN$)
'└─────────────────────────────────────────────────────────────────┘
Sub 変換DXF(FN$)
     '   dxf Filesを    ___.D00 (内山Code)に変換する
     
     'Call dsk
     'Pend = 260
     
     iFN$ = FN$: Ofn$ = FN$:
     
     
     仮原点X = 0: 仮原点Y = 0: 縮尺 = 100
     Da$ = InputBox("  (X0,Y0, ) 縮尺を入力して下さい  ", "縮尺", 100, 500, 500)
     Call Ddata(",", Da$, Ds$(), Di(), ni)
     Select Case ni
     Case 1: 縮尺 = Di(1)
     Case 3: 仮原点X = Di(1): 仮原点Y = Di(2): 縮尺 = Di(3)
     Case Else: er ("ﾃﾞｰﾀの個数が違う "): If 世誤CK > 99 Then Stop
     End Select
     
     If InStr(iFN$, ":") = 0 Then iFN$ = Dxf_dsk + iFN$
     
     ni = InStr(Ofn$, ":"): If ni = 0 Then Ofn$ = Data_dsk + Ofn$
     
     n = InStr(Ofn$, "."): If n > 0 Then Ofn$ = Mid$(Ofn$, 1, n - 1)
         Ofn$ = Ofn$ + ".D00"

      
     TEMP_F$ = TEMP_Data_dsk + "DXF.TEP"
      Call Dxf_File_書換(iFN$, TEMP_F$)
      
      
      
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
                    Input #2, 項目$
                  Select Case 項目0$
                  Case "": DD2$ = ""
                  Case "LINE": DD2$ = "変Li:" + FD4(DX1, DY1, DX2, DY2): '
                  Case "TEXT": DD2$ = "変字:" + FD3(DX1, DY1, S角度50) + ",L," + 文字$
                  Case "CIRCLE": DD2$ = "変Cir:" + FD3(DX1, DY1, 半径)
                  Case "ARC": DD2$ = "変Arc1:" + FD5(DX1, DY1, 半径, S角度50, S角度51)
                  Case "POINT": DD2$ = "変点:" + FD2(DX1, DY1):
                  Case Else: DD2$ = ""
                  'ER (DA$): 'Stop
                  End Select
                  
                   Call 変換出力(DD2$): 項目0$ = 項目$
         
         Case "1":  Line Input #2, 文字$: 文字$ = 逆ブランク(文字$): 文字$ = シフト7(文字$)

         Case "8":  Input #2, レイヤ$
         Case "6":  Input #2, 線種$
                    If 線種$ <> 線種0$ Then
                        Select Case 線種$
                        Case "CONTINUOUS": DD2$ = "con:"
                        Case "DOT": DD2$ = "dot:"
                        Case "CENTER1": DD2$ = "cen:"
                        Case Else: DD2$ = "線種:" & 線種$
                        End Select
                    Call 変換出力(DD2$): 線種0$ = 線種$
                    End If
         
         Case "9": Input #2, Da$
                   '********************************************
                   '    Print #19, "  9": Print #19, "$EXTMAX"
                   '   Print #19, " 10": Print #19, 59400 * ZU_Scale / 100
                   '   Print #19, " 20": Print #19, 42000 * ZU_Scale / 100
                   If UCase$(Da$) = "$EXTMAX" Then
                       Input #2, D1$, D2$
                       図面縮尺 = 100 * Val(D2$) / 59400
                       描画縮尺 = 描画縮尺係数 * 図面縮尺 / twip
                       End If
         
         Case "62": Input #2, 線色$
                    ' 1:       2:黄   3:緑   4:空   5:青   6:紫   7:白
                    If 線色$ <> 線色0$ Then
                        Select Case 線色$
                        Case "2": DD2$ = "色:黄"
                        Case "3": DD2$ = "色:緑"
                        Case "4": DD2$ = "色:空"
                        Case "5": DD2$ = "色:青"
                        Case "6": DD2$ = "色:紫"
                        Case "7": DD2$ = "色:白"
                        Case Else: DD2$ = "色:白"
                        End Select
                    Call 変換出力(DD2$): 線色0$ = 線色$
                    End If
         Case "10": Input #2, X1$: DX1 = (Val(X1$) - 仮原点X) / 縮尺:
         Case "11": Input #2, X2$: DX2 = (Val(X2$) - 仮原点X) / 縮尺:
         Case "20": Input #2, Y1$: DY1 = (Val(Y1$) - 仮原点Y) / 縮尺:
         Case "21": Input #2, Y2$: DY2 = (Val(Y2$) - 仮原点Y) / 縮尺:
         
         Case "40": Input #2, D40$: S40 = Val(D40$) / 縮尺
                   Select Case 項目$
                   Case "ARC", "CIRCLE": 半径 = S40
                   Case "TEXT": 文字H$ = D40$: D文字H = S40: If 文字H$ <> 文字H0$ Then DD2$ = "字H:" & f2$(D文字H): Call 変換出力(DD2$): 文字H0$ = 文字H$
                   Case "LTYPE":
                   Case "STYLE":
                   Case Else: er ("[40で 項目=" & 項目$ & "ﾃﾞｰﾀ=" & D40$): If 世誤CK > 99 Then Stop
                   End Select
         Case "41": Input #2, 文字幅比率$
         
         Case "50": Input #2, 角度50$: S角度50 = Val(角度50$)
         Case "51": Input #2, 角度51$: S角度51 = Val(角度51$)
         Case Else: 'ER (DA$)
               If EOF(2) Then Exit Do Else Input #2, DD$
         End Select
         
         Loop
     
     Call 変換出力("/END"): 'Stop
     Close #3
     Close #2
     
     End Sub
Private Sub 変換出力(Da$)
     Static Moj$
     If Da$ = "" Then Exit Sub
     If Da$ = "/END" Then
         Print #3, Mid$(Moj$, 2): Moj$ = ""
         Else
         
         
         Da2$ = "\[" & Da$ & "]":
         Moj2$ = Moj$ & Da2$
         If Len(Moj2$) + N漢字(Moj2$) > 120 Then Print #3, Mid$(Moj$, 2): Moj$ = ""
         Moj$ = Moj$ & Da2$
         End If
     End Sub

