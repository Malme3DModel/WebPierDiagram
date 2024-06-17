VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmKuiHaikin 
   Caption         =   "杭配筋"
   ClientHeight    =   7590
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11880
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   7590
   ScaleWidth      =   11880
   WindowState     =   2  '最大化
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   735
      Index           =   4
      Left            =   480
      TabIndex        =   0
      Top             =   1590
      Width           =   10575
      _ExtentX        =   18653
      _ExtentY        =   1296
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   255
      Index           =   0
      Left            =   480
      TabIndex        =   5
      Top             =   720
      Width           =   1395
      _ExtentX        =   2461
      _ExtentY        =   450
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   255
      Index           =   1
      Left            =   2580
      TabIndex        =   7
      Top             =   720
      Width           =   1395
      _ExtentX        =   2461
      _ExtentY        =   450
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   255
      Index           =   2
      Left            =   4680
      TabIndex        =   9
      Top             =   720
      Width           =   1395
      _ExtentX        =   2461
      _ExtentY        =   450
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   1575
      Index           =   5
      Left            =   480
      TabIndex        =   2
      Top             =   3480
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   2778
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   735
      Index           =   6
      Left            =   4680
      TabIndex        =   3
      Top             =   3480
      Width           =   1815
      _ExtentX        =   3201
      _ExtentY        =   1296
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKuiHaikin 
      Height          =   255
      Index           =   3
      Left            =   4680
      TabIndex        =   12
      Top             =   4500
      Width           =   1575
      _ExtentX        =   2778
      _ExtentY        =   450
      _ConvInfo       =   1
      Appearance      =   1
      BorderStyle     =   1
      Enabled         =   -1  'True
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      MousePointer    =   0
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      BackColorFixed  =   -2147483633
      ForeColorFixed  =   -2147483630
      BackColorSel    =   -2147483635
      ForeColorSel    =   -2147483634
      BackColorBkg    =   -2147483636
      BackColorAlternate=   -2147483643
      GridColor       =   -2147483633
      GridColorFixed  =   -2147483632
      TreeColor       =   -2147483632
      FloodColor      =   192
      SheetBorder     =   -2147483642
      FocusRect       =   1
      HighLight       =   2
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   3
      Cols            =   4
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   3
      ScrollTips      =   0   'False
      MergeCells      =   0
      MergeCompare    =   0
      AutoResize      =   -1  'True
      AutoSizeMode    =   0
      AutoSearch      =   0
      MultiTotals     =   -1  'True
      SubtotalPosition=   1
      OutlineBar      =   0
      OutlineCol      =   0
      Ellipsis        =   0
      ExplorerBar     =   0
      PicturesOver    =   0   'False
      FillStyle       =   0
      RightToLeft     =   0   'False
      PictureType     =   0
      TabBehavior     =   0
      OwnerDraw       =   0
      Editable        =   0   'False
      ShowComboButton =   -1  'True
      WordWrap        =   0   'False
      TextStyle       =   0
      TextStyleFixed  =   0
      OleDragMode     =   0
      OleDropMode     =   0
      DataMode        =   0
      VirtualData     =   -1  'True
   End
   Begin VB.Label Label7 
      Caption         =   "杭先端"
      Height          =   195
      Left            =   10440
      TabIndex        =   14
      Top             =   1365
      Width           =   615
   End
   Begin VB.Label Label6 
      Caption         =   "機械継手 は K"
      Height          =   195
      Left            =   8520
      TabIndex        =   13
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label Label5 
      Appearance      =   0  'ﾌﾗｯﾄ
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  '実線
      Caption         =   " 杭配筋図 "
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   11.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   255
      Left            =   360
      TabIndex        =   11
      Top             =   180
      Width           =   1080
   End
   Begin VB.Label Label4 
      Caption         =   "圧接継手 は A"
      Height          =   195
      Left            =   8520
      TabIndex        =   10
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "<-- 杭 頭"
      Height          =   255
      Left            =   3360
      TabIndex        =   8
      Top             =   4110
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "組立筋・スペーサー"
      Height          =   180
      Left            =   4680
      TabIndex        =   6
      Top             =   3120
      Width           =   1500
   End
   Begin VB.Label Label1 
      Caption         =   "スターラップ"
      Height          =   180
      Left            =   360
      TabIndex        =   4
      Top             =   3120
      Width           =   930
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      Caption         =   "軸 方 向 鉄 筋"
      Height          =   180
      Left            =   360
      TabIndex        =   1
      Top             =   1320
      Width           =   1140
   End
End
Attribute VB_Name = "frmKuiHaikin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const cintNumCtrl As Integer = 7
Dim Grid(cintNumCtrl - 1) As Object
Dim intBack(cintNumCtrl - 1) As Integer  '前のグリッドナンバー
Dim intNext(cintNumCtrl - 1) As Integer  '次のグリッドナンバー

