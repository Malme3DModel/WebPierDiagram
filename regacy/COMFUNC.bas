Attribute VB_Name = "COMFUNC"
Option Explicit
'���ʂɎg���֐��Ȃǂ��A�����ɏW�߂�
Public Const plus = " + "
Public Const minus = " - "
Public Const multi = " x "
Public Const divide = " / "
Public Const equal = " = "
Public Const edln = vbCrLf & vbCrLf
Public Const myspace = "           "
Public Const Wmyspace = "                "
Public Const same = " �V"
Public Const le_ = " �� "
Public Const ge_ = " �� "
Public Const lt_ = " �� "
Public Const gt_ = " �� "
Public Const c_ = " ( "
Public Const cc_ = " ) "
Public Const z1z = "0.0"
Public Const z1zz = "0.00"
Public Const z1zzz = "0.##0"
Public Const scssz = "#,##0"
Public Const t_eq = "�seq"
Public Const myarrow = " �� "
Public Function pai() As Double
pai = 4# * Atn(1#)
End Function
Public Sub darrow(ByVal a, n As Integer, m As Integer, out As String)
Dim i As Integer
Dim str As String
Dim str1 As String
'Dim BB As Single
'BB = max(Round(a, 2), 0.2)

    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(a, str1)

End Sub

Public Sub darrow1(ByVal a, b, n As Integer, m As Integer, out As String)
Dim i As Integer
Dim str As String
Dim str1 As String
Dim BB As Single
BB = max(Round(a, 2), Round(0.2 * b, 2))

    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(BB, str1)

End Sub

Public Sub darrow2(ByVal a, n As Integer, c As Single, m As Integer, out As String, AB As Single)
Dim i As Integer
Dim str As String
Dim str1 As String
Dim BB As Single
BB = min(Round(a, 2), Round(c, 2))
AB = BB
    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(BB, str1)

End Sub

Public Sub darrow3(ByVal a, n As Integer, c As Single, m As Integer, out As String, AB As Single)
Dim i As Integer
Dim str As String
Dim str1 As String
Dim BB As Single
BB = Round(c, 2) 'min(Round(a, 2), Round(c, 2))
AB = BB
    str = "########0."
    str1 = "########0."
For i = 1 To n - 1
    str = str & "#"
Next
str = str & "0"
For i = 1 To m - 1
    str1 = str1 & "#"
Next
str1 = str1 & "0"
out = Format(a, str) & myarrow & Format(BB, str1)

End Sub

Public Function Sround(ByVal Number As Double) As String
Dim a As Double
a = Abs(Fix(Number * (10 ^ 3) + Sgn(Number) * 0.5))
If Abs(a) > 1000000000# Then a = 0
Sround = Format(Number, "0.000")
If (a Mod 10 = 0) Then
   Sround = Format(Number, "0.00")
Else
   Sround = Format(Number, "0.000")
End If

End Function

Public Function Round(ByVal Number As Double, ByVal Exp As Integer) As Double
Dim DblNum As Double
    If Abs(Number) < 1E+20 Then
    
    DblNum = Number * (10 ^ Exp) + Sgn(Number) * 0.5
    Round = Fix(DblNum) / 10 ^ Exp
    
'    Round = Fix(Number * (10 ^ Exp) + Sgn(Number) * 0.5) / 10 ^ Exp
    End If
End Function

Public Function min(a, b)
'        min = (A + B - Abs(A - B)) / 2#     �� �`�Ƃa�̌��̍����傫���Ƃ��ɐ�����������Ԃ��Ȃ�
    If a < b Then
        min = a
    Else
        min = b
    End If

End Function

Public Function max(a, b)
'        max = (A + B + Abs(A - B)) / 2#     �� �`�Ƃa�̌��̍����傫���Ƃ��ɐ�����������Ԃ��Ȃ�
    If a > b Then
        max = a
    Else
        max = b
    End If

End Function

Public Function Using(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    strUsing = Format(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        'strUsing = String(intFormat, "#")
    End If
    Using = strUsing
End Function
Public Function UsingA(verNumber As Variant, strFormat As String) As String
    Dim strUsing As String
    Dim intUsing As Integer
    Dim intFormat As Integer
    strUsing = Format(verNumber, strFormat)
    intUsing = Len(strUsing)
    intFormat = Len(strFormat)
    If intUsing <= intFormat Then
        strUsing = String(intFormat - intUsing, " ") & strUsing
    Else
        strUsing = String(intFormat, "#")
    End If
    UsingA = strUsing
End Function
Public Function moment(ByVal a1, ByVal a2, ByVal m1, ByVal m2) As Double

   moment = -a1 * m1 + a2 * m2

End Function
'////////////// Get�e�Y���W �֐� /////////////////////////////////////////////////// �쐬�F03-8-11 sasa ////
' �@�\�@�F�Y�̓��͏�񂩂� �e�Y�� X���W �� Y���W ���v�Z����B
'           ���j���̊֐��� �Ή��ł���Y�z�u �ɂ͌��E������܂��B
'                 �E�l�� �ɕK���Y���z�u����Ă��邱�Ƃ�O��Ƃ���B
'                 �E���L�̃p�^�[���ȊO�̍Y�z�u�ɂ͑Ή��ł��܂���B
'
'                  �i��P�@�P��΂��j�i��Q�@�S��z�u�j�@�i��R�@�O�̑g�ݍ��킹�j
'                  �@�@�@���@���@�@�@�@�@�@�@�������@�@�@�@�@�@�������@�@�@����
'                  �@�@�@�@���@�@�@�@�@�@�@�@�������@�@�@�@�@�@���@���@�@�@��
'                  �@�@�@���@���@�@�@�@�@�@�@�������@�@�@�@�@�@�������@�@�@����
'
' �����@�F�Y�� �@(1-���H, 2-���p)�@�e�����̍Y��
'�@�@�@ �@L�Y�{�@(1�`���H�Y��) �@�@�e��̍Y�{��
'�@�@�@ �@C�Y�{�@(1�`���p�Y��) �@�@�e��̍Y�{��
'�@�@�@ �@L���W�@(1�`���H�Y��) �@�@�e��̍��W
'�@�@�@ �@C���W�@(1�`���p�Y��) �@�@�e��̍��W
'�@�@�@ �@X�Y���W(1�`�Y�{��) �@�@�@�e�Y��X���W  <------ �� �����i�[�p
'�@�@�@ �@Y�Y���W(1�`�Y�{��) �@�@�@�e�Y��Y���W  <------ �� �����i�[�p
'
' �߂�l�F�Y�̑��{�� (�G���[ �Ȃ�  "-1" )
Public Function Get�e�Y���W(�Y��() As Integer, L�Y�{() As Integer, C�Y�{() As Integer _
                        , L���W() As Single, C���W() As Single, X�Y���W() As Single, Y�Y���W() As Single) As Integer

    Dim i As Integer, j As Integer
    Dim �Y�z�u() As Integer: ReDim �Y�z�u(1 To �Y��(1), 1 To �Y��(2))
    Dim L As Integer: L = int��(L�Y�{)
    Dim c As Integer: c = int��(C�Y�{)
    
    If L <> c Then
        Get�e�Y���W = -1
        Exit Function
    Else
         ReDim X�Y���W(L)
         ReDim Y�Y���W(L)
         Get�e�Y���W = L   '�Y�̑��{�����Z�b�g�i*** �߂�l ***�j
    End If
    
'// ****** �Y�z�u�t���O  : 1 �Y����A 0 ����A -1 ���肦�Ȃ� *******
    
    ' �܂��l���ɍY���Z�b�g ---------------------------------------------------------------------------------------------------------
    �Y�z�u(1, 1) = 1
    �Y�z�u(�Y��(1), 1) = 1
    �Y�z�u(1, �Y��(2)) = 1
    �Y�z�u(�Y��(1), �Y��(2)) = 1
    ' ����! ------------------------------------------------------------------------------------------------------------------------
    For i = 1 To �Y��(1)
        If �Y��(2) = L�Y�{(i) Then                                              '���߇@ ���p�Y��=���H�Y�{���̏ꍇ
            For j = 1 To �Y��(2)
                �Y�z�u(i, j) = 1
            Next j
        Else
            If (�Y��(2) Mod 2 <> 0) And (Int(�Y��(2) / 2) + 1) = L�Y�{(i) Then  '���߇A ���p�Y�񂪊�̏ꍇ ���� ���p�Y��/2 =���H�Y�{�� �̏ꍇ
                For j = 1 To �Y��(2) Step 2  ' �P��΂��ɍY�n�C�`
                    �Y�z�u(i, j) = 1
                Next j
            End If
        End If
    Next i
    ' ���肦�Ȃ������Z�b�g ---------------------------------------------------------------------------------------------------------
    ' ���H������ �� �T�[�`
    For i = 1 To �Y��(1)
        If L�Y�{(i) = Get��_2(�Y�z�u, i, 1) Then
            For j = 1 To �Y��(2)
                If �Y�z�u(i, j) <> 1 Then �Y�z�u(i, j) = -1
            Next j
        End If
    Next i
    ' ���p������ �� �T�[�`
    For j = 1 To �Y��(2)
        If C�Y�{(j) = Get��_1(�Y�z�u, j, 1) Then
            For i = 1 To �Y��(1)
                If �Y�z�u(i, j) <> 1 Then �Y�z�u(i, j) = -1
            Next i
        End If
    Next j
    ' �̂���P�{�̌���"1"(�Y����) ���Z�b�g -------------------------------------------------------------------------------------------
    ' ���H������ �� �T�[�`
    For i = 1 To �Y��(1)
        If �Y��(2) = (Get��_2(�Y�z�u, i, 1) + Get��_2(�Y�z�u, i, -1) + 1) Then
            For j = 1 To �Y��(2)
                If �Y�z�u(i, j) <> -1 Then �Y�z�u(i, j) = 1
            Next j
        End If
    Next i
    ' ���p������ �� �T�[�`
    For j = 1 To �Y��(2)
        If �Y��(1) = (Get��_1(�Y�z�u, j, 1) + Get��_1(�Y�z�u, j, -1) + 1) Then
            For i = 1 To �Y��(1)
                If �Y�z�u(i, j) <> -1 Then �Y�z�u(i, j) = 1
            Next i
        End If
    Next j
    ' �z��ɍ��W�������ĕԂ� ---------------------------------------------------------------------------------------------------------
    Dim n As Integer: n = 1
    For i = 1 To �Y��(1)
        For j = 1 To �Y��(2)
            If �Y�z�u(i, j) = 1 Then
                X�Y���W(n) = L���W(i)
                Y�Y���W(n) = C���W(j)
                n = n + 1
            End If
        Next j
    Next i
End Function
'////////////// "Sub Get�e�Y���W" �֘A�֐�  ////////////////////////////////////////////////////
' No �̐����z�� ��ɂ��������Ă��邩�T��
Private Function Get��_1(Srch() As Integer, p As Integer, No As Integer) As Integer
    Dim i As Integer, n As Integer
    For i = 1 To UBound(Srch, 1)
        If Srch(i, p) = No Then n = n + 1
    Next i
    Get��_1 = n
End Function
' No �̐����z�� �s�ɂ��������Ă��邩�T��
Private Function Get��_2(Srch() As Integer, p As Integer, No As Integer) As Integer
    Dim i As Integer, n As Integer
    For i = 1 To UBound(Srch, 2)
        If Srch(p, i) = No Then n = n + 1
    Next i
    Get��_2 = n
End Function
' Int�^��1�����z��̍��v��Ԃ�
Private Function int��(IntArry() As Integer) As Integer
    Dim mx As Integer: mx = UBound(IntArry, 1)
    Dim mn As Integer: mn = LBound(IntArry, 1)
    Dim i As Integer, Temp As Integer
    For i = mn To mx
        Temp = IntArry(i) + Temp
    Next i
    int�� = Temp
End Function





