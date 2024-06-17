VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmKKouzou 
   Caption         =   "形状寸法"
   ClientHeight    =   8400
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   15240
   ControlBox      =   0   'False
   LinkTopic       =   "Form4"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   8400
   ScaleWidth      =   15240
   WindowState     =   2  '最大化
   Begin VB.TextBox txtShindo 
      Alignment       =   1  '右揃え
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   1
      Left            =   9810
      MultiLine       =   -1  'True
      TabIndex        =   6
      Top             =   360
      Width           =   810
   End
   Begin VB.TextBox txtShindo 
      Alignment       =   1  '右揃え
      BeginProperty Font 
         Name            =   "ＭＳ ゴシック"
         Size            =   9
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   270
      Index           =   0
      Left            =   7590
      MultiLine       =   -1  'True
      TabIndex        =   5
      Top             =   360
      Width           =   810
   End
   Begin VB.CheckBox chkFootingBothTepa 
      Caption         =   "フーチング両方テーパ付き"
      BeginProperty Font 
         Name            =   "ＭＳ Ｐゴシック"
         Size            =   8.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   195
      Left            =   3840
      TabIndex        =   14
      Top             =   2955
      Width           =   2220
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faShakaku 
      Height          =   570
      Left            =   8820
      TabIndex        =   4
      Top             =   3360
      Width           =   960
      _ExtentX        =   1693
      _ExtentY        =   1005
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
      FocusRect       =   0
      HighLight       =   0
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   10
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   0
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
   Begin VB.PictureBox Picture2 
      Appearance      =   0  'ﾌﾗｯﾄ
      BorderStyle     =   0  'なし
      ForeColor       =   &H80000008&
      Height          =   1500
      Left            =   6660
      Picture         =   "frmKKouzou.frx":0000
      ScaleHeight     =   1500
      ScaleWidth      =   2415
      TabIndex        =   13
      TabStop         =   0   'False
      Top             =   5040
      Width           =   2412
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'ﾌﾗｯﾄ
      BorderStyle     =   0  'なし
      ForeColor       =   &H80000008&
      Height          =   3915
      Left            =   585
      Picture         =   "frmKKouzou.frx":22DC
      ScaleHeight     =   3915
      ScaleWidth      =   5295
      TabIndex        =   12
      TabStop         =   0   'False
      Top             =   3765
      Width           =   5300
   End
   Begin VSFlex6DAOCtl.vsFlexGrid faKutai_1 
      Height          =   2325
      Left            =   180
      TabIndex        =   0
      Top             =   360
      Width           =   1875
      _ExtentX        =   3316
      _ExtentY        =   4110
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
      Rows            =   50
      Cols            =   10
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKutai_2 
      Height          =   2325
      Left            =   2175
      TabIndex        =   1
      Top             =   360
      Width           =   1875
      _ExtentX        =   3316
      _ExtentY        =   4110
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
      Rows            =   50
      Cols            =   10
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
   Begin VSFlex6DAOCtl.vsFlexGrid faKutai_3 
      Height          =   2325
      Left            =   4155
      TabIndex        =   2
      Top             =   360
      Width           =   1875
      _ExtentX        =   3316
      _ExtentY        =   4110
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
      Rows            =   50
      Cols            =   10
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
   Begin VSFlex6DAOCtl.vsFlexGrid faRHanti 
      Height          =   570
      Left            =   7440
      TabIndex        =   3
      Top             =   3360
      Width           =   960
      _ExtentX        =   1693
      _ExtentY        =   1005
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
      FocusRect       =   0
      HighLight       =   0
      AllowSelection  =   -1  'True
      AllowBigSelection=   -1  'True
      AllowUserResizing=   0
      SelectionMode   =   0
      GridLines       =   1
      GridLinesFixed  =   2
      GridLineWidth   =   1
      Rows            =   50
      Cols            =   10
      FixedRows       =   1
      FixedCols       =   1
      RowHeightMin    =   0
      RowHeightMax    =   0
      ColWidthMin     =   0
      ColWidthMax     =   0
      ExtendLastCol   =   0   'False
      FormatString    =   ""
      ScrollTrack     =   0   'False
      ScrollBars      =   0
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
   Begin VSFlex6DAOCtl.vsFlexGrid faHaichi_2 
      Height          =   1440
      Left            =   9135
      TabIndex        =   8
      Top             =   1470
      Width           =   2355
      _ExtentX        =   4154
      _ExtentY        =   2540
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
      Rows            =   50
      Cols            =   10
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
   Begin VSFlex6DAOCtl.vsFlexGrid faHaichi_1 
      Height          =   1440
      Left            =   6495
      TabIndex        =   7
      Top             =   1470
      Width           =   2355
      _ExtentX        =   4154
      _ExtentY        =   2540
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
      Rows            =   50
      Cols            =   10
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
   Begin VB.Label Label27 
      Caption         =   "１．線路方向"
      Height          =   180
      Left            =   6495
      TabIndex        =   23
      Top             =   1200
      Width           =   960
   End
   Begin VB.Label Label26 
      Caption         =   "2．線路直角方向"
      Height          =   180
      Left            =   9165
      TabIndex        =   22
      Top             =   1200
      Width           =   1290
   End
   Begin VB.Label Label25 
      Caption         =   "[ 杭 配 置 ]"
      Height          =   180
      Left            =   8100
      TabIndex        =   21
      Top             =   900
      Width           =   1020
   End
   Begin VB.Label lblKibanShindo 
      Caption         =   "杭 長 :"
      Height          =   180
      Left            =   8820
      TabIndex        =   20
      Top             =   420
      Width           =   510
   End
   Begin VB.Label lblHyojunShindo 
      Caption         =   "杭 径 :"
      Height          =   180
      Left            =   6600
      TabIndex        =   19
      Top             =   420
      Width           =   510
   End
   Begin VB.Label Label24 
      Caption         =   "Ｄ ="
      Height          =   180
      Left            =   7200
      TabIndex        =   18
      Top             =   420
      Width           =   315
   End
   Begin VB.Label Label23 
      Caption         =   "Ｌ ="
      Height          =   195
      Left            =   9420
      TabIndex        =   17
      Top             =   375
      Width           =   315
   End
   Begin VB.Label Label22 
      Caption         =   "m"
      Height          =   180
      Left            =   8445
      TabIndex        =   16
      Top             =   420
      Width           =   285
   End
   Begin VB.Label Label21 
      Caption         =   "m"
      Height          =   180
      Left            =   10665
      TabIndex        =   15
      Top             =   375
      Width           =   285
   End
   Begin VB.Label Label2 
      Caption         =   "１．形状寸法"
      Height          =   180
      Left            =   120
      TabIndex        =   11
      Top             =   90
      Width           =   960
   End
   Begin VB.Label Label1 
      Caption         =   "躯体寸法"
      Height          =   180
      Left            =   2790
      TabIndex        =   10
      Top             =   90
      Width           =   720
   End
   Begin VB.Label Label7 
      Caption         =   "電柱荷重"
      Height          =   180
      Left            =   780
      TabIndex        =   9
      Top             =   5940
      Visible         =   0   'False
      Width           =   720
   End
