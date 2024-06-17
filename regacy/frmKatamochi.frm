VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmKatamochi 
   Caption         =   "片持梁"
   ClientHeight    =   8460
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   10995
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8460
   ScaleWidth      =   10995
   WindowState     =   2  '最大化
   Begin VB.Frame Frame1 
      Caption         =   "純かぶり"
      Height          =   1220
      Left            =   1740
      TabIndex        =   29
      Top             =   300
      Width           =   1875
      Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
         Height          =   675
         Index           =   0
         Left            =   300
         TabIndex        =   0
         Top             =   300
         Width           =   1335
         _ExtentX        =   2355
         _ExtentY        =   1191
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   975
      Index           =   1
      Left            =   900
      TabIndex        =   2
      Top             =   2220
      Width           =   3915
      _ExtentX        =   6906
      _ExtentY        =   1720
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   3
      Left            =   2640
      TabIndex        =   3
      Top             =   6195
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   9
      Left            =   7440
      TabIndex        =   9
      Top             =   1800
      Width           =   1335
      _ExtentX        =   2355
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   12
      Left            =   7440
      TabIndex        =   12
      Top             =   3300
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   16
      Left            =   7500
      TabIndex        =   16
      Top             =   5580
      Width           =   1875
      _ExtentX        =   3307
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   6
      Left            =   7440
      TabIndex        =   6
      Top             =   660
      Width           =   1155
      _ExtentX        =   2037
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   2
      Left            =   1800
      TabIndex        =   1
      Top             =   1800
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   975
      Index           =   4
      Left            =   2640
      TabIndex        =   4
      Top             =   4740
      Width           =   1755
      _ExtentX        =   3096
      _ExtentY        =   1720
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   5
      Left            =   1800
      TabIndex        =   5
      Top             =   6660
      Width           =   3015
      _ExtentX        =   5318
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   7
      Left            =   9180
      TabIndex        =   7
      Top             =   660
      Width           =   1155
      _ExtentX        =   2037
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   8
      Left            =   7440
      TabIndex        =   8
      Top             =   1140
      Width           =   3195
      _ExtentX        =   5636
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   10
      Left            =   9240
      TabIndex        =   10
      Top             =   1800
      Width           =   1335
      _ExtentX        =   2355
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   11
      Left            =   7440
      TabIndex        =   11
      Top             =   2340
      Width           =   2415
      _ExtentX        =   4260
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   13
      Left            =   9300
      TabIndex        =   13
      Top             =   3300
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   14
      Left            =   9300
      TabIndex        =   14
      Top             =   3660
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   15
      Left            =   7440
      TabIndex        =   15
      Top             =   4200
      Width           =   2715
      _ExtentX        =   4789
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   17
      Left            =   9480
      TabIndex        =   17
      Top             =   5580
      Width           =   1875
      _ExtentX        =   3307
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKatamochi 
      Height          =   255
      Index           =   18
      Left            =   7500
      TabIndex        =   18
      Top             =   6180
      Width           =   2775
      _ExtentX        =   4895
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
   Begin VB.Label Label18 
      Appearance      =   0  'ﾌﾗｯﾄ
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  '実線
      Caption         =   " はり "
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
      Left            =   240
      TabIndex        =   33
      Top             =   120
      Width           =   600
   End
   Begin VB.Label Label13 
      AutoSize        =   -1  'True
      Caption         =   "ピッチ割り"
      Height          =   180
      Left            =   6540
      TabIndex        =   32
      Top             =   6240
      Width           =   765
   End
   Begin VB.Label Label12 
      AutoSize        =   -1  'True
      Caption         =   "ピッチ割り"
      Height          =   180
      Left            =   6480
      TabIndex        =   31
      Top             =   4200
      Width           =   765
   End
   Begin VB.Label Label11 
      AutoSize        =   -1  'True
      Caption         =   "ピッチ割り"
      Height          =   180
      Left            =   6480
      TabIndex        =   30
      Top             =   2340
      Width           =   765
   End
   Begin VB.Label Label10 
      AutoSize        =   -1  'True
      Caption         =   "ピッチ割り"
      Height          =   180
      Left            =   900
      TabIndex        =   28
      Top             =   6660
      Width           =   825
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      Caption         =   "ピッチ割り"
      Height          =   180
      Left            =   6480
      TabIndex        =   27
      Top             =   1140
      Width           =   765
   End
   Begin VB.Label Label8 
      AutoSize        =   -1  'True
      Caption         =   "(ロ) ループ筋外鉄筋"
      Height          =   180
      Left            =   660
      TabIndex        =   26
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "(イ) ループ筋内鉄筋"
      Height          =   180
      Left            =   660
      TabIndex        =   25
      Top             =   4740
      Width           =   1575
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "(6) 躯体部幅止め筋"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5580
      TabIndex        =   24
      Top             =   5220
      Width           =   1785
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "(5) スターラップ"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5580
      TabIndex        =   23
      Top             =   3360
      Width           =   1590
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      Caption         =   "(4) 水平補強筋"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5580
      TabIndex        =   22
      Top             =   1800
      Width           =   1395
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      Caption         =   "(3) 下側筋"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   5580
      TabIndex        =   21
      Top             =   660
      Width           =   1005
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "(2) 直 筋"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   360
      TabIndex        =   20
      Top             =   4320
      Width           =   915
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Caption         =   "(1) ループ筋"
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9.75
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   360
      TabIndex        =   19
      Top             =   1800
      Width           =   1200
   End
