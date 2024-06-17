VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmKisohaikin 
   Caption         =   "フーチング"
   ClientHeight    =   9060
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11595
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "ＭＳ Ｐゴシック"
      Size            =   9.75
      Charset         =   128
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   9060
   ScaleWidth      =   11595
   WindowState     =   2  '最大化
   Begin VB.Frame Frame4 
      Caption         =   "純かぶり  mm"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1275
      Left            =   2580
      TabIndex        =   0
      Top             =   720
      Width           =   1935
      Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
         Height          =   735
         Index           =   0
         Left            =   300
         TabIndex        =   9
         Top             =   360
         Width           =   1395
         _ExtentX        =   2461
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
         Rows            =   4
         Cols            =   5
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
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   1215
      Index           =   1
      Left            =   720
      TabIndex        =   10
      Top             =   3360
      Width           =   3795
      _ExtentX        =   6694
      _ExtentY        =   2143
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
      Rows            =   4
      Cols            =   5
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   1215
      Index           =   2
      Left            =   720
      TabIndex        =   11
      Top             =   5040
      Width           =   3795
      _ExtentX        =   6694
      _ExtentY        =   2143
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
      Rows            =   4
      Cols            =   5
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   495
      Index           =   3
      Left            =   720
      TabIndex        =   12
      Top             =   6960
      Width           =   3795
      _ExtentX        =   6694
      _ExtentY        =   873
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
      Rows            =   4
      Cols            =   5
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   255
      Index           =   4
      Left            =   6240
      TabIndex        =   13
      Top             =   540
      Width           =   1515
      _ExtentX        =   2672
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
      Rows            =   4
      Cols            =   5
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   615
      Index           =   5
      Left            =   5280
      TabIndex        =   14
      Top             =   900
      Width           =   4035
      _ExtentX        =   7117
      _ExtentY        =   1085
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
      Rows            =   4
      Cols            =   5
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   255
      Index           =   6
      Left            =   6240
      TabIndex        =   15
      Top             =   1800
      Width           =   1515
      _ExtentX        =   2672
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
      Rows            =   4
      Cols            =   5
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKiso 
      Height          =   615
      Index           =   7
      Left            =   5280
      TabIndex        =   16
      Top             =   2160
      Width           =   4035
      _ExtentX        =   7117
      _ExtentY        =   1085
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
      Rows            =   4
      Cols            =   5
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
   Begin VB.Label Label22 
      Caption         =   "直角方向"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   5160
      TabIndex        =   8
      Top             =   1860
      Width           =   825
   End
   Begin VB.Label Label21 
      Caption         =   "サイド鉄筋"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   720
      TabIndex        =   7
      Top             =   6615
      Width           =   840
   End
   Begin VB.Label Label18 
      Caption         =   "線路方向"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   5160
      TabIndex        =   6
      Top             =   600
      Width           =   825
   End
   Begin VB.Label Label2 
      Appearance      =   0  'ﾌﾗｯﾄ
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  '実線
      Caption         =   " 基礎配筋図 "
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   12
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H80000008&
      Height          =   270
      Left            =   600
      TabIndex        =   5
      Top             =   240
      Width           =   1380
   End
   Begin VB.Label Label5 
      Caption         =   "(2) スターラップ"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00400000&
      Height          =   180
      Left            =   4980
      TabIndex        =   4
      Top             =   180
      Width           =   1290
   End
   Begin VB.Label Label9 
      Caption         =   "直角方向"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   720
      TabIndex        =   3
      Top             =   4740
      Width           =   825
   End
   Begin VB.Label Label8 
      Caption         =   "線路方向"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   180
      Left            =   720
      TabIndex        =   2
      Top             =   3060
      Width           =   825
   End
   Begin VB.Label Label16 
      Caption         =   "(1) 主 鉄 筋"
      ForeColor       =   &H00400000&
      Height          =   180
      Left            =   360
      TabIndex        =   1
      Top             =   2640
      Width           =   1200
   End
End
Attribute VB_Name = "frmKisohaikin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const cintNumCtrl As Integer = 8
Dim Grid(cintNumCtrl - 1) As Object
Dim intBack(cintNumCtrl - 1) As Integer  '前のグリッドナンバー
Dim intNext(cintNumCtrl - 1) As Integer  '次のグリッドナンバー

Dim bIgnoreHighLight As Boolean
Dim bLoadNow As Boolean
Dim bolCellNoMove As Boolean