End
Attribute VB_Name = "frmKKouzou"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
'------------------------------------------------------------------------
'※このフォームの注意点
'------------------------------------------------------------------------
'vsFlexGridをコントロール配列にすると、二度めにフォームがロードされた際に
'「コントロール配列の要素がない」エラーになってしまうので、名前は別にしておいてコード内で擬似的に配列化している。
'この原因は不明。バグか？

'Enter等で移動したいコントロールの数
Const cintNumCtrl As Integer = 7
Dim Grid(cintNumCtrl - 1) As Object
Dim intBack(cintNumCtrl - 1) As Integer  '前のグリッドナンバー
Dim intNext(cintNumCtrl - 1) As Integer  '次のグリッドナンバー

Dim bIgnoreHighLight As Boolean

Dim faKutai(2) As vsFlexGrid
Dim faHaichi(1) As vsFlexGrid

Dim bLoadNow As Boolean

Private Sub chkFootingBothTepa_Click()
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKKouzou)

End Sub

Private Sub faKutai_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKKouzou)

End Sub

Private Sub faKutai_EnterCell(Index As Integer)
    If bIgnoreHighLight = False Then faKutai(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faKutai_GotFocus(Index As Integer)
    If bIgnoreHighLight = False Then faKutai(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faKutai_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim intBackID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKutai(Index)
        lngRow = .Row
        lngCol = .Col
        intBackID = Index - 1
        If intBackID < 0 Then intBackID = cintNumCtrl - 2

        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        '左右キーによるグリッド間移動を変則的にサポート
        If KeyCode = vbKeyLeft Then
            With Grid(intBackID)
                If Index = 0 Then
                    If lngRow = faKutai(Index).FixedRows Then
                        .Select .Rows - 1, .Cols - 1
                        .SetFocus
                    Else
                        Grid(2).Select lngRow - 1, 1
                        Grid(2).SetFocus
                    End If
                Else
                    .Select lngRow, 1
                    .SetFocus
                End If
            End With
        ElseIf KeyCode = vbKeyRight Then
            With Grid(Index + 1)
                If Index = 2 Then
                    If lngRow = faKutai(Index).Rows - 1 Then
                        .Select .FixedRows, .FixedCols
                        .SetFocus
                    Else
                        Grid(0).Select lngRow + 1, 1
                        Grid(0).SetFocus
                    End If
                Else
                    .Select lngRow, 1
                    .SetFocus
                End If
            End With
        ElseIf gfaMoveCell(faKutai(Index), lngRow, lngCol, KeyCode, True, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then
            .Select lngRow, lngCol
        End If
    End With

End Sub

Private Sub faKutai_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim intBackID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKutai(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
            intBackID = Index - 1
            If intBackID < 0 Then intBackID = cintNumCtrl - 2
            If gfaMoveCell(faKutai(Index), lngRow, lngCol, KeyCode, True, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
        End If
    End With

End Sub

Private Sub faKutai_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faKutai(Index), faKutai(Index).Row, faKutai(Index).Col)

End Sub

Private Sub faKutai_LostFocus(Index As Integer)
    Call gfaSetCellColor(faKutai(Index), faKutai(Index).Row, faKutai(Index).Col)

End Sub

Private Sub faKutai_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

Private Sub faKutai_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faKutai(Index)
        
        Select Case Row
        Case Else
            .EditText = Format$(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub


Private Sub faKutai_1_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    Call faKutai_AfterEdit(0, Row, Col)

End Sub

Private Sub faKutai_1_EnterCell()
    Call faKutai_EnterCell(0)

End Sub

Private Sub faKutai_1_GotFocus()
    Call faKutai_GotFocus(0)

End Sub

Private Sub faKutai_1_KeyDown(KeyCode As Integer, Shift As Integer)
    Call faKutai_KeyDown(0, KeyCode, Shift)
    
End Sub

Private Sub faKutai_1_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Call faKutai_KeyDownEdit(0, Row, Col, KeyCode, Shift)

End Sub

Private Sub faKutai_1_LeaveCell()
    Call faKutai_LeaveCell(0)

End Sub

Private Sub faKutai_1_LostFocus()
    Call faKutai_LostFocus(0)

End Sub

Private Sub faKutai_1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call faKutai_MouseDown(0, Button, Shift, X, Y)

End Sub

Private Sub faKutai_1_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    Call faKutai_ValidateEdit(0, Row, Col, Cancel)

End Sub

Private Sub faKutai_2_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    Call faKutai_AfterEdit(1, Row, Col)

End Sub

Private Sub faKutai_2_EnterCell()
    Call faKutai_EnterCell(1)

End Sub

Private Sub faKutai_2_GotFocus()
    Call faKutai_GotFocus(1)

End Sub

Private Sub faKutai_2_KeyDown(KeyCode As Integer, Shift As Integer)
    Call faKutai_KeyDown(1, KeyCode, Shift)
    
End Sub

Private Sub faKutai_2_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Call faKutai_KeyDownEdit(1, Row, Col, KeyCode, Shift)

End Sub

Private Sub faKutai_2_LeaveCell()
    Call faKutai_LeaveCell(1)

End Sub

Private Sub faKutai_2_LostFocus()
    Call faKutai_LostFocus(1)

End Sub

Private Sub faKutai_2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call faKutai_MouseDown(1, Button, Shift, X, Y)

End Sub

Private Sub faKutai_2_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    Call faKutai_ValidateEdit(1, Row, Col, Cancel)

End Sub

Private Sub faKutai_3_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    Call faKutai_AfterEdit(2, Row, Col)

End Sub

Private Sub faKutai_3_EnterCell()
    Call faKutai_EnterCell(2)

End Sub

Private Sub faKutai_3_GotFocus()
    Call faKutai_GotFocus(2)

End Sub

Private Sub faKutai_3_KeyDown(KeyCode As Integer, Shift As Integer)
    Call faKutai_KeyDown(2, KeyCode, Shift)
    
End Sub

Private Sub faKutai_3_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Call faKutai_KeyDownEdit(2, Row, Col, KeyCode, Shift)

End Sub

Private Sub faKutai_3_LeaveCell()
    Call faKutai_LeaveCell(2)

End Sub

Private Sub faKutai_3_LostFocus()
    Call faKutai_LostFocus(2)

End Sub

Private Sub faKutai_3_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call faKutai_MouseDown(2, Button, Shift, X, Y)

End Sub

Private Sub faKutai_3_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    Call faKutai_ValidateEdit(2, Row, Col, Cancel)

End Sub

Private Sub fashakaku_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKKouzou)

End Sub

Private Sub fashakaku_EnterCell()
    If bIgnoreHighLight = False Then faShakaku.CellBackColor = gclngHighLightColor

End Sub

Private Sub fashakaku_GotFocus()
    If bIgnoreHighLight = False Then faShakaku.CellBackColor = gclngHighLightColor

End Sub

Private Sub fashakaku_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    
    If Shift <> 0 Then Exit Sub
    
    With faShakaku
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        Dim iMoveFlag  As Integer
        iMoveFlag = gfaMoveCell(faShakaku, lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag)))
    
        If iMoveFlag = 0 Then
            .Select lngRow, lngCol
        ElseIf iMoveFlag = 1 Then
            txtShindo(0).SetFocus
        End If
    End With

End Sub

Private Sub fashakaku_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    
    If Shift <> 0 Then Exit Sub
    
    With faShakaku
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            Dim iMoveFlag As Integer
            iMoveFlag = gfaMoveCell(faShakaku, lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag)))
        
            If iMoveFlag = 0 Then
                .Select lngRow, lngCol
            ElseIf iMoveFlag = 1 Then
                txtShindo(0).SetFocus
            End If
        End If
    End With

