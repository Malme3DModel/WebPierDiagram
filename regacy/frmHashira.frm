VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmHashira 
   Caption         =   "��̔z��"
   ClientHeight    =   9000
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   13260
   ControlBox      =   0   'False
   LinkTopic       =   "Form2"
   LockControls    =   -1  'True
   MDIChild        =   -1  'True
   ScaleHeight     =   9000
   ScaleWidth      =   13260
   WindowState     =   2  '�ő剻
   Begin VB.Frame Frame2 
      Caption         =   "�� ��"
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
         Size            =   11.25
         Charset         =   128
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   8685
      Left            =   0
      TabIndex        =   12
      Top             =   120
      Width           =   12315
      Begin VSFlex6DAOCtl.vsFlexGrid faPattern 
         Height          =   495
         Index           =   0
         Left            =   600
         TabIndex        =   4
         Top             =   1560
         Width           =   5175
         _ExtentX        =   9128
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
      Begin VSFlex6DAOCtl.vsFlexGrid faPattern 
         Height          =   495
         Index           =   1
         Left            =   600
         TabIndex        =   6
         Top             =   2880
         Width           =   5175
         _ExtentX        =   9128
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
      Begin VSFlex6DAOCtl.vsFlexGrid faStar 
         Height          =   1215
         Index           =   0
         Left            =   720
         TabIndex        =   7
         Top             =   3840
         Width           =   4635
         _ExtentX        =   8176
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
      Begin VSFlex6DAOCtl.vsFlexGrid faStar 
         Height          =   495
         Index           =   1
         Left            =   660
         TabIndex        =   8
         Top             =   5760
         Width           =   3735
         _ExtentX        =   6588
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
      Begin VSFlex6DAOCtl.vsFlexGrid faStar 
         Height          =   435
         Index           =   2
         Left            =   660
         TabIndex        =   9
         Top             =   6690
         Width           =   3735
         _ExtentX        =   6588
         _ExtentY        =   767
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   0
         Left            =   480
         TabIndex        =   0
         Top             =   360
         Width           =   1395
         _ExtentX        =   2461
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   1
         Left            =   2640
         TabIndex        =   1
         Top             =   360
         Width           =   1395
         _ExtentX        =   2461
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   2
         Left            =   4680
         TabIndex        =   2
         Top             =   360
         Width           =   1395
         _ExtentX        =   2461
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   3
         Left            =   1800
         TabIndex        =   3
         Top             =   1200
         Width           =   1395
         _ExtentX        =   2461
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   4
         Left            =   1680
         TabIndex        =   5
         Top             =   2400
         Width           =   1395
         _ExtentX        =   2461
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   5
         Left            =   2280
         TabIndex        =   10
         Top             =   7680
         Width           =   1395
         _ExtentX        =   2461
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
      Begin VSFlex6DAOCtl.vsFlexGrid faJunkaburi 
         Height          =   255
         Index           =   6
         Left            =   720
         TabIndex        =   11
         Top             =   8040
         Width           =   3675
         _ExtentX        =   6482
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
      Begin VB.Label Label7 
         Caption         =   "���p����"
         Height          =   180
         Left            =   720
         TabIndex        =   19
         Top             =   2460
         Width           =   840
      End
      Begin VB.Label Label6 
         Caption         =   "���H����"
         Height          =   180
         Left            =   720
         TabIndex        =   18
         Top             =   1200
         Width           =   840
      End
      Begin VB.Label Label5 
         Caption         =   "�������S��"
         Height          =   180
         Left            =   840
         TabIndex        =   17
         Top             =   7680
         Width           =   1020
      End
      Begin VB.Label Label10 
         Caption         =   "�X�^�[���b�v �i2D�ȊO�j"
         Height          =   180
         Left            =   720
         TabIndex        =   16
         Top             =   6420
         Width           =   1800
      End
      Begin VB.Label Label8 
         Caption         =   "�X�^�[���b�v �i2D��ԁj"
         Height          =   180
         Left            =   720
         TabIndex        =   15
         Top             =   5520
         Width           =   1860
      End
      Begin VB.Label Label26 
         Caption         =   "(2) �X�^�[���b�v"
         Height          =   180
         Left            =   540
         TabIndex        =   14
         Top             =   3480
         Width           =   1500
      End
      Begin VB.Label Label24 
         Caption         =   "(1) �������S��"
         Height          =   180
         Left            =   360
         TabIndex        =   13
         Top             =   840
         Width           =   1320
      End
   End
