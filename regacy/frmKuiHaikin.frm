VERSION 5.00
Object = "{C5DE3F80-3376-11D2-BAA4-04F205C10000}#1.0#0"; "vsFlex6d.ocx"
Begin VB.Form frmKuiHaikin 
   Caption         =   "�Y�z��"
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
   WindowState     =   2  '�ő剻
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
   Begin VB.Label Label7 
      Caption         =   "�Y��["
      Height          =   195
      Left            =   10440
      TabIndex        =   14
      Top             =   1365
      Width           =   615
   End
   Begin VB.Label Label6 
      Caption         =   "�@�B�p�� �� K"
      Height          =   195
      Left            =   8520
      TabIndex        =   13
      Top             =   2640
      Width           =   1215
   End
   Begin VB.Label Label5 
      Appearance      =   0  '�ׯ�
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BorderStyle     =   1  '����
      Caption         =   " �Y�z�ؐ} "
      BeginProperty Font 
         Name            =   "�l�r �o�S�V�b�N"
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
      Caption         =   "���ڌp�� �� A"
      Height          =   195
      Left            =   8520
      TabIndex        =   10
      Top             =   2400
      Width           =   1215
   End
   Begin VB.Label Label3 
      Caption         =   "<-- �Y ��"
      Height          =   255
      Left            =   3360
      TabIndex        =   8
      Top             =   4110
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "�g���؁E�X�y�[�T�["
      Height          =   180
      Left            =   4680
      TabIndex        =   6
      Top             =   3120
      Width           =   1500
   End
   Begin VB.Label Label1 
      Caption         =   "�X�^�[���b�v"
      Height          =   180
      Left            =   360
      TabIndex        =   4
      Top             =   3120
      Width           =   930
   End
   Begin VB.Label Label16 
      AutoSize        =   -1  'True
      Caption         =   "�� �� �� �S ��"
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
Dim intBack(cintNumCtrl - 1) As Integer  '�O�̃O���b�h�i���o�[
Dim intNext(cintNumCtrl - 1) As Integer  '���̃O���b�h�i���o�[

Dim bIgnoreHighLight As Boolean
Dim bLoadNow As Boolean
Dim bolCellNoMove As Boolean

Private Sub Form_Load()
    Dim i As Integer

    Call faKuiHaikinInit
    
    '��ƃf�B���N�g���Ƀt�@�C��������Γǂݍ���
    If Dir$(gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt) <> "" Then
        Call DataLoad
    End If
    
    Me.Show
    
    '�^�u�ړ��ݒ�
    Call gMakeTabOrder(Me, cintNumCtrl, Grid(), intBack(), intNext())

End Sub

Private Sub Form_QueryUnload(Cancel As Integer, UnloadMode As Integer)
  'Win98�̃o�O����R�[�h
  Me.Hide

End Sub

Private Sub Form_Unload(Cancel As Integer)
    '��ƃf�B���N�g���Ƀt�@�C��������
    Call DataSave

End Sub

Private Sub faKuiHaikinInit()
    Dim Col As Long
    Dim Row As Long
    Dim ix As Integer
    
    '��ؑ��{����
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
            
            '���o���s�̐ݒ�
            Col = 0
            .MergeCol(Col) = False
            .ColWidth(Col) = 1100
            .ColWidth(1) = 700
            
            Select Case ix
            Case 0
                .TextMatrix(0, Col) = "��ؑ��{��"
            
            Case 1
                .TextMatrix(0, Col) = "�Y���蒅��"
            
            Case 2
                .TextMatrix(0, Col) = "���Ԃ� mm"
            
            Case 3
                .ColWidth(Col) = 2400
                .TextMatrix(0, Col) = "�X�y�[�T�[1��������{��"
            
            End Select
               
        End With
    Next
        
    '��S�ؔz�u
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
        
        '���o���s�̐ݒ�
        Col = 0
        .MergeCol(Col) = False
        .ColWidth(Col) = 900
        .TextMatrix(0, Col) = "No."
        .TextMatrix(1, Col) = "1�ԓS��"
        .TextMatrix(2, Col) = "2�ԓS��"
        
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "�a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "�S�ؒ�L1"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "�p�蒷"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "�a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "�S�ؒ�L2"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "�p�蒷"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "�a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "�S�ؒ�L3"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "�p�蒷"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "�a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "�S�ؒ�L4"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "�p�蒷"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 500
        .TextMatrix(0, Col) = "�a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "�S�ؒ�L5"
