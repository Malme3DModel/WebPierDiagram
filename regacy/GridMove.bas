Attribute VB_Name = "GridMove"
'**************************************************************
'vsFlexGrid�p�@���͉�ʍ쐬���C�u���� - GridMove.bas
'99/10/23 kit �쐬
'**************************************************************

Option Explicit

Public Const gcstrAtrNull As String = ""
Public Const gcstrAtrFixCell As String = "F"


'========================================================
'�ړ���̃Z���ɂ����̑������������甭��
'�`Next�`�F�O�ړ��̂Ƃ��̂݃`�F�b�N
'�`Back�`�F���ړ��̂Ƃ��̂݃`�F�b�N
'
'Axxx�͐����ňړ���̍s�A��ԍ���\���i�K��3���j
Public Const gcstrAtrNextCol As String = "A"
Public Const gcstrAtrNextRow As String = "C"
Public Const gcstrAtrBackCol As String = "B"
Public Const gcstrAtrBackRow As String = "D"
'========================================================




'========================================================
'�e�t�H�[���œ���ȓ���������邽�߂̃t���O
'�ݒ肵���Z���Ń��^�[���L�[�������Ɣ�������
'========================================================
'Oxx�̂悤�ɂ��āAxx�ɐ�����ID���w�肷��
'�K���񌅂Ŋ�{�I��5�ȏ�i5�Ȃ�"05"�j���w�肷�邱�Ɓi1�`4�͗\�񂳂�Ă���j
Public Const gcstrAtrSpecialMove As String = "O"

'Xxxx�̂悤�ɂ��āAxxx�ɐ�����Row(Col)�̈ړ�����w�肷��
Public Const gcstrAtrJumpAbsRow As String = "X"
Public Const gcstrAtrJumpAbsCol As String = "Y"

'Xxxx or X-xx�̂悤�ɂ��āAxxx(xx)�ɐ�����Row(Col)�̑������w�肷��
Public Const gcstrAtrJumpVRow As String = "V"
Public Const gcstrAtrJumpVCol As String = "W"
'========================================================





'�q���g�`�b�v�̐F�������Z��
Public Const gcstrAtrToolColor As String = "E"
'�Œ�Z���̐F�������Z���i�F�̂݁j
Public Const gcstrAtrFixColor As String = "G"
'���F�������Z��
Public Const gcstrAtrSendanColor As String = "S"

Public Const gclngSendanColor As Long = 16770790     'rgb(230,230,255)

Public Const gcintAtrIsNone As Integer = -1

'�n�C���C�g�F
Public Const gclngHighLightColor As Long = vbGreen

'���̃R���g���[���ւ̃t�H�[�J�X�ړ��ɗp����
Dim gintMaxCtrl As Integer
Public gintCurCtrl As Integer

'�X�N���[���o�[�̃T�C�Y
Public gintScrbarSize As Integer

'�@�@�\ �F  Grid �̕��𐳂����ݒ肷��B
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           vlngCols        �\�������
Public Sub gfaAjustWidth(ByVal vfaTarget As vsFlexGrid, ByVal vlngCols As Long)
    Dim w As Long
    Dim i As Integer
    
    With vfaTarget
        w = 0
        For i = 0 To vlngCols - 1
            w = w + .ColWidth(i)
        Next i
        .Width = w + 80             ' 3D�e�̕�
    End With
End Sub

'�@�@�\ �F  Grid �̍����𐳂����ݒ肷��B
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           vlngRows        �\������s��
Public Sub gfaAjustHeight(ByVal vfaTarget As vsFlexGrid, ByVal vlngRows As Long)
    Dim h As Long
    Dim i As Integer
    
    With vfaTarget
        h = 0
        For i = 0 To vlngRows - 1
            h = h + .RowHeight(i)
        Next i
        .Height = h + 80             ' 3D�e�̕�
    End With
End Sub

'�@�@�\ �F  Grid �̑傫���𐳂����ݒ肷��B
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
Public Sub gfaAjustSize(ByVal vfaTarget As vsFlexGrid)
    
    Call gfaAjustHeight(vfaTarget, vfaTarget.rows)
    Call gfaAjustWidth(vfaTarget, vfaTarget.Cols)
    