End
Attribute VB_Name = "frmHashira"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const cintNumCtrl As Integer = 12
Dim Grid(cintNumCtrl - 1) As Object
Dim intBack(cintNumCtrl - 1) As Integer  '�O�̃O���b�h�i���o�[
Dim intNext(cintNumCtrl - 1) As Integer  '���̃O���b�h�i���o�[

Dim bIgnoreHighLight As Boolean

Dim bLoadNow As Boolean

Dim bolCellNoMove As Boolean

Private Sub faPattern_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faPattern(Index)
        
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

Private Sub Form_Load()

    bLoadNow = True
    
    Call faStarInit
    Call faPatternInit
    Call faJunkaburiInit
    
    '��ƃf�B���N�g���Ƀt�@�C��������Γǂݍ���
    If Dir$(gstrTmpDir & gcstrHashiraFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    Me.Show
    
    Call MakeTabOrder
    
    bLoadNow = False
   
End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  'Win98�̃o�O����R�[�h
  Me.Hide

End Sub


Public Sub MakeTabOrder()
    '�e�O���b�h�R���g���[����TabIndex�𒲂ׂ�
    Dim MyControl
    Dim MyCtrlName As String, MyCtrlVisible As Boolean
    Dim intTabIndex(cintNumCtrl - 1) As Integer, intOrder(cintNumCtrl - 1) As Integer
    Dim i As Integer, j As Integer, T As Integer
    Dim intNumCtrl As Integer
    
    i = 0
    For Each MyControl In Me.Controls    ' �R���g���[���̊e�v�f�ɑ΂��ČJ��Ԃ��܂��B
        MyCtrlName = MyControl.Name
        MyCtrlVisible = MyControl.Visible
        If Left(MyCtrlName, 2) = "fa" And MyCtrlVisible = True Then     '��2������"fa"��Visible�ɂȂ��Ă���O���b�h�̂ݔz��ɓ���
            MyControl.Tag = i
            Set Grid(i) = MyControl
            intTabIndex(i) = MyControl.TabIndex
            intOrder(i) = i
            i = i + 1
        End If
    Next
    intNumCtrl = i
    
    'TabIndex�̏��������ɕ��בւ���
    For i = 0 To intNumCtrl - 1
        For j = intNumCtrl - 1 To i + 1 Step -1
            If intTabIndex(intOrder(j)) < intTabIndex(intOrder(j - 1)) Then
                T = intOrder(j): intOrder(j) = intOrder(j - 1): intOrder(j - 1) = T
            End If
        Next
    Next
    
    'intBack,intNext�ɑO��̃O���b�h�ԍ���ݒ肷��
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
    Open gstrTmpDir & gcstrHashiraFile & gcstrFileExt For Output As #FileNo
    
    '�o�[�W������񏑂�����
    Write #FileNo, gGetCurVersion(gcstrHashiraFile)

    For i = 0 To 2
        With faStar(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faStar(i))
        End With
    Next
    
    '�������S�� �o�E�����Ԃ�
    For i = 0 To 6
        With faJunkaburi(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faJunkaburi(i))
        End With
    Next
    
    For i = 0 To 1
        With faPattern(i)
            Write #FileNo, .Rows - .FixedRows
            Write #FileNo, .Cols - .FixedCols
            Write #FileNo, gGridToStr(faPattern(i))
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
    Open gstrTmpDir & gcstrHashiraFile & gcstrFileExt For Input As #FileNo
    
    On Error GoTo ErrorHandle
    
    '�o�[�W�������ǂݍ���
    Input #FileNo, strVer
    
    For i = 0 To 2
        With faStar(i)
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faStar(i), strData)
        End With
    Next
    
    '�������S�� �a�E�����Ԃ�
    For i = 0 To 6
        With faJunkaburi(i)
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faJunkaburi(i), strData)
        End With
    Next

    For i = 0 To 1
        With faPattern(i)
            Input #FileNo, lngRows
            Input #FileNo, lngCols
            Input #FileNo, strData
        
            Call gStrPasteToGrid(faPattern(i), strData)
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

Private Sub SetFocusNextTab(ByRef rKeyAscii As Integer)
    If rKeyAscii = vbKeyReturn Then
        rKeyAscii = 0
        SendKeys "{TAB}", True  '�z���g�� Sendkeys �͂��܂�]�܂����Ȃ��E�E�E
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