End Sub

Private Sub fashakaku_LeaveCell()
    Call gfaSetCellColor(faShakaku, faShakaku.Row, faShakaku.Col)

End Sub

Private Sub fashakaku_LostFocus()
    Call gfaSetCellColor(faShakaku, faShakaku.Row, faShakaku.Col)

End Sub

Private Sub fashakaku_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

Private Sub fashakaku_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faShakaku
        
        Select Case Row
        Case Else
            .EditText = Format$(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub

Private Sub faRHanti_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKKouzou)

End Sub

Private Sub faRHanti_EnterCell()
    If bIgnoreHighLight = False Then faRHanti.CellBackColor = gclngHighLightColor

End Sub

Private Sub faRHanti_GotFocus()
    If bIgnoreHighLight = False Then faRHanti.CellBackColor = gclngHighLightColor

End Sub

Private Sub faRHanti_KeyDown(KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    
    If Shift <> 0 Then Exit Sub
    
    With faRHanti
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
    
        Dim iMoveFlag  As Integer
        iMoveFlag = gfaMoveCell(faRHanti, lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag)))
        
        If iMoveFlag = 0 Then
            .Select lngRow, lngCol
        End If
    
        Call gfaPutCurCell(faRHanti)
    
    End With

End Sub

Private Sub faRHanti_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    
    If Shift <> 0 Then Exit Sub
    
    With faRHanti
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            Dim iMoveFlag As Integer
            iMoveFlag = gfaMoveCell(faRHanti, lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag)))
        
            If iMoveFlag = 0 Then
                .Select lngRow, lngCol
            End If
        End If
    End With