End
Attribute VB_Name = "frmKatamochi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit


Const cintNumCtrl As Integer = 19
Dim Grid(cintNumCtrl - 1) As Object
Dim intBack(cintNumCtrl - 1) As Integer  '前のグリッドナンバー
Dim intNext(cintNumCtrl - 1) As Integer  '次のグリッドナンバー

Dim bLoadNow As Boolean
Dim bIgnoreHighLight As Boolean
Dim bolCellNoMove As Boolean

Private Sub Form_Load()
    bLoadNow = True
    
    'グリッド初期化
    Call faKatamochiInit
    
    '作業ディレクトリにファイルがあれば読み込む
    If Dir$(gstrTmpDir & gcstrKatamochiFile & gcstrFileExt) <> "" Then
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
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKatamochiFile & gcstrFileExt For Output As #FileNo
    
    'バージョン情報書き込み
    Write #FileNo, gGetCurVersion(gcstrKatamochiFile)
        
    For i = 0 To cintNumCtrl - 1
        With faKatamochi(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faKatamochi(i))
        End With
    Next
    
    Close #FileNo
    bIgnoreHighLight = False
    Exit Sub
    
ErrorHandle:
    MsgBox "ファイル書き込みエラー : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo

    bIgnoreHighLight = False

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
    Dim intOptIdx As Integer
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKatamochiFile & gcstrFileExt For Input As #FileNo
    
    On Error GoTo ErrorHandle
    
    'バージョン情報読み込み
    Input #FileNo, strVer
        
    For i = 0 To cintNumCtrl - 1
        With faKatamochi(i)
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faKatamochi(i), strData)
        End With
    Next
    
    Close #FileNo
    Exit Sub
    
ErrorHandle:
    MsgBox "読み込みデータが不足していました。", vbInformation + vbOKOnly
    Close #FileNo
End Sub

Private Sub Form_Unload(Cancel As Integer)
    '作業ディレクトリにファイルを書く
    Call DataSave

End Sub

'=====================================================================================

'編集後の処理（データ変更フラグを立てる）
Private Sub faKatamochi_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKatamochi)

End Sub