Dim bIgnoreHighLight As Boolean
Dim bLoadNow As Boolean
Dim bolCellNoMove As Boolean

Private Sub Form_Load()
    Dim i As Integer

    Call faKuiHaikinInit
    
    '作業ディレクトリにファイルがあれば読み込む
    If Dir$(gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    Me.Show
    
    'タブ移動設定
    Call gMakeTabOrder(Me, cintNumCtrl, Grid(), intBack(), intNext())

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  'Win98のバグ回避コード
  Me.Hide

End Sub

Private Sub Form_Unload(Cancel As Integer)
    '作業ディレクトリにファイルを書く
    Call DataSave

End Sub

Private Sub faKuiHaikinInit()
    Dim Col As Long
    Dim Row As Long
    Dim ix As Integer
    
    '主筋総本数等
    For ix = 0 To 3
        With faKuiHaikin(ix)
            .Rows = 1
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
        
            .MergeCells = flexMergeFixedOnly
            .MergeRow(0) = False
            
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
                .ColAlignment(Col) = flexAlignRightCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
            
            '見出し行の設定
            Col = 0
            .MergeCol(Col) = False
            .ColWidth(Col) = 1100
            .ColWidth(1) = 700
            
            Select Case ix
            Case 0
                .TextMatrix(0, Col) = "主筋総本数"
            
            Case 1
                .TextMatrix(0, Col) = "杭頭定着長"
            
            Case 2
                .TextMatrix(0, Col) = "かぶり mm"
            
            Case 3
                .ColWidth(Col) = 2400
                .TextMatrix(0, Col) = "スペーサー1ヶ所当り本数"
            
            End Select
               
        End With
    Next
        
    '主鉄筋配置
    ix = 4
    With faKuiHaikin(ix)
        .Rows = 3 '4
        .Cols = 16
        .FixedRows = 1
        .FixedCols = 1
    
        .MergeCells = flexMergeFixedOnly
        .MergeRow(0) = False
        
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        For Col = 0 To .FixedCols - 1
            .ColAlignment(Col) = flexAlignCenterCenter
        Next
        
        '見出し行の設定
        Col = 0
        .MergeCol(Col) = False
        .ColWidth(Col) = 900
        .TextMatrix(0, Col) = "No."
        .TextMatrix(1, Col) = "1番鉄筋"
        .TextMatrix(2, Col) = "2番鉄筋"
        
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "鉄筋長L1"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "継手長"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "鉄筋長L2"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "継手長"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "鉄筋長L3"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "継手長"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "鉄筋長L4"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "継手長"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "鉄筋長L5"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "かぶり"
'        .ColFormat(Col) = "0 "
    End With

    '寸法
    ix = 5
    With faKuiHaikin(ix)
        .Rows = 13
        .Cols = 4
        .FixedRows = 1
        .FixedCols = 1
    
        .MergeCells = flexMergeFixedOnly
        .MergeRow(0) = False
        
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        For Col = 0 To .FixedCols - 1
            .ColAlignment(Col) = flexAlignCenterCenter
        Next
        
        '見出し行の設定
        Col = 0
        .MergeCol(Col) = False
        .ColWidth(Col) = 700
        .TextMatrix(0, Col) = ""
        
        For Row = 1 To .Rows - 1
            .TextMatrix(Row, Col) = Format$(-2 + (Row - IIf(Row >= 3, 0, 1)))
        Next
        
        Col = Col + 1
        .ColWidth(Col) = 750
        .TextMatrix(0, Col) = "鉄筋径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 650
        .TextMatrix(0, Col) = "区間数"
        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 600
        .TextMatrix(0, Col) = "間 隔"
        .ColFormat(Col) = "0 "
    End With

    '組立て筋
    ix = 6
    With faKuiHaikin(ix)
        .Rows = 3
        .Cols = 3
        .FixedRows = 1
        .FixedCols = 1
    
        .MergeCells = flexMergeFixedOnly
        .MergeRow(0) = False
        
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        For Col = 0 To .FixedCols - 1
            .ColAlignment(Col) = flexAlignCenterCenter
        Next
        
        '見出し行の設定
        Col = 0
        .MergeCol(Col) = False
        .ColWidth(Col) = 1000
        .TextMatrix(0, Col) = ""
        .TextMatrix(1, Col) = "組立て筋"
        .TextMatrix(2, Col) = "ｽﾍﾟｰｻｰ"
        .ColAlignment(2) = flexAlignLeftCenter

'        For Row = 1 To .Rows - 1
'            .TextMatrix(Row, Col) = Format$(Row)
'        Next
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "鉄筋径"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 3000
        .TextMatrix(0, Col) = "ピッチ割り"
'        .ColFormat(Col) = "0 "
    End With

    'サイズ自動調整
    For ix = 0 To cintNumCtrl - 1
        Call gfaAjustSize(faKuiHaikin(ix))
    Next

End Sub

'グリッドのデータをファイルに書き込む
'ファイルフォーマットは
'   バージョン文字列,
'   １つ目のグリッド行数（固定行を除く）,
'   列数,（固定行を除く）
'   データ文字列,
'   2つ目のグリッド行数,
'   列数,
'   データ文字列,
'   ・・・
'のようになっている。
'グリッドの個数などは含まれていないので、バージョン情報を見てコードで管理する。
Public Sub DataSave()
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    bIgnoreHighLight = True
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt For Output As #FileNo
    
    'バージョン情報書き込み
    Write #FileNo, gGetCurVersion(gcstrKuiHaikinFile)
        
    Dim i As Integer
    
    For i = 0 To cintNumCtrl - 1
        With faKuiHaikin(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faKuiHaikin(i))
        End With
    Next
    
    Close #FileNo
    
    bIgnoreHighLight = False
    If Me.Visible = True Then If TypeOf Me.ActiveControl Is vsFlexGrid Then Me.ActiveControl.CellBackColor = gclngHighLightColor
    
    Exit Sub
    
ErrorHandle:
    MsgBox "ファイル書き込みエラー : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo   'オープンしないでクローズしてもエラーにはならない
    
    bIgnoreHighLight = False
    If Me.Visible = True Then If TypeOf Me.ActiveControl Is vsFlexGrid Then Me.ActiveControl.CellBackColor = gclngHighLightColor

End Sub

'グリッドのデータをファイルから読み込む
'ファイルフォーマットは
'   バージョン文字列,
'   １つ目のグリッド行数（固定行を除く）,
'   列数,（固定行を除く）
'   データ文字列,
'   2つ目のグリッド行数,
'   列数,
'   データ文字列,
'   ・・・
'のようになっている。
'グリッドの個数などは含まれていないので、バージョン情報を見てコードで管理する。
'バージョンに差異がある場合は、MDIForm_橋脚.faLoadBufに一旦書込んで、そこから適切なセルへコピーするようにする
Public Sub DataLoad()
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt For Input As #FileNo
    
    'バージョン情報読み込み
    Input #FileNo, strVer
        
    Dim i As Integer
    
    For i = 0 To cintNumCtrl - 1
        With faKuiHaikin(i)
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
            
            Call gStrPasteToGrid(faKuiHaikin(i), strData)
        End With
    Next
    
    Close #FileNo
    Exit Sub
    
ErrorHandle:
    MsgBox "読み込みデータが不足していました。", vbInformation + vbOKOnly
    Close #FileNo   'オープンしないでクローズしてもエラーにはならない

End Sub

Private Sub faKuiHaikin_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKuiHaikin)