Private Sub faStarInit()
    Dim Col As Long
    Dim Index As Integer
    
    Index = 0
    With faStar(Index)
        .Redraw = False
        
        .Rows = 7
        .Cols = 8
        .FixedRows = 3
        .FixedCols = 1
        
        .Clear
        
        .ColWidth(0) = 500
        .ColWidth(1) = 900
        .ColWidth(2) = 900
        .ColWidth(3) = 900
        .ColWidth(4) = 900
        .ColWidth(5) = 900
        .ColWidth(6) = 900
        .ColWidth(7) = 900
        
        '�����̋l�ߕ��ݒ�
        .ColAlignment(-1) = flexAlignRightCenter
        .FixedAlignment(-1) = flexAlignCenterCenter
        .ColAlignment(0) = flexAlignCenterCenter
        
        .MergeCells = flexMergeFixedOnly
        .MergeRow(0) = True
        .MergeRow(1) = True
        .MergeCol(0) = True
        .MergeCol(1) = True
        
        .TextMatrix(0, 0) = " "
        .TextMatrix(1, 0) = " "
        .TextMatrix(2, 0) = " "
        .TextMatrix(3, 0) = "�@"
        .TextMatrix(4, 0) = "�A"
        .TextMatrix(5, 0) = "�B"
        .TextMatrix(6, 0) = "�C"
        
        .TextMatrix(0, 1) = "��" & vbCrLf & "��" & vbCrLf & "��"
        .TextMatrix(1, 1) = "��" & vbCrLf & "��" & vbCrLf & "��"
        .TextMatrix(2, 1) = "��" & vbCrLf & "��" & vbCrLf & "��"
        
        .TextMatrix(0, 2) = "�O����"
        .TextMatrix(0, 3) = "�O����"
        .TextMatrix(1, 2) = " "
        .TextMatrix(1, 3) = " "
        .TextMatrix(2, 2) = "�a"
        .TextMatrix(2, 3) = "�s�b�`"
        
        .TextMatrix(0, 4) = "������"
        .TextMatrix(0, 5) = "������"
        .TextMatrix(1, 4) = "���H����"
        .TextMatrix(1, 5) = "���H����"
        .TextMatrix(2, 4) = "�a"
        .TextMatrix(2, 5) = "�s�b�`"
        
        .TextMatrix(0, 6) = "������"
        .TextMatrix(0, 7) = "������"
        .TextMatrix(1, 6) = "���p����"
        .TextMatrix(1, 7) = "���p����"
        .TextMatrix(2, 6) = "�a"
        .TextMatrix(2, 7) = "�s�b�`"
        
        Call gfaAjustSize(faStar(Index))
        
        .Redraw = True
    End With
    
    For Index = 1 To 2
        With faStar(Index)
            .Redraw = False
            
            .Rows = 2
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
            
            .Clear
            
            .ColWidth(0) = 500
            .ColWidth(1) = 1500
            
            '�����̋l�ߕ��ݒ�
            .ColAlignment(-1) = flexAlignRightCenter
            .FixedAlignment(-1) = flexAlignCenterCenter
            .ColAlignment(0) = flexAlignCenterCenter
            
            .TextMatrix(0, 0) = "�C"
            .TextMatrix(1, 0) = "��"
            
            Call gfaAjustSize(faStar(Index))
    
            .Redraw = True
        End With
    Next
    
End Sub

Private Sub faStar_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_���r.SetDataChgFlag(gcfrmHashira)

End Sub