'カーソルがセルに入ったときの処理（フォーカス色の変更）
Private Sub faKatamochi_EnterCell(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faKatamochi(Index).CellBackColor = vbButtonFace Then Call faKatamochi_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKatamochi(Index).CellBackColor = gclngHighLightColor

End Sub

'グリッドがフォーカスを取得したときの処理（フォーカス色の変更）
Private Sub faKatamochi_GotFocus(Index As Integer)
    If bolCellNoMove Then Exit Sub
' 03/07/30 NAGASE
'    If Index = 0 Then Index = 1
    If faKatamochi(Index).CellBackColor = vbButtonFace Then Call faKatamochi_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKatamochi(Index).CellBackColor = gclngHighLightColor

End Sub

'編集前にキー押されたときの処理（次のフォーカス移動先の指定など）
Private Sub faKatamochi_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKatamochi(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        '次に行くべきセルに移動する
        '返却値 ：  次のグリッドを移動したら1、前のグリッドに移動したら2、
        '           通常は0を、編集にうつるなら3を返す。移動をGridコントロールまかせるなら4を返す｡
        '
        '通常はiMoveID = 0を処理。特別な移動などをするときはiMoveID = 1や2なども処理する。
        '最後の二つの引数は移動先のグリッド
        If gfaMoveCell(faKatamochi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faKatamochi(Index))
    End With

End Sub

'編集中にキー押されたときの処理（次のフォーカス移動先の指定など）
Private Sub faKatamochi_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKatamochi(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            '次に行くべきセルに移動する
            '返却値 ：  次のグリッドを移動したら1、前のグリッドに移動したら2、
            '           通常は0を、編集にうつるなら3を返す。移動をGridコントロールまかせるなら4を返す｡
            '
            '通常はiMoveID = 0を処理。特別な移動などをするときはiMoveID = 1や2なども処理する。
            '最後の二つの引数は移動先のグリッド
            If gfaMoveCell(faKatamochi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faKatamochi(Index))
        End If
    End With

End Sub

'セルが移動して出て行くときの処理（フォーカス色の変更）
Private Sub faKatamochi_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faKatamochi(Index), faKatamochi(Index).Row, faKatamochi(Index).Col)

End Sub

'グリッドがフォーカスを失うときの処理（フォーカス色の変更）
Private Sub faKatamochi_LostFocus(Index As Integer)
    Call gfaSetCellColor(faKatamochi(Index), faKatamochi(Index).Row, faKatamochi(Index).Col)

End Sub

'右クリックされたときの処理（編集メニュー表示）
Private Sub faKatamochi_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

'入力データのフォーマット処理
Private Sub faKatamochi_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faKatamochi(Index)
        
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

'=====================================================================================

Private Sub Label4_Click()

End Sub

Private Sub faKatamochiInit()
    Dim Col As Long
    Dim Row As Long
    Dim ix As Integer
    
    '純かぶり
    ix = 0
    With faKatamochi(ix)
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
        
        '列幅の設定
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "上  側"
        .TextMatrix(1, 0) = "下  側"
        .TextMatrix(2, 0) = "側　方"
    End With

    'ループ筋
    ix = 1
    With faKatamochi(ix)
        .Rows = 4
        .Cols = 7
        .FixedRows = 2
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
        
        '見出し部の結合設定
        .MergeCells = flexMergeFixedOnly
        .MergeCol(0) = True
        .MergeRow(0) = True
        
        .TextMatrix(0, 0) = " "
        .TextMatrix(1, 0) = " "
        
        For Col = 1 To 3
            .TextMatrix(0, Col) = "起 点 側"
            .TextMatrix(1, Col) = Chr(Asc("a") + (Col - 1)) & "1"
        Next
                
        For Col = 4 To .Cols - 1
            .TextMatrix(0, Col) = "終 点 側"
            .TextMatrix(1, Col) = Chr(Asc("a") + (Col - 4)) & "2"
        Next
                
        'データフォーマットの設定
        'For Col = .FixedCols To .Cols - 1
            '.ColFormat(Col) = "0.000 "
        'Next
        
        '列幅の設定
        .ColWidth(0) = 700
        For Col = .FixedCols To .Cols - 1
            .ColWidth(Col) = 560
        Next
        
        .TextMatrix(2, 0) = "寸 法"
        .TextMatrix(3, 0) = "段 数"
    End With

    ix = 2
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄筋径"
    End With

    '直筋
    ix = 3
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄筋径"
    End With
    
    ix = 4
    With faKatamochi(ix)
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
'        For Col = .FixedCols To .Cols - 1
'            .ColFormat(1) = "0 "
'        Next
        
        '列幅の設定
        .ColWidth(0) = 1200
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄 筋 径"
        .TextMatrix(1, 0) = "起点側 本数"
        .TextMatrix(2, 0) = "終点側 本数"
    End With

    ix = 5
    With faKatamochi(ix)
        .Rows = 1
        .Cols = 1
        .FixedRows = 0
        .FixedCols = 0
    
        '文字の詰め方設定
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignLeftCenter
        Next
        
        'データフォーマットの設定
        '.ColFormat(0) = ""
        
        '見出し行の設定
        .ColWidth(0) = 3000
    End With

    '下側筋
    ix = 6
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄筋径"
    End With
    
    ix = 7
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "定着長"
    End With

    ix = 8
    With faKatamochi(ix)
        .Rows = 1
        .Cols = 1
        .FixedRows = 0
        .FixedCols = 0
    
        '文字の詰め方設定
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignLeftCenter
        Next
        
        'データフォーマットの設定
        '.ColFormat(0) = ""
        
        '見出し行の設定
        .ColWidth(0) = 3600
    End With

    '水平鉄筋
    ix = 9
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄筋径"
    End With
    
    ix = 10
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "定着長"
    End With

    ix = 11
    With faKatamochi(ix)
        .Rows = 1
        .Cols = 1
        .FixedRows = 0
        .FixedCols = 0
    
        '文字の詰め方設定
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignLeftCenter
        Next
        
        'データフォーマットの設定
        '.ColFormat(0) = ""
        
        '見出し行の設定
        .ColWidth(0) = 2600
    End With

    'スターラップ
    ix = 12
    With faKatamochi(ix)
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
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄筋径"
    End With
    
    ix = 13
    With faKatamochi(ix)
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
        .ColFormat(1) = "0"
        
        '見出し行の設定
        .ColWidth(0) = 700
        .ColWidth(1) = 700
        
        .TextMatrix(0, 0) = "起点側"
    End With

    ix = 14
    With faKatamochi(ix)
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
        .ColFormat(1) = "0"
        
        '見出し行の設定
        .ColWidth(0) = 700
        .ColWidth(1) = 700
        
        .TextMatrix(0, 0) = "終点側"
    End With
    
    ix = 15
    With faKatamochi(ix)
        .Rows = 1
        .Cols = 1
        .FixedRows = 0
        .FixedCols = 0
    
        '文字の詰め方設定
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignLeftCenter
        Next
        
        'データフォーマットの設定
        .ColFormat(0) = ""
        
        '見出し行の設定
        .ColWidth(0) = 2600
    End With

    '躯体部幅止め筋
    ix = 16
    With faKatamochi(ix)
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
        .ColFormat(1) = "0"
        
        '見出し行の設定
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "鉄筋径"
    End With
    
    ix = 17
    With faKatamochi(ix)
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
        .ColFormat(1) = "0"
        
        '見出し行の設定
        .ColWidth(0) = 700
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "定着長"
    End With

    ix = 18
    With faKatamochi(ix)
        .Rows = 1
        .Cols = 1
        .FixedRows = 0
        .FixedCols = 0
    
        '文字の詰め方設定
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignLeftCenter
        Next
        
        'データフォーマットの設定
        .ColFormat(0) = ""
        
        '見出し行の設定
        .ColWidth(0) = 2600
    End With

    'サイズ自動調整
    For ix = 0 To cintNumCtrl - 1
        Call gfaAjustSize(faKatamochi(ix))
    Next

End Sub