End Sub

Private Sub faRHanti_LeaveCell()
    Call gfaSetCellColor(faRHanti, faRHanti.Row, faRHanti.Col)

End Sub

Private Sub faRHanti_LostFocus()
    Call gfaSetCellColor(faRHanti, faRHanti.Row, faRHanti.Col)

End Sub

Private Sub faRHanti_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

Private Sub faRHanti_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faRHanti
        
        Select Case Row
        Case Else
            .EditText = Format$(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub

Private Sub Form_Load()
    bLoadNow = True
    
'    Set Grid(0) = faKutai_1:    faKutai_1.Tag = 0
'    Set Grid(1) = faKutai_2:    faKutai_2.Tag = 1
'    Set Grid(2) = faKutai_3:    faKutai_3.Tag = 2
'    Set Grid(3) = faHeni_1:     faHeni_1.Tag = 3
'    Set Grid(4) = faTouka:      faTouka.Tag = 4
'    Set Grid(5) = faSekkei:     faSekkei.Tag = 5    '2000/02/07
'    Set Grid(6) = faKoufuku:    faKoufuku.Tag = 6   '2000/01/14
'    Set Grid(7) = faDokaburi:   faDokaburi.Tag = 7
'    Set Grid(8) = faChuku:      faChuku.Tag = 8     '2000/01/30
'    Set Grid(9) = faShakaku:    faShakaku.Tag = 9     '2000/04/17

    'vsFlexGridをコントロール配列にするとエラーが発生することがあるようなので、
    '別の名前で配置して、擬似的なコントロール配列にする
    Set faKutai(0) = faKutai_1
    Set faKutai(1) = faKutai_2
    Set faKutai(2) = faKutai_3

    '2002/09/22
    Set faHaichi(0) = faHaichi_1
    Set faHaichi(1) = faHaichi_2
    
    
    Call faKutaiInit
    Call faShakakuInit  '2000/04/17
    Call faRHantiInit
    
    '2002/09/22
    Call faHaichiInit(0)
    Call faHaichiInit(1)
    
    Dim i As Integer
    
    
    '作業ディレクトリにファイルがあれば読み込む
    If Dir$(gstrTmpDir & gcstrKKouzouFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    Me.Show
    Call MakeTabOrder

'    Grid(0).SetFocus
    
    
    bLoadNow = False
    
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  'Win98のバグ回避コード
  Me.Hide

End Sub

'faKutaiの初期化処理
Private Sub faKutaiInit()
    Dim Row As Long
    Dim Col As Long
    Dim i As Integer
    
    For i = 0 To 2
        With faKutai(i)
            .Rows = 10
            .Cols = 2
            .FixedRows = 1
            .FixedCols = 1
        
            .ColWidth(0) = 900
            .ColWidth(1) = 900
            
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
        
            'データフォーマットの設定
            For Col = .FixedCols To .Cols - 1
                .ColFormat(Col) = "0.000 "
                .ColAlignment(Col) = flexAlignRightCenter
            Next
            
            '見出し行の設定
            Row = 0
            .TextMatrix(Row, 1) = "寸 法 (m)"
        
            Select Case i
            Case 0
                For Row = 1 To 6
                    .TextMatrix(Row, 0) = "B " & Format$(Row)
                Next
                .TextMatrix(7, 0) = "FB1"
                .TextMatrix(8, 0) = "FB2"
                .TextMatrix(9, 0) = "FB3"
            Case 1
                For Row = 1 To 6
                    .TextMatrix(Row, 0) = "W " & Format$(Row)
                Next
                .TextMatrix(7, 0) = "ﾌｰﾁﾝｸﾞ幅"
                .TextMatrix(8, 0) = "梁ｺｰﾅｰR1"
                .TextMatrix(9, 0) = "柱ｺｰﾅｰR2"
            Case 2
                For Row = 1 To 6
                    .TextMatrix(Row, 0) = "H " & Format$(Row)
                Next
                .TextMatrix(7, 0) = " " '"中空 h1"
                .TextMatrix(8, 0) = " " '"中空 h2"
                .TextMatrix(9, 0) = " " '"中空 B "
            End Select
                
            Call gfaAjustSize(faKutai(i))
        
        End With
    Next

End Sub

'fashakakuの初期化処理
Private Sub faShakakuInit()
    Dim Row As Long
    Dim Col As Long
    
    With faShakaku
        .Rows = 2
        .Cols = 1
        .FixedRows = 1
        .FixedCols = 0
    
        .ColWidth(0) = 1050
'        .ColWidth(1) = 910 '1100
'        .ColWidth(2) = 910 '1100
'        .ColWidth(3) = 910 '1100
        
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
        Next
'        For Col = 0 To .FixedCols - 1
'            .ColAlignment(Col) = flexAlignLeftCenter
'        Next
        
        'データフォーマットの設定
        For Col = .FixedCols To .Cols - 1
            .ColFormat(Col) = "0.0000 "
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        
        '見出し行の設定
        Row = 0
        .TextMatrix(Row, 0) = "斜角(度)"
'        .TextMatrix(Row, 2) = "終局限界"
'        .TextMatrix(Row, 3) = "応答変位"
        
'        Row = Row + 1
'        .TextMatrix(Row, 0) = "線路方向"
'
'        Row = Row + 1
'        .TextMatrix(Row, 0) = "線路直角方向"
        
        Call gfaAjustSize(faShakaku)
        
    End With

End Sub

'faRHantiの初期化処理
Private Sub faRHantiInit()
    Dim Row As Long
    Dim Col As Long
    
    With faRHanti
        .Rows = 2
        .Cols = 1
        .FixedRows = 1
        .FixedCols = 0
    
        .ColWidth(0) = 1050
        
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
        Next
        
        'データフォーマットの設定
        For Col = .FixedCols To .Cols - 1
            .ColFormat(Col) = "0.000 "
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        
        '見出し行の設定
        Row = 0
        .TextMatrix(Row, 0) = "片持梁ｺｰﾅｰ"
        .TextMatrix(1, 0) = ""    'Default値
        
        Call gfaAjustSize(faRHanti)
        
    End With

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
    Open gstrTmpDir & gcstrKKouzouFile & gcstrFileExt For Output As #FileNo
    
    'バージョン情報書き込み
    Write #FileNo, gGetCurVersion(gcstrKKouzouFile)
        
    For i = 0 To 2
        With faKutai(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faKutai(i))
        End With
    Next
    
    For i = 0 To 1
        With faHaichi(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faHaichi(i))
        End With
    Next
    
    With faShakaku
        Write #FileNo, .Rows - .FixedRows
        Write #FileNo, .Cols - .FixedCols
        Write #FileNo, gGridToStr(faShakaku)
    End With
    
    For i = 0 To 1
        With txtShindo(i)
            Write #FileNo, .TEXT
        End With
    Next
    
    'フーチング両方テーパ付き チェックボックス
    Write #FileNo, chkFootingBothTepa.Value
    
    'faRHanti
    With faRHanti
        Write #FileNo, .Rows - .FixedRows
        Write #FileNo, .Cols - .FixedCols
        Write #FileNo, gGridToStr(faRHanti)
    End With
    
    
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
    Dim i As Integer
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    Dim faTmp As vsFlexGrid
    Dim iCheckVal As Integer
    
    On Error GoTo ErrorHandle
    bIgnoreHighLight = True
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKKouzouFile & gcstrFileExt For Input As #FileNo
   
    'バージョン情報読み込み
    Input #FileNo, strVer
        
    For i = 0 To 2
        With faKutai(i)
            Set faTmp = faKutai(i)
            
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faTmp, strData)
        End With
    Next
    
    For i = 0 To 1
        With faHaichi(i)
            Set faTmp = faHaichi(i)
            
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faTmp, strData)
        End With
    Next
    
    With faShakaku
        Input #FileNo, lngRows
        Input #FileNo, lngCols
        Input #FileNo, strData
        
        Call gStrPasteToGrid(faShakaku, strData)
    End With
    
    For i = 0 To 1
        With txtShindo(i)
            Input #FileNo, strData
            .TEXT = strData
        End With
    Next
    
    'フーチング両方テーパ付き チェックボックス
    Input #FileNo, iCheckVal
    chkFootingBothTepa.Value = iCheckVal
    
    'faRHanti
    Input #FileNo, lngRows
    Input #FileNo, lngCols
    Input #FileNo, strData
    
    Call gStrPasteToGrid(faRHanti, strData)
    
    
    bIgnoreHighLight = False
    Close #FileNo
    Exit Sub
    
ErrorHandle:
    MsgBox "読み込みデータが不足していました。", vbInformation + vbOKOnly
    bIgnoreHighLight = False
    Close #FileNo
End Sub

Private Sub Form_Unload(Cancel As Integer)
    '作業ディレクトリにファイルを書く
    Call DataSave

End Sub

Public Sub MakeTabOrder()
    '各グリッドコントロールのTabIndexを調べる
    Dim MyControl
    Dim MyCtrlName As String, MyCtrlVisible As Boolean
    Dim intTabIndex(cintNumCtrl - 1) As Integer, intOrder(cintNumCtrl - 1) As Integer
    Dim i As Integer, j As Integer, T As Integer
    Dim intNumCtrl As Integer
    
    i = 0
    For Each MyControl In Me.Controls    ' コントロールの各要素に対して繰り返します。
        MyCtrlName = MyControl.Name
        MyCtrlVisible = MyControl.Visible
        If Left(MyCtrlName, 2) = "fa" And MyCtrlVisible = True Then     '頭2文字が"fa"でVisibleになっているグリッドのみ配列に入る
            If InStr("faSharyou", MyCtrlName) = 0 Then                  'faSharyouはここで除外されている
                MyControl.Tag = i
                Set Grid(i) = MyControl
                intTabIndex(i) = MyControl.TabIndex
                intOrder(i) = i
                i = i + 1
            End If
        End If
    Next
    intNumCtrl = i
    
    'TabIndexの小さい順に並べ替える
    For i = 0 To intNumCtrl - 1
        For j = intNumCtrl - 1 To i + 1 Step -1
            If intTabIndex(intOrder(j)) < intTabIndex(intOrder(j - 1)) Then
                T = intOrder(j): intOrder(j) = intOrder(j - 1): intOrder(j - 1) = T
            End If
        Next
    Next
    
    'intBack,intNextに前後のグリッド番号を設定する
    For i = 0 To intNumCtrl - 1
        j = intOrder(i)
        Select Case i
        Case 0
            intBack(j) = intOrder(intNumCtrl - 1)
            intNext(j) = intOrder(i + 1)
        Case intNumCtrl - 1
            intBack(j) = intOrder(i - 1)
            intNext(j) = intOrder(0)
        Case Else
            intBack(j) = intOrder(i - 1)
            intNext(j) = intOrder(i + 1)
        End Select
    Next

End Sub

Private Sub SetFocusNextTab(ByRef rKeyAscii As Integer)
    If rKeyAscii = vbKeyReturn Then
        rKeyAscii = 0
        SendKeys "{TAB}", True  'ホントは Sendkeys はあまり望ましくない・・・
    End If
    
End Sub

Private Sub SelectAllText()
    Dim txtTemp As TextBox
    Set txtTemp = Me.ActiveControl
    
    With txtTemp
        .SelStart = 0
        .SelLength = Len(.TEXT)
    End With

End Sub

Private Function FormattingJikusen(ByRef rsEtxt As String) As String
    FormattingJikusen = Format$(Val(rsEtxt), "0.000")
    If FormattingJikusen = "0.000" Then FormattingJikusen = "自動"
    
End Function

'faHaichiの初期化処理
Private Sub faHaichiInit(Index As Integer)
    Dim Col As Long
    Dim Row As Long
    
    With faHaichi(Index)
        .Rows = 21
        .Cols = 3
        .FixedRows = 1
        .FixedCols = 1
    
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
        .ColFormat(1) = "0.000 "
        .ColFormat(2) = "0 "
        
        '見出し行の設定
        Col = 0
        .ColWidth(Col) = 450
        .TextMatrix(0, Col) = "No"
        
        Col = Col + 1
        .ColWidth(Col) = 850
        If Index = 0 Then .TextMatrix(0, Col) = "Ｘn (m)" Else .TextMatrix(0, Col) = "Ｙn (m)"
    
        Col = Col + 1
        .ColWidth(Col) = 600
        .TextMatrix(0, Col) = "本数"
        
        For Row = .FixedRows To .Rows - 1
            .TextMatrix(Row, 0) = Format$(Row)
        Next
        
        Call gfaAjustHeight(faHaichi(Index), 6)
        Call gfaAjustWidth(faHaichi(Index), .Cols)
        .Width = .Width + MDIForm_橋脚.SysInfo.ScrollBarSize
        
    End With