End Sub

Private Sub faKuiHaikin_EnterCell(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faKuiHaikin(Index).CellBackColor = vbButtonFace Then Call faKuiHaikin_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKuiHaikin(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faKuiHaikin_GotFocus(Index As Integer)
    If bolCellNoMove Then Exit Sub
    '03/07/30 NAGASE
    If faKuiHaikin(Index).CellBackColor = vbButtonFace Then Call faKuiHaikin_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKuiHaikin(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faKuiHaikin_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKuiHaikin(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        If gfaMoveCell(faKuiHaikin(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faKuiHaikin(Index))
    End With

End Sub

Private Sub faKuiHaikin_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKuiHaikin(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            If gfaMoveCell(faKuiHaikin(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faKuiHaikin(Index))
        End If
    End With

End Sub

Private Sub faKuiHaikin_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faKuiHaikin(Index), faKuiHaikin(Index).Row, faKuiHaikin(Index).Col)

End Sub

Private Sub faKuiHaikin_LostFocus(Index As Integer)
    Call gfaSetCellColor(faKuiHaikin(Index), faKuiHaikin(Index).Row, faKuiHaikin(Index).Col)

End Sub

Private Sub faKuiHaikin_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

Private Sub faKuiHaikin_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    
    With faKuiHaikin(Index)
        
        Select Case Col
'        Case 1, 2, 3, 6
'           If InStr(1, .EditText, ".", vbTextCompare) = 0 Then   '小数点がなかったら
'             .EditText = Format(Val(.EditText), "##0")
'           Else
'             .EditText = Format(Val(.EditText), "##0.0")
'           End If
'        Case 4, 5, 7
'           .EditText = Format(Val(.EditText), "##0")
        Case Else
            If .ColFormat(Col) = "" Then Exit Sub
            .EditText = Format(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub

