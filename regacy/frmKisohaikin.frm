VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmKisohaikin 
   Caption         =   "�t�[�`���O"
   ClientHeight    =   9060
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   11595
   ControlBox      =   0   'False
   BeginProperty Font 
      Name            =   "�l�r �o�S�V�b�N"
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
   WindowState     =   2  '�ő剻
   Begin VB.Frame Frame4 
      Caption         =   "�����Ԃ�  mm"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
            Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
         Name            =   "�l�r �S�V�b�N"
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
      Caption         =   "���p����"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "�T�C�h�S��"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "���H����"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Appearance      =   0  '�ׯ�
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  '����
      Caption         =   " ��b�z�ؐ} "
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "(2) �X�^�[���b�v"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "���p����"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "���H����"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "(1) �� �S ��"
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
Dim intBack(cintNumCtrl - 1) As Integer  '�O�̃O���b�h�i���o�[
Dim intNext(cintNumCtrl - 1) As Integer  '���̃O���b�h�i���o�[

Dim bIgnoreHighLight As Boolean
Dim bLoadNow As Boolean
Dim bolCellNoMove As Boolean

Private Sub Form_Load()

    bLoadNow = True
    
    '�O���b�h������
    Call faKisoInit
    
    '��ƃf�B���N�g���Ƀt�@�C��������Γǂݍ���
    If Dir$(gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    bLoadNow = False
   
    '�O���b�h�ړ����̐ݒ�
    Me.Show
    
    '�^�u�ړ��ݒ�
    Call gMakeTabOrder(Me, cintNumCtrl, Grid(), intBack(), intNext())

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  'Win98�̃o�O����R�[�h
  Me.Hide

End Sub

'�O���b�h�̃f�[�^���t�@�C���ɏ�������
'�t�@�C���t�H�[�}�b�g��
'   �o�[�W����������,
'   �P�ڂ̃O���b�h�s���i�Œ�s�������j,
'   ��,�i�Œ�s�������j
'   �f�[�^������,
'   2�ڂ̃O���b�h�s��,
'   ��,
'   �f�[�^������,
'   �E�E�E
'�̂悤�ɂȂ��Ă���B
'�O���b�h�̌��Ȃǂ͊܂܂�Ă��Ȃ��̂ŁA�o�[�W�����������ăR�[�h�ŊǗ�����B
Public Sub DataSave()
    Dim i As Integer
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    bIgnoreHighLight = True
    
    bolCellNoMove = True
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKisohaikinFile & gcstrFileExt For Output As #FileNo
    
    '�o�[�W������񏑂�����
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
    MsgBox "�t�@�C���������݃G���[ : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo
    bolCellNoMove = False
    bIgnoreHighLight = False
    If Me.Visible = True Then If TypeOf Me.ActiveControl Is vsFlexGrid Then Me.ActiveControl.CellBackColor = gclngHighLightColor

End Sub

'�O���b�h�̃f�[�^���t�@�C������ǂݍ���
'�t�@�C���t�H�[�}�b�g��
'   �o�[�W����������,
'   �P�ڂ̃O���b�h�s���i�Œ�s�������j,
'   ��,�i�Œ�s�������j
'   �f�[�^������,
'   2�ڂ̃O���b�h�s��,
'   ��,
'   �f�[�^������,
'   �E�E�E
'�̂悤�ɂȂ��Ă���B
'�O���b�h�̌��Ȃǂ͊܂܂�Ă��Ȃ��̂ŁA�o�[�W�����������ăR�[�h�ŊǗ�����B
'�o�[�W�����ɍ��ق�����ꍇ�́AMDIForm_���r.faLoadBuf�Ɉ�U������ŁA��������K�؂ȃZ���փR�s�[����悤�ɂ���
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
    
    '�o�[�W�������ǂݍ���
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
    MsgBox "�ǂݍ��݃f�[�^���s�����Ă��܂����B", vbInformation + vbOKOnly
    Close #FileNo

    bolCellNoMove = False
End Sub

Private Sub Form_Unload(Cancel As Integer)
    '��ƃf�B���N�g���Ƀt�@�C��������
    Call DataSave

End Sub

Private Sub faKisoInit()
    Dim Col As Long
    Dim Row As Long
    Dim ix As Integer
    
    '�����Ԃ�
    ix = 0
    With faKiso(ix)
        .Rows = 3
        .Cols = 2
        .FixedRows = 0
        .FixedCols = 1
    
        '�����̋l�ߕ��ݒ�
        For Col = 0 To .Cols - 1
            .FixedAlignment(Col) = flexAlignCenterCenter
        Next
        For Col = 0 To .FixedCols - 1
            .ColAlignment(Col) = flexAlignCenterCenter
        Next
        For Col = .FixedCols To .Cols - 1
            .ColAlignment(Col) = flexAlignRightCenter
        Next
        
        '�f�[�^�t�H�[�}�b�g�̐ݒ�
        '.ColFormat(1) = "0.000 "
        
        '���o���s�̐ݒ�
        .ColWidth(0) = 800
        .ColWidth(1) = 500
        
        .TextMatrix(0, 0) = "��  ��"
        .TextMatrix(1, 0) = "��  ��"
        .TextMatrix(2, 0) = "���@��" '"�T�C�h"
    End With
    
    '�������S��
    For ix = 1 To 2
        With faKiso(ix)
            .Rows = 5
            .Cols = 3
            .FixedRows = 1
            .FixedCols = 1
        
            '�����̋l�ߕ��ݒ�
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
            
            '�f�[�^�t�H�[�}�b�g�̐ݒ�
            .ColFormat(1) = "0  "
            'For Col = .FixedCols To .Cols - 1
                '.ColFormat(1) = "0.000 "
            'Next
            
            '�񕝂̐ݒ�
            .ColWidth(0) = 1000
            .ColWidth(1) = 700
            .ColWidth(2) = 3800
            
            '���o���s�̐ݒ�
            If ix = 1 Then
               .TextMatrix(0, 0) = "���H����"
            Else
               .TextMatrix(0, 0) = "���p����"
            End If
            .TextMatrix(0, 1) = "�S�،a"
            .TextMatrix(0, 2) = "�s�b�`����"
        
            .TextMatrix(1, 0) = "�㑤 1�i��"
            .TextMatrix(2, 0) = "�㑤 2�i��"
            .TextMatrix(3, 0) = "���� 1�i��"
            .TextMatrix(4, 0) = "���� 2�i��"
        End With
    Next
    
    '�T�C�h��
    ix = 3
    With faKiso(ix)
        .Rows = 2
        .Cols = 3
        .FixedRows = 1
        .FixedCols = 1
    
        '�Z���̌����ݒ�
        '.MergeCells = flexMergeFixedOnly
        '.MergeCol(0) = True
        
        '�����̋l�ߕ��ݒ�
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
        
        '�f�[�^�t�H�[�}�b�g�̐ݒ�
        .ColFormat(1) = "0  "
        '.ColFormat(0) = ""
        
        '�񕝂̐ݒ�
        .ColWidth(0) = 1000
        .ColWidth(1) = 700
        .ColWidth(2) = 3800
        
        '���o���s�̐ݒ�
        .TextMatrix(0, 0) = ""
        .TextMatrix(1, 0) = "�T�C�h��"
        .TextMatrix(0, 1) = "�S�،a"
        .TextMatrix(0, 2) = "�s�b�`����"
    End With

    For ix = 4 To 6 Step 2
        With faKiso(ix)
            .Rows = 1
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
        
            '�����̋l�ߕ��ݒ�
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = .FixedCols To .Cols - 1
                .ColAlignment(Col) = flexAlignRightCenter
            Next
            
            '�f�[�^�t�H�[�}�b�g�̐ݒ�
            '.ColFormat(1) = "0.000 "
            
            '���o���s�̐ݒ�
            .ColWidth(0) = 800
            .ColWidth(1) = 500
            
            .TextMatrix(0, 0) = "�S�،a"
        End With
    Next
    
    For ix = 5 To 7 Step 2
        With faKiso(ix)
            .Rows = 3
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
        
            '�����̋l�ߕ��ݒ�
            For Col = 0 To .Cols - 1
                .FixedAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = 0 To .FixedCols - 1
                .ColAlignment(Col) = flexAlignCenterCenter
            Next
            For Col = .FixedCols To .Cols - 1
                .ColAlignment(Col) = flexAlignLeftCenter
            Next
            
            '�f�[�^�t�H�[�}�b�g�̐ݒ�
'            .ColFormat(1) = "0  "
            
            '���o���s�̐ݒ�
            .ColWidth(0) = 2200
            .ColWidth(1) = 3600
            
            .TextMatrix(0, 0) = "���ׯ�߂��߯�����"
            .TextMatrix(1, 0) = "1��ڂ̊Ԋu����t��"
            .TextMatrix(2, 0) = "2��ڂ̊Ԋu����t��"
        End With
    Next

    '�T�C�Y��������
    For ix = 0 To cintNumCtrl - 1
        Call gfaAjustSize(faKiso(ix))
    Next

End Sub

'�ҏW��̏����i�f�[�^�ύX�t���O�𗧂Ă�j
Private Sub faKiso_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_���r.SetDataChgFlag(gcfrmKisohaikin)

End Sub

'�J�[�\�����Z���ɓ������Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faKiso_EnterCell(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faKiso(Index).CellBackColor = vbButtonFace Then Call faKiso_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKiso(Index).CellBackColor = gclngHighLightColor

End Sub

'�O���b�h���t�H�[�J�X���擾�����Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faKiso_GotFocus(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faKiso(Index).CellBackColor = vbButtonFace Then Call faKiso_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faKiso(Index).CellBackColor = gclngHighLightColor

End Sub

'�ҏW�O�ɃL�[�����ꂽ�Ƃ��̏����i���̃t�H�[�J�X�ړ���̎w��Ȃǁj
Private Sub faKiso_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    
    If Shift <> 0 Then Exit Sub
    
    With faKiso(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        '���ɍs���ׂ��Z���Ɉړ�����
        '�ԋp�l �F  ���̃O���b�h���ړ�������1�A�O�̃O���b�h�Ɉړ�������2�A
        '           �ʏ��0���A�ҏW�ɂ���Ȃ�3��Ԃ��B�ړ���Grid�R���g���[���܂�����Ȃ�4��Ԃ��
        '
        '�ʏ��iMoveID = 0�������B���ʂȈړ��Ȃǂ�����Ƃ���iMoveID = 1��2�Ȃǂ���������B
        '�Ō�̓�̈����͈ړ���̃O���b�h
        If gfaMoveCell(faKiso(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faKiso(Index))
    End With

End Sub

'�ҏW���ɃL�[�����ꂽ�Ƃ��̏����i���̃t�H�[�J�X�ړ���̎w��Ȃǁj
Private Sub faKiso_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faKiso(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            '���ɍs���ׂ��Z���Ɉړ�����
            '�ԋp�l �F  ���̃O���b�h���ړ�������1�A�O�̃O���b�h�Ɉړ�������2�A
            '           �ʏ��0���A�ҏW�ɂ���Ȃ�3��Ԃ��B�ړ���Grid�R���g���[���܂�����Ȃ�4��Ԃ��
            '
            '�ʏ��iMoveID = 0�������B���ʂȈړ��Ȃǂ�����Ƃ���iMoveID = 1��2�Ȃǂ���������B
            '�Ō�̓�̈����͈ړ���̃O���b�h
            If gfaMoveCell(faKiso(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faKiso(Index))
        End If
    End With

End Sub

'�Z�����ړ����ďo�čs���Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faKiso_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faKiso(Index), faKiso(Index).Row, faKiso(Index).Col)

End Sub

'�O���b�h���t�H�[�J�X�������Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faKiso_LostFocus(Index As Integer)
    Call gfaSetCellColor(faKiso(Index), faKiso(Index).Row, faKiso(Index).Col)

End Sub

'�E�N���b�N���ꂽ�Ƃ��̏����i�ҏW���j���[�\���j
Private Sub faKiso_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_���r.mnuEdit

End Sub

'���̓f�[�^�̃t�H�[�}�b�g����
Private Sub faKiso_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
        
    With faKiso(Index)
        
        '��ԍ����ɏ�����������
        Select Case Col
        'Case 1
        '    .EditText = Format(Val(.EditText), "##0.0")
        Case Else
            If .ColFormat(Col) = "" Then Exit Sub
            .EditText = Format(Val(.EditText), .ColFormat(Col))
        End Select

    End With

End Sub