End Sub

Private Sub faHaichi_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    Call MDIForm_橋脚.SetDataChgFlag(gcfrmKKouzou)

End Sub

Private Sub faHaichi_EnterCell(Index As Integer)
    If bIgnoreHighLight = False Then faHaichi(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faHaichi_GotFocus(Index As Integer)
    If bIgnoreHighLight = False Then faHaichi(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faHaichi_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveFlag As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faHaichi(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
    
        Select Case Index
        Case 0
            iMoveFlag = gfaMoveCell(faHaichi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag)))
            
            If iMoveFlag = 0 Then
                .Select lngRow, lngCol
            ElseIf iMoveFlag = 2 Then
                txtShindo(1).SetFocus
            End If
        
        Case 1
            If gfaMoveCell(faHaichi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
        End Select
    
        Call gfaPutCurCell(faHaichi(Index))
    End With

End Sub

Private Sub faHaichi_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveFlag As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faHaichi(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            Select Case Index
            Case 0
                If gfaMoveCell(faHaichi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            Case 1
                iMoveFlag = gfaMoveCell(faHaichi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag)))
                
                If iMoveFlag = 0 Then
                    .Select lngRow, lngCol
                ElseIf iMoveFlag = 1 Then
                    txtShindo(0).SetFocus
                End If
            
            End Select
        
            Call gfaPutCurCell(faHaichi(Index))
        
        End If
    End With

End Sub

Private Sub faHaichi_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faHaichi(Index), faHaichi(Index).Row, faHaichi(Index).Col)

End Sub

Private Sub faHaichi_LostFocus(Index As Integer)
    Call gfaSetCellColor(faHaichi(Index), faHaichi(Index).Row, faHaichi(Index).Col)

End Sub

Private Sub faHaichi_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_橋脚.mnuEdit

End Sub

Private Sub faHaichi_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faHaichi(Index)
        
        Select Case Row
        Case Else
            .EditText = Format$(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub

Private Sub chkBeta_Click()
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKuiHaichi)

End Sub

Private Sub chkGunKui_Click()
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKuiHaichi)

End Sub

Private Sub chkTaishin_Click()
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKuiHaichi)

End Sub

Private Sub faHaichi_1_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    Call faHaichi_AfterEdit(0, Row, Col)

End Sub

Private Sub faHaichi_1_EnterCell()
    Call faHaichi_EnterCell(0)

End Sub

Private Sub faHaichi_1_GotFocus()
    Call faHaichi_GotFocus(0)

End Sub

Private Sub faHaichi_1_KeyDown(KeyCode As Integer, Shift As Integer)
    Call faHaichi_KeyDown(0, KeyCode, Shift)
    
End Sub

Private Sub faHaichi_1_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Call faHaichi_KeyDownEdit(0, Row, Col, KeyCode, Shift)

End Sub

Private Sub faHaichi_1_LeaveCell()
    Call faHaichi_LeaveCell(0)

End Sub

Private Sub faHaichi_1_LostFocus()
    Call faHaichi_LostFocus(0)

End Sub

Private Sub faHaichi_1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call faHaichi_MouseDown(0, Button, Shift, X, Y)

End Sub

Private Sub faHaichi_1_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    Call faHaichi_ValidateEdit(0, Row, Col, Cancel)

End Sub

Private Sub faHaichi_2_AfterEdit(ByVal Row As Long, ByVal Col As Long)
    Call faHaichi_AfterEdit(1, Row, Col)

End Sub

Private Sub faHaichi_2_EnterCell()
    Call faHaichi_EnterCell(1)

End Sub

Private Sub faHaichi_2_GotFocus()
    Call faHaichi_GotFocus(1)

End Sub

Private Sub faHaichi_2_KeyDown(KeyCode As Integer, Shift As Integer)
    Call faHaichi_KeyDown(1, KeyCode, Shift)
    
End Sub

Private Sub faHaichi_2_KeyDownEdit(ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Call faHaichi_KeyDownEdit(1, Row, Col, KeyCode, Shift)

End Sub

Private Sub faHaichi_2_LeaveCell()
    Call faHaichi_LeaveCell(1)

End Sub

Private Sub faHaichi_2_LostFocus()
    Call faHaichi_LostFocus(1)

End Sub

Private Sub faHaichi_2_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call faHaichi_MouseDown(1, Button, Shift, X, Y)

End Sub

Private Sub faHaichi_2_ValidateEdit(ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    Call faHaichi_ValidateEdit(1, Row, Col, Cancel)

End Sub

Private Sub txtShindo_Change(Index As Integer)
    If Not bLoadNow Then Call MDIForm_橋脚.SetDataChgFlag(gcfrmKKouzou)

End Sub

Private Sub txtShindo_GotFocus(Index As Integer)
    Call SelectAllText
End Sub

Private Sub txtShindo_KeyPress(Index As Integer, KeyAscii As Integer)
    Call SetFocusNextTab(KeyAscii)
End Sub