Private Sub Form_Load()

    bLoadNow = True
    
    'グリッド初期化
    Call faKisoInit
    
    '作業ディレクトリにファイルがあれば読み込む
    If Dir$(gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    bLoadNow = False
   
    'グリッド移動順の設定
    Me.Show
    
    'タブ移動設定
    Call gMakeTabOrder(Me, cintNumCtrl, Grid(), intBack(), intNext())

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  'Win98のバグ回避コード
  Me.Hide

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
    Dim i As Integer
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    bIgnoreHighLight = True
    
    bolCellNoMove = True
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt For Output As #FileNo
    
    'バージョン情報書き込み
    Write #FileNo, gGetCurVersion(gcstrKisohaikinFile)
    
    For i = 0 To cintNumCtrl - 1
        With faKiso(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faKiso(i))
        End With
    Next
    
    Close #FileNo
    
    
    bolCellNoMove = False
    bIgnoreHighLight = False
    If Me.Visible = True Then If TypeOf Me.ActiveControl Is vsFlexGrid Then Me.ActiveControl.CellBackColor = gclngHighLightColor
    
    Exit Sub
    
ErrorHandle:
    MsgBox "ファイル書き込みエラー : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo
    bolCellNoMove = False
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
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim intTmp As Integer
    
    bolCellNoMove = True
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt For Input As #FileNo
    
    On Error GoTo ErrorHandle
    
    'バージョン情報読み込み
    Input #FileNo, strVer
        
    For i = 0 To cintNumCtrl - 1
        With faKiso(i)
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faKiso(i), strData)
        End With
    Next
    
    Close #FileNo
    
    bolCellNoMove = False
    
    Exit Sub
    
ErrorHandle:
    MsgBox "読み込みデータが不足していました。", vbInformation + vbOKOnly
    Close #FileNo

    bolCellNoMove = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    '作業ディレクトリにファイルを書く
    Call DataSave

End Sub

Private Sub faKisoInit()
    Dim Col As Long
    Dim Row As Long
    Dim ix As Integer
    
    '純かぶり
    ix = 0
    With faKiso(ix)
        .Rows = 3
        .Cols = 2
        .FixedRows = 0
        .FixedCols = 1
    
        '文字の詰め方設定
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
        Next
        For Col = 0 To .FixedCols - 1
            .ColAlignment(Col) = flexAlignCenterCenter
        Next
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        
        'データフォーマットの設定
        '.ColFormat(1) = "0.000 "
        
        '見出し行の設定
        .ColWidth(0) = 800
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "上  側"
        .TextMatrix(1, 0) = "下  側"
        .TextMatrix(2, 0) = "側　方" '"サイド"
    End With
    
    '軸方向鉄筋
    For ix = 1 To 2
        With faKiso(ix)
            .Rows = 5
            .Cols = 3
            .FixedRows = 1
            .FixedCols = 1
        
            '文字の詰め方設定
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = .FixedCols To .Cols - 2
                .ColAlignment(Col) = flexAlignRightCenter
            Next
            .ColAlignment(.Cols - 1) = flexAlignLeftCenter
            
            'データフォーマットの設定
            .ColFormat(1) = "0  "
            'For Col = .FixedCols To .Cols - 1
                '.ColFormat(1) = "0.000 "
            'Next
            
            '列幅の設定
            .ColWidth(0) = 1000
            .ColWidth(1) = 700
            .ColWidth(2) = 3800
            
            '見出し行の設定
            If ix = 1 Then
               .TextMatrix(0, 0) = "線路方向"
            Else
               .TextMatrix(0, 0) = "直角方向"
            End If
            .TextMatrix(0, 1) = "鉄筋径"
            .TextMatrix(0, 2) = "ピッチ割り"
        
            .TextMatrix(1, 0) = "上側 1段目"
            .TextMatrix(2, 0) = "上側 2段目"
            .TextMatrix(3, 0) = "下側 1段目"
            .TextMatrix(4, 0) = "下側 2段目"
        End With
    Next
    
    'サイド筋
    ix = 3
    With faKiso(ix)
        .Rows = 2
        .Cols = 3
        .FixedRows = 1
        .FixedCols = 1
    
        'セルの結合設定
        '.MergeCells = flexMergeFixedOnly
        '.MergeCol(0) = True
        
        '文字の詰め方設定
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
        Next
        For Col = 0 To .FixedCols - 1
            .ColAlignment(Col) = flexAlignCenterCenter
        Next
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        .ColAlignment(.Cols - 1) = flexAlignLeftCenter
        
        'データフォーマットの設定
        .ColFormat(1) = "0  "
        '.ColFormat(0) = ""
        
        '列幅の設定
        .ColWidth(0) = 1000
        .ColWidth(1) = 700
        .ColWidth(2) = 3800
        
        '見出し行の設定
        .TextMatrix(0, 0) = ""
        .TextMatrix(1, 0) = "サイド筋"
        .TextMatrix(0, 1) = "鉄筋径"
        .TextMatrix(0, 2) = "ピッチ割り"
    End With

    For ix = 4 To 6 Step 2
        With faKiso(ix)
            .Rows = 1
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
        
            '文字の詰め方設定
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = .FixedCols To .Cols - 1
                .ColAlignment(Col) = flexAlignRightCenter
            Next
            
            'データフォーマットの設定
            '.ColFormat(1) = "0.000 "
            
            '見出し行の設定
            .ColWidth(0) = 800
            .ColWidth(1) = 500
            
            .TextMatrix(0, 0) = "鉄筋径"
        End With
    Next
    
    For ix = 5 To 7 Step 2
        With faKiso(ix)
            .Rows = 3
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
        
            '文字の詰め方設定
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = .FixedCols To .Cols - 1
                .ColAlignment(Col) = flexAlignLeftCenter
            Next
            
            'データフォーマットの設定