Private Sub faStar_EnterCell(Index As Integer)
    If bIgnoreHighLight = False Then faStar(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faStar_GotFocus(Index As Integer)
    If bIgnoreHighLight = False Then faStar(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faStar_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faStar(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        If gfaMoveCell(faStar(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faStar(Index))
    End With

End Sub

Private Sub faStar_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faStar(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
    
            If gfaMoveCell(faStar(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faStar(Index))
        End If
    End With

End Sub

Private Sub faStar_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faStar(Index), faStar(Index).Row, faStar(Index).Col)

End Sub

Private Sub faStar_LostFocus(Index As Integer)
    Call gfaSetCellColor(faStar(Index), faStar(Index).Row, faStar(Index).Col)

End Sub

Private Sub faStar_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_���r.mnuEdit

End Sub

Private Sub faStar_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faStar(Index)
        
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

Private Sub faPatternInit()
    Dim Index As Integer
    Dim Col As Long
     
    For Index = 0 To 1
        With faPattern(Index)
            .Redraw = False
            
            .FixedRows = 1
            .FixedCols = 1
            .Rows = 3
            .Cols = 4
            
            .Clear
            
            .ColWidth(0) = 700
            .ColWidth(1) = 3200 '4600
            .ColWidth(2) = 700
            .ColWidth(3) = 700
            
            '�����̋l�ߕ��ݒ�
            .ColAlignment(-1) = flexAlignRightCenter
            .FixedAlignment(-1) = flexAlignCenterCenter
            .ColAlignment(0) = flexAlignCenterCenter
            .ColAlignment(1) = flexAlignLeftCenter
            
            .TextMatrix(0, 1) = "�s�b�`����"
            .TextMatrix(0, 2) = "�{��"
            .TextMatrix(0, 3) = "�s�b�`"
            
            .TextMatrix(1, 0) = "1�i��"
            .TextMatrix(2, 0) = "2�i��"
            
            Call gfaAjustSize(faPattern(Index))
            
            .Redraw = True
        End With
    Next
    
End Sub

Private Sub faPattern_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_���r.SetDataChgFlag(gcfrmHashira)

End Sub

Private Sub faPattern_EnterCell(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faPattern(Index).CellBackColor = vbButtonFace Then Call faPattern_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faPattern(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faPattern_GotFocus(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faPattern(Index).CellBackColor = vbButtonFace Then Call faPattern_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faPattern(Index).CellBackColor = gclngHighLightColor

End Sub

Private Sub faPattern_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faPattern(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        If gfaMoveCell(faPattern(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faPattern(Index))
    End With

End Sub

Private Sub faPattern_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faPattern(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            Call gSetChgFlagByInkey(Me.Name, KeyCode)
            
            If gfaMoveCell(faPattern(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faPattern(Index))
        End If
    End With

End Sub

Private Sub faPattern_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faPattern(Index), faPattern(Index).Row, faPattern(Index).Col)

End Sub

Private Sub faPattern_LostFocus(Index As Integer)
    Call gfaSetCellColor(faPattern(Index), faPattern(Index).Row, faPattern(Index).Col)

End Sub

Private Sub faPattern_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_���r.mnuEdit

End Sub

Private Sub faJunkaburiInit()
    Dim Col As Long
    Dim Row As Long
    Dim Index As Integer
    
    For Index = 0 To 5
        With faJunkaburi(Index)
            .Rows = 1
            .Cols = 2
            .FixedRows = 0
            .FixedCols = 1
        
            '�����̋l�ߕ��ݒ�
            .ColAlignment(-1) = flexAlignRightCenter
            .FixedAlignment(-1) = flexAlignCenterCenter
            .ColAlignment(0) = flexAlignCenterCenter
            
            '�f�[�^�t�H�[�}�b�g�̐ݒ�
            '.ColFormat(1) = "0.000 "
            
            '�񕝂̐ݒ�
            .ColWidth(0) = 1200
            .ColWidth(1) = 1000
        
            '�T�C�Y��������
            Call gfaAjustHeight(faJunkaburi(Index), .Rows)
            Call gfaAjustWidth(faJunkaburi(Index), .Cols)
            '.Width = .Width + MDIForm_���r.SysInfo.ScrollBarSize
            
        End With
    Next
    
    Index = 6
    With faJunkaburi(Index)
        .Rows = 1
        .Cols = 1
        .FixedRows = 0
        .FixedCols = 0
    
        '�����̋l�ߕ��ݒ�
        .ColAlignment(-1) = flexAlignLeftCenter
        .FixedAlignment(-1) = flexAlignCenterCenter
        
        '�f�[�^�t�H�[�}�b�g�̐ݒ�
        '.ColFormat(1) = "0.000 "
        
        '�񕝂̐ݒ�
        .ColWidth(0) = 2000
    
        '�T�C�Y��������
        Call gfaAjustHeight(faJunkaburi(Index), .Rows)
        Call gfaAjustWidth(faJunkaburi(Index), .Cols)
        '.Width = .Width + MDIForm_���r.SysInfo.ScrollBarSize
    End With
    
    faJunkaburi(0).TextMatrix(0, 0) = "�����Ԃ�"
    faJunkaburi(1).TextMatrix(0, 0) = "�V�[���Ԃ�"
    faJunkaburi(2).TextMatrix(0, 0) = "2�i�ڒ���"
    faJunkaburi(3).TextMatrix(0, 0) = "�S�،a"
    faJunkaburi(4).TextMatrix(0, 0) = "�S�،a"
    faJunkaburi(5).TextMatrix(0, 0) = "�S�،a"
    
End Sub


'�ҏW��̏����i�f�[�^�ύX�t���O�𗧂Ă�j
Private Sub faJunkaburi_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_���r.SetDataChgFlag(gcfrmKatamochi)

End Sub

'�J�[�\�����Z���ɓ������Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faJunkaburi_EnterCell(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faJunkaburi(Index).CellBackColor = vbButtonFace Then Call faJunkaburi_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faJunkaburi(Index).CellBackColor = gclngHighLightColor

End Sub

'�O���b�h���t�H�[�J�X���擾�����Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faJunkaburi_GotFocus(Index As Integer)
    If bolCellNoMove Then Exit Sub
    
    If faJunkaburi(Index).CellBackColor = vbButtonFace Then Call faJunkaburi_KeyDown(Index, vbKeyReturn, 0)
    If bIgnoreHighLight = False Then faJunkaburi(Index).CellBackColor = gclngHighLightColor

End Sub

'�ҏW�O�ɃL�[�����ꂽ�Ƃ��̏����i���̃t�H�[�J�X�ړ���̎w��Ȃǁj
Private Sub faJunkaburi_KeyDown(Index As Integer, KeyCode As Integer, Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faJunkaburi(Index)
        lngRow = .Row
        lngCol = .Col
    
        Call gSetChgFlagByInkey(Me.Name, KeyCode)
        
        '���ɍs���ׂ��Z���Ɉړ�����
        '�ԋp�l �F  ���̃O���b�h���ړ�������1�A�O�̃O���b�h�Ɉړ�������2�A
        '           �ʏ��0���A�ҏW�ɂ���Ȃ�3��Ԃ��B�ړ���Grid�R���g���[���܂�����Ȃ�4��Ԃ��
        '
        '�ʏ��iMoveID = 0�������B���ʂȈړ��Ȃǂ�����Ƃ���iMoveID = 1��2�Ȃǂ���������B
        '�Ō�̓�̈����͈ړ���̃O���b�h
        If gfaMoveCell(faJunkaburi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
    
        Call gfaPutCurCell(faJunkaburi(Index))
    End With

End Sub

'�ҏW���ɃL�[�����ꂽ�Ƃ��̏����i���̃t�H�[�J�X�ړ���̎w��Ȃǁj
Private Sub faJunkaburi_KeyDownEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, KeyCode As Integer, ByVal Shift As Integer)
    Dim lngRow As Long
    Dim lngCol As Long
    Dim iMoveID As Integer
    
    If Shift <> 0 Then Exit Sub
    
    With faJunkaburi(Index)
        If KeyCode = vbKeyReturn Then
            lngRow = .Row
            lngCol = .Col
        
            '���ɍs���ׂ��Z���Ɉړ�����
            '�ԋp�l �F  ���̃O���b�h���ړ�������1�A�O�̃O���b�h�Ɉړ�������2�A
            '           �ʏ��0���A�ҏW�ɂ���Ȃ�3��Ԃ��B�ړ���Grid�R���g���[���܂�����Ȃ�4��Ԃ��
            '
            '�ʏ��iMoveID = 0�������B���ʂȈړ��Ȃǂ�����Ƃ���iMoveID = 1��2�Ȃǂ���������B
            '�Ō�̓�̈����͈ړ���̃O���b�h
            If gfaMoveCell(faJunkaburi(Index), lngRow, lngCol, KeyCode, False, Grid(intNext(.Tag)), Grid(intBack(.Tag))) = 0 Then .Select lngRow, lngCol
            
            Call gfaPutCurCell(faJunkaburi(Index))
        End If
    End With

End Sub

'�Z�����ړ����ďo�čs���Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faJunkaburi_LeaveCell(Index As Integer)
    Call gfaSetCellColor(faJunkaburi(Index), faJunkaburi(Index).Row, faJunkaburi(Index).Col)

End Sub

'�O���b�h���t�H�[�J�X�������Ƃ��̏����i�t�H�[�J�X�F�̕ύX�j
Private Sub faJunkaburi_LostFocus(Index As Integer)
    Call gfaSetCellColor(faJunkaburi(Index), faJunkaburi(Index).Row, faJunkaburi(Index).Col)

End Sub

'�E�N���b�N���ꂽ�Ƃ��̏����i�ҏW���j���[�\���j
Private Sub faJunkaburi_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then Me.PopupMenu MDIForm_���r.mnuEdit

End Sub

'���̓f�[�^�̃t�H�[�}�b�g����
Private Sub faJunkaburi_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    With faJunkaburi(Index)
        
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