'        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 630
        .TextMatrix(0, Col) = "���Ԃ�"
'        .ColFormat(Col) = "0 "
    End With

    '���@
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
        
        '���o���s�̐ݒ�
        Col = 0
        .MergeCol(Col) = False
        .ColWidth(Col) = 700
        .TextMatrix(0, Col) = ""
        
        For Row = 1 To .Rows - 1
            .TextMatrix(Row, Col) = Format$(-2 + (Row - IIf(Row >= 3, 0, 1)))
        Next
        
        Col = Col + 1
        .ColWidth(Col) = 750
        .TextMatrix(0, Col) = "�S�،a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 650
        .TextMatrix(0, Col) = "��Ԑ�"
        .ColFormat(Col) = "0 "
    
        Col = Col + 1
        .ColWidth(Col) = 600
        .TextMatrix(0, Col) = "�� �u"
        .ColFormat(Col) = "0 "
    End With

    '�g���ċ�
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
        
        '���o���s�̐ݒ�
        Col = 0
        .MergeCol(Col) = False
        .ColWidth(Col) = 1000
        .TextMatrix(0, Col) = ""
        .TextMatrix(1, Col) = "�g���ċ�"
        .TextMatrix(2, Col) = "��߰��"
        .ColAlignment(2) = flexAlignLeftCenter

'        For Row = 1 To .Rows - 1
'            .TextMatrix(Row, Col) = Format$(Row)
'        Next
        
        Col = Col + 1
        .ColWidth(Col) = 800
        .TextMatrix(0, Col) = "�S�،a"
        .ColFormat(Col) = "0 "
        
        Col = Col + 1
        .ColWidth(Col) = 3000
        .TextMatrix(0, Col) = "�s�b�`����"
'        .ColFormat(Col) = "0 "
    End With

    '�T�C�Y��������
    For ix = 0 To cintNumCtrl - 1
        Call gfaAjustSize(faKuiHaikin(ix))
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
    Dim FileNo As Integer
    
    On Error GoTo ErrorHandle
    bIgnoreHighLight = True
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt For Output As #FileNo
    
    '�o�[�W������񏑂�����
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
    MsgBox "�t�@�C���������݃G���[ : " & Format$(Err.Number) & vbCrLf & Err.Description, vbCritical + vbOKOnly
    Close #FileNo   '�I�[�v�����Ȃ��ŃN���[�Y���Ă��G���[�ɂ͂Ȃ�Ȃ�
    
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
    Dim FileNo As Integer
    Dim strVer As String
    Dim lngRows As Long
    Dim lngCols As Long
    Dim strData As String
    
    On Error GoTo ErrorHandle
    
    FileNo = FreeFile
    Open gstrTmpDir & gcstrKuiHaikinFile & gcstrFileExt For Input As #FileNo
    
    '�o�[�W�������ǂݍ���
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
    MsgBox "�ǂݍ��݃f�[�^���s�����Ă��܂����B", vbInformation + vbOKOnly
    Close #FileNo   '�I�[�v�����Ȃ��ŃN���[�Y���Ă��G���[�ɂ͂Ȃ�Ȃ�

End Sub

Private Sub faKuiHaikin_AfterEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long)
    If bolCellNoMove = False Then Call MDIForm_���r.SetDataChgFlag(gcfrmKuiHaikin)

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
    If Button = vbRightButton Then Me.PopupMenu MDIForm_���r.mnuEdit

End Sub

Private Sub faKuiHaikin_ValidateEdit(Index As Integer, ByVal Row As Long, ByVal Col As Long, Cancel As Boolean)
    
    With faKuiHaikin(Index)
        
        Select Case Col
'        Case 1, 2, 3, 6
'           If InStr(1, .EditText, ".", vbTextCompare) = 0 Then   '�����_���Ȃ�������
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