End Sub

'�@�@�\ �F  Grid �̑傫����ݒ肷��i�T�C�Y�w��j�B�X�N���[���o�[�t�̃O���b�h�p
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           vlngRows        �\������s��
'           vlngCols        �\�������
'           vintScrbar      �X�N���[���o�[�̎��(0:���� 1:�� 2:�c 3:�����j
Public Sub gfaAjustSizeScr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRows As Long, ByVal vlngCols As Long, ByVal vintScrbar As Integer)
    
    Call gfaAjustHeight(vfaTarget, vlngRows)
    Call gfaAjustWidth(vfaTarget, vlngCols)
    
    Select Case vintScrbar
    Case 1  '���X�N���[���o�[�t��
        vfaTarget.Height = vfaTarget.Height + gintScrbarSize
    Case 2  '�c�X�N���[���o�[�t��
        vfaTarget.Width = vfaTarget.Width + gintScrbarSize
    Case 3  '�c���X�N���[���o�[�t��
        vfaTarget.Height = vfaTarget.Height + gintScrbarSize
        vfaTarget.Width = vfaTarget.Width + gintScrbarSize
    End Select
    
End Sub

'�@�@�\ �F  �J�����g�Z����\���g���ɕ\������
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
Public Sub gfaPutCurCell(ByVal vfaTarget As vsFlexGrid)
    Dim lngDummy As Long

    lngDummy = vfaTarget.CellTop
    
End Sub

'�@�@�\ �F  ���ɍs���ׂ��Z���Ɉړ�����
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           rRow,rCol       ���݂̍��W�����顈ړ����Ԃ�
'           vKeyCode        �ړ��Ɏg���L�[�R�[�h
'           rbolVirtical    True �� �c�ړ�
'�ԋp�l �F  ���̃O���b�h���ړ�������1�A�O�̃O���b�h�Ɉړ�������2�A
'           �ʏ��0���A�ҏW�ɂ���Ȃ�3��Ԃ��B�ړ���Grid�R���g���[���܂�����Ȃ�4��Ԃ��
Public Function gfaMoveCell(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, ByRef rbolVirtical, ByVal faNext As vsFlexGrid, ByVal faBack As vsFlexGrid) As Integer
    
    gfaMoveCell = gfaGetNext(vfaTarget, rRow, RCol, rKeyCode, rbolVirtical)
    On Error GoTo SysInfoErr
    Select Case gfaMoveCell
    Case 1
        With faNext
            .Select .FixedRows, .FixedCols
            .SetFocus
            Call gfaPutCurCell(faNext)
        End With
        
    Case 2
        With faBack
            .Select .rows - 1, .Cols - 1
            .SetFocus
            Call gfaPutCurCell(faBack)
        End With
    End Select
    Exit Function
SysInfoErr:

End Function

'�@�@�\ �F  �ړ���̍��W���擾����
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           rRow,rCol       ���݂̍��W�����顈ړ����Ԃ�
'           rKeyCode        �ړ��Ɏg���L�[�R�[�h
'           rbolVirtical    True �� �c�ړ�
'�ԋp�l �F  �O���b�h�̍Ō�̃Z���Ȃ�1�A�ŏ��̃Z���Ȃ�2�A
'           �ʏ��0��ҏW�ɂ���Ȃ�3��Ԃ���ړ���Grid�R���g���[���܂�����Ȃ�4��Ԃ��
Public Function gfaGetNext(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, ByRef rbolVirtical) As Integer
    
    With vfaTarget
        Select Case rKeyCode
            Case vbKeyBack
                .TextMatrix(rRow, RCol) = ""
                If rbolVirtical Then gfaGetNext = faGetBackCellV(vfaTarget, rRow, RCol, rKeyCode) Else gfaGetNext = faGetBackCellH(vfaTarget, rRow, RCol, rKeyCode)
                
            Case vbKeyDelete
                .TextMatrix(rRow, RCol) = ""
                rKeyCode = 0
            
            Case vbKeyReturn
                Dim res(4) As Integer
                res(0) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrSpecialMove)
                res(1) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpAbsRow)
                res(2) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpAbsCol)
                res(3) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpVRow)
                res(4) = gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrJumpVCol)
                
                If res(0) = gcintAtrIsNone And res(1) = gcintAtrIsNone And res(2) = gcintAtrIsNone And res(3) = 0 And res(4) = 0 Then
                    If rbolVirtical Then gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode) Else gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
                Else
                    gfaGetNext = 0
                    
                    '����ړ������𒲂ׂ�
                    If res(0) <> gcintAtrIsNone Then gfaGetNext = res(0)
                    If res(1) <> gcintAtrIsNone Then rRow = res(1)
                    If res(2) <> gcintAtrIsNone Then RCol = res(2)
                        
                    rRow = rRow + res(3)
                    RCol = RCol + res(4)
                End If
                rKeyCode = 0
            
            Case vbKeySpace
                .TextMatrix(rRow, RCol) = ""
                If rbolVirtical Then gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode) Else gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
            
            Case vbKeyUp ', vbKeyPageUp
                gfaGetNext = faGetBackCellV(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
                
            Case vbKeyDown ', vbKeyPageDown
                gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
                
            Case vbKeyLeft ', vbKeyHome
                gfaGetNext = faGetBackCellH(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
            
            Case vbKeyRight ', vbKeyEnd
                gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
                rKeyCode = 0
            
            Case vbKeyPageUp, vbKeyPageDown, vbKeyHome, vbKeyEnd
                gfaGetNext = 4
                
            Case 220 '="\"
                If rbolVirtical = False Then
                    If rRow > .FixedRows Then
                        If Trim$(.ColFormat(RCol)) = "" Or Trim$(.TextMatrix(rRow - 1, RCol)) = "" Then
                            .TextMatrix(rRow, RCol) = .TextMatrix(rRow - 1, RCol)
                        Else
                            .TextMatrix(rRow, RCol) = Format$(val(.TextMatrix(rRow - 1, RCol)), .ColFormat(RCol))
                        End If
                        gfaGetNext = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode)
                    Else
                        gfaGetNext = 4
                        rKeyCode = 0
                    End If
                Else
                    If RCol > .FixedCols Then
                        'If Trim(.Cell(flexcpTextStyle, rRow, rCol, rRow, rCol)) = "" Then
                            .TextMatrix(rRow, RCol) = .TextMatrix(rRow, RCol - 1)
                        'Else
                        '    .TextMatrix(rRow, rCol) = Format$(Val(.TextMatrix(rRow, rCol - 1)), .Cell(flexcpTextStyle, rRow, rCol, rRow, rCol))
                        'End If
                        gfaGetNext = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode)
                    Else
                        gfaGetNext = 4
                        rKeyCode = 0
                    End If
                End If
                
            Case Else
                gfaGetNext = 3
                .EditCell
                    
        End Select
    End With
    
End Function

'�@�@�\ �F  ���ɍs���ׂ����W���擾����i��{�͐����ړ��j
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           rRow,rCol       ���݂̍��W�����顈ړ����Ԃ�
'           rKeyCode        �ړ��Ɏg���L�[�R�[�h
'           rbolFirstCall   �����ŗp���鏉��Ăяo�����ǂ����𔻒肷��t���O�i�ʏ�͎w�肵�Ȃ��j    �����݂͎g���Ă��Ȃ�
'�ԋp�l �F  �O���b�h�̍Ō�̃Z���Ȃ�1�A�ʏ��0��Ԃ�
Private Function faGetNextCellH(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngCol As Long
    Dim intChgRow As Integer
    Dim bolLastCell As Boolean
    
    With vfaTarget
        faGetNextCellH = 0
        
        If rRow = .rows - 1 And RCol = .Cols - 1 Then bolLastCell = True Else bolLastCell = False
        
        '���s�����邩�ǂ������ׂ�
        If RCol < .Cols - 1 Then
            RCol = RCol + 1
            intChgRow = 0
        Else
            intChgRow = 1
        End If
            
        '���s����
        Select Case intChgRow
        Case 1
            '�ʏ���s
            If rRow < .rows - 1 Then
                RCol = .FixedCols
                rRow = rRow + 1
            Else
'                If gfaChkCellAtr(vfaTarget, rRow, rCol, gcstrAtrNextCol) <> gcintAtrIsNone And rbolFirstCall = True Then
'                    Call faGetBackCellH(vfaTarget, rRow, rCol, rKeyCode, False)
'                End If
                
                If bolLastCell = True Then faGetNextCellH = 1
                
                Exit Function
            End If
        End Select
         
        '�ړ���̑����𒲂ׂāA�ċA�I�ɍ�p������
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetNextCellH = faGetNextCellH(vfaTarget, rRow, RCol, rKeyCode, rbolFirstCall)
    
    End With

End Function

'�@�@�\ �F  ��߂����ꍇ�̍��W���擾����i��{�͐����ړ��j
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           rRow,rCol       ���݂̍��W�����顈ړ����Ԃ�
'           rKeyCode        �ړ��Ɏg���L�[�R�[�h
'           rbolFirstCall   �����ŗp���鏉��Ăяo�����ǂ����𔻒肷��t���O�i�ʏ�͎w�肵�Ȃ��j        �����݂͎g���Ă��Ȃ�
'�ԋp�l �F  �O���b�h�̍ŏ��̃Z���Ȃ�2�A�ʏ��0��Ԃ�
Private Function faGetBackCellH(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngCol As Long
    Dim intChgRow As Integer
    Dim bolFirstCell As Boolean
    
    With vfaTarget
        faGetBackCellH = 0
        
        If rRow = .FixedRows And RCol = .FixedCols Then bolFirstCell = True Else bolFirstCell = False
        
        '���s�����邩�ǂ������ׂ�
        If RCol > .FixedCols Then
            RCol = RCol - 1
            intChgRow = 0
        Else
            intChgRow = 1
        End If
        
        '���s����
        Select Case intChgRow
        Case 1
            '�ʏ���s
            If rRow > .FixedRows Then
                RCol = .Cols - 1
                rRow = rRow - 1
            Else
'                If gfaChkCellAtr(vfaTarget, rRow, rCol, gcstrAtrFixCell) <> gcintAtrIsNone And rbolFirstCall = True Then
'                    Call faGetNextCellH(vfaTarget, rRow, rCol, rKeyCode, False)
'                End If
                
                If bolFirstCell = True Then faGetBackCellH = 2
                
                Exit Function
            End If
                
        End Select
        
        '�ړ���̑����𒲂ׂāA�ċA�I�ɍ�p������
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetBackCellH = faGetBackCellH(vfaTarget, rRow, RCol, rKeyCode)
    
    End With

End Function

'�@�@�\ �F  ���ɍs���ׂ����W���擾����i��{�͐����ړ��j
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           rRow,rCol       ���݂̍��W�����顈ړ����Ԃ�
'           rKeyCode        �ړ��Ɏg���L�[�R�[�h
'           rbolFirstCall   �����ŗp���鏉��Ăяo�����ǂ����𔻒肷��t���O�i�ʏ�͎w�肵�Ȃ��j    �����݂͎g���Ă��Ȃ�
'�ԋp�l �F  �O���b�h�̍Ō�̃Z���Ȃ�1�A�ʏ��0��Ԃ�
Private Function faGetNextCellV(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngRow As Long
    Dim intChgCol As Integer
    Dim bolLastCell As Boolean
    Dim intRetVal As Integer
    
    With vfaTarget
        faGetNextCellV = 0
        
        If rRow = .rows - 1 And RCol = .Cols - 1 Then bolLastCell = True Else bolLastCell = False
        
        '���s�����邩�ǂ������ׂ�
        If rRow < .rows - 1 Then
            rRow = rRow + 1
            intChgCol = 0
        Else
            intChgCol = 1
        End If
        
        '���s����
        Select Case intChgCol
        Case 1
            '�ʏ���s
            If RCol < .Cols - 1 Then
                RCol = RCol + 1
                rRow = .FixedRows
            Else
                If bolLastCell = True Then faGetNextCellV = 1
                
                Exit Function
            End If
        End Select
         
        '�ړ���̑����𒲂ׂāA�ċA�I�ɍ�p������
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetNextCellV = faGetNextCellV(vfaTarget, rRow, RCol, rKeyCode, rbolFirstCall)
    
    End With

End Function

'�@�@�\ �F  ��߂����ꍇ�̍��W���擾����i��{�͐����ړ��j
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           rRow,rCol       ���݂̍��W�����顈ړ����Ԃ�
'           rKeyCode        �ړ��Ɏg���L�[�R�[�h
'           rbolFirstCall   �����ŗp���鏉��Ăяo�����ǂ����𔻒肷��t���O�i�ʏ�͎w�肵�Ȃ��j        �����݂͎g���Ă��Ȃ�
'�ԋp�l �F  �O���b�h�̍ŏ��̃Z���Ȃ�2�A�ʏ��0��Ԃ�
Private Function faGetBackCellV(ByVal vfaTarget As vsFlexGrid, ByRef rRow As Long, ByRef RCol As Long, ByRef rKeyCode As Integer, Optional rbolFirstCall As Boolean = True) As Integer
    Dim lngRow As Long
    Dim intChgCol As Integer
    Dim bolFirstCell As Boolean
    
    With vfaTarget
        faGetBackCellV = 0
        
        If rRow = .FixedRows And RCol = .FixedCols Then bolFirstCell = True Else bolFirstCell = False
        
        '���s�����邩�ǂ������ׂ�
        If rRow > .FixedRows Then
            rRow = rRow - 1
            intChgCol = 0
        Else
            intChgCol = 1
        End If
        
        '���s����
        Select Case intChgCol
        Case 1
            '�ʏ���s
            If RCol > .FixedCols Then
                RCol = RCol - 1
                rRow = .rows - 1
            Else
                If bolFirstCell = True Then faGetBackCellV = 2
                
                Exit Function
            End If
        End Select
        
        '�ړ���̑����𒲂ׂāA�ċA�I�ɍ�p������
        If gfaChkCellAtr(vfaTarget, rRow, RCol, gcstrAtrFixCell) <> gcintAtrIsNone Then faGetBackCellV = faGetBackCellV(vfaTarget, rRow, RCol, rKeyCode)
    
    End With

End Function

Public Sub gFocusSetNextCtrl(Ctrl() As Control)
    gintCurCtrl = gintCurCtrl + 1
    
    If gintCurCtrl = gintMaxCtrl Then gintCurCtrl = 0
    
    Ctrl(gintCurCtrl).SetFocus

End Sub

Public Sub gFocusSetBackCtrl(Ctrl() As Control)
    gintCurCtrl = gintCurCtrl - 1
    
    If gintCurCtrl = -1 Then gintCurCtrl = gintMaxCtrl - 1
    
    Ctrl(gintCurCtrl).SetFocus

End Sub

Public Sub gFocusInit(ByVal vintMaxCtrl As Integer, Ctrl() As Control)
    gintCurCtrl = 0
    gintMaxCtrl = vintMaxCtrl
    
'    Ctrl(gintCurCtrl).SetFocus

End Sub

Public Sub gFocusSetCur(ByVal vintCurCtrl As Integer)
    gintCurCtrl = vintCurCtrl
    
End Sub


'���L�[���������ۂ̈�s��̕�����擾�֐�
Public Function gfaGetYenString(ByVal vfaTarget As vsFlexGrid, ByRef rstrRetVal As String) As Boolean
    With vfaTarget
        If .Row <= .FixedRows Then
            gfaGetYenString = False
        Else
            If .Cell(flexcpChecked, .Row - 1, .Col) <> 0 Then
                .Cell(flexcpChecked, .Row, .Col) = .Cell(flexcpChecked, .Row - 1, .Col)
                gfaGetYenString = False
            Else
                rstrRetVal = .TextMatrix(.Row - 1, .Col)
                gfaGetYenString = True
            End If
        End If
        
    End With
End Function

'�@�@�\ �F  ���L�[���������ۂ̈�s��̕�����擾�֐�
'           �i���֎~�Z���Ή�
'���@�� �F  vfaTarget       ����ΏۂƂȂ� vsFlexGrid �I�u�W�F�N�g
'           bolSplit        true�ň�s�Ƃ΂�
'�Ԃ�l �F  �Ăяo�����ŃZ�����X�V����K�v������ꍇ�� True
'           ������ rstrRetVal �Ɏ擾������������Z�b�g����
Public Function gfaGetYenStringChkData(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow As Long, ByRef rstrRetVal As String, ByRef rbolSplit As Boolean) As Boolean
    Dim intVRow As Integer
    
    If rbolSplit = True Then intVRow = 2 Else intVRow = 1
    
    With vfaTarget
        If vlngRow <= .FixedRows Then
            gfaGetYenStringChkData = False
        Else
            '�`�F�b�N�{�b�N�X��������
            If .Cell(flexcpChecked, vlngRow, .Col) <> 0 Then
                Dim i As Integer
                Dim lngSRow As Long
                
                lngSRow = vlngRow
                
                '���[�v�ŏ�������
                Do While True
                    If gfaChkCellAtr(vfaTarget, vlngRow - intVRow, .Col, gcstrAtrFixCell) = gcintAtrIsNone Then
                        Exit Do
                    End If
                    
                    vlngRow = vlngRow - intVRow
                    
                    If vlngRow <= .FixedRows Then
                        gfaGetYenStringChkData = False
                        Exit Function
                    End If
                Loop
                
                .Cell(flexcpChecked, lngSRow, .Col) = .Cell(flexcpChecked, vlngRow - intVRow, .Col)
                gfaGetYenStringChkData = False
            
            ElseIf gfaChkCellAtr(vfaTarget, vlngRow - intVRow, .Col, gcstrAtrFixCell) <> gcintAtrIsNone Then
                '�ċA�ŏ�������
                gfaGetYenStringChkData = gfaGetYenStringChkData(vfaTarget, vlngRow - intVRow, rstrRetVal, rbolSplit)
            Else
                rstrRetVal = .TextMatrix(vlngRow - intVRow, .Col)
                gfaGetYenStringChkData = True
            End If
        End If
        
    End With
End Function

'.Cell(flexcpData,����j�𒲂ׂĊe�푮�������邩�𔻒肷��
Public Function gfaChkCellAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow, ByVal vlngCol, ByRef rstrChkAtr As String) As Integer
    Dim X As Integer

    Select Case rstrChkAtr
    Case gcstrAtrFixCell
        If InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare) <> 0 Then gfaChkCellAtr = 0 Else gfaChkCellAtr = gcintAtrIsNone
    Case gcstrAtrNextCol, gcstrAtrBackCol, gcstrAtrNextRow, gcstrAtrBackRow, gcstrAtrSpecialMove
        X = InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare)
        If X <> 0 Then
            gfaChkCellAtr = val(Mid$(vfaTarget.Cell(flexcpData, vlngRow, vlngCol), X + 1, 2))
        Else
            gfaChkCellAtr = gcintAtrIsNone
        End If
    
    Case gcstrAtrJumpAbsRow, gcstrAtrJumpAbsCol
        X = InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare)
        If X <> 0 Then
            gfaChkCellAtr = val(Mid$(vfaTarget.Cell(flexcpData, vlngRow, vlngCol), X + 1, 3))
        Else
            gfaChkCellAtr = gcintAtrIsNone
        End If

    Case gcstrAtrJumpVRow, gcstrAtrJumpVCol
        X = InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare)
        If X <> 0 Then
            gfaChkCellAtr = val(Mid$(vfaTarget.Cell(flexcpData, vlngRow, vlngCol), X + 1, 3))
        Else
            gfaChkCellAtr = 0
        End If

    Case Else
        If InStr(1, vfaTarget.Cell(flexcpData, vlngRow, vlngCol), rstrChkAtr, vbTextCompare) <> 0 Then gfaChkCellAtr = 0 Else gfaChkCellAtr = gcintAtrIsNone
    End Select
    
End Function

'.Cell(flexcpData,����j�Ɋe�푮����ǉ��ݒ肷��
Public Sub gfaAddCellAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow1 As Long, ByVal vlngCol1 As Long, ByRef rstrSetAtr As String)
    Dim i As Long
    Dim j As Long
    
    With vfaTarget
        .Cell(flexcpData, vlngRow1, vlngCol1) = .Cell(flexcpData, vlngRow1, vlngCol1) & rstrSetAtr
        
        '�F�ω�
        Call gfaSetAtrColor(vfaTarget, vlngRow1, vlngCol1, vlngRow1, vlngCol1, rstrSetAtr)
    
    End With
End Sub

'.Cell(flexcpData,����j�Ɋe�푮����ǉ��ݒ肷��
Public Sub gfaAddRectAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow1 As Long, ByVal vlngCol1 As Long, ByVal vlngRow2 As Long, ByVal vlngCol2 As Long, ByRef rstrSetAtr As String)
    Dim i As Long
    Dim j As Long
    
    With vfaTarget
        For i = vlngRow1 To vlngRow2
            For j = vlngCol1 To vlngCol2
                .Cell(flexcpData, i, j) = .Cell(flexcpData, i, j) & rstrSetAtr
            Next
        Next
        
        '�F�ω�
        Call gfaSetAtrColor(vfaTarget, vlngRow1, vlngCol1, vlngRow2, vlngCol2, rstrSetAtr)
    
    End With
End Sub

'.Cell(flexcpData,����j�Ɋe�푮����ǉ��ݒ肷��
Public Sub gfaAddRowAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow As Long, ByRef rstrSetAtr As String)
    
    With vfaTarget
        Call gfaAddRectAtr(vfaTarget, vlngRow, .FixedCols, vlngRow, .Cols - 1, rstrSetAtr)
    End With
    
End Sub

'.Cell(flexcpData,����j�Ɋe�푮����ǉ��ݒ肷��
Public Sub gfaAddColAtr(ByVal vfaTarget As vsFlexGrid, ByVal vlngCol As Long, ByRef rstrSetAtr As String)
    
    With vfaTarget
        Call gfaAddRectAtr(vfaTarget, .FixedRows, vlngCol, .rows - 1, vlngCol, rstrSetAtr)
    End With
    
End Sub

'LeaveCell�ȂǂŌ��̐F�𕜋A����
Public Sub gfaSetCellColor(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow As Long, ByVal vlngCol As Long)

    If gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrFixCell) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrFixCell)
    ElseIf gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrFixColor) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrFixColor)
    ElseIf gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrToolColor) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrToolColor)
    ElseIf gfaChkCellAtr(vfaTarget, vlngRow, vlngCol, gcstrAtrSendanColor) <> gcintAtrIsNone Then
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrSendanColor)
    Else
        Call gfaSetAtrColor(vfaTarget, vlngRow, vlngCol, vlngRow, vlngCol, gcstrAtrNull)
    End If
    
End Sub

'�����l���Ƃ̐F��t����
Public Sub gfaSetAtrColor(ByVal vfaTarget As vsFlexGrid, ByVal vlngRow1 As Long, ByVal vlngCol1 As Long, ByVal vlngRow2 As Long, ByVal vlngCol2 As Long, ByRef rstrAtr As String)
    Dim lngColor As Long
    
    With vfaTarget
        
        Select Case rstrAtr
        Case gcstrAtrFixCell
            lngColor = vbButtonFace
        Case gcstrAtrFixColor
            lngColor = vbButtonFace
        Case gcstrAtrToolColor
            lngColor = vbInfoBackground
        Case gcstrAtrSendanColor
            lngColor = gclngSendanColor
        Case Else
            lngColor = RGB(0, 0, 0)
        End Select
    
        .Cell(flexcpBackColor, vlngRow1, vlngCol1, vlngRow2, vlngCol2) = lngColor
    
    End With

End Sub

Public Sub gMakeTabOrder(ByVal TargetForm As Form, _
    ByVal intGridNum As Integer, ByRef Grid() As Object, _
    ByRef intBack() As Integer, ByRef intNext() As Integer)
    
    '�e�O���b�h�R���g���[����TabIndex�𒲂ׂ�
    Dim MyControl
    Dim MyCtrlName As String, MyCtrlVisible As Boolean
    Dim intTabIndex() As Integer, intOrder() As Integer
    Dim i As Integer, j As Integer, T As Integer
    Dim intNumCtrl As Integer
    
    ReDim intTabIndex(intGridNum - 1), intOrder(intGridNum - 1)
    
    i = 0
    For Each MyControl In TargetForm.Controls    ' �R���g���[���̊e�v�f�ɑ΂��ČJ��Ԃ��܂��B
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