'            .ColFormat(1) = "0  "
            
            '見出し行の設定
            .ColWidth(0) = 2200
            .ColWidth(1) = 3600
            
            .TextMatrix(0, 0) = "ｽﾀｰﾗｯﾌﾟのﾋﾟｯﾁ割り"
            .TextMatrix(1, 0) = "1列目の間隔割り付け"
            .TextMatrix(2, 0) = "2列目の間隔割り付け"
        End With
    Next

    'サイズ自動調整
    For ix = 0 To cintNumCtrl - 1
        Call gfaAjustSize(faKiso(ix))
    Next

End Sub

'編集後の処理（データ変更フラグを立てる）
Private Sub faKiso_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKisohaikin)

End Sub

'カーソルがセルに入ったときの処理（フォーカス色の変更）
Private Sub faKiso_EnterCell(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faKiso(Index).CellBackColor = vbButtonFace Then Call faKiso_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKiso(Index).CellBackColor = gclngHighLightColor

End Sub

'グリッドがフォーカスを取得したときの処理（フォーカス色の変更）
Private Sub faKiso_GotFocus(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faKiso(Index).CellBackColor = vbButtonFace Then Call faKiso_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKiso(Index).CellBackColor = gclngHighLightColor

End Sub

'編集前にキー押されたときの処理（次のフォーカス移動先の指定など）
Private Sub faKiso_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    
    If Shift <> 0 Then Exit Sub
    
    With faKiso(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        '次に行くべきセルに移動する
        '返却値 ：  次のグリッドを移動したら1、前のグリッドに移動したら2、
        '           通常は0を、編集にうつるなら3を返す。移動をGridコントロールまかせるなら4を返す｡
        '
        '通常はiMoveID = 0を処理。特別な移動などをするときはiMoveID = 1や2なども処理する。
        '最後の二つの引数は移動先のグリッド
        If gfaMoveCell(faKiso(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faKiso(Index))
    End With

End Sub

'編集中にキー押されたときの処理（次のフォーカス移動先の指定など）
Private Sub faKiso_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKiso(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            '次に行くべきセルに移動する
            '返却値 ：  次のグリッドを移動したら1、前のグリッドに移動したら2、
            '           通常は0を、編集にうつるなら3を返す。移動をGridコントロールまかせるなら4を返す｡
            '
            '通常はiMoveID = 0を処理。特別な移動などをするときはiMoveID = 1や2なども処理する。
            '最後の二つの引数は移動先のグリッド
            If gfaMoveCell(faKiso(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faKiso(Index))
        End If
    End With

End Sub

'セルが移動して出て行くときの処理（フォーカス色の変更）
Private Sub faKiso_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faKiso(Index), faKiso(Index).Row, faKiso(Index).Col)

End Sub

'グリッドがフォーカスを失うときの処理（フォーカス色の変更）
Private Sub faKiso_LostFocus(Index As Integer)
    Call gfaSetCellColor(faKiso(Index), faKiso(Index).Row, faKiso(Index).Col)

End Sub

'右クリックされたときの処理（編集メニュー表示）
Private Sub faKiso_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

'入力データのフォーマット処理
Private Sub faKiso_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
        
    With faKiso(Index)
        
        '列番号毎に処理分けする
        Select Case Col
        'Case 1
        '    .EditText = Format(Val(.EditText), "##0.0")
        Case Else
            If .ColFormat(Col) = "" Then Exit Sub
            .EditText = Format(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub

