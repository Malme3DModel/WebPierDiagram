Attribute VB_Name = "�y�؋��r"
'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�y�؋��r    �@�@�@�@                                      �@�@�@�@�@�@�@�@�@�@�@  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@2003.9.19    �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@               �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������
'
'

              
         Public EER1 As Integer

     '����������������������������������������������������������������������������������������������������������������������������������������
     '���@�y�؋��r�@�� �ݒ�
     '����������������������������������������������������������������������������������������������������������������������������������������
         
         
         '�� ���
                 Dim ���_Data�� As Integer:        'Data�̌�
                 Dim ���_Data$(50):                'i�Ԗڂ�Data
                 Dim ���_D(50) As Single:          'i�Ԗڂ�Data�̒l
                 Dim �����L:                       '���Data$ ���v�Z��������

         '�� �S�� ��� Data
                 Dim ���_Data�� As Integer:        'Data�̌�
                 Dim ���_Data$(50):                'i�Ԗڂ�Data
                 Dim ���_D(50) As Single:          'i�Ԗڂ�Data�̒l
        
                 
         '�� �S�� Data
                 '                                   P  @  L  H  n  �� Data$ �ɂ͓���Ȃ�
                 Dim �S��_Data��:                   'Data�̌�
        
                 Dim �S��Ds$(60):                   ' Temp
                 Dim �S��Di(60):                    ' Temp
                 Dim �S��_Property$:                '�S�ؓ���     exp  $�����⋭��
                 Dim �S��_����$:                    'XY  YZ  ZX   �S�؂̉��H����
                 Dim �S��_�a�{��$:                  '�S�ؖ{��,�a  exp  6+5+1-D38    18-��13-SR235
                 Dim �S��_�a$:                      ' �a  exp  D38    ��13
                 Dim �S��_�ʒu$:                    '�S��_�ʒu    exp  P127
                 Dim �S��_S�ʒu As Single:          '�S��_�ʒu �̌v�Z����
                 
                 Dim �S��_X�ʒu$:                   '�S��_X�ʒu    exp  PX127
                 Dim �S��_�蒅$:                    '�S��_�蒅    exp A=1220
                 Dim �S��_S�蒅 As Single:          '�S��_�蒅 �̌v�Z����
                 Dim �S��_H�a$:                     '�S�� ̰�ߒ��a  exp �a1242
                 Dim �S��_SH�a As Single:           '�S��_H�a �̌v�Z����
                 Dim �S��_K�ʒu$:                   '�S�� ��؈ʒu  exp K101
                 Dim �S��_SK�ʒu As Single:         '�S��_K�ʒu �̌v�Z����
        
                 Dim �S��_pit$:                     '�S�� �߯�    exp  @1200+6x200+4x150+40x150+12x300
                 
                 Dim �S��_L$:                       '�S�� ����    exp  Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
                 Public �S��_B$:                       '�S�� ����    exp  B340+J564+340
                 Dim �S��_D$:                       '�S�� ����    exp  D340+J564+340
                 Dim �S��_X$:                       'C Hoop�S�� ����    exp
                 Dim �S��_Y$:                       'C Hoop�S�� ����    exp
                 
                 Dim �S��_XX As Single:             '  VAL(�S��_X$)
                 Dim �S��_YY As Single:             '  VAL(�S��_Y$)
                 
                 Public �S��_H$:                        '�S�� ����    exp  H70
                 
                 Dim �S��_n$:                       '�S�� ��    exp  n6
                 Dim �S��_Z�ʒu As Single:          '�Y̰�� Start�ʒu  exp Z-1100
                 Dim �S��_r As Single:                 '�S��_r   ��  ���S��(��������) �ł�
       
                 Dim ���r_�S��_Mark$(300):
                 Dim �S��_���$:                    ' exp SD390
         
         
         '�� �S�� etc
         
                 Dim �S��_����� As Single:         '  �S�؂̉����   ��b
         
         
         
         '�� �S��_������
                 
                 Dim ������_X1 As Single:           ' �����ʂ�� Start X �ʒu�̋���
                 Dim ������_Y1 As Single:           ' ����ʂ�� Start Y �ʒu�̋���
                 Dim ������_X2 As Single:           ' �����ʂ�� ��ؓ_ X���W
                 Dim ������_Y2 As Single:           ' ����ʂ�� ��ؓ_ Y���W
                 Dim ������_�p�x  As Single
                 Dim ������_LX  As Single
                 Dim ������_LY  As Single
                 Dim ������_r  As Single
         
         '�� �S��_���
                 
                 Dim �S��_��_����$:                       '������   �S�ؕ���   Moj1_Moj2_Moj3_Moj4   exp   B_0_2
                 Dim �S��_��_����1$:                      '������   �S�ؕ���   D22
                 Dim �S��_��_����2$:                      '������   �S�ؕ���   3-D22
                 Dim �S��_��_����3$:                      '������   �S�ؕ���   4-D16 x 9400
                 Dim �S��_��_����4$:                      '������   �S�ؕ���   D16 x 9400
                 
                 Public �S��_Stoper�J��1 As Single:     '�S��_Stoper�� �J��
                 Public �S��_Stoper�J��2 As Single:      '�S��_Stoper�� �J��
         
                 Public �S��_�܋Ȃ� As Single:          '�S�؂� �܋Ȃ�����
         
         
         '�� ���� Data     Sub P_���r_��_���2(Data1$)
         
                 Dim ���ؒi��_�i���� As Integer
                 Dim ���ؒi��_Ddata$(30):            'Data i�Ԗڂ� Data
         
         
                 Dim ����_���؎�ސ� As Integer
                 Dim ����_Ddata$(90):               'Data i�Ԗڂ� Data
                 Dim ����_D���ؖ{��(90) As Integer: 'Data i�Ԗڂ̒��ؖ{��
                 Dim ����_D���ؔԍ�(90) As Integer: 'Data i�Ԗڂ̒��ؔԍ�
                 Dim ����_���ؔԍ�(500) As Integer: 'i�Ԗڂ̒��ؔԍ�
                 Dim ����_���؃��� As Integer:      '�S���ؖ{��
         
         
         '�� �S�� �a�{�� Data     Sub ���r_�S��_�a_��_ck(�S��_�a�{��$)
                 Dim ���r�S�،a$(50):               '�S�،a   exp  D22  D32  ��13
                 Dim �S�،a_���$:                  'SR235
                 Dim �S�ؐ�_n As Integer:           '�S�ؐ��̎w�萔
                 Dim �S�ؐ�_n1 As Integer:          '1�Ԗ�(X�����S��)�̓S�ؐ�
                 Dim �S�ؐ�_n2 As Integer:          '2�Ԗ�(Y�����S��)�̓S�ؐ�
                 Dim �S�ؐ�_n3 As Integer:          '3�Ԗ�(�p��Ű��)�̓S�ؐ�
                 Dim �S�ؐ�_��n As Integer:         '�S �S�ؐ�
        
         '�� �S�� �z�u �ʒu Data     �S��_�ʒu$
                 Dim �S�؈ʒu_Data�� As Integer:    '   Data�̌�
                 Dim �S�؈ʒu_������$:              ' ""  OR  "�}"
                 Dim �S�؈ʒu_Data$(200):           'i�Ԗڂ̈ʒu��Data
                 Dim �S�؈ʒu_n(200) As Integer:    'i�Ԗڂ̈ʒu�̌�
                 Dim �S�؈ʒu_p(200) As Single:     'i�Ԗڂ̈ʒu mm
                 Dim �S�؈ʒu_L(200) As Single:
                 Dim �S�؈ʒu_��L As Single:        '�S Data_�ʒu_L
        
                 Dim �S�؈ʒu_���� As Integer:      '�ʒu(���i)�̃����i��
                 Dim �S�؈ʒu_�ʒu(2000) As Single: '���i�� Start����̈ʒu  ii=1 To �����i��
        
         '�� �S�� �z�u X�ʒu Data     �S��_X�ʒu$
                 Dim �S��X�ʒu_Data�� As Integer:    '   Data�̌�
                 Dim �S��X�ʒu_������$:              ' ""  OR  "�}"
                 Dim �S��X�ʒu_Data$(200):           'i�Ԗڂ̈ʒu��Data
                 Dim �S��X�ʒu_n(200) As Integer:    'i�Ԗڂ̈ʒu�̌�
                 Dim �S��X�ʒu_p(200) As Single:     'i�Ԗڂ̈ʒu mm
                 Dim �S��X�ʒu_L(200) As Single:
                 Dim �S��X�ʒu_��L As Single:        '�S Data_�ʒu_L
        
                 Dim �S��X�ʒu_���� As Integer:      '�ʒu(���i)�̃����i��
                 Dim �S��X�ʒu_�ʒu(2000) As Single: '���i�� Start����̈ʒu  ii=1 To �����i��
        
        
        
         '�� �S�� �z�u�@Pit Data 2    �S��_Pit$        ' Data1$       ����exp   250+32x125 500+28x125
                 Dim �S��P�i��_Data�� As Integer:       '�i�� Data�̌�
                 Dim �S��P�i��_Data$(30):      'P�i�� i�Ԗڂ̈ʒu��Data
         
         
         '�� �S�� �z�u�@Pit Data     �S��_Pit$
                 Dim �S��P_Data�� As Integer:       'Data�̌�
                 Dim �S��P_������$:                 ' ""  OR  "�}"
                 Dim �S��P_Data$(200):              'i�Ԗڂ��߯���Data
                 Dim �S��P_n(200) As Integer:       'i�Ԗڂ��߯��̌�
                 Dim �S��P_p(200) As Single:        'i�Ԗڂ��߯� mm
                 Dim �S��P_L(200) As Single:
                 Dim �S��P_��L As Single:           '�S Data_Pit �̍��v
                 Dim �S��P_���� As Integer:         'Pit(���i)�̃����i��
                 Dim �S��P_�ʒu(3000) As Single:    '���i�� Start����̈ʒu  ii=1 To �����i��
       
       
       
         '�� �S�؉��H�} Data      Sub ���r_�S��_L_ck(�S��_L$)
                 
                 Dim ���r_�S�؃� As Single:         '�S�؉��H������ Start�p�x
                 Dim �S��L_���H����$:               ' c3-1,  c3-2   ��������    *2002.11.4
                 
                 
                 Dim �S��L_Data1$:                  ' Data Cope
                 Dim �S��L_Data�� As Integer:       'Data�̌�
                 Dim �S��L_Data$(200):              'i�Ԗڂ�Data$    exp  F   2746�`2246    5655+4655
                 Dim �S��L_Type$(200):              'i�Ԗڂ�Data_Type   L  F  W  J  r
                 Public �S��L_L(200) As Single:        'i�Ԗڂ�Data_L
                 Dim �S��L_r(200) As Single:        'i�Ԗڂ́@Data�@r       Arc�̏ꍇ
                 Dim �S��L_r�p�x(200) As Single:    'i�Ԗڂ�  Data  r�p�x   Arc�̏ꍇ
                 Dim �S��L_r_X0(200) As Single:     'i�Ԗڂ́@Data�@r �̒��S X0
                 Dim �S��L_r_Y0(200) As Single:     'i�Ԗڂ́@Data�@r �̒��S Y0
                 
                 Dim �S��L_�Ȋp�x(200) As Single:   'i�Ԗڂ�  Data  �Ȃ��p�x�@���͂��Ȃ��ꍇ 90
                 Dim �S��L_�S��L  As Single:            '�S Data_L
       
                 Dim �S��L_Start�p�x As Single:     '�S�؉��H��Start�S�؂̊p�x�@�@���͂��Ȃ��ꍇ 90
                 Public �S��L_X(201) As Single:        'i�Ԗڂ�Data$ Start X���W  Data�̌�+1
                 Public �S��L_Y(201) As Single:         'i�Ԗڂ�Data$ Start Y���W  Data�̌�+1
       
                 Dim �S��L_Xmin As Single:          ' X���Wmin
                 Dim �S��L_Xmax As Single:          ' X���Wmax
                 Dim �S��L_Ymin As Single:          ' Y���Wmin
                 Dim �S��L_Ymax As Single:          ' Y���Wmax
                 Dim �S��L_Xcen As Single:          ' X���Wcenter
                 Dim �S��L_Ycen As Single:          ' Y���Wcenter
                 Dim �S��L_XL As Single:            '�S��L_XL=�S��L_Xmax-�S��L_Xmin
                 Dim �S��L_YL As Single:            '�S��L_YL=�S��L_Ymax-�S��L_Ymin
        
                 Dim �S��L_���i�� As Integer:       '�S�؂̕�����  ٰ�ߋ؂� +1
                 Dim �S��L_��L(50) As Single:       '�S��L_��L(�S��L_���i��) �i�S�؂̍��v����  Joint�ɂ�镪��
       
                 Dim �S��L_���i�ʒu(50) As Integer: '�S��L_���i��Start�ʒu    ٰ�ߋ؂� �͕�
       
                 Dim �S��L_W�� As Integer:           ' �޽���ڐ�
                 Dim �S��L_K�� As Integer:           ' �@�B�p����
                 
                 
                 
                 
         '�� �S�؉��H�} Data2     �S��L_Data$(i)
                 Dim �S��L_L1 As Single:            '�S�� L1 ����   L1�`L2
                 Dim �S��L_L2 As Single:            '�S�� L2 ����
                 Dim �S��L_r1 As Single:            '�S�� r  ���a
                 Dim �S��L_r�p�x1 As Single:        '�S�� r  �p�x
       
       
         '�� �Y�ʒu
                 Dim �Y�ʒu_Data�� As Integer:      'Data�̌�
                 
                 Dim �Y�ʒu_Data$(100):             'i�Ԗڂ�Data
                 
                 Dim �Y�ʒu_X(100) As Single:       'i�Ԗڂ�Data��X���W
                 Dim �Y�ʒu_Y(100) As Single:       'i�Ԗڂ�Data��Y���W
                 Dim �Y�ʒu_No(100) As Integer:     'i�Ԗڂ�Data�̍Yno
                 Dim �Y�ʒu_�a(100) As Single:       'i�Ԗڂ�Data�̍Y�a
                 
                 '[[[ ** 2 ** ]]]
                 Dim �Y�ʒu_X�� As Integer:         '�Y��X������
                 Dim �Y�ʒu_Y�� As Integer:         '�Y��Y������
    
                 Dim �Y�ʒu_Xpos(100) As Single:      '�Y��X���� �ʒu
                 Dim �Y�ʒu_Ypos(100) As Single:      '�Y��Y���� �ʒu
    
           
           
         '�� Stoper�ʒu
                 
                 Dim StoperKind�� As Integer:       'StoperKind��
                 Dim Stoper�ʒu_Data�� As Integer:  'Data�̌�
                 Dim Stoper�I�_���ʒu��i As Integer:  'Stoper�I�_���ʒu��
                 Dim Stoper�N�_���ʒu��i As Integer:  'Stoper�N�_���ʒu��
                 Dim Stoper�I�_��_Y As Single:      'Stoper�I�_����Y���W
                 Dim Stoper�N�_��_Y As Single:      'Stoper�N�_����Y���W
                 
                 Dim Stoper�ʒu_Data$(100):         'i�Ԗڂ�Data
                 Dim Stoper�ʒu_X(100) As Single:   'i�Ԗڂ�Data��X���W
                 Dim Stoper�ʒu_Y(100) As Single:   'i�Ԗڂ�Data��Y���W
                 Dim Stoper�ʒu_No(100) As Integer: 'i�Ԗڂ�Data��Stoperno
                 Dim Stoper�ʒu_BX(100) As Single:  'i�Ԗڂ�Data�� �į��BX
                 Dim Stoper�ʒu_BY(100) As Single:  'i�Ԗڂ�Data�� �į��BY
                 Dim Stoper�ʒu_H(100) As Single:   'i�Ԗڂ�Data�� �į��H
    
                 Dim Stoper�ʒu_�J��X As Single:     '�į�ߊJ�� X����   1 - 2 ��
                 Dim Stoper�ʒu_�J��Y As Single:     '�į�ߊJ�� Y����   1 - (n/2+1) ��
    
                 Dim Stoper�ʒu_�[�J��X As Single:   '�į�ߒ[���J�� X����   1 - 2 ��
                 Dim Stoper�ʒu_�[�J��Y As Single:   '�į�ߒ[���J�� Y����   1 - (n/2+1) ��
          
                '[[[ ** 2 ** ]]]
                 Dim Stoper�ʒu_X�� As Integer:          '�į�߂�X������
                 Dim Stoper�ʒu_Y�� As Integer:          '�į�߂�Y������
    
                 Dim Stoper�ʒu_�I�_Xpit(30) As Single:  '�į�߂�X���� Pit ���[����  �į�߂�X������
                 Dim Stoper�ʒu_�N�_Xpit(30) As Single:  '�į�߂�X���� Pit ���[����  �į�߂�X������
                 Dim Stoper�ʒu_Ypit(10) As Single:  '�į�߂�Y���� Pit ���[����  �į�߂�Y������
         
         
         '�� �B���ʒu
                 Dim �B��Kind�� As Integer:         '�B��Kind��
                 Dim �B���ʒu_Data�� As Integer:    'Data�̌�
                 Dim �B���I�_���ʒu��i As Integer:  '�B���I�_���ʒu��
                 Dim �B���N�_���ʒu��i As Integer:  '�B���N�_���ʒu��
                 Dim �B���I�_��_Y As Single:        '�B���I�_����Y���W
                 Dim �B���N�_��_Y As Single:        '�B���N�_����Y���W
                 
                 
                 Dim �B���ʒu_Data$(100):           'i�Ԗڂ�Data
                 Dim �B���ʒu_X(100) As Single:     'i�Ԗڂ�Data��X���W
                 Dim �B���ʒu_Y(100) As Single:     'i�Ԗڂ�Data��Y���W
                 Dim �B���ʒu_No(100) As Integer:   'i�Ԗڂ�Data�̌B��no
       
                '[[[ ** 2 ** ]]]
                 Dim �B���ʒu_X��  As Integer:        '�B����X������
                 Dim �B���ʒu_Y��  As Integer:        '�B����Y������
    
                 Dim �B���ʒu_�I�_Xpit(100) As Single:       '�B����X���� Pit ���[����  �B����X������  +1
                 Dim �B���ʒu_�N�_Xpit(100) As Single:       '�B����X���� Pit ���[����  �B����X������  +1
                 Dim �B���ʒu_Ypit(100) As Single:       '�B����Y���� Pit ���[����  �B����Y������  +1
       
     '����������������������������������������������������������������������������������������������������������������������������������������
     '���@�y�؋��r�@�̏o�͐ݒ�
     '����������������������������������������������������������������������������������������������������������������������������������������
       
       'Dim �y��_Data_dsk As String
       
       Public �Y_No_Max As Integer, ��b_No_Max As Integer, ��_No_Max As Integer
       Public �B��_No_Max As Integer, Stoper_No_Max As Integer, ��_No_Max As Integer
       Public �Y����$(200), ��b����$(200), ������$(200), Stoper����$(200), �B������$(200), ������$(200)
       
       
       Type �y��_���r_�Y_Data:       '.�Y
                ' ���_   ��b����,�Y���S
                ���� As String * 200:      '����=�Y1
                No As Integer:             '   1  2  3
                Da_D As String * 200:         'D=1500
                Da_L As String * 200:         'L=14500
                
                '[[[ ��߰�� ]]]
                Speser�퐔 As Integer
                Speser1 As String * 200:    'S1=18-��13-SR235 n6 L50+190+50 H70 @500+5000+5000+4000  '��߰���ӏ�=6
                Speser2 As String * 200:    'S2=  �\��
                Speser3 As String * 200:    'S3=  �\��

                '[[[ ��� ]]]
                K�퐔 As Integer
                K1 As String * 200:        'K1=24-D32 K156 A1220 L11000+J2000+6620                                          '���   K1     A:�蒅   P:�ʒu
                K2 As String * 200:        'K2=24-D32-D25 A1220 K156 L11000+J2000+6620     �@                               '���   K2    ��،a���قȂ�ꍇ
                K3 As String * 200:        '���   K2 �\��
                ��K�S�ؖ{�� As Integer
                

               ' KH1 As String * 200:       '**K01=7-D25 @500+4x2500+2x1950 L3911+290 D1245                                    '�g���� K01
                KH2 As String * 200:       'K02=8-D25 L837                                                                  '�Y��̓S��  2��
               ' KH3 As String * 200:       '**K03=53-D22 @-1100+3x200+4x125+3x125+250+18x125+200+18x125 L3902+260 D1242       '��1 ̰��
               ' KH4 As String * 200:       '**K04=52-D19 @6150+11x150+300+15x150+300+11x150+200+11x150 L3892+230 D1239        '��2 ̰��
               ' KH5 As String * 200:       '��3 ̰�߁@�\��
                
                Hoop�퐔 As Integer:         ' ̰�߂̎�ސ�
                Hoop1 As String * 200:     'HOOP=Z-1100_D22_D1242_@3x200+4x125+48x125     '���Ĉʒu_̰�ߓS��_���a_�߯�
                Hoop2 As String * 200
                Hoop3 As String * 200
                
                Hoop1�� As Integer
                Hoop2�� As Integer
                Hoop3�� As Integer
                
                �g���� As String * 200:    ' �g���� = D25_D1245_12_32_52_69_86_99_112             '  �g���S��_���a_�ʒu_�ʒu_�ʒu        �ʒu(���Ԗ�)
                
                �g���ؐ� As Integer
                
                End Type
                Public �y�؋��r_�Y As �y��_���r_�Y_Data

       Type �y��_���r_��b_Data:    ' .��b
                ' ���_   ��b����,��b���S
                ���� As String * 200:      '����=F1
                No As Integer:             '   1  2  3
                
                Da_BX As String * 200:        'BX=5250+5250          BX=10500
                       BX As Single:           ' BX=BXL+BXR
                       BXL As Single
                       BXR As Single
               
                Da_BY As String * 200:        'BY=3650+3200+3650
                       BY As Single:           ' BY=BYL+BYR
                       BYL As Single
                       BYR As Single
                       BYL_�[ As Single:       ' �[��
                       BYL_�� As Single:       ' ����
                       BYR_�[ As Single:       ' �[��
                       BYR_�� As Single:       ' ����
                
                Da_H As String * 200:         'H=2500+500
                       H As Single:           'H=HU+H_D
                       H_U As Single
                       H_D As Single
               
                ��con As String * 200:
                ��con_t As Single
               
               
               '��������̋���
                �Y�ʒu As String * 500:    '�Y�ʒu
                                           '     -3750,3750     0,3750     3750,3750,P2
                                           '     -3750,0                   3750,0
                                           '     -3750,-3750    0,-3750    3750,-3750


              '[[[  Y���� �S�� ]]]
                FY1 As String * 200:       'F1=83-D32 P95 @155+40x125+40x125+155 LF+10014+F                                'Y ��S��      P:�ʒu    P��:�͌v�Z
                FY2 As String * 200:       'F2=83-D32 P95 @155+40x125+40x125+155 L2328+3612+(1092+W+2092)+3612+2328        'Y ��S��
                FY3 As String * 200:       'F3=10-D19 @200+9x200 L190+10361+190                                            'Y ���S��
                FY4 As String * 200:       ' �\��

              '[[[  X���� �S�� ]]]
                FX1 As String * 200:       'F11=83-D32 P127 @125+80x125+126 LF+10014+F                                     'X ��S��
                FX2 As String * 200:       'F12=25-D32 P127 @24x125 L2746+(5655+W+4655)+2746                               'X ��S��
                FX3 As String * 200:       'F13=58-D32 P127 @125+80x125+125 L2746�`2246+(5655+W+4655)+2746�`2246           'X ��S�� ��
                FX4 As String * 200:       'F14=18-D19 @300+8x200 L190+10361+190                                           'X ���S�� �O

              '[[[  �c���� �S�� ]]]
                FH1 As String * 200:       'f1=48-D19 @  LF-2804+801+2804+F                                         ' *** �c�S�� 1      ? P?  @?
                FH2 As String * 200:       'f2=266-D10 @  LF+2804�`2304+801+2804�`2304+F                            ' *** �c�S�� 2      ?
                FH3 As String * 200:       ' �\��

                fpit As String * 200:      ' fpit    �c�S�؂̈ʒu�̒�`
                                           ' X  ��bX���[�����L + Y�����S���߯� + �Ԋu1 + �Ԋu2 + �Ԋu3   (�Ԋu3�� �Ԋu1�̏I�[����̖߂�)
                                           ' Y  ��bY���[�����L + X�����S���߯� + �Ԋu1
                                           ' exp    fpit=X375+125+6+2+2_Y250+125+2

                End Type
                Public �y�؋��r_��b As �y��_���r_��b_Data

       
                 Type ��b�c�S��
                        Start_X As Single:  '��bX���[�����L + Y�����S���߯� + �Ԋu1 + �Ԋu2 + �Ԋu3   (�Ԋu3�� �Ԋu1�̏I�[����̖߂�)
                        Y�S��pit As Single:  '
                        �S�؊ԊuX1 As Single:  '
                        �S�؊ԊuX2 As Single:  '
                        �S�؊ԊuX3 As Single:  '
                        Start_Y As Single:  '��bY���[�����L + X�����S���߯� + �Ԋu1 + �Ԋu2 + �Ԋu3   (�Ԋu3�� �Ԋu1�̏I�[����̖߂�)
                        X�S��pit As Single:  '
                        �S�؊ԊuY1 As Single:  '
                        End Type
                 
                 Dim ��c�� As ��b�c�S��
       
       
       
       
       
       Type �y��_���r_��_Data
                
                
                ���� As String * 200:      '����=C1
                No As Integer:             '   1  2  3
                Da_BX As String * 200:        'BX=4500
                       BX As Single:           ' BX=BXL+BXR
                       BXL As Single
                       BXR As Single
                
                Da_BY As String * 200:        'BY=1500+1500
                       BY As Single:           ' BY=BYL+BYR
                       BYL As Single
                       BYR As Single
                
                Da_H As String * 200:         'H=8700
                       H As Single:            ' H
                
                Da_r As String * 200:         'r=250
                       r As Single
              
              
              
              '[[[ ��� ]]]
                
                C�퐔 As Integer:         ' ��؂̎�ސ�
                C1 As String * 200:        'C1=16+5+1-D38 P309 K101 @X-1850+15x250 @Y-1000+4x500 LF+(11420+2200)                ' ���1
                C2 As String * 200:
                C3 As String * 200:
                C4 As String * 200:
                C5 As String * 200:
                C6 As String * 200:
                
                CXpit�i�� As Integer
                CXpit1 As String * 200
                CXpit2 As String * 200
                
                
                CYpit�i�� As Integer
                CYpit1 As String * 200
                CYpit2 As String * 200
                
                CX��ؒi�� As Integer
                CX���1 As String * 200
                CX���2 As String * 200
                
                CY��ؒi�� As Integer
                CY���1 As String * 200
                CY���2 As String * 200
                
                C�p��� As String * 200
                C�p���X As Single: '�p���XY=145_200
                C�p���Y As Single
                
               '[[[ CK �� �����̺�Ű�� �ł�  ]]]
                CK As String * 200:        'CK=22-D16_K101_L480_r63.5                                       ' ������ �⋭��
                

              '[[[ Hoop �O��  ]]]
                CH1 As String * 200:       '
                Choop_�S�� As String * 5:   ' D22
                CHoop_dt As Single
                CHoop_r As Single


              '[[[ Hoop ���� X����  ]]]
                CHX1 As String * 200:      'c2-1=63-D19 P0 @1200+6x200+4x150+40x150+12x300 L1057+(1678+F+J570+F+3234)+1057+(1574+F+J570+F+3247)    '(c3) Hoop X����  ���� 1
                CX_1_Hoop_Jtype As String * 5: ' U   D   �Б�Joint   ���  ����Joint
                
                CHX2 As String * 200:
                CX_2_Hoop_Jtype As String * 5: ' U   D   �Б�Joint   ���  ����Joint

              '[[[ Hoop ���� Y����  ]]]
                CHY1 As String * 200:      'c3-1=34+34+34-D19 P-1500+125+1250 @1200+3x400+2x300+20x300+8x600 L2855+807+(1713+F+J570+F+1712)+807    '(c5) Hoop Y����  ���� 1
                CY_1_Hoop_Jtype As String * 5: ' L   R   �Б�Joint   ���  ����Joint
                
                CHY2 As String * 200:
                CY_2_Hoop_Jtype As String * 5: ' L   R   �Б�Joint   ���  ����Joint
                
                CHY3 As String * 200:
                CY_3_Hoop_Jtype As String * 5: ' L   R   �Б�Joint   ���  ����Joint
                
                End Type
                Public �y�؋��r_�� As �y��_���r_��_Data
       
       Type �y��_���r_Stoper_Data
                ',�į�߰
                ���� As String * 200:     '����=�į�߰1
                No As Integer:             '   1  2  3
                Typei As Integer:          ' 1  ��   2 ��
                ���� As String * 200:     '����=410x410x1430
                       BX As Single:
                       BY As Single:
                       H As Single:
                                       
                
                ��� As String * 200:     '���=300
                H1 As String * 200:       'H1=10-D19     L720+419+720    @109+4x100+5x200
                H2 As String * 200:       'H2=10-D16     L1200+150+1200  @109+4x100+5x200
                H3 As String * 200:       'H3=4+2+3-D16  L1400
                End Type
                Public �y�؋��r_Stoper As �y��_���r_Stoper_Data

       Type �y��_���r_�B��_Data
                ' .�B��     '����
                ���� As String * 200:     '����=�B��1
                No As Integer:             '   1  2  3
                Gomsyu As String * 200:   '��Ѽ��=650x450     ���~ BD �� OK        ' BX x BY
                BD As String * 200:       'BD=650x450                             ' BX x BY
                ��� As String * 200:     '���=300
                S1 As String * 200:       'S1=9-D19 @50+8x100 L600+941+600        ' X����    @50 ����������  **
                S2 As String * 200:       'S2=10-D22 @9x100 L690+800+690          ' Y����    @ �B������
                End Type
                Public �y�؋��r_�B�� As �y��_���r_�B��_Data
       
       
       Type �y��_���r_��_Data
                 ' .��        '����
                
                ���� As String * 200:       '����=��1
                No As Integer:             '   1  2  3
                Da_BX As String * 200:         'BX=4500+4500
                       BX As Single:           ' BX=BXL+BXR
                       BXL As Single
                       BXR As Single
                       BXL2 As Single:         ' BXL2=BXL-CXL
                       BXR2 As Single:         ' BXR2=BXR-CXR
                
                Da_BY As String * 200:         'BY=1500+1500
                       BY As Single:           ' BY=BYL+BYR
                       BYL As Single
                       BYR As Single
                       BYL2 As Single:         ' BYL2=BYL-CYL    *** CYL �̒�`���K�v
                       BYR2 As Single:         ' BYR2=BYR-CYR�@�@*** CYR �̒�`���K�v
                
                Da_H As String * 200:          'H=1000+1500
                       H As Single:            ' H=H1+H2
                       H1 As Single:           ' H1=0 �X���Ȃ�
                       H2 As Single:           ' ��[�@H
                
                Da_���z As String * 200:       '���z=10,-28,-28        ' ���z=�����̒l,���[�̒l,�E�[�̒l
                
                Da_r As String * 200:          'r=250
                Da_r2 As String * 200:         'r=1500
                
                       
                       r As Single
                       r2 As Single
                       
                       ���zC As Single:        '  �����̌��z
                       ���zL As Single:        '  ���[�̌��z
                       ���zR As Single:        '  �E�[�̌��z
                
                Stoper�ʒu As String * 400: '�į�߰�ʒu
                                            '�@�@�@�@�@�@-2750,520   0,520    2750,520,�į�߰1
                                            '            -2750,-520  0,-520   2750,-520      ' X,Y,�į�߰����
                �B���ʒu As String * 400:   '�B���ʒu
                                            '           -4100,400   -1400,400   1400,400   4100,400,�B��1
                                            '           -4100,-400  -1400,-400  1400,-400  4100,-400     ' X,Y,�B������

                
                '[[[ ٰ�ߎ��  ]]]
                BR�퐔 As Integer:         ' ٰ�ߎ�؂̎�ސ�
                BR1 As String * 200:        'B1-1=$ٰ�ߋ� 6+6-D32 P�}672 @126+2x80 Lr340+564+r340+(3784+J960+5744)+r340+564+r340+(3784+J960+5744)      ' ٰ�ߓS��(���) 1  P:�ʒu  �į�߰�̒��S����ٰ�ߓS�ؒ��S
                BR2 As String * 200:
                BR3 As String * 200:
                BR4 As String * 200:

                '[[[ ��S��  ]]]
                BU1 As String * 200:        'B2-1=$��S�� 2+2-D16 P�}922.6+180.7 @118 LF+8900+F                                                        '(B6)  ��S�� (��؂̌���)
                BU2 As String * 200:

                '[[[ ���S��(��������)  ]]]
                BD1 As String * 200:        'B3-1=12+12-D25 P98 @�}200+4x250+164 L3750+r150[236]+1225                                                  ' ���S��(��������)   L-R
                BD2 As String * 200:        '�\��

                '[[[ ���S��  ]]]
                B��1 As String * 200:       'B4-1=9+9-D25 @98+8x150 L2880+r270+2289+r270+2880                                                          '(B4) ���S�� 1
                B��2 As String * 200:       '�\��


                '[[[ ���ׯ��  ]]]
                BSpit As String * 200
                BS1 As String * 200:        'B01=$���S�� 28+28-D22 @�}2300+13x150 LF+2132�`1335+r160+1458+2292�`1495+F                                 ' St  ���S��
                BS2 As String * 200:        'B02=$��S�� 22+22-D22 @�}2300+150+600+8x150 LF+440+1618+440+F                                             ' St  ��S��
                BS3 As String * 200:        'B03=$�į�ߊO�� 3+3+3+3-D22 @�}2600+2x150 LF+440+448+440+F                                                 ' St  ��S�� �į�߰���� �O��
                
                
                End Type
                Public �y�؋��r_�� As �y��_���r_��_Data

       
       
       
     '����������������������������������������������������������������������������������������������������������������������������������������
     '���@�y�؋��r�@�� �}�ʏo�͐ݒ�
     '����������������������������������������������������������������������������������������������������������������������������������������
       
       
        Public Dxf_No As Integer
        
        Public �y��_���r_DXF_F��$, �y��_���r_�}�ʖ�$, �y��_���r_�k��$, �y��_���r_�}�ԍ�$
       
        Public �y��_���r_�p��size$:   ' A3 A2 A1
        Public �}��{_Scale As Single:  ' 50
        Public ����}_Scale As Single:  ' ����}_Scale
        
        Public ���r_LAYER_N As Integer, ���r_layer$(500)
        Public ���r�}_��{�ݒ萔 As Integer, ���r�}_��{�ݒ�$(900)
        
        Public �}_����$, �k��$, �}�ԍ�$
        
        Dim ���r���_�\��$
        
        Public �}_�Y_No As Integer, �}_��b_No As Integer, �}_��_No     As Integer, �}_��_No   As Integer
       
         '[[[ �}�ʘg ]]]
                 Public �}�ʘgData_max As Integer
                 Public �}�ʘgData$(1100)
        
        
        '[[[ ���� Size ]]]
                 Public �}_�薼_Msize As Single:    ' �}�ʏ�� Title
                 Public �}��_Msize As Single:       ' �i�}�� Title
                 Public �}_���@_Msize As Single:  ' �}�̐��@���̕���
        
                 Public �}_�\��_Msize As Single:  ' �}�̈�ʕ\���̕���
        
        
        '[[[ �i�}���J���ʒu ]]]
        
                Public �i�}���J���ʒu As Single
        
        
        '[[[ ����ײ�  ]]]]
                Public �}_CenterLine_����$:    '�}�̾���ײ݂̐���
                Public �}_CenterLine_���F$:    '�}�̾���ײ݂̐��F
        
        
        '[[[ ��̐} ]]]
        Public ���r_���@��_Pit_��̐} As Single:   ' 5mm  ��̐} ���@���̊Ԋu
        
        Type �y�؋��r_���@���ʒu
                 U�J�� As Single:  ' 40mm  ��̐} �㐡�@��_��̂���J��
                 D�J�� As Single:  ' 40mm  ��̐} �����@��_��̂���J��
                 L�J�� As Single:  ' 40mm  ��̐} �����@��_��̂���J��
                 R�J�� As Single:  ' 40mm  ��̐} �E���@��_��̂���J��
                 End Type
                 
                 Public ���@���ʒu_�Y���� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�Y�f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�Y���f�� As �y�؋��r_���@���ʒu
            
                 Public ���@���ʒu_��b���� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_��bA�f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_��bB�f�� As �y�؋��r_���@���ʒu
            
                 
                 Public ���@���ʒu_�B��A���� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�B��E���� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�B��B�f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�B��D�f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�B��F�f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�B��H�f�� As �y�؋��r_���@���ʒu
                 
                 
                 
                 Public ���@���ʒu_������A As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_������B As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_���f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�����f�� As �y�؋��r_���@���ʒu
            
                 Public ���@���ʒu_������ As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_���f�� As �y�؋��r_���@���ʒu
                 Public ���@���ʒu_�����f�� As �y�؋��r_���@���ʒu
            
        '[[[ ��̰�� ]]]
                 Public Hoop_Dx As Single:  ' ��}������ mm
                 Public Hoop_Dy As Single:  ' ��}������ mm
       
       
       
       
       
        '[[[ �S�؉��H�}  Mark ]]]
                 Public ���r_�S��_Mark_D As Single:   ' ���r_�S��_Mark�̒��a mm ���ɐ��l����
                 Public ���r_�S��_Mark_Msize As Single:   ' ���r_�S��_Mark�� Msize mm
        
                 Public ���r_J�S�؊J�� As Single:   ' 1mm   �S�؂̐ڍ�����}�� �S�؂ƓS�� �̂�����
                 Public ���r_���@��_�J��_�S�ؐ} As Single:   ' 7mm  �S�؉��H�} ���@��_�S�؂���J�� mm
                 Public �S��_Joint���F$:     ' �S��_Joint�̐��F
        
        ' �S�ؖ��� Mark
                 Public ���r_�S�ؖ���_Layer$:    '�S�ؖ��̂�Layer
                 Public ���r_�S�ؖ���_�a As Single:  '�S�ؖ��̂̉~�̒��a mm
                 Public ���r_�S�ؖ���_Msize1 As Single:  '�S�ؖ��̂̕����̻��� mm
                 Public ���r_�S�ؖ���_Msize2 As Single:  '�S�ؖ��̂̕����̻��� mm
                 Public ���r_�S�ؖ���_Msize3 As Single:  '�S�ؖ��̂̕����̻��� mm
              
                 Public ����_L1 As Single:  ' �S�ؖ��̂̕����̉��������� 20mm
                 Public ����_L2 As Single:   '�S�ؖ��̂̕����̉��������� 25mm
              
       
        '[[[ �f�ʈʒu�w�� ]]]
        
                 Public �f�ʈʒu�w��_XL As Single:   'mm
                 Public �f�ʈʒu�w��_YL As Single:   'mm
                 Public �f�ʈʒu�w��_��L As Single:   'mm
                 Public �f�ʈʒu�w��_��p As Single:   '�x
                 Public �f�ʈʒu�w��_Msize As Single:    '
                 Public �f�ʈʒu�w��J�� As Single:  ' mm
                 Public �f�ʈʒu�w��_���F$
       
       
        '[[[ Mark �ʒu ]]]
                 Public �\���ʒu_X�� As Integer, �\���ʒu_Y�� As Integer, �\���ʒu_Z�� As Integer
                 Public �\���ʒu_XPit As Single, �\���ʒu_Ypit As Single, �\���ʒu_Zpit As Single
                 Public �\���ʒu_X(500) As Single, �\���ʒu_Y(500) As Single, �\���ʒu_Z(500) As Single

       
       
       
       
     '����������������������������������������������������������������������������������������������������������������������������������������
     '���@�y�؋��r�@�� �S�ؕ\ �o�͐ݒ�
     '����������������������������������������������������������������������������������������������������������������������������������������
       
                Public �S�ؕ\����$(30), �S�ؕ\����2$(30), �S�ؕ\L(30) As Single, �S�ؕ\X(30) As Single
                Public �S�ؕ\_XN As Integer, �S�ؕ\_YN As Integer
                Public �S�ؕ\_Ypit As Single, �S�ؕ\_YL As Single, �S�ؕ\_XL As Single
       
                Public �S�ؕ\_��Y As Single:       '   ���݂�Y���W
 
                Public �S�؍ޗ��\_Msize As Single
                Public �S�ؕ\_����$
                Public �\���މӏ� As Single
                
                Public �O�S�ؕ���$, �O�S�،a$, �O�O�S�،a$, �O�S�؍ގ�$
       
                Public �\_�S�،a$(30), �\_���S�؏d��(30) As Single, �\_�����S�؏d��(30) As Single
                Public �\_�S��W�ӏ�(30) As Integer, �\_�S�؃�W�ӏ�(30) As Integer
                Public �\_�S��K�ӏ�(30) As Integer, �\_�S�؃�K�ӏ�(30) As Integer
       
       
                Dim �\����$, �\�S�،a$
                Dim �\�S��L As Single, �\�S�ؖ{�� As Single, �\�S�؏d�� As Single, �\�S�؃��d�� As Single
                Dim �\�S�ؓK�p$, �\�S�؍ގ�$, �\�S��W�ӏ� As Integer, �\�S��K�ӏ� As Integer
       
       
     '����������������������������������������������������������������������������������������������������������������������������������������
     '���@�ǉ�
     '����������������������������������������������������������������������������������������������������������������������������������������
                 Dim ���r_�S��L�v�Z_max$  ' �S��L �ő咷��Set   700�`900 �̏ꍇ �@�@L=900 �Ƃ���
                 Dim ��Stoper_No As Integer ' ���� �g�p���� Stoper No
       
       
                 Dim ���@�\���L As Single '  L < ���@�\���L   ���@�\�����@�ύX  �O���ɕ\��
       
       
       
       
       
       Dim oo


'������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�o�́@�R���g���[���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'������������������������������������������������������������������������������������������������������������������������
'
Sub ���r�}��_�o��(F_Name$)
    
        
        ��er = ""
         EER1 = 100: ' *2002.11.23
        ��Stoper_No = 1
        '**************
  ' ����CK = 200: er ("����CK = 200")
    Close
        
        ���@�\���L = 200 '150 'mm
        StoperKind�� = 0: Stoper�I�_���ʒu��i = 0: Stoper�N�_���ʒu��i = 0
        
        �B��Kind�� = 0: �B���I�_���ʒu��i = 0: �B���N�_���ʒu��i = 0
    
     Temp$ = TEMP_Data_dsk + "DATA1.TMP"
     

     WTYPE$ = "D"

     Open F_Name$ For Input As #1
     
     Open Temp$ For Output As #5
     
     
     Do: If EOF(1) Then Da$ = "//END" Else Line Input #1, Da$
        Da1$ = Da$
        Da$ = Trim$(Da$)
        If Mid$(Da$, 1, 2) <> "//" Then
              Call ����DATA����(WTYPE$, Da1$)
              Else
              Print #5, "/END": Print #5, "/END": Print #5, "/END"
              Close #5
           
           
           
           EMS0 = CTYPE$ + "  ": EMS1 = "": EMS2 = ""
           Select Case UCase$(CTYPE$)
                  Case "":  ' ����
                  
                  
                  Case "//���rDATA":              Call �y��_���r_Data_Read(Temp$)
                  Case "//���r�}":                Call �y��_���r_�}Data_Read(Temp$)
                  
                  Case "//�S�؍ޗ��\�쐬":            Call �y��_���r_�S�؍ޗ��\_Write(Temp$)
                  
                  
                  Case "//�S�؍ޗ��\":            Call �y��_���r_�S�؍ޗ��\_Read(Temp$)
                 
                 
                  
                  Case "//END": Exit Do
                  Case Else: er ("�o�͍���  [" + CTYPE$ + "] �͖���   "): If ����CK > 99 Then Stop: 'Else ��er = "*": Exit Sub
                        
             End Select
             

           '************************************************************
           If ��er <> "" Then er ("** Err �̂��� �Ȍ�̏����𒆒f���܂�  "): ��er = "": Exit Do
           '************************************************************
           
           CTYPE$ = Da$:   �A��data$ = ""
                     CTYPE$ = �����ϊ�$(CTYPE$, "�@", "  "): ' �������ݸ��u��������
                     ni = InStr(CTYPE$, " "): If ni > 1 Then CTYPE$ = Mid(CTYPE$, 1, ni - 1): �A��data$ = Trim(Mid(Da$, ni + 1))
                     If Mid$(�A��data$, 1, 1) = "'" Then �A��data$ = ""
                     If �A��data$ <> "" Then er (Da$ + " �v�Z���ڂ̌�� �ް��������"): If ����CK > 99 Then Stop
           
           
           Open Temp$ For Output As #5

          End If
        
             Loop
   
   
   
           '  Close #40
        Close #1
   
    ' Call OUT_ProgressBar(1, "")
   
       
    er ("�v�Z�I��")
    
    
    End Sub



'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�y�؋��r        DATA READ Control �@�@�@  �@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������
'
Public Sub �y��_���r_Data_Read(�Ǎ�Data$)
     
     
    ' ����CK = 200

     EMS0 = "�y�؋��r Data Read": EMS1 = "": EMS2 = ""
       
     Call ���r_�����l
       
     Open �Ǎ�Data$ For Input As #2
       
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
     
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case UCase$(����2s$)
        Case "errck", "ERRCK": ����CK = 200
        Case "/END": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        
        Case ".�Y":                Call Read_���r_�Y(Da$):    INP$ = "N"
        Case ".��b":              Call Read_���r_��b(Da$):  INP$ = "N"
        Case ".��":                Call Read_���r_��(Da$):    INP$ = "N"
        Case ".�B��", ".����":     Call Read_���r_�B��(Da$):  INP$ = "N"
        Case ".�į��", ".�į�߰":  Call Read_���r_Stoper(Da$): INP$ = "N"
        Case ".��":                Call Read_���r_��(Da$):    INP$ = "N"
     
        Case Else: ��er = "����ވʒu�� (" + Da$ + ") �� �����ł��܂���"
        End Select
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
     Loop
    
     Close #2
    
     End Sub
 
'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@                        �@�@�@  �@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@             �@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������




Private Sub Read_���r_�Y(Da$)
     
     �Y_No_Max = �Y_No_Max + 1: �Y_Na$ = "�Y" + F9(�Y_No_Max)
     EMS1 = "Data Read �Y [No=" + F9(�Y_No_Max) + "]": EMS2 = ""

 
     
     
     With �y�؋��r_�Y
                  .No = �Y_No_Max
                  .���� = "": .Da_D = "": .Da_L = ""
                  .Speser�퐔 = 0: .Speser1 = "": .Speser2 = "": .Speser3 = ""
                  .K�퐔 = 0: .K1 = "": .K2 = "": .K3 = ""
                  .��K�S�ؖ{�� = 0
                  .KH2 = ""
     
                  .Hoop�퐔 = 0:      .Hoop1 = "": .Hoop2 = "": .Hoop3 = "":
                  .Hoop1�� = 0: .Hoop2�� = 0: .Hoop3�� = 0:
                  .�g���� = ""
                  .�g���ؐ� = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS3 = Da$
            Da = �����ϊ�(Da, "*", "x")
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case ����s$
        Case "errck", "ERRCK": ����CK = 200
        Case "/", ".": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        Case "����=":       �Y_Na$ = Trim(����3s$)
        Case "D=":         .Da_D = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
        Case "L=":         .Da_L = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
        Case "S=":    .Speser�퐔 = .Speser�퐔 + 1: Call ���r_�S��_ck(����s$, ����3s$)
                            Select Case .Speser�퐔
                            Case 1: .Speser1 = ����3s$
                            Case 2: .Speser2 = ����3s$
                            Case 3: .Speser3 = ����3s$
                            Case Else: ��er = " (" + Da$ + ")  ��߰�� �̎�ނ��������܂�": If ����CK > 99 Then er (""): Stop

                            End Select
        
        Case "K=":    .K�퐔 = .K�퐔 + 1: Call ���r_�S��_ck(����s$, ����3s$)
                            .��K�S�ؖ{�� = .��K�S�ؖ{�� + �S�ؐ�_��n
                            Select Case .K�퐔
                            Case 1: .K1 = ����3s$
                            Case 2: .K2 = ����3s$
                            Case 3: .K3 = ����3s$
                            Case Else: ��er = " (" + Da$ + ")  ��؂̎�ނ��������܂�": If ����CK > 99 Then er (""): Stop
                            End Select
        
        Case "HOOP��=":       .KH2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "HOOP=":    .Hoop�퐔 = .Hoop�퐔 + 1:      Call ���r_�S��_ck(����s$, ����3s$)
                           Select Case .Hoop�퐔
                           Case 1: .Hoop1 = ����3s$
                           Case 2: .Hoop2 = ����3s$
                           Case 3: .Hoop3 = ����3s$
                           Case Else: ��er = " (" + Da$ + ")  Hoop �̎�ނ��������܂�": If ����CK > 99 Then er (""): Stop
                           End Select
        
        
        Case "�g����=":     .�g���� = ����3s$: D1$ = ����3s$: ni = InStr(6, D1$, " "): D1$ = Mid(D1$, 1, ni - 1)
                            Call ���r_�S��_ck(����s$, D1$)
        
        Case Else: ��er = " (" + Da$ + ") �� �����ł��܂���": If ����CK > 99 Then er (""): Stop
        End Select
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub

        Loop
     
        For ii = 1 To �Y_No_Max: If �Y����$(ii) = �Y_Na$ Then ��er = "�Y���� (" + �Y_Na$ + ") �͊��Ɏg�p����Ă��܂�": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        �Y����$(�Y_No_Max) = �Y_Na$:     .���� = �Y_Na$
     
     End With
     
   
     Call ���r_�Y_Put(�Y_No_Max)
     End Sub


Private Sub Read_���r_��b(Da$)
     
     ��b_No_Max = ��b_No_Max + 1: ��b_Na$ = "��b" + F9(��b_No_Max)
     EMS1 = "Data Read ��b [No=" + F9(��b_No_Max) + "]": EMS2 = ""

 
     With �y�؋��r_��b
                  .No = ��b_No_Max
                  .���� = "": .Da_BX = "": .Da_BY = "": .Da_H = "": .�Y�ʒu = ""
                  .FY1 = "": .FY2 = "": .FY3 = "": .FY4 = "":
                  .FX1 = "": .FX2 = "": .FX3 = "": .FX4 = "":
                  .FH1 = "": .FH2 = "": .FH3 = "": .fpit = ""
     
                  .BX = 0: .BXL = 0: .BXR = 0
                  .BY = 0: .BYL = 0: .BYR = 0: .BYL_�[ = 0: .BYL_�� = 0: .BYR_�[ = 0: .BYR_�� = 0
                  .H = 0: .H_D = 0: .H_U = 0
                  .��con = "": .��con_t = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS3 = Da$
            Da = �����ϊ�(Da, "*", "x")
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case ����s$
        Case "errck", "ERRCK": ����CK = 200
        Case "/", ".": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "": ' ���ā@�@�@exp  *����
        Case "����=":       ��b_Na$ = Trim(����3s$)
        Case "BX=":        .Da_BX = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                          Select Case ���_Data��
                          Case 1:   .BX = ���_D(1): .BXL = .BX / 2: .BXR = .BX / 2
                          Case 2:   .BXL = ���_D(1): .BXR = ���_D(2): .BX = .BXL + .BXR
                          Case Else: ��er = " (" + Da$ + ") �� �ް���̌�������Ȃ�": If ����CK > 99 Then er (""): Stop
                          End Select
        
        Case "BY=":        .Da_BY = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                          Select Case ���_Data��
                          Case 1:   .BY = ���_D(1): .BYL = .BY / 2: .BYR = .BY / 2
                          Case 2:   .BYL = ���_D(1): .BYR = ���_D(2): .BY = .BYL + .BYR
                          Case 3:   .BYL_�[ = ���_D(1): .BYL_�� = ���_D(2) / 2: .BYR_�� = ���_D(2) / 2: .BYR_�[ = ���_D(3):
                                    .BYL = .BYL_�[ + .BYL_��: .BYR = .BYR_�[ + .BYR_��: .BY = .BYL + .BYR
                          Case 4:   .BYL_�[ = ���_D(1): .BYL_�� = ���_D(2): .BYR_�� = ���_D(3): .BYR_�[ = ���_D(4):
                                    .BYL = .BYL_�[ + .BYL_��: .BYR = .BYR_�[ + .BYR_��: .BY = .BYL + .BYR
                          Case Else: ��er = " (" + Da$ + ") �� �ް���̌�������Ȃ�": If ����CK > 99 Then er (""): Stop
                          End Select
        
        
        
        Case "H=":         .Da_H = ����3s$:         Call ���r_���_ck(����s$, ����3s$)
                          Select Case ���_Data��
                          Case 1:   .H = ���_D(1): .H_D = .H: .H_U = 0
                          Case 2:   .H_D = ���_D(1): .H_U = ���_D(2): .H = .H_D + .H_U
                          Case Else: ��er = " (" + Da$ + ") �� �ް���̌�������Ȃ�": If ����CK > 99 Then er (""): Stop
                          End Select
        
       Case "�̺�=":      .��con = ����3s$:          Call ���r_���_ck(����s$, ����3s$)
                          .��con_t = ���_D(1)
        
        Case "�Y�ʒu":    D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          .�Y�ʒu = D1$: Call ���r_�Y�ʒu_ck(D1$)
                          INP$ = "N"
        Case "F1=":        .FY1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "F2=":        .FY2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "F3=":        .FY3 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "F11=":       .FX1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "F12=":       .FX2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "F13=":       .FX3 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "F14=":       .FX4 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "f1=":        .FH1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "f2=":        .FH2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "fpit=":      .fpit = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case Else: ��er = " (" + Da$ + ") �� �����ł��܂���": If ����CK > 99 Then er (""): Stop
        End Select
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To ��b_No_Max: If ��b����$(ii) = ��b_Na$ Then ��er = "��b���� (" + ��b_Na$ + ") �͊��Ɏg�p����Ă��܂�": If ����CK > 99 Then er (""): Stop
               Next ii
        ��b����$(��b_No_Max) = ��b_Na$:    .���� = ��b_Na$
     End With
     
     Call ���r_��b_Put(��b_No_Max)
     End Sub

Private Sub Read_���r_��(Da$)
     
     ��_No_Max = ��_No_Max + 1: ��_Na$ = "��" + F9(��_No_Max)
     EMS1 = "Data Read  �� [No=" + F9(��_No_Max) + "]  ": EMS2 = ""

 
     With �y�؋��r_��
                  .No = ��_No_Max
                  .���� = "":  .Da_BX = "": .Da_BY = "": .Da_H = "": .Da_r = ""
                  .BX = 0: .BXL = 0: .BXR = 0
                  .BY = 0: .BYL = 0: .BYR = 0
                  .H = 0: .r = 0
                  
                  .C�퐔 = 0:   .C1 = "": .C2 = "": .C3 = "": .C4 = "": .C5 = "": .C6 = ""
                  .CXpit�i�� = 0:  .CXpit1 = "": .CXpit2 = "":
                  .CYpit�i�� = 0:  .CYpit1 = "": .CYpit2 = "":
                  
                  .CX��ؒi�� = 0: .CX���1 = "": .CX���2 = ""
                  .CY��ؒi�� = 0: .CY���1 = "": .CY���2 = ""
                  .C�p��� = "": .C�p���X = 0: .C�p���Y = 0:
                  .CK = ""
                  .Choop_�S�� = "": .CH1 = "": .CHoop_dt = 0:   .CHoop_r = 0

                  .CHX1 = "": .CX_1_Hoop_Jtype = "B":
                  .CHX2 = "": .CX_2_Hoop_Jtype = "B":
                  
                  .CHY1 = "": .CY_1_Hoop_Jtype = "R":
                  .CHY2 = "": .CY_2_Hoop_Jtype = "R":
                  .CHY3 = "": .CY_3_Hoop_Jtype = "R":
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS3 = Da$
            Da = �����ϊ�(Da, "*", "x")
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        
        
        Select Case ����s$
        Case "errck", "ERRCK": ����CK = 200
        Case "/", ".": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        Case "����=":       ��_Na$ = Trim(����3s$)
        Case "BX=":        .Da_BX = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                           .BXL = ���_D(1): .BXR = ���_D(2): If ���_Data�� = 1 Then .BXL = ���_D(1) / 2: .BXR = .BXL
                           .BX = .BXL + .BXR
        
        Case "BY=":        .Da_BY = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                           .BYL = ���_D(1): .BYR = ���_D(2): If ���_Data�� = 1 Then .BYL = ���_D(1) / 2: .BYR = .BYL
                           .BY = .BYL + .BYR
        
        Case "H=":         .Da_H = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                           .H = ���_D(1):
        
        Case "r=":         .Da_r = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                           .r = ���_D(1)
        
        Case "C=":    .C�퐔 = .C�퐔 + 1: Call ���r_�S��_ck(����s$, ����3s$)
                            Select Case .C�퐔
                            Case 1: .C1 = ����3s$
                            Case 2: .C2 = ����3s$
                            Case 3: .C3 = ����3s$
                            Case 4: .C4 = ����3s$
                            Case 5: .C5 = ����3s$
                            Case 6: .C6 = ����3s$
                            Case Else: ��er = " (" + Da$ + ")  ��؂̎�ނ��������܂�": If ����CK > 99 Then er (""): Stop
                            End Select
        
        Case "Xpit=":       Call ���r_�S��_Pit_ck2(����3s$)
                           .CXpit�i�� = �S��P�i��_Data��: .CXpit1 = �S��P�i��_Data$(1): .CXpit2 = �S��P�i��_Data$(2)
        
        Case "Ypit=":       Call ���r_�S��_Pit_ck2(����3s$)
                           .CYpit�i�� = �S��P�i��_Data��: .CYpit1 = �S��P�i��_Data$(1): .CYpit2 = �S��P�i��_Data$(2)
        
        Case "X���=":      Call P_���r_��_���2(����3s$)
                           .CX��ؒi�� = ���ؒi��_�i����: .CX���1 = ���ؒi��_Ddata$(1): .CX���2 = ���ؒi��_Ddata$(2)
        
        Case "Y���=":      Call P_���r_��_���2(����3s$)
                           .CY��ؒi�� = ���ؒi��_�i����: .CY���1 = ���ؒi��_Ddata$(1): .CY���2 = ���ؒi��_Ddata$(2)
        
        Case "�p���=":      Call P_���r_��_���2(����3s$)
                            .C�p��� = ���ؒi��_Ddata$(1)
        
        Case "�p���XY=":    Call Ddata(" ", ����3s$, Ds$(), Di(), ni)
                            .C�p���X = Di(1): .C�p���Y = Di(2)
        
                            If ni <> 2 Then ��er = "�p���XY (" + Da$ + ")  Data����������": If ����CK > 99 Then er (""): Stop

        Case "CK=":         'C5 ---> CK �� �����̺�Ű�� �ł�
                            .CK = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "c1=":         'c1 �� �O��̰�� �ł�
                            .CH1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
                            .Choop_�S�� = ���r�S�،a$(1):   .CHoop_r = FP_���r_�S��_Data("r1", .Choop_�S��)
                            .CHoop_dt = �S��_SK�ʒu: If �S��_r <> 0 Then .CHoop_r = �S��_r
        
        Case "c2=":         'c2 �� X���� ����̰��
                            .CHX1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "c2-2=":         'c2 �� X���� ����̰��  2
                            .CHX2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "c3=":         'c3 �� Y���� ����̰��
                            .CHY1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "c3-2=":         'c3 �� Y���� ����̰��  2
                            .CHY2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "c3-3=":         'c3 �� Y���� ����̰��  3
                            .CHY3 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case Else: ��er = " (" + Da$ + ") �� �����ł��܂���": If ����CK > 99 Then er (""): Stop
        End Select
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To ��_No_Max: If ������$(ii) = ��_Na$ Then ��er = "������ (" + ��_Na$ + ") �͊��Ɏg�p����Ă��܂�": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        ������$(��_No_Max) = ��_Na$:     .���� = ��_Na$
     End With
     
     Call ���r_��_Put(��_No_Max)
     
     End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_��_���    ���   �@�@  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������

Sub P_���r_��_���2(Data1$)
     ' X���=17xC2+16xC1_15xC4+14xC3        'X�����̎�ؖ{���ł�   X���=1�i�ږ{��_2�i�ږ{��
     ' Y���=6xC2+5xC1                      'Y�����̎�ؖ{���ł�   Y���=1�i�ږ{��_2�i�ږ{��
     ' �p��� = C1                          '��Ű�̎�ؖ{���ł�
     
     ' ���ؒi��_�i����
     ' ���ؒi��_Ddata$(i)          Data i�Ԗڂ� Data

        Call Ddata(" ", Data1$, ���ؒi��_Ddata$(), Di(), ���ؒi��_�i����)
        For ii = 1 To ���ؒi��_�i����: Call P_���r_��_���(���ؒi��_Ddata$(ii)): Next ii
    End Sub


Sub P_���r_��_���(Data1$)
     ' exp  17xC2+16xC1+15xC4+14xC3
     ' exp  C1

     ' ����_���؎�ސ�
     ' ����_Ddata$(i)          Data i�Ԗڂ� Data
     ' ����_D���ؖ{��(i)       Data i�Ԗڂ̒��ؖ{��
     ' ����_D���ؔԍ�(i)       Data i�Ԗڂ̒��ؔԍ�
     ' ����_���ؔԍ�(i)        i�Ԗڂ̒��ؔԍ�
     ' ����_���؃���           �S���ؖ{��
     
     ����_���؃��� = 0
     Call Ddata("+", Data1$, ����_Ddata$(), Di(), ����_���؎�ސ�)
     For ii = 1 To ����_���؎�ސ�
           D1$ = ����_Ddata$(ii): ���ؖ{�� = 1
           ni = InStr(D1$, "x"): If ni > 1 Then ���ؖ{�� = Val(D1$): D1$ = Mid(D1$, ni + 1)
           ���ؔԍ� = Val(Mid(D1$, 2))
           If ���ؖ{�� <= 0 Then ��er = "������ ���ؖ{�� (" + Data1$ + ") �� ��������": If ����CK > 99 Then er (""): Stop
           If Mid(D1$, 1, 1) <> "C" Then ��er = "�����ؕ��� (" + Data1$ + ") �� ��������": If ����CK > 99 Then er (""): Stop
           If ���ؔԍ� <= 0 Or ���ؔԍ� > �y�؋��r_��.C�퐔 Then ��er = "���ؕ��� (" + Data1$ + ") �� ��������": If ����CK > 99 Then er (""): Stop
           
           ����_D���ؖ{��(ii) = ���ؖ{��
           ����_D���ؔԍ�(ii) = ���ؔԍ�
           ����_���؃��� = ����_���؃��� + ���ؖ{��
           Next ii
     ii = 0: KK = 0
     Do: ii = ii + 1: KK = KK + 1
          ���ؔԍ� = ����_D���ؔԍ�(KK)
          If KK >= ����_���؎�ސ� Then KK = 0
          
          ����_���ؔԍ�(ii) = ���ؔԍ�
          If ii >= ����_���؃��� Then Exit Do
          Loop
     End Sub



Private Sub Read_���r_Stoper(Da$)
     Stoper_No_Max = Stoper_No_Max + 1: Stoper_Na$ = "�į��" + F9(Stoper_No_Max)
     EMS1 = "Data Read  �į�߰ [No=" + F9(Speser_No) + "]  ": EMS2 = ""

 
     StoperKind�� = StoperKind�� + 1
     Stoper_Na$ = ""
     With �y�؋��r_Stoper
                  .No = Stoper_No_Max
                  .���� = "": .���� = "": .��� = "": .H1 = "": .H2 = "": .H3 = ""
                  .BX = 0: .BY = 0: .H = 0
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS3 = Da$
            Da = �����ϊ�(Da, "*", "x")
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case ����s$
        Case "errck", "ERRCK": ����CK = 200
        Case "/", ".": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        Case "����=":       Stoper_Na$ = Trim(����3s$)
        Case "����=":       .���� = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .BX = ���_D(1): .BY = ���_D(2): .H = ���_D(3)
                      .Typei = 1: If .BX <= 0 Then .Typei = 2
                        
        Case "���=", "���=":     .��� = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
        Case "H1=":        .H1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "H2=":        .H2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "H3=":        .H3 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case Else: ��er = " (" + Da$ + ") �� �����ł��܂���": If ����CK > 99 Then er (""): Stop
        End Select
        
        If ��er <> "" Then er (""):  If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        If Stoper_Na$ = "" Then ��er = "�į�ߕ��� �����͂���Ă��܂���": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
        For ii = 1 To Stoper_No_Max: If Stoper����$(ii) = Stoper_Na$ Then ��er = "�į�ߕ��� (" + Stoper_Na$ + ") �͊��Ɏg�p����Ă��܂�": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        Stoper����$(Stoper_No_Max) = Stoper_Na$:     .���� = Stoper_Na$
     End With
     
     Call ���r_Stoper_Put(Stoper_No_Max)
     
     End Sub

Private Sub Read_���r_�B��(Da$)
     
     �B��_No_Max = �B��_No_Max + 1: �B��_Na$ = "�B��" + F9(�B��_No_Max)
     EMS1 = "Data Read  �B�� [No=" + F9(�B��_No_Max) + "]  ": EMS2 = ""

 
     �B��Kind�� = �B��Kind�� + 1
     �B��_Na$ = ""
     With �y�؋��r_�B��
                  .No = �B��_No_Max
                  .���� = "": .Gomsyu = "": .BD = "": .��� = "": .S1 = "": .S2 = ""
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
           EMS3 = Da$
            Da = �����ϊ�(Da, "*", "x")
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case ����s$
        Case "errck", "ERRCK": ����CK = 200
        Case "/", ".": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        Case "����=":       �B��_Na$ = Trim(����3s$)
      '  Case "��Ѽ��=":     .Gomsyu = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
        Case "BD=":         .BD = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
        Case "���=", "���=":     .��� = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
        Case "S1=":        .S1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "S2=":        .S2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case Else: ��er = " (" + Da$ + ") �� �����ł��܂���": If ����CK > 99 Then er (""): Stop
        End Select
        
        If ��er <> "" Then er (""):  If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        If �B��_Na$ = "" Then ��er = "�B������ �̓��͂�����": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
        
        For ii = 1 To �B��_No_Max: If �B������$(ii) = �B��_Na$ Then ��er = "�B������ (" + �B��_Na$ + ") �͊��Ɏg�p����Ă��܂�": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        �B������$(�B��_No_Max) = �B��_Na$:     .���� = �B��_Na$
     End With
     
     Call ���r_�B��_Put(�B��_No_Max)
     
     End Sub

Private Sub Read_���r_��(Da$)
   '***
     ��_No_Max = ��_No_Max + 1: ��_Na$ = "��" + F9(��_No_Max)
     EMS1 = "Data Read  �� [No=" + F9(��_No_Max) + "]  ": EMS2 = ""
 
     With �y�؋��r_��
                  .No = ��_No_Max
                  .���� = "": .Da_BX = "": .Da_BY = "": .Da_���z = ""
                  .Da_r = "": .Da_r2 = "": .Da_H = ""
                  .BX = 0: .BXL = 0: .BXR = 0:  .BXL2 = 0: .BXR2 = 0
                  .BY = 0: .BYL = 0: .BYR = 0:  .BYL2 = 0: .BYR2 = 0
                  .H = 0: .H1 = 0: .H2 = 0
                  .r = 0: .r2 = 0
                  .���zC = 0: .���zL = 0: .���zR = 0
                  
                  .Stoper�ʒu = "": .�B���ʒu = ""
                  .BR�퐔 = 0: .BR1 = "": .BR2 = "": .BR3 = "": .BR4 = ""
                  .BU1 = "": .BU2 = ""
                  .BD1 = "": .BD2 = ""
                  .B��1 = "": .B��2 = ""
                  .BSpit = "": .BS1 = "": .BS2 = "": .BS3 = ""
     
     
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
            EMS3 = Da$
            Da = �����ϊ�(Da, "*", "x")
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case ����s$
        Case "errck", "ERRCK": ����CK = 200
        Case "/", ".": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        Case "����=":       ��_Na$ = Trim(����3s$)
        Case "BX=":         .Da_BX = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .BXL = ���_D(1): .BXR = ���_D(2): If ���_Data�� = 1 Then .BXL = ���_D(1) / 2: .BXR = .BXL
                            .BX = .BXL + .BXR:  .BXL2 = .BXL - �y�؋��r_��.BXL: .BXR2 = .BXR - �y�؋��r_��.BXR

        Case "BY=":         .Da_BY = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .BYL = ���_D(1): .BYR = ���_D(2): If ���_Data�� = 1 Then .BYL = ���_D(1) / 2: .BYR = .BYL
                            .BY = .BYL + .BYR: .BYL2 = .BYL - �y�؋��r_��.BYL: .BYR2 = .BYR - �y�؋��r_��.BYR

        
        Case "���z=":       .Da_���z = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .���zC = ���_D(1): .���zL = ���_D(2): .���zR = ���_D(3): If ���_Data�� < 3 Then .���zR = .���zL
        
        Case "r=":          .Da_r = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .r = ���_D(1)
        Case "r2=":         .Da_r2 = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .r2 = ���_D(1)
        Case "H=":          .Da_H = ����3s$:        Call ���r_���_ck(����s$, ����3s$)
                            .H1 = ���_D(1): .H2 = ���_D(2): If ���_Data�� = 1 Then .H2 = ���_D(1): .H1 = 0
                            .H = .H1 + .H2
        
        Case "�į�߈ʒu", "�į�߰�ʒu": D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          .Stoper�ʒu = D1$
                          INP$ = "N"
        
        Case "�B���ʒu":  D1$ = ""
                          Do: Line Input #2, Da$
                          If InStr(Da$, ",") < 1 Then Exit Do
                          If Mid(Da$, 1, 1) <> "0" And Val(Da$) = 0 Then Exit Do
                          D1$ = D1$ + Da$ + " "
                          Loop
                          .�B���ʒu = D1$
                          INP$ = "N"
        
        
        Case "B1=":    .BR�퐔 = .BR�퐔 + 1: Call ���r_�S��_ck(����s$, ����3s$)
                            
                            Select Case .BR�퐔
                            Case 1: .BR1 = ����3s$
                            Case 2: .BR2 = ����3s$
                            Case 3: .BR3 = ����3s$
                            Case 4: .BR4 = ����3s$
                            Case Else: ��er = " (" + Da$ + ")  ٰ�ߎ�؂̎�ނ��������܂�": If ����CK > 99 Then er (""): Stop
                            End Select
                           If ��er <> "" Then If ����CK > 99 Then Stop
        
        Case "B2=":        .BU1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "B3=":        .BD1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "B4=":        .B��1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "B4-2=":      .B��2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        Case "Spit=":      .BSpit = ����3s$:     Call ���r_�S��_Pit_ck(����3s$)
        Case "B01=":       .BS1 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "B02=":       .BS2 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        Case "B03=":       .BS3 = ����3s$:      Call ���r_�S��_ck(����s$, ����3s$)
        
        
        Case Else: ��er = " (" + Da$ + ") �� �����ł��܂���": If ����CK > 99 Then er (""): Stop
        End Select
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
        Loop
     
        For ii = 1 To ��_No_Max: If ������$(ii) = ��_Na$ Then ��er = "������ (" + ��_Na$ + ") �͊��Ɏg�p����Ă��܂�": If ����CK > 99 Then er (""): Stop: Exit Sub Else Exit Sub
              Next ii
        ������$(��_No_Max) = ��_Na$:     .���� = ��_Na$
     End With
     
     Call ���r_��_Put(��_No_Max)
     
     End Sub


'����������������������������������������������������������������������������������������������
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���� ���r ��� ���       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_���_ck(����$, ���Data$)
        ' Data1$     �@�@�@�@�@����exp �@�@�@2500+4500+2500    410x410x1430
        ' ���_Data��        Data�̌�
        ' ���_Data$(i)      i�Ԗڂ�Data
        ' ���_D(i)          i�Ԗڂ�Data�̒l
        ' �����L�@�@�@�@�@�@���Data$ ���v�Z��������
    
    ���$ = ","
    Wda$ = LCase(F_RAN(���Data$))
    ni = InStr(Wda$, " "): If ni > 1 Then ���$ = " "
    ni = InStr(Wda$, "+"): If ni > 1 Then ���$ = "+"
    ni = InStr(Wda$, "x"): If ni > 1 Then ���$ = "x"
    Call Ddata$(���$, Wda$, ���_Data$(), Di(), ���_Data��)
    
    For ii = 1 To ���_Data��
          Call calu2(���_Data$(ii), ���_D(ii), er1$): If er1$ <> "" Then ��er = er1$
          Next ii
    
    �����L = 0: If ���$ = "+" Then Call calu2(���Data$, �����L, er1$): If er1$ <> "" Then ��er = er1$
        
        If ��er <> "" Then ��er = ����$ + "  " + ��er: If ����CK > 99 Then er (""): Stop
    End Sub

'����������������������������������������������������������������������������������������������
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���� ���r ��� ���       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_���_ck(����$, ���Data$)
        ' Data1$     �@�@�@�@�@����exp �@90 90 120
        ' ���_Data��        Data�̌�
        ' ���_Data$(i)      i�Ԗڂ�Data
        ' ���_D(i)          i�Ԗڂ�Data�̒l
        ' �����L�@�@�@�@�@�@���Data$ ���v�Z��������
    
    ���$ = " "
    Wda$ = LCase(F_RAN(���Data$))
    Call Ddata$(���$, Wda$, ���_Data$(), Di(), ���_Data��)
    
    For ii = 1 To ���_Data��
          Call calu2(���_Data$(ii), ���_D(ii), er1$): If er1$ <> "" Then ��er = er1$
          Next ii
        
        If ��er <> "" Then ��er = ����$ + "  " + ��er: If ����CK > 99 Then er (""): Stop
    End Sub

'����������������������������������������������������������������������������������������������
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���� ���r �Y�ʒu ���     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�Y�ʒu_ck(Data1$)
        ' Data1$     �@�@  �@����exp �@-3750,3750     0,3750,�Y3     3750,3750
        ' �Y�ʒu_Data��        Data�̌�
        ' �Y�ʒu_Data$(i)      i�Ԗڂ�Data
        ' �Y�ʒu_X(i)          i�Ԗڂ�Data��X���W
        ' �Y�ʒu_Y(i)          i�Ԗڂ�Data��Y���W
        ' �Y�ʒu_No(i)         i�Ԗڂ�Data�̍Yno
        ' �Y�ʒu_�a(i)         i�Ԗڂ�Data�̍Y�a
    
    '[[[ ** 2 ** ]]]
        ' �Y�ʒu_X��         �Y��X������
        ' �Y�ʒu_Y��         �Y��Y������
    
        ' �Y�ʒu_Xpos(i)       �Y��X���� �ʒu
        ' �Y�ʒu_Ypos(i)       �Y��Y���� �ʒu
    
    Wda$ = Data1$
    Call Ddata$(" ", Wda$, �Y�ʒu_Data$(), Di(), �Y�ʒu_Data��)
    
    For ii = 1 To �Y�ʒu_Data��
          Wda2$ = �Y�ʒu_Data$(ii)
          Call Ddata$(",", Wda2$, Ds$(), Di(), ni)
          If ni <= 1 Then ��er = Data1 + "  Data < 1": If ����CK > 99 Then er (""): Stop: Exit For Else Exit For
          �Y�ʒu_X(ii) = Di(1):    �Y�ʒu_Y(ii) = Di(2): �Y�ʒu_No(ii) = 1
          If ni = 3 Then �Y�ʒu_No(ii) = ���r_�Y_no(Ds$(3))
          If �Y�ʒu_No(ii) = 0 Then ��er = Data1 + "  �YNo=0": If ����CK > 99 Then er (""): Stop: Exit For Else Exit For
          
          �Y�ʒu_�a(ii) = ���r_�Y("D")
          Next ii
          
     �Y�ʒu_X�� = 0
     For ii = 1 To �Y�ʒu_Data��
          D1$ = "*"
          For i2 = 1 To �Y�ʒu_X��
               If �Y�ʒu_X(ii) = �Y�ʒu_Xpos(i2) Then D1$ = ""
               Next i2
          If D1$ = "*" Then �Y�ʒu_X�� = �Y�ʒu_X�� + 1: �Y�ʒu_Xpos(�Y�ʒu_X��) = �Y�ʒu_X(ii)
          Next ii
     
     �Y�ʒu_Y�� = 0
     For ii = 1 To �Y�ʒu_Data��
          D1$ = "*"
          For i2 = 1 To �Y�ʒu_Y��
               If �Y�ʒu_Y(ii) = �Y�ʒu_Ypos(i2) Then D1$ = ""
               Next i2
          If D1$ = "*" Then �Y�ʒu_Y�� = �Y�ʒu_Y�� + 1: �Y�ʒu_Ypos(�Y�ʒu_Y��) = �Y�ʒu_Y(ii)
          Next ii
          
        If ��er <> "" Then ��er = "�Y�ʒu  " + ��er: If ����CK > 99 Then er (""): Stop
    
    End Sub

'����������������������������������������������������������������������������������������������
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���� ���r �į�߈ʒu ���     �@ �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_Stoper�ʒu_ck(Data1$)
        ' Data1$     �@�@  �@����exp �@-3750,3750     0,3750,Stoper3     3750,3750
        ' Stoper�ʒu_Data��        Data�̌�
        ' Stoper�ʒu_Data$(i)      i�Ԗڂ�Data
        ' Stoper�ʒu_X(i)          i�Ԗڂ�Data��X���W
        ' Stoper�ʒu_Y(i)          i�Ԗڂ�Data��Y���W
        ' Stoper�ʒu_No(i)         i�Ԗڂ�Data��Stoperno
    
        ' Stoper�ʒu_BX(i)         i�Ԗڂ�Data�� �į��BX
        ' Stoper�ʒu_BY(i)         i�Ԗڂ�Data�� �į��BY
        ' Stoper�ʒu_H(i)          i�Ԗڂ�Data�� �į��H
    
    
        ' Stoper�ʒu_�J��X         �į�ߊJ�� X����   1 - 2 ��
        ' Stoper�ʒu_�J��Y         �į�ߊJ�� Y����   1 - (n/2+1) ��
    
        ' Stoper�ʒu_�[�J��X       �į�ߒ[���J�� X����   1 _ 2 ��
        ' Stoper�ʒu_�[�J��Y       �į�ߒ[���J�� Y����   1 _ (n/2+1) ��
    
    '[[[ ** 2 ** ]]]
        ' Stoper�ʒu_X��         �į�߂�X������
        ' Stoper�ʒu_Y��         �į�߂�Y������
    
        ' Stoper�ʒu_�I�_Xpit(i)       �į�߂�X���� Pit ���[����  �į�߂�X������  +1
        ' Stoper�ʒu_Ypit(i)       �į�߂�Y���� Pit ���[����  �į�߂�Y������  +1
    '[[[    ]]]]
        ' Stoper�I�_��_Y
        ' Stoper�N�_��_Y
        ' Stoper�I�_���ʒu��i
        ' Stoper�N�_���ʒu��i
    
    Stoper�I�_���ʒu��i = 0: Stoper�N�_���ʒu��i = 0
    Wda$ = Data1$
    Call Ddata$(" ", Wda$, Stoper�ʒu_Data$(), Di(), Stoper�ʒu_Data��)
    
    For ii = 1 To Stoper�ʒu_Data��
          Wda2$ = Stoper�ʒu_Data$(ii)
          Call Ddata$(",", Wda2$, Ds$(), Di(), ni)
          If ni <= 1 Then ��er = Data1 + "  Data < 1": If ����CK > 99 Then er (""): Stop: Exit For Else Exit For
          Stoper�ʒu_X(ii) = Di(1):    Stoper�ʒu_Y(ii) = Di(2): Stoper�ʒu_No(ii) = 1
          If ni = 3 Then Stoper�ʒu_No(ii) = ���r_Stoper_No(Ds$(3))
          If Stoper�ʒu_No(ii) = 0 Then ��er = Data1 + "  �į��No=0": If ����CK > 99 Then er (""): Stop: Exit For Else Exit For
          
          Select Case Stoper�ʒu_Y(ii)
          Case Is > 0:  Stoper�I�_���ʒu��i = Stoper�I�_���ʒu��i + 1: Stoper�I�_��_Y = Stoper�ʒu_Y(ii)
          Case Else:    Stoper�N�_���ʒu��i = Stoper�N�_���ʒu��i + 1: Stoper�N�_��_Y = Stoper�ʒu_Y(ii)
          End Select
          
          
          Call ���r_Stoper_Get(Stoper�ʒu_No(ii))
          D1$ = ���r_Stoper("����")
          Stoper�ʒu_BX(ii) = ���_D(1)
          Stoper�ʒu_BY(ii) = ���_D(2)
          Stoper�ʒu_H(ii) = ���_D(3)
          Next ii
          
        ni = 1 + Stoper�ʒu_Data�� / 2
        Stoper�ʒu_�J��X = Stoper�ʒu_X(2) - Stoper�ʒu_X(1) - Stoper�ʒu_BX(1) / 2 - Stoper�ʒu_BX(2) / 2
        Stoper�ʒu_�J��Y = Abs(Stoper�ʒu_Y(ni)) + Abs(Stoper�ʒu_Y(1)) - Stoper�ʒu_BY(1) / 2 - Stoper�ʒu_BY(ni) / 2
        
        Stoper�ʒu_�[�J��X = �y�؋��r_��.BXL - Abs(Stoper�ʒu_X(1)) - Stoper�ʒu_BX(1) / 2
        Stoper�ʒu_�[�J��Y = �y�؋��r_��.BYL - Abs(Stoper�ʒu_Y(1)) - Stoper�ʒu_BY(1) / 2
        
        
    '[[[ ** 2 ** ]]]
        Stoper�ʒu_X�� = Stoper�ʒu_Data�� / 2
        Stoper�ʒu_Y�� = 2
        
        XP0 = -�y�؋��r_��.BXL
        For ii = 1 To Stoper�I�_���ʒu��i:  Stoper�ʒu_�I�_Xpit(ii) = Stoper�ʒu_X(ii) - XP0: XP0 = Stoper�ʒu_X(ii)
              Next ii
              Stoper�ʒu_�I�_Xpit(Stoper�I�_���ʒu��i + 1) = �y�؋��r_��.BXR - XP0
        
        XP0 = -�y�؋��r_��.BXL
        For ii = 1 To Stoper�N�_���ʒu��i: Stoper�ʒu_�N�_Xpit(ii) = Stoper�ʒu_X(Stoper�I�_���ʒu��i + ii) - XP0: XP0 = Stoper�ʒu_X(Stoper�I�_���ʒu��i + ii)
              Next ii
              Stoper�ʒu_�N�_Xpit(Stoper�N�_���ʒu��i + 1) = �y�؋��r_��.BXR - XP0
        
        
        ii2 = Stoper�I�_���ʒu��i + 1
        Stoper�ʒu_Ypit(1) = �y�؋��r_��.BYL - Abs(Stoper�ʒu_Y(ii2))
        Stoper�ʒu_Ypit(2) = Abs(Stoper�ʒu_Y(ii2)) + Abs(Stoper�ʒu_Y(1))
        Stoper�ʒu_Ypit(3) = �y�؋��r_��.BYL - Abs(Stoper�ʒu_Y(1))
        
        If ��er <> "" Then ��er = "�į�߈ʒu  " + ��er: If ����CK > 99 Then er (""): Stop
    
    '��Stoper_No
    Call ���r_Stoper_Get(��Stoper_No) ' **** �ǉ�
    End Sub
Function FP_Stoper_X�ʒu(X0)
    ' D1$<>""   Stoper�ʒu�ɓ�����
    D1$ = ""
    For ii = 1 To Stoper�ʒu_Data��
         X1 = Stoper�ʒu_X(ii) - Stoper�ʒu_BX(ii) / 2 - �S��_Stoper�J��1
         X2 = Stoper�ʒu_X(ii) + Stoper�ʒu_BX(ii) / 2 + �S��_Stoper�J��1
         Select Case X0
         Case Is < X1:
         Case Is <= X2:   D1$ = F9(ii): Exit For
         Case Else:
         End Select
         Next ii
    FP_Stoper_X�ʒu = D1$
    End Function
Function FP_Stoper_Y�ʒu(Y0)
    ' D1$<>""   Stoper�ʒu�ɓ�����
    D1$ = ""
    For ii = 1 To Stoper�ʒu_Data��
         Y1 = Stoper�ʒu_Y(ii) - Stoper�ʒu_BY(ii) / 2 - �S��_Stoper�J��1
         Y2 = Stoper�ʒu_Y(ii) + Stoper�ʒu_BY(ii) / 2 + �S��_Stoper�J��1
         Select Case Y0
         Case Is < Y1:
         Case Is <= Y2:   D1$ = F9(ii): Exit For
         Case Else:
         End Select
         Next ii
    FP_Stoper_Y�ʒu = D1$
    End Function
Function FP_Stoper_Z�ʒu(Z0)
    ' D1$<>""   Stoper�ʒu�ɓ�����
    D1$ = ""
         Z2 = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H
         Z1 = Z2 - Stoper�ʒu_H(1) - �S��_Stoper�J��1
         Select Case Z0
         Case Is < Z1:
         Case Is <= Z2:   D1$ = "1": ' Exit For
         Case Else:
         End Select
    FP_Stoper_Z�ʒu = D1$
    End Function


'����������������������������������������������������������������������������������������������
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���� ���r �B���ʒu ���     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�B���ʒu_ck(Data1$)
        ' Data1$     �@�@  �@����exp �@-3750,3750     0,3750,�B��3     3750,3750
        ' �B���ʒu_Data��        Data�̌�
        ' �B���ʒu_Data$(i)      i�Ԗڂ�Data
        ' �B���ʒu_X(i)          i�Ԗڂ�Data��X���W
        ' �B���ʒu_Y(i)          i�Ԗڂ�Data��Y���W
        ' �B���ʒu_No(i)         i�Ԗڂ�Data�̌B��no
    
    '[[[ ** 2 ** ]]]
        ' �B���ʒu_X��         �B����X������
        ' �B���ʒu_Y��         �B����Y������
    
        ' �B���ʒu_�I�_Xpit(i)       �B����X���� Pit ���[����  �B����X������  +1
        ' �B���ʒu_Ypit(i)       �B����Y���� Pit ���[����  �B����Y������  +1
    '[[[     ]]]
        ' �B���I�_��_Y
        ' �B���N�_��_Y
        ' �B���I�_���ʒu��i
        ' �B���N�_���ʒu��i
    
    �B���I�_���ʒu��i = 0: �B���N�_���ʒu��i = 0
    Wda$ = Data1$
    Call Ddata$(" ", Wda$, �B���ʒu_Data$(), Di(), �B���ʒu_Data��)
    
    For ii = 1 To �B���ʒu_Data��
          Wda2$ = �B���ʒu_Data$(ii)
          Call Ddata$(",", Wda2$, Ds$(), Di(), ni)
          If ni <= 1 Then ��er = Data1 + "  Data < 1": If ����CK > 99 Then er (""): Stop: Exit For Else Exit For
          �B���ʒu_X(ii) = Di(1):    �B���ʒu_Y(ii) = Di(2): �B���ʒu_No(ii) = 1
          If ni = 3 Then �B���ʒu_No(ii) = ���r_�B��_No(Ds$(3))
          If �B���ʒu_No(ii) = 0 Then ��er = Data1 + "  �B��No=0": If ����CK > 99 Then er (""): Stop: Exit For Else Exit For
          Select Case �B���ʒu_Y(ii)
          Case Is > 0: �B���I�_���ʒu��i = �B���I�_���ʒu��i + 1: �B���I�_��_Y = �B���ʒu_Y(ii)
          Case Else: �B���N�_���ʒu��i = �B���N�_���ʒu��i + 1: �B���N�_��_Y = �B���ʒu_Y(ii)
          End Select
          Next ii
          
    '[[[ ** 2 ** ]]]
        �B���ʒu_X�� = �B���ʒu_Data�� / 2
        �B���ʒu_Y�� = 2
        
        XP0 = -�y�؋��r_��.BXL
        For ii = 1 To �B���I�_���ʒu��i: �B���ʒu_�I�_Xpit(ii) = �B���ʒu_X(ii) - XP0: XP0 = �B���ʒu_X(ii)
              Next ii
              �B���ʒu_�I�_Xpit(�B���I�_���ʒu��i + 1) = �y�؋��r_��.BXR - XP0
        
        XP0 = -�y�؋��r_��.BXL
        For ii = 1 To �B���N�_���ʒu��i: �B���ʒu_�N�_Xpit(ii) = �B���ʒu_X(�B���I�_���ʒu��i + ii) - XP0: XP0 = �B���ʒu_X(�B���I�_���ʒu��i + ii)
              Next ii
              �B���ʒu_�N�_Xpit(�B���N�_���ʒu��i + 1) = �y�؋��r_��.BXR - XP0
        
        
        
        ii2 = �B���I�_���ʒu��i + 1
        �B���ʒu_Ypit(1) = �y�؋��r_��.BYL - Abs(�B���ʒu_Y(ii2))
        �B���ʒu_Ypit(2) = Abs(�B���ʒu_Y(ii2)) + Abs(�B���ʒu_Y(1))
        �B���ʒu_Ypit(3) = �y�؋��r_��.BYL - Abs(�B���ʒu_Y(1))
        
'        �B���ʒu_Ypit(1) = �y�؋��r_��.BYL - Abs(�B���ʒu_Y(ii2))
'        �B���ʒu_Ypit(2) = Abs(�B���ʒu_Y(ii2))
'        �B���ʒu_Ypit(3) = Abs(�B���ʒu_Y(1))
        
        If ��er <> "" Then ��er = "�B���ʒu  " + ��er: If ����CK > 99 Then er (""): Stop
    End Sub




'����������������������������������������������������������������������������������������������
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���� ���r �S�� ���       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��                              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_ck(����$, �S��Data$)
        ' ����$
        ' �S��_Data��           Data�̌�
        ' �S��_Property$        �S�ؓ���     exp  $�����⋭��
        ' �S��_����$            XY  YZ  ZX   �S�؂̉��H����
        ' �S��_�a�{��$          �S�ؖ{��,�a  exp  6+5+1-D38    18-��13-SR235    12-D29-D25
        ' �S��_�a$              �a  exp  D38    ��13
        
        ' �S��_�ʒu$            �S��_�ʒu    exp  P127
        ' �S��_S�ʒu
        ' �S��_X�ʒu$           �S��_X�����ʒu    exp  PX127
        
        ' �S��_pit$             �S�� �߯�    exp  @1200+6x200+4x150+40x150+12x300
        ' �S��_X_pit$           �S�� X���� �߯�    exp  @X-1850+15x250
        ' �S��_Y_pit$           �S�� Y���� �߯�    exp  @Y-1000+4x500
        
        ' �S��_L$               �S�� ����    exp  Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
        ' �S��_B$               �S�� ����    exp  B1678+J+2677
        ' �S��_D$               �S�� ����    exp  D1678+J+2677
        
        ' �S��_X$               C Hoop �S�� ����    exp  X3850       X750+5x625    ���p
        ' �S��_Y$               C Hoop �S�� ����    exp  Y1120x2850
        
        
        ' �S��_H$               �S�� ����    exp  H70
        ' �S��_n$               �S�� �� ��߰�   exp  n6
        ' �S��_�蒅$            �S�� �蒅����  exp A1220
        ' �S��_H�a$             �S�� ̰�ߒ��a  exp �a1242
        ' �S��_K�ʒu$           �S�� ��؈ʒu   exp K101   �S��_SK�ʒu=101
          
        ' �S��_Z�ʒu            �Y̰�� Start�ʒu  exp Z-1100
          
        ' �S��_r                �S��_r   ��  ���S��(��������) �ł�    CHoop r
          
         ' �S��_���$           exp SD390  SD290
          
          �S��_Property$ = "":  �S��_����$ = "":   �S��_�a�{��$ = "":  �S��_�ʒu$ = "": �S��_X�ʒu$ = ""
          �S��_pit$ = "":   �S��_X_pit$ = "": �S��_Y_pit$ = ""
          �S��_L$ = "": �S��_B$ = "": �S��_D$ = "":
          �S��_X$ = "": �S��_XX = 0
          �S��_Y$ = "": �S��_YY = 0
          �S��_H$ = "":       �S��n$ = ""
          �S��_�蒅$ = "": �S��_H�a$ = "": �S��_K�ʒu$ = "": �S��_SK�ʒu = 0
          �S��_Z�ʒu = 0
     
          �S�؈ʒu_���� = 0: �S�؈ʒu_Data�� = 0
          �S��X�ʒu_���� = 0: �S��X�ʒu_Data�� = 0
          �S��P_���� = 0
          �S��_r = 0
     
          �S��_����� = 0
          �S��_���$ = ""
     
     
     Dck$ = "": If ����$ <> "" Then Dck$ = "Y"
     Wda$ = F_RAN(�S��Data$): If ����$ = "*" And Wda$ = "" Then Exit Sub
     Call Ddata(" ", Wda$, �S��Ds$(), �S��Di(), Data��)
     
     
     For ii = 1 To Data��: D1$ = UCase(�S��Ds$(ii))
          ����1$ = Mid(D1$, 1, 1)
                 If Mid(D1$, 1, 1) = "D" And Len(D1$) = 3 Then ����1$ = "�S��"
                 If Val(D1$) > 0 And InStr(D1$, "-D") > 1 Then ����1$ = "�S��"
                 If Val(D1$) > 0 And InStr(D1$, "-��") > 1 Then ����1$ = "�S��"
                 If Val(D1$) > 0 And InStr(D1$, "-��") > 1 Then ����1$ = "�S��"
                 If Mid(D1$, 1, 2) = "@X" Then ����1$ = "@X"
                 If Mid(D1$, 1, 2) = "@Y" Then ����1$ = "@Y"
          
                 If Mid(D1$, 1, 2) = "PX" Then ����1$ = "PX"
                     
                 If D1$ = "XY" Then ����1$ = "����": D2$ = "XY"
                 If D1$ = "YZ" Then ����1$ = "����": D2$ = "YZ"
                 
                 If D1$ = "ZX" Or D1$ = "XZ" Then ����1$ = "����": D2$ = "ZX"
          
          Select Case ����1$
          Case "$":      �S��_Property$ = Mid(D1$, 2)
          Case "����":   �S��_����$ = D2$
          
          Case "�S��":   �S��_�a�{��$ = D1$:        If Dck$ = "Y" Then Call ���r_�S��_�a_��_ck(�S��_�a�{��$)
                         �S��_�a$ = �S��_�a�{��$
                         ni = InStr(�S��_�a�{��$, "-"): If ni > 1 Then �S��_�a$ = Mid(�S��_�a�{��$, ni + 1)
                         ni = InStr(�S��_�a$, "-"): If ni > 2 Then �S��_�a$ = Mid(�S��_�a$, 1, ni - 1)
          
          Case "P":      �S��_�ʒu$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call ���r_�S��_�ʒu_ck(�S��_�ʒu$)
          Case "PX":     �S��_X�ʒu$ = Mid(D1$, 3):    If Dck$ = "Y" Then Call ���r_�S��_X�ʒu_ck(�S��_X�ʒu$)
          
          Case "A":      �S��_�蒅$ = Mid(D1$, 2):  Call calu2(�S��_�蒅$, Scda, er1$): ��er = ��er + er1$
                                               �S��_S�蒅 = Scda
          
          Case "�a":     �S��_H�a$ = Mid(D1$, 2):  Call calu2(�S��_H�a$, Scda, er1$): ��er = ��er + er1$
                                               �S��_SH�a = Scda
          
          Case "K":      �S��_K�ʒu$ = Mid(D1$, 2):  Call calu2(�S��_K�ʒu$, Scda, er1$): ��er = ��er + er1$
                                               �S��_SK�ʒu = Scda
          
          
          Case "@":      �S��_pit$ = Mid(D1$, 2):   If Dck$ = "Y" Then Call ���r_�S��_Pit_ck(�S��_pit$)
          Case "@X":     �S��_X_pit$ = Mid(D1$, 3):   If Dck$ = "Y" Then Call ���r_�S��_Pit_ck(�S��_X_pit$)
          Case "@Y":     �S��_Y_pit$ = Mid(D1$, 3):   If Dck$ = "Y" Then Call ���r_�S��_Pit_ck(�S��_Y_pit$)
          
          Case "N":      �S��_n$ = Mid(D1$, 2)
          Case "L":      �S��_L$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call ���r_�S��_L_ck(�S��_L$)
          Case "B":      �S��_B$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call ���r_�S��_L_ck(�S��_B$)
          Case "D":      �S��_D$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call ���r_�S��_L_ck(�S��_D$)
          
                     If �S��L_�S��L = 0 Then ��er = "  �S��D=0 " + �S��_D$: er (""): If ����CK > 99 Then Stop
          Case "X":      �S��_X$ = Mid(D1$, 2): �S��_XX = Val(�S��_X$)
          Case "Y":      �S��_Y$ = Mid(D1$, 2): �S��_YY = Val(�S��_X$)
          
          Case "H":      �S��_H$ = Mid(D1$, 2):     If Dck$ = "Y" Then Call ���r_�S��_L_ck(�S��_H$)
          
          Case "R":      �S��_r = Val(Mid(D1$, 2))
          
          
          Case "S":      �S��_���$ = D1$
          
          Case "Z":      �S��_Z�ʒu = Val(Mid(D1$, 2))
          Case Else: ��er = "���� [" + �S��Ds$(ii) + "] �͎g�p�ł��܂���": er (""): If ����CK > 99 Then Stop
          End Select
     '*     If ��er <> "" Then Exit For
          Next ii
     
     
        If ��er <> "" Then ��er = ����$ + "�S��ck  " + ��er: er (""): If ����CK > 99 Then Stop
        End Sub

'����������������������������������������������������������������������������������������������
'���� ���r �S��_�a_�� ck  ��� �@ �@ �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_�a_��_ck(Data1$)
        ' Data1$                 ����exp 16+5+1-D38     24-D38-D32-D29
        ' ���r�S�،a$(i)         �S�،a   exp  D22  D32  ��13
        ' �S�،a_���$           SR235
        ' �S�ؐ�_n               �S�ؖ{���̎w�萔
        ' �S�ؐ�_n1              1�Ԗ�(X�����S��)�̓S�ؖ{��
        ' �S�ؐ�_n2              2�Ԗ�(Y�����S��)�̓S�ؖ{��
        ' �S�ؐ�_n3              3�Ԗ�(�p��Ű��)�̓S�ؖ{��
        ' �S�ؐ�_��n             �S �S�ؖ{��
       
         ���r_D$ = "err": �S�،a_���$ = "": '���r�S�،a$ = ""
          
        ni = InStr(Data1$, "-D")
             If ni = 0 Then ni = InStr(Data1$, "-��")
             If ni = 0 Then ni = InStr(Data1$, "-��")
             If ni < 1 And Len(Data1$) > 3 Then ��er = "�S�،a [" + Data1$ + "] �� -D__ ������  ": If ����CK > 99 Then er (""): Stop
     
        If ni > 1 Then D11$ = Mid(Data1$, 1, ni - 1): Data_�S�،a$ = Mid(Data1$, ni + 1)
              ni = InStr(Data_�S�،a$, "-S"): If ni > 1 Then �S�،a_���$ = Mid(Data_�S�،a$, ni + 1): Data_�S�،a$ = Mid(Data_�S�،a$, 1, ni - 1)
        
        
        Call Ddata("-", Data_�S�،a$, ���r�S�،a$(), Di(), ni)
        If Len(Data1$) = 3 Then ���r�S�،a$(1) = Data1$: ni = 1
        For ii = 1 To ni
        Select Case ���r�S�،a$(ii)
              Case "D10", "D13", "D16", "D19", "D22", "D25", "D29", "D32", "D35", "D38", "D41", "D45"
              Case "��13", "��16", "��19":
              Case "��13", "��16", "��19":
              Case Else: ��er = ��er + "�S�،a [" + Data1$ + "] ������  ": If ����CK > 99 Then er (""): Stop
              End Select
              Next ii
              
        For ii = ni To 20: ���r�S�،a$(ii) = ���r�S�،a$(ni): Next ii
        
        
        Call Ddata("+", D11$, Ds$(), Di(), �S�ؐ�_n)
              D1$ = Rob_����ck0$(Ds$(1)): If D1$ <> "" Then ��er = ��er + "�S�ؐ� " + D11$ + " [" + D1$ + "] ������  ": If ����CK > 99 Then er (""): Stop
              D1$ = Rob_����ck0$(Ds$(2)): If D1$ <> "" Then ��er = ��er + "�S�ؐ� " + D11$ + " [" + D1$ + "] ������  ": If ����CK > 99 Then er (""): Stop
              D1$ = Rob_����ck0$(Ds$(3)): If D1$ <> "" Then ��er = ��er + "�S�ؐ� " + D11$ + " [" + D1$ + "] ������  ": If ����CK > 99 Then er (""): Stop
              
              �S�ؐ�_n1 = Di(1): �S�ؐ�_n2 = Di(2): �S�ؐ�_n3 = Di(3)
              �S�ؐ�_��n = �S�ؐ�_n1 + �S�ؐ�_n2 + �S�ؐ�_n3
        
        Select Case �S�ؐ�_n
              Case 1, 2, 3, 4:
              Case Else: If Len(Data1$) > 3 Then ��er = ��er + "�S�ؖ{�� [" + Data1$ + "] �� __+__+__ ������": If ����CK > 99 Then er (""): Stop
              End Select
                  
        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        End Sub



'����������������������������������������������������������������������������������������������
'���� ���r �S�� �ʒu ck  ���  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_�ʒu_ck(Data1$)
        ' Data1$     ����exp 155+40x125+40x125+155    �}125+7x250
        ' �S�؈ʒu_Data��        Data�̌�
        ' �S�؈ʒu_������$       ""  OR  "�}"
        ' �S�؈ʒu_Data$(i)      i�Ԗڂ̈ʒu��Data
        ' �S�؈ʒu_n(i)          i�Ԗڂ̈ʒu�̌�
        ' �S�؈ʒu_p(i)          i�Ԗڂ̈ʒu mm
        ' �S�؈ʒu_L(i)
        ' �S�؈ʒu_��L           �S Data_�ʒu_L
     
        ' �S�؈ʒu_����          �ʒu(���i)�̃����i��
        ' �S�؈ʒu_�ʒu(ii)      ���i�� Start����̈ʒu  ii=1 To �����i��
     
        �S�؈ʒu_���� = 0:
        Data2$ = LCase(Data1$): �S�؈ʒu_������$ = ""
        If Mid(Data2$, 1, 1) = "�}" Then Data2$ = Mid(Data2$, 2): �S�؈ʒu_������$ = "�}"
        �S�؈ʒu_��L = 0
        Call Ddata("+", Data2$, Ds$(), Di(), �S�؈ʒu_Data��)
     
        For ii = 1 To �S�؈ʒu_Data��: D1$ = Ds$(ii)
             �S�؈ʒu_n(ii) = 1:
             ni = InStr(D1$, "x")
             Select Case ni
             Case 0:      Call calu2(D1$, Scda, er1$): ��er = ��er + er1$
                          �S�؈ʒu_p(ii) = Scda
                          �S�؈ʒu_���� = �S�؈ʒu_���� + 1: �S�؈ʒu_�ʒu(�S�؈ʒu_����) = �S�؈ʒu_�ʒu(�S�؈ʒu_���� - 1) + Scda
             Case Else:
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Dck$ = Rob_����ck0$(D2$): If Dck$ <> "" Then ��er = ��er + "�S�� pit  " + D1$ + " [" + Dck$ + "] ������  ": If ����CK > 99 Then er (""): Stop
                          �S�؈ʒu_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): ��er = ��er + er1$
                          �S�؈ʒu_p(ii) = Scda
                          For jj = 1 To �S�؈ʒu_n(ii):  �S�؈ʒu_���� = �S�؈ʒu_���� + 1: �S�؈ʒu_�ʒu(�S�؈ʒu_����) = �S�؈ʒu_�ʒu(�S�؈ʒu_���� - 1) + Scda: Next jj
             End Select
             �S�؈ʒu_��L = �S�؈ʒu_��L + �S�؈ʒu_n(ii) * �S�؈ʒu_p(ii)
             Next ii
    
        Select Case �S�؈ʒu_������$
        Case "�}"
                          ni = �S�؈ʒu_����
                          If �S�؈ʒu_�ʒu(1) = 0 Then
                               For ii = 2 To ni:  �S�؈ʒu_�ʒu(ni + ii - 1) = -�S�؈ʒu_�ʒu(ii): �S�؈ʒu_���� = �S�؈ʒu_���� + 1: Next ii
                               Else
                               For ii = 1 To ni:  �S�؈ʒu_�ʒu(ni + ii) = -�S�؈ʒu_�ʒu(ii): �S�؈ʒu_���� = �S�؈ʒu_���� + 1: Next ii
                               End If
        Case Else:
        End Select
        
        
        
        
        
        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        End Sub

'����������������������������������������������������������������������������������������������
'���� ���r �S�� X�ʒu ck  ���  �@�@ �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_X�ʒu_ck(Data1$)
        ' Data1$     ����exp 155+40x125+40x125+155    �}125+7x250
        ' �S��X�ʒu_Data��        Data�̌�
        ' �S��X�ʒu_������$       ""  OR  "�}"
        ' �S��X�ʒu_Data$(i)      i�Ԗڂ�X�ʒu��Data
        ' �S��X�ʒu_n(i)          i�Ԗڂ�X�ʒu�̌�
        ' �S��X�ʒu_p(i)          i�Ԗڂ�X�ʒu mm
        ' �S��X�ʒu_L(i)
        ' �S��X�ʒu_��L           �S Data_X�ʒu_L
     
        ' �S��X�ʒu_����          X�ʒu(���i)�̃����i��
        ' �S��X�ʒu_�ʒu(ii)      ���i�� Start�����X�ʒu  ii=1 To �����i��
     
        �S��X�ʒu_���� = 0:
        Data2$ = LCase(Data1$): �S��X�ʒu_������$ = ""
        If Mid(Data2$, 1, 1) = "�}" Then Data2$ = Mid(Data2$, 2): �S��X�ʒu_������$ = "�}"
        �S��X�ʒu_��L = 0
        Call Ddata("+", Data2$, Ds$(), Di(), �S��X�ʒu_Data��)
     
        For ii = 1 To �S��X�ʒu_Data��: D1$ = Ds$(ii)
             �S��X�ʒu_n(ii) = 1:
             ni = InStr(D1$, "x")
             Select Case ni
             Case 0:      Call calu2(D1$, Scda, er1$): ��er = ��er + er1$
                          �S��X�ʒu_p(ii) = Scda
                          �S��X�ʒu_���� = �S��X�ʒu_���� + 1: �S��X�ʒu_�ʒu(�S��X�ʒu_����) = �S��X�ʒu_�ʒu(�S��X�ʒu_���� - 1) + Scda
             Case Else:
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Dck$ = Rob_����ck0$(D2$): If Dck$ <> "" Then ��er = ��er + "�S�� pit  " + D1$ + " [" + Dck$ + "] ������  ": If ����CK > 99 Then er (""): Stop
                          �S��X�ʒu_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): ��er = ��er + er1$
                          �S��X�ʒu_p(ii) = Scda
                          For jj = 1 To �S��X�ʒu_n(ii):  �S��X�ʒu_���� = �S��X�ʒu_���� + 1: �S��X�ʒu_�ʒu(�S��X�ʒu_����) = �S��X�ʒu_�ʒu(�S��X�ʒu_���� - 1) + Scda: Next jj
             End Select
             �S��X�ʒu_��L = �S��X�ʒu_��L + �S��X�ʒu_n(ii) * �S��X�ʒu_p(ii)
             Next ii
    
        Select Case �S��X�ʒu_������$
        Case "�}"
                          ni = �S��X�ʒu_����
                          If �S��X�ʒu_�ʒu(1) = 0 Then
                               For ii = 2 To ni:  �S��X�ʒu_�ʒu(ni + ii - 1) = -�S��X�ʒu_�ʒu(ii): �S��X�ʒu_���� = �S��X�ʒu_���� + 1: Next ii
                               Else
                               For ii = 1 To ni:  �S��X�ʒu_�ʒu(ni + ii) = -�S��X�ʒu_�ʒu(ii): �S��X�ʒu_���� = �S��X�ʒu_���� + 1: Next ii
                               End If
        Case Else:
        End Select
        
        
        
        
        
        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        End Sub
'����������������������������������������������������������������������������������������������
'���� ���r �S��pit ck2  ���   �@�@  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_Pit_ck2(Data1$)
        ' Data1$       ����exp   250+32x125 500+28x125
        ' �S��P�i��_Data��       �i�� Data�̌�
        ' �S��P�i��_Data$(i)     P�i�� i�Ԗڂ̈ʒu��Data
        Call Ddata(" ", Data1$, �S��P�i��_Data$(), Di(), �S��P�i��_Data��)
        For ii = 1 To �S��P�i��_Data��: Call ���r_�S��_Pit_ck(�S��P�i��_Data$(ii)): Next ii
     
     
        End Sub

'����������������������������������������������������������������������������������������������
'���� ���r �S��pit ck  ���  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_Pit_ck(Data1$)
        ' Data1$     ����exp 155+40x125+40x125+155      ���~ �}125+7x250
        ' �S��P_Data��        Data�̌�
        ' �S��P_������$       ""  OR  "�}"
        ' �S��P_Data$(i)      i�Ԗڂ��߯���Data
        ' �S��P_n(i)          i�Ԗڂ��߯��̌�
        ' �S��P_p(i)          i�Ԗڂ��߯� mm
        ' �S��P_L(i)
        ' �S��P_����           �S Data_Pit  �}
     
        ' �S��P_����           Pit(���i)�̃����i��
        ' �S��P_�ʒu(ii)      ���i�� Start����̈ʒu  ii=1 To �����i��
        ' �S��P_��L           �S Data_Pit �̍��v
        
        
        
        �S��P_���� = 0:
        Data2$ = LCase(Data1$): �S��P_������$ = ""
        If Mid(Data2$, 1, 1) = "�}" Then Data2$ = Mid(Data2$, 2): �S��P_������$ = "�}"
        �S��P_��L = 0
        Call Ddata("+", Data2$, �S��P_Data$(), Di(), �S��P_Data��)
     
        For ii = 1 To �S��P_Data��: D1$ = �S��P_Data$(ii)
             �S��P_n(ii) = 1:
             ni = InStr(D1$, "x")
             
             Select Case ni
             Case 0:      Call calu2(D1$, Scda, er1$): ��er = ��er + er1$
                          �S��P_p(ii) = Scda:
                          �S��P_���� = �S��P_���� + 1: �S��P_�ʒu(�S��P_����) = �S��P_�ʒu(�S��P_���� - 1) + Scda
             Case Else
                          D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
                          Dck$ = Rob_����ck0$(D2$): If Dck$ <> "" Then ��er = ��er + "�S�� pit  " + D1$ + " [" + Dck$ + "] ������  ": If ����CK > 99 Then er (""): Stop
                          �S��P_n(ii) = Val(D2$)
                          Call calu2(D3$, Scda, er1$): ��er = ��er + er1$
                          �S��P_p(ii) = Scda
                          For jj = 1 To �S��P_n(ii):  �S��P_���� = �S��P_���� + 1: �S��P_�ʒu(�S��P_����) = �S��P_�ʒu(�S��P_���� - 1) + Scda: Next jj
             End Select
             �S��P_L(ii) = �S��P_n(ii) * �S��P_p(ii)
             �S��P_��L = �S��P_��L + �S��P_n(ii) * �S��P_p(ii)
             Next ii
        
        
        Select Case �S��P_������$
        Case "�}"
                          ni = �S��P_����
                          If �S��P_�ʒu(1) = 0 Then
                               For ii = 2 To ni:  �S��P_�ʒu(ni + ii - 1) = -�S��P_�ʒu(ii): �S��P_���� = �S��P_���� + 1: Next ii
                               Else
                               For ii = 1 To ni:  �S��P_�ʒu(ni + ii) = -�S��P_�ʒu(ii): �S��P_���� = �S��P_���� + 1: Next ii
                               End If
        Case Else:
        End Select
        
        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        End Sub

'����������������������������������������������������������������������������������������������
'���� ���r �S�� L ck    ��� �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub ���r_�S��_L_ck(Data1$)
        ' ̯������̌v�Z�̋��r�S�،a$(�S��L_���i��) ���K�v
        ' ���r_�S�؃� �� X,Y �����l��
        
        
        ' Data1$                  exp 2746�`2246+(5655+4655)+2746�`2246
        ' �S��L_Data1$          : �ޯ�ޯ��p �Ɏg�p  exp 2746�`2246+(5655+4655)+2746�`2246
        ' �S��L_Data��           Data�̌�
        ' �S��L_Data$(i)        i�Ԗڂ�Data$    exp  F   2746�`2246    (5655+4655)
        ' �S��L_Type$(i)        i�Ԗڂ�Data_Type   L  F  W  K  J  r
        ' �S��L_L(i)            i�Ԗڂ�Data_L
        ' �S��L_r(i)            i�Ԗڂ́@Data�@r
        ' �S��L_r�p�x(i)        i�Ԗڂ�  Data  r�p�x
        ' �S��L_r_X0(i)         i�Ԗڂ́@Data�@r �̒��S X0
        ' �S��L_r_Y0(i)         i�Ԗڂ́@Data�@r �̒��S Y0
        
        ' �S��L_�Ȋp�x(i)       i�Ԗڂ�  Data  �Ȃ��p�x
        ' �S��L_�S��L           �S Data_L    Joint  ̯��܂܂�
        
        ' �S��L_Start�p�x       �S�؉��H��Start�S�؂̊p�x�@�@���͂��Ȃ��ꍇ 90
        ' �S��L_X(i)            i�Ԗڂ�Data$ Start X���W  Data�̌�+1  [���W ����]
        ' �S��L_Y(i)            i�Ԗڂ�Data$ Start Y���W  Data�̌�+1  [���W ����]
       
       
        ' �S��L_Xmin            X���Wmin
        ' �S��L_Xmax            X���Wmax
        ' �S��L_Ymin            Y���Wmin
        ' �S��L_Ymax            Y���Wmax
        ' �S��L_Xcen            X���Wcenter
        ' �S��L_Ycen            Y���Wcenter
        ' �S��L_XL              �S��L_XL=�S��L_Xmax-�S��L_Xmin   [���W ����]
        ' �S��L_YL              �S��L_YL=�S��L_Ymax-�S��L_Ymin   [���W ����]
           
        ' �S��L_���i��      �@  �S��L_���i�� �S�؂̕�����  ٰ�ߋ؂� +1
        ' �S��L_��L(i)          �i�S�؂̍��v����  Joint�ɂ�镪��
        ' �S��L_���i�ʒu(i) �@  �S��L_���i��Start�ʒu    ٰ�ߋ؂� �͕�
           
         '�S��L_W��           ' �޽���ڐ�
         '�S��L_K��           ' �@�B�p����
           
           
           
           
        �S��L_Data1$ = Data1$
        Wda$ = Data1$:    ni = 0
        �S��L_���i�� = 1: �S��L_���i�ʒu(1) = 1
        �S��L_W�� = 0: �S��L_K�� = 0
        
        For ii = 1 To 20: �S��L_��L(ii) = 0: Next ii
        
        '[[[ Data ���� ]]]
           Do:  n2 = InStr(Wda$, "+"):
                If Mid(Wda$, 1, 1) = "(" Then
                      n2 = InStr(Wda$, ")"): n2 = n2 + 1:
                      If n2 <= 1 Then ��er = "���r_�S��_L (  ) �Ł@) ������": If ����CK > 99 Then er (""): Stop: Exit Do Else Exit Do
                      If Mid(Wda$, n2) = "" Then
                            n2 = 0
                            Else
                            If Mid(Wda$, n2, 1) <> "+" Then ��er = "���r_�S��_L (  ) �Ł@)+ ������":   If ����CK > 99 Then er (""): Stop: Exit Do Else Exit Do
                           End If
                      End If
                
                If n2 = 0 Then ni = ni + 1: �S��L_Data$(ni) = Wda$: Exit Do
                ni = ni + 1
                �S��L_Data$(ni) = Mid(Wda$, 1, n2 - 1): Wda$ = Mid(Wda$, n2 + 1)
                Loop
                �S��L_Data�� = ni

        '************************
        If Data1$ = "" Then Exit Sub

        '[[[ L ���v�Z ]]]
           
         �S�؃� = ���r_�S�؃�
            '*************
            'If P_��_�S��_L_Type(�S��L_Data$(1)) = "R" Then �S�؃� = �S�؃� + 90
           
           Joint_�S�؊J�� = ���r_J�S�؊J�� * ����}_Scale
                  �Otype$ = "": Point_X = 0: Point_Y = 0
        
        For ii = 1 To �S��L_Data��: D1$ = �S��L_Data$(ii)
                    �S��L_Type$(ii) = P_��_�S��_L_Type(D1$): If ��er <> "" Then If ����CK > 99 Then Stop

                    �S��L_r(ii) = 0:   �S��L_r�p�x(ii) = 0
                    �S��L_�Ȋp�x(ii) = 0
        
             
             �S��L_X(ii) = Point_X: �S��L_Y(ii) = Point_Y
             Select Case UCase(�S��L_Type$(ii))
             Case "*":                    If ��er <> "" Then If ����CK > 99 Then Stop

             Case "�p":
                             LL1 = P_��_�S��_L(D1$): �S��L_�Ȋp�x(ii) = LL1
                             �S�؃� = �S�؃� - �S��L_�Ȋp�x(ii)
             
             Case "L":       If �Otype$ = "L" Then �S�؃� = �S�؃� - 90
                             LL1 = P_��_�S��_L(D1$):  �S��L_L(ii) = LL1
                             �S��L_��L(�S��L_���i��) = �S��L_��L(�S��L_���i��) + LL1
                             XLL = LL1 * Dcos(�S�؃�): YLL = LL1 * Dsin(�S�؃�)
                             Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
             
             Case "F":       '���r�S�،a$(�S��L_���i��)
                             LL1 = FP_���r_�S��_Data("L1", ���r�S�،a$(�S��L_���i��)):  �S��L_L(ii) = LL1:  �S��L_��L(�S��L_���i��) = �S��L_��L(�S��L_���i��) + LL1
             
             Case "W":
                             �S��L_���i�� = �S��L_���i�� + 1:   �S��L_���i�ʒu(�S��L_���i��) = ii
                             �S��L_W�� = �S��L_W�� + 1
             
             Case "K":
                             �S��L_���i�� = �S��L_���i�� + 1:   �S��L_���i�ʒu(�S��L_���i��) = ii
                             �S��L_K�� = �S��L_K�� + 1
             
             Case "J":       �S��L_���i�� = �S��L_���i�� + 1:   �S��L_���i�ʒu(�S��L_���i��) = ii
                             
                             LL1 = 0:  If UCase(D1$) <> "J*" Then LL1 = P_��_�S��_L(D1$):
                             �S��L_L(ii) = LL1: ' �S��L_��L(�S��L_���i��) = �S��L_��L(�S��L_���i��) + LL1
                             XLL = -LL1 * Dcos(�S�؃�) + Joint_�S�؊J�� * Dsin(�S�؃�): YLL = -LL1 * Dsin(�S�؃�) + Joint_�S�؊J�� * Dcos(�S�؃�)
                             XLL2 = -LL1 * Dcos(�S�؃�): YLL2 = -LL1 * Dsin(�S�؃�)
             
                             Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
             
             
             
             Case "R":       LL1 = P_��_�S��_L(D1$):  �S��L_L(ii) = LL1:  �S��L_��L(�S��L_���i��) = �S��L_��L(�S��L_���i��) + LL1
                             If �S��L_r1 <= 0 Then �S��L_r1 = 1
                             �S��L_r(ii) = �S��L_r1
                             �S��L_r�p�x(ii) = �S��L_r�p�x1
                             
                             �S�؃� = �S�؃� - �S��L_r�p�x1
                             
                               ��]�� = -�S��L_r�p�x1
                               XLL = 0: YLL = 0
                               X1 = Point_X:  Y1 = Point_Y: X2 = Point_X: Y2 = Point_Y
                               
                               ���S_DX = �S��L_r1 * Dcos(�S�؃�): ���S_DY = �S��L_r1 * Dsin(�S�؃�)
                               X0 = X1 + ���S_DX: Y0 = Y1 + ���S_DY
                               �S��L_r_X0(ii) = X0: �S��L_r_Y0(ii) = Y0:
                               Call P_���r_Calu_�Ɖ�](��]��, X0, Y0, X1, Y1, X2, Y2)
                               
                               Point_X = X2: Point_Y = Y2
                             
                             
             Case Else:    ��er = "���r_�S��_L ���� (" + �S��L_Type$(ii) + "  )  ������": If ����CK > 99 Then er (""): Stop

             
             End Select
             �Otype$ = UCase(�S��L_Type$(ii))
             �S��L_X(ii + 1) = Point_X: �S��L_Y(ii + 1) = Point_Y
             Next ii
     
        
        '[[[  �S��L_�S��L  ]]]
        �S��L_�S��L = 0
        For ii = 1 To �S��L_���i��:  �S��L_�S��L = �S��L_�S��L + �S��L_��L(ii): Next ii
        
        '[[[ �S��L_Xmin  �S��L_Xmax    �S��L_Ymin  �S��L_Ymax    �S��L_Xcen  �S��L_Ycen ]]]
        �S��L_Xmin = 99999999:     �S��L_Xmax = -99999999
        �S��L_Ymin = 99999999:     �S��L_Ymax = -99999999
        For ii = 1 To �S��L_Data�� + 1
              If �S��L_X(ii) < �S��L_Xmin Then �S��L_Xmin = �S��L_X(ii)
              If �S��L_Y(ii) < �S��L_Ymin Then �S��L_Ymin = �S��L_Y(ii)
              If �S��L_X(ii) > �S��L_Xmax Then �S��L_Xmax = �S��L_X(ii)
              If �S��L_Y(ii) > �S��L_Ymax Then �S��L_Ymax = �S��L_Y(ii)
              Next ii
        �S��L_Xcen = (�S��L_Xmin + �S��L_Xmax) / 2
        �S��L_Ycen = (�S��L_Ymin + �S��L_Ymax) / 2
        �S��L_XL = �S��L_Xmax - �S��L_Xmin: �S��L_YL = �S��L_Ymax - �S��L_Ymin
        
        If �S��L_�S��L = 0 Then ��er = "�S��L=0 " + Data1$: er (""): If ����CK > 99 Then Stop: '����CK = 200

        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        
        End Sub

Function P_��_�S��_L_Type(Data1$)
        ' Data1$               exp   �p85.301   r340  564  r340  (3784+J960+5744)  (3784+W+5744)
        ' �S��_L_Type���`
        '  L      L          ���l�@L����
        '  F      ̯�        ���l=0
        '  W      �޽����    ���l=0
        '  K      �@�B���p�� ���l=0
        '  J      �ޮ���     ���l  �ޮ��Ē���
        '  R      ���        ���l  ������a
        '  �p     �Ȋp�x
        '  *      err
        
        Select Case UCase(Mid(Data1$, 1, 1))
             Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9": DType$ = "L"
             Case "F": DType$ = "F"
             Case "W": DType$ = "W" ' �޽����
             Case "K": DType$ = "K" ' �@�B���p��
             Case "J": DType$ = "J"
             Case "R": DType$ = "R"
             Case "�p": DType$ = "�p"
             
             Case Else:     DType$ = "*":  ��er = "�S�؍��� [" + Data1$ + "] �͎g�p�ł��܂���": If ����CK > 99 Then er (""): Stop
             End Select

        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        P_��_�S��_L_Type = DType$
        End Function
Function P_��_�S��_L(Data1$)
        ' L ���v�Z    Data1$         exp 2746�`2246  r250  �p85.301  5655    J960    r150�x70.507    r150L236
        ' �S��L_L1           �S�� L1 ����
        ' �S��L_L2           �S�� L2 ����
        ' �S��L_r1           �S�� r  ���a
        ' �S��L_r�p�x1        �S�� r  �p�x
        
        �S��L_L1 = 0: �S��L_L2 = 0: �S��L_r1 = 0: �S��L_r�p�x1 = 0
        D01$ = Data1$: R_DATA1$ = ""
        
        Select Case UCase(Mid(Data1$, 1, 1))
             Case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9": DType$ = "L"
             Case "F":        DType$ = "F": D01$ = Mid(D01$, 2)
             Case "W":        DType$ = "W": D01$ = Mid(D01$, 2)
             Case "K":        DType$ = "K": D01$ = Mid(D01$, 2)
             Case "J":        DType$ = "J": D01$ = Mid(D01$, 2)
             Case "R":        DType$ = "R": D01$ = Mid(D01$, 2)
                              ni = InStr(D01$, "�x")
                              Select Case ni
                              Case 0, 1:
                              Case Else:     R_DATA1$ = Mid(D01$, ni):    D01$ = Mid(D01$, 1, ni - 1)
                              End Select
             
             
             Case "�p":       DType$ = "�p": D01$ = Mid(D01$, 2)
             Case Else:       DType$ = "*":  ��er = "�S�� L [" + Data1$ + "] �͎g�p�ł��܂���": If ����CK > 99 Then er (""): Stop
             End Select
        
        
        P_��_�S��_L = 0
        If D01$ <> "" Then
             ni = InStr(D01$, "�`")
             Select Case ni
             Case 0:          Call calu2(D01$, �S��L_L1, er1$): ��er = ��er + er1$
                              �S��L_L2 = �S��L_L1
                              P_��_�S��_L = �S��L_L1
        
             Case Else:       D2$ = Mid(D01$, 1, ni - 1): D3$ = Mid(D01$, ni + 1)
                              Call calu2(D2$, �S��L_L1, er1$): ��er = ��er + er1$
                              Call calu2(D3$, �S��L_L2, er1$): ��er = ��er + er1$
                              P_��_�S��_L = (�S��L_L1 + �S��L_L2) / 2
                          If ���r_�S��L�v�Z_max$ = "Y" Then
                               P_��_�S��_L = �S��L_L2
                               If P_��_�S��_L < �S��L_L1 Then P_��_�S��_L = �S��L_L1
                             ' ���r_�S��L�v�Z_max$ = ""
                          End If
             
             End Select
             End If
        
        Select Case DType$
             Case "R":        �S��L_r1 = �S��L_L1
                              If �S��L_r1 <= 0 Then ��er = ��er + "  r=0"
                              Select Case Mid(R_DATA1$, 1, 1)
                              Case "":        �S��L_r�p�x1 = 90:  P_��_�S��_L = 2 * P_��_�S��_L * 3.14159265358979 * (�S��L_r�p�x1 / 360)
                              Case "L":       P_��_�S��_L = Val(Mid(R_DATA1$, 2))
                                              RLL = 2 * �S��L_r1 * 3.14159265358979
                                              �S��L_r�p�x1 = 0: If RLL <> 0 Then �S��L_r�p�x1 = 360 * P_��_�S��_L / RLL
                              
                              Case "�x":      �S��L_r�p�x1 = Val(Mid(R_DATA1$, 2))
                                              P_��_�S��_L = 2 * P_��_�S��_L * 3.14159265358979 * (�S��L_r�p�x1 / 360)
                              Case Else: ��er = "�S�� L [" + Data1$ + "]  (__) ���̍��ڂ������ł��Ȃ�": If ����CK > 99 Then er (""): Stop
                              End Select
             
             
             Case Else:
             End Select
             
             
             
        If ��er <> "" Then If ����CK > 99 Then er (""): Stop
        End Function


'����������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@���r Data Put   �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Private Sub ���r_�Y_Put(BNo)
    Open ���r_Data_dsk + "�y��_���r_�Y.RAN" For Random As #30 Len = Len(�y�؋��r_�Y)
    Put #30, BNo, �y�؋��r_�Y
    Close #30
    End Sub
Private Sub ���r_��b_Put(BNo)
    Open ���r_Data_dsk + "�y��_���r_��b.RAN" For Random As #30 Len = Len(�y�؋��r_��b)
    Put #30, BNo, �y�؋��r_��b
    Close #30
    End Sub

Private Sub ���r_��_Put(BNo)
    Open ���r_Data_dsk + "�y��_���r_��.RAN" For Random As #30 Len = Len(�y�؋��r_��)
    Put #30, BNo, �y�؋��r_��
    Close #30
    End Sub

Private Sub ���r_Stoper_Put(BNo)
    Open ���r_Data_dsk + "�y��_���r_Stoper.RAN" For Random As #30 Len = Len(�y�؋��r_Stoper)
    Put #30, BNo, �y�؋��r_Stoper
    Close #30
    End Sub

Private Sub ���r_�B��_Put(BNo)
    Open ���r_Data_dsk + "�y��_���r_�B��.RAN" For Random As #30 Len = Len(�y�؋��r_�B��)
    Put #30, BNo, �y�؋��r_�B��
    Close #30
    End Sub

Private Sub ���r_��_Put(BNo)
    Open ���r_Data_dsk + "�y��_���r_��.RAN" For Random As #30 Len = Len(�y�؋��r_��)
    Put #30, BNo, �y�؋��r_��
    Close #30
    End Sub

'����������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@���r Data Read  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Private Sub �y��_Dsk()
    Call dsk2
    End Sub


'����������������������������������������������������������������������������������������������
'���� ���r �Y              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������

Function ���r_�Y_no(�Y����$)
    �YNo = 0: ' 0  ���ޖ�������
    For i = 1 To �Y_No_Max: If �Y����$ = �Y��(i) Then �YNo = i: Exit For
        Next i
    If Trim(�Y����$) = "" Then �YNo = 0: ' �K�v
    ���r_�Y_no = �YNo
    If �YNo > 0 Then Call ���r_�Y_Get(�YNo)
    End Function
Sub ���r_�Y_Get(BNo)
    If ���r_Data_dsk = "" Then Call �y��_Dsk
    Open ���r_Data_dsk + "�y��_���r_�Y.RAN" For Random As #31 Len = Len(�y�؋��r_�Y)
    Get #31, BNo, �y�؋��r_�Y
    Close #31
    End Sub
Function ���r_�Y(����$)
     D1$ = "***": D11 = 0:
     With �y�؋��r_�Y
        Select Case UCase(����$)
        Case "����": D1$ = Trim(.����):   '   �Y1  �Y3
        Case "NO":          D11 = .No: ' Bar No
        Case "D":           D1$ = F_RAN(.Da_D): Call ���r_���_ck("*", D1$): ' �Y�amm
        Case "L":           D1$ = F_RAN(.Da_L): Call ���r_���_ck("*", D1$):  '�YL
        
        Case "��߰���":     D11 = .Speser�퐔
        
        Case "��߰�1":      D1$ = F_RAN(.Speser1): Call ���r_�S��_ck("*", D1$)
                            S_H = Val(�S��_H$): L2 = Sqr(S_H ^ 2 + �S��L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + �S��L_L(3) ^ 2)
                            Call ���r_�S��_L_ck(�S��_L$)
                            �S��L_�S��L = �S��L_L(1) + L2 + L3 + �S��L_L(4)
        
                           'Stop
                           �\����$ = "��߰�"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = Val(�S��_n$) * �S��P_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "��߰�2":      D1$ = F_RAN(.Speser2): Call ���r_�S��_ck("*", D1$)
                            S_H = Val(�S��_H$): L2 = Sqr(S_H ^ 2 + �S��L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + �S��L_L(3) ^ 2)
                            �S��L_�S��L = �S��L_L(1) + L2 + L3 + �S��L_L(4)
        
                           �\����$ = "��߰�"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = Val(�S��_n$) * �S��P_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "��߰�3":      D1$ = F_RAN(.Speser3): Call ���r_�S��_ck("*", D1$)
                            S_H = Val(�S��_H$): L2 = Sqr(S_H ^ 2 + �S��L_L(2) ^ 2): L3 = Sqr(S_H ^ 2 + �S��L_L(3) ^ 2)
                            �S��L_�S��L = �S��L_L(1) + L2 + L3 + �S��L_L(4)
        
                           �\����$ = "��߰�"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = Val(�S��_n$) * �S��P_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "K��":         D11 = .K�퐔
        
        Case "K1":          D1$ = F_RAN(.K1):  Call ���r_�S��_ck("*", D1$)
                            �S��_��_����$ = "K_ _1"
                            �S��_��_����1$ = �S��_�a$
                            �S��_��_����2$ = F9(�S�ؐ�_n1) + "-" + �S��_�a$
                            �S��_��_����3$ = F9(�S�ؐ�_n1) + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
        
        Case "K1-1", "K1-2", "K1-3", "K1-4", "K1-5"
                            D1$ = F_RAN(.K1):  Call ���r_�S��_ck("*", D1$)
        
                            ii = Val(Mid(����$, 4))
                           �\����$ = "K1-" + f0(ii)
                           �\�S�،a$ = ���r�S�،a$(ii): �\�S�ؖ{�� = �S�ؐ�_n1: �\�S��L = �S��L_��L(ii)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           If �\�S��L = 0 Then D1$ = ""
        
        
        Case "K2":          D1$ = F_RAN(.K2):  Call ���r_�S��_ck("*", D1$)
                            �S��_��_����$ = "K_ _2"
                            �S��_��_����1$ = �S��_�a$
                            �S��_��_����2$ = F9(�S�ؐ�_n1) + "-" + �S��_�a$
                            �S��_��_����3$ = F9(�S�ؐ�_n1) + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
        
        Case "K2-1", "K2-2", "K2-3", "K2-4", "K2-5"
                            D1$ = F_RAN(.K2):  Call ���r_�S��_ck("*", D1$)
        
                            ii = Val(Mid(����$, 4))
                           �\����$ = "K2-" + f0(ii)
                           �\�S�،a$ = ���r�S�،a$(ii): �\�S�ؖ{�� = �S�ؐ�_n1: �\�S��L = �S��L_��L(ii)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           If �\�S��L = 0 Then D1$ = ""
        
        Case "K3":          D1$ = F_RAN(.K3):  Call ���r_�S��_ck("*", D1$)
                            �S��_��_����$ = "K_ _3"
                            �S��_��_����1$ = �S��_�a$
                            �S��_��_����2$ = F9(�S�ؐ�_n1) + "-" + �S��_�a$
                            ����$ = F9(�S�ؐ�_n1)
                            �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
        Case "K3-1", "K3-2", "K3-3", "K3-4", "K3-5"
                            D1$ = F_RAN(.K3):  Call ���r_�S��_ck("*", D1$)
        
                            ii = Val(Mid(����$, 4))
                           �\����$ = "K3-" + f0(ii)
                           �\�S�،a$ = ���r�S�،a$(ii): �\�S�ؖ{�� = �S�ؐ�_n1: �\�S��L = �S��L_��L(ii)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           If �\�S��L = 0 Then D1$ = ""
        
        
        
        Case "��K�S�ؖ{��": D11 = .��K�S�ؖ{��: ' exp    24
        
        
        Case "KH2":         D1$ = F_RAN(.KH2):    Call ���r_�S��_ck("*", D1$)
        
        
        
        Case "HOOP":        .Hoop1�� = 0: .Hoop2�� = 0: .Hoop3�� = 0:
                            Hoop_L1 = 0: Hoop_L2 = 0: Hoop_L3 = 0
                            D1$ = F_RAN(.Hoop1):    Call ���r_�S��_ck("*", D1$)
                                 �YHoop�a = �S��_SH�a
                                 �YHoop_Start_Z�ʒu = �S��_Z�ʒu
                                 �YHoop_pit$ = "0+" + �S��_pit$
                                 Hoop_L1 = �S��P_�ʒu(�S��P_����)
                            D1$ = F_RAN(.Hoop2):     If D1$ <> "" Then Call ���r_�S��_ck("*", D1$): �YHoop_pit$ = �YHoop_pit$ + "+" + �S��_pit$: Hoop_L2 = Hoop_L1 + �S��P_�ʒu(�S��P_����)
                            D1$ = F_RAN(.Hoop3):     If D1$ <> "" Then Call ���r_�S��_ck("*", D1$): �YHoop_pit$ = �YHoop_pit$ + "+" + �S��_pit$: Hoop_L3 = Hoop_L2 + �S��P_�ʒu(�S��P_����)
                            
                            
                            Call ���r_�S��_Pit_ck(�YHoop_pit$)
                            .�g���ؐ� = 0
                            For ii = 1 To �S��P_���� + 10: ���r_�S��_Mark$(ii) = "": Next ii
                            D1$ = F_RAN(.�g����): Call Ddata(" ", D1$, Ds$(), Di(), ni)
                                 For ii = 1 To ni
                                      If Di(ii) > 0 Then .�g���ؐ� = .�g���ؐ� + 1: ���r_�S��_Mark$(Di(ii)) = "*"
                                      If Di(ii) > �S��P_���� Then ��er = "�Y �g���� �w��ʒu����������":  If ����CK > 99 Then er (""): Stop
                                      Next ii
                            
                            For ii = 1 To �S��P_����
                                  Do
                                        If ���r_�S��_Mark$(ii) <> "" Then Exit Do
                                        Select Case �S��P_�ʒu(ii)
                                        Case Is <= Hoop_L1: ���r_�S��_Mark$(ii) = "1": .Hoop1�� = .Hoop1�� + 1
                                        Case Is <= Hoop_L2: ���r_�S��_Mark$(ii) = "2": .Hoop2�� = .Hoop2�� + 1
                                        Case Else: ���r_�S��_Mark$(ii) = "3": .Hoop3�� = .Hoop3�� + 1
                                        End Select
                                        Exit Do
                                        Loop
                                  Next ii
                            
                            �S��_SH�a = �YHoop�a
                            �S��_Z�ʒu = �YHoop_Start_Z�ʒu
        
        Case "HOOP1":       D1$ = F_RAN(.Hoop1):    Call ���r_�S��_ck("*", D1$)
                            '�YHoop�a = �S��_SH�a:  �YHoop_Start_Z�ʒu = �S��_Z�ʒu:  �YHoop_pit$ = �S��_pit$
                            �S��P_���� = �S��P_���� + 1
                            �S��_��_����$ = "K_0_3"
                            �S��_��_����1$ = �S��_�a$
                            ����$ = F9(.Hoop1��)
                            �S��L_�S��L = �S��_SH�a * 3.1415926535 + FP_���r_�S��_Data("KHL", �S��_�a$)
                            �S��_��_����2$ = ����$ + "-" + �S��_�a$
                            �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "K03"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = .Hoop1��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "HOOP2":       D1$ = F_RAN(.Hoop2):    Call ���r_�S��_ck("*", D1$)
                            '�YHoop�a = �S��_SH�a:  �YHoop_Start_Z�ʒu = �S��_Z�ʒu:  �YHoop_pit$ = �S��_pit$
                            �S��_��_����$ = "K_0_4"
                            �S��_��_����1$ = �S��_�a$
                            ����$ = F9(.Hoop2��)
                            �S��L_�S��L = �S��_SH�a * 3.1415926535 + FP_���r_�S��_Data("KHL", �S��_�a$)
                            �S��_��_����2$ = ����$ + "-" + �S��_�a$
                            �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "K04"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = .Hoop2��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        
        Case "HOOP3":       D1$ = F_RAN(.Hoop3):    Call ���r_�S��_ck("*", D1$)
                           ' �YHoop�a = �S��_SH�a:  �YHoop_Start_Z�ʒu = �S��_Z�ʒu:  �YHoop_pit$ = �S��_pit$
                            �S��_��_����$ = "K_0_5"
                            �S��_��_����1$ = �S��_�a$
                            ����$ = F9(.Hoop3��)
                            �S��L_�S��L = �S��_SH�a * 3.1415926535 + FP_���r_�S��_Data("KHL", �S��_�a$)
                            �S��_��_����2$ = ����$ + "-" + �S��_�a$
                            �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "K05"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = .Hoop3��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        
        Case "�g����":      D1$ = F_RAN(.�g����):   D2$ = "": ni = InStr(6, D1$, " "): If ni > 2 Then D2$ = Mid(D1$, 1, ni - 1)
                            Call ���r_�S��_ck("*", D2$)
                            �S��_��_����$ = "K_0_1"
                            �S��_��_����1$ = �S��_�a$
                            ����$ = F9(.�g���ؐ�)
                            �S��L_�S��L = �S��_SH�a * 3.1415926535 + FP_���r_�S��_Data("KHL", �S��_�a$)
                            �S��_��_����2$ = ����$ + "-" + �S��_�a$
                            �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "K01"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = .�g���ؐ�: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                            
        Case "HOOP��":     D1$ = F_RAN(.KH2):    Call ���r_�S��_ck("*", D1$)
                            �S��_��_����$ = "K_0_2"
                            �S��_��_����1$ = �S��_�a$
                            ����$ = F9(�S�ؐ�_n1)
                            �S��_��_����2$ = ����$ + "-" + �S��_�a$
                            �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "K02"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S�ؐ�_n1: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case Else: ��er = "System ���r_�Y ���� [" + ����$ + "] ������": er (""): If ����CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": ���r_�Y = D11
        Case Else:  ���r_�Y = D1$
        End Select
        
     End With
    
     If ��er <> "" Then er (""): If ����CK > 99 Then Stop
     End Function


'����������������������������������������������������������������������������������������������
'���� ���r ��b            �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Function ���r_��b_No(��b����$)
     ��bNo = 0: ' 0  ���ޖ�������
     For i = 1 To ��b_No_Max: If ��b����$ = ��b��(i) Then ��bNo = i: Exit For
         Next i
     If Trim(��b����$) = "" Then ��bNo = 0: ' �K�v
     ���r_��b_No = ��bNo
     If ��bNo > 0 Then Call ���r_��b_Get(��bNo)
     End Function
Sub ���r_��b_Get(BNo)
     If ���r_Data_dsk = "" Then Call �y��_Dsk
     Open ���r_Data_dsk + "�y��_���r_��b.RAN" For Random As #31 Len = Len(�y�؋��r_��b)
     Get #31, BNo, �y�؋��r_��b
     Close #31
     End Sub
Function ���r_��b(����$)
     D1$ = "***": D11 = 0:
     With �y�؋��r_��b
        Select Case UCase(����$)
        Case "����":     D1$ = Trim(.����):   '   ��b1
        Case "NO":       D11 = .No: ' Bar No
        Case "BX":       D1$ = F_RAN(.Da_BX): Call ���r_���_ck("*", D1$)
        
        Case "BY":       D1$ = F_RAN(.Da_BY): Call ���r_���_ck("*", D1$)
        
        Case "H":        D1$ = F_RAN(.Da_H): Call ���r_���_ck("*", D1$)
        
        Case "�Y�ʒu":   D1$ = F_RAN(.�Y�ʒu): Call ���r_�Y�ʒu_ck(D1$)
        
        Case "FX1":      ' F11
                         D1$ = F_RAN(.FX1):  Call ���r_�S��_ck("*", D1$)
                           ����$ = "*" + F9(�S��P_����)
                           �S��_��_����$ = "F_ _11"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = F9(�S��P_����)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "F11"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "FX1����":      ' F11
                         D1$ = F_RAN(.FX1):  Call ���r_�S��_ck("*", D1$)
                         Call ���r_�S��_L_ck(�S��_B$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = �S��L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        Case "FX1����R":      ' F11
                         D1$ = F_RAN(.FX1):  Call ���r_�S��_ck("*", D1$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = �S��L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1:  D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        
        Case "FX2":      ' F12
                         D1$ = F_RAN(.FX2):  Call ���r_�S��_ck("*", D1$)
                         If �S��_H$ = "" Then ��er = "���r_��b ���� F12 H___  ���Ȃ�":   If ����CK > 99 Then Stop
                         Call Ddata("+", �S��_H$, Ds$(), Di(), ni)
                         �S��_H2$ = ""
                         For ii = ni To 1 Step -1: �S��_H2$ = �S��_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = �S��_H$ + "+" + �S��_B$ + �S��_H2$: Call ���r_�S��_L_ck(Data1$)
                           ����$ = "*" + F9(�S��P_����)
                           �S��_��_����$ = "F_ _12"
                           �S��_��_����1$ = �S��_�a$
                            
                                    FX2�� = 0
                                    For ii = 1 To �S��P_����:     X0 = .BYR - �S��P_�ʒu(ii)
                                          '  FX3=""  �̏ꍇ FX2 ���g�p����
                                          Select Case X0
                                          Case Is > .BYL - .BYL_�[
                                          Case Is > -(.BYR - .BYR_�[):     FX2�� = FX2�� + 1
                                          Case Else
                                          End Select
                                          Next ii
                            '***
                            ����$ = F9(FX2��)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "F12"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = FX2��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "FX2����":      ' F12
                         D1$ = F_RAN(.FX2):  Call ���r_�S��_ck("*", D1$)
                         Call ���r_�S��_L_ck(�S��_B$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = �S��L_YL / 2
                         For ii = ni To 1 Step -1
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        Case "FX2����R":      ' F12
                         D1$ = F_RAN(.FX2):  Call ���r_�S��_ck("*", D1$)
                         Call ���r_�S��_L_ck(�S��_B$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = �S��L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        
        Case "FX3":      ' F13
                         D1$ = F_RAN(.FX2): ' �{���̌v�Z�̂�
                                    FX2�� = 0
                                    For ii = 1 To �S��P_����:     X0 = .BYR - �S��P_�ʒu(ii)
                                          '  FX3=""  �̏ꍇ FX2 ���g�p����
                                          Select Case X0
                                          Case Is > .BYL - .BYL_�[
                                          Case Is > -(.BYR - .BYR_�[):     FX2�� = FX2�� + 1
                                          Case Else
                                          End Select
                                          Next ii
                                �S��P_����1 = �S��P_����
                         D1$ = F_RAN(.FX3): If D1$ = "" Then D1$ = F_RAN(.FX2): '***
                         
                         Call ���r_�S��_ck("*", D1$)
                         If �S��_H$ = "" Then ��er = "���r_��b ���� F13 H___  ���Ȃ�":   If ����CK > 99 Then Stop
                         Call Ddata("+", �S��_H$, Ds$(), Di(), ni)
                         �S��_H2$ = ""
                         For ii = ni To 1 Step -1: �S��_H2$ = �S��_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = �S��_H$ + "+" + �S��_B$ + �S��_H2$: Call ���r_�S��_L_ck(Data1$)
                           �S��_��_����$ = "F_ _13"
                           �S��_��_����1$ = �S��_�a$
                            
                            ����$ = F9(�S��P_����1 - FX2��)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "F13"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����1 - FX2��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                         If InStr(�S��_H$, "�`") > 0 Then �\�S�ؓK�p$ = "(���ϒ�)"
                         
        Case "FX3����":      ' F13
                         D1$ = F_RAN(.FX3): If D1$ = "" Then D1$ = F_RAN(.FX2): '***
                         Call ���r_�S��_ck("*", D1$)
                         Call ���r_�S��_L_ck(�S��_B$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = �S��L_YL / 2
                         For ii = ni To 1 Step -1
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        Case "FX3����R":      ' F13
                         D1$ = F_RAN(.FX3): If D1$ = "" Then D1$ = F_RAN(.FX2): '***
                         Call ���r_�S��_ck("*", D1$)
                         Call ���r_�S��_L_ck(�S��_B$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0: L_ck = �S��L_YL / 2
                         For ii = 1 To ni
                               Select Case Di(ii)
                               Case Is > 0:
                                           If LL1 + Di(ii) < L_ck Then
                                              D1$ = D1$ + "+" + Ds(ii)
                                              Else
                                              LL2 = L_ck - LL1: D1$ = D1$ + "+" + F9(LL2): Exit For
                                              End If
                               Case Else: D1$ = D1$ + "+" + Ds(ii)
                               End Select
                               Next ii
                          D1$ = Mid(D1$, 2): Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        
        
        
        
        Case "FX4":      ' F14
                          D1$ = F_RAN(.FX4):  Call ���r_�S��_ck("*", D1$)
                        ' Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                         Data1$ = �S��_H$ + "+" + �S��_B$ + "+" + �S��_H$: Call ���r_�S��_L_ck(Data1$)
                           
                           
                           ����$ = "*" + F9(�S��P_����)
                           �S��_��_����$ = "F_ _14"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "F14"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "FY1":      ' F1
                         D1$ = F_RAN(.FY1):  Call ���r_�S��_ck("*", D1$)
                           ����$ = "*" + F9(�S��P_����)
                           �S��_��_����$ = "F_ _1"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = F9(Int(�S��P_���� / 2)): ����2$ = F9(�S��P_����)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "F1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "FY2":      ' F2
                         D1$ = F_RAN(.FY2):  Call ���r_�S��_ck("*", D1$)
                         
                         Data1$ = �S��_H$:
                         Fook1$ = "": Fook2$ = "": If Mid(Data1$, 1, 2) = "F+" Then Fook1$ = "F+": Fook2$ = "+F": Data1$ = Mid(Data1$, 3)
                         Call ���r_�S��_L_ck(Data1$)
                         Select Case �S��L_Data��
                         Case 1:     HHD = �S��L_L(1): HHU = 0
                         Case 2:     HHD = �S��L_L(1): HHU = �S��L_L(2)
                         Case Else: ��er = "���r_��b ���� FY2 [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                         End Select
                         
                         Select Case HHU
                         Case Is = 0:
                                     Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                                       �S��_B_LL = �S��L_�S��L
                                       �S��_����� = (.BY - �S��_B_LL) / 2
                                     
                                     Data1$ = Fook1$ + F9(HHD) + "+" + �S��_B$ + "+" + F9(HHD) + Fook2$
                                      
                         Case Else:
                         
                                '*OLD   F2=83-D32_P95_@155+40x125+40x125+155_L2328+�p85.301+3612+�p4.699+1092+W+2092+�p4.699+3612+�p85.301+2328        'Y ��S��
                         
                                Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                                       �S��_B_LL = �S��L_�S��L
                                       �S��_����� = (.BY - �S��_B_LL) / 2
                                
                                Select Case �S��L_Data��
                                Case 3: BBL = �S��L_L(1): BBM = �S��L_L(2): BBR = �S��L_L(3)
                                        BBL2 = Sqr(BBL ^ 2 + HHU ^ 2): BBR2 = Sqr(BBR ^ 2 + HHU ^ 2)
                                        DD3$ = �S��L_Data$(2)
                                Case 5: BBL = �S��L_L(1): BBM1 = �S��L_L(2): BBM2 = �S��L_L(4): BBR = �S��L_L(5)
                                        BBL2 = Sqr(BBL ^ 2 + HHU ^ 2): BBR2 = Sqr(BBR ^ 2 + HHU ^ 2)
                                        DD3$ = �S��L_Data$(2) + "+" + �S��L_Data$(3) + "+" + �S��L_Data$(4)
                                Case Else: ��er = "���r_��b ���� FY2 [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                                End Select
                         
                                �p�x1 = 90 - Calu�p�x(0, 0, BBL, HHU): �p�x2 = Calu�p�x(0, 0, BBL, HHU)
                                Data1$ = Fook1$ + F9(HHD) + "+�p" + F9(�p�x1) + "+" + F9(BBL2) + "+�p" + F9(�p�x2) + "+" + DD3$ + "+�p" + F9(�p�x2) + "+" + F9(BBR2) + "+�p" + F9(�p�x1) + "+" + F9(HHD) + Fook2$
                         End Select
                         
                         Call ���r_�S��_L_ck(Data1$)
                           �S��_��_����$ = "F_ _2"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = F9(Int(�S��P_���� / 2 + 0.5)): ����2$ = F9(�S��P_����)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "F2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "FY2����":      ' F2
                         D1$ = F_RAN(.FY2):  Call ���r_�S��_ck("*", D1$)
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0
                         For ii = 1 To ni
                               Select Case Mid(Ds$(ii), 1, 1)
                               Case "W": D1$ = D1$ + F9(LL1) + "+W": LL1 = 0
                               Case "K": D1$ = D1$ + F9(LL1) + "+K": LL1 = 0
                               Case "J": D1$ = D1$ + F9(LL1) + "+J": LL1 = 0
                               Case Else: LL1 = LL1 + Di(ii)
                               End Select
                               Next ii
                               If ni > 1 And LL1 > 0 Then D1$ = D1$ + "+" + F9(LL1)
                         '*********** ************
                         Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        Case "FY2����R":      ' F2
                         D1$ = F_RAN(.FY2):  Call ���r_�S��_ck("*", D1$)
                         
                         Call Ddata("+", �S��_B$, Ds$(), Di(), ni)
                         D1$ = "": LL1 = 0
                         For ii = ni To 1 Step -1
                               Select Case Mid(Ds$(ii), 1, 1)
                               Case "W": D1$ = D1$ + F9(LL1) + "+W": LL1 = 0
                               Case "K": D1$ = D1$ + F9(LL1) + "+K": LL1 = 0
                               Case "J": D1$ = D1$ + F9(LL1) + "+J": LL1 = 0
                               Case Else: LL1 = LL1 + Di(ii)
                               End Select
                               Next ii
                               If ni > 1 And LL1 > 0 Then D1$ = D1$ + "+" + F9(LL1)
                         �S��_BR$ = D1$
                         Data1$ = D1$: Call ���r_�S��_L_ck(Data1$)
        
        Case "FY3":     'F3
                         D1$ = F_RAN(.FY3):  Call ���r_�S��_ck("*", D1$)
                         Data1$ = �S��_H$ + "+" + �S��_B$ + "+" + �S��_H$: Call ���r_�S��_L_ck(Data1$)
                           ����$ = "*" + F9(�S��P_����)
                           �S��_��_����$ = "F_ _3"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "F3"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "FH1":      ' f1
                         D1$ = F_RAN(.FH1):  Call ���r_�S��_ck("*", D1$)
                         If �S��_H$ = "" Then ��er = "���r_��b ���� f1 H___  ���Ȃ�":   If ����CK > 99 Then Stop
                         Call Ddata("+", �S��_H$, Ds$(), Di(), ni)
                         �S��_H2$ = ""
                         For ii = ni To 1 Step -1: �S��_H2$ = �S��_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(�S��_H2$, 2) + "+" + �S��_B$ + "+" + �S��_H$: Call ���r_�S��_L_ck(Data1$)
                           �S��_��_����$ = "f_ _1"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = "*n":
                           �S��_��_����2$ = "n-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
        
        Case "FH1*":      ' f1
                            �S��P_����22 = P_FH_��("f1")
                         D1$ = F_RAN(.FH1):  Call ���r_�S��_ck("*", D1$)
                         If �S��_H$ = "" Then ��er = "���r_��b ���� f1 H___  ���Ȃ�":   If ����CK > 99 Then Stop
                         Call Ddata("+", �S��_H$, Ds$(), Di(), ni)
                         �S��_H2$ = ""
                         For ii = ni To 1 Step -1: �S��_H2$ = �S��_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(�S��_H2$, 2) + "+" + �S��_B$ + "+" + �S��_H$: Call ���r_�S��_L_ck(Data1$)
                           �S��_��_����$ = "f_ _1"
                           �S��_��_����1$ = �S��_�a$
                            �S��P_���� = �S��P_����22
                            ����$ = F9(�S��P_����)
                           �S��_��_����2$ = "n-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "f1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "FH2":      ' f2
                         D1$ = F_RAN(.FH2):  Call ���r_�S��_ck("*", D1$)
                         If �S��_H$ = "" Then ��er = "���r_��b ���� f2 H___  ���Ȃ�":   If ����CK > 99 Then Stop
                         Call Ddata("+", �S��_H$, Ds$(), Di(), ni)
                         �S��_H2$ = ""
                         For ii = ni To 1 Step -1: �S��_H2$ = �S��_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(�S��_H2$, 2) + "+" + �S��_B$ + "+" + �S��_H$: Call ���r_�S��_L_ck(Data1$)
                           �S��_��_����$ = "f_ _2"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = "*n"
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
        Case "FH2*":      ' f2
                            �S��P_����22 = P_FH_��("f2")
                         D1$ = F_RAN(.FH2):  Call ���r_�S��_ck("*", D1$)
                         If �S��_H$ = "" Then ��er = "���r_��b ���� f2 H___  ���Ȃ�":   If ����CK > 99 Then Stop
                         Call Ddata("+", �S��_H$, Ds$(), Di(), ni)
                         �S��_H2$ = ""
                         For ii = ni To 1 Step -1: �S��_H2$ = �S��_H2$ + "+" + Ds$(ii): Next ii
                         Data1$ = Mid(�S��_H2$, 2) + "+" + �S��_B$ + "+" + �S��_H$: Call ���r_�S��_L_ck(Data1$)
                           �S��_��_����$ = "f_ _2"
                           �S��_��_����1$ = �S��_�a$
                            �S��P_���� = �S��P_����22
                            ����$ = F9(�S��P_����)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "f2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                         If InStr(�S��_H$, "�`") > 0 Then �\�S�ؓK�p$ = "(���ϒ�)"
        
        
        Case "FH3":      D1$ = F_RAN(.FH3):  Call ���r_�S��_ck("*", D1$)
                           �S��_��_����$ = "f_ _3"
                           �S��_��_����1$ = �S��_�a$
                            ����$ = "*n"
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                        
        
        Case "FPIT":      D1$ = F_RAN(.fpit):  Call ���r_�S��_ck("*", D1$)
                          
                         Call Ddata("+", �S��_X$, Ds(), Di(), ni)
                         If ni <> 5 Then ��er = "���r_��b ���� fpit  X___  ����������":   If ����CK > 99 Then Stop
                         ��c��.Start_X = Di(1):    ��c��.Y�S��pit = Di(2)
                         ��c��.�S�؊ԊuX1 = Di(3): ��c��.�S�؊ԊuX2 = Di(4):  ��c��.�S�؊ԊuX3 = Di(5)
                         
                         ��c��.Start_Y = �S��P_�ʒu(1): '��c��.X�S��pit = Di(2): ��c��.�S�؊ԊuY1 = Di(3)
                         If ��c��.Start_Y < 10 Then ��er = "���r_��b ���� fpit  @___  ����������": If ����CK > 99 Then Stop
        
        Case Else: ��er = "System ���r_��b ���� [" + ����$ + "] ������": er (""): If ����CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": ���r_��b = D11
        Case Else:  ���r_��b = D1$
        End Select
        
     End With
    
     If ��er <> "" Then er (""): If ����CK > 99 Then Stop
     End Function

'����������������������������������������������������������������������������������������������
'���� ���r ��              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Function ���r_��_No(������$)
     ��no = 0: ' 0  ���ޖ�������
     For i = 1 To ��_No_Max: If ������$ = ����(i) Then ��no = i: Exit For
         Next i
     If Trim(������$) = "" Then ��no = 0: ' �K�v
     ���r_��_No = ��no
     If ��no > 0 Then Call ���r_��_Get(��no)
     End Function
Sub ���r_��_Get(BNo)
     If ���r_Data_dsk = "" Then Call �y��_Dsk
     Open ���r_Data_dsk + "�y��_���r_��.RAN" For Random As #31 Len = Len(�y�؋��r_��)
     Get #31, BNo, �y�؋��r_��
     Close #31
     End Sub
Function ���r_��(����$)
     D1$ = "***": D11 = 0:
     With �y�؋��r_��
        Select Case UCase(����$)
        Case "����":       D1$ = Trim(.����):   '   ��1
        Case "NO":         D11 = .No: ' Bar No
        Case "BX":         D1$ = F_RAN(.Da_BX): Call ���r_���_ck("*", D1$)
        Case "BY":         D1$ = F_RAN(.Da_BY): Call ���r_���_ck("*", D1$)
        Case "H":          D1$ = F_RAN(.Da_H): Call ���r_���_ck("*", D1$)
        Case "R":          D1$ = F_RAN(.Da_r): Call ���r_���_ck("*", D1$)
        
        Case "C��ސ�":    '���
                           D11 = .C�퐔
        
        Case "C1":         D1$ = F_RAN(.C1):    Call ���r_�S��_ck("*", D1$)
        Case "C2":         D1$ = F_RAN(.C2):    Call ���r_�S��_ck("*", D1$)
        Case "C3":         D1$ = F_RAN(.C3):    Call ���r_�S��_ck("*", D1$)
        Case "C4":         D1$ = F_RAN(.C4):    Call ���r_�S��_ck("*", D1$)
        Case "C5":         D1$ = F_RAN(.C5):    Call ���r_�S��_ck("*", D1$)
        Case "C6":         D1$ = F_RAN(.C6):    Call ���r_�S��_ck("*", D1$)
        
        Case "C1�{��", "C2�{��", "C3�{��", "C4�{��", "C5�{��", "C6�{��":
                               C1n = 0: C2n = 0: C3n = 0: C4n = 0: C5n = 0: C9n = 0
                               For CC = 1 To 4:
                                      Select Case CC
                                      Case 1: D2$ = F_RAN(.CX���1):  Call P_���r_��_���(D2$)
                                      Case 2: D2$ = F_RAN(.CX���2):  Call P_���r_��_���(D2$)
                                      Case 3: D2$ = F_RAN(.CY���1):  Call P_���r_��_���(D2$)
                                      Case 4: D2$ = F_RAN(.CY���2):  Call P_���r_��_���(D2$)
                                      End Select
                               
                                      For ii = 1 To ����_���؎�ސ�
                                      Select Case ����_D���ؔԍ�(ii)
                                      Case 1: C1n = C1n + ����_D���ؖ{��(ii) * 2
                                      Case 2: C2n = C2n + ����_D���ؖ{��(ii) * 2
                                      Case 3: C3n = C3n + ����_D���ؖ{��(ii) * 2
                                      Case 4: C4n = C4n + ����_D���ؖ{��(ii) * 2
                                      Case 5: C5n = C5n + ����_D���ؖ{��(ii) * 2
                                      Case 6: C5n = C5n + ����_D���ؖ{��(ii) * 2
                                      Case Else: C9n = C0n + ����_D���ؖ{��(ii) * 2
                                      End Select
                                      Next ii
                                      Next CC
                                      
                                      Select Case F_RAN(.C�p���)
                                      Case "C1": C1n = C1n + 4
                                      Case "C2": C2n = C2n + 4
                                      Case "C3": C3n = C3n + 4
                                      Case "C4": C4n = C4n + 4
                                      Case "C5": C5n = C5n + 4
                                      Case "C6": C5n = C5n + 4
                                      Case Else: ' C9n = C0n + 4
                                      End Select
        
                                      Select Case UCase(����$)
                                      Case "C1�{��": D11 = C1n: D1$ = F_RAN(.C1):   Call ���r_�S��_ck("*", D1$)
                                      Case "C2�{��": D11 = C2n: D1$ = F_RAN(.C2):   Call ���r_�S��_ck("*", D1$)
                                      Case "C3�{��": D11 = C3n: D1$ = F_RAN(.C3):   Call ���r_�S��_ck("*", D1$)
                                      Case "C4�{��": D11 = C4n: D1$ = F_RAN(.C4):   Call ���r_�S��_ck("*", D1$)
                                      Case "C5�{��": D11 = C5n: D1$ = F_RAN(.C5):   Call ���r_�S��_ck("*", D1$)
                                      Case "C6�{��": D11 = C6n: D1$ = F_RAN(.C6):   Call ���r_�S��_ck("*", D1$)
                                      Case Else: ' C9n = C0n + 4
                                      End Select
        
        
                           '�S��P_���� = P_B2_��("B2-2", �S��_pit$)
                           '����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           ����$ = F9(D11): ����2$ = F9(D11)
                           �S��_��_����$ = "C_ _" + Mid(����$, 2, 1)
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "C" + Mid(����$, 2, 1)
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = D11: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "XPIT�i��":      D11 = .CXpit�i��: '���Xpit�i��
        Case "XPIT_1�i":      D1$ = F_RAN(.CXpit1):  Call ���r_�S��_Pit_ck(D1$)
        Case "XPIT_2�i":      D1$ = F_RAN(.CXpit2):  Call ���r_�S��_Pit_ck(D1$)
        
        Case "YPIT�i��":      D11 = .CYpit�i��: '���Ypit�i��
        Case "YPIT_1�i":      D1$ = F_RAN(.CYpit1):  Call ���r_�S��_Pit_ck(D1$)
        Case "YPIT_2�i":      D1$ = F_RAN(.CYpit2):  Call ���r_�S��_Pit_ck(D1$)
        
        Case "X��ؒi��":     D11 = .CX��ؒi��
        Case "X���_1�i":     D1$ = F_RAN(.CX���1):   Call P_���r_��_���(D1$)
        Case "X���_2�i":     D1$ = F_RAN(.CX���2):   Call P_���r_��_���(D1$)
        
        Case "Y��ؒi��":     D11 = .CY��ؒi��
        Case "Y���_1�i":     D1$ = F_RAN(.CY���1):   Call P_���r_��_���(D1$)
        Case "Y���_2�i":     D1$ = F_RAN(.CY���2):   Call P_���r_��_���(D1$)
        
        Case "X��ؔ��_1�i":  D2$ = F_RAN(.CX���1):   Call P_���r_��_���(D2$):  ��ؔԍ� = ����_���ؔԍ�(1):  D3$ = Fp_���r_��_���(��ؔԍ�)
                              D11 = �S��_SK�ʒu
        
        Case "X��ؔ��_2�i":  D2$ = F_RAN(.CX���2):   Call P_���r_��_���(D2$):  ��ؔԍ� = ����_���ؔԍ�(1):  D3$ = Fp_���r_��_���(��ؔԍ�)
                              D11 = �S��_SK�ʒu
        
        Case "Y��ؔ��_1�i":  D2$ = F_RAN(.CY���1):   Call P_���r_��_���(D2$):  ��ؔԍ� = ����_���ؔԍ�(1):  D3$ = Fp_���r_��_���(��ؔԍ�)
                              D11 = �S��_SK�ʒu
        
        Case "Y��ؔ��_2�i":  D2$ = F_RAN(.CY���2):   Call P_���r_��_���(D2$):  ��ؔԍ� = ����_���ؔԍ�(1):  D3$ = Fp_���r_��_���(��ؔԍ�)
                              D11 = �S��_SK�ʒu
        
        
        Case "�p���":        D1$ = F_RAN(.C�p���):  Call P_���r_��_���(D1$)
        
        Case "�p���_XL":     D11 = .C�p���X
        Case "�p���_YL":     D11 = .C�p���Y
        
        Case "CK":         'CK �� �����̺�Ű�� �ł�
                           D1$ = F_RAN(.CK):    Call ���r_�S��_ck("*", D1$)
                           ���p�x = Calu�p�x(0, 0, �y�؋��r_��.BXR2, �y�؋��r_��.H1)
                           CH���a = �y�؋��r_��.r2 + �S��_SK�ʒu
                           'CK�p�x = �S��_r
                           �S��P_���� = Val(�S��_�a�{��$)
                           Data1$ = �S��_L$ + "+r" + F9(CH���a) + "�x" + F9(90 - ���p�x) + "+" + �S��_L$: Call ���r_�S��_L_ck(Data1$)
                           If �y�؋��r_��.r2 <= 0 Then Data1$ = �S��_L$ + "+�p" + F9(90 - ���p�x) + "+" + �S��_L$: Call ���r_�S��_L_ck(Data1$)
                           
                           LL1 = Val(�S��_L$)
                           �S��L_XL = CH���a - CH���a * Dsin(���p�x) + LL1 * Dcos(���p�x)
                           �S��L_YL = LL1 + CH���a * Dcos(���p�x) + LL1 * Dsin(���p�x)
                           
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "C_ _K"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "CK"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "CKR":         'CK �� �����̺�Ű�� �ł�
                           D1$ = F_RAN(.CK):    Call ���r_�S��_ck("*", D1$)
                           ���p�x = Calu�p�x(0, 0, �y�؋��r_��.BXR2, �y�؋��r_��.H1)
                           CH���a = �y�؋��r_��.r2 + �S��_SK�ʒu
                           'CK�p�x = �S��_r
                           �S��P_���� = Val(�S��_�a�{��$)
                           Data1$ = �S��_L$ + "+r" + F9(CH���a) + "�x" + F9(-90 + ���p�x) + "+" + �S��_L$: Call ���r_�S��_L_ck(Data1$)
                           If �y�؋��r_��.r2 <= 0 Then Data1$ = �S��_L$ + "+�p" + F9(-90 + ���p�x) + "+" + �S��_L$: Call ���r_�S��_L_ck(Data1$)
                           LL1 = Val(�S��_L$)
                           �S��L_XL = CH���a - CH���a * Dsin(���p�x) + LL1 * Dcos(���p�x)
                           �S��L_YL = LL1 + CH���a * Dcos(���p�x) + LL1 * Dsin(���p�x)
                           
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "C_ _K"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
        
        Case "CH1":        '�O��̰��
                           D1$ = F_RAN(.CH1):    Call ���r_�S��_ck("*", D1$)
        
                           X_Hoop_XL = Val(�S��_X$)
                           Call Ddata("x", �S��_Y$, Ds$(), Di(), ni)
                           Y_HOOP_XL = Di(1): Y_Hoop_YL = Di(2)

        Case "�OHOOPX":        '�O�� X̰��
                           D1$ = F_RAN(.CH1):    Call ���r_�S��_ck("*", D1$)
                           Hoop_XL = Val(�S��_X$)
                           Data1$ = "F+" + F9(Hoop_XL) + "+F": Call ���r_�S��_L_ck(Data1$)
                           
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "c_ _1-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "c1-1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "�OHOOPY":        '�O�� Y̰��
                           D1$ = F_RAN(.CH1):    Call ���r_�S��_ck("*", D1$)
                           Call Ddata("X", UCase(�S��_Y$), Ds$(), Di(), ni)
                           Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = .CHoop_r: If Hoop_r < 0 Then Hoop_r = 0
                           
                           Select Case Hoop_r
                           Case 0:    Data1$ = "F+" + F9(Hoop_XL) + "+" + F9(Hoop_YL) + "+" + F9(Hoop_XL) + "+F"
                           Case Else: Data1$ = "F+" + F9(Hoop_XL - Hoop_r) + "+r" + F9(Hoop_r) + "+" + F9(Hoop_YL - 2 * Hoop_r) + "+r" + F9(Hoop_r) + "+" + F9(Hoop_XL - Hoop_r) + "+F":
                           End Select
                           Call ���r_�S��_L_ck(Data1$)
                           
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "c_ _1-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "c1-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        
        Case "��HOOPX_XL":       'X���� ����̰��
                           D3$ = F_RAN(.CHX1):    Call ���r_�S��_ck("*", D3$)
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           D11 = Hoop_XL
        
        Case "��HOOPX_YL":       'X���� ����̰��
                           D3$ = F_RAN(.CHX1):    Call ���r_�S��_ck("*", D3$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$)
                           D11 = Hoop_YL
        
        Case "��HOOPX":       'X���� ����̰�� 1
                           D1$ = F_RAN(.CHX1):    Call ���r_�S��_ck("*", D1$)
                           Hoop�S�،a$ = ���r�S�،a$(1):
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$)
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_B$, r1, r2)
                           Hoop_Y$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_D$, r1, r2)
                           
                           Joint_Type$ = UCase(F_RAN(.CX_1_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "U": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + F9(Hoop_XL)
                           Case "D": Data1$ = Hoop_Y$ + "+" + F9(Hoop_XL) + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           Call ���r_�S��_L_ck(Data1$)
        
                           
                                  '* 2002.11.3
                                  H_Jaji = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H - Stoper�ʒu_H(1)
                                  H_Y1 = Val(�S��_D$) / 2
              
                                  nni = 0
                                  For i2 = 1 To �S��P_����
                                      If �S��P_�ʒu(i2) > H_Jaji Then
                                         If FP_Stoper_Y�ʒu(H_Y1) <> "" Then Exit For
                                         End If
                                      nni = nni + 1
                                      Next i2
              
                           
                           
                           ����$ = F9(nni): ����2$ = F9(2 * nni)
                           �S��_��_����$ = "c_ _2-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "c2-1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * nni: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "��HOOPX-2":       'X���� ����̰�� 2
                         '* 2002.11.3
                                  D1$ = F_RAN(.CHX1):    Call ���r_�S��_ck("*", D1$)
                                  H_Jaji = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H - Stoper�ʒu_H(1)
                                  H_Y1 = Val(�S��_D$) / 2
              
                                  nni = 0
                                  For i2 = 1 To �S��P_����
                                      If �S��P_�ʒu(i2) > H_Jaji Then
                                         If FP_Stoper_Y�ʒu(H_Y1) <> "" Then Exit For
                                         End If
                                      nni = nni + 1
                                      Next i2
                                  nni = �S��P_���� - nni
                           
                           D1$ = F_RAN(.CHX2):    Call ���r_�S��_ck("*", D1$)
                           Hoop�S�،a$ = ���r�S�،a$(1):
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$)
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_B$, r1, r2)
                           Hoop_Y$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_D$, r1, r2)
                           
                           Joint_Type$ = UCase(F_RAN(.CX_2_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "U": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + F9(Hoop_XL)
                           Case "D": Data1$ = Hoop_Y$ + "+" + F9(Hoop_XL) + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           Call ���r_�S��_L_ck(Data1$)
        
                           ����$ = F9(nni): ����2$ = F9(2 * nni)
                           �S��_��_����$ = "c_ _2-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
                           
                           �\����$ = "c2-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * nni: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        
        Case "��HOOPY_XL":       'Y���� ����̰��
                           D3$ = F_RAN(.CHY1):    Call ���r_�S��_ck("*", D3$)
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           D11 = Hoop_XL
        
        Case "��HOOPY_YL":       'Y���� ����̰��
                           D3$ = F_RAN(.CHY1):    Call ���r_�S��_ck("*", D3$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$)
                           D11 = Hoop_YL
        
        Case "��HOOPY":       'Y���� ����̰�� 3-1
                           D1$ = F_RAN(.CHY1):    Call ���r_�S��_ck("*", D1$)
                           ��}Dy = Hoop_Dy * ����}_Scale
                           Hoop�S�،a$ = ���r�S�،a$(1):
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$) + 2 * ��}Dy
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_B$, r1, r2)
                           Hoop_Y$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_D$, r1 - ��}Dy, r2 - ��}Dy)
                           Joint_Type$ = UCase(F_RAN(.CY_1_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
                           Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           
                           Call ���r_�S��_L_ck(Data1$)
        
                           Call ���r_�S��_X�ʒu_ck(�S��_X$)
                           
                           Call P_����YHOOP_n(Hoop_XL, YHn1, YHn2)
                           
                           '����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           ����$ = F9(YHn1): ����2$ = F9(YHn1)
                           �S��_��_����$ = "c_ _3-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "c2-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = YHn1: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "��HOOPY-2":       'Y���� ����̰�� 3-2
                           D1$ = F_RAN(.CHY1):    Call ���r_�S��_ck("*", D1$)
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           Call ���r_�S��_X�ʒu_ck(�S��_X$)
                           Call P_����YHOOP_n(Hoop_XL, YHn1, YHn2)
                           '.... Start
                           D1$ = F_RAN(.CHY2):    Call ���r_�S��_ck("*", D1$)
                           ��}Dy = Hoop_Dy * ����}_Scale
                           Hoop�S�،a$ = ���r�S�،a$(1):
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$) + 2 * ��}Dy
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_B$, r1, r2)
                           Hoop_Y$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_D$, r1 - ��}Dy, r2 - ��}Dy)
                           Joint_Type$ = UCase(F_RAN(.CY_2_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
                           Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           
                           Call ���r_�S��_L_ck(Data1$)
        
                           Call ���r_�S��_X�ʒu_ck(�S��_X$)
                           
                           ����$ = F9(YHn2): ����2$ = F9(YHn2)
                           �S��_��_����$ = "c_ _3-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "c3-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = YHn2: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "��HOOPY-3":       'Y���� ����̰�� 3
                           D1$ = F_RAN(.CHY3):    Call ���r_�S��_ck("*", D1$)
                           ��}Dy = Hoop_Dy * ����}_Scale
                           Hoop�S�،a$ = ���r�S�،a$(1):
                           Hoop_XL = FP_���r_�S��_����(�S��_B$)
                           Hoop_YL = FP_���r_�S��_����(�S��_D$) + 2 * ��}Dy
                           r1 = 0: r2 = 0: Fook$ = "Y"
                           Hoop_X$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_B$, r1, r2)
                           Hoop_Y$ = FP_���r_�S��_Ldata(Hoop�S�،a$, Fook$, �S��_D$, r1 - ��}Dy, r2 - ��}Dy)
                           Joint_Type$ = UCase(F_RAN(.CY_2_Hoop_Jtype))
                           Select Case Joint_Type$
                           Case "L": Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + F9(Hoop_YL) + "+" + Hoop_X$
                           Case "R": Data1$ = F9(Hoop_YL) + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           Case Else: Data1$ = Hoop_Y$ + "+" + Hoop_X$ + "+" + Hoop_Y$ + "+" + Hoop_X$
                           End Select
                           
                           Call ���r_�S��_L_ck(Data1$)
        
                           Call ���r_�S��_X�ʒu_ck(�S��_X$)
                           
                           '����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "c_ _3-3"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = "*n" + "-" + �S��_�a$
                           �S��_��_����3$ = "*n" + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "c3-3"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * nni: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case Else: ��er = "System ���r_�� ���� [" + ����$ + "] ������": er (""): If ����CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": ���r_�� = D11
        Case Else:  ���r_�� = D1$
        End Select
        
     End With
    
     If ��er <> "" Then er (""): If ����CK > 99 Then Stop
     End Function
Function Fp_���r_��_���(No)
     With �y�؋��r_��
        Select Case No
        Case 1:         D1$ = F_RAN(.C1):    Call ���r_�S��_ck("*", D1$): �S��_��_����$ = "C_ _1"
        Case 2:         D1$ = F_RAN(.C2):    Call ���r_�S��_ck("*", D1$): �S��_��_����$ = "C_ _2"
        Case 3:         D1$ = F_RAN(.C3):    Call ���r_�S��_ck("*", D1$): �S��_��_����$ = "C_ _3"
        Case 4:         D1$ = F_RAN(.C4):    Call ���r_�S��_ck("*", D1$): �S��_��_����$ = "C_ _4"
        Case 5:         D1$ = F_RAN(.C5):    Call ���r_�S��_ck("*", D1$): �S��_��_����$ = "C_ _5"
        Case 6:         D1$ = F_RAN(.C6):    Call ���r_�S��_ck("*", D1$): �S��_��_����$ = "C_ _6"
        Case Else: D1$ = "": ��er = "System ���r_�� ���  No>5 ": er (""): If ����CK > 99 Then Stop
        End Select
      End With
      
            �S��_��_����1$ = �S��_�a$
            �S��_��_����2$ = "*-" + �S��_�a$
            �S��_��_����3$ = "*-" + �S��_�a$ + " x ****"
      Fp_���r_��_��� = D1$
      End Function




Function FP_���r_�S��_����(Data1$)
        ' exp     500+J400+800       500+800=1300
        ' r2   �I�_�� r
        Call ���r_�S��_L_ck(Data1$)
        LLL = 0
        For ii = 1 To �S��L_Data��
               Select Case UCase(�S��L_Type$(ii))
               Case "L":   LLL = LLL + �S��L_L(ii)
               Case Else:
               End Select
               Next ii
     FP_���r_�S��_���� = LLL
     End Function


Function FP_���r_�S��_Ldata(�S�،a$, Fook$, Data1$, r1, r2)
        ' Joint ������  L1 * 2 ���g�p����
        ' Fook$="Y"  or ""  Y ̯�������
        ' r1   �n�_�� r
        ' r2   �I�_�� r
        Joint_L = 2 * FP_���r_�S��_Data("L1", �S�،a$)
        Call ���r_�S��_L_ck(Data1$)
        �S��L_L(1) = �S��L_L(1) - r1: If �S��L_L(1) < 0 Then �S��L_L(1) = 0
        �S��L_L(�S��L_Data��) = �S��L_L(�S��L_Data��) - r2: If �S��L_L(�S��L_Data��) < 0 Then �S��L_L(�S��L_Data��) = 0
        D1$ = "":
        For ii = 1 To �S��L_Data��
               Select Case UCase(�S��L_Type$(ii))
               Case "L":   D1$ = D1$ + "+" + F9(�S��L_L(ii)):
               Case "K":   D1$ = D1$ + "+K"
               Case "W":   D1$ = D1$ + "+W"
               Case "J":   Joi_L = �S��L_L(ii): If Joi_L = 0 Then Joi_L = Joint_L
                           Select Case UCase(Fook$)
                           Case "Y":     D1$ = D1$ + "+F+J" + F9(Joi_L) + "+F"
                           Case Else:     D1$ = D1$ + "+J" + F9(Joi_L)
                           End Select
                           �S��L_L(ii + 1) = �S��L_L(ii + 1) + Joi_L
               Case Else:  D1$ = "+1000": ��er = "FP_���r_�S��_Ldata  ���� [" + Data1$ + "] �͎g�p�ł��܂���": If ����CK > 99 Then er (""): Stop
                           Exit For
               End Select
               Next ii
     FP_���r_�S��_Ldata = Mid(D1$, 2)
     End Function

Private Sub P_����YHOOP_n(XL, YHn1, YHn2)

          SToper_Z = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H - Stoper�ʒu_H(1) - �S��_Stoper�J��1
          
              YHn1 = 0: YHn2 = 0
              'XL = ���r_��("��HoopY_XL")
              'D1$ = ���r_��("��HoopY")
              For ii = 1 To �S��P_���� Step 2
                  
                  For i2 = 1 To �S��X�ʒu_���� Step 2
                       CK$ = ""
                       Y0 = �S��P_�ʒu(ii) '+ 15
                       X0 = -�y�؋��r_��.BXL + �S��X�ʒu_�ʒu(i2) - XL / 2
                       If Y0 > SToper_Z Then CK$ = FP_Stoper_X�ʒu(X0) + FP_Stoper_X�ʒu(X0 + XL)
                       Select Case CK$
                       Case "":    YHn1 = YHn1 + 1
                       Case Else:  YHn2 = YHn2 + 1
                       End Select
                        'Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[�M2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  For i2 = 2 To �S��X�ʒu_���� Step 2
                       If ii + 1 > �S��P_���� Then Exit For
                       CK$ = ""
                       Y0 = �S��P_�ʒu(ii + 1) '+ 15
                       X0 = -�y�؋��r_��.BXL + �S��X�ʒu_�ʒu(i2) - XL / 2
                       If Y0 > SToper_Z Then CK$ = FP_Stoper_X�ʒu(X0) + FP_Stoper_X�ʒu(X0 + XL)
                       
                       Select Case CK$
                       Case "":    YHn1 = YHn1 + 1
                       Case Else:  YHn2 = YHn2 + 1
                       End Select
                       
                       'Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[�M2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  Next ii


     End Sub


'����������������������������������������������������������������������������������������������
'���� ���r �į�߰          �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Function ���r_Stoper_No(Stoper����1$)
     StoperNo = 0: ' 0  ���ޖ�������
     For i = 1 To Stoper_No_Max: If Stoper����1$ = Stoper����$(i) Then StoperNo = i: Exit For
         Next i
     If Trim(Stoper����1$) = "" Then StoperNo = 0: ' �K�v
     ���r_Stoper_No = StoperNo
     If StoperNo > 0 Then Call ���r_Stoper_Get(StoperNo)
     End Function
Sub ���r_Stoper_Get(BNo)
     If ���r_Data_dsk = "" Then Call �y��_Dsk
     Open ���r_Data_dsk + "�y��_���r_Stoper.RAN" For Random As #31 Len = Len(�y�؋��r_Stoper)
     Get #31, BNo, �y�؋��r_Stoper
     Close #31
     End Sub
Function ���r_Stoper(����$)
     D1$ = "***": D11 = 0:
     With �y�؋��r_Stoper
        Select Case UCase(����$)
        Case "����":       D1$ = Trim(.����):   '   Stoper1
        Case "NO":         D11 = .No: ' Stoper No
        Case "����":       D1$ = F_RAN(.����): Call ���r_���_ck("*", D1$)
        Case "���":        D1$ = F_RAN(.���): Call ���r_���_ck("*", D1$)
        
        Case "H��ސ�":    '
                           D11 = 0: '1  2  3
                           If F_RAN(.H1) <> "" Then D11 = D11 + 1
                           If F_RAN(.H2) <> "" Then D11 = D11 + 1
                           If F_RAN(.H3) <> "" Then D11 = D11 + 1
        Case "H1":         D1$ = F_RAN(.H1):    Call ���r_�S��_ck("*", D1$): If ��er <> "" And ����CK > 99 Then Stop
                           BB = Val(�S��_B$): HH = Val(�S��_H$)
                           Data1$ = Mid(FP1(HH) + "+�p45" + FP1(BB) + "+�p45" + FP1(HH), 2)
                           Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop

                           Stoper$ = ���r_��("�į�߈ʒu"): If ��er <> "" And ����CK > 99 Then Stop
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_���� * Stoper�ʒu_Data��)
                           �S��_��_����$ = "H_ _1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "H1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_���� * Stoper�ʒu_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "H2":         D1$ = F_RAN(.H2):    Call ���r_�S��_ck("*", D1$): If ��er <> "" And ����CK > 99 Then Stop
                           BB = Val(�S��_B$): HH = Val(�S��_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           Stoper$ = ���r_��("�į�߈ʒu"): If ��er <> "" And ����CK > 99 Then Stop
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_���� * Stoper�ʒu_Data��)
                           �S��_��_����$ = "H_ _2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "H2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_���� * Stoper�ʒu_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "H3":         D1$ = F_RAN(.H3):    Call ���r_�S��_ck("*", D1$): If ��er <> "" And ����CK > 99 Then Stop
                           BB = Val(�S��_B$): HH = Val(�S��_H$)
                           Data1$ = Mid(FP1(HH), 2)
                           Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           Stoper$ = ���r_��("�į�߈ʒu"): If ��er <> "" And ����CK > 99 Then Stop
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_���� * Stoper�ʒu_Data��)
                           �S��_��_����$ = "H_ _3"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
        
        Case "H3*":
                           Stoper$ = ���r_��("�į�߈ʒu"): If ��er <> "" And ����CK > 99 Then Stop
                           Stoper_no = Stoper�ʒu_No(1): Call ���r_Stoper_Get(Stoper_no): ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                           D1$ = ���r_Stoper("H1"): H1_�S�،aD = Val(Mid(�S��_�a$, 2)): H1_YY = Val(�S��_Y$)
                           D1$ = ���r_Stoper("H2"): H2_�S�،aD = Val(Mid(�S��_�a$, 2)): H2_�S��B = Val(�S��_B$): H2_XX = Val(�S��_X$)
                           D1$ = ���r_Stoper("H3"): �S�،a$ = �S��_�a$: �S�،aD = Val(Mid(�S��_�a$, 2)): '�S��B = Val(�S��_B$):   �S��H = Val(�S��_H$): XX = Val(�S��_X$): YY = Val(�S��_Y$)
                              H3_pit = Val(�S��_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                              H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                              �S��P_����2 = H3_nX + 2 * H3_nY + 2
        
                           D1$ = F_RAN(.H3):    Call ���r_�S��_ck("*", D1$)
                           BB = Val(�S��_B$): HH = Val(�S��_H$)
                           Data1$ = Mid(FP1(HH), 2)
                           Call ���r_�S��_L_ck(Data1$)
                           Stoper$ = ���r_��("�į�߈ʒu")
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_���� * Stoper�ʒu_Data��)
                           �S��_��_����$ = "H_ _2"
                           �S��_��_����1$ = �S��_�a$
                           �S��P_���� = �S��P_����2
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_���� * Stoper�ʒu_Data��)
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "H3"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_���� * Stoper�ʒu_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
                           If ��er <> "" And ����CK > 99 Then Stop
        Case Else: ��er = "System ���r_Stoper ���� [" + ����$ + "] ������": er (""): If ����CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": ���r_Stoper = D11
        Case Else:  ���r_Stoper = D1$
        End Select
        
     End With
    
     If ��er <> "" Then er (""): If ����CK > 99 Then Stop
     End Function

'����������������������������������������������������������������������������������������������
'���� ���r �B��              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Function ���r_�B��_No(�B������1$)
     �B��no = 0: ' 0  ���ޖ�������
     For i = 1 To �B��_No_Max: If �B������1$ = �B������$(i) Then �B��no = i: Exit For
         Next i
     If Trim(�B������1$) = "" Then �B��no = 0: ' �K�v
     ���r_�B��_No = �B��no
     If �B��no > 0 Then Call ���r_�B��_Get(�B��no)
     End Function
Sub ���r_�B��_Get(BNo)
     If ���r_Data_dsk = "" Then Call �y��_Dsk
     Open ���r_Data_dsk + "�y��_���r_�B��.RAN" For Random As #31 Len = Len(�y�؋��r_�B��)
     Get #31, BNo, �y�؋��r_�B��
     Close #31
     End Sub
Function ���r_�B��(����$)
     D1$ = "***": D11 = 0:
     With �y�؋��r_�B��
        Select Case UCase(����$)
        Case "����":       D1$ = Trim(.����):   '   �B��1
        Case "NO":         D11 = .No: ' �B�� No
       ' Case "��Ѽ��":     D1$ = F_RAN(.Gomsyu): Call ���r_���_ck("*", D1$)
        Case "BD":         D1$ = F_RAN(.BD): Call ���r_���_ck("*", D1$)
        Case "���":        D1$ = F_RAN(.���): Call ���r_���_ck("*", D1$)
        
        Case "S��":        '
                           D11 = 0: '1  2  3
                           If F_RAN(.S1) <> "" Then D11 = D11 + 1
                           If F_RAN(.S2) <> "" Then D11 = D11 + 1
        Case "S1":         D1$ = F_RAN(.S1):    Call ���r_�S��_ck("*", D1$)
                           BB = Val(�S��_B$): HH = Val(�S��_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call ���r_�S��_L_ck(Data1$)
                         '  �B��$ = ���r_��("�B���ʒu") ' 2003.7.29
                           ����$ = F9(�S��P_���� + 1): ����2$ = F9((�S��P_���� + 1) * �B���ʒu_Data��)
                           �S��_��_����$ = "S_ _1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "S1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = (�S��P_���� + 1) * �B���ʒu_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "S2":         D1$ = F_RAN(.S2):    Call ���r_�S��_ck("*", D1$)
                           BB = Val(�S��_B$): HH = Val(�S��_H$)
                           Data1$ = Mid(FP1(HH) + FP1(BB) + FP1(HH), 2)
                           Call ���r_�S��_L_ck(Data1$)
                        '   �B��$ = ���r_��("�B���ʒu")  ' 2003.7.29
                           ����$ = F9(�S��P_���� + 1): ����2$ = F9((�S��P_���� + 1) * �B���ʒu_Data��)
                           �S��_��_����$ = "S_ _2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_�S��L)
        
                           �\����$ = "S2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = (�S��P_���� + 1) * �B���ʒu_Data��: �\�S��L = �S��L_�S��L
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case Else: ��er = "System ���r_�B�� ���� [" + ����$ + "] ������": er (""): If ����CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": ���r_�B�� = D11
        Case Else:  ���r_�B�� = D1$
        End Select
        
     End With
    
     If ��er <> "" Then er (""): If ����CK > 99 Then Stop
     End Function

'����������������������������������������������������������������������������������������������
'���� ���r ��              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Function ���r_��_No(������$)
     ��No = 0: ' 0  ���ޖ�������
     For i = 1 To ��_No_Max: If ������$ = ����(i) Then ��No = i: Exit For
         Next i
     If Trim(������$) = "" Then ��No = 0: ' �K�v
     ���r_��_No = ��No
     If ��No > 0 Then Call ���r_��_Get(��No)
     End Function
Sub ���r_��_Get(BNo)
     If ���r_Data_dsk = "" Then Call �y��_Dsk
     Open ���r_Data_dsk + "�y��_���r_��.RAN" For Random As #31 Len = Len(�y�؋��r_��)
     Get #31, BNo, �y�؋��r_��
     Close #31
     End Sub
Function ���r_��(����$)
     D1$ = "***": D11 = 0:
     With �y�؋��r_��
                     .BXL2 = .BXL - �y�؋��r_��.BXL: .BXR2 = .BXR - �y�؋��r_��.BXR
                     .BYL2 = .BYL - �y�؋��r_��.BYL: .BYR2 = .BYR - �y�؋��r_��.BYR
        
        Select Case UCase(����$)
        Case "����":       D1$ = Trim(.����):   '   ��1
        Case "NO":         D11 = .No: ' �� No
        Case "BX":         D1$ = F_RAN(.Da_BX): Call ���r_���_ck("*", D1$)
        Case "BY":         D1$ = F_RAN(.Da_BY): Call ���r_���_ck("*", D1$)
        Case "���z":       D1$ = F_RAN(.Da_���z): Call ���r_���_ck("*", D1$)
        Case "R":          D1$ = F_RAN(.Da_r): Call ���r_���_ck("*", D1$)
        Case "R2":         D1$ = F_RAN(.Da_r2): Call ���r_���_ck("*", D1$)
        Case "H":          D1$ = F_RAN(.Da_H): Call ���r_���_ck("*", D1$)
        Case "�į�߈ʒu":  D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
        Case "�B���ʒu":   D1$ = F_RAN(.�B���ʒu): Call ���r_�B���ʒu_ck(D1$)
        
        Case "BR��":       D11 = .BR�퐔:  '1  2  3
        
        Case "BR1", "BR2", "BR3", "BR4": ' ٰ�ߋ�
                           
                           Select Case UCase(����$)
                           Case "BR1":  D1$ = F_RAN(.BR1)
                           Case "BR2":  D1$ = F_RAN(.BR2)
                           Case "BR3":  D1$ = F_RAN(.BR3)
                           Case "BR4":  D1$ = F_RAN(.BR4)
                           End Select
                           
                           If D1$ <> "" Then
                           Call ���r_�S��_ck("*", D1$)
                           
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: RU_d = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� ٰ�ߋ� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 3: RU_B1 = �S��L_L(1): DD2$ = "+" + �S��L_Data$(2): RU_B2 = �S��L_L(2) + �S��L_L(3): ' Joint_L �� ������
                           Case Else: ��er = "���r_�� ���� ٰ�ߋ� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           
                           Ru_r = FP_���r_�S��_Data("r1", ���r�S�،a$(1))
                           RU_d = RU_d - 2 * Ru_r: If RU_d <= 0 Then RU_d = 0
                           RU_B1 = RU_B1 - Ru_r: If RU_B1 <= 0 Then RU_B1 = 0
                           RU_B2 = RU_B2 - Ru_r: If RU_B2 <= 0 Then RU_B2 = 0
        
                           RUr$ = "+r" + F9(Ru_r)
                          '*OLD           Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744          ' ٰ�ߓS��(���) 1  P:�ʒu  �į�߰�̒��S����ٰ�ߓS�ؒ��S
                           Data1$ = Mid(RUr$, 2) + FP1(RU_d) + RUr$ + FP1(RU_B1) + DD2$ + FP1(RU_B2) + RUr$ + FP1(RU_d) + RUr$ + FP1(RU_B1) + DD2$ + FP1(RU_B2)
                           Call ���r_�S��_L_ck(Data1$)
                           '  �S��L_���i��=3
                           ����$ = F9(2 * �S��P_����): ����2$ = F9(2 * 2 * �S��P_����)
                           �S��_��_����$ = "B_ _1-" + Mid(����$, 3)
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           �S��_��_����4$ = �S��_�a$ + " x " + F��2(�S��L_��L(2)):  ' ٰ�ߋ� �̂�
                           
                           �\����$ = "B1-" + Mid(����$, 3)
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * 2 * �S��P_����: �\�S��L = �S��L_��L(2)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           
                           
                           End If
        
        Case "BR1��", "BR2��", "BR3��", "BR4��": ' ٰ�ߋ؉��}
                           
                           Select Case UCase(����$)
                           Case "BR1��":  D1$ = F_RAN(.BR1)
                           Case "BR2��":  D1$ = F_RAN(.BR2)
                           Case "BR3��":  D1$ = F_RAN(.BR3)
                           Case "BR4��":  D1$ = F_RAN(.BR4)
                           End Select
                           
                           If D1$ <> "" Then
                           Call ���r_�S��_ck("*", D1$): If ��er <> "" And ����CK > 99 Then Stop

        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           Select Case �S��L_Data��
                           Case 1: 'RU_B1 = �S��L_L(1): DD2$ = "+" + �S��L_Data$(2): RU_B2 = �S��L_L(2) + �S��L_L(3): ' Joint_L �����@2003.9.18
                                   Data1$ = FP1(�S��L_L(1)) 'Mid(FP1(RU_B1) + DD2$ + FP1(RU_B2), 2) '*************
                           Case 3: RU_B1 = �S��L_L(1): DD2$ = "+" + �S��L_Data$(2): RU_B2 = �S��L_L(2) + �S��L_L(3): ' Joint_L �� ������
                                   Data1$ = Mid(FP1(RU_B1) + DD2$ + FP1(RU_B2), 2)
                           Case Else: ��er = "���r_�� ���� ٰ�ߋ� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           
                           Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           
                           
                           ����$ = F9(2 * �S��P_����): ����2$ = F9(2 * 2 * �S��P_����)
                           �S��_��_����$ = "B_ _1-" + Mid(����$, 3, 1)
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + F9(�S��P_���� * 4) + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           End If
        
        
        Case "BU1":        '����[��
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
                           �S��_��_����$ = "B_ _2_"
        
        
        
        Case "B2-1":  ' ����[��  OLD B6
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
                           �S��P_���� = P_B2_��("B2-1", �S��_pit$)
                           ����$ = F9(2 * �S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _2-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B2-1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        
        Case "B2-2":    ' ����[��  �į�ߊO��   OLD B7
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
        
                           Select Case �S��L_Data��
                           Case 1:    LL1 = �S��L_L(1): Fook1$ = ""
                           Case 3:    LL1 = �S��L_L(2): Fook1$ = "+F"
                           Case Else: ��er = "���r_�� ���� ��S��  [" + ����$ + "] Data��������Ȃ�": If ����CK > 99 Then Stop
                           End Select
                           KLL = (.BX - LL1) / 2: LL2 = Stoper�ʒu_�[�J��X - KLL - �S��_Stoper�J��1
                           Data1$ = Mid(Fook1$ + FP1(LL2) + FP1(�S��_�܋Ȃ�), 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_B2_��("B2-2", �S��_pit$)
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _2-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B2-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        
        Case "B2-2R":    ' ����[��  �į�ߊO��   OLD B7
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
        
                           Select Case �S��L_Data��
                           Case 1:    LL1 = �S��L_L(1): Fook1$ = ""
                           Case 3:    LL1 = �S��L_L(2): Fook1$ = "+F"
                           Case Else: ��er = "���r_�� ���� ��S��  [" + ����$ + "] Data��������Ȃ�": If ����CK > 99 Then Stop
                           End Select
                           KLL = (.BX - LL1) / 2: LL2 = Stoper�ʒu_�[�J��X - KLL - �S��_Stoper�J��1
                           Data1$ = Mid(FP1(�S��_�܋Ȃ�) + FP1(LL2) + Fook1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_B2_��("B2-2", �S��_pit$)
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _2-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
        
        
        
        Case "B2-2����":    ' ����[��  �į�ߊO��  OLD B7
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
        
                           Select Case �S��L_Data��
                           Case 1:    LL1 = �S��L_L(1): Fook1$ = ""
                           Case 3:    LL1 = �S��L_L(2): Fook1$ = "+F"
                           Case Else: ��er = "���r_�� ���� ��S��  [" + ����$ + "] Data��������Ȃ�": If ����CK > 99 Then Stop
                           End Select
                           KLL = (.BX - LL1) / 2: LL2 = Stoper�ʒu_�[�J��X - KLL - �S��_Stoper�J��1
                           Data1$ = Mid(Fook1$ + FP1(LL2), 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_B2_��("B2-2", �S��_pit$)
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _2-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
        Case "B2-3":    ' ����[��  �į�ߓ���  OLD B8
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
        
                           LL2 = Stoper�ʒu_�J��X - 2 * �S��_Stoper�J��1
                           Data1$ = Mid(FP1(�S��_�܋Ȃ�) + FP1(LL2) + FP1(�S��_�܋Ȃ�), 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_B2_��("B2-3", �S��_pit$)
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _2-3"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B2-3"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "B2-3����":    ' ����[��  �į�ߓ���  OLD B8
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BU1):    Call ���r_�S��_ck("*", D1$)
        
                           LL2 = Stoper�ʒu_�J��X - 2 * �S��_Stoper�J��1
                           Data1$ = F9(LL2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_B2_��("B2-3", �S��_pit$)
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _2-3"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
        
        Case "BD1":        '��  ���S��(��������)  B3=D25_@3136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                           D1$ = F_RAN(.BD1):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 2: ������_Y1 = �S��L_L(1): BD_D2 = �S��L_L(2): BD_D3 = 0
                           Case 3: ������_Y1 = �S��L_L(1): BD_D2 = �S��L_L(2): BD_D3 = �S��L_L(3)
                           Case Else: ��er = "���r_�� ���� ���S��(��������) [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           ������_LY = BD_D2 + BD_D3
                           
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 2: ������_X1 = �S��L_L(1): BD_B2 = �S��L_L(2)
                           Case Else: ��er = "���r_�� ���� ���S��(��������) [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           ������_LX = BD_B2
                         
                           ������_X2 = -.BXL + ������_X1: ������_Y2 = ������_Y1 + BD_D2
                           ������_r = �S��_r
                           �p�x1 = Calu�p�x(0, 0, BD_B2, BD_D3):  �p�x2 = (90 + �p�x1) / 2:
                           ������_�p�x = �p�x1
                           Select Case BD_D3
                           Case 0:      C_Y0 = 0: X3 = 0: X4 = 0
                           Case Else:   'AAA1 = BD_D3 / BD_B2:  LLXX = 0
                                        X1 = -BD_B2: Y1 = -BD_D3: Call CALUAB(X1, Y1, 0, 0, ������_r, AA, BB)
                                        C_X0 = -������_r:  C_Y0 = -AA * ������_r + BB
                                        Call CALUP���_(0, 0, X1, Y1, C_X0, C_Y0, X4, Y4):
                           End Select
                           LL2 = Sqr((BD_B2 + X4) ^ 2 + (BD_D3 + Y4) ^ 2)
                           Data1$ = F9(BD_D2 - C_Y0) + "+r" + F9(������_r) + "�x" + F9(90 - �p�x1) + FP1(LL2)
                           If ������_r <= 0 Then Data1$ = F9(BD_D2 - C_Y0) + "+�p" + F9(90 - �p�x1) + FP1(LL2)
                           
                           Call ���r_�S��_L_ck(Data1$)
        
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _3-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B3-1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "BD1R":        '��  ���S��(��������)  B3=D25_@3136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                           D1$ = F_RAN(.BD1):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 2: ������_Y1 = �S��L_L(1): BD_D2 = �S��L_L(2): BD_D3 = 0
                           Case 3: ������_Y1 = �S��L_L(1): BD_D2 = �S��L_L(2): BD_D3 = �S��L_L(3)
                           Case Else: ��er = "���r_�� ���� ���S��(��������) [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           ������_LY = BD_D2 + BD_D3
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 2: ������_X1 = �S��L_L(1): BD_B2 = �S��L_L(2)
                           Case Else: ��er = "���r_�� ���� ���S��(��������) [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           ������_LX = BD_B2
                         
                           ������_X2 = .BXR - ������_X1: ������_Y2 = ������_Y1 + BD_D2
                           ������_r = �S��_r
                           �p�x1 = Calu�p�x(0, 0, BD_B2, BD_D3):  �p�x2 = (90 + �p�x1) / 2:
                           ������_�p�x = �p�x1
                           Select Case BD_D3
                           Case 0:      C_Y0 = 0: X3 = 0: X4 = 0
                           Case Else:   'AAA1 = BD_D3 / BD_B2:  LLXX = 0
                                        X1 = -BD_B2: Y1 = -BD_D3: Call CALUAB(X1, Y1, 0, 0, ������_r, AA, BB)
                                        C_X0 = -������_r:  C_Y0 = -AA * ������_r + BB
                                        Call CALUP���_(0, 0, X1, Y1, C_X0, C_Y0, X4, Y4):
                           End Select
                           LL2 = Sqr((BD_B2 + X4) ^ 2 + (BD_D3 + Y4) ^ 2)
                           
                           'Data1$ = F9(LL2) + "+r" + F9(������_r) + "�x" + F9(90 - �p�x1) + FP1(BD_D2 - C_Y0)
                           Data1$ = F9(BD_D2 - C_Y0) + "+r" + F9(������_r) + "�x" + F9(-90 + �p�x1) + FP1(LL2)
                           If ������_r <= 0 Then Data1$ = F9(BD_D2 - C_Y0) + "+�p" + F9(-90 + �p�x1) + FP1(LL2)
                           
                           Call ���r_�S��_L_ck(Data1$)
                           
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _3-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
        Case "B��1":      ' B4-1   �� ���S��
                           D1$ = F_RAN(.B��1):    Call ���r_�S��_ck("*", D1$)
                           �S��P_����2 = �S��P_���� - P_B42_��
                           
                           D1$ = F_RAN(.B��1):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: B��_D = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ���S�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: B��_B1 = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ���S�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           'B��_r = FP_���r_�S��_Data("r1", ���r�S�،a$(1))
                           B��_r = �S��_r
                           B��_D = B��_D - 2 * B��_r: If B��_D <= 0 Then B��_D = 0
                           B��_B1 = B��_B1 - B��_r: If B��_B1 <= 0 Then B��_B1 = 0
        
                           B��r$ = "": If B��_r > 0 Then B��r$ = "+r" + F9(B��_r)
                           Data1$ = F9(B��_B1) + B��r$ + FP1(B��_D) + B��r$ + FP1(B��_B1)
                           Call ���r_�S��_L_ck(Data1$)
                           '�S��P_���� = �S��P_����2  Err
                           ����$ = F9(�S��P_����2): ����2$ = F9(2 * �S��P_����2)
                           �S��_��_����$ = "B_ _4-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B4-1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����2: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           
        
        
        
        Case "B��2":      ' B4-2    �� ���S�� ������
                           D1$ = F_RAN(.B��1):    Call ���r_�S��_ck("*", D1$)
                           �S��P_����2 = P_B42_��
                           
                           D1$ = F_RAN(.B��2): If D1$ = "" Then Exit Function  ' ��� 2003.8.30
                           Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: B��_D = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ���S�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: B��_B1 = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ���S�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           'B��_r = FP_���r_�S��_Data("r1", ���r�S�،a$(1))
                           B��_r = �S��_r
                           B��_D = B��_D - 2 * B��_r: If B��_D <= 0 Then B��_D = 0
                           B��_B1 = B��_B1 - B��_r: If B��_B1 <= 0 Then B��_B1 = 0
                           B��_BB$ = �S��_B$
                           
                           B��r$ = "": If B��_r > 0 Then B��r$ = "+r" + F9(B��_r)
                          ' Data1$ = F9(B��_B1) + B��r$ + FP1(B��_D) + B��r$ + FP1(B��_B1)
                           Data1$ = B��_BB$ + B��r$ + FP1(B��_D) + B��r$ + "+" + B��_BB$
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = �S��P_����2
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _4-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B4-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           If InStr(�S��_B$, "�`") > 0 Then �\�S�ؓK�p$ = "(���ϒ�)"
        
        
        Case "BS1", "B01":      '�� �����ׯ��  B01=D22_K98_B1618_H2292+F_r160        ' �����ׯ��  Y�� �Ώۍl��
                           D1$ = F_RAN(.BS1):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BBS_D$ = �S��L_Data$(1): BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BBS_D$ = �S��L_Data$(1): BS_D = �S��L_L(1): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� �����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_B = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� �����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           BS_r = �S��_r
                           BS_D2 = BS_D - BS_r: If BS_D2 <= 0 Then BS_D2 = 0
                           BS_B2 = BS_B - BS_r: If BS_B2 <= 0 Then BS_B2 = 0
        
                           If InStr(BBS_D$, "�`") = 0 Then
                               BBS_D2$ = FP1(BS_D2)
                               Else
                               ni = InStr(BBS_D$, "�`")
                               BSL1 = Val(BBS_D$) - BS_r
                               BSL2 = Val(Mid(BBS_D$, ni + 1)) - BS_r
                               BBS_D2$ = "+" + f0(BSL1) + "�`" + f0(BSL2)
                               End If
                           
                           
                           BSr$ = "+r" + F9(BS_r)
                           Select Case BS_r
                           Case 0:  Data1$ = Fook1$ + "+" + BBS_D$ + FP1(BS_B) + "+" + BBS_D$ + Fook2$
                           Case Else:  Data1$ = Fook1$ + "+" + BBS_D$ + FP1(BS_B2) + BSr$ + BBS_D2$ + Fook2$
                           End Select
                           
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_Spit��("B01")
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_0_1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B01"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
                           If InStr(�S��_D$, "�`") > 0 Then �\�S�ؓK�p$ = "(���ϒ�)"
                           
        
        
        Case "BS1R", "B01R":      '�� �����ׯ��  ��ް�  B01=D22_K98_B1618_H2292+F_r160        ' �����ׯ��  Y�� �Ώۍl��
                           D1$ = F_RAN(.BS1):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(1): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� �����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_B = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� �����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           BS_r = �S��_r
                           BS_D2 = BS_D - BS_r: If BS_D2 <= 0 Then BS_D2 = 0
                           BS_B2 = BS_B - BS_r: If BS_B2 <= 0 Then BS_B2 = 0
        
                           BSr$ = "+r" + F9(BS_r)
                           Select Case BS_r
                           Case 0:  Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Case Else:  Data1$ = Fook1$ + FP1(BS_D2) + BSr$ + FP1(BS_B2) + FP1(BS_D) + Fook2$
                           End Select
                           
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_Spit��("B01")
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           
                           �S��_��_����$ = "B_0_1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
        
        Case "BS2", "B02":       '�� ��[ ����  ���ׯ��   B02=D22_K98_B1618_HF+440              ' ����ׯ��  Y�� �Ώۍl��
                           D1$ = F_RAN(.BS2):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_B = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_Spit��("B02")
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_0_2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B02"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "B03":      '�� �����ׯ��  �į�ߊO��  B01=D22_K98_B1618_H2292+F_r160        ' �����ׯ��  Y�� �Ώۍl��
                           D1$ = F_RAN(.BS2):    Call ���r_�S��_ck("*", D1$)
                           KLL = �S��_SK�ʒu
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_B = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           
                           BS_B = Stoper�ʒu_�[�J��Y - KLL - �S��_Stoper�J��2
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_Spit��("B03")
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_0_3"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B03"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "B04":      '�� �����ׯ��  �į�ߓ���  B01=D22_K98_B1618_H2292+F_r160        ' �����ׯ��  Y�� �Ώۍl��
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BS2):    Call ���r_�S��_ck("*", D1$)
                           KLL = �S��_SK�ʒu
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           
                           BS_B = Stoper�ʒu_�J��Y - 2 * �S��_Stoper�J��2
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
        
                           �S��P_���� = P_Spit��("B04")
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_����)
                           �S��_��_����$ = "B_0_4"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B04"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "BS3", "B5-1":       '����[ ������ׯ��  B03=D16_K98_B2776_H500                ' ������ׯ��
                           D1$ = F_RAN(.BS3):    Call ���r_�S��_ck("*", D1$)
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_B = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
        
                           �S��P_���� = P_Spit��("B5-1")
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_����)
                           �S��_��_����$ = "B_ _5-1"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B5-1"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "B5-2":       '����[ ������ׯ��   �į�ߊO�� B03=D16_K98_B2776_H500                ' ������ׯ��
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$): If ��er <> "" And ����CK > 99 Then Stop
                           D1$ = F_RAN(.BS3):    Call ���r_�S��_ck("*", D1$): If ��er <> "" And ����CK > 99 Then Stop
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(2): Fook1$ = ";F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           Data1$ = �S��_B$: Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           Select Case �S��L_Data��
                           Case 1: BS_B = �S��L_L(1)
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
                           KLL = (.BY - BS_B) / 2
                           BS_B = Stoper�ʒu_�[�J��Y - KLL - �S��_Stoper�J��1
                           
                           If BS_B <= 0 Then BS_B = 99  '***** ????? ####
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$): If ��er <> "" And ����CK > 99 Then Stop
                           �S��P_���� = P_Spit��("B5-2")
                           ����$ = F9(�S��P_����): ����2$ = F9(2 * �S��P_����)
                           �S��_��_����$ = "B_ _5-2"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B5-2"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = 2 * �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        
        Case "B5-3":       '����[ ������ׯ��   �į�ߓ��� B03=D16_K98_B2776_H500                ' ������ׯ��
                           D1$ = F_RAN(.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
                           D1$ = F_RAN(.BS3):    Call ���r_�S��_ck("*", D1$)
                           Data1$ = �S��_D$: Call ���r_�S��_L_ck(Data1$)
                           Select Case �S��L_Data��
                           Case 1: BS_D = �S��L_L(1): Fook1$ = "": Fook2$ = ""
                           Case 2: BS_D = �S��L_L(2): Fook1$ = "+F": Fook2$ = "+F"
                           Case Else: ��er = "���r_�� ���� �� ����ׯ�� [" + ����$ + "] Data��������Ȃ�":  If ����CK > 99 Then Stop
                           End Select
        
                           BS_B = Stoper�ʒu_�J��Y - 2 * �S��_Stoper�J��1
                           
                           Data1$ = Fook1$ + FP1(BS_D) + FP1(BS_B) + FP1(BS_D) + Fook2$
                           Data1$ = Mid(Data1$, 2)
                           Call ���r_�S��_L_ck(Data1$)
                           �S��P_���� = P_Spit��("B5-3")
                           ����$ = F9(�S��P_����): ����2$ = F9(�S��P_����)
                           �S��_��_����$ = "B_ _5-3"
                           �S��_��_����1$ = �S��_�a$
                           �S��_��_����2$ = ����$ + "-" + �S��_�a$
                           �S��_��_����3$ = ����2$ + "-" + �S��_�a$ + " x " + F��2(�S��L_��L(1) + �S��L_��L(3))
                           
                           �\����$ = "B5-3"
                           �\�S�،a$ = �S��_�a$: �\�S�ؖ{�� = �S��P_����: �\�S��L = �S��L_��L(1) + �S��L_��L(3)
                           �\�S�ؓK�p$ = "": �\�S�؍ގ�$ = �S��_���$
                           �\�S��W�ӏ� = �\�S�ؖ{�� * �S��L_W��: �\�S��K�ӏ� = �\�S�ؖ{�� * �S��L_K��
        
        Case "SPIT":       'Spit=500+13x150+23x200+13x150
                           D1$ = F_RAN(.BSpit): Call ���r_�S��_Pit_ck(D1$)
        
        Case Else: ��er = "System ���r_�� ���� [" + ����$ + "] ������": er (""): If ����CK > 99 Then Stop
        End Select
     
        
        Select Case D1$
        Case "***": ���r_�� = D11
        Case Else:  ���r_�� = D1$
        End Select
        
     End With
    
     If ��er <> "" Then er (""): If ����CK > 99 Then Stop
     End Function
Function P_Spit��(����$)
     '���ׯ�߂̌�  B01,B02,B03,B04  B5
      D1$ = F_RAN(�y�؋��r_��.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
      D1$ = F_RAN(�y�؋��r_��.BSpit): Call ���r_�S��_Pit_ck(D1$)
        ���ʒu�� = 0: ��Stoper�ʒu�� = 0
        ���ʒu�� = 0: ��Stoper�ʒu�� = 0
        
        For ii = 1 To �S��P_����
           X00 = -�y�؋��r_��.BXL + �S��P_�ʒu(ii)
           Select Case X00
           Case Is < -�y�؋��r_��.BXL:  ���ʒu�� = ���ʒu�� + 1
                             If FP_Stoper_X�ʒu(X00) <> "" Then ��Stoper�ʒu�� = ��Stoper�ʒu�� + 1
           
           Case Is <= �y�؋��r_��.BXR:   ���ʒu�� = ���ʒu�� + 1
                             If FP_Stoper_X�ʒu(X00) <> "" Then ��Stoper�ʒu�� = ��Stoper�ʒu�� + 1
           
           Case Else:
           End Select
           Next ii

      Select Case ����$
      Case "B01":   P_Spit�� = 2 * ���ʒu��
      Case "B02":   P_Spit�� = 2 * (���ʒu�� - ��Stoper�ʒu��)
      Case "B03":   P_Spit�� = 2 * ��Stoper�ʒu��
      Case "B04":   P_Spit�� = 2 * ��Stoper�ʒu��

      Case "B5-1":   P_Spit�� = (���ʒu�� - ��Stoper�ʒu��)
      Case "B5-2":   P_Spit�� = ��Stoper�ʒu��
      Case "B5-3":   P_Spit�� = ��Stoper�ʒu��

      Case Else: P_Spit�� = 0
      End Select

    End Function

Function P_B2_��(����$, Bpit$)
     ' B2-1, B2-2, B2-3 �̌�
      D1$ = F_RAN(�y�؋��r_��.Stoper�ʒu): Call ���r_Stoper�ʒu_ck(D1$)
      D1$ = Bpit$: Call ���r_�S��_Pit_ck(D1$)
        B2_1�� = 0: B2_2�� = 0
        
        For ii = 1 To �S��P_����
           Y00 = -�y�؋��r_��.BYL + �S��P_�ʒu(ii)
           If FP_Stoper_Y�ʒu(Y00) <> "" Then B2_2�� = B2_2�� + 1
           Next ii

      Select Case ����$
      Case "B2-1":   P_B2_�� = �S��P_���� - B2_2��
      Case "B2-2":   P_B2_�� = 2 * B2_2��
      Case "B2-3":
                     NN1 = (Stoper�ʒu_Data�� / 2) - 1
                     P_B2_�� = B2_2�� * NN1
      Case Else: P_B2_�� = 0
      End Select

    End Function

Function P_B42_��()
    '[[[   ���S��  ]]]
       P_B42_�� = 0
          '    D1$ = ���r_��("B��1")
               
               �����11 = �S��_SK�ʒu
               �����p�x11 = Calu�p�x(0, 0, �y�؋��r_��.BXL2, �y�؋��r_��.H1)
               Y_CK11 = -�y�؋��r_��.H + �y�؋��r_��.H1 + �����11 / Dcos(�����p�x11)
               'AA1 = �������z: BB1 = Y_CK
              For ii = 1 To �S��P_����: Y1 = -�S��P_�ʒu(ii)
                       If Y1 < Y_CK11 Then P_B42_�� = P_B42_�� + 1
                       Next ii
    

      End Function



'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�y�؋��r       ��}�@Data Control �@�@�@  �@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@   New�@2003.9.1�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������

Public Sub �y��_���r_�}Data_Read(Temp$)

     
     EMS0 = "�y�؋��r �}Data Read": EMS1 = "": EMS2 = ""
       
       
             If �Y_No_Max = 0 Then ��er = "�Y�ް���̓��͂��L��܂���":   If ����CK > 99 Then Stop
             If ��b_No_Max = 0 Then ��er = "��b�ް���̓��͂��L��܂���":   If ����CK > 99 Then Stop
             If ��_No_Max = 0 Then ��er = "���ް���̓��͂��L��܂���":   If ����CK > 99 Then Stop
             If Stoper_No_Max = 0 Then ��er = "�į�� �ް���̓��͂��L��܂���":   If ����CK > 99 Then Stop
             If �B��_No_Max = 0 Then ��er = "�B���ް���̓��͂��L��܂���":   If ����CK > 99 Then Stop
             If ��_No_Max = 0 Then ��er = "���ް���̓��͂��L��܂���":   If ����CK > 99 Then Stop
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     
        �}_�Y_No = 1: �}_��b_No = 1: �}_��_No = 1:  �}_��_No = 1
       
        ���r�}_��{�ݒ萔 = 0
     
     Open Temp$ For Input As #2
       
     Do
           If INP$ <> "N" Then Line Input #2, Da$
           INP$ = ""
     
            Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
        Select Case UCase$(����2s$)
        Case "/END": Exit Do
        Case "**": er (����3s$): ' User ����
        Case "*": ' ���ā@�@�@exp  *����
        
        Case "/��{�ݒ�":    Call �y��_���r_��{�ݒ�(Da$): INP$ = "N"
        Case "/�p��":        Call �y��_���r_�p��(Da$):
        Case "/�g":          Call �y��_���r_�g(Da$): INP$ = "N"
        
        Case "/���_�\��":              ���r���_�\��$ = "Y"
        Case "/LAYER":
        
        Case "/DXF":         Call �y��_���r_DXF(Da$): INP$ = "N"
     
        Case Else: ��er = "����ވʒu���(" + Da$ + ")�� �����ł��܂���":  If ����CK > 99 Then Stop
        End Select
        
        If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
        
     Loop
    
     Close #2
    
    
     End Sub


Sub �y��_���r_�p��(Da$)
     Line Input #2, Da$
     End Sub
'����������������������������������������������������������������������������������������������
'���� �y��_���r_�g  Resd     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub �y��_���r_�g(Da$)
     �}�ʘgData_max = 0
     Do: If EOF(2) Then Da$ = "/END": Exit Do
          Line Input #2, Da$:     If Mid(Da$, 1, 1) <> "[" Then Exit Do
          
          �}�ʘgData_max = �}�ʘgData_max + 1
          �}�ʘgData$(�}�ʘgData_max) = Da$
          If �}�ʘgData_max > 1000 Then ��er = "�}�ʘg Data�� >1000 ": If ����CK > 99 Then Stop: Exit Do Else Exit Do
          Loop
     End Sub
'����������������������������������������������������������������������������������������������
'���� �y��_���r_�g��}       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub �y��_���r_�g��}()

     If �}�ʘgData_max = 0 Then Exit Sub
     'Call PROTER�����l: Call D���C���ԍ�(���C���ԍ�)
     For ii = 1 To �}�ʘgData_max
         Da$ = �}�ʘgData$(ii)
         ni = InStr(Da$, "?")
         If ni > 0 Then
             Do
             ni1 = InStr(Da$, "?�}��?"):   If ni1 > 0 Then Da$ = Mid$(Da$, 1, ni1 - 1) + �}_����$ + Mid$(Da$, ni1 + 4)
             ni2 = InStr(Da$, "?�}��?"):   If ni2 > 0 Then Da$ = Mid$(Da$, 1, ni2 - 1) + �}�ԍ�$ + Mid$(Da$, ni2 + 4)
             ni3 = InStr(Da$, "?�k��?"):   If ni3 > 0 Then Da$ = Mid$(Da$, 1, ni3 - 1) + �k��$ + Mid$(Da$, ni3 + 4)
             If ni1 + ni2 + ni3 = 0 Then Exit Do
             Loop
             End If
         Print #60, Da$
         Next ii
     
     End Sub



'����������������������������������������������������������������������������������������������
'���� �y��_���r_��{�ݒ�     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub �y��_���r_��{�ݒ�(Da$)
   
    EMS1 = "��}Data  ��{�ݒ�"
   
     Do
                 Line Input #2, Da$
     
                 Call INP����3(Da$, ����s$, ����2s$, ����3s$)
             
             Select Case UCase$(����s$)
             Case "/", ".": Exit Do
             Case "**": er (����3s$): ' User ����
             Case "*": ' ���ā@�@�@exp  *����
             'Case "���[��=":   '  Print #60, "[��{�ݒ�:" + Da$ + "]"
             'Case "���@Msize":  '   Print #60, "[��{�ݒ�:" + Da$ + "]"
             Case "�p��=":
                       Select Case ����3s$
                       Case "A3": �y��_���r_�p��size$ = "A3"
                       Case "A2": �y��_���r_�p��size$ = "A2"
                       Case "A1": �y��_���r_�p��size$ = "A1"
                       Case Else: ��er = "  �p��size���(" + Da$ + ")�� �݂�܂���": If ����CK > 99 Then Stop
                       End Select
             
             
             Case Else:  ���r�}_��{�ݒ萔 = ���r�}_��{�ݒ萔 + 1
                         ���r�}_��{�ݒ�$(���r�}_��{�ݒ萔) = Da$
             
             End Select
             
             If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
             Loop
    
    
    End Sub


'����������������������������������������������������������������������������������������������
'���� �y��_���r_Dxf  ��}    �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub �y��_���r_DXF(Da$)
     Dxf_No = Dxf_No + 1
     ���r_�}�`����$ = ""
     
     EMS1 = "��}Data  Dxf no=" + F9(Dxf_No) + "  "
     
     Line Input #2, �y��_���r_DXF_F��$: EMS1 = "��}Data  " + �y��_���r_DXF_F��$ + "  "

                Call �}������(�}_����$, �k��$, �}��{_Scale, �}�ԍ�$): If ��er <> "" Then ��er = �}_����$ + ��er: er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
                EMS1 = EMS1 + �}_����$
                
                Call �}_File_��(�y��_���r_DXF_F��$, Input_F$, Output_F$)
                �ϊ�type$ = "Dxf": Data_Type$ = "Ploter": �p��size$ = "A1"
                Call �}_File_Start(Input_F$, �ϊ�type$, Data_Type$, �p��size$, �}��{_Scale, ���r_LAYER_N, ���r_layer$())
                ����}_Scale = �}��{_Scale


                For ii = 1 To ���r�}_��{�ݒ萔:    Print #60, "[��{�ݒ�:" + ���r�}_��{�ݒ�(ii) + "]":             Next ii
                
                
                Print #60, "[�:�}�g]"
                
                Call �y��_���r_�g��}
                
                Print #60, "[Msize���@:" + FD1(�}_���@_Msize) + "]"
                Print #60, "[�F���@:��]"
                Print #60, "[ڐ��@:���@��]"
                Print #60, "[�:" + ���r_layer$(13) + "]"

     Do
                If INP$ <> "N" Then Line Input #2, Da$
                INP$ = ""
     
                 Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
             Select Case ����s$
             Case "/": Exit Do
             Case "**": er (����3s$): ' User ����
             Case "*": ' ���ā@�@�@exp  *����
             
             
             
             Case "���_=":        Call Ddata(",", ����3s$, Ds$(), Di(), ni)
                                  If ni <> 2 Then ��er = " ���_=X0,Y0 �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                                  ���_X = Di(1): ���_Y = Di(2)
                                  Call �}_���_(���_X, ���_Y)
                                  ����}_Scale = �}��{_Scale
             
             Case "S=", "s=":     Print #60, "[Scale���:" + Mid(����3s$, 3) + "]"
                                  ����}_Scale = Val(Mid(����3s$, 3))
                                    If ����}_Scale <= 0 Then ��er = " S=1/___ �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                                    '       Case "Scaleؾ��":   Sub_�}_Scale = ZU_Scale

             Case "�}�`����=":    ���r_�}�`����$ = ����3s$
                                  Select Case ���r_�}�`����$
                                  Case "�Y", "��b", "��", "�B��", "��":
                                  Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                                  End Select
        
             Case ".":      Call �y��_���r_��}(���r_�}�`����$, Da$)
        
             
             '[[[ ��{�ݒ� ]]]
             Case "���@�[��=":     Print #60, "[��{�ݒ�:" + Da$ + "]"
             Case "���@Msize=":     Print #60, "[��{�ݒ�:" + Da$ + "]"
             Case Else: ��er = "DXF ����ވʒu���(" + Da$ + ")�� �����ł��܂���":   If ����CK > 99 Then Stop
             End Select
     
             If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     
             Loop

     Close #60: ' Call �}_File_Start �Ł@OPEN
     Call UXF_�ϊ�(Input_F$, Output_F$): ' Uxf ---> Dxf
     
     
     End Sub



'����������������������������������������������������������������������������������������������
'���� �y��_���r_��}(Da$)    �@�@### �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub �y��_���r_��}(���r_�}�`����$, Da$)
     �i����$ = Mid(Da$, 2)
     EMS2 = "��}  [" + ���r_�}�`����$ + "]"
     
     
           Call ���r_�Y_Get(�}_�Y_No)
           Call ���r_��b_Get(�}_��b_No)
           Call ���r_��_Get(�}_��_No)
           Call ���r_��_Get(�}_��_No)
     
     
      'Print #60, "[Msize:2.5]"
      Print #60, "[�F:��]\[con:]"
     
     Select Case ���r_�}�`����$
     Case "�Y"
                   Select Case �i����$
                   Case "�z�ؐ}":           Call P_�Y_�z�ؐ}
                   Case "K1":               Call P_�Y_K1(�i����$)
                   Case "K2":               Call P_�Y_K1(�i����$)
                   Case "�f��a-a":          Call P_�Y_�f��A
                   Case "�f��a-a�z�ؐ}":    Call P_�Y_�f��A�z�ؐ}
                   Case "�f��b-b":          Call P_�Y_�f��B
                   Case "�f��b-b�z�ؐ}":    Call P_�Y_�f��B�z�ؐ}
                   Case "K01":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�Y_Hoop("�g����")
                   Case "K02":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�Y_Hoop��: '("KH2")
                   Case "K03":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�Y_Hoop("HOOP1")
                   Case "K04":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�Y_Hoop("HOOP2")
                   Case "K05":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�Y_Hoop("HOOP3")
                   Case "�ѓS�،p��ڍא}": Call P_�Y_�ѓS�،p��ڍא}
                   Case "��߰���ڍא}":     Call P_�Y_�X�y�[�T�[�ڍא}
                   Case "���Ԃ�ڍא}":     Call P_�Y_���Ԃ�ڍא}
                   Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                   End Select
     
     Case "��b"
                   Select Case �i����$
                   Case "�z�ؐ}":           Call P_��b_�z�ؐ}
                   Case "�f��a-a":          Call P_��b_�f��A
                   Case "�f��b-b":          Call P_��b_�f��B
                   Case "F1":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F1
                   Case "F2":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F2
                   Case "F3":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F3
                   Case "f1":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_sf1
                   Case "f2":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_sf2
                   Case "f3":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_sf3
                   Case "F11":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F11
                   Case "F12":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F12
                   Case "F13":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F13
                   Case "F14":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��b_F14
                   Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                   End Select
     
     Case "�B��"
                   Select Case �i����$
                   Case "�f��A-A":          Call �B��_�f��A_A
                   Case "�f��B-C":          Call �B��_�f��BC
                   Case "�f��D-D":          Call P_�B��_�f��D
                   Case "�f��H-H":          Call P_�B��_�f��H
                   Case "�f��E-E":          Call P_�B��_�f��E
                   Case "�f��F-G":          Call P_�B��_�f��FG
                   Case "�����k���ُڍא}": Call P_�B��_�����k�����^���ڍא}
                   Case "S1":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�B��_S1
                   Case "S2":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�B��_S2
                   Case "H1":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�B��_H1
                   Case "H2":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�B��_H2
                   Case "H3":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_�B��_H3
                   Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                   End Select
     
     Case "��"
                   Select Case �i����$
                   Case "�f��A-B":          Call P_��_�f��AB
                   Case "�f��C-D":          Call P_��_�f��CD
                   Case "�f��a-a":          Call P_��_�f��AA
                   Case "�f��b-b":          Call P_��_�f��BB
                   Case "�f��b-b�S�ؔz�ؐ}":          Call P_��_�f��BB�S�ؔz�ؐ}
                   Case "C1":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_Cn(�i����$)
                   Case "C2":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_Cn(�i����$)
                   Case "C3":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_Cn(�i����$)
                   Case "C4":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_Cn(�i����$)
                   Case "C5":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_Cn(�i����$)
                   Case "C6":               Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_Cn(�i����$)
                   Case "CK":               Print #60, "[�F:��]\[�:�S�؉��H�}]": Call P_��_CK: '  Call P_��_C5
                   
                   Case "c1-X":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c1_X
                   Case "c1-Y":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c1_Y
                   
                   Case "c2-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c2_1
                   Case "c2-2":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c2_2
                   
                   Case "c3-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c3_1
                   Case "c3-2":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c3_2
                   Case "c3-3":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_c3_3
                   
                   Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                   End Select
     
     
     
     
     Case "��"
                   
                   Select Case �i����$
                   Case "�f��A-A":          Call P_��_�f��a
                   Case "�f��B-B":          Call P_��_�f��B
                   Case "�f��C-C":          Call P_��_�f��C
                   Case "�f��a-a":          Call P_��_�f��sa
                   Case "�f��a-a�S�ؔz�ؐ}": Call P_��_�f��sa�S�ؔz�ؐ}
                   
                   Case "B1-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B1("BR1")
                   Case "B1-2":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B1("BR2")
                   
                   Case "B2-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B2_1
                   Case "B2-2":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B2_2
                   Case "B2-3":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B2_3
                   
                   Case "B3-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B3_1
                   Case "B4-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B4_1
                   Case "B4-2":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B4_2
                   Case "B5-1":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B5_1
                   Case "B5-2":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B5_2
                   Case "B5-3":             Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B5_3
                   Case "B01":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B01
                   Case "B02":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B02
                   Case "B03":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B03
                   Case "B04":              Print #60, "[�F:��]\[�:�S�؉��H�}]":  Call P_��_B04
                   Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                   End Select
     
     Case Else: ��er = " �}�`���� �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
     End Select

     If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     End Sub

'����������������������������������������������������������������������������������������������
'���� �Y         ��}                  �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������

Sub P_�Y_�z�ؐ}()
           ReDim Dss$(50), ���No(500) As Integer
           ReDim �g���؈ʒu(40) As Integer
           ReDim ���Y�ʒu(200) As Single
           ReDim Hoop_X(900) As Single
           ReDim Xpit(900) As Single, Ypit(900) As Single
           
            ReDim �\��X_�ʒu(905) As Single
           
           
           'Print #60, UXF_�_()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
      
      
     With �y�؋��r_�Y
      
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit: Mark_D3 = Mark_D2 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �Y��� ]]]
            D1$ = ���r_�Y("D"):  �YD = ���_D(1)
            D1$ = ���r_�Y("L"):  �YL = ���_D(1)

            Print #60, "   " + Uxf_P(0, �YD / 2) + "\" + Uxf_��(�YL, 0) + "\" + Uxf_��(0, -�YD) + "\" + Uxf_��(-�YL, 0)
      
      '[[[ ��b��� ]]]
            Print #60, "[�F:��]\[�:���]"
            HU = �y�؋��r_��b.H_U
            HD = �y�؋��r_��b.H_D
            BYL = �y�؋��r_��b.BYL
            KX1 = Abs(�Y�ʒu_X(1)): KY1 = Abs(�Y�ʒu_Y(1))
            
            X1 = -HU - HD: X2 = -HD: X3 = 0
            Y1 = -�YD
            Y3 = BYL - KY1
            Print #60, "[P:" + FD2(X3, Y1) + "]\[L:" + FD2(0, -Y1 - �YD / 2) + "]\[p:" + FD2(0, �YD) + "]"
            Print #60, "[L:" + FD2(0, Y3 - �YD / 2) + "|" + FD2(-HD, 0) + "|" + FD2(-HU, -(Y3 - Y1)) + "]"
              
              Print #60, "[�ؒfM1:" + FD6(X1, Y1, X3, Y1, 5, 3) + "]"
            
            

      
      
      
      '[[[ �\��X ���W  ]]]
              ��_LL = 10 * ����}_Scale
                D1$ = ���r_�Y("K1")
                �S�ؒ蒅 = �S��_S�蒅: �S�؃�L = �S��L_�S��L
            
            Hoop$ = ���r_�Y("HOOP"): n9 = �S��P_����: �g����n = 0
                   �\��X_E�� = �S��P_����
                   For ii = 1 To �S��P_����
                        If ���r_�S��_Mark$(ii) = "*" Then �g����n = �g����n + 1: �g���؈ʒu(�g����n) = ii
                        �\��X_�ʒu(ii) = �S��P_�ʒu(ii) + �S��_Z�ʒu
                        Next ii
                   If �g����n < 3 Then �g����n = 3
                   ni1 = Int((�g���؈ʒu(1) + �g���؈ʒu(2)) / 2)
                   �\��X_�g���� = (�S��P_�ʒu(ni1) + �S��P_�ʒu(ni1 + 1)) / 2 + �S��_Z�ʒu
    
                   �\��X_Hoop1 = �\��X_�g����
                   
                   ni2 = Int(�g���؈ʒu(�g����n - 2) + 0.3 * (�g���؈ʒu(�g����n - 1) - �g���؈ʒu(�g����n - 2)))
                   �\��X_Hoop2 = (�S��P_�ʒu(ni2) + �S��P_�ʒu(ni2 + 1)) / 2 + �S��_Z�ʒu
    
                   ni3 = Int(�g���؈ʒu(2) + 0.6 * (�g���؈ʒu(3) - �g���؈ʒu(2)))
                   �\��X_K1 = ni3: '(�S��P_�ʒu(ni3) + �S��P_�ʒu(ni3 + 1)) / 2 + �S��_Z�ʒu
    
                   ni5 = Int(�g���؈ʒu(�g����n - 2) + 0.6 * (�g���؈ʒu(�g����n - 1) - �g���؈ʒu(�g����n - 2)))
                   �\��X_K3 = ni5: ' (�S��P_�ʒu(ni5) + �S��P_�ʒu(ni5 + 1)) / 2 + �S��_Z�ʒu
    
                   ni6 = �g���؈ʒu(1)
                   �\��X_AA�f�� = (�S��P_�ʒu(ni6) + �S��P_�ʒu(ni6 - 1)) / 2 + �S��_Z�ʒu
                   
                   �\��X_bb�f�� = (�S��P_�ʒu(n9 - 1) + �S��P_�ʒu(n9)) / 2 + �S��_Z�ʒu
    
      '[[[ �\��Y ���W  ]]]
             ' ��_LL = 20 * ����}_Scale
              
                  ��؎�ސ� = ���r_�Y("K��")
                  ��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
                  ��؊p�x = 360 / ��ؖ{��
                  YN1 = 0: �p�x = 0: D1$ = ���r_�Y("K1"): �S��r = �YD / 2 - �S��_SK�ʒu
                  For ii = 1 To ��ؖ{�� / 2 + 1:
                        ���Y�ʒu(ii) = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                        If YN1 = 0 And ���Y�ʒu(ii) <= 0 Then YN1 = ii
                  Next ii
              
                  �\��Y_1 = (���Y�ʒu(YN1) + ���Y�ʒu(YN1 - 1)) / 2
                  �\��Y_2 = (���Y�ʒu(YN1) + ���Y�ʒu(YN1 + 1)) / 2
      
      '[[[ �f�ʈʒu�w�� ]]]
             X1 = �\��X_AA�f��: Y1 = �YD / 2 + ��_LL
             X2 = X1: Y2 = -Y1
             Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "��", "��", 0)
      
             X1 = �\��X_bb�f��: Y1 = �YD / 2 + ��_LL
             X2 = X1: Y2 = -Y1
             Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "��", "��", 0)
      
      
      
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
            ��؎�ސ� = ���r_�Y("K��")
            ��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
            ��؊p�x = 360 / ��ؖ{��
            KNO = 0
            For ii = 1 To ��ؖ{��:  KNO = KNO + 1: If KNO > ��؎�ސ� Then KNO = 1
                ���No(ii) = KNO
                Next ii
            �p�x = 0
            For ii = 1 To ��ؖ{�� / 2 + 1: ����$ = "K" + F9(���No(ii))
                D1$ = ���r_�Y(����$)
                �S�ؒ蒅 = �S��_S�蒅: �S�؃�L = �S��L_�S��L
                �S��r = �YD / 2 - �S��_SK�ʒu
                X0 = -�S�ؒ蒅:       Y0 = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                Moj$ = "�Y": If Y0 < 0 Then Moj$ = "�Y-"
                Call P_���r_�S�ؐ}(Moj$, "U", "+", X0, Y0)
                Next ii
            Print #60, "[�F:��]"
                
      
      '[[[ ��� Mark 1 ]]]
            Print #60, "[�F:��]\[�:Mark]"
            
            For Kii = 1 To 2
            
                �\��X = �\��X_K1
                If Kii = 2 Then �\��X = �\��X_K3
            For ���i = 1 To 3
            '��؎�ސ� = ���r_�Y("K��")
            '��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": ER (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
                  
                  Select Case ���i
                  Case 1:  D1$ = ���r_�Y("K1"):   X0 = (�\��X_�ʒu(�\��X) + �\��X_�ʒu(�\��X + 1)) / 2: Y2 = -�YD / 2 - Mark_D1
                  Case 2:  D1$ = ���r_�Y("K2"):   X0 = (�\��X_�ʒu(�\��X) + �\��X_�ʒu(�\��X - 1)) / 2: Y2 = -�YD / 2 - Mark_D2
                  Case 3:  D1$ = ���r_�Y("K3"):   X0 = (�\��X_�ʒu(�\��X - 1) + �\��X_�ʒu(�\��X - 2)) / 2: Y2 = -�YD / 2 - Mark_D3
                  End Select
                 
                 If D1$ = "" Then Exit For
                 X1 = X0:
                 LLL1 = �S��L_XL - �S��_S�蒅: If X1 > LLL1 Then Exit For
                 n11 = P_�Y_K_n(X1)
                        �S��_��_����$ = �S��_��_����$ + "-" + F9(n11)
                        ni = InStr(�S��_��_����2$, "-")
                        ����2$ = Mid(�S��_��_����2$, 1, ni)
                        �S��_��_����2$ = ����2$ + ���r�S�،a$(n11)
                 
                 �p�x = 0: ��ؐ� = 0:  �S��r = �YD / 2 - �S��_SK�ʒu
            
                 For ii = 1 To ��ؖ{�� / 2 + 1:  Y0 = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                     If ���i = ���No(ii) Then ��ؐ� = ��ؐ� + 1: ���Y�ʒu(��ؐ�) = Y0
                     Next ii
                       For i2 = 1 To ��ؐ�:
                       Ypit(i2) = ���Y�ʒu(i2) - ���Y�ʒu(i2 + 1)
                       Next i2
                       X1 = X0: Y1 = ���Y�ʒu(1)
                       D2$ = ""
                       For i3 = 1 To ��ؐ� - 1: D2$ = D2$ + "+" + F9(Ypit(i3)): Next i3
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270," + Mid(D2$, 2) + "]"
                 
                  Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                  Call P_�S��_������(2)
            
            Next ���i
            Next Kii
      
      '[[[ ̰�� ]]]
            Hoop$ = ���r_�Y("HOOP")
            Print #60, "[�F:��]\[�:Hoop]"
                 KH_D = �S��_SH�a:  Y1 = -KH_D / 2: Y2 = KH_D / 2
                 For ii = 1 To �S��P_����
                         If ���r_�S��_Mark$(ii) = "*" Then Print #60, "[�F:��]"
                         XX = �S��_Z�ʒu + �S��P_�ʒu(ii): Print #60, "     [Li:" + FD4(XX, Y1, XX, Y2) + "]"
                         If ���r_�S��_Mark$(ii) = "*" Then Print #60, "[�F:��]"
                 Next ii
           
   
      '[[[ ̰��Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                 '           6
                 '    1    2 3 4        5
                 
            For Hpi = 1 To 2
                 Hoop$ = ���r_�Y("HOOP")
                 Select Case Hpi
                 Case 1: Hoop�� = .Hoop1��: �YHp$ = "1": X0 = �\��X_Hoop1: DY = -1: Y6 = -�YD / 2 - Mark_D1
                 Case 2: Hoop�� = .Hoop2��: �YHp$ = "2": X0 = �\��X_Hoop2: DY = 1: Y6 = �YD / 2 + Mark_U1
                 Case 3: Hoop�� = .Hoop3��: �YHp$ = "3"
                 End Select
            
                 
                 X3 = X0: X2 = X0 - 1 * ����}_Scale: X4 = X0 + 1 * ����}_Scale
                 Y3 = �\��Y_2 + DY * ����}_Scale
                       Hoop1�� = 0
                       For ii = 1 To �S��P_����
                         If ���r_�S��_Mark$(ii) = �YHp$ Then Hoop1�� = Hoop1�� + 1: Hoop_X(Hoop1��) = �S��_Z�ʒu + �S��P_�ʒu(ii)
                          Next ii
                       
                       Start_Hp = 0
                       For i2 = 1 To Hoop1��: If Start_Hp = 0 And Hoop_X(i2) > X0 Then Start_Hp = i2
                       Xpit(i2) = Hoop_X(i2 + 1) - Hoop_X(i2)
                       Next i2
                 
                       X1 = Hoop_X(1): Y1 = �\��Y_2
                       D2$ = ""
                       For i3 = 1 To Start_Hp - 2: D2$ = D2$ + "+" + F9(Xpit(i3)): Next i3
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0," + Mid(D2$, 2) + "]"
      
                       X5 = Hoop_X(Hoop1��): Y1 = �\��Y_2
                       D2$ = ""
                       For i3 = Hoop1�� To Start_Hp + 1 Step -1: D2$ = D2$ + "+" + F9(Xpit(i3 - 1)): Next i3
                       Print #60, "[P:" + FD2(X5, Y1) + "]\[<:180," + Mid(D2$, 2) + "]"
      
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, 0) + "|" + FD2(X3 - X2, Y3 - Y1) + "|" + FD2(X4 - X3, Y1 - Y3) + "|" + FD2(X5 - X4, 0) + "]"
                 X6 = X3: ' Y6 = -�YD / 2 - Mark_U1
                  D1$ = ���r_�Y("Hoop" + �YHp$)
                 Print #60, "[P:" + FD2(X3, Y3) + "]\[L:" + FD2(0, Y6 - Y3) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                  Call P_�S��_������(2)
      
      
      
             Next Hpi
      
      
      
      '[[[ �g����̰�� Mark ]]]
                 '           6
                 '    1    2 3 4        5
                 Hoop$ = ���r_�Y("HOOP")
                 X3 = �\��X_�g����: X2 = X3 - 1 * ����}_Scale: X4 = X3 + 1 * ����}_Scale
                 Y3 = �\��Y_1 + 1 * ����}_Scale
                 X1 = �S��P_�ʒu(�g���؈ʒu(1)) + �S��_Z�ʒu: Y1 = �\��Y_1
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
   
                 D2$ = ""
                 For ii = �g����n To 3 Step -1
                      XL = �S��P_�ʒu(�g���؈ʒu(ii)) - �S��P_�ʒu(�g���؈ʒu(ii - 1))
                      D2$ = D2$ + "+" + F9(XL)
                      Next ii
                 X5 = �S��P_�ʒu(�g���؈ʒu(�g����n)) + �S��_Z�ʒu
                 Print #60, "[P:" + FD2(X5, Y1) + "]\[<:180," + Mid(D2$, 2) + "]"
                 
                 Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, 0) + "|" + FD2(X3 - X2, Y3 - Y1) + "|" + FD2(X4 - X3, Y1 - Y3) + "|" + FD2(X5 - X4, 0) + "]"
                 X6 = X3: Y6 = �YD / 2 + Mark_U1
                  D1$ = ���r_�Y("�g����")
                 Print #60, "[P:" + FD2(X3, Y3) + "]\[L:" + FD2(0, Y6 - Y3) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                  Call P_�S��_������(2)
   
   
   
   
      '[[[ ���@  ���� ]]]
           D1$ = ���r_��b("H"): ��bH1 = ���_D(1): ��bH2 = ���_D(2)
           ���@�ʒu1 = ���@���ʒu_�Y���f��.U�J��
           ��1 = 9: ��2 = ���@�ʒu1 - 1
           Print #60, "  [P:" + FD2(-��bH1, ���@�ʒu1 * ����}_Scale + �YD / 2) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(��bH1, 0, -��1) + "|" + FD3(�YL, 0, -��2) + "]"
   
       '[[[ Hoop ���@ ]]]
            Hoop$ = ���r_�Y("HOOP")
            
            ���@�ʒu1 = ���@�ʒu1 - ���r_���@��_Pit_��̐}
            D01$ = ""
            ��1 = ���@�ʒu1 - 1
            
                 Print #60, "  [P:" + FD2(�S��_Z�ʒu, ���@�ʒu1 * ����}_Scale + �YD / 2) + "]"
                 For ii = 1 To �S��P_Data��:
                      Moj$ = P_���r_��Pit���@(�S��P_Data$(ii))
                      If Moj$ <> "0" Then D01$ = D01$ + "|" + FD3(�S��P_L(ii), 0, -��1) + "," + Moj$
                      Next ii
                 Print #60, "[��:" + Mid(D01$, 2) + "]"
   
   
       '[[[ ��߰����@ ]]]
            ���@�ʒu1 = ���@�ʒu1 - ���r_���@��_Pit_��̐}
            ��1 = ���@�ʒu1 - 1
                 Print #60, "  [P:" + FD2(-�S�ؒ蒅, ���@�ʒu1 * ����}_Scale + �YD / 2) + "]"
            '     S1=18-��13-SR235_n6_L50+95+95+50_H70_@500+5000+5000            ' n ��߰���ӏ�=6
             Speser�� = ���r_�Y("��߰���")
             D1$ = ���r_�Y("��߰�1")
                 D01$ = FD2(�S�ؒ蒅, 0)
                 For ii = 1 To �S��P_Data��: Moj$ = �S��P_Data$(ii)
                      Select Case �S��P_L(ii)
                      Case 0:
                      Case Is < 0:      Print #60, "[p:" + FD2(�S��P_L(ii), 0) + "]"
                      Case Else:        If �S��P_n(ii) > 1 Then Moj$ = Moj$ + "=" + F9(�S��P_L(ii))
                                        D01$ = D01$ + "|" + FD3(�S��P_L(ii), 0, -��1) + "," + Moj$
                      End Select
                      Next ii
                 Print #60, "[��:" + F9(-��1) + ":" + D01$ + "]"
             
       '[[[ ��߰��} ]]]
             For Kii = 1 To Speser��
                 D1$ = ���r_�Y("��߰�" + F9(Kii)): S_H = Val(�S��_H$)
                 DX = �S��L_L(4) + �S��L_L(3): YY = �S��r + ���r_J�S�؊J�� * ����}_Scale
                 For ii = 1 To �S��P_����
                     XX = �S��P_�ʒu(ii) - DX
                     Print #60, "   [P:" + FD2(XX, YY) + "]\[L:" + FD2(�S��L_L(4), 0) + "|" + FD2(�S��L_L(3), S_H) + "|" + FD2(�S��L_L(2), -S_H) + "|" + FD2(�S��L_L(1), 0) + "]"
                     Print #60, "   [P:" + FD2(XX, -YY) + "]\[L:" + FD2(�S��L_L(4), 0) + "|" + FD2(�S��L_L(3), -S_H) + "|" + FD2(�S��L_L(2), S_H) + "|" + FD2(�S��L_L(1), 0) + "]"
                     Next ii
                 Next Kii
   
   
      '[[[ ���@  �� ]]]
           ���@�ʒu1 = ���@���ʒu_�Y���f��.R�J��:    ��1 = ���@�ʒu1 - 1
           Print #60, "  [P:" + FD2(�YL + ���@�ʒu1 * ����}_Scale, -�YD / 2) + "]"
           Print #60, "  [��:" + F9(��1) + ":" + FD3(0, �YD, ��1) + "]"
   
           D1$ = ���r_�Y("K1"): ���_dt = �S��_SK�ʒu
           ���@�ʒu1 = ���@���ʒu_�Y���f��.R�J�� - ���r_���@��_Pit_��̐}:  ��1 = ���@�ʒu1 - 1
           Print #60, "  [P:" + FD2(�YL + ���@�ʒu1 * ����}_Scale, -�YD / 2) + "]"
           Print #60, "  [��:" + FD3(0, ���_dt, ��1) + "|" + FD3(0, �YD - 2 * ���_dt, ��1) + "|" + FD2(0, ���_dt) + "]"
   
     End With
   'Stop
     End Sub

Sub P_�Y_K1(�}�`����$)
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
                '����$ = "K1"
                
                
       D1$ = ���r_�Y(�}�`����$)
                
                ����$ = �S��_��_����$
                
                ����2$ = �S��_��_����2$
                ni = InStr(����2$, "-")
                ����2$ = Mid(����2$, 1, ni)
                
                ' �S��_S�蒅: �S��L_XL-�S��_S�蒅
                '�S��r = �YD / 2 - �S��_SK�ʒu
                XX = -�S��_S�蒅
     
     ���r_�S�؃� = 0:  Call P_���r_�S�ؐ}("Y", "", "", XX, 0)
                
                
      n11 = 0: Y1 = -15 * ����}_Scale
      For ii = 1 To �S��L_Data��
           If �S��L_Type$(ii) = "L" Then
            n11 = n11 + 1
            LLL1 = �S��L_L(ii)
            X1 = �S��L_X(ii) + 0.3 * LLL1
            �S��_��_����$ = ����$ + "-" + F9(n11)
            �S��_��_����3$ = ����2$ + ���r�S�،a$(ii) + " x " + F9(LLL1)
                  Print #60, "[P:" + FD2(X1, Y1) + "]"
                  Call P_�S��_������(3)
     
           End If
           Next ii
     
     End Sub

Function P_�Y_K_n(LLL)
      '�Y_��؂� n�Ԗڂ������߂�
      ' LLL  ��b���[����� L
      n11 = 0
      For ii = 1 To �S��L_Data��
           If �S��L_Type$(ii) = "L" Then
               n11 = n11 + 1:  If LLL < �S��L_X(ii) - �S��_S�蒅 Then n11 = n11 - 1: Exit For
               End If
           Next ii
     P_�Y_K_n = n11
     End Function



Sub P_�Y_�f��A()
           ReDim ���No(500) As Integer

     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|��")
      
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            D1$ = ���r_�Y("D"):  �YD = ���_D(1): Print #60, "   [P:0,0]\[Cir:" + FD1(�YD / 2) + "]"
           
      '[[[ ̰�� KO1 ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            D1$ = ���r_�Y("�g����"): KH_D = �S��_SH�a:   Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
            
            '[[[ Come ]]]
            Print #60, "[�F:��]\[�:Mark]"
            �p�x = 20: X1 = -KH_D * Dcos(�p�x) / 2: Y1 = -KH_D * Dsin(�p�x) / 2
            Print #60, "    [P:" + FD2(X1, Y1) + "]\[��:-15,-8|" + F9(-����_L1) + ",0]\[pm:5,0]"
            Call P_�S��_������(1)
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
            ��؎�ސ� = ���r_�Y("K��")
            ��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
            ��؊p�x = 360 / ��ؖ{��
            KNO = 0
            For ii = 1 To ��ؖ{��:  KNO = KNO + 1: If KNO > ��؎�ސ� Then KNO = 1
                ���No(ii) = KNO
                Next ii
            �p�x = 0
            For ii = 1 To ��ؖ{��: ����$ = "K" + F9(���No(ii))
                D1$ = ���r_�Y(����$)
                �S��r = �YD / 2 - �S��_SK�ʒu
                XX = �S��r * Dsin(�p�x): ' -�S�ؒ蒅
                YY = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                Print #60, "   [P:" + FD2(XX, YY) + "]\[���r�S��:" + ���r�S�،a$(1) + "]"
                Next ii
     
     '[[[ ��߰� ]]]
            Print #60, "[�F:��]\[�:ETC]"
           D1$ = ���r_�Y("��߰�1"): Spe_n = Val(�S��_n$): If Spe_n = 0 Then Spe_n = 6
           Spe_�p�x = 360 / Spe_n
           For ii = 1 To Spe_n
               �p�x1 = �p�x1
               X1 = KH_D * Dcos(90 - �p�x) / 2: Y1 = KH_D * Dsin(90 - �p�x) / 2
               X2 = �YD * Dcos(90 - �p�x) / 2: Y2 = �YD * Dsin(90 - �p�x) / 2
               Print #60, "     [Li:" + FD4(X1, Y1, X2, Y2) + "]"
               
               If ii = 3 Then
                      '[[[ Come ]]]
                      Print #60, "[Msize:" + F9(���r_�S�ؖ���_Msize3) + "]"
                      Moj$ = "(n=" + F9(Spe_n) + ")"
                      Print #60, "    [P:" + FD2((X1 + X2) / 2, (Y1 + Y2) / 2) + "]\[��:15,12|25,0,�X�y�[�T�[ ,R]"
                      Print #60, "   [pm:-20,-4.5]\" + Moj$
                      End If
               �p�x = �p�x + Spe_�p�x
               Next ii
     
      '[[[ ���@ ]]]
           Hoop_dt = (�YD - KH_D) / 2
                D1$ = ���r_�Y("K" + F9(���No(1)))
                ���_dt = �S��_SK�ʒu:    ���r = �YD / 2 - �S��_SK�ʒu
                ���Pit = 1: If ��ؖ{�� > 0 Then ���Pit = 2 * 3.14159265358979 * ���r / ��ؖ{��
                ���Pit = Int(���Pit * 10) / 10
                ���r_L = ���Pit * ��ؖ{��
          
            ���@�ʒu1 = ���@���ʒu_�Y�f��.U�J�� * ����}_Scale: ��1 = ���@�ʒu1 / ����}_Scale - 1
            Print #60, "   [P:" + FD2(-�YD / 2, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(�YD, 0, -��1) + "]"
            
            ���@�ʒu2 = ���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale: ��2 = ���@�ʒu2 / ����}_Scale - 1
            Print #60, "   [P:" + FD2(-�YD / 2, ���@�ʒu2) + "]\[��:" + FD3(���_dt, 0, -��2) + "|" + FD3(2 * ���r, 0, -��2) + "|" + FD2(���_dt, 0) + "]"
      
       '[[[    ]]]
            Print #60, "[�F:��]\[�:���@��]"
            ��r = �YD / 2 + ���r_���@��_�J��_�S�ؐ} * ����}_Scale
            Print #60, "[Msize:" + F9(�}_���@_Msize) + "]"
            Print #60, "   [P0:]\[��Arc1:" + FD5(��r, 90, 89.9999, 5, 5) + ",<>,***]"
            Moj1$ = F9(��ؖ{��): Moj2$ = "x": Moj3$ = F9(���Pit): Moj4$ = F9(���Pit): Moj5$ = "=": Moj6$ = F9(���r_L)
                  ��r = (�YD / 2) / ����}_Scale + ���r_���@��_�J��_�S�ؐ}: ' * ����}_Scale
                  '�p�x = 27: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj1$ + "]"
                  '�p�x = 15: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj2$ + "]"
                  '�p�x = 0: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj3$ + "]"
                  '�p�x = 17: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj5$ + "]"
                  '�p�x = 30: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj6$ + "]"
                  
                  �p�x = 32: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj1$ + "]"
                  �p�x = 19: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj2$ + "]"
                  �p�x = 0: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj3$ + "]"
                  �p�x = 21: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj5$ + "]"
                  �p�x = 38: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj6$ + "]"
     
     
     End Sub
Sub P_�Y_�f��A�z�ؐ}()
           ReDim ���No(500) As Integer

     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|���S�ؔz�ؐ}")
      
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            D1$ = ���r_�Y("D"):  �YD = ���_D(1)
            Print #60, "   [P:0,0]\[Cir:" + FD1(�YD / 2) + "]"
           
      '[[[ ̰�� KO1 �g���� ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            D1$ = ���r_�Y("�g����"): KH_D = �S��_SH�a
            Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
     
     '[[[ ��߰� ]]]
            Print #60, "[�F:��]\[�:ETC]"
           D1$ = ���r_�Y("��߰�1"): Spe_n = Val(�S��_n$): If Spe_n = 0 Then Spe_n = 6
           Spe_�p�x = 360 / Spe_n
           For ii = 1 To Spe_n
               �p�x1 = �p�x1
               X1 = KH_D * Dcos(90 - �p�x) / 2: Y1 = KH_D * Dsin(90 - �p�x) / 2
               X2 = �YD * Dcos(90 - �p�x) / 2: Y2 = �YD * Dsin(90 - �p�x) / 2
               Print #60, "    [Li:" + FD4(X1, Y1, X2, Y2) + "]"
               �p�x = �p�x + Spe_�p�x
               Next ii
      
      '[[[ ��� ]]]
            
            Print #60, "[�F:��]\[�:�S��Mark]"
            Print #60, "[Msize:" + FD1(���r_�S��_Mark_Msize) + "]"
            
            ��؎�ސ� = ���r_�Y("K��")
            ��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
            ��؊p�x = 360 / ��ؖ{��
            KNO = 0
            For ii = 1 To ��ؖ{��:  KNO = KNO + 1: If KNO > ��؎�ސ� Then KNO = 1
                ���No(ii) = KNO
                Next ii
            �p�x = 0
            For ii = 1 To ��ؖ{��: ����$ = "K" + F9(���No(ii))
                D1$ = ���r_�Y(����$)
                �S��r = KH_D / 2 - ���r_�S��_Mark_D * ����}_Scale / 2
                XX = �S��r * Dsin(�p�x): ' -�S�ؒ蒅
                YY = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                Print #60, "   [P:" + FD2(XX, YY) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(���No(ii)) + "]"
                
                Next ii

     End Sub
Sub P_�Y_�f��B()
           ReDim ���No(500) As Integer
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|��")
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            D1$ = ���r_�Y("D"):  �YD = ���_D(1): Print #60, "   [P:0,0]\[Cir:" + FD1(�YD / 2) + "]"
           
            
      
      '[[[ ̰�� KO1 ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            D1$ = ���r_�Y("�g����"): KH_D = �S��_SH�a:   Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
            
            '[[[ Come ]]]
            Print #60, "[�F:��]\[�:Mark]"
            �p�x = 20: X1 = -KH_D * Dcos(�p�x) / 2: Y1 = -KH_D * Dsin(�p�x) / 2
            Print #60, "    [P:" + FD2(X1, Y1) + "]\[��:-15,-8|" + F9(-����_L1) + ",0]\[pm:5,0]"
            
            Call P_�S��_������(1)
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
            D1$ = ���r_�Y("L"):  �YL = ���_D(1)

            ��؎�ސ� = ���r_�Y("K��")
            ��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
            ��؊p�x = 360 / ��ؖ{��
            KNO = 0
            For ii = 1 To ��ؖ{��:  KNO = KNO + 1: If KNO > ��؎�ސ� Then KNO = 1
                ���No(ii) = KNO
                Next ii
            �p�x = 0: B��ؖ{�� = 0
            For ii = 1 To ��ؖ{��: ����$ = "K" + F9(���No(ii))
                D1$ = ���r_�Y(����$)
                �S��r = �YD / 2 - �S��_SK�ʒu
                XX = �S��r * Dsin(�p�x): ' -�S�ؒ蒅
                YY = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                
                LLL1 = �S��L_XL - �S��_S�蒅
                If LLL1 + 500 > �YL Then
                     B��ؖ{�� = B��ؖ{�� + 1
                     n11 = P_�Y_K_n(�YL - 500): B�S�،a$ = ���r�S�،a$(n11)
                    Print #60, "   [P:" + FD2(XX, YY) + "]\[���r�S��:" + B�S�،a$ + "]"
                End If
                Next ii
     
     
      '[[[ ���@ ]]]
           Hoop_dt = (�YD - KH_D) / 2
                D1$ = ���r_�Y("K" + F9(���No(1)))
                ���_dt = �S��_SK�ʒu:    ���r = �YD / 2 - �S��_SK�ʒu
                ���Pit = 1: If B��ؖ{�� > 0 Then ���Pit = 2 * 3.14159265358979 * ���r / B��ؖ{��
                ���Pit = Int(���Pit * 10) / 10
                ���r_L = ���Pit * B��ؖ{��
          
            ���@�ʒu1 = ���@���ʒu_�Y�f��.U�J�� * ����}_Scale: ��1 = ���@�ʒu1 / ����}_Scale - 1
            Print #60, "   [P:" + FD2(-�YD / 2, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(�YD, 0, -��1) + "]"
            
            ���@�ʒu2 = ���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale: ��2 = ���@�ʒu2 / ����}_Scale - 1
            Print #60, "   [P:" + FD2(-�YD / 2, ���@�ʒu2) + "]\[��:" + FD3(���_dt, 0, -��2) + "|" + FD3(2 * ���r, 0, -��2) + "|" + FD2(���_dt, 0) + "]"
      
       '[[[    ]]]
            
             Print #60, "[�F:��]\[�:���@��]"
            ��r = �YD / 2 + ���r_���@��_�J��_�S�ؐ} * ����}_Scale
            Print #60, "   [P0:]\[��Arc1:" + FD5(��r, 90, 89.9999, 5, 5) + ",<>,***]"
            Print #60, "[Msize:" + F9(�}_���@_Msize) + "]"
            Moj1$ = F9(B��ؖ{��): Moj2$ = "x": Moj3$ = F9(���Pit): Moj4$ = F9(���Pit): Moj5$ = "=": Moj6$ = F9(���r_L)
                  ��r = (�YD / 2) / ����}_Scale + ���r_���@��_�J��_�S�ؐ}: ' * ����}_Scale
                  '�p�x = 27: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj1$ + "]"
                  '�p�x = 15: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj2$ + "]"
                  '�p�x = 0: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj3$ + "]"
                  '�p�x = 17: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj5$ + "]"
                  '�p�x = 30: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj6$ + "]"
                  
                  �p�x = 32: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj1$ + "]"
                  �p�x = 19: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):   Print #60, "   [P0:]\[��:" + FD3(DX, DY, -�p�x) + ",C," + Moj2$ + "]"
                  �p�x = 0: DX = -��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj3$ + "]"
                  �p�x = 21: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj5$ + "]"
                  �p�x = 38: DX = ��r * Dsin(�p�x): DY = -��r * Dcos(�p�x):     Print #60, "   [P0:]\[��:" + FD3(DX, DY, �p�x) + ",C," + Moj6$ + "]"
     
     
      '[[[ ��̰��  ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            KD2 = KH_D / 2
            ��Hp_L = KH_D / Sqr(2)
            Print #60, "[P:" + FD2(0, KD2) + "]\[L:" + FD2(KD2, -KD2) + "|" + FD2(-KD2, -KD2) + "|" + FD2(-KD2, KD2) + "|" + FD2(KD2, KD2) + "]"
            Print #60, "[P:" + FD2(-��Hp_L / 2, ��Hp_L / 2) + "]\[L:" + FD2(��Hp_L, 0) + "|" + FD2(0, -��Hp_L) + "|" + FD2(-��Hp_L, 0) + "|" + FD2(0, ��Hp_L) + "]"
      
      '[[[ ��̰�� ��  ]]]
            Print #60, "[�F:��]\[�:Mark]"
            ��LL = ��Hp_L / 2: ��L2 = ��LL / Sqr(2)
            For ii = 1 To 8: �p�x = (ii - 1) * 45: X0 = ��LL * Dcos(�p�x): Y0 = ��LL * Dsin(�p�x)
                 Print #60, "[P:" + FD2(X0, Y0) + "]\[<:" + FD1(180 + �p�x) + "]"
                 Next ii
                 Print #60, "[P:" + FD2(-��LL, 0) + "]\[L:" + FD2(2 * ��LL, 0) + "]"
                 Print #60, "[P:" + FD2(0, -��LL) + "]\[L:" + FD2(0, 2 * ��LL) + "]"
                 Print #60, "[P:" + FD2(-��L2, -��L2) + "]\[L:" + FD2(2 * ��L2, 2 * ��L2) + "]"
                 Print #60, "[P:" + FD2(��L2, -��L2) + "]\[L:" + FD2(-2 * ��L2, 2 * ��L2) + "]"
                 
      '[[[ ��̰�� Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
            D1$ = ���r_�Y("HOOP��"): XL = 0.9 * KH_D: YL = 0.5 * KH_D
            Print #60, "    [P0:]\[L:" + FD2(XL, YL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
            
            Call P_�S��_������(1)
     

     End Sub
Sub P_�Y_�f��B�z�ؐ}()
           ReDim ���No(500) As Integer
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|���S�ؔz�ؐ}")
      
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            D1$ = ���r_�Y("D"):  �YD = ���_D(1)
            Print #60, "   [P:0,0]\[Cir:" + FD1(�YD / 2) + "]"
           
      '[[[ ̰�� KO1 �g���� ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            D1$ = ���r_�Y("�g����"): KH_D = �S��_SH�a
            Print #60, "   [Cir:" + FD1(KH_D / 2) + "]"
     

      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:�S��Mark]"
            D1$ = ���r_�Y("L"):  �YL = ���_D(1)
            
            Print #60, "[Msize:" + FD1(���r_�S��_Mark_Msize) + "]"
            ��؎�ސ� = ���r_�Y("K��")
            ��ؖ{�� = ���r_�Y("��K�S�ؖ{��"): If ��ؖ{�� < 4 Then ��er = " ��ؖ{�� < 4": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
            ��؊p�x = 360 / ��ؖ{��
            KNO = 0
            For ii = 1 To ��ؖ{��:  KNO = KNO + 1: If KNO > ��؎�ސ� Then KNO = 1
                ���No(ii) = KNO
                Next ii
            �p�x = 0
            For ii = 1 To ��ؖ{��: ����$ = "K" + F9(���No(ii))
                D1$ = ���r_�Y(����$)
                �S��r = KH_D / 2 - ���r_�S��_Mark_D * ����}_Scale / 2
                XX = �S��r * Dsin(�p�x): ' -�S�ؒ蒅
                YY = �S��r * Dcos(�p�x): �p�x = �p�x + ��؊p�x
                
                LLL1 = �S��L_XL - �S��_S�蒅
                If LLL1 + 500 > �YL Then Print #60, "   [P:" + FD2(XX, YY) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(���No(ii)) + "]"
                              
                Next ii

      '[[[ ��̰��  ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            KD2 = KH_D / 2
            ��Hp_L = KH_D / Sqr(2)
            Print #60, "[P:" + FD2(0, KD2) + "]\[L:" + FD2(KD2, -KD2) + "|" + FD2(-KD2, -KD2) + "|" + FD2(-KD2, KD2) + "|" + FD2(KD2, KD2) + "]"
            Print #60, "[P:" + FD2(-��Hp_L / 2, ��Hp_L / 2) + "]\[L:" + FD2(��Hp_L, 0) + "|" + FD2(0, -��Hp_L) + "|" + FD2(-��Hp_L, 0) + "|" + FD2(0, ��Hp_L) + "]"
     

     End Sub
Sub P_�Y_Hoop(�}�`����$)
      
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_�Y
      
            D1$ = ���r_�Y("HOOP")
            Select Case �}�`����$
            Case "HOOP1": Hoop�� = .Hoop1��
            Case "HOOP2": Hoop�� = .Hoop2��
            Case "HOOP3": Hoop�� = .Hoop3��
            Case "�g����": Hoop�� = .�g���ؐ�
            End Select
           End With
      
      '[[[ ̰��  ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            D1$ = ���r_�Y(�}�`����$): KH_D = �S��_SH�a
            Print #60, "   [P:0,0]\[Cir:" + FD1(KH_D / 2) + "]"
            Hoop��$ = ���r�S�،a$(1)
      
      '[[[ ���@ ]]]
            Print #60, "[�F:��]\[�:���@��]"
            LL1 = 3.14159265358979 * KH_D
            ��r = KH_D / 2 + ���r_���@��_�J��_�S�ؐ} * ����}_Scale
            ��1 = ���r_���@��_�J��_�S�ؐ} - 1
            Print #60, "   [P0:]\[��Arc1:" + FD4(��r, 90, 89.9999, ��1) + ",,<>," + F9(F���r(LL1)) + "]"
            
            �p�x = 15
            X1 = KH_D * Dcos(�p�x) / 2: Y1 = KH_D * Dsin(�p�x) / 2: X2 = HR * Dcos(�p�x): Y2 = -HR * Dsin(�p�x)
            Print #60, "   [��:" + FD2(-X1, Y1) + ":" + FD2(2 * X1, -2 * Y1) + "]": '       ���@��`�� point�͌��ɖ߂�  ����="***" �͐��@������ ����="" �͕�����`���Ȃ�
                            '  exp   [��:6:500,0,5,,L5|300,0,5,,R=3}
         
     
       '[[[ �d�˕��� ]]]
            �d��L = FP_���r_�S��_Data("KHL", Hoop��$)
            �d�ˊp�x = 90 - (360 * �d��L / (3.14159265358979 * KH_D))
            �d��r = KH_D / 2 + ���r_J�S�؊J�� * ����}_Scale
            Print #60, "   [P0:]\[Arc1:" + FD3(�d��r, �d�ˊp�x, 90) + "]"
            
            ��r = KH_D / 2 + 2 * ���r_���@��_�J��_�S�ؐ} * ����}_Scale
            Print #60, "   [P0:]\[��Arc1:" + FD5(��r, �d�ˊp�x, 90, 2 * ��1, ��1) + ",<>," + F9(�d��L) + "]"
     
       '[[[ �n��Mark  ]]]
            Print #60, "[�F:��]\[�:ETC]"
              X0 = �d��r * Dcos(�d�ˊp�x + 5): Y0 = �d��r * Dsin(�d�ˊp�x + 5)
              XL = 2.8 * ���r_���@��_�J��_�S�ؐ} * Dcos(�d�ˊp�x): YL = 2.8 * ���r_���@��_�J��_�S�ؐ} * Dsin(�d�ˊp�x)
              Print #60, "    [P:" + FD2(X0, Y0) + "]"
              Call P_���r_�n��Mark1(XL, YL)
     
     
       '[[[ Title ]]]
            Print #60, "   [P:" + FD2(-0.75 * ��r, -1.4 * ��r) + "]"
            Call P_�S��_������(3)
     
     
     End Sub

Sub P_�Y_Hoop��()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_�Y

      '[[[ ��̰��  ]]]
            Print #60, "[�F:��]\[�:Hoop]"
            D1$ = ���r_�Y("HOOP��")
            LL = �S��L_�S��L
            Print #60, "   [P:" + FD2(-LL / 2, 0) + "]\[L:" + FD2(LL, 0) + "]"
      
      '[[[ ���@ ]]]
            ���@�ʒu1 = ���r_���@��_�J��_�S�ؐ} * ����}_Scale
            ��1 = ���r_���@��_�J��_�S�ؐ} - 1
            Print #60, "   [P:" + FD2(-LL / 2, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(LL, 0, -��1) + "]"
            
       '[[[ Title ]]]
            Print #60, "[P0:]\[Pm:" + FD2(-10, -20) + "]"
            Call P_�S��_������(3)
            
    
    End With
    End Sub



Sub P_�Y_�ѓS�،p��ڍא}()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
            Print #60, "[�F:��]\[�:ETC]"
      '[[[ �i�}�� ]]]
         Y0 = 0.7 * (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�ѓS�،p��ڍא}=1/" + F9(����}_Scale))
      
      '[[[ ̰�� KO3 ]]]
            D1$ = ���r_�Y("HOOP1"): KH_D = �S��_SH�a
            H_D = Val(Mid(���r�S�،a$(1), 2))
            LL1 = 10 * H_D
            Print #60, "   [P:" + FD2(-1.2 * LL1, H_D / 2) + "]\[L2:�`]:" + FD3(1.7 * LL1 + 20, 0, H_D) + "]"
            Print #60, "   [P:" + FD2(-LL1 / 2 - 20, -H_D / 2) + "]\[L2:[�`:" + FD3(1.7 * LL1 + 20, 0, H_D) + "]"
            
       '[[[ ʯ� ]]]
              ' [ʯ�1:�߯�mm,�p�x,XL,YL]    BOX��ʯ������� Point�����̈ʒu�ɖ߂�
            Print #60, "   [P:" + FD2(-LL1 / 2, -H_D / 2) + "]\ [ʯ�1:0.5,45," + FD2(LL1, H_D) + "]"
            Print #60, "   [P0:]\[B:" + FD2(LL1, H_D) + "]"
            
       '[[[ ���@  ]]]
              ��1 = 2 * ���r_���@��_�J��_�S�ؐ} - 1
              DY = ���r_���@��_�J��_�S�ؐ} * ����}_Scale
              Print #60, "[P0:]\[p:" + FD2(-LL1 / 2 - 20, 2 * DY + H_D) + "]"
              Print #60, "    [��:" + F9(-��1) + ":" + FD3(20, 0, -��1) + ",,L=6|" + FD3(LL1, 0, -��1) + ",10��|" + FD3(20, 0, -��1) + ",,R=6" + "]"
       
       '[[[ Come  ]]]
              Print #60, "[Msize:" + F9(�}_�\��_Msize) + "]"
              Print #60, "    [P:" + FD2(0.85 * LL1, -H_D) + "]\[��:0," + F9(-20 + H_D / ����}_Scale) + "]"
              Print #60, "    [P:" + FD2(-0.85 * LL1, 0) + "]\[��:0,-20|60,0,�ѓS��,R]"

       '[[[ �n��Mark  ]]]
              Print #60, "    [P:" + FD2(-0.3 * LL1, H_D / 2) + "]"
              Call P_���r_�n��Mark1(8, 8)


     End Sub



Sub P_�Y_�X�y�[�T�[�ڍא}()
'                 S1=18-��13-SR235_n6_L50+95+95+50_H70_@500+5000+5000            ' n ��߰���ӏ�=6
        ' �S��_�a�{��$          �S�ؖ{��,�a  exp  6+5+1-D38    18-��13-SR235
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
       
            Print #60, "[�F:��]\[�:ETC]"
      '[[[ �i�}�� ]]]
         Y0 = 0.7 * (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�X�y�[�T�[�ڍא}=1/" + F9(����}_Scale))
       
       '[[[ ��߰��  ]]]
              D1$ = ���r_�Y("��߰�1")
              S_H = Val(�S��_H$)
              S_D = Val(Mid(���r�S�،a$(1), 2))
              DX = �S��L_L(1) + �S��L_L(2)
              Print #60, "   [P:" + FD2(-DX, 0) + "]\[L2:[]:" + FD3(�S��L_L(1), 0, S_D) + "|" + FD3(�S��L_L(2), S_H, S_D) + "|" + FD3(�S��L_L(3), -S_H, S_D) + "|" + FD3(�S��L_L(4), 0, S_D) + "]"

                  
       '[[[ ���@  ]]]
              ��1 = ���r_���@��_�J��_�S�ؐ} - 1
              DY = ���r_���@��_�J��_�S�ؐ} * ����}_Scale
              Print #60, "[P0:]\[p:" + FD2(-DX, -DY) + "]"
              D01$ = "    [��:" + F9(��1) + ":" + FD3(�S��L_L(1), 0, ��1) + ",,L=6|" + FD3(�S��L_L(2), 0, ��1) + "|" + FD3(�S��L_L(3), 0, ��1) + "|" + FD3(�S��L_L(4), 0, ��1) + ",,R=6" + "]"
              If �S��L_L(2) = �S��L_L(3) Then D01$ = "    [��:" + F9(��1) + ":" + FD3(�S��L_L(1), 0, ��1) + ",,L=6|" + FD3(�S��L_L(2) + �S��L_L(3), 0, ��1) + "|" + FD3(�S��L_L(4), 0, ��1) + ",,R=6" + "]"
              Print #60, D01$

              Print #60, "[P0:]\[p:" + FD2(-DX - DY, 0) + "]"
              Print #60, "[��:" + F9(-��1) + ":" + FD3(0, S_H, -��1) + "]"

       '[[[ Come  ]]]
              Print #60, "[Msize:" + F9(�}_�\��_Msize) + "]"
              Moj$ = �S��_�a�{��$: ni = InStr(Moj$, "-S"): If ni > 1 Then Moj$ = Mid(Moj$, 1, ni - 1)
              Moj1$ = Moj$ + " x " + F9(F���r2(�S��L_�S��L)): Moj2$ = "(" + �S�،a_���$ + ")"
              Print #60, "[P0:]\[��:0,-20,0,C," + Moj1$ + "]"
              Print #60, "[P0:]\[��:0,-27,0,C," + Moj2$ + "]"


     End Sub
Sub P_�Y_���Ԃ�ڍא}()
      
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
            Print #60, "[�F:��]\[�:ETC]"
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�Y�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "���Ԃ�ڍא}=1/" + F9(����}_Scale))
       
      
      '[[[ ̰�� �g���� ]]]
             D1$ = ���r_�Y("�g����"): KH_D = �S��_SH�a
             �g����$ = ���r�S�،a$(1)
             �g����_D = Val(Mid(���r�S�،a$(1), 2))
      
      '[[[ ��� ]]]
             D1$ = ���r_�Y("K1")
             ���_D = Val(Mid(���r�S�،a$(1), 2))
             �S��_dt = �S��_SK�ʒu
             LL1 = 10 * ���_D
              Print #60, "[Msize:" + F9(�}_�\��_Msize) + "]"
             Print #60, "   [P:" + FD2(0, -LL1) + "]\[L2:�`:" + FD3(0, LL1 - �g����_D / 2, ���_D) + "]"
             Print #60, "   [P:" + FD2(0, ���_D / 2) + "]\[L2:*�`:" + FD3(0, LL1 - �g����_D / 2, ���_D) + "]"
             Moj$ = "��S�� " + ���r�S�،a$(1)
             Print #60, "   [P:" + FD2(���_D / 2, 0.6 * LL1) + "]\[��:33,0," + Moj$ + ",R]"
                
       '[[[ ���@  ]]]
             Print #60, "   [P:" + FD2(-�S��_dt, LL1) + "]\[��:" + FD2(�S��_dt - ���_D / 2, 0) + "]"

      
      
      '[[[ Cyubu ]]]
             Print #60, "[Msize:" + F9(�}_�\��_Msize) + "]"
             Print #60, "   [P:" + FD2(-�S��_dt, -LL1) + "]\[L:" + FD2(0, 2 * LL1) + "]"
             Cyubu_t = 40
             Print #60, "   [P:" + FD2(-�S��_dt, -LL1) + "]\ [ʯ�1:1.0,45," + FD2(Cyubu_t, 1.8 * LL1) + "]"
             Moj$ = "�P�[�V���O�`���[�u"
             Print #60, "   [P:" + FD2(-�S��_dt + 0.4 * Cyubu_t, -0.6 * LL1) + "]\[��:-50,0," + Moj$ + ",C]"
      
      
      
      
      '[[[ ��߰��  ]]]
             D1$ = ���r_�Y("��߰�1")
             S_H = Val(�S��_H$)
             S_D = Val(Mid(���r�S�،a$(1), 2))
             DY = �S��L_L(1) + �S��L_L(2)
             Print #60, "   [P:" + FD2(-(���_D + S_D) / 2, -DY) + "]\[L2:[]:" + FD3(0, �S��L_L(1), S_D) + "|" + FD3(-S_H, �S��L_L(2), S_D) + "|" + FD3(S_H, �S��L_L(3), S_D) + "|" + FD3(0, �S��L_L(4), S_D) + "]"

             Print #60, "   [P:" + FD2(-S_H - ���_D / 2 - S_D / 2, -1.3 * LL1) + "]\[��:5:" + FD3(S_H, 0, 5) + "]"
             Moj$ = "�X�y�[�T�[" + ���r�S�،a$(1)
             Print #60, "   [P:" + FD2(-0.6 * S_H - ���_D / 2 - S_D / 2, 0.6 * �S��L_L(3)) + "]\[��:-65,0," + Moj$ + ",C]"
      
      
      
      
      '[[[ ̰��  �g���� ]]]
             'D1$ = ���r_�Y("�g����"): 'KH_D = �S��_SH�a
             '�g����$ = ���r�S�،a$(1)
             '�g����_D = Val(Mid(�g����$, 2))
             Print #60, "   [P:" + FD2(-���_D / 2 - �g����_D / 2, 0) + "]\[L2:():" + FD3(LL1, 0, �g����_D) + "]"
             Moj$ = "�g���� " + �g����$
             Print #60, "    [P:" + FD2(0.4 * LL1, -���_D / 2) + "]\[��:0,-7|30,0," + Moj$ + ",R]"



     End Sub



'����������������������������������������������������������������������������������������������
'���� ��b       ��}        �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_��b_�z�ؐ}()
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_��b
     
       
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
       
       
      
      
      '[[[ �i�}�� ]]]
         X1 = -.BYR - (���@���ʒu_��b����.L�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(X1, -.BXL * 0.4, 90, "����")
         Call P_���r_�i�}��(X1, .BXR * 0.4, 90, "���")
      
      '[[[ ���� Line ]]]
           X1 = -.BYR - (���@���ʒu_��b����.L�J�� + �i�}���J���ʒu) * ����}_Scale: X2 = .BYR + 10 * ����}_Scale
           Call P_���r_Center_Line(X2, 0, X1, 0, X1, 0)
           Y1 = -.BXL - 10 * ����}_Scale: Y2 = .BXR + 10 * ����}_Scale
           Call P_���r_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      '[[[ �f�ʈʒu�w�� ]]]
         X1 = -.BYR - 10 * ����}_Scale: Y1 = 5 * ����}_Scale
         X2 = .BYL + 10 * ����}_Scale: Y2 = Y1
         Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "�`", "�`", 0)
         
         X1 = -5 * ����}_Scale: Y1 = .BXR + 10 * ����}_Scale
         X2 = X1: Y2 = -.BXL - 10 * ����}_Scale
         Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "�a", "�a", 0)
         
      
      
      
      '[[[ ��b��� ]]]
            Print #60, "[�F:��]\[�:���]"
         Print #60, "[P0:]\[B:" + FD2(.BY, .BX) + "]"
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .BXR + ���@���ʒu_��b����.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_��b����.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(.BY, 0, -��1) + "]"
          
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_��b����.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu2) + "]"
                  D1$ = "[��:" + FD3(.BYR_�[, 0, -��2) + "|" + FD3(.BYR_�� - �y�؋��r_��.BYR, 0, -��2) + "|"
                  D1$ = D1$ + FD3(�y�؋��r_��.BY, 0, -��2) + "|" + FD3(.BYL_�� - �y�؋��r_��.BYL, 0, -��2) + "|" + FD3(.BYL_�[, 0, -��2) + "]"
                  Print #60, D1$
          
          ' D���@
                  ���@�ʒuD1 = -.BXL - ���@���ʒu_��b����.D�J�� * ����}_Scale
                  ��D1 = ���@���ʒu_��b����.D�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒuD1) + "]\[��:" + F9(��D1) + ":" + FD3(.BY, 0, ��D1) + "]"
          
          ' L���@
                  ���@�ʒuL1 = -.BYR - ���@���ʒu_��b����.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_��b����.L�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.BXL) + "]\[��:" + F9(-��L1) + ":" + FD3(0, .BX, -��L1) + "]"
          
                  ���@�ʒuL2 = ���@�ʒuL1 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_��b����.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(���@�ʒuL2, -.BXL) + "]\[��:" + FD3(0, .BXL, -��L2) + "|" + FD3(0, �y�؋��r_��.BXR, -��L2) + "|" + FD3(0, .BXR - �y�؋��r_��.BXR, 0) + "]"
          
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            Print #60, "[dot:]"
            For ii = 1 To �Y�ʒu_Data��
                 X0 = �Y�ʒu_X(ii): Y0 = �Y�ʒu_Y(ii): DD = �Y�ʒu_�a(ii)
                 �p�x = Calu�p�x(0, 0, X0, Y0): RR = Sqr(X0 ^ 2 + Y0 ^ 2)
                 
                 X0 = RR * Dcos(�p�x + 90): Y0 = RR * Dsin(�p�x + 90)
                 '* 2002.11.13
                 Select Case Y0
                 Case Is > 0:
                 Case 0:     Print #60, "[P:" + FD2(X0, Y0) + "]\[Arc1:" + FD3(DD / 2, 180, 360) + "]"
                 Case Else:  Print #60, "[P:" + FD2(X0, Y0) + "]\[Cir:" + FD1(DD / 2) + "]"
                 End Select
                 Next ii
            Print #60, "[con:]"
     
     
      
      '[[[ �S�� F11 (FX1) ]]]
            Print #60, "[�F:��]\[�:���]"
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX1"): i2 = 1: Y0 = -�S��L_YL / 2
               �S�،a$ = �S��_�a$:
               For ii = 1 To �S��P_����:          X0 = .BYL - �S��P_�ʒu(ii)
                     Select Case i2
                     Case 1:      D1$ = ���r_��b("FX1����"): i2 = 2
                     Case Else:   D1$ = ���r_��b("FX1����R"): i2 = 1
                     End Select
                     '*2002.10.28
                     Call P_���r_�S�ؐ}("", "V", "R", X0, Y0)
                     Next ii
       
       Print #60, "[�F:��]"
      '[[[ �S�� F11 (FX1) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1"):
               Yn = Int(1 * �S��P_���� / 3):   Y0 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX1")
               D01$ = "": �S��n = 0
               X0 = .BYL - �S��P_�ʒu(1)
               For ii = 1 To �S��P_����:        X1 = .BYL - �S��P_�ʒu(ii)
                     �S��n = �S��n + 1: Lpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                     D01$ = D01$ + "+" + F9(-Lpit): X9 = X1
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   XLL = -X9 + .BYL + Mark_L1
                   Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
      
      
      
      '[[[ �S�� F12,F13 (FX2,FX3) ]]]
                '         F12=D32_K127_@124+126+80x126_B5655+W+4655_HF+2746                           'X ��S��  @�߯��͑��ʂ���
                '         F13=D32_B5655+W+4655_HF+2746�`2246                                          'X ��S��  @�߯��� F12 �Œ�`
               
            Print #60, "[�F:��]\[�:���]"
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2"): Y0 = �S��L_YL / 2
               ���r_�S�؃� = 270
               i2 = 1
               For ii = 1 To �S��P_����:     X0 = .BYR - �S��P_�ʒu(ii)
                     '  FX3=""  �̏ꍇ FX2 ���g�p����
                     Select Case X0
                     Case Is > .BYL - .BYL_�[
                            Select Case i2
                            Case 1:      D1$ = ���r_��b("FX3����"): i2 = 2
                            Case Else:   D1$ = ���r_��b("FX3����R"): i2 = 1
                            End Select
                     Case Is > -(.BYR - .BYR_�[)
                            Select Case i2
                            Case 1:      D1$ = ���r_��b("FX2����"): i2 = 2
                            Case Else:   D1$ = ���r_��b("FX2����R"): i2 = 1
                            End Select
                     Case Else
                            Select Case i2
                            Case 1:      D1$ = ���r_��b("FX3����"): i2 = 2
                            Case Else:   D1$ = ���r_��b("FX3����R"): i2 = 1
                            End Select
                     
                     End Select
                     Call P_���r_�S�ؐ}("", "V", "", X0, Y0)
                     Next ii
      
      
      '[[[ �S�� F12 (FX2) ���� �a ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1"):
               Yn = Int(3 * �S��P_���� / 4):   Y0 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX2")
               X_01 = -.BYL + .BYL_�[
               X_02 = .BYR - .BYR_�[
               
               D01$ = "": �S��n = 0
               X0 = 0
               For ii = 1 To �S��P_����:        X1 = -.BYL + �S��P_�ʒu(ii)
                     Select Case X1
                     Case Is < X_01
                     Case Is < X_02
                                    �S��n = �S��n + 1: Lpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                                    D01$ = D01$ + "+" + F9(-Lpit): X9 = X1: If X0 = 0 Then X0 = X1
                     Case Else
                     End Select
                     Next ii
                   
                   Print #60, "[P:" + FD2(-X0, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   XLL = X9 + .BYL + Mark_L1
                   Print #60, "[P:" + FD2(-X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
      
      
      '[[[ �S�� F11 ���@ ]]]
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX1")
                  ���@�ʒuD2 = ���@�ʒuD1 + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D2 = ��D1 - ���r_���@��_Pit_��̐}
                  Print #60, "  [P:" + FD2(-.BYR, ���@�ʒuD2) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(�S��P_L(ii), 0, ��D2) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - �S��P_�ʒu(�S��P_����), 0, 0) + ",,R=7]"
                    Print #60, D11$
      
      
      '[[[ �S�� F13 (FX3) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               If ���r_��b("FX3") <> "" Then
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1"):
               Yn = Int(2 * �S��P_���� / 3):   Y0 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX2"): ' D1$ = ���r_��b("FX3") err  Pit �� FX2 �œ���
               If D1$ <> "" Then
               X_01 = -.BYL + .BYL_�[
               X_02 = .BYR - .BYR_�[
               
               D01$ = "": D02$ = "": �S��n = 0
               X01 = -.BYL + �S��P_�ʒu(1)
               X02 = 0
               For ii = 1 To �S��P_����:        X1 = -.BYL + �S��P_�ʒu(ii)
                     Select Case X1
                     Case Is < X_01
                                    �S��n = �S��n + 1: Lpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                                    D01$ = D01$ + "+" + F9(-Lpit): X9 = X1
                     Case Is < X_02
                     Case Else
                                    �S��n = �S��n + 1: Lpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                                    D02$ = D02$ + "+" + F9(-Lpit): X9 = X1: If X02 = 0 Then X02 = X1
                     End Select
                     Next ii
                   
                   D1$ = ���r_��b("FX3")
                   Print #60, "[P:" + FD2(-X01, Y0) + "]\[<:0," + Mid(D01$, 2) + ",-]"
                   Print #60, "[P:" + FD2(-X02, Y0) + "]\[<:0," + Mid(D02$, 2) + ",-]"
                   XLL = X9 + .BYL + Mark_L1
                   Print #60, "[P:" + FD2(-X9, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
                  End If
      
             End If
       
       
      
      
      '[[[ �S�� F12,F13 ���@ ]]]
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2"):
                  ���@�ʒu3 = ���@�ʒu2 - ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ��2 - ���r_���@��_Pit_��̐} - 2
                  Print #60, "  [P:" + FD2(-.BYR, ���@�ʒu3) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(�S��P_L(ii), 0, -��3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - �S��P_�ʒu(�S��P_����), 0, 0) + ",,R=7]"
                    Print #60, D11$
     
     
     
     
      '[[[ �S�� F1 (FY1) ]]]
            Print #60, "[�F:��]\[�:���]"
                '     F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y ��S��  @�߯��͑��ʂ���
               
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1")
               �S�،a$ = �S��_�a$:
               For ii = 1 To �S��P_����:        Y0 = -.BXL + �S��P_�ʒu(ii)
                     If Y0 >= 0 Then Exit For
                     Call P_���r_�S�ؐ}("", "V", "R", -�S��L_Xcen, Y0)
                     Next ii
       
       Print #60, "[�F:��]"
      '[[[ �S�� F1 (FY1) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FX1"):
               Xn = Int(2 * �S��P_���� / 3):   X0 = .BYR - (�S��P_�ʒu(Xn) + �S��P_�ʒu(Xn + 1)) / 2
               
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1")
               D01$ = "": �S��n = 0
               Y0 = -.BXL + �S��P_�ʒu(1)
               For ii = 1 To �S��P_����:        Y1 = -.BXL + �S��P_�ʒu(ii)
                     If Y1 >= 0 Then Exit For
                     �S��n = �S��n + 1: Lpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                     D01$ = D01$ + "+" + F9(-Lpit): Y9 = Y1
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   YLL = .BXL - Y9 + Mark_D1
                   Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
      
      
      '[[[ �S�� F1 (FY1) ���@ ]]]
                  ���@�ʒuL3 = ���@�ʒuL2 + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ��L2 - ���r_���@��_Pit_��̐}
                  Print #60, "  [P:" + FD2(���@�ʒuL3, -.BXL) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, �S��P_L(ii), -��L3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BX - �S��P_�ʒu(�S��P_����), 0) + ",,R=7]"
                    Print #60, D11$
     
     
      '[[[ �S�� F2 (FY2) ]]]
            Print #60, "[�F:��]\[�:���]"
                  '       F2=D32_K95_@95+155+80x125+155_B3563+1092+W+2092+3563_HF+2232+500            'Y ��S��  @�߯��͑��ʂ���
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FY2"): i2 = 1
               �S�،a$ = �S��_�a$:
               ���r_�S�؃� = 0
               For ii = �S��P_���� To 1 Step -1:         Y0 = -.BXL + �S��P_�ʒu(ii)
                     If Y0 < 0 Then Exit For
                     Select Case i2
                     Case 1:      D1$ = ���r_��b("FY2����"): i2 = 2
                     Case Else:   D1$ = ���r_��b("FY2����R"): i2 = 1
                     End Select
                     Call P_���r_�S�ؐ}("", "V", "R", -�S��L_Xcen, Y0)
                     Next ii
     
     
      '[[[ �S�� F2 (FY2) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FX1"):
               Xn = Int(1 * �S��P_���� / 3):   X0 = .BYR - (�S��P_�ʒu(Xn) + �S��P_�ʒu(Xn + 1)) / 2
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
               D01$ = "": �S��n = 0
               Y0 = -.BXL
               For ii = 1 To �S��P_����:        Y1 = -.BXL + �S��P_�ʒu(ii)
                     If Y1 >= 0 Then
                         �S��n = �S��n + 1: Lpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                         D01$ = D01$ + "+" + F9(Lpit): If Y0 < 0 Then Y0 = Y1
                          End If
                     Next ii
                   
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90," + Mid(D01$, 2) + ",-]"
                   YLL = .BXR - Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
      
     
     
       Print #60, "[�F:��]"
       'Print #60, "[�F:��]"
      '[[[ �S�� FH1 (f1) ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                ' Y �E�[( ���W�͋t����   Y9 �̈ʒu����) ���t
                '        f1 = 314 - D19_K69_B801_H2804 + f                           '�c�S��
               
               '        fpit=X375+125+6+2+2_@375+39x250              '###
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               YRR = �S��L_YL / 2
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FH1"): LLL2 = �S��L_YL: ' ��c�ؕ� ����
               
               D1$ = ���r_��b("Fpit")
                    �S��pit = ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 + ��c��.�S�؊ԊuX2)
                    LLL1 = ��c��.Y�S��pit * ��c��.�S�؊ԊuX1: ' ��c�ؕ�
               Zure = -20
               X01 = �y�؋��r_��.BYL: X02 = -�y�؋��r_��.BYR: ��L = -�y�؋��r_��.BXL
               
               i2 = 1:   f1�� = 0: f2�� = 0
               For ii = 1 To �S��P_����
                   X0 = -.BYR + �S��P_�ʒu(ii):    Y1 = -.BXL + ��c��.Start_X - (LLL2 - LLL1) / 2:
                      
                   Select Case i2
                   Case 1:
                      Do
                           If Y1 + LLL2 > YRR Then Exit Do
                           Moj$ = "": LLLB = LLL2
                           Select Case X0
                           Case Is > X01: If Y1 > 0 Then Exit Do
                                          If Y1 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y1)
                           Case Is > X02: If Y1 + LLL2 > ��L Then Exit Do
                           Case Else:    If Y1 > 0 Then Exit Do
                                          If Y1 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y1)
                           End Select
                           Print #60, "[P:" + FD2(X0 + Zure, Y1) + "]\[�M2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y1 = Y1 + �S��pit
                           Loop
                           i2 = 2
                 Case Else:
                       Y2 = -.BXL + ��c��.Start_X + ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 - ��c��.�S�؊ԊuX3) - (LLL2 - LLL1) / 2:
                      Do
                           If Y2 + LLL2 > YRR Then Exit Do
                           Moj$ = "": LLLB = LLL2
                           Select Case X0
                           Case Is > X01: If Y2 > 0 Then Exit Do
                                          If Y2 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y2)
                           Case Is > X02: If Y2 + LLL2 > ��L Then Exit Do
                           Case Else:     If Y2 > 0 Then Exit Do
                                          If Y2 + LLL2 > 0 Then Moj$ = ",L": LLLB = Abs(Y2)
                           End Select
                           Print #60, "[P:" + FD2(X0 + Zure, Y2) + "]\[�M2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y2 = Y2 + �S��pit
                           Loop
                           i2 = 1
                 End Select
        
        
               Next ii
       
       Print #60, "[�F:��]"
     
     End With
     End Sub


Function P_FH_��(����$)
     '  ����$="f1"  f1��   ����$="f2"  f2��
     
     With �y�؋��r_��b
               ���r�� = ���r_�S�؃�
               ���r_�S�؃� = 180:   D1$ = ���r_��b("FX2")
               YRR = �S��L_YL / 2
               ���r_�S�؃� = 0: D1$ = ���r_��b("FH1"): LLL2 = �S��L_YL: ' ��c�ؕ� ����
               
               ���r_�S�؃� = ���r��
               D1$ = ���r_��b("Fpit")
                    �S��pit = ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 + ��c��.�S�؊ԊuX2)
                    LLL1 = ��c��.Y�S��pit * ��c��.�S�؊ԊuX1: ' ��c�ؕ�
               'Zure = -20
               X01 = �y�؋��r_��.BYL: X02 = -�y�؋��r_��.BYR:
               
               i2 = 1: f1�� = 0: f2�� = 0
               For ii = 1 To �S��P_����
                   X0 = -.BYR + �S��P_�ʒu(ii):    Y1 = -.BXL + ��c��.Start_X - (LLL2 - LLL1) / 2:
                   
                   Select Case i2
                   Case 1:
                      Do
                           Moj$ = "": LLLB = LLL2
                           If Y1 + LLL2 > YRR Then Exit Do
                           Select Case X0
                           Case Is > X01: f2�� = f2�� + 1
                           Case Is > X02:
                                       Select Case Y1
                                       Case Is <= -�y�؋��r_��.BXL - LLL2: f1�� = f1�� + 1
                                       Case Is <= �y�؋��r_��.BXR: Moj$ = "*"
                                       Case Else: f1�� = f1�� + 1
                                       End Select
                                       
                           
                           Case Else: f2�� = f2�� + 1
                           End Select
                           'If Moj$ = "" Then Print #60, "[P:" + FD2(X0 + Zure, Y1) + "]\[�M2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y1 = Y1 + �S��pit
                           Loop
                           i2 = 2
                 Case Else:
                       Y2 = -.BXL + ��c��.Start_X + ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 - ��c��.�S�؊ԊuX3) - (LLL2 - LLL1) / 2:
                      Do
                           Moj$ = "": LLLB = LLL2
                           If Y2 + LLL2 > YRR Then Exit Do
                           Select Case X0
                           Case Is > X01: f2�� = f2�� + 1
                           Case Is > X02:
                                       Select Case Y2
                                       Case Is <= -�y�؋��r_��.BXL - LLL2: f1�� = f1�� + 1
                                       Case Is <= �y�؋��r_��.BXR: Moj$ = "*"
                                       Case Else: f1�� = f1�� + 1
                                       End Select
                           Case Else: f2�� = f2�� + 1
                           End Select
                           'If Moj$ = "" Then Print #60, "[P:" + FD2(X0 + Zure, Y2) + "]\[�M2:" + FD4(0, LLLB, 1.5, -45) + Moj$ + "]"
                           Y2 = Y2 + �S��pit
                           Loop
                           i2 = 1
                 End Select
                 Next ii
              End With
              
              Select Case UCase(����$)
              Case "F1": P_FH_�� = f1��
              Case Else: P_FH_�� = f2��
              End Select
    
    End Function






Sub P_��b_�f��A()
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     
          �YH = 12 * ����}_Scale
     
     With �y�؋��r_��b
     
       If .BYL_�[ = 0 Then ��b���z = 0 Else ��b���z = .H_U / .BYL_�[:
       ��b�p�x = Calu�p�x(0, 0, .BYL_�[, .H_U)
       
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 12 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 15 * ����}_Scale
                 Mark_R1 = 15 * ����}_Scale
       
     
      '[[[ �i�}�� ]]]
         Y0 = .H + (���@���ʒu_��bA�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ`�|�`�S�ؔz�ؐ}")
      
      '[[[ ��b��� ]]]
            Print #60, "[�F:��]\[�:���]"
         Print #60, "[P:" + FD2(-.BYR, 0) + "]\[L:" + FD2(0, .H_D) + "|" + FD2(.BYR_�[, .H_U) + "|" + FD2(.BYR_�� - �y�؋��r_��.BYR, 0) + "|" + FD2(0, 400) + "]"
         Print #60, "[p:-50,0]\[�ؒfM1:" + FD4(�y�؋��r_��.BY + 100, 0, 5, 3) + "]"
         Print #60, "[P:" + FD2(.BYL, 0) + "]\[L:" + FD2(0, .H_D) + "|" + FD2(-.BYL_�[, .H_U) + "|" + FD2(-.BYL_�� + �y�؋��r_��.BYL, 0) + "|" + FD2(0, 400) + "]"
         Print #60, "[dot:]\[P:" + FD2(-�y�؋��r_��.BYR, .H) + "]\[L:" + FD2(�y�؋��r_��.BY, 0) + "]\[con:]"
         Print #60, "   [P0:]\[L:" + FD2(-.BYR - .��con_t, 0) + "|" + FD2(0, -.��con_t) + "|" + FD2(.BY + 2 * .��con_t, 0) + "|" + FD2(0, .��con_t) + "|" + FD2(-.BYR - .��con_t, 0) + "]"
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .H + ���@���ʒu_��bA�f��.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_��bA�f��.U�J�� - 1 + .H_U / ����}_Scale
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(.BY, 0, -��1) + "]"
          
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_��bA�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  ��21 = ���@���ʒu_��bA�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1 - 400 / ����}_Scale
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu2) + "]"
                  D1$ = "[��:" + FD3(.BYR_�[, 0, -��2) + "|" + FD3(.BYR_�� - �y�؋��r_��.BYR, 0, -��21) + "|"
                  D1$ = D1$ + FD3(�y�؋��r_��.BY, 0, -��21) + "|" + FD3(.BYL_�� - �y�؋��r_��.BYL, 0, -��2) + "|" + FD3(.BYL_�[, 0, 0) + "]"
                  Print #60, D1$
          
          ' D���@
                  ���@�ʒuD1 = -���@���ʒu_��bA�f��.D�J�� * ����}_Scale
                  ��D1 = ���@���ʒu_��b����.D�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒuD1) + "]\[��:" + F9(��D1) + ":" + FD3(.BY, 0, ��D1) + "]"
          
          ' L���@
                  ���@�ʒuL1 = -.BYR - ���@���ʒu_��bA�f��.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_��bA�f��.L�J�� - 1
                  ��L11 = ���@���ʒu_��bA�f��.L�J�� - 1 + .BYR_�[ / ����}_Scale
                  Print #60, "[P:" + FD2(���@�ʒuL1, 0) + "]\[��:" + F9(-��L1) + ":" + FD3(0, .H, -��L11) + "]"
          
                  If .H_U = 0 Then
                       ���@�ʒuL2 = ���@�ʒuL1
                       Else
                       ���@�ʒuL2 = ���@�ʒuL1 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                       ��L2 = ���@���ʒu_��bA�f��.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                       Print #60, "[P:" + FD2(���@�ʒuL2, 0) + "]\[��:" + FD3(0, .H_D, -��L2) + "|" + FD3(0, .H_U, 0) + "]"
                       End If
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            Y1 = -.��con_t: Y2 = -.��con_t - �YH
            For ii = 1 To �Y�ʒu_Y��
                 X0 = -�Y�ʒu_Ypos(ii): DD = �Y�ʒu_�a(1) / 2
                 X1 = X0 - DD: X2 = X0 + DD
                 Print #60, "[P:" + FD2(X1, 0) + "]\[dot:]\[L:" + FD2(0, -.��con_t) + "]\[con:]\[L:" + FD2(0, -�YH) + "]"
                 Print #60, "[P:" + FD2(X2, 0) + "]\[dot:]\[L:" + FD2(0, -.��con_t) + "]\[con:]\[L:" + FD2(0, -�YH) + "]"
                 Print #60, "[�ؒf�`1:" + FD5(X1, Y2, X2, Y2, 90) + "]"
                 
                 Y2 = -.��con_t - �YH
                 Call P_���r_Center_Line(X0, 0, X0, Y2, 0, 0)

                 Next ii
            Print #60, "[con:]"
     
      '[[[ �Y ���@ ]]]
                  ���@�ʒuD2 = ���@�ʒuD1 + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D2 = ��D1 - ���r_���@��_Pit_��̐}
            
                  Print #60, "  [P:" + FD2(.BYL, ���@�ʒuD2) + "]"
                        D11$ = "  [��:":   XL1 = -.BYL
                        For ii = �Y�ʒu_Y�� To 1 Step -1
                              LL1 = XL1 - �Y�ʒu_Ypos(ii): XL1 = �Y�ʒu_Ypos(ii)
                              D11$ = D11$ + FD3(LL1, 0, ��D2) + "|"
                              Next ii
                              D11$ = D11$ + FD3(XL1 - .BYR, 0, 0) + "]"
                    Print #60, D11$
     
      '[[[ �S�� F1 (FY1) ]]]
            Print #60, "[�F:��]\[�:���]"
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FY1")
               Call P_���r_�S�ؐ}("", "", "", -�S��L_Xcen, -�S��L_Ycen + �S��_SK�ʒu)
     
      '[[[ �S�� F1 (FY1) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX1")
               Xn = Int(2 * �S��P_���� / 3) + 2
               X1 = .BYR - (�S��P_�ʒu(Xn) + �S��P_�ʒu(Xn + 1)) / 2
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FY1")
               �S�ؔ�� = �S��_SK�ʒu
               Print #60, "[P:" + FD2(X1, �S�ؔ��) + "]\[<:270,0]\[L:" + FD2(0, -Mark_D1 - �S�ؔ��) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_�S��_������(1)
      
      
      
      '[[[ �S�� F2 (FY2) ]]]
            Print #60, "[�F:��]\[�:���]"
               '       F2=D32_K95_@95+155+40x125+40x125+155_B3563+1092+W+2092+3563_HF+2328+297.8      'Y ��S��  @�߯��͑��ʂ���
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
               �S�ؔ�� = �S��_SK�ʒu * Dcos(��b�p�x): Y0 = .H - �S��L_YL - �S�ؔ��
               Call P_���r_�S�ؐ}("", "", "", -�S��L_Xcen, Y0)
     
      
      
      '[[[ �S�� F2 (FY2) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX1")
               Xn = Int(�S��P_���� / 2) + 4
               X1 = .BYR - (�S��P_�ʒu(Xn) + �S��P_�ʒu(Xn + 1)) / 2
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
               �S�؉���� = �S��_�����
               �S�ؔ�� = �S��_SK�ʒu * Dcos(��b�p�x): Y0 = .H - �S�ؔ��
               Print #60, "[P:" + FD2(X1, Y0) + "]\[<:90]\[L:" + FD2(0, Mark_U1 + �S�ؔ��) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_�S��_������(1)
      
      
             '[[[ �S�� F2 (FY2) �� ��� ���@ ]]]
                              ���r_�S�؃� = 180:  D1$ = ���r_��b("FX1")
                              �\��X = �S��P_�ʒu(7) + (�S��P_�ʒu(6) - �S��P_�ʒu(5)) / 2
                     ���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
                     ��b���z�� = Calu�p�x(0, 0, .BYR_�[, .H_U)
                     �S�ؔ�� = �S��_SK�ʒu: Moj$ = F9(�S�ؔ��)
                     LLL = �\��X
                     DXL = �S�ؔ�� * Dsin(��b���z��): DYL = �S�ؔ�� * Dcos(��b���z��)
                     X1 = .BYR - LLL - DXL: Y1 = .H_D + LLL * ��b���z - DYL
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[��:" + FD3(DXL, DYL, 0) + "," + Moj$ + ",RL=7]"
      
             '[[[ �S�� F2 (FY2) ����� ���@ ]]]
                     Print #60, "[P:" + FD2(.BXR - �S�؉����, .H_D - 250) + "]\[��:" + FD3(�S�؉����, 0, 0) + ",,RL=7]"
      
      
      
      
      
      '[[[ �S�� F11 (FX1) ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
               '        F11=D32_K127_@124+126+80x126_BF+10014+F                                     'X ��S��  @�߯��͑��ʂ���
               
               '���r_�S�؃� = 180:  D1$ = ���r_��b("FY1")
               '�S��D_F1 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX1")
               '�S�،a$ = �S��_�a$: Y0 = �S��_SK�ʒu - �S��D_F1 / 2
               �S�،a$ = �S��_�a$: Y0 = �S��_SK�ʒu
               For ii = 1 To �S��P_����:        X0 = �S��P_�ʒu(ii) - .BYR
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                     Next ii
       
      '[[[ �S�� F11 ���@ ]]]
                  ���@�ʒuD3 = ���@�ʒuD2 + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D3 = ��D2 - ���r_���@��_Pit_��̐}
                  Print #60, "  [P:" + FD2(-.BYR, ���@�ʒuD3) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(�S��P_L(ii), 0, ��D3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - �S��P_�ʒu(�S��P_����), 0, 0) + ",,R=7]"
                    Print #60, D11$
                        
      '[[[ �S�� F12,F13 (FX2,FX3) ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                '         F12=D32_K127_@124+126+80x126_B5655+W+4655_HF+2746                           'X ��S��  @�߯��͑��ʂ���
                '         F13=D32_B5655+W+4655_HF+2746�`2246                                          'X ��S��  @�߯��� F12 �Œ�`
               
               
               '���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
                '      �S��D_F2 = Val(Mid(�S��_�a$, 2))
               
               X01 = -.BYR: X02 = .BYL
               �S�،��z = ��b���z
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX3")
               �S�،a3$ = �S��_�a$: �S�ؔ��3 = �S��_SK�ʒu * Dcos(��b�p�x): DY3 = �S�ؔ��3
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX2")
               �S�،a2$ = �S��_�a$: �S�ؔ��2 = �S��_SK�ʒu * Dcos(��b�p�x): DY2 = �S�ؔ��2
               
               X1 = .BYR_�[ - .BYR: X2 = .BYL - .BYL_�[
               For ii = 1 To �S��P_����:     X0 = �S��P_�ʒu(ii) - .BYR:     �S�،a$ = �S�،a3$: DY = DY3
                     Select Case X0
                     Case Is < X1:   DY1 = (X0 - X01) * �S�،��z: Y0 = .H_D + DY1 - DY: '+ �S��D_F2 / 2
                     Case Is < X2:   �S�،a$ = �S�،a2$: DY = DY2
                                     Y0 = .H - DY: ' + �S��D_F2 / 2
                     Case Else:      DY1 = (X02 - X0) * �S�،��z: Y0 = .H_D + DY1 - DY: '+ �S��D_F2 / 2
                     End Select
                     
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                     Next ii
      
      '[[[ �S�� F12,F13 ���@ ]]]
                  ���@�ʒuU3 = .H + ���@���ʒu_��bA�f��.U�J�� * ����}_Scale - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��U3 = ���@���ʒu_��b����.U�J�� - 2 * ���r_���@��_Pit_��̐} - 2
                  Print #60, "  [P:" + FD2(-.BYR, ���@�ʒuU3) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(�S��P_L(ii), 0, -��U3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(.BY - �S��P_�ʒu(�S��P_����), 0, 0) + ",,R=7]"
                    Print #60, D11$
       
      '[[[ �S�� F14 (FX4) ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
               '         F3=D19_K85_@300+9x200_B10361_H190                                               'Y ���S��  @�߯��͉�����
               '���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
                '      �S��D_F2 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FX4")
               �S�،a$ = �S��_�a$: �S�ؔ�� = �S��_SK�ʒu:
             '  X1 = -.BYR + �S�ؔ�� + �S��D_F2 / 2: X2 = .BYL - �S�ؔ�� - �S��D_F2 / 2
               X1 = -.BYR + �S�ؔ��: X2 = .BYL - �S�ؔ��
               For ii = 1 To �S��P_����:     Y0 = �S��P_�ʒu(ii)
                     Print #60, "[P:" + FD2(X1, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                     Print #60, "[P:" + FD2(X2, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                     Next ii
      
      '[[[ �S�� F14 (FX4)  Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               '���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
                '      �S��D_F2 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FX4")
               �S�،a$ = �S��_�a$: �S�ؔ�� = �S��_SK�ʒu:
              ' X1 = -.BYR + �S�ؔ�� + �S��D_F2 / 2: X2 = .BYL - �S�ؔ�� - �S��D_F2 / 2
               X1 = -.BYR + �S�ؔ��: X2 = .BYL - �S�ؔ��
               XL = 15 * ����}_Scale: YL = 5 * ����}_Scale
               For ii = 1 To �S��P_����:     Y1 = �S��P_�ʒu(ii)
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-XL, -YL) + "]"
                     Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(XL, -YL) + "]"
                     Next ii
               X01 = X1 - XL: X02 = X2 + XL
               Y01 = �S��P_�ʒu(�S��P_����) - YL
               YLL = Y01 + Mark_D1
                     Print #60, "[P:" + FD2(X01, Y01) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_�S��_������(2)
                     Print #60, "[P:" + FD2(X02, Y01) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                     Call P_�S��_������(2)
      
      
      
      '[[[ �S�� F14 ���@ ]]]
                  ���@�ʒuL3 = ���@�ʒuL2 + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ��L2 - ���r_���@��_Pit_��̐}
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FX4")
                  Print #60, "  [P:" + FD2(���@�ʒuL3, 0) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): 'If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, �S��P_L(ii), -��L3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .H_D - �S��P_�ʒu(�S��P_����), 0) + "]"
                    Print #60, D11$
       
       
       
      '[[[ �S�� FH1 (f1)  ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                ' Y �E�[( ���W�͋t����   Y9 �̈ʒu����) ���t
                
                '        f1 = 314 - D19_K69_B801_H2804 + f                           '�c�S��
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               DXL = Val(Mid(�S��_�a$, 2)) / 2
               
               X01 = -.BYR: X02 = .BYL
               X_01 = .BYR_�[ - .BYR: X_02 = .BYL - .BYL_�[
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FH1"):  LLY = �S��L_YL: Y0 = �S��_SK�ʒu
               D1$ = ���r_��b("Fpit")
               i2 = 1
               For ii = 1 To �S��P_����: X0 = -.BYR + �S��P_�ʒu(ii)
                      Select Case i2
                      Case 1:       Print #60, "[con:]": i2 = 2
                      Case Else:     Print #60, "[dot:]": i2 = 1
                      End Select
                      
                      Select Case X0
                      Case Is < X_01:   DY1 = -(X0 - X_01) * �S�،��z
                      Case Is < X_02:   DY1 = 0
                      Case Else:      DY1 = (X0 - X_02) * �S�،��z
                      End Select
                      
                      Print #60, "[P:" + FD2(X0 - DXL, Y0) + "]\[L:" + FD2(0, LLY - DY1) + "]"
                      Next ii
               
       Print #60, "[con:]\[�F:��]"
      '[[[ �S�� FH1 (f1)  Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FX4")
               Yn = �S��P_���� - 1:    Y0 = (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn - 1)) / 2
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               DXL = Val(Mid(�S��_�a$, 2)) / 2
               
               X_01 = .BYR_�[ - .BYR: X_02 = .BYL - .BYL_�[
               D1$ = ���r_��b("Fpit"):
               X0 = 0:    X1 = -.BYL + ��c��.Start_Y: D01$ = "": D02$ = ""
               For ii = 1 To �S��P_����: X1 = -.BYR + �S��P_�ʒu(ii)
                      Select Case X1
                      Case Is < X_01:
                      Case Is < X_02:  X1 = X1 - DXL: �S��pit = X1 - X9: If X0 = 0 Then X0 = X1: �S��pit = 0
                                       D01$ = D01$ + "+" + F9(�S��pit):   X9 = X1
                      Case Else:
                      End Select
                      Next ii
               
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                   XLL = -X0 + .BYR + Mark_R1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(1)
       
      '[[[ �S�� FH2 (f2)  Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               If ���r_��b("FH2") <> "" Then
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FX4")
               Yn = �S��P_���� - 1 - 3: If Yn < 2 Then Yn = 2
               Y0 = (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn - 1)) / 2
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               DXL = Val(Mid(�S��_�a$, 2)) / 2
               
               X_01 = .BYR_�[ - .BYR: X_02 = .BYL - .BYL_�[
               D1$ = ���r_��b("Fpit"):
               X0 = 0: X01 = 0: X02 = 0: X1 = -.BYL + ��c��.Start_Y: D01$ = "": ' D02$ = ""
               For ii = 1 To �S��P_����: X1 = -.BYR + �S��P_�ʒu(ii):
                      Select Case X1
                      Case Is < X_01:   X1 = X1 - DXL: �S��pit = X1 - X9: If X0 = 0 Then X0 = X1: �S��pit = 0
                                        D01$ = D01$ + FP1(�S��pit):  X9 = X1
                      Case Is < X_02:
                      Case Else:        X1 = X1 - DXL: �S��pit = X1 - X9: If X0 = 0 Then X0 = X1: �S��pit = 0
                                        D01$ = D01$ + FP1(�S��pit):  X9 = X1
                      
                      End Select
                      Next ii
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                   XLL = -X0 + .BYR + Mark_R1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(1)
               End If
       
       
       Print #60, "[�F:��]"
     
     End With

     End Sub
Sub P_��b_�f��B()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     
          �YH = 12 * ����}_Scale
     
     With �y�؋��r_��b
     
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 7 * ����}_Scale
                 Mark_R1 = 5 * ����}_Scale
     
      '[[[ �i�}�� ]]]
         X0 = -.H - (���@���ʒu_��bB�f��.L�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(X0, 0, 90, "�f�ʂa�|�a�S�ؔz�ؐ}")
      
      
      '[[[ ��b��� ]]]
            Print #60, "[�F:��]\[�:���]"
         Print #60, "[con:]"
         Print #60, "[P:" + FD2(0, -.BXL) + "]\[L:" + FD2(-.H, 0) + "|" + FD2(0, .BXL - �y�؋��r_��.BXL) + "|" + FD2(-400, 0) + "]"
         Print #60, "[p:0,-50]\[�ؒfM1:" + FD4(0, �y�؋��r_��.BX + 100, 5, 3) + "]"
         Print #60, "[P:" + FD2(0, .BXR) + "]\[L:" + FD2(-.H, 0) + "|" + FD2(0, -.BXR + �y�؋��r_��.BXR) + "|" + FD2(-400, 0) + "]"
         
         Print #60, "[dot:]\[P:" + FD2(-.H, -�y�؋��r_��.BXL) + "]\[L:" + FD2(0, �y�؋��r_��.BX) + "]\[con:]"
         If .H_U > 0 Then Print #60, "[dot:]\[P:" + FD2(-.H_D, -.BXL) + "]\[L:" + FD2(0, .BX) + "]\[con:]"
         
         
         Print #60, "   [P0:]\[L:" + FD2(0, -.BXL - .��con_t) + "|" + FD2(.��con_t, 0) + "|" + FD2(0, .BX + 2 * .��con_t) + "|" + FD2(-.��con_t, 0) + "|" + FD2(0, -.BXR - .��con_t) + "]"
     
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .BXR + ���@���ʒu_��bB�f��.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_��bB�f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.H, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(.H, 0, -��1) + "]"
          
                  If .H_U = 0 Then
                       ���@�ʒu2 = ���@�ʒu1
                       Else
                       ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                       ��2 = ���@���ʒu_��bB�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                       Print #60, "[P:" + FD2(-.H, ���@�ʒu2) + "]\[��:" + FD3(.H_U, 0, -��2) + "|" + FD3(.H_D, 0, 0) + "]"
                       End If
                  
          ' L���@
                  ���@�ʒuL1 = -.H - ���@���ʒu_��bB�f��.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_��bB�f��.L�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.BXL) + "]\[��:" + F9(-��L1) + ":" + FD3(0, .BX, -��L1) + "]"
          
                  ���@�ʒuL2 = ���@�ʒuL1 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_��bB�f��.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1 - 400 / ����}_Scale
                  Print #60, "[P:" + FD2(���@�ʒuL2, -.BXL) + "]\[��:" + FD3(0, .BXL - �y�؋��r_��.BXL, -��L2) + "|" + FD3(0, �y�؋��r_��.BX, -��L2) + "|" + FD3(0, .BXR - �y�؋��r_��.BXR, 0) + "]"
     
          ' R���@
                  ���@�ʒuR1 = ���@���ʒu_��bB�f��.R�J�� * ����}_Scale
                  ��R1 = ���@���ʒu_��bB�f��.R�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuR1, -.BXL) + "]\[��:" + F9(��R1) + ":" + FD3(0, .BX, ��R1) + "]"
     
     
      '[[[ �Y ]]]
            Print #60, "[�F:��]\[�:���]"
            X1 = .��con_t: X2 = .��con_t + �YH
            For ii = 1 To �Y�ʒu_X��
                 Y0 = �Y�ʒu_Xpos(ii): DD = �Y�ʒu_�a(1) / 2
                 Y1 = Y0 - DD: Y2 = Y0 + DD
                 Print #60, "[P:" + FD2(0, Y1) + "]\[dot:]\[L:" + FD2(.��con_t, 0) + "]\[con:]\[L:" + FD2(�YH, 0) + "]"
                 Print #60, "[P:" + FD2(0, Y2) + "]\[dot:]\[L:" + FD2(.��con_t, 0) + "]\[con:]\[L:" + FD2(�YH, 0) + "]"
                 Print #60, "[�ؒf�`1:" + FD5(X2, Y1, X2, Y2, 90) + "]"
                 
                 Print #60, "[P:" + FD2(0, Y0) + "]\[cen:]\[L:" + FD2(.��con_t + �YH, 0) + "]"
                 Next ii
            Print #60, "[con:]"
     
      '[[[ �Y ���@ ]]]
                  ���@�ʒuR2 = ���@�ʒuR1 - ���r_���@��_Pit_��̐} * ����}_Scale
                  ��R2 = ��R1 - ���r_���@��_Pit_��̐}
            
                  Print #60, "  [P:" + FD2(���@�ʒuR2, -.BXL) + "]"
                        D11$ = "  [��:":   YL1 = -.BXL
                        For ii = 1 To �Y�ʒu_X��
                              LL1 = �Y�ʒu_Xpos(ii) - YL1: YL1 = �Y�ʒu_Xpos(ii)
                              D11$ = D11$ + FD3(0, LL1, ��R2) + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BXR - YL1, 0) + "]"
                    Print #60, D11$
       
       Print #60, "[�F:��]"
      '[[[ �S�� F11 (FX1) ]]]
            Print #60, "[�F:��]\[�:���]"
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FX1")
               Call P_���r_�S�ؐ}("", "", "R", -�S��L_Xcen - �S��_SK�ʒu, -�S��L_Ycen)
     
      '[[[ �S�� F11 (FX1) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1")
               Yn = Int(2 * �S��P_���� / 3):    Y1 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               Yn = Int(1 * �S��P_���� / 3):    Y2 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               
               ���r_�S�؃� = 900:  D1$ = ���r_��b("FX1")
               �S�ؔ�� = �S��_SK�ʒu
               Print #60, "[P:" + FD2(-�S�ؔ��, Y1) + "]\[<:0,0]\[L:" + FD2(Mark_R1, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_�S��_������(1)
      
             '[[[ �S�� F11 (FX1) ��� ]]]
                     �S�ؔ�� = �S��_SK�ʒu
                     Print #60, "[P:" + FD2(-�S�ؔ��, Y2) + "]\[��:" + FD3(�S�ؔ��, 0, 0) + ",,RL=7]"
      
      
      '[[[ �S�� F12 (FX2) ]]]
            Print #60, "[�F:��]\[�:���]"
               '          F12=D32_K127_@127+123+80x125+123_B5655+W+4655_HF+2746                           'X ��S��  @�߯��͑��ʂ���
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               �S�ؔ�� = �S��_SK�ʒu: X0 = -.H + �S��L_XL + �S�ؔ��
               Call P_���r_�S�ؐ}("", "", "", X0, -�S��L_Ycen)
       
       
      '[[[ �S�� F12 (FX2) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FY1")
               Yn = Int(2 * �S��P_���� / 3):  Y1 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               Yn = Int(1 * �S��P_���� / 3):  Y2 = -.BXL + (�S��P_�ʒu(Yn) + �S��P_�ʒu(Yn + 1)) / 2
               
               
               ���r_�S�؃� = 900:  D1$ = ���r_��b("FX2")
               X0 = -.H + �S��_SK�ʒu
               Print #60, "[P:" + FD2(X0, Y1) + "]\[<:180]\[L:" + FD2(-Mark_L1, 0) + "]\[Lm:" + FD2(-����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                     Call P_�S��_������(1)
      
             '[[[ �S�� F12 (FX2) ��� ���@ ]]]
                     �S�ؔ�� = �S��_SK�ʒu
                     Print #60, "[P:" + FD2(-.H, Y2) + "]\[��:" + FD3(�S�ؔ��, 0, 0) + ",,LR=7]"
      
             '[[[ �S�� F12 (FX2) ����� ���@ ]]]
                     �S�؉���� = (.BX - �S��L_YL) / 2
                     Print #60, "[P:" + FD2(-.H + 250, .BXR - �S�؉����) + "]\[��:" + FD3(0, �S�؉����, 0) + ",,RL=7]"
                     Print #60, "[P:" + FD2(-.H + 250, -.BXL) + "]\[��:" + FD3(0, �S�؉����, 0) + ",,LR=7]"
      
      
      
      '[[[ �S�� F1 (FY1) ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
                '     F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y ��S��  @�߯��͑��ʂ���
               '���r_�S�؃� = 180:  D1$ = ���r_��b("FX1")
               '�S��D_F11 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FY1")
               �S�،a$ = �S��_�a$: X0 = -�S��_SK�ʒu: '- �S��D_F11 / 2
               For ii = 1 To �S��P_����:        Y0 = -.BXL + �S��P_�ʒu(ii)
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                     Next ii
       
      '[[[ �S�� F1 (FY1) ���@ ]]]
                  ���@�ʒuL3 = ���@�ʒuL2 + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ��L2 - ���r_���@��_Pit_��̐}
                  Print #60, "  [P:" + FD2(���@�ʒuL3, -.BXL) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, �S��P_L(ii), -��L3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BX - �S��P_�ʒu(�S��P_����), 0) + ",,R=7]"
                    Print #60, D11$
       
       
      '[[[ �S�� F2 (FY2) ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
              '      F1=D32_K95_@95+155+40x125+40x125+155_BF+10014+F                                'Y ��S��  @�߯��͑��ʂ���
               '���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               '�S��D_F12 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 90:  D1$ = ���r_��b("FY2")
               �S�،a$ = �S��_�a$: X0 = -.H + �S��_SK�ʒu: ' + �S��D_F12 / 2
               For ii = 1 To �S��P_����:        Y0 = -.BXL + �S��P_�ʒu(ii)
                     Print #60, "[P:" + FD2(X0, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                     Next ii
       
      '[[[ �S�� F2 (FY2) ���@ ]]]
                  ���@�ʒuR3 = ���@�ʒuR2 - ���r_���@��_Pit_��̐} * ����}_Scale
                  ��R3 = ��R2 - ���r_���@��_Pit_��̐}
                  Print #60, "  [P:" + FD2(���@�ʒuR3, -.BXL) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(0, �S��P_L(ii), ��R3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(0, .BX - �S��P_�ʒu(�S��P_����), 0) + ",,R=7]"
                    Print #60, D11$
       
       
      '[[[ �S�� F3 (FY3) ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
               '       F3=D19_K85_@200+9x200_B10361_H190                                               'Y ���S��  @�߯��͉�����
               '���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               '�S��D_F12 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FY3")
               �S�،a$ = �S��_�a$:
               'Y1 = -.BXL + �S��_SK�ʒu + �S��D_F12 / 2: Y2 = .BXR - �S��_SK�ʒu - �S��D_F12 / 2
               Y1 = -.BXL + �S��_SK�ʒu: Y2 = .BXR - �S��_SK�ʒu
               For ii = 1 To �S��P_����:        X0 = -�S��P_�ʒu(ii)
                     Print #60, "[P:" + FD2(X0, Y1) + "]\[���r�S��:" + �S�،a$ + "]"
                     Print #60, "[P:" + FD2(X0, Y2) + "]\[���r�S��:" + �S�،a$ + "]"
                     Next ii
       
      
      '[[[ �S�� F3 (FY3)  Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
               '���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               '�S��D_F12 = Val(Mid(�S��_�a$, 2))
               
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FY3")
               �S�،a$ = �S��_�a$:
              ' Y1 = -.BXL + �S��_SK�ʒu + �S��D_F12 / 2: Y2 = .BXR - �S��_SK�ʒu - �S��D_F12 / 2
               Y1 = -.BXL + �S��_SK�ʒu: Y2 = .BXR - �S��_SK�ʒu
               
               XL = 5 * ����}_Scale: YL = 15 * ����}_Scale
               For ii = 1 To �S��P_����:     X1 = -�S��P_�ʒu(ii)
                     Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XL, -YL) + "]"
                     Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(XL, YL) + "]"
                     Next ii
               X01 = -�S��P_�ʒu(�S��P_����) + XL
               Y01 = Y1 - YL: Y02 = Y2 + YL
               XLL = -X01 + 25 * ����}_Scale
                     Print #60, "[P:" + FD2(X01, Y01) + "]\[L:" + FD2(XLL, 0) + "]\[pm:" + FD2(-19, 0) + "]"
                     Call P_�S��_������(2)
                     Print #60, "[P:" + FD2(X01, Y02) + "]\[L:" + FD2(XLL, 0) + "]\[pm:" + FD2(-19, 0) + "]"
                     Call P_�S��_������(2)
      
      '[[[ �S�� F3 (FY3) ���@ ]]]
                  ���@�ʒu3 = ���@�ʒu2 - ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ��2 - ���r_���@��_Pit_��̐}
                  Print #60, "  [P:" + FD2(0, ���@�ʒu3) + "]"
                        D11$ = "  [��:"
                        For ii = 1 To �S��P_Data��
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): 'If ii = 1 Then Moj$ = Moj$ + ",L=7"
                              D11$ = D11$ + FD3(-�S��P_L(ii), 0, -��3) + "," + Moj$ + "|"
                              Next ii
                              D11$ = D11$ + FD3(-(.H_D - �S��P_�ʒu(�S��P_����)), 0, 0) + "]"
                    Print #60, D11$
       
       
      '[[[ �S�� FH1 (f1) ]]]
                '        f1 = 314 - D19_K69_B801_H2804 + f                           '�c�S��
            Print #60, "[�F:��]\[�:Hoop]"
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               YRR = �S��L_YL / 2
               
               D1$ = ���r_��b("Fpit")
                    �S��pit = ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 + ��c��.�S�؊ԊuX2): If �S��pit <= 0 Then �S��pit = 100
                    LLL1 = ��c��.Y�S��pit * ��c��.�S�؊ԊuX1
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FH1"): LLL2 = �S��L_YL
               X0 = -�S��L_XL - �S��_SK�ʒu
               Y1 = -.BXL + ��c��.Start_X + LLL2 - (LLL2 - LLL1) / 2:
               Do:    If Y1 > YRR Then Exit Do
                      Call P_���r_�S�ؐ}("", "", "", X0, Y1)
                      Y1 = Y1 + �S��pit
                      Loop
               Print #60, "[dot:]"
               Y2 = -.BXL + ��c��.Start_X + ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 - ��c��.�S�؊ԊuX3) + LLL2 - (LLL2 - LLL1) / 2:
               Do:    If Y2 > YRR Then Exit Do
                      Call P_���r_�S�ؐ}("", "", "", X0, Y2)
                      Y2 = Y2 + �S��pit
                      Loop
       
       
      '[[[ �S�� FH1 (f1)  Mark ]]]
               Print #60, "[con:]"
            Print #60, "[�F:��]\[�:Mark]"
               ���r_�S�؃� = 270:  D1$ = ���r_��b("FY3")
               Xn = �S��P_����: X0 = -(�S��P_�ʒu(Xn) + �S��P_�ʒu(Xn - 1)) / 2
               Xn2 = Xn - 4: If Xn2 < 2 Then Xn2 = 2
               X02 = -(�S��P_�ʒu(Xn2) + �S��P_�ʒu(Xn2 - 1)) / 2
               ���r_�S�؃� = 180:  D1$ = ���r_��b("FX2")
               YRR = �S��L_YL / 2
               
               D1$ = ���r_��b("Fpit")
                    �S��pit = ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 + ��c��.�S�؊ԊuX2): If �S��pit <= 0 Then �S��pit = 100
                    LLL1 = ��c��.Y�S��pit * ��c��.�S�؊ԊuX1
               ���r_�S�؃� = 0:  D1$ = ���r_��b("FH1"): LLL2 = �S��L_YL
               D01$ = "": D02$ = ""
               Y1 = -.BXL + ��c��.Start_X + LLL2 - (LLL2 - LLL1) / 2:
               Y01 = Y1 - LLL2
               Do:    If Y1 > YRR Then Y91 = Y1 - �S��pit: Exit Do
                      D01$ = D01$ + "+" + F9(-�S��pit):  Y1 = Y1 + �S��pit
                      Loop
               
               Y2 = -.BXL + ��c��.Start_X + ��c��.Y�S��pit * (��c��.�S�؊ԊuX1 - ��c��.�S�؊ԊuX3) + LLL2 - (LLL2 - LLL1) / 2:
               Y02 = Y2 - LLL2
               Do:    If Y2 > YRR Then Y92 = Y2 - �S��pit: Exit Do
                      D02$ = D02$ + "+" + F9(-�S��pit):  Y2 = Y2 + �S��pit
                      Loop
       
                    Y9 = Y91: If Y9 < Y92 Then Y9 = Y92
                    Y9 = Y9 - LLL2
               
               
                   Print #60, "[P:" + FD2(X0, Y01) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X0, Y02) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   YLL = Y9 + .BYL + 30 * ����}_Scale
                   Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[pm:0,2]"
                   Call P_�S��_�����̏c(1)
       
                   
                   D1$ = ���r_��b("FH2")
                   If D1$ <> "" Then
                   Print #60, "[P:" + FD2(X02, Y01) + "]\[<:270," + Mid(D01$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X02, Y02) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   YLL = Y9 + .BYL + 30 * ����}_Scale
                   Print #60, "[P:" + FD2(X02, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[pm:0,2]"
                   Call P_�S��_�����̏c(1)
                   End If
       
       
       Print #60, "[con:]\[�F:��]"
     
     
     End With

     End Sub
Sub P_��b_F1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 180
     D1$ = ���r_��b("FY1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, 0.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)

     End Sub
Sub P_��b_F2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��b("FY2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-15, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��b_F3()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 270
     D1$ = ���r_��b("FY3")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, 0.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��b_sf1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 270
     D1$ = ���r_��b("FH1*")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��b_sf2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 270
     D1$ = ���r_��b("FH2*")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��b_sf3()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"

     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -2.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��b_F11()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 270
     D1$ = ���r_��b("FX1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-6, -15) + "]"
     Call P_�S��_�����̏c(3)
     End Sub
Sub P_��b_F12()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 180
     D1$ = ���r_��b("FX2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(0, -15) + "]"
     Call P_�S��_�����̏c(3)
     End Sub
Sub P_��b_F13()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 180
     D1$ = ���r_��b("FX3")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(0, -15) + "]"
     Call P_�S��_�����̏c(3)
     End Sub
Sub P_��b_F14()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 0
     D1$ = ���r_��b("FX4")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-6, -15) + "]"
     Call P_�S��_�����̏c(3)
     End Sub

'����������������������������������������������������������������������������������������������
'���� �B��       ��}        �B���⋭�z�ؐ}�@�@�@�X�g�b�p�|�⋭�z�ؐ}�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub �B��_�f��A_A()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 13 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
         Y0 = .BYR + (���@���ʒu_�B��A����.U�J�� + 2.2 * �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�B���⋭�z�ؐ}")
         Y0 = .BYR + (���@���ʒu_�B��A����.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ`�|�`")
      
      '[[[ �f�ʈʒu�w�� ]]]
         �B��$ = ���r_��("�B���ʒu"):
         X1 = -.BXL - 10 * ����}_Scale: X2 = .BXR + 10 * ����}_Scale
         Y2 = �B���I�_��_Y - 50: Y1 = �B���N�_��_Y - 50
                Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y1, "�a", "�a", 0)
                Call P_���r_�f�ʈʒu�w��(X1, Y2, X2, Y2, "�b", "�b", 0)
      
         X1 = �B���ʒu_X(2) + 40:       Y1 = -.BYL - 10 * ����}_Scale: Y2 = .BYR + 10 * ����}_Scale
                Call P_���r_�f�ʈʒu�w��(X1, Y1, X1, Y2, "�c", "�c", 0)
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
         Print #60, "[�F:��]\[dot:]"
         Call P_���r_��_�f�ʐ}
         Print #60, "[�F:��]\[con:]"
         Call P_���r_��_���ʐ}
     
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .BYR + ���@���ʒu_�B��A����.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�B��A����.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
     
          ' L���@
                  ���@�ʒuL1 = -.BXL - ���@���ʒu_�B��A����.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_�B��A����.L�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.BYL) + "]"
                  Print #60, "[��:" + F9(-��L1) + ":" + FD3(0, .BY, -��L1) + "]"
     
                  ���@�ʒuL2 = -.BXL - ���@���ʒu_�B��A����.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_�B��A����.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(���@�ʒuL2, -.BYL) + "]"
                  Print #60, "[��:" + FD3(0, .BYL, -��L2) + "|" + FD3(0, .BYR, 0) + "]"
     
          ' D���@
                  ���@�ʒuD1 = -.BYL - ���@���ʒu_�B��A����.D�J�� * ����}_Scale
                  ��D1 = ���@���ʒu_�B��A����.D�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒuD1) + "]"
                  Print #60, "[��:" + F9(��D1) + ":" + FD3(.BX, 0, ��D1) + "]"
     
     
     
     
        Print #60, "[�F:��]\[con:]"
       '[[[ �į�߰ ]]]  '[[[ �į�߰ ���� Line ]]]
            Print #60, "[�F:��]\[�:���]"
                  Call P_���r_Stoper_����("C")
        
        
        
        
        Print #60, "[�F:��]\[dot:]"
       '[[[ �B�� ]]]
            Print #60, "[�F:��]\[�:���]"
                  Call P_�B��_����
     
        Print #60, "[�F:��]\[con:]"
      '[[[ �B�� X���@ ]]]
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_�B��A����.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B���I�_��_X���@1(���@�ʒu2, ��2)
        
                  ���@�ʒuD2 = ���@�ʒuD1 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D2 = ���@���ʒu_�B��A����.D�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B���N�_��_X���@1(���@�ʒuD2, -��D2)
        
      '[[[ �B�� Y���@ ]]]
                  ���@�ʒuL3 = ���@�ʒuL2 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ���@���ʒu_�B��A����.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B��_Y���@(���@�ʒuL3, ��L3)
        
        
        
      '[[[ �B�� �z�� ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:���]"
                 �B��$ = ���r_��("�B���ʒu")
                 For ii = 1 To �B���ʒu_Data��: Xp = �B���ʒu_X(ii): Yp = �B���ʒu_Y(ii)
                        �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no): BD$ = ���r_�B��("BD"): �B��_BX = ���_D(1): �B��_BY = ���_D(2)
                        D1$ = ���r_�B��("S1"): Y_���� = Val(�S��_Y$): If Yp < 0 Then Y_���� = -Y_����
                        �S��l = Val(�S��_B$): Y0 = Yp - �S��P_��L / 2 + Y_����: X0 = Xp - �S��l / 2
                        'Dami$ = ���r_�B��("S1")
                        For i2 = 0 To �S��P_����
                              Y1 = Y0 + �S��P_�ʒu(i2)
                              Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(�S��l, 0) + "]"
                              Next i2
                       
                       
                        D1$ = ���r_�B��("S2"):
                        �S��l = Val(�S��_B$): Y0 = Yp - �S��l / 2 + Y_����: X0 = Xp - �S��P_��L / 2
                        For i3 = 0 To �S��P_����
                              X1 = X0 + �S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, �S��l) + "]"
                              Next i3
                       Next ii
        
      '[[[ �B�� X���t���@ ]]]
                  ���@�ʒu3 = ���@�ʒu2 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ���@���ʒu_�B��A����.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B���I�_��_X���@2(���@�ʒu3, ��3)
        
                  ���@�ʒuD3 = ���@�ʒuD2 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D3 = ���@���ʒu_�B��A����.D�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B���N�_��_X���@2(���@�ʒuD3, -��D3)
      
      '[[[ �B�� Y���t���@ ]]]
                  ���@�ʒuL4 = ���@�ʒuL3 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L4 = ���@���ʒu_�B��A����.L�J�� - 3 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B��_Y���@2(���@�ʒuL4, ��L4)
        
        
        
      '[[[ �B�� �z�� Mark ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:Mark]"
                 �B��$ = ���r_��("�B���ʒu")
                 For ii = 1 To �B���ʒu_Data��: Xp = �B���ʒu_X(ii): Yp = �B���ʒu_Y(ii)
                        �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no): BD$ = ���r_�B��("BD"): �B��_BX = ���_D(1): �B��_BY = ���_D(2)
                        
                                 D1$ = ���r_�B��("S2"): X�� = �S��P_����: Xpit = �S��P_�ʒu(2) - �S��P_�ʒu(1)
                                 X0 = Xp + �S��P_��L / 2 - 1.5 * Xpit
                        D1$ = ���r_�B��("S1"): Y_���� = Val(�S��_Y$): If Yp < 0 Then Y_���� = -Y_����
                                 Ypit = �S��P_�ʒu(2) - �S��P_�ʒu(1)
                                 Y1 = Yp - �S��P_��L / 2 + Y_����
                                 Y2 = Yp + �S��P_��L / 2 + Y_����
                        
                        Select Case Yp
                        Case Is > 0: Print #60, "[P:" + FD2(X0, Y1) + "]\[<:90," + �S��_pit$ + "]\[L:" + FD2(0, .BYR - Y1 + Mark_U1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Case Else:   Print #60, "[P:" + FD2(X0, Y2) + "]\[<:270," + �S��_pit$ + "]\[L:" + FD2(0, -.BYL - Y2 - Mark_D1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        End Select
                        Call P_�S��_������(2)
                        
                        
                        D1$ = ���r_�B��("S2"): �S��l = Val(�S��_B$): Y1 = Yp - �S��l / 2 + Y_���� + 1.5 * Ypit: X0 = Xp - �S��P_��L / 2
                        
                        Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + �S��_pit$ + "]":
                        
                        Select Case ii
                        Case 1
                              Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(-X0 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                              �S��_��_����2$ = F9((�S��P_���� + 1) * �B���I�_���ʒu��i) + "-" + �S��_��_����1$
                              Call P_�S��_������(2)
                        Case �B���I�_���ʒu��i + 1
                        
                              Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(-X0 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                              �S��_��_����2$ = F9((�S��P_���� + 1) * �B���N�_���ʒu��i) + "-" + �S��_��_����1$
                              Call P_�S��_������(2)
                        End Select
                        
                       Next ii
        
        
        
        Print #60, "[�F:��]\[con:]"
     End With
     End Sub






Sub �B��_�f��BC()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�B��B�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         X1 = 40 * ����}_Scale
         Call P_���r_�i�}��(-X1, Y0, 0, "�f�ʂa�|�a")
         Call P_���r_�i�}��(X1, Y0, 0, "�f�ʂb�|�b")
      
      '[[[ �f�ʈʒu�w�� ]]]
         X1 = -.BXL - 10 * ����}_Scale: X2 = .BXR + 10 * ����}_Scale:  Y1 = -50
                Call P_���r_�f�ʈʒu�w��(X2, Y1, X1, Y1, "�`", "�`", 0)
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
                  Call P_���r_��_���f�ʐ}(0, 0, 0, 0)
      
      
      '[[[ ���� Line ]]]
                  X1 = 0: Y1 = -1.5 * .H: X2 = 0: Y2 = (���@���ʒu_�B��B�f��.U�J�� + 12) * ����}_Scale
                  X3 = 0: Y3 = Y00 + (���@���ʒu_�B��B�f��.U�J�� + 8) * ����}_Scale
                  Call P_���r_Center_Line(X1, Y1, X2, Y2, X3, Y3)
      
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = ���@���ʒu_�B��B�f��.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�B��B�f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
      
      
      
      '[[[ �į�߰ ]]]
            Print #60, "[�F:��]\[�:���]"
                  Print #60, "[con:]"
                  Call P_���r_Stoper_X�f��(������, -������)
                  Print #60, "[con:]"
      
      '[[[ �į�߰ X���@ ]]]
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_�B��B�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper�I�_��_X���@(���@�ʒu2, ��2)
      
      '[[[ �B�� �z�� ]]]
        Print #60, "[�F:��]\[con:]"
                 �B��$ = ���r_��("�B���ʒu")
                 For ii = 1 To �B���I�_���ʒu��i: Xp = �B���ʒu_X(ii): ' Yp = �B���ʒu_Y(ii)
                        �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no):
                        
                        Print #60, "[�F:��]\[�:���]"
                        ���r_�S�؃� = 90:   D1$ = ���r_�B��("S1"): Y0 = -�S��_SK�ʒu:   �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$)
                        X1 = Xp - �S��B / 2: Y1 = Y0 - �S��H
                        Call P_���r_�S�ؐ}("", "", "", X1, Y1)
                        
                        Print #60, "[�F:��]\[�:�S�ؒf��]"
                        D1$ = ���r_�B��("S2"):  Y0 = -�S��_SK�ʒu: X0 = Xp - �S��P_��L / 2
                        For i3 = 0 To �S��P_����
                              X1 = X0 + �S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Next i3
                        Next ii
      
      
    '[[[  �B�� �z�� ���@ ]]]
                ���@�ʒuL2 = -�y�؋��r_��.BXL - ���@���ʒu_�B��B�f��.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                ��L2 = ���@���ʒu_�B��B�f��.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                D1$ = ���r_�B��("S2"):  Y0 = �S��_SK�ʒu
                Print #60, "  [P:" + FD2(���@�ʒuL2, -Y0) + "]\[��:"; FD1(-��L2) + ":" + FD3(0, Y0, -��L2) + "]"
      
                ���@�ʒuR2 = �y�؋��r_��.BXR + ���@���ʒu_�B��B�f��.R�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                ��R2 = ���@���ʒu_�B��B�f��.R�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                D1$ = ���r_�B��("S2"):  Y0 = �S��_SK�ʒu
                Print #60, "  [P:" + FD2(���@�ʒuR2, -Y0) + "]\[��:"; FD1(��R2) + ":" + FD3(0, Y0, ��R2) + "]"
      
      
      
      Print #60, "[�F:��]\[con:]"
      
      '[[[ �B�� X���t���@ ]]]
                  ���@�ʒu3 = ���@�ʒu2 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ���@���ʒu_�B��B�f��.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B���I�_��_X���@2(���@�ʒu3, ��3)
      
     
     
      '[[[ �B�� �z�� Mark ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:Mark]"
                 �B��$ = ���r_��("�B���ʒu")
                 For ii = 1 To �B���I�_���ʒu��i: Xp = �B���ʒu_X(ii)
                        �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no):
                        
                                D1$ = ���r_�B��("S2"):  X�� = �S��P_����: Xpit = �S��P_�ʒu(2) - �S��P_�ʒu(1)
                                X0 = Xp - �S��P_��L / 2 + �S��P_�ʒu(Int(�S��P_���� / 2)) - 0.5 * Xpit
                        
                        
                        ���r_�S�؃� = 90:   D1$ = ���r_�B��("S1"): Y0 = -�S��_SK�ʒu
                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_�S��_������(1)
                        Next ii
     
     
     End With
     End Sub
Sub P_�B��_�f��D()

     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 7 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
            Y0 = (���@���ʒu_�B��D�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
            Call P_���r_�i�}��(0, Y0, 0, "�f�ʂc�|�c")
      
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
           Call P_���r_���ʒu_��_�f�ʐ}
      
      '[[[ ���� Line ]]]
                  Y1 = -1.1 * .H:  Y2 = 0
                  Call P_���r_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = ���@���ʒu_�B��D�f��.L�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�B��D�f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BY, 0, -��1) + "]"
     
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_�B��D�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu2) + "]"
                  Print #60, "[��:" + FD3(.BYL, 0, -��2) + "|" + FD3(.BYR, 0, 0) + "]"
     
                  ���@�ʒu3 = ���@�ʒu2 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ���@���ʒu_�B��D�f��.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_�B��_�f��Y���@(���@�ʒu3, ��3)
      
                 ���@�ʒu4 = ���@�ʒu3 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                 ��4 = ���@���ʒu_�B��D�f��.U�J�� - 3 * ���r_���@��_Pit_��̐} - 1
                 Print #60, FP_�B��_�f��Y���@2(���@�ʒu4, ��4)
      
      '[[[ �į�߰ ]]]
            Print #60, "[�F:��]\[�:���]"
           Print #60, "[dot:]"
           Call P_���r_Stoper_Y�f��(0, 0, 0)
   
   
      '[[[ �B�� �z�� ]]]
        Print #60, "[�F:��]\[con:]"
                 �B��$ = ���r_��("�B���ʒu")
                 For iy = 1 To 2: ii = iy: If iy = 2 Then ii = Int(�B���ʒu_Data�� / 2) + 1
                        Xp = �B���ʒu_X(ii):  Yp = �B���ʒu_Y(ii)
                        �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no):
                        
                        D1$ = ���r_�B��("S1"): Y_���� = Val(�S��_Y$): If Yp < 0 Then Y_���� = -Y_����
                        
                        Print #60, "[�F:��]\[�:���]"
                        ���r_�S�؃� = 90:   D1$ = ���r_�B��("S2"): Y0 = -�S��_SK�ʒu:   �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$)
                        X1 = Yp - �S��B / 2 + Y_����: Y1 = Y0 - �S��H
                        Call P_���r_�S�ؐ}("", "", "", X1, Y1)
                        
                        Print #60, "[�F:��]\[�:�S�ؒf��]"
                        D1$ = ���r_�B��("S1"):  Y0 = -�S��_SK�ʒu: X0 = Yp - �S��P_��L / 2 + Y_����
                        For i3 = 0 To �S��P_����
                              X1 = X0 + �S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y0) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Next i3
                        Next iy
      
    '[[[  �B�� �z�� ���@ ]]]
                
                ���@�ʒuL2 = -�y�؋��r_��.BYL - ���@���ʒu_�B��B�f��.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                ��L2 = ���@���ʒu_�B��D�f��.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                D1$ = ���r_�B��("S1"):  Y0 = �S��_SK�ʒu
                Print #60, "  [P:" + FD2(���@�ʒuL2, -Y0) + "]\[��:"; FD1(-��L2) + ":" + FD3(0, Y0, -��L2) + "]"
      
                ���@�ʒuR2 = �y�؋��r_��.BYR + ���@���ʒu_�B��B�f��.R�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                ��R2 = ���@���ʒu_�B��D�f��.R�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                D1$ = ���r_�B��("S1"):  Y0 = �S��_SK�ʒu
                Print #60, "  [P:" + FD2(���@�ʒuR2, -Y0) + "]\[��:"; FD1(��R2) + ":" + FD3(0, Y0, ��R2) + "]"
      
      
      '[[[ �B�� �z�� Mark ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:Mark]"
                 �B��$ = ���r_��("�B���ʒu")
                 For iy = 1 To 2: ii = iy: If iy = 2 Then ii = Int(�B���ʒu_Data�� / 2) + 1
                        Xp = �B���ʒu_X(ii): Yp = �B���ʒu_Y(ii)
                        �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no):
                        
                        Select Case Yp
                        Case Is > 0:    D1$ = ���r_�B��("S1"): Y_���� = Val(�S��_Y$): If Yp < 0 Then Y_���� = -Y_����
                                        X�� = �S��P_����: Xpit = �S��P_�ʒu(2) - �S��P_�ʒu(1)
                                        X0 = Yp + �S��P_��L / 2 - 1.5 * Xpit + Y_����

                                        ���r_�S�؃� = 90:   D1$ = ���r_�B��("S2"): Y0 = -�S��_SK�ʒu
                                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        Call P_�S��_������(1)
                        
                        Case Else:    D1$ = ���r_�B��("S1"): Y_���� = Val(�S��_Y$): If Yp < 0 Then Y_���� = -Y_����
                                        X�� = �S��P_����: Xpit = �S��P_�ʒu(2) - �S��P_�ʒu(1)
                                        X0 = Yp - �S��P_��L / 2 + 1.5 * Xpit + Y_����

                                        ���r_�S�؃� = 90:   D1$ = ���r_�B��("S2"): Y0 = -�S��_SK�ʒu
                                        Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]\[L:" + FD2(0, -Y0 + Mark_U1) + "]\[Lm:" + FD2(-����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                        Call P_�S��_������(1)
                        End Select
                        Next iy
           
           
           Print #60, "[con:]"
     
     End With
     End Sub
Sub P_�B��_�f��H()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_��

                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 7 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
            Y0 = (���@���ʒu_�B��H�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
            Call P_���r_�i�}��(0, Y0, 0, "�f�ʂg�|�g")
      
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
           Call P_���r_���ʒu_��_�f�ʐ}
      
      '[[[ ���� Line ]]]
                  Y1 = -1.1 * .H:  Y2 = 0
                  Call P_���r_Center_Line(0, Y1, 0, Y2, 0, 0)
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = ���@���ʒu_�B��H�f��.L�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�B��H�f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BY, 0, -��1) + "]"
     
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_�B��H�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu2) + "]"
                  Print #60, "[��:" + FD3(.BYL, 0, -��2) + "|" + FD3(.BYR, 0, 0) + "]"
     
     
                  ���@�ʒu3 = ���@�ʒu2 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ���@���ʒu_�B��H�f��.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper_�f��Y���@(���@�ʒu3, ��3)
     
                  ���@�ʒu4 = ���@�ʒu3 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��4 = ���@���ʒu_�B��H�f��.U�J�� - 3 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper_�f��Y���@2(���@�ʒu4, ��4)
     
      '[[[ �į�߰ ]]]
            Print #60, "[�F:��]\[�:���]"
           Print #60, "[dot:]"
           Call P_���r_Stoper_Y�f��(0, 0, 0)
   
      
      
      
      
      '[[[ �į�߰ �z�� ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:�S�ؒf��]"
                 �B��$ = ���r_��("�į�߈ʒu")
                 For ii = 1 To 1: Xp = Stoper�ʒu_X(ii):  Yp = Stoper�ʒu_Y(ii)
                        ��Stoper_No = Stoper�ʒu_No(ii): Call ���r_Stoper_Get(��Stoper_No): ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                        
                       '[[[ H1 ]]]
                        D1$ = ���r_Stoper("H1"): YY = Val(�S��_Y$):
                        X1 = -Yp - S_BY / 2 - YY: X2 = Yp + S_BY / 2 + YY
                        For i3 = 1 To �S��P_����: Y1 = -�S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Next i3
                        
                        
                      '[[[ H2 ]]]
                        D1$ = ���r_Stoper("H2"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$): XX = Val(�S��_X$): YY = Val(�S��_Y$)
                        X1 = -Yp - S_BY / 2 - YY: X2 = Yp + S_BY / 2 + YY: LLL1 = X2 - X1: LLL2 = 2 * �S��H - LLL1
                        For i3 = 1 To �S��P_����: Y1 = -�S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[�F:��]\[L:" + FD2(LLL1, 0) + "]"
                              Print #60, "[P:" + FD2(-LLL2 / 2, Y1 + ���r_J�S�؊J�� * ����}_Scale) + "]\[�F:" + �S��_Joint���F$ + "]\[L:" + FD2(LLL2, 0) + "]"
                              Next i3
                        
                      Print #60, "[�F:��]"
                      '[[[ H3** ]]]
                        D1$ = ���r_Stoper("H1"): H1_�S�،aD = Val(Mid(�S��_�a$, 2)): H1_YY = Val(�S��_Y$): H3Y0 = �S��P_�ʒu(1)
                        D1$ = ���r_Stoper("H2"): H2_�S�،aD = Val(Mid(�S��_�a$, 2)): H2_�S��B = Val(�S��_B$): H2_XX = Val(�S��_X$)
                        D1$ = ���r_Stoper("H3"): �S�،a$ = �S��_�a$: �S�،aD = Val(Mid(�S��_�a$, 2)): �S��YL = �S��L_YL
                              H3_pit = Val(�S��_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                             ' H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                        
                            ' H3_X1 = S_BX / 2 + H2_XX + H2_�S��B - H2_�S�،aD / 2 - �S�،aD / 2
                            ' H3_X2 = S_BX / 2 + H2_XX - H2_�S�،aD / 2 - �S�،aD / 2
                            ' H3_X3 = S_BX / 2 - H1_�S�،aD / 2 + 0.1 * �S�،aD

                        
                             H3_Y1 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 - �S�،aD / 2
                             H3_Y2 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 + 0.1 * �S�،aD - H1_YY
                             H3_Y3 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 + 0.1 * �S�،aD - 2 * H1_YY
                        
                             '���� = 1: DLX = 0
                             'If Yp < 0 Then ���� = -1: DLX = ���r_J�S�؊J�� * ����}_Scale
                             
                             Print #60, "[P:" + FD2(-(Yp + H3_Y3), -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                             Print #60, "[P:" + FD2(Yp + H3_Y3, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                             
                             Ypit = 2 * H3_Y2 / (H3_nY - 1)
                             For i2 = 1 To H3_nY
                                  Y01 = -Yp - H3_Y2 + (i2 - 1) * Ypit
                                  Y02 = Yp + H3_Y2 - (i2 - 1) * Ypit
                                  Print #60, "[P:" + FD2(Y01, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                                  Print #60, "[P:" + FD2(Y02, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                                  Next i2
                             
                             Print #60, "[P:" + FD2(-(Yp + H3_Y1), -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                             Print #60, "[P:" + FD2(Yp + H3_Y1, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                        
                        
                        
                        Next ii
      
      
      '[[[ �į�߰ �z�� Mark ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:Mark]"
                 �B��$ = ���r_��("�į�߈ʒu")
                 For ii = 1 To 1: Xp = Stoper�ʒu_X(ii):  Yp = Stoper�ʒu_Y(ii)
                        ��Stoper_No = Stoper�ʒu_No(ii): Call ���r_Stoper_Get(��Stoper_No): ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                        
                       '[[[ H1 ]]]
                        LLX = 7: LLY = 4
                        D1$ = ���r_Stoper("H1"): YY = Val(�S��_Y$):
                        X1 = -Yp - S_BY / 2 - YY: X2 = Yp + S_BY / 2 + YY
                        YS = -�S��P_�ʒu(1)
                        For i3 = 1 To �S��P_����: Y1 = -�S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[Lm:" + FD2(-LLX, -LLY) + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[Lm:" + FD2(LLX, -LLY) + "]"
                              YE = Y1 - 9 * ����}_Scale
                              Next i3
                        
                              Print #60, "[P:" + FD2(X1, YS) + "]\[pm:" + FD2(-LLX, -LLY) + "]\[L:" + FD2(0, YE - YS) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                              Call P_�S��_������(2)
                              Print #60, "[P:" + FD2(X2, YS) + "]\[pm:" + FD2(LLX, -LLY) + "]\[L:" + FD2(0, YE - YS) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                              Call P_�S��_������(2)
                        
                        
                        
                        
                      '[[[ H2 ]]]
                        D1$ = ���r_Stoper("H2"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$): XX = Val(�S��_X$): YY = Val(�S��_Y$)
                        X1 = -Yp - S_BY / 2 - YY + 70: X2 = Yp + S_BY / 2 + YY - 70: ' LLL1 = X2 - X1: LLL2 = 2 * �S��H - LLL1
                        Y1 = -�S��P_�ʒu(1): Y2 = -�S��P_�ʒu(�S��P_����)
                        
                        Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + �S��_pit$ + ",*]"
                        Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_�S��_������(2)
                        
                        Print #60, "[P:" + FD2(X2, 0) + "]\[<R:90," + �S��_pit$ + ",*]"
                        Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                        Call P_�S��_������(2)
                        
                        
                        Next ii
      
      
      '[[[ �į�߰ �z�� ���@ ]]]
                  ���@�ʒuL2 = -.BYL - ���@���ʒu_�B��H�f��.L�J�� * ����}_Scale + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_�B��F�f��.L�J�� - ���r_���@��_Pit_��̐} - 1
                  D1$ = ���r_Stoper("H1"): Y0 = -�S��P_��L
                  Print #60, "  [P:" + FD2(���@�ʒuL2, Y0) + "]"
                        D11$ = "  [��:" + FD1(-��L2) + ":"
                        For ii = 1 To �S��P_Data��: i2 = �S��P_Data�� - ii + 1
                              Ypit = �S��P_L(i2)
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + "|": If ii = �S��P_Data�� Then Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, -��L2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
                  ���@�ʒuR2 = .BYR + ���@���ʒu_�B��H�f��.L�J�� * ����}_Scale - ���r_���@��_Pit_��̐} * ����}_Scale
                  ��R2 = ���@���ʒu_�B��F�f��.R�J�� - ���r_���@��_Pit_��̐} - 1
                  D1$ = ���r_Stoper("H1"): Y0 = -�S��P_��L
                  Print #60, "  [P:" + FD2(���@�ʒuR2, Y0) + "]"
                        D11$ = "  [��:" + FD1(��R2) + ":"
                        For ii = 1 To �S��P_Data��: i2 = �S��P_Data�� - ii + 1
                              Ypit = �S��P_L(i2)
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + "|": If ii = �S��P_Data�� Then Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, ��R2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
      Print #60, "[�F:��]\[con:]"
   
     
     End With
     End Sub






Sub P_�B��_�f��E()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 2 * ����}_Scale
      
      '[[[ �i�}�� ]]]
         Y0 = .BYR + (���@���ʒu_�B��E����.U�J�� + 2.2 * �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�X�g�b�p�[�⋭�z�ؐ}")
         Y0 = .BYR + (���@���ʒu_�B��E����.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂd�|�d")
      
      
      '[[[ �f�ʈʒu�w�� ]]]
         Stoper$ = ���r_��("�į�߈ʒu")
         X1 = -.BXL - 10 * ����}_Scale: X2 = .BXR + 10 * ����}_Scale
         Y2 = �B���N�_��_Y - 50: Y1 = �B���I�_��_Y - 50
                Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y1, "�e", "�e", 0)
                Call P_���r_�f�ʈʒu�w��(X1, Y2, X2, Y2, "�f", "�f", 0)
      
         X1 = Stoper�ʒu_X(1) + 40:        Y1 = -.BYL - 10 * ����}_Scale: Y2 = .BYR + 10 * ����}_Scale
                Call P_���r_�f�ʈʒu�w��(X1, Y1, X1, Y2, "�g", "�g", 0)
      
      
      
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
         Print #60, "[�F:��]\[dot:]"
         Call P_���r_��_�f�ʐ}
         Print #60, "[�F:��]\[con:]"
         Call P_���r_��_���ʐ}
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .BYR + ���@���ʒu_�B��E����.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�B��E����.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
          
          ' L���@
                  ���@�ʒuL1 = -.BXL - ���@���ʒu_�B��E����.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_�B��E����.L�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.BYL) + "]"
                  Print #60, "[��:" + F9(-��L1) + ":" + FD3(0, .BY, -��L1) + "]"
     
                  ���@�ʒuL2 = -.BXL - ���@���ʒu_�B��E����.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_�B��E����.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(���@�ʒuL2, -.BYL) + "]"
                  Print #60, "[��:" + FD3(0, .BYL, -��L2) + "|" + FD3(0, .BYR, 0) + "]"
      
          ' D���@
                  ���@�ʒuD1 = -.BYL - ���@���ʒu_�B��E����.D�J�� * ����}_Scale
                  ��D1 = ���@���ʒu_�B��E����.D�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒuD1) + "]"
                  Print #60, "[��:" + F9(��D1) + ":" + FD3(.BX, 0, ��D1) + "]"
      
      
      
       '[[[ �į�߰ ]]]  '[[[ �į�߰ ���� Line ]]]
       
            Print #60, "[�F:��]\[�:���]"
                  Call P_���r_Stoper_����("C")
      
      
      '[[[ �į�߰ �z�� ]]]
        Print #60, "[�F:��]\[con:]"
                 Stoper$ = ���r_��("�į�߈ʒu")
                 For ii = 1 To Stoper�ʒu_Data��: Xp = Stoper�ʒu_X(ii):   Yp = Stoper�ʒu_Y(ii)
                        ��Stoper_No = Stoper�ʒu_No(ii): Call ���r_Stoper_Get(��Stoper_No):
                        ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                      '[[[ H1 ]]]
                        Print #60, "[�F:��]\[�:���]"
                        D1$ = ���r_Stoper("H1"): �S��B = Val(�S��_B$):   �S��H = Dcos(45) * Val(�S��_H$)
                        �S��l = �S��B + 2 * �S��H
                        X1 = Xp - �S��l / 2:
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp + S_BY / 2 + Val(�S��_Y$) - �S��H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(�S��H, �S��H) + "|" + FD2(�S��B, 0) + "|" + FD2(�S��H, -�S��H) + "]"
                        Case Else:       Y1 = Yp - S_BY / 2 - Val(�S��_Y$) + �S��H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(�S��H, -�S��H) + "|" + FD2(�S��B, 0) + "|" + FD2(�S��H, �S��H) + "]"
                        End Select
                      
                      '[[[ H2 ]]]
                        Print #60, "[�F:��]\[�:���]"
                        D1$ = ���r_Stoper("H2"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$): XX = Val(�S��_X$): YY = Val(�S��_Y$)
                        X1 = Xp - S_BX / 2 - XX - �S��B: X2 = Xp + S_BX / 2 + XX
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp + S_BY / 2 + YY - �S��H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, �S��H) + "|" + FD2(�S��B, 0) + "|" + FD2(0, -�S��H) + "]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, �S��H) + "|" + FD2(�S��B, 0) + "|" + FD2(0, -�S��H) + "]"
                        
                        Case Else:       X1 = X1 + ���r_J�S�؊J�� * ����}_Scale: X2 = X2 + ���r_J�S�؊J�� * ����}_Scale
                                         Y1 = Yp - S_BY / 2 - YY + �S��H
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -�S��H) + "|" + FD2(�S��B, 0) + "|" + FD2(0, �S��H) + "]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -�S��H) + "|" + FD2(�S��B, 0) + "|" + FD2(0, �S��H) + "]"
                        End Select
                        
                       ' er ("i=" + f0(ii))
                      '[[[ H3 ]]]
                       Print #60, "[�F:��]\[�:�S�ؒf��]"
                        D1$ = ���r_Stoper("H1"): H1_�S�،aD = Val(Mid(�S��_�a$, 2)): H1_YY = Val(�S��_Y$)
                        D1$ = ���r_Stoper("H2"): H2_�S�،aD = Val(Mid(�S��_�a$, 2)): H2_�S��B = Val(�S��_B$): H2_XX = Val(�S��_X$)
                        D1$ = ���r_Stoper("H3"): �S�،a$ = �S��_�a$: �S�،aD = Val(Mid(�S��_�a$, 2)):
                              H3_pit = Val(�S��_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                              H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                        
                             H3_X1 = S_BX / 2 + H2_XX + H2_�S��B - H2_�S�،aD / 2 - �S�،aD / 2
                             H3_X2 = S_BX / 2 + H2_XX - H2_�S�،aD / 2 - �S�،aD / 2
                             H3_X3 = S_BX / 2 - H1_�S�،aD / 2 + 0.1 * �S�،aD

                        
                             H3_Y1 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 - �S�،aD / 2
                             H3_Y2 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 + 0.1 * �S�،aD - H1_YY
                             H3_Y3 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 + 0.1 * �S�،aD - 2 * H1_YY
                        
                             ���� = 1: DLX = 0
                             If Yp < 0 Then ���� = -1: DLX = ���r_J�S�؊J�� * ����}_Scale
                             
                             Print #60, "[P:" + FD2(Xp - H3_X1 + DLX, Yp + H3_Y3 * ����) + "]\[���r�S��:" + �S�،a$ + "]"
                             Print #60, "[P:" + FD2(Xp + H3_X1 + DLX, Yp + H3_Y3 * ����) + "]\[���r�S��:" + �S�،a$ + "]"
                             
                             Ypit = 2 * H3_Y2 / (H3_nY - 1)
                             For i2 = 1 To H3_nY
                                  Y00 = Yp + (H3_Y2 - (i2 - 1) * Ypit) * ����
                                  Print #60, "[P:" + FD2(Xp - H3_X2 + DLX, Y00) + "]\[���r�S��:" + �S�،a$ + "]"
                                  Print #60, "[P:" + FD2(Xp + H3_X2 + DLX, Y00) + "]\[���r�S��:" + �S�،a$ + "]"
                                  Next i2
                             
                             Xpit = 2 * H3_X3 / (H3_nX - 1)
                             For i2 = 1 To H3_nX
                                 X00 = Xp - H3_X3 + (i2 - 1) * Xpit
                                 Print #60, "[P:" + FD2(X00, Yp + H3_Y1 * ����) + "]\[���r�S��:" + �S�،a$ + "]"
                                 Next i2
                        
                        
                        
                       Next ii
      
      
      
      '[[[ �į�߰ �z�� Mark ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:Mark]"
                 Stoper$ = ���r_��("�į�߈ʒu")
                 For ii = 1 To Stoper�ʒu_Data��: Xp = Stoper�ʒu_X(ii):   Yp = Stoper�ʒu_Y(ii)
                        ��Stoper_No = Stoper�ʒu_No(ii): Call ���r_Stoper_Get(��Stoper_No): ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                      '[[[ H1 ]]]
                        D1$ = ���r_Stoper("H1"): �S��B = Val(�S��_B$):   �S��H = Dcos(45) * Val(�S��_H$)
                        �S��l = �S��B + 2 * �S��H
                        X1 = Xp + �S��B / 2 + 50:
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp + S_BY / 2 + Val(�S��_Y$) - 50
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90]\[L:" + FD2(0, .BYR - Y1 + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_�S��_������(1)
                                         
                        Case Else:       Y1 = Yp - S_BY / 2 - Val(�S��_Y$) + 50
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]\[L:" + FD2(0, -.BYL - Y1 - Mark_D1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                         Call P_�S��_������(1)
                                         
                        End Select
                      
                      '[[[ H2 ]]]
                        D1$ = ���r_Stoper("H2"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$): XX = Val(�S��_X$): YY = Val(�S��_Y$)
                        X1 = Xp - S_BX / 2 - XX - �S��B: X2 = Xp + S_BX / 2 + XX
                        Select Case Yp
                        Case Is >= 0:    Y1 = Yp - S_BY / 2 - 77
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[<:0]"
                                         If ii = 1 Then
                                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[Lm:" + FD2(0, 15) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_�S��_������(1)
                                              End If
                        
                        Case Else:       X1 = X1 + ���r_J�S�؊J�� * ����}_Scale: X2 = X2 + ���r_J�S�؊J�� * ����}_Scale
                                         Y1 = Yp + S_BY / 2 + 77
                                         Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                                         Print #60, "[P:" + FD2(X2, Y1) + "]\[<:0]"
                                         If ii = Stoper�I�_���ʒu��i + 1 Then
                                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[Lm:" + FD2(0, -22) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(6, 0) + "]"
                                              Call P_�S��_������(1)
                                              End If
                        
                        End Select
                        Next ii
      
      
      
      
      '[[[ �į�߰ X���@ ]]]
                  ���@�ʒu2 = .BYR + ���@���ʒu_�B��E����.U�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_�B��E����.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper�I�_��_X���@(���@�ʒu2, ��2)
      
                  ���@�ʒuD2 = ���@�ʒuD1 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D2 = ���@���ʒu_�B��E����.D�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper�N�_��_X���@(���@�ʒuD2, -��D2)
      
      
      '[[[ �į�߰ Y���@ ]]]
                  ���@�ʒuL3 = ���@�ʒuL2 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ���@���ʒu_�B��E����.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper_Y���@(���@�ʒuL3, ��L3)
      
                  ���@�ʒuL4 = ���@�ʒuL3 + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L4 = ���@���ʒu_�B��E����.L�J�� - 3 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper_Y���@2(���@�ʒuL4, ��L4)
      
      
      Print #60, "[�F:��]\[dot:]"
       '[[[ �B�� ]]]
            Print #60, "[�F:��]\[�:���]"
                  Call P_�B��_����
     End With
     End Sub


Sub P_�B��_�f��FG()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_�B��F�f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         X1 = 40 * ����}_Scale
         Call P_���r_�i�}��(-X1, Y0, 0, "�f�ʂe�|�e")
         Call P_���r_�i�}��(X1, Y0, 0, "�f�ʂf�|�f")
         
      '[[[ �f�ʈʒu�w�� ]]]
         X1 = -.BXL - 10 * ����}_Scale: X2 = .BXR + 10 * ����}_Scale:  Y1 = -50
                Call P_���r_�f�ʈʒu�w��(X2, Y1, X1, Y1, "�d", "�d", 0)
      
      
        Print #60, "[�F:��]\[con:]"
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
                  Call P_���r_��_���f�ʐ}(0, 0, 0, 0)
      
      '[[[ ���� Line ]]]
                  X1 = 0: Y1 = -1.5 * .H: X2 = 0: Y2 = (���@���ʒu_�B��F�f��.U�J�� + 12) * ����}_Scale
                  X3 = 0: Y3 = Y00 + (���@���ʒu_�B��F�f��.U�J�� + 8) * ����}_Scale
                  Call P_���r_Center_Line(X1, Y1, X2, Y2, X3, Y3)
      
      
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = ���@���ʒu_�B��F�f��.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�B��B�f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
      
      '[[[ �į�߰ ]]]
                  Print #60, "[dot:]"
                  Call P_���r_Stoper_X�f��(������, -������)
                  Print #60, "[con:]"
      
      
      '[[[ �į�߰ �z�� ]]]
        Print #60, "[�F:��]\[con:]"
                 �B��$ = ���r_��("�į�߈ʒu")
                 For ii = 1 To Stoper�I�_���ʒu��i: Xp = Stoper�ʒu_X(ii): ' Yp = Stoper�ʒu_Y(ii)
                        ��Stoper_No = Stoper�ʒu_No(ii): Call ���r_Stoper_Get(��Stoper_No): ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                        
                       '[[[ H1 ]]]
                        Print #60, "[�F:��]\[�:���]"
                        D1$ = ���r_Stoper("H1"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$)
                        �S��l = �S��B + 2 * Dcos(45) * �S��H
                        X1 = Xp - �S��l / 2: ' Y1 = Y0 - �S��H
                        For i3 = 1 To �S��P_����
                              Y1 = -�S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(�S��l, 0) + "]"
                              Next i3
                        
                        
                      '[[[ H2 ]]]
                       Print #60, "[�F:��]\[�:�S�ؒf��]"
                        D1$ = ���r_Stoper("H2"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$): XX = Val(�S��_X$): YY = Val(�S��_Y$)
                        X1 = Xp - S_BX / 2 - XX - �S��B: X2 = Xp - S_BX / 2 - XX: X3 = Xp + S_BX / 2 + XX: X4 = Xp + S_BX / 2 + XX + �S��B
                        For i3 = 1 To �S��P_����: Y1 = -�S��P_�ʒu(i3)
                              Print #60, "[P:" + FD2(X1, Y1) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Print #60, "[P:" + FD2(X2, Y1) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Print #60, "[P:" + FD2(X3, Y1) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Print #60, "[P:" + FD2(X4, Y1) + "]\[���r�S��:" + �S��_�a$ + "]"
                              Next i3
                        
                      '[[[ H3** ]]]
                        Print #60, "[�F:��]\[�:���]"
                        D1$ = ���r_Stoper("H1"): H1_�S�،aD = Val(Mid(�S��_�a$, 2)): H1_YY = Val(�S��_Y$): H3Y0 = �S��P_�ʒu(1)
                        D1$ = ���r_Stoper("H2"): H2_�S�،aD = Val(Mid(�S��_�a$, 2)): H2_�S��B = Val(�S��_B$): H2_XX = Val(�S��_X$)
                        D1$ = ���r_Stoper("H3"): �S�،a$ = �S��_�a$: �S�،aD = Val(Mid(�S��_�a$, 2)): �S��YL = �S��L_YL
                              H3_pit = Val(�S��_pit$): If H3_pit < 30 Then H3_pit = 30
                        
                              H3_nX = Int(S_BX / H3_pit) + 2
                              H3_nY = Int(S_BY / H3_pit) + 2
                        
                             H3_X1 = S_BX / 2 + H2_XX + H2_�S��B - H2_�S�،aD / 2 - �S�،aD / 2
                             H3_X2 = S_BX / 2 + H2_XX - H2_�S�،aD / 2 - �S�،aD / 2
                             H3_X3 = S_BX / 2 - H1_�S�،aD / 2 + 0.1 * �S�،aD

                        
                             H3_Y1 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 - �S�،aD / 2
                             H3_Y2 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 + 0.1 * �S�،aD - H1_YY
                             H3_Y3 = S_BY / 2 + H1_YY - H1_�S�،aD / 2 + 0.1 * �S�،aD - 2 * H1_YY
                        
                             ���� = 1: DLX = 0
                             If Yp < 0 Then ���� = -1: DLX = ���r_J�S�؊J�� * ����}_Scale
                             
                             Print #60, "[P:" + FD2(Xp - H3_X1 + DLX, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                             Print #60, "[P:" + FD2(Xp + H3_X1 + DLX, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                             
                             Ypit = 2 * H3_Y2 / (H3_nY - 1)
                             For i2 = 1 To 1: 'H3_nY
                                  Y00 = Yp + (H3_Y2 - (i2 - 1) * Ypit) * ����
                                  Print #60, "[P:" + FD2(Xp - H3_X2 + DLX, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                                  Print #60, "[P:" + FD2(Xp + H3_X2 + DLX, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                                  Next i2
                             
                             Xpit = 2 * H3_X3 / (H3_nX - 1)
                             For i2 = 1 To H3_nX
                                 X00 = Xp - H3_X3 + (i2 - 1) * Xpit
                                 Print #60, "[P:" + FD2(X00, -H3Y0) + "]\[L:" + FD2(0, -�S��YL) + "]"
                                 Next i2
                        
                        
                        
                        
                        
                        Next ii
      
      
      '[[[ �į�߰ �z�� Mark ]]]
        Print #60, "[�F:��]\[con:]"
            Print #60, "[�F:��]\[�:Mark]"
                 �B��$ = ���r_��("�į�߈ʒu")
                 For ii = 1 To Stoper�I�_���ʒu��i: Xp = Stoper�ʒu_X(ii):  ' Yp = Stoper�ʒu_Y(ii)
                        ��Stoper_No = Stoper�ʒu_No(ii): Call ���r_Stoper_Get(��Stoper_No): ����$ = ���r_Stoper("����"): S_BX = ���_D(1): S_BY = ���_D(2)
                        
                       '[[[ H1 ]]]
                        D1$ = ���r_Stoper("H1"): �S��B = Val(�S��_B$):   �S��H = Val(�S��_H$)
                        �S��l = �S��B + 2 * Dcos(45) * �S��H
                        X1 = Xp - �S��l / 2 + 50: X2 = Xp + �S��l / 2 - 50:
                        Y1 = -�S��P_�ʒu(1): Y2 = -�S��P_�ʒu(�S��P_����)
                        
                         Select Case Xp
                         Case Is < 0:    Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + �S��_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_�S��_������(2)
                         
                         Case 0:         Print #60, "[P:" + FD2(X1, 0) + "]\[<R:90," + �S��_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X1, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_�S��_������(2)
                         
                                         Print #60, "[P:" + FD2(X2, 0) + "]\[<R:90," + �S��_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_�S��_������(2)
                         
                         Case Else:      Print #60, "[P:" + FD2(X2, 0) + "]\[<R:90," + �S��_pit$ + ",*]"
                                         Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, -Y2 + Mark_U1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
                                         Call P_�S��_������(2)
                         End Select
                        
                        
                        Next ii
      
      
      '[[[ �į�߰ �z�� ���@ ]]]
                  ���@�ʒuL2 = -.BXL - ���@���ʒu_�B��F�f��.L�J�� * ����}_Scale + ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_�B��F�f��.L�J�� - ���r_���@��_Pit_��̐} - 1
                  D1$ = ���r_Stoper("H2"): Y0 = -�S��P_��L
                  Print #60, "  [P:" + FD2(���@�ʒuL2, Y0) + "]"
                        D11$ = "  [��:" + FD1(-��L2) + ":"
                        For ii = 1 To �S��P_Data��: i2 = �S��P_Data�� - ii + 1
                              Ypit = �S��P_L(i2)
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + "|": If ii = �S��P_Data�� Then Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, -��L2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
                  ���@�ʒuR2 = .BXR + ���@���ʒu_�B��F�f��.R�J�� * ����}_Scale - ���r_���@��_Pit_��̐} * ����}_Scale
                  ��R2 = ���@���ʒu_�B��F�f��.R�J�� - ���r_���@��_Pit_��̐} - 1
                  D1$ = ���r_Stoper("H2"): Y0 = -�S��P_��L
                  Print #60, "  [P:" + FD2(���@�ʒuR2, Y0) + "]"
                        D11$ = "  [��:" + FD1(��R2) + ":"
                        For ii = 1 To �S��P_Data��: i2 = �S��P_Data�� - ii + 1
                              Ypit = �S��P_L(i2)
                              Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + "|": If ii = �S��P_Data�� Then Moj$ = P_���r_��Pit���@(�S��P_Data$(i2)) + ",R=7"
                              D11$ = D11$ + FD3(0, Ypit, ��R2) + "," + Moj$
                              Next ii
                              D11$ = D11$ + "]"
                    Print #60, D11$
      
      
      Print #60, "[�F:��]\[con:]"
      
      
      
      '[[[ �į�߰ X���@ ]]]
                  ���@�ʒu2 = ���@�ʒu1 - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_�B��F�f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper�I�_��_X���@(���@�ʒu2, ��2)
     
     
     
     
     End With
     End Sub
Sub P_�B��_�����k�����^���ڍא}()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"

      '[[[ ��̐��@ ]]]
     End Sub
Sub P_�B��_S1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_�B��("S1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -�S��L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_�S��_������(3)

     End Sub
Sub P_�B��_S2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_�B��("S2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -�S��L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_�S��_������(3)


     End Sub
Sub P_�B��_H1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 45
     D1$ = ���r_Stoper("H1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -�S��L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_�S��_������(3)


     End Sub
Sub P_�B��_H2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_Stoper("H2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -�S��L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_�S��_������(3)


     End Sub
Sub P_�B��_H3()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_Stoper("H3*")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)

     Print #60, "[P:" + FD2(0, -�S��L_Ycen) + "]\[pm:" + FD2(-10, -15) + "]"
     Call P_�S��_������(3)


     End Sub

'����������������������������������������������������������������������������������������������
'���� ��         ��}        �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_��_�f��AB()
     ' �c�f��
     ReDim �S��_L�ʒu(999) As Single
     ReDim Lpit(999) As Single
     ReDim �\��Y_���C_1�i��(5) As Single
     ReDim �\��Y_���C_2�i��(5) As Single
     ReDim �\��Y_���C_3�i��(5) As Single
     
     With �y�؋��r_��
          
          Cut�ʒu = 1000: ' ������
         ��bH = �y�؋��r_��b.H: ��H = .H: ��H = �y�؋��r_��.H
         Y00 = ��bH + ��H + ��H
         
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      '[[[ �i�}�� ]]]
         Y0 = Y00 + (���@���ʒu_���f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         X01 = -.BYL: X02 = .BYR
         Call P_���r_�i�}��(X01, Y0, 0, "�f�ʂ`�|�`")
         Call P_���r_�i�}��(X02, Y0, 0, "�f�ʂa�|�a")
         
         
      '[[[ �f�ʈʒu�w�� ]]]
         X1 = -0.7 * .BYL: Y1 = Y00 + (���@���ʒu_���f��.U�J�� - 2 * ���r_���@��_Pit_��̐}) * ����}_Scale
         X2 = X1: Y2 = -�f�ʈʒu�w��J�� * ����}_Scale
         Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "�b", "�b", 0)
         
         X1 = 0.7 * .BYR: Y1 = Y00 + (���@���ʒu_���f��.U�J�� - 2 * ���r_���@��_Pit_��̐}) * ����}_Scale
         X2 = X1: Y2 = -�f�ʈʒu�w��J�� * ����}_Scale
         Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "�c", "�c", 0)
         
         
      '[[[ ����� ]]]
            Print #60, "[�F:��]\[�:���]"
         Print #60, "[P:" + FD2(-.BYL, �y�؋��r_��b.H) + "]\[L:" + FD2(0, .H) + "|" + FD2(-�y�؋��r_��.BYL + .BYL, 0) + "|" + FD2(0, �y�؋��r_��.H) + "|" + FD2(�y�؋��r_��.BYL, 0) + "]"
         Print #60, "[P:" + FD2(.BYR, �y�؋��r_��b.H) + "]\[L:" + FD2(0, .H) + "|" + FD2(�y�؋��r_��.BYR - .BYR, 0) + "|" + FD2(0, �y�؋��r_��.H) + "|" + FD2(-�y�؋��r_��.BYR, 0) + "]"
       
         Print #60, "[dot:]\[P:" + FD2(-.BYL, �y�؋��r_��b.H) + "]\[L:" + FD2(.BY, 0) + "]\[con:]"
       
         Print #60, "[P:" + FD2(-.BYL - Cut�ʒu, 0) + "]\[L:" + FD2(.BY + 2 * Cut�ʒu, 0) + "]"
         Print #60, "[P:" + FD2(-.BYL - Cut�ʒu, -�y�؋��r_��b.��con_t) + "]\[L:" + FD2(.BY + 2 * Cut�ʒu, 0) + "]"
       
         �p�xL = Calu�p�x(0, 0, �y�؋��r_��b.BYL_�[, �y�؋��r_��b.H_U)
              XL = �y�؋��r_��b.BYL_�� - .BYL:   XLL = Cut�ʒu - XL: YL = XLL * Dsin(�p�xL)
              Print #60, "[P:" + FD2(-.BYL - Cut�ʒu, �y�؋��r_��b.H - YL) + "]\[L:" + FD2(XLL, YL) + "|" + FD2(XL, 0) + "]"
       
         �p�xR = Calu�p�x(0, 0, �y�؋��r_��b.BYR_�[, �y�؋��r_��b.H_U)
              XL = �y�؋��r_��b.BYR_�� - .BYR:   XLL = Cut�ʒu - XL: YL = XLL * Dsin(�p�xL)
              Print #60, "[P:" + FD2(.BYR + Cut�ʒu, �y�؋��r_��b.H - YL) + "]\[L:" + FD2(-XLL, YL) + "|" + FD2(-XL, 0) + "]"
       
         X1 = -.BYL - Cut�ʒu: Y1 = -�y�؋��r_��b.��con_t - 100: X2 = X1: Y2 = �y�؋��r_��b.H - YL + 100
              Print #60, "[p:-50,0]\[�ؒfM1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
         X1 = .BYR + Cut�ʒu:  X2 = X1:
              Print #60, "[p:-50,0]\[�ؒfM1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
       
      '[[[ �į�߰ ]]]
            Print #60, "[�F:��]\[�:���]"
           Print #60, "[dot:]"
           Call P_���r_Stoper_Y�f��(Y00, 0, 0)
       
       
      '[[[ ���� Line ]]]
           X1 = 0: Y1 = -15 * ����}_Scale: X2 = 0: Y2 = Y00 + (���@���ʒu_���f��.U�J�� + 15 + 5) * ����}_Scale
           X3 = 0: Y3 = Y00 + (���@���ʒu_���f��.U�J�� + 5) * ����}_Scale
           Call P_���r_Center_Line(X1, Y1, X2, Y2, X3, Y3)
           
      '[[[ X ���@  ���� ]]]
           ���@�ʒu1 = Y00 + ���@���ʒu_���f��.U�J�� * ����}_Scale
           ��1 = ���@���ʒu_���f��.U�J�� - 1
           Print #60, "  [P:" + FD2(-.BYL, ���@�ʒu1) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(.BY, 0, -��1) + "]"
           ���@�ʒu2 = ���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale
           Print #60, "  [P:" + FD2(-.BYL, ���@�ʒu2) + "]"
           Print #60, "  [��:" + FD3(.BYL, 0, 0) + "|" + FD3(.BYR, 0, 0) + "]"
            
      '[[[ Y ���@  ���� ]]]
           ���@�ʒu1 = -�y�؋��r_��.BYL - ���@���ʒu_���f��.L�J�� * ����}_Scale
           ��1 = ���@���ʒu_���f��.L�J�� - 1
           ��11 = (-���@�ʒu1 - Cut�ʒu - .BYL) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(���@�ʒu1, 0) + "]"
           Print #60, "  [��:" + F9(-��11) + ":" + FD3(0, ��bH, -��1) + "|" + FD3(0, ��H + ��H, -��1) + "]"
           ���@�ʒu2 = ���@�ʒu1 + ���r_���@��_Pit_��̐} * ����}_Scale
           ��2 = ���@���ʒu_���f��.L�J�� - ���r_���@��_Pit_��̐} - 1
           ��21 = (-���@�ʒu2 - Cut�ʒu - .BYL) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(���@�ʒu2, 0) + "]"
           Print #60, "  [��:" + FD3(0, �y�؋��r_��b.H_D, -��21) + "|" + FD3(0, �y�؋��r_��b.H_U, 0) + "|" + FD3(0, .H, -��2) + "|" + FD3(0, �y�؋��r_��.H1, -��2) + "|" + FD3(0, �y�؋��r_��.H2, 0) + "]"
            
            
       
    '[[[ �\��X ���W  ]]]
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
                      ni = 2: If .r = 0 Then ni = 3
                  �\��X_Hoop = -.BYL + (�S��P_�ʒu(ni) + �S��P_�ʒu(ni + 1)) / 2
    
    
    
    '[[[ �\��Y ���W  ]]]
              ��_LL = 20 * ����}_Scale
              
              D1$ = ���r_��("�OHoopY")
                  Ny0 = Int(2 * �S��P_���� / 3)
                  Ny1 = Int(�S��P_���� / 2)
                  �\��Y_��ؔ� = (�S��P_�ʒu(Ny0) + �S��P_�ʒu(Ny0 + 1)) / 2
                  �\��Y_���X = (�S��P_�ʒu(Ny0 - 4) + �S��P_�ʒu(Ny0 - 3)) / 2
                  Y�i�� = ���r_��("Ypit�i��")
                  Select Case Y�i��
                  Case 1:   '  �\��Y_���X = (�S��P_�ʒu(Ny1 - 5) + �S��P_�ʒu(Ny1 - 4)) / 2
                              �\��Y_���C_1�i��(1) = (�S��P_�ʒu(Ny1) + �S��P_�ʒu(Ny1 + 1)) / 2
                              �\��Y_���C_1�i��(2) = (�S��P_�ʒu(Ny1 + 5) + �S��P_�ʒu(Ny1 + 6)) / 2
                              �\��Y_���C_1�i��(3) = (�S��P_�ʒu(Ny1 + 10) + �S��P_�ʒu(Ny1 + 11)) / 2
       
                  Case Else:
                              �\��Y_���C_1�i��(1) = (�S��P_�ʒu(Ny0 - 8) + �S��P_�ʒu(Ny0 - 7)) / 2
                              �\��Y_���C_1�i��(2) = (�S��P_�ʒu(Ny0 - 22) + �S��P_�ʒu(Ny0 - 21)) / 2
                              �\��Y_���C_1�i��(3) = (�S��P_�ʒu(Ny0 - 36) + �S��P_�ʒu(Ny0 - 35)) / 2
                              �\��Y_���C_2�i��(1) = (�S��P_�ʒu(Ny0 - 12) + �S��P_�ʒu(Ny0 - 11)) / 2
                              �\��Y_���C_2�i��(2) = (�S��P_�ʒu(Ny0 - 26) + �S��P_�ʒu(Ny0 - 25)) / 2
                              �\��Y_���C_2�i��(3) = (�S��P_�ʒu(Ny0 - 40) + �S��P_�ʒu(Ny0 - 39)) / 2
                              
                 End Select
       
       
    '**** �� r�������ꍇ ????
    '[[[  X����_��� ]]]
            Print #60, "[�F:��]\[�:���]"
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
                      ��ؔԍ� = ����_���ؔԍ�(1):   D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      ���r_�S�؃� = 90:  Y0 = Val(�S��_�ʒu$)
                      X0 = -.BYL + ���dt:  Call P_���r_�S�ؐ}("", "", "R", X0, Y0)
                      X0 = .BYR - ���dt: Call P_���r_�S�ؐ}("", "", "", X0, Y0)
     
           '[[[  X����_��� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                      XK1 = ���r_��("X��ؔ��_1�i")
                      XL = .BY - 2 * XK1: XL2 = .BY - XK1 + Mark_L1
                      Print #60, "[P:" + FD2(.BYR - XK1, �\��Y_���X) + "]\[<:180," + F9(XL) + "]\[L:" + FD2(-XL2, 0) + "]"
                      D1$ = ���r_��("X���_1�i"):  ���ؔԍ� = ����_D���ؔԍ�(1): D1$ = Fp_���r_��_���(���ؔԍ�)
                      �o�S��_�a$ = "": �O�S��_�a$ = "": XL0 = ����_L1 * ����}_Scale + 1.6 * Mark_Pit * (����_���؎�ސ� - 1)
                              
                              Print #60, "[L:" + FD2(-XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To ����_���؎�ސ�
                              ���ؔԍ� = ����_D���ؔԍ�(ii): D1$ = Fp_���r_��_���(���ؔԍ�)
                              If �O�S��_�a$ <> �S��_�a$ Then �o�S��_�a$ = �o�S��_�a$ + " " + �S��_�a$: �O�S��_�a$ = �S��_�a$
                              �S��_��_����1$ = Trim(�o�S��_�a$)
                              Select Case ii
                              Case ����_���؎�ސ�: Call P_�S��_������(1)
                              Case Else: Call P_�S��_������(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              Next ii
                      
           
           '[[[ X����_��� ��ؐ��@  ]]]
              XK1 = ���r_��("X��ؔ��_1�i")
                   D11$ = "  [P:" + FD2(-.BYL, �\��Y_��ؔ�) + "]\[��:" + FD3(XK1, 0, 0) + ",,LR=8]"
                   D12$ = "  [P:" + FD2(.BYR - XK1, �\��Y_��ؔ�) + "]\[��:" + FD3(XK1, 0, 0) + ",,RL=8]"
                   Print #60, D11$: Print #60, D12$
     
     

    '[[[  Y����_��� ]]]
            Print #60, "[�F:��]\[�:���]"
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
                      For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii):   D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      ���r_�S�؃� = 90:  Y0 = Val(�S��_�ʒu$): Fook����$ = "R"
                      X0 = -.BYL + �S��P_�ʒu(ii): If X0 > 0 Then Fook����$ = ""
                      Call P_���r_�S�ؐ}("", "V", Fook����$, X0, Y0)
                      Next ii
           
           Print #60, "[�F:��]"
           '[[[  Y����_��� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                      D1$ = ���r_��("Y���_1�i"):  D1$ = ���r_��("Ypit_1�i")
                      
                      For ii = 1 To ����_���؎�ސ�: ' D1$ = ���r_��("C" + F9(ii) + "�{��")
                            ����n = 0: ���ؔԍ� = ����_D���ؔԍ�(ii): ' D1$ = Fp_���r_��_���(���ؔԍ�)
                            For i2 = 1 To ����_���؃���
                                 If ���ؔԍ� = ����_���ؔԍ�(i2) Then ����n = ����n + 1: �S��_L�ʒu(����n) = �S��P_�ʒu(i2)
                                 Next i2
                            
                            If ����n > 0 Then
                            X0 = �S��_L�ʒu(����n) - .BYL:    Y0 = �\��Y_���C_1�i��(ii)
                            For i2 = 1 To ����n:  Lpit(i2) = �S��_L�ʒu(i2 + 1) - �S��_L�ʒu(i2): Next i2
                            D1$ = ""
                            For i2 = ����n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BYL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_���r_��_���(���ؔԍ�):   �S��_��_����2$ = F9(����n) + "-" + �S��_�a$
                            Call P_�S��_������(2)
                            End If
                       Next ii
                 
                 If Y�i�� > 1 Then
                      D1$ = ���r_��("Y���_2�i"):  D1$ = ���r_��("Ypit_2�i")
                      For ii = 1 To ����_���؎�ސ�: D1$ = ���r_��("C" + F9(ii) + "�{��")
                            ����n = 0: ���ؔԍ� = ����_D���ؔԍ�(ii): ' D1$ = Fp_���r_��_���(���ؔԍ�)
                            For i2 = 1 To ����_���؃���
                                 If ���ؔԍ� = ����_���ؔԍ�(i2) Then ����n = ����n + 1: �S��_L�ʒu(����n) = �S��P_�ʒu(i2)
                                 Next i2
                            
                            If ����n > 0 Then
                            X0 = �S��_L�ʒu(����n) - .BYL:    Y0 = �\��Y_���C_2�i��(ii)
                            For i2 = 1 To ����n:  Lpit(i2) = �S��_L�ʒu(i2 + 1) - �S��_L�ʒu(i2): Next i2
                            D1$ = ""
                            For i2 = ����n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BYL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_���r_��_���(���ؔԍ�): �S��_��_����2$ = F9(����n) + "-" + �S��_�a$
                            Call P_�S��_������(2)
                            Print #60, "[Msize:" + F9(���r_�S�ؖ���_Msize3) + "]"
                            Print #60, "[pm:" + FD2(2, -4.5) + "]\(��i��)"
                            End If
                       Next ii
                   
                   
                      End If
    
       
    '[[[  �O�� Hoop ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '     c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150     '###
     
              D1$ = ���r_��("�OHoopY")
              'D11$ = �S��_Y$
                           Call Ddata("X", UCase(�S��_Y$), Ds$(), Di(), ni)
                           Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = .CHoop_r: If Hoop_r < 0 Then Hoop_r = 0
                  X0 = -Hoop_YL / 2
              For ii = 1 To �S��P_����
                  Y0 = �S��P_�ʒu(ii)
                  Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(Hoop_YL, 0) + "]"
                  Next ii
              
    '[[[  �O�� Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("�OHoopY")
              X0 = �\��X_Hoop: Y0 = �S��P_�ʒu(1): YL = Y00 - Y0 + Mark_U1
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + �S��_pit$ + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
              Print #60, D1$
                      Call P_�S��_������(2)
    
    
    
    
    '[[[  �O�� Hoop ���@ ]]]
              ���@�ʒu3 = -�y�؋��r_��.BYL - ���@���ʒu_���f��.L�J�� * ����}_Scale + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��3 = ���@���ʒu_���f��.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
              ��31 = (-���@�ʒu3 - Cut�ʒu - .BYL) / ����}_Scale - 1
              Print #60, "  [P:" + FD2(���@�ʒu3, 0) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii))
                        Select Case �S��P_L(ii)
                        Case Is <= ��bH:          ��00 = ��31
                        Case Is <= ��bH + ��H:    ��00 = ��3
                        Case Else:                 ��00 = ��3
                        End Select
                        
                        D11$ = D11$ + FD3(0, �S��P_L(ii), -��00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - �S��P_�ʒu(�S��P_����), 0) + "]"
              Print #60, D11$
     
    '[[[  X���� ���� Hoop ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '     c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057    '(c3) Hoop X����  ���� 1
     
              YL = ���r_��("��HoopX_YL")
              D1$ = ���r_��("��HoopX")
                  X0 = -YL / 2
              For ii = 1 To �S��P_����
                  Y0 = �S��P_�ʒu(ii) + 15
                  '*2002.10.28
                  Print #60, "[P:" + FD2(X0 + YL, Y0) + "]\[�M2:" + FD4(-YL, 0, 1.5, 45) + "]"
                  Next ii
     
     End With

     End Sub




Sub P_��_�f��CD()
     ' �c�f��
     ReDim �S��_L�ʒu(999) As Single
     ReDim Lpit(999) As Single
     ReDim �\��Y_���C_1�i��(5) As Single
     ReDim �\��Y_���C_2�i��(5) As Single
     ReDim �\��Y_���C_3�i��(5) As Single

     With �y�؋��r_��
      
         Cut�ʒu = 1000: ' ������
         ��bH = �y�؋��r_��b.H: ��H = .H: ��H = �y�؋��r_��.H
         Y00 = ��bH + ��H + ��H
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 20 * ����}_Scale
                 Mark_L1 = 4 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
         Y0 = Y00 + (���@���ʒu_�����f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         X01 = -.BXL: X02 = .BXR
         Call P_���r_�i�}��(X01, Y0, 0, "�f�ʂb�|�b")
         Call P_���r_�i�}��(X02, Y0, 0, "�f�ʂc�|�c")
         
      '[[[ �f�ʈʒu�w�� ]]]
         X1 = -0.7 * .BXL: Y1 = Y00 + (���@���ʒu_�����f��.U�J�� - 2 * ���r_���@��_Pit_��̐}) * ����}_Scale
         X2 = X1: Y2 = -�f�ʈʒu�w��J�� * ����}_Scale
         Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, "�`", "�`", 0)
         
         X1 = 0.7 * .BXR: Y1 = Y00 + (���@���ʒu_�����f��.U�J�� - 2 * ���r_���@��_Pit_��̐}) * ����}_Scale
         X2 = X1: Y2 = -�f�ʈʒu�w��J�� * ����}_Scale
         Call P_���r_�f�ʈʒu�w��(X2, Y1, X1, Y2, "�a", "�a", 0)
         
         X1 = -1.15 * �y�؋��r_��.BXL: Y1 = ��bH + ��H + �y�؋��r_��.H1 + 0.4 * �y�؋��r_��.H2
         X2 = 1.15 * �y�؋��r_��.BXR: Y2 = Y1
         Call P_���r_�f�ʈʒu�w��(X2, Y2, X1, Y1, "��", "��", 0)
      
         X1 = -1.3 * .BXL: Y1 = ��bH + 0.25 * ��H
         X2 = 1.3 * .BXR: Y2 = Y1
         Call P_���r_�f�ʈʒu�w��(X2, Y2, X1, Y1, "��", "��", 0)
      
      
      '[[[ ����� ]]]
            Print #60, "[�F:��]\[�:���]"
     
         Y0 = �y�؋��r_��b.H + .H + �y�؋��r_��.H
         Call P_���r_��_���f�ʐ}(0, Y0, 0, .H)

         Print #60, "[dot:]\[P:" + FD2(-.BXL, �y�؋��r_��b.H) + "]\[L:" + FD2(.BX, 0) + "]\[con:]"
       
         Print #60, "[P:" + FD2(-.BXL - Cut�ʒu, 0) + "]\[L:" + FD2(.BX + 2 * Cut�ʒu, 0) + "]"
         Print #60, "[P:" + FD2(-.BXL - Cut�ʒu, -�y�؋��r_��b.��con_t) + "]\[L:" + FD2(.BX + 2 * Cut�ʒu, 0) + "]"

         Print #60, "[P:" + FD2(-.BXL, �y�؋��r_��b.H) + "]\[L:" + FD2(-Cut�ʒu, 0) + "]"
         Print #60, "[P:" + FD2(.BXR, �y�؋��r_��b.H) + "]\[L:" + FD2(Cut�ʒu, 0) + "]"

         Print #60, "[dot:]\[P:" + FD2(-.BXR - Cut�ʒu, �y�؋��r_��b.H_D) + "]\[L:" + FD2(.BX + 2 * Cut�ʒu, 0) + "]\[con:]"

         X1 = -.BXL - Cut�ʒu: Y1 = -�y�؋��r_��b.��con_t - 100: X2 = X1: Y2 = �y�؋��r_��b.H + 100
              Print #60, "[p:-50,0]\[�ؒfM1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
         X1 = .BXR + Cut�ʒu:  X2 = X1:
              Print #60, "[p:-50,0]\[�ؒfM1:" + FD6(X1, Y1, X2, Y2, 5, 3) + "]"
       
      '[[[ �į�߰ ]]]
            Print #60, "[�F:��]\[�:���]"
           Print #60, "[dot:]"
           Call P_���r_Stoper_X�f��(Y00, 0)
       
       
      '[[[ ���� Line ]]]
           X1 = 0: Y1 = -15 * ����}_Scale: X2 = 0: Y2 = Y00 + (���@���ʒu_�����f��.U�J�� + 15 + 5) * ����}_Scale
           X3 = 0: Y3 = Y00 + (���@���ʒu_�����f��.U�J�� + 5) * ����}_Scale
           Call P_���r_Center_Line(X1, Y1, X2, Y2, X3, Y3)
                      
           
      '[[[ X ���@  ���� ]]]
           ���@�ʒu1 = Y00 + ���@���ʒu_�����f��.U�J�� * ����}_Scale
           ��1 = ���@���ʒu_�����f��.U�J�� - 1
           Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu1) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
           ���@�ʒu2 = ���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale
           Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu2) + "]"
           Print #60, "  [��:" + FD3(.BXL, 0, 0) + "|" + FD3(.BXR, 0, 0) + "]"
            
      '[[[ Y (L) ���@  ���� ]]]
           ���@�ʒuL1 = -�y�؋��r_��.BXL - ���@���ʒu_�����f��.L�J�� * ����}_Scale
           ��L1 = ���@���ʒu_�����f��.L�J�� - 1
           ��L11 = (-���@�ʒuL1 - Cut�ʒu - .BXL) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(���@�ʒuL1, 0) + "]"
           Print #60, "  [��:" + F9(-��L11) + ":" + FD3(0, ��bH, -��L11) + "|" + FD3(0, ��H + ��H, -��L1) + "]"
           
           ���@�ʒuL2 = ���@�ʒuL1 + ���r_���@��_Pit_��̐} * ����}_Scale
           ��L2 = ���@���ʒu_�����f��.L�J�� - ���r_���@��_Pit_��̐} - 1
           ��L21 = (-���@�ʒuL2 - Cut�ʒu - .BXL) / ����}_Scale - 1
           ��L22 = (-���@�ʒuL2 - .BXL) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(���@�ʒuL2, 0) + "]"
           Print #60, "  [��:" + FD3(0, �y�؋��r_��b.H_D, -��L21) + "|" + FD3(0, �y�؋��r_��b.H_U, 0) + "|" + FD3(0, .H, -��L22) + "|" + FD3(0, �y�؋��r_��.H1, -��L2) + "|" + FD3(0, �y�؋��r_��.H2, 0) + "]"
            
      '[[[ Y (R) ���@  ���� ]]]
           ���@�ʒu1 = �y�؋��r_��.BXR + ���@���ʒu_�����f��.R�J�� * ����}_Scale
           ��1 = ���@���ʒu_�����f��.R�J�� - 1
           ��11 = (���@�ʒu1 - Cut�ʒu - .BXR) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(���@�ʒu1, 0) + "]"
           Print #60, "  [��:" + F9(��11) + ":" + FD3(0, ��bH, ��11) + "|" + FD3(0, ��H + ��H, ��1) + "]"
           ���@�ʒu2 = ���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale
           ��2 = ���@���ʒu_�����f��.R�J�� - ���r_���@��_Pit_��̐} - 1
           ��21 = (���@�ʒu2 - Cut�ʒu - .BXR) / ����}_Scale - 1
           ��22 = (���@�ʒu2 - .BXR) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(���@�ʒu2, 0) + "]"
           Print #60, "  [��:" + FD3(0, �y�؋��r_��b.H_D, ��21) + "|" + FD3(0, �y�؋��r_��b.H_U, 0) + "|" + FD3(0, .H, ��22) + "|" + FD3(0, �y�؋��r_��.H1, ��2) + "|" + FD3(0, �y�؋��r_��.H2, 0) + "]"
            
    
    '[[[ �\��X ���W  ]]]
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
                      ni = 3: If .r = 0 Then ni = 4
                  �\��X_XHoop = -.BXL + (�S��P_�ʒu(ni) + �S��P_�ʒu(ni + 1)) / 2
                  �\��X_XHoop�� = 0.7 * .BXL
    
    
    
    '[[[ �\��Y ���W  ]]]
              ��_LL = 20 * ����}_Scale
              
              D1$ = ���r_��("�OHoopX")
                  Ny0 = Int(2 * �S��P_���� / 3)
                  Ny1 = Int(�S��P_���� / 2)
                  �\��Y_��ؔ� = (�S��P_�ʒu(Ny0) + �S��P_�ʒu(Ny0 + 1)) / 2
                  �\��Y_���Y = (�S��P_�ʒu(Ny0 - 4) + �S��P_�ʒu(Ny0 - 3)) / 2
                  X�i�� = ���r_��("Xpit�i��")
                  Select Case Y�i��
                  Case 1:   '  �\��Y_���X = (�S��P_�ʒu(Ny1 - 5) + �S��P_�ʒu(Ny1 - 4)) / 2
                              �\��Y_���C_1�i��(1) = (�S��P_�ʒu(Ny1) + �S��P_�ʒu(Ny1 + 1)) / 2
                              �\��Y_���C_1�i��(2) = (�S��P_�ʒu(Ny1 + 5) + �S��P_�ʒu(Ny1 + 6)) / 2
                              �\��Y_���C_1�i��(3) = (�S��P_�ʒu(Ny1 + 10) + �S��P_�ʒu(Ny1 + 11)) / 2
       
                  Case Else:
                              �\��Y_���C_1�i��(1) = (�S��P_�ʒu(Ny0 - 8) + �S��P_�ʒu(Ny0 - 7)) / 2
                              �\��Y_���C_1�i��(2) = (�S��P_�ʒu(Ny0 - 22) + �S��P_�ʒu(Ny0 - 21)) / 2
                              �\��Y_���C_1�i��(3) = (�S��P_�ʒu(Ny0 - 36) + �S��P_�ʒu(Ny0 - 35)) / 2
                              �\��Y_���C_2�i��(1) = (�S��P_�ʒu(Ny0 - 12) + �S��P_�ʒu(Ny0 - 11)) / 2
                              �\��Y_���C_2�i��(2) = (�S��P_�ʒu(Ny0 - 26) + �S��P_�ʒu(Ny0 - 25)) / 2
                              �\��Y_���C_2�i��(3) = (�S��P_�ʒu(Ny0 - 40) + �S��P_�ʒu(Ny0 - 39)) / 2
                              
                 End Select
    
    
    '**** �� r�������ꍇ ????
    '[[[  X����_��� ]]]
            Print #60, "[�F:��]\[�:���]"
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
                      For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii):   D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      ���r_�S�؃� = 90:  Y0 = Val(�S��_�ʒu$)
                      X0 = -.BXL + �S��P_�ʒu(ii):
                     '2002.10.28
                      If X0 > 0 Then Exit For
                      Fuck����$ = "R": If X0 > 0 Then Fuck����$ = ""
                      Call P_���r_�S�ؐ}("", "V", Fuck����$, X0, Y0)
                      Next ii
           
           
           '[[[  X����_��� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                      D1$ = ���r_��("X���_1�i"):  D1$ = ���r_��("Xpit_1�i")
                      For ii = 1 To ����_���؎�ސ�: ' D1$ = ���r_��("C" + F9(ii) + "�{��")
                            ����n = 0: ���ؔԍ� = ����_D���ؔԍ�(ii): ' D1$ = Fp_���r_��_���(���ؔԍ�)
                            For i2 = 1 To ����_���؃���
                                 '*2002.10.28
                                 X0 = -.BXL + �S��P_�ʒu(i2): If X0 > 0 Then Exit For
                                 If ���ؔԍ� = ����_���ؔԍ�(i2) Then ����n = ����n + 1: �S��_L�ʒu(����n) = �S��P_�ʒu(i2)
                                 Next i2
                            
                            If ����n > 0 Then
                            X0 = �S��_L�ʒu(����n) - .BXL:    Y0 = �\��Y_���C_1�i��(ii)
                            For i2 = 1 To ����n:  Lpit(i2) = �S��_L�ʒu(i2 + 1) - �S��_L�ʒu(i2): Next i2
                            D1$ = ""
                            For i2 = ����n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BXL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_���r_��_���(���ؔԍ�):   �S��_��_����2$ = F9(����n) + "-" + �S��_�a$
                            Call P_�S��_������(2)
                            End If
                       Next ii
                 
                 If X�i�� > 1 Then
                      D1$ = ���r_��("X���_2�i"):  D1$ = ���r_��("Xpit_2�i")
                      For ii = 1 To ����_���؎�ސ�: 'D1$ = ���r_��("C" + F9(ii) + "�{��")
                            ����n = 0: ���ؔԍ� = ����_D���ؔԍ�(ii): ' D1$ = Fp_���r_��_���(���ؔԍ�)
                            For i2 = 1 To ����_���؃���
                                 '*2002.10.28
                                 X0 = -.BXL + �S��P_�ʒu(i2): If X0 > 0 Then Exit For
                                 If ���ؔԍ� = ����_���ؔԍ�(i2) Then ����n = ����n + 1: �S��_L�ʒu(����n) = �S��P_�ʒu(i2)
                                 Next i2
                            
                            If ����n > 0 Then
                            X0 = �S��_L�ʒu(����n) - .BXL:    Y0 = �\��Y_���C_2�i��(ii)
                            For i2 = 1 To ����n:  Lpit(i2) = �S��_L�ʒu(i2 + 1) - �S��_L�ʒu(i2): Next i2
                            D1$ = ""
                            For i2 = ����n - 1 To 1 Step -1: D1$ = D1$ + FP1(Lpit(i2)): Next i2
                            D1$ = Mid(D1$, 2)
                            XL2 = X0 + .BXL + Mark_L1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:180," + D1$ + "]\[L:" + FD2(-XL2, 0) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                            D1$ = Fp_���r_��_���(���ؔԍ�):   �S��_��_����2$ = F9(����n) + "-" + �S��_�a$
                            Call P_�S��_������(2)
                            Print #60, "[Msize:" + F9(���r_�S�ؖ���_Msize3) + "]"
                            Print #60, "[pm:" + FD2(2, -4.5) + "]\(��i��)"
                       
                            End If
                       Next ii
                       End If

    '[[[  Y����_��� ]]]
            Print #60, "[�F:��]\[�:���]"
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
                      'For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(1):   D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      ���r_�S�؃� = 90:  Y0 = Val(�S��_�ʒu$)
                      X0 = -.BXL + ���dt:   Call P_���r_�S�ؐ}("", "", "R", X0, Y0)
                      X0 = .BXR - ���dt:   Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                      'Next ii

           '[[[  Y���� ��_��� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                      XK1 = ���r_��("Y��ؔ��_1�i")
                      XL = .BX - 2 * XK1: XL2 = XK1 + Marl_L1
                      Print #60, "[P:" + FD2(-.BXL + XK1, �\��Y_���Y) + "]\[<:180]\[L:" + FD2(-XL2, 0) + "]"
                      D1$ = ���r_��("Y���_1�i"):  ���ؔԍ� = ����_D���ؔԍ�(1): D1$ = Fp_���r_��_���(���ؔԍ�)
                      �o�S��_�a$ = "": �O�S��_�a$ = "":
                             XL0 = ����_L1 * ����}_Scale + 2# * Mark_Pit * (����_���؎�ސ� - 1)

                              Print #60, "[L:" + FD2(-XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To ����_���؎�ސ�
                              ���ؔԍ� = ����_D���ؔԍ�(ii): D1$ = Fp_���r_��_���(���ؔԍ�)
                              If �O�S��_�a$ <> �S��_�a$ Then �o�S��_�a$ = �o�S��_�a$ + " " + �S��_�a$: �O�S��_�a$ = �S��_�a$
                              �S��_��_����1$ = Trim(�o�S��_�a$)
                              Select Case ii
                              Case ����_���؎�ސ�: Call P_�S��_������(1)
                              Case Else: Call P_�S��_������(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              
                              Next ii
           
           
           
           
           '[[[  Y���� �E_��� Mark ]]]
                      XK1 = ���r_��("Y��ؔ��_1�i")
                      XL = .BX - 2 * XK1: XL2 = XK1 + Mark_R1
                      Print #60, "[P:" + FD2(.BXR - XK1, �\��Y_���Y) + "]\[<:0]\[L:" + FD2(XL2, 0) + "]"
                      D1$ = ���r_��("Y���_1�i"):  ���ؔԍ� = ����_D���ؔԍ�(1): D1$ = Fp_���r_��_���(���ؔԍ�)
                      �o�S��_�a$ = "": �O�S��_�a$ = "":
                              XL0 = ����_L1 * ����}_Scale + 1.1 * Mark_Pit * (����_���؎�ސ� - 1)
                              Print #60, "[l:" + FD2(XL0, 0) + "]\[pm:5,0]"
                              
                              For ii = 1 To ����_���؎�ސ�
                              ���ؔԍ� = ����_D���ؔԍ�(ii): D1$ = Fp_���r_��_���(���ؔԍ�)
                              If �O�S��_�a$ <> �S��_�a$ Then �o�S��_�a$ = �o�S��_�a$ + " " + �S��_�a$: �O�S��_�a$ = �S��_�a$
                              �S��_��_����1$ = Trim(�o�S��_�a$)
                              Select Case ii
                              Case ����_���؎�ސ�: Call P_�S��_������(1)
                              Case Else: Call P_�S��_������(0): Print #60, "[p:" + FD2(1.1 * Mark_Pit, 0) + "]"
                              End Select
                              
                              Next ii
           
           
           '[[[ X����_��� ��ؐ��@  ]]]
              XK1 = ���r_��("Y��ؔ��_1�i")
                   D11$ = "  [P:" + FD2(-.BXL, �\��Y_��ؔ�) + "]\[��:" + FD3(XK1, 0, 0) + ",,LR=8]"
                   D12$ = "  [P:" + FD2(.BXR - XK1, �\��Y_��ؔ�) + "]\[��:" + FD3(XK1, 0, 0) + ",,RL=8]"
                   Print #60, D11$: Print #60, D12$
     


          '[[[  �O�� Hoop ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '     c1=D22_K75_X3858_Y1120x2858_@1200+6x200+4x150+72x150     '###
     
              D1$ = ���r_��("�OHoopX")
              'D11$ = �S��_Y$
                         '  Call Ddata("X", UCase(�S��_Y$), Ds$(), Di(), ni)
                         '  Hoop_XL = Di(1): Hoop_YL = Di(2): Hoop_r = .CHoop_r: If Hoop_r < 0 Then Hoop_r = 0
                  
                  XL = .BXL - �S��_SK�ʒu: XDL = 3 * ����}_Scale: YDL = 1.5 * ����}_Scale
              For ii = 1 To �S��P_����:  Y0 = �S��P_�ʒu(ii)
                  Print #60, "[P:" + FD2(0, Y0) + "]\[L:" + FD2(-XL, 0) + "|" + FD2(XDL, -YDL) + "]"
                  Next ii
    
    '[[[  �O�� X Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("�OHoopX")
              X0 = �\��X_XHoop: Y0 = �S��P_�ʒu(1): XL = ��_LL: YL = Y00 - Y0 + Mark_U1
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + �S��_pit$ + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
              Print #60, D1$
                      Call P_�S��_������(2)
    


    '[[[  X���� ���� Hoop ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '     c2=D19_Y1500_@1200+6x200+4x150+40x150+16x300_B1678+J+2677_D1057    '(c3) Hoop X����  ���� 1

              XL = ���r_��("��HoopX_XL")
              D1$ = ���r_��("��HoopX")
              Print #60, "[dot:]"
              For ii = 1 To �S��P_����
                  Y0 = �S��P_�ʒu(ii)
                  Print #60, "[P:" + FD2(0, Y0) + "]\[L:" + FD2(XL / 2, 0) + "]"
                  Next ii
                  Print #60, "[con:]"

    '[[[  X���� ����  Mark  c2-1  (c3) ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("��HoopX")
                    H_Jaji = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H - Stoper�ʒu_H(1)
                    H_Y1 = Val(�S��_D$) / 2
              
              X0 = �\��X_XHoop��: Y0 = �S��P_�ʒu(1): YL = Y00 - Y0 + Mark_U1
                  '* 2002.11.3
                  D2$ = "": nni = 0
                  For ii = 1 To �S��P_����
                       If �S��P_�ʒu(ii) > H_Jaji Then
                            If FP_Stoper_Y�ʒu(H_Y1) <> "" Then Exit For
                            End If
                       nni = nni + 1
                       D2$ = D2$ + FP1(�S��P_�ʒu(ii) - �S��P_�ʒu(ii - 1))
                       Next ii
              
              D1$ = "[P:" + FD2(X0, 0) + "]\[<:90," + Mid(D2$, 2) + ",*]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
              Print #60, D1$
                      Call P_�S��_������(2)
    
    '[[[  X���� ����  Mark  c2-2  (c4) ]]]
           '* 2002.11.3
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("��HoopX-2")
              If D1$ <> "" Then
                    D1$ = ���r_��("��HoopX")
                    H_Jaji = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H - Stoper�ʒu_H(1)
                    H_Y1 = Val(�S��_D$) / 2
              
              X0 = �\��X_XHoop�� - 300: Y0 = 0: ' YL = Y00 - Y0 + Mark_U2
                  D2$ = "": nni = 0
                  For ii = 1 To �S��P_����
                       If �S��P_�ʒu(ii) > H_Jaji Then
                       If FP_Stoper_Y�ʒu(H_Y1) <> "" Then
                            If Y0 = 0 Then Y0 = �S��P_�ʒu(ii): YL = Y00 - Y0 + Mark_U2
                            nni = nni + 1
                            D2$ = D2$ + FP1(�S��P_�ʒu(ii) - �S��P_�ʒu(ii - 1))
                            
                            End If
                            End If
                       Next ii
              
              D1$ = "[P:" + FD2(X0, Y0) + "]\[<:90," + Mid(D2$, 2) + ",-]\[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:" + FD2(5, 0) + "]"
              Print #60, D1$
                      D1$ = ���r_��("��HoopX-2")
                      Call P_�S��_������(2)
              End If

    '[[[  X���� ���� Hoop ���@ ]]]
              ���@�ʒu3 = �y�؋��r_��.BXR + ���@���ʒu_���f��.R�J�� * ����}_Scale - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��3 = ���@���ʒu_���f��.R�J�� - 2 * ���r_���@��_Pit_��̐} - 1
              ��31 = (���@�ʒu3 - Cut�ʒu - .BXR) / ����}_Scale - 1
              D1$ = ���r_��("��HoopX")
              Print #60, "  [P:" + FD2(���@�ʒu3, 0) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii))
                        Select Case �S��P_L(ii)
                        Case Is <= ��bH:          ��00 = ��31
                        Case Is <= ��bH + ��H:    ��00 = ��3
                        Case Else:                 ��00 = ��3
                        End Select
                        
                        D11$ = D11$ + FD3(0, �S��P_L(ii), ��00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - �S��P_�ʒu(�S��P_����), 0) + "]"
              Print #60, D11$

    '[[[  Y���� ���� Hoop ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '    c3=D19_X750+5x625_@1200+6x200+4x150+72x150_B807_D1712+J+1143�@�@�@  '### (c3) Hoop Y����  ���� 1

              XL = ���r_��("��HoopY_XL")
              D1$ = ���r_��("��HoopY")
              For ii = 1 To �S��P_���� Step 2
                  
                  For i2 = 1 To �S��X�ʒu_���� Step 2
                       Y0 = �S��P_�ʒu(ii) + 15
                       X0 = -.BXL + �S��X�ʒu_�ʒu(i2) - XL / 2
                       '*2002.10.28
                       Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[�M2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  For i2 = 2 To �S��X�ʒu_���� Step 2
                       '*2002.10.31
                       If ii + 1 > �S��P_���� Then Exit For
                       Y0 = �S��P_�ʒu(ii + 1) + 15
                       X0 = -.BXL + �S��X�ʒu_�ʒu(i2) - XL / 2
                       '*2002.10.28
                       Print #60, "[P:" + FD2(X0 + XL, Y0) + "]\[�M2:" + FD4(-XL, 0, 1.5, 45) + "]"
                       Next i2
                  
                  Next ii

    '[[[  X���� ���� Hoop ���@ ]]]
              ���@�ʒuL3 = -�y�؋��r_��.BXL - ���@���ʒu_�����f��.L�J�� * ����}_Scale + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��L3 = ���@���ʒu_�����f��.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
              ��L31 = (-���@�ʒuL3 - Cut�ʒu - .BXL) / ����}_Scale - 1
              Print #60, "  [P:" + FD2(���@�ʒuL3, 0) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii))
                        Select Case �S��P_L(ii)
                        Case Is <= ��bH:          ��00 = ��31
                        Case Is <= ��bH + ��H:    ��00 = ��3
                        Case Else:                 ��00 = ��3
                        End Select
                        
                        D11$ = D11$ + FD3(0, �S��P_L(ii), -��00) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, Y00 - �S��P_�ʒu(�S��P_����), 0) + "]"
              Print #60, D11$
    
    '[[[  CK ]]]  *2002.10.31
            Print #60, "[�F:��]\[�:���]"
              ���r_�S�؃� = 90: D1$ = ���r_��("CK"):
                      If D1$ <> "" Then
                      X0 = .BXR - �S��_SK�ʒu: Y0 = .H + �y�؋��r_��b.H
                      ���p�x = Calu�p�x(0, 0, �y�؋��r_��.BXR2, �y�؋��r_��.H1)
                      �p�x1 = 45 - ���p�x / 2
                      LL1 = Val(�S��_L$):   DLY = �y�؋��r_��.r2 * Dtan(�p�x1) + LL1
                      Call P_���r_�S�ؐ}("", "", "", X0, Y0 - DLY)
                      
                      ���r_�S�؃� = 90: D1$ = ���r_��("CKR"):
                      Call P_���r_�S�ؐ}("", "", "", -X0, Y0 - DLY)
                      End If
           
           '[[[  CK Mark ]]] *2002.10.31
            Print #60, "[�F:��]\[�:Mark]"
              ���r_�S�؃� = 90: D1$ = ���r_��("CK"):
                      If D1$ <> "" Then
                      X0 = .BXR - �S��_SK�ʒu: Y0 = .H + �y�؋��r_��b.H
                      ���p�x = Calu�p�x(0, 0, �y�؋��r_��.BXR2, �y�؋��r_��.H1)
                      �p�x1 = 45 - ���p�x / 2
                      LL1 = Val(�S��_L$): DLY = �y�؋��r_��.r2 * Dtan(�p�x1) + LL1
                 
                      X1 = X0 + �S��L_XL - 0.3 * LL1 * Dcos(���p�x): Y1 = Y0 - DLY + �S��L_YL - 0.3 * LL1 * Dsin(���p�x)
                     ' X2 = -X1
                      Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]\[L:" + FD2(0, -Mark_D1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                      Call P_�S��_������(1)
                      Print #60, "[P:" + FD2(-X1, Y1) + "]\[<:270]\[L:" + FD2(0, -Mark_D1) + "]\[Lm:" + FD2(-����_L1, 0) + "]\[pm:" + FD2(5, 0) + "]"
                      Call P_�S��_������(1)
                      End If

     End With
     End Sub
Sub P_��_�f��AA()
     ' ���f��
     
     
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
         Y0 = �y�؋��r_��.BYR + (���@���ʒu_������A.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|��")
      
      '[[[ ����� ]]]
     
     
      '[[[ X ���@  ���� ]]]
           X���@�ʒu1 = �y�؋��r_��.BYR + ���@���ʒu_������A.U�J�� * ����}_Scale
           ��1 = ���@���ʒu_������A.U�J�� + 0.6 * �y�؋��r_��.r / ����}_Scale - 1
           ��11 = (X���@�ʒu1 - .BYR + 0.6 * .r) / ����}_Scale - 1
           Print #60, "  [P:" + FD2(-�y�؋��r_��.BXL, X���@�ʒu1) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(�y�؋��r_��.BXL2, 0, -��11) + "|" + FD3(.BX, 0, -��11) + "|" + FD3(�y�؋��r_��.BXR2, 0, -��1) + "]"
           
      '[[[ Y (L) ���@  ���� ]]]
           Y���@�ʒu1 = -�y�؋��r_��.BXL - ���@���ʒu_������A.L�J�� * ����}_Scale
           ��1 = ���@���ʒu_������A.L�J�� + 0.6 * �y�؋��r_��.r / ����}_Scale - 1
           Print #60, "  [P:" + FD2(Y���@�ʒu1, -.BYL) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(0, .BY, -��1) + "]"
           
            Print #60, "[�F:��]\[�:���]"
     Call P_���r_��_���ʐ}
     Call P_���r_��_�f�ʐ}
     
     ���_Ck_L = �y�؋��r_��b.H + �y�؋��r_��.H + �y�؋��r_��.H - 800
     
     
     
      '[[[ X����_���  ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
           Call PP_��_X����_���(���_Ck_L)
      
      '[[[ X����_��� ���@  ]]]
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
           ���@�ʒu2 = X���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale
           ��2 = (���@�ʒu2 - .BYR) / ����}_Scale - 1
              Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu2) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)):    D11$ = D11$ + FD3(�S��P_L(ii), 0, -��2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - �S��P_�ʒu(�S��P_����), 0, 0) + "]"
              Print #60, D11$
     
      '[[[ X����_��� ��ؐ��@  ]]]
           ���@�ʒu3 = Y���@�ʒu1 + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
           ��3 = (-���@�ʒu3 - �y�؋��r_��.BXL) / ����}_Scale - 1
              X�i�� = 1: XK2 = 0
              XK1 = ���r_��("X��ؔ��_1�i"): If X�i�� > 1 Then XK2 = ���r_��("X��ؔ��_2�i")
                   YL = XK1: If XK2 > 0 Then YL = XK2
                   D11$ = "  [P:" + FD2(���@�ʒu3, -.BYL) + "]\"
                   D12$ = "  [P:" + FD2(���@�ʒu3, .BYR - YL) + "]\"
                   Select Case X�i��
                   Case 1:       D11$ = D11$ + "[��:" + FD3(0, XK1, -��3) + "]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(0, XK1, -��3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[��:" + FD3(0, XK1, -��3) + ",,LR=5|" + FD3(0, XK2 - XK1, -��3) + ",,RL=5]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(0, XK2 - XK1, -��3) + ",,LR=5|" + FD3(0, XK1, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
      
      
      '[[[ Y����_���  ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
            Call PP_��_Y����_���(���_Ck_L)
      
      '[[[ Y����_��� ���@  ]]]
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
           ���@�ʒu2 = Y���@�ʒu1 + ���r_���@��_Pit_��̐} * ����}_Scale
           ��2 = (-���@�ʒu2 - �y�؋��r_��.BXL) / ����}_Scale - 1
              Print #60, "  [P:" + FD2(���@�ʒu2, -.BYL) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)):      D11$ = D11$ + FD3(0, �S��P_L(ii), -��2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, .BY - �S��P_�ʒu(�S��P_����), 0) + "]"
              Print #60, D11$
     
      '[[[ Y����_��� ��ؐ��@  ]]]
           ���@�ʒu3 = X���@�ʒu1 - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
           ��3 = (���@�ʒu3 - .BYR) / ����}_Scale - 1
              Y�i�� = 1: YK2 = 0
              YK1 = ���r_��("Y��ؔ��_1�i"): If Y�i�� > 1 Then YK2 = ���r_��("Y��ؔ��_2�i")
                   XL = YK1: If YK2 > 0 Then XL = YK2
                   D11$ = "  [P:" + FD2(-.BXL, ���@�ʒu3) + "]\"
                   D12$ = "  [P:" + FD2(.BXR - XL, ���@�ʒu3) + "]\"
                   Select Case Y�i��
                   Case 1:       D11$ = D11$ + "[��:" + FD3(YK1, 0, -��3) + "]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(YK1, 0, -��3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[��:" + FD3(YK1, 0, -��3) + ",,LR=5|" + FD3(YK2 - YK1, 0, -��3) + ",,RL=5]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(YK2 - YK1, 0, -��3) + ",,LR=5|" + FD3(YK1, 0, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
     
      '[[[ �p_���  ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
          Call PP_��_�p���(���_Ck_L)
      
      '[[[ �p_��� ��ؐ��@  ]]]
            If ���r_��("�p���") <> "" Then
                  XL = ���r_��("�p���_XL")
                  ���@�ʒu4 = X���@�ʒu1 - 3 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��4 = (���@�ʒu4 - .BYR) / ����}_Scale - 1
                  D11$ = "  [P:" + FD2(-.BXL, ���@�ʒu4) + "]\[��:" + FD3(XL, 0, -��4) + "]"
                  D12$ = "  [P:" + FD2(.BXR - XL, ���@�ʒu4) + "]\[��:" + F9(-��4) + ":" + FD3(XL, 0, -��4) + "]"
                  Print #60, D11$: Print #60, D12$
                  End If
     
            Print #60, "[�F:��]\[�:Hoop]"
     
     Call PP_��_�O��_Hoop
     
     
      D1$ = ���r_��("��HoopX-2")
      If D1$ <> "" Then Call PP_��_X����_��_Hoop_2 Else PP_��_X����_��_Hoop
     
     
     
     Call PP_��_Y����_��_Hoop
     
    '[[[ �\��X ���W  ]]]
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
                      ni = 3: If .r = 0 Then ni = 4
                  �\��X_XHoop = -.BXL + (�S��P_�ʒu(ni) + �S��P_�ʒu(ni + 1)) / 2
                  ni2 = Int(0.6 * �S��P_����)
                  �\��X_XHoop�� = -.BXL + (�S��P_�ʒu(ni2) + �S��P_�ʒu(ni2 + 1)) / 2
     
    '[[[  �O�� X Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("�OHoopX")
              X0 = �\��X_XHoop:   Y1 = -.BYL + �S��_SK�ʒu: Y2 = .BYR - �S��_SK�ʒu

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90," + F9(Y2 - Y1) + "]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
    '[[[  ���� X Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("��HoopX-2")
              If D1$ = "" Then D1$ = ���r_��("��HoopX")
              X0 = �\��X_XHoop��: Y1 = Val(�S��_D$) / 2:

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90,]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
    
    
    '[[[ �\��Y ���W  ]]]
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
                      ni = 3: If .r = 0 Then ni = 4
                  �\��Y_YHoop = .BYR - (�S��P_�ʒu(ni) + �S��P_�ʒu(ni + 1)) / 2
                  ni2 = Int(0.5 * �S��P_����)
                  �\��Y_YHoop�� = -.BYL + (�S��P_�ʒu(ni2) + �S��P_�ʒu(ni2 + 1)) / 2
     
    
    
      D1$ = ���r_��("�į�߈ʒu")
      R_Mark_R1 = Mark_R1 + Stoper�ʒu_X(Stoper�ʒu_Data��) + Stoper�ʒu_BX(Stoper�ʒu_Data��) / 2
    '[[[  �O�� Y Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("�OHoopY")
              Y0 = �\��Y_YHoop:   X1 = -.BXL + �S��_SK�ʒu: X2 = .BXR - �S��_SK�ʒu

              D1$ = "[P:" + FD2(X1, Y0) + "]\[<:0," + F9(X2 - X1) + "]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + R_Mark_R1, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
    '[[[  ���� Y Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("��HoopY")
              Y0 = �\��Y_YHoop��: X1 = -.BXL + Val(�S��_X$) + Val(�S��_B$) / 2: X2 = X1 - Val(�S��_X$)
              D1$ = "[P:" + FD2(X2, Y0) + "]\[<:0," + �S��_X$ + ",*]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + R_Mark_R1, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
     
     Call P_���r_Stoper_����("X")
     End With
     End Sub
Sub P_��_�f��BB()
     ' ���f��
     
     With �y�؋��r_��
      
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
         Y0 = .BYR + (���@���ʒu_������B.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|��")
      
      '[[[ ����� ]]]
     
     
      '[[[ X ���@  ���� ]]]
           X���@�ʒu1 = .BYR + ���@���ʒu_������B.U�J�� * ����}_Scale
           ��1 = ���@���ʒu_������B.U�J�� + 0.6 * .r / ����}_Scale - 1
           Print #60, "  [P:" + FD2(-.BXL, X���@�ʒu1) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
           
            
      '[[[ Y (L) ���@  ���� ]]]
           Y���@�ʒu1 = -.BXL - ���@���ʒu_������B.L�J�� * ����}_Scale
           ��1 = ���@���ʒu_������B.L�J�� + 0.6 * .r / ����}_Scale - 1
           Print #60, "  [P:" + FD2(Y���@�ʒu1, -.BYL) + "]"
           Print #60, "  [��:" + F9(-��1) + ":" + FD3(0, .BY, -��1) + "]"
           
     
            Print #60, "[�F:��]\[�:���]"
     Call P_���r_��_�f�ʐ}
     
       Print #60, "[�F:��]"
      '[[[ X����_���  ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
           Call PP_��_X����_���(0)
      
      '[[[ X����_��� ���@  ]]]
           D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
           ���@�ʒu2 = X���@�ʒu1 - ���r_���@��_Pit_��̐} * ����}_Scale
           ��2 = (���@�ʒu2 - .BYR) / ����}_Scale - 1
              Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu2) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)):    D11$ = D11$ + FD3(�S��P_L(ii), 0, -��2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - �S��P_�ʒu(�S��P_����), 0, 0) + "]"
              Print #60, D11$
     
      '[[[ X����_��� ��ؐ��@  ]]]
           ���@�ʒu3 = Y���@�ʒu1 + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
           ��3 = (-���@�ʒu3 - .BXL) / ����}_Scale - 1
              X�i�� = ���r_��("Xpit�i��"): XK2 = 0
              XK1 = ���r_��("X��ؔ��_1�i"): If X�i�� > 1 Then XK2 = ���r_��("X��ؔ��_2�i")
                   YL = XK1: If XK2 > 0 Then YL = XK2
                   D11$ = "  [P:" + FD2(���@�ʒu3, -.BYL) + "]\"
                   D12$ = "  [P:" + FD2(���@�ʒu3, .BYR - YL) + "]\"
                   Select Case X�i��
                   Case 1:       D11$ = D11$ + "[��:" + FD3(0, XK1, -��3) + "]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(0, XK1, -��3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[��:" + FD3(0, XK1, -��3) + ",,LR=5|" + FD3(0, XK2 - XK1, -��3) + ",,RL=5]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(0, XK2 - XK1, -��3) + ",,LR=5|" + FD3(0, XK1, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
     
     
     
     
      '[[[ Y����_���  ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
           Call PP_��_Y����_���(0)
      
      '[[[ Y����_��� ���@  ]]]
           D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
           ���@�ʒu2 = Y���@�ʒu1 + ���r_���@��_Pit_��̐} * ����}_Scale
           ��2 = (-���@�ʒu2 - .BXL) / ����}_Scale - 1
              Print #60, "  [P:" + FD2(���@�ʒu2, -.BYL) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)):      D11$ = D11$ + FD3(0, �S��P_L(ii), -��2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, .BY - �S��P_�ʒu(�S��P_����), 0) + "]"
              Print #60, D11$
     
      '[[[ Y����_��� ��ؐ��@  ]]]
           ���@�ʒu3 = X���@�ʒu1 - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
           ��3 = (���@�ʒu3 - .BYR) / ����}_Scale - 1
              Y�i�� = ���r_��("Ypit�i��"): YK2 = 0
              YK1 = ���r_��("Y��ؔ��_1�i"): If Y�i�� > 1 Then YK2 = ���r_��("Y��ؔ��_2�i")
                   XL = YK1: If YK2 > 0 Then XL = YK2
                   D11$ = "  [P:" + FD2(-.BXL, ���@�ʒu3) + "]\"
                   D12$ = "  [P:" + FD2(.BXR - XL, ���@�ʒu3) + "]\"
                   Select Case Y�i��
                   Case 1:       D11$ = D11$ + "[��:" + FD3(YK1, 0, -��3) + "]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(YK1, 0, -��3) + "]"
                   
                   Case Else:    D11$ = D11$ + "[��:" + FD3(YK1, 0, -��3) + ",,LR=5|" + FD3(YK2 - YK1, 0, -��3) + ",,RL=5]"
                                 D12$ = D12$ + "[��:" + F9(-��3) + ":" + FD3(YK2 - YK1, 0, -��3) + ",,LR=5|" + FD3(YK1, 0, 0) + ",,RL=5]"
                   End Select
                   Print #60, D11$: Print #60, D12$
     
      '[[[ �p_���  ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
          Call PP_��_�p���(0)
     
      '[[[ �p_��� ��ؐ��@  ]]]
            If ���r_��("�p���") <> "" Then
                  XL = ���r_��("�p���_XL")
                  ���@�ʒu4 = X���@�ʒu1 - 3 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��4 = (���@�ʒu4 - .BYR) / ����}_Scale - 1
                  D11$ = "  [P:" + FD2(-.BXL, ���@�ʒu4) + "]\[��:" + FD3(XL, 0, -��4) + "]"
                  D12$ = "  [P:" + FD2(.BXR - XL, ���@�ʒu4) + "]\[��:" + F9(-��4) + ":" + FD3(XL, 0, -��4) + "]"
                  Print #60, D11$: Print #60, D12$
                  End If
     
     
            Print #60, "[�F:��]\[�:Hoop]"
     Call PP_��_�O��_Hoop
     Call PP_��_X����_��_Hoop
     Call PP_��_Y����_��_Hoop
     
     
    '[[[ �\��X ���W  ]]]
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
                      ni = 3: If .r = 0 Then ni = 4
                  �\��X_XHoop = -.BXL + (�S��P_�ʒu(ni) + �S��P_�ʒu(ni + 1)) / 2
                  ni2 = Int(0.6 * �S��P_����)
                  �\��X_XHoop�� = -.BXL + (�S��P_�ʒu(ni2) + �S��P_�ʒu(ni2 + 1)) / 2
     
    '[[[  �O�� X Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("�OHoopX")
              X0 = �\��X_XHoop:   Y1 = -.BYL + �S��_SK�ʒu: Y2 = .BYR - �S��_SK�ʒu

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90," + F9(Y2 - Y1) + "]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
    '[[[  ���� X Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("��HoopX")
              X0 = �\��X_XHoop��: Y1 = Val(�S��_D$) / 2:

              D1$ = "[P:" + FD2(X0, Y1) + "]\[<:90,]\[P:" + FD2(X0, Y1) + "]\[L:" + FD2(0, -Y1 + .BYR + Mark_U1) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
    
    
    '[[[ �\��Y ���W  ]]]
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
                      ni = 3: If .r = 0 Then ni = 4
                  �\��Y_YHoop = .BYR - (�S��P_�ʒu(ni) + �S��P_�ʒu(ni + 1)) / 2
                  ni2 = Int(0.5 * �S��P_����)
                  �\��Y_YHoop�� = -.BYL + (�S��P_�ʒu(ni2) + �S��P_�ʒu(ni2 + 1)) / 2
     
    '[[[  �O�� Y Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("�OHoopY")
              Y0 = �\��Y_YHoop:   X1 = -.BXL + �S��_SK�ʒu: X2 = .BXR - �S��_SK�ʒu

              D1$ = "[P:" + FD2(X1, Y0) + "]\[<:0," + F9(X2 - X1) + "]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
    '[[[  ���� Y Hoop Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("��HoopY")
              Y0 = �\��Y_YHoop��: X1 = -.BXL + Val(�S��_X$) + Val(�S��_B$) / 2: X2 = X1 - Val(�S��_X$)
              D1$ = "[P:" + FD2(X2, Y0) + "]\[<:0," + �S��_X$ + ",*]\[P:" + FD2(X1, Y0) + "]\[L:" + FD2(-X1 + .BXR + Mark_R1, 0) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:5,0]"
              Print #60, D1$
              Call P_�S��_������(1)
     
     
     
     End With
     End Sub

Sub P_��_�f��BB�S�ؔz�ؐ}()
     ' ���f��
      
     With �y�؋��r_��
      '[[[ �i�}�� ]]]
         Y0 = .BYR + �i�}���J���ʒu * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|���S�ؔz�ؐ}")
      
     
            Print #60, "[Msize:" + FD1(���r_�S��_Mark_Msize) + "]"
   '  Print #60, "[Msize:2.5]"
            Print #60, "[�F:��]\[�:���]"
     Call P_���r_��_�f�ʐ}
       
            Print #60, "[�F:��]\[�:�S��Mark]"
     Call PP_��_X����_���_Mark(0)
     Call PP_��_Y����_���_Mark(0)
     
     Call PP_��_�p���_Mark(0)
     
            Print #60, "[�F:��]\[�:Hoop]"
     Call PP_��_�O��_Hoop
     Call PP_��_X����_��_Hoop
     Call PP_��_Y����_��_Hoop

     End With
        
     End Sub


Sub PP_��_X����_���(���_Ck_L)
     ' ���_Ck_L   ��؂����̈ʒu�ɂ��邩������������ ���s��
     ' ��_X����_��� Mark �}
     With �y�؋��r_��
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = .BYR - ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = -.BYL + ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      End If
                      Next ii
     
              D1$ = ���r_��("X���_2�i"):   D1$ = ���r_��("Xpit_2�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = .BYR - ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = -.BYL + ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      End If
                      Next ii

     End With
     End Sub


Sub PP_��_Y����_���(���_Ck_L)
     ' ��_Y����_��� Mark �}
     With �y�؋��r_��
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + ���dt: Yp = -.BYL + �S��P_�ʒu(ii):   Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = .BXR - ���dt: Yp = -.BYL + �S��P_�ʒu(ii):    Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      End If
                      Next ii
     
              D1$ = ���r_��("Y���_2�i"):   D1$ = ���r_��("Ypit_2�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + ���dt: Yp = -.BYL + �S��P_�ʒu(ii): Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = .BXR - ���dt: Yp = -.BYL + �S��P_�ʒu(ii):  Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      End If
                      Next ii

     End With
     End Sub



Sub PP_��_�p���(���_Ck_L)
     ' ��_�p_��� Mark �}
     With �y�؋��r_��
              D1$ = ���r_��("�p���"): ���$ = ���r�S�،a$(1)
                 If D1$ <> "" Then
                      If �S��L_�S��L > ���_Ck_L Then
                      DXL = .C�p���X: DYL = .C�p���Y
                      
                      Xp = -.BXL + DXL: Yp = -.BYL + DYL:           Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = -.BXL + DXL: Yp = .BYR - DYL:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = .BXR - DXL: Yp = -.BYL + DYL:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      Xp = .BXR - DXL: Yp = .BYR - DYL:             Print #60, "   [P:" + FD2(Xp, Yp) + "]\[���r�S��:" + ���$ + "]"
                      End If
                      End If

     End With
     End Sub

Sub PP_��_X����_���_Mark(���_Ck_L)
     ' ��_X����_��� Mark���� �}
     With �y�؋��r_��
              D1$ = ���r_��("�OHOOPX"):   Hoop_dt = .CHoop_dt
                ���dt = Hoop_dt + ���r_�S��_Mark_D * ����}_Scale / 2
              
              D1$ = ���r_��("X���_1�i"):   D1$ = ���r_��("Xpit_1�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): '���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = .BYR - ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = -.BYL + ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      End If
                      Next ii

              D1$ = ���r_��("X���_2�i"):   D1$ = ���r_��("Xpit_2�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      '*2002.10.31
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = Hoop_dt + 1.6 * ���r_�S��_Mark_D * ����}_Scale: '���dt = �S��_SK�ʒu
                      
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = .BYR - ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = -.BXL + �S��P_�ʒu(ii): Yp = -.BYL + ���dt: Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      End If
                      Next ii

     End With
     End Sub

Sub PP_��_Y����_���_Mark(���_Ck_L)
     ' ��_Y����_��� Mark���� �}
     With �y�؋��r_��
              D1$ = ���r_��("�OHOOPX"):   Hoop_dt = .CHoop_dt
                ���dt = Hoop_dt + ���r_�S��_Mark_D * ����}_Scale / 2
              D1$ = ���r_��("Y���_1�i"):   D1$ = ���r_��("Ypit_1�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): '���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + ���dt: Yp = -.BYL + �S��P_�ʒu(ii):   Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = .BXR - ���dt: Yp = -.BYL + �S��P_�ʒu(ii):    Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      End If
                      Next ii
     
              D1$ = ���r_��("Y���_2�i"):   D1$ = ���r_��("Ypit_2�i")
              For ii = 1 To ����_���؃���
                      ��ؔԍ� = ����_���ؔԍ�(ii)
                      '*2002.10.31
                      D1$ = ���r_��("C" + F9(��ؔԍ�)):  ���$ = ���r�S�،a$(1): ���dt = Hoop_dt + 1.6 * ���r_�S��_Mark_D * ����}_Scale: ���dt = �S��_SK�ʒu
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + ���dt: Yp = -.BYL + �S��P_�ʒu(ii): Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = .BXR - ���dt: Yp = -.BYL + �S��P_�ʒu(ii):  Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      End If
                      Next ii

     End With
     End Sub
Sub PP_��_�p���_Mark(���_Ck_L)
     ' ��_�p_��� Mark���� �}
     With �y�؋��r_��
              D1$ = ���r_��("�OHOOPX"):   Hoop_dt = .CHoop_dt
                Hoop_r = .CHoop_r: DX = Hoop_r - (Hoop_r - ���r_�S��_Mark_D * ����}_Scale / 2) * Dcos(45)
                ���dt = Hoop_dt + DX
              '*2002.10.31
              If Hoop_r <= 0 Then ���dt = Hoop_dt + ���r_�S��_Mark_D * ����}_Scale / 2
              
              
              D1$ = ���r_��("�p���"): ���$ = ���r�S�،a$(1): ��ؔԍ� = ����_���ؔԍ�(1)
                 If D1$ <> "" Then
                      If �S��L_�S��L > ���_Ck_L Then
                      Xp = -.BXL + ���dt: Yp = -.BYL + ���dt:           Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = -.BXL + ���dt: Yp = .BYR - ���dt:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = .BXR - ���dt: Yp = -.BYL + ���dt:            Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      Xp = .BXR - ���dt: Yp = .BYR - ���dt:             Print #60, "   [P:" + FD2(Xp, Yp) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(��ؔԍ�) + "]"
                      End If
                      End If

     End With
     End Sub


Sub PP_��_�O��_Hoop()
     With �y�؋��r_��
     D1$ = ���r_��("�OHOOPX")
           X_Hoop_XL = Val(�S��_X$)
           Call Ddata("X", UCase(�S��_Y$), Ds$(), Di(), ni)
           Y_HOOP_XL = Di(1): Y_Hoop_YL = Di(2)

                 X0 = -X_Hoop_XL / 2: Y0 = .BYR - .CHoop_dt
                 ���r_�S�؃� = 0:  Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                 X0 = X_Hoop_XL / 2: Y0 = -.BYL + .CHoop_dt
                 ���r_�S�؃� = 180:  Call P_���r_�S�ؐ}("", "", "", X0, Y0)

     D1$ = ���r_��("�OHOOPY")

                 X0 = -.BXL + Y_HOOP_XL + .CHoop_dt: Y0 = -Y_Hoop_YL / 2
                 ���r_�S�؃� = 180:  Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                 X0 = .BXR - Y_HOOP_XL - .CHoop_dt: Y0 = Y_Hoop_YL / 2
                 ���r_�S�؃� = 0:  Call P_���r_�S�ؐ}("", "", "", X0, Y0)


     End With
     End Sub

Sub PP_��_X����_��_Hoop()
     J�S�؊J�� = ���r_J�S�؊J��: ���r_J�S�؊J�� = 0
     With �y�؋��r_��
           
           D1$ = ���r_��("��HOOPX")
           XL = FP_���r_�S��_����(�S��_B$): YL = FP_���r_�S��_����(�S��_D$)
           D1$ = ���r_��("��HOOPX"): ' �K�v
                 
                 X0 = -XL / 2: Y0 = -YL / 2
                 ���r_�S�؃� = 90:   Call P_���r_�S�ؐ}("", "", "", X0, Y0)

     End With
     ���r_J�S�؊J�� = J�S�؊J��
     End Sub

Sub PP_��_X����_��_Hoop_2()
     J�S�؊J�� = ���r_J�S�؊J��: ���r_J�S�؊J�� = 0
     With �y�؋��r_��
           
           D1$ = ���r_��("��HOOPX-2")
           XL = FP_���r_�S��_����(�S��_B$): YL = FP_���r_�S��_����(�S��_D$)
           D1$ = ���r_��("��HOOPX-2"): ' �K�v
                 X0 = -XL / 2: Y0 = -YL / 2
                 ���r_�S�؃� = 90:   Call P_���r_�S�ؐ}("", "", "", X0, Y0)

     End With
     ���r_J�S�؊J�� = J�S�؊J��
     End Sub


Sub PP_��_Y����_��_Hoop()
     ' �f�ʔz��
     ReDim Hoop_�ʒu(50) As Single
     J�S�؊J�� = ���r_J�S�؊J��: ���r_J�S�؊J�� = 0
     With �y�؋��r_��
           
           XL = ���r_��("��HOOPY_XL"): YL = ���r_��("��HOOPY_YL")
           D1$ = ���r_��("��HOOPY"):    Xpit$ = �S��_X$:    Call ���r_�S��_Pit_ck(Xpit$):           ��Hoop_�� = �S��P_����
           
           For ii = 1 To ��Hoop_��: Hoop_�ʒu(ii) = �S��P_�ʒu(ii): Next ii
           
                 For ii = 1 To ��Hoop_��
                 If ii / 2 <> Int(ii / 2) Then Print #60, "[con:]": Hoop_Dy = 0 Else Print #60, "[dot:]": Hoop_Dy = 0.5
                 X0 = -.BXL + Hoop_�ʒu(ii) - XL / 2: Y0 = -YL / 2 - Hoop_Dy * ����}_Scale
                 D1$ = ���r_��("��HOOPY")
                 ���r_�S�؃� = 90:   Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                 Next ii
                 Print #60, "[con:]"
             Hoop_Dy = 0
     End With
     ���r_J�S�؊J�� = J�S�؊J��
     End Sub


Sub P_��_Cn(����$)
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\* " + ����$
     ���r_�S�؃� = 90:   D1$ = ���r_��(����$ + "�{��"): Y0 = Val(�S��_�ʒu$)

     Call P_���r_�S�ؐ}("Y", "", "", 0, Y0)
     Print #60, "[Pm:" + FD2(12, 70) + "]"
     Call P_�S��_�����̏c(3)
     End Sub


Sub P_��_CK()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*CK"
      ���r_�S�؃� = 90: D1$ = ���r_��("CK"):
     Call P_���r_�S�ؐ}("Y", "", "", 0, 0)
     Print #60, "[Pm:" + FD2(-5, -20) + "]"
     Call P_�S��_������(3)

     End Sub


Sub P_��_c1_X()
     '  c1 �� X����
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c1-X"
     ���r_�S�؃� = 0
     D1$ = ���r_��("�OHoopX")
     
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, 0)
     
     Print #60, "[Pm:" + FD2(-10, -20) + "]"
     Call P_�S��_������(3)
     

     End Sub
Sub P_��_c1_Y()
     '  c1 �� Y����
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c1-Y"
     ���r_�S�؃� = 180
     D1$ = ���r_��("�OHoopY")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[Pm:" + FD2(-1, -10) + "]"
     Call P_�S��_������(3)

     End Sub


Sub P_��_c2_1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c2-1"
     ���r_�S�؃� = 90
     D1$ = ���r_��("��HoopX")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(-10 * ����}_Scale, -�S��L_Ycen - 20 * ����}_Scale) + "]"
     Call P_�S��_������(3)

     End Sub
Sub P_��_c2_2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c2-2"
     ���r_�S�؃� = 90
     D1$ = ���r_��("��HoopX-2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(-10 * ����}_Scale, -�S��L_Ycen - 20 * ����}_Scale) + "]"
     Call P_�S��_������(3)
     End Sub

Sub P_��_c3_1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c3-1"
     ���r_�S�؃� = 90
     �S��L_���H����$ = "Y"
     D1$ = ���r_��("��HoopY")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(-10 * ����}_Scale, -�S��L_Ycen - 20 * ����}_Scale) + "]"
     Call P_�S��_������(3)

     End Sub
Sub P_��_c3_2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c3-2"
     ���r_�S�؃� = 90
     �S��L_���H����$ = "Y"
     D1$ = ���r_��("��HoopY-2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(-10 * ����}_Scale, -�S��L_Ycen - 20 * ����}_Scale) + "]"
     Call P_�S��_������(3)

     End Sub
Sub P_��_c3_3()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*c3-3"
     ���r_�S�؃� = 90
     �S��L_���H����$ = "Y"
     D1$ = ���r_��("��HoopY-3")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(-10 * ����}_Scale, -�S��L_Ycen - 20 * ����}_Scale) + "]"
     Call P_�S��_������(3)

     End Sub
                   
Function FP_�\���ʒuX(�ʒu$, X�ʒu)
    ' �\���ʒu_X��   �\���ʒu_X(ii) ����v�Z
    ' �ʒu$  L or C or R

      i1 = �\���ʒu_X�� - 1
     For ii = 1 To �\���ʒu_X��:  If X�ʒu < �\���ʒu_X(ii) Then i1 = ii: Exit For
             Next ii
                        
     Select Case �ʒu$
     Case "L":  i2 = i1 - 1: i1 = i1 - 2
     Case "C":  i2 = i1 - 1
     Case Else:  i2 = i1 + 1
     End Select
     If i1 < 1 Then i1 = 1 ' ��� 2003.8.30
     If i2 < 1 Then i2 = 1
     
     LL1 = (�\���ʒu_X(i1) + �\���ʒu_X(i2)) / 2
     FP_�\���ʒuX = LL1
     End Function
Function FP_�\���ʒuY(�ʒu$, Y�ʒu)
    ' �\���ʒu_Y��   �\���ʒu_Y(ii) ����v�Z
    ' �ʒu$  U or C or D

      i1 = �\���ʒu_Y�� - 1
     For ii = 1 To �\���ʒu_Y��:  If Y�ʒu < �\���ʒu_Y(ii) Then i1 = ii: Exit For
             Next ii
                        
     Select Case �ʒu$
     Case "U":   LL1 = �\���ʒu_Y(i1)
     Case "C":  LL1 = (�\���ʒu_Y(i1) + �\���ʒu_Y(i1 - 1)) / 2
     Case Else: LL1 = �\���ʒu_Y(i1 - 1)
     End Select
     FP_�\���ʒuY = LL1
     End Function
Function FP_�\���ʒuZ(�ʒu$, Z�ʒu)
    ' �\���ʒu_Z��   �\���ʒu_Z(ii) ����v�Z
    ' �ʒu$  U or C or D

      i1 = �\���ʒu_Z�� - 1
     For ii = 1 To �\���ʒu_Z��:  If Z�ʒu > �\���ʒu_Z(ii) Then i1 = ii: Exit For
             Next ii
                        
     Select Case �ʒu$
     Case "U":   LL1 = �\���ʒu_Z(i1 - 1)
     Case "C":  LL1 = (�\���ʒu_Z(i1) + �\���ʒu_Z(i1 - 1)) / 2
     Case Else: LL1 = �\���ʒu_Z(i1)
     End Select
     FP_�\���ʒuZ = LL1
     End Function
 
 
'����������������������������������������������������������������������������������������������
'���� ��         ��}        �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_��_�f��a()
     '��X(��)�f��
     
     ReDim SMark$(500)
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     
     With �y�؋��r_��
     
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale:     Mark_U2 = Mark_U1 + 1.2 * Mark_Pit
                 Mark_D1 = .H + 1.2 * Mark_Pit:    Mark_D2 = Mark_D1 + 1.2 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
     
      '[[[ �i�}�� ]]]
         
         �������z = -.H1 / .BXL2: �����p�x = Calu�p�x(0, 0, .BXL2, .H1)
         �E�����z = .H1 / .BXR2: �E���p�x = Calu�p�x(0, 0, .BXR2, .H1)
         
         Y0 = (���@���ʒu_�����f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ`�|�`")
     
                
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
          ������ = �y�؋��r_��.���zL
          Call P_���r_��_���f�ʐ}(0, 0, ������, 0)
          
      
      '[[[ �f�ʈʒu�w�� ]]]
             X1 = -.BXL - 10 * ����}_Scale: Y1 = ������ - 1 * ����}_Scale
             X2 = .BXR + 10 * ����}_Scale
             Call P_���r_�f�ʈʒu�w��(X2, Y1, X1, Y1, "�a", "�a", 0)
             Y1 = -.H2 + 3 * ����}_Scale
             Call P_���r_�f�ʈʒu�w��(X2, Y1, X1, Y1, "�b", "�b", 0)
             X1 = �y�؋��r_��.BXR + 5 * ����}_Scale: Y1 = 15 * ����}_Scale
             X2 = X1: Y2 = -1.5 * .H - 10 * ����}_Scale
             Call P_���r_�f�ʈʒu�w��(X1, Y1, X1, Y2, "��", "��", 0)
      
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = ���@���ʒu_�����f��.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_�����f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
          
          ' D���@
                  ���@�ʒu3 = 1.5 * .H + ���@���ʒu_�����f��.D�J�� * ����}_Scale
                  ��3 = ���@���ʒu_�����f��.D�J�� - 1
                  ��31 = (���@�ʒu3 - .H2) / ����}_Scale - 1
                  Print #60, "[P:" + FD2(-.BXL, -���@�ʒu3) + "]"
                  Print #60, "[��:" + F9(��31) + ":" + FD3(.BXL2, 0, ��3) + "|" + FD3(�y�؋��r_��.BX, 0, ��3) + "|" + FD3(.BXR2, 0, ��31) + "]"
          
          
          
          ' L���@
                  LLL = ���@���ʒu_�����f��.L�J��
                  Print #60, "[P0:]\[p:" + FD2(-.BXL, -.H) + "]\[pm:" + FD2(-LLL, 0) + "]"
                  Print #60, "[��:" + F9(-LLL - .BXL2 / ����}_Scale + 1) + ":" + FD2(0, .H1) + "]"
                  Print #60, "[��:" + F9(-LLL + 1) + ":" + FD3(0, .H2 + .���zL, -LLL + 1) + "]"
          
          ' R���@
                  RLL = ���@���ʒu_�����f��.R�J��
                  Print #60, "[P0:]\[p:" + FD2(.BXR, -.H) + "]\[pm:" + FD2(RLL, 0) + "]"
                  Print #60, "[��:" + F9(RLL + .BXR2 / ����}_Scale - 1) + ":" + FD2(0, .H1) + "]"
                  Print #60, "[��:" + F9(RLL - 1) + ":" + FD3(0, .H2 + .���zL, RLL - 1) + "]"
          
     
    '[[[ �į�߰ ]]]
            Print #60, "[�F:��]\[�:���]"
           Print #60, "[dot:]"
           Call P_���r_Stoper_X�f��(������, -������)
           Print #60, "[con:]"
     
     
     
    '[[[  X �\���ʒu   ]]]
              D1$ = ���r_��("Spit"):  �\���ʒu_X�� = �S��P_����
              For ii = 1 To �S��P_����:  �\���ʒu_X(ii) = -.BXL + �S��P_�ʒu(ii):     Next ii
              �\���ʒu_XPit = Abs(�\���ʒu_X(2) - �\���ʒu_X(3))
             
             Stoper$ = ���r_��("�į�߈ʒu")
     
    '[[[  Z �\���ʒu   ]]]
              D1$ = ���r_��("B��1"): �\���ʒu_Z�� = �S��P_����
              For ii = 1 To �S��P_����:  �\���ʒu_Z(ii) = -�S��P_�ʒu(ii):      Next ii
              �\���ʒu_Zpit = Abs(�\���ʒu_Z(2) - �\���ʒu_Z(3))
     
     
     Print #60, "[�F:��]"
      
    
    '[[[ ٰ�ߋ؉��} ]]]
            Print #60, "[�F:��]\[�:���]"
        ���r_J�S�؊J��_BAK = ���r_J�S�؊J��: ���r_J�S�؊J�� = 0
        For ii = 1 To 3:
              ���r_�S�؃� = 0
              Select Case ii
              Case 1:   D1$ = ���r_��("BR1��"):
              Case 2:   D1$ = ���r_��("BR2��"):
              Case 3:   D1$ = ���r_��("BR3��"):
              End Select
             If D1$ <> "" Then
                   
                   For i2 = 1 To �S��P_����
                      X0 = -�S��L_Xcen: Y0 = -�S��P_�ʒu(i2)
                       Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                      Next i2
              End If
              Next ii
            ���r_J�S�؊J�� = ���r_J�S�؊J��_BAK
     
     
    '[[[ ٰ�ߋ� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
            D1$ = ���r_��("BR1��")
            If D1$ <> "" Then
                   XX = Stoper�ʒu_X(1) - Stoper�ʒu_BX(1) / 2:  X0 = FP_�\���ʒuX("L", XX)
                   Y0 = -�S��P_�ʒu(�S��P_����):
                   Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + �S��_pit$ + ",*]": ' ",-]"
                   YLL = -Y0 + Mark_U2
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(1)
                   End If
     
            D1$ = ���r_��("BR2��")
            If D1$ <> "" Then
                   XX = Stoper�ʒu_X(2) + Stoper�ʒu_BX(2) / 2 + 500: X0 = FP_�\���ʒuX("R", XX)
                   Y0 = -�S��P_�ʒu(�S��P_����):
                   Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + �S��_pit$ + ",*]": ' ",-]"
                   YLL = -Y0 + Mark_U2
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(1)
                   End If
     
            D1$ = ���r_��("BR3��")
            If D1$ <> "" Then
                   XX = Stoper�ʒu_X(3) + Stoper�ʒu_BX(3) / 2:  X0 = FP_�\���ʒuX("R", XX)
                   Y0 = -�S��P_�ʒu(�S��P_����):
                   D01$ = "+" + �S��_pit$
                   Print #60, "[P:" + FD2(X0, 0) + "]\[<R:90," + �S��_pit$ + ",*]": ' ",-]"
                   YLL = -Y0 + Mark_U2
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(1)
                   End If
     
     
     
     
     
     
     
    '[[[ B2-1 ]]]  Old B6
            Print #60, "[�F:��]\[�:���]"
             ���r_�S�؃� = 0:  D1$ = ���r_��("B2-1")
                      X0 = -�S��L_Xcen:  Y0 = -�S��_SK�ʒu:     Call P_���r_�S�ؐ}("", "", "", X0, Y0)
              X1 = -�S��L_Xcen: X2 = �S��L_Xcen
    
               '[[[[ Mark ]]]
                   X0 = FP_�\���ʒuX("C", 0)
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                   YLL = -Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(1)
    
    
    
    '[[[ B2-2 ]]]  Old B7
            Print #60, "[�F:��]\[�:���]"
             ���r_�S�؃� = 0: D1$ = ���r_��("B2-2")
                      X0 = X1: Y0 = -�S��_SK�ʒu:    Call P_���r_�S�ؐ}("", "", "", X0, Y0)
               
               '[[[[ Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                   X0 = FP_�\���ʒuX("R", -.BXL)
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                   YLL = -Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(1)
    
    
    '[[[ B2-2R ]]]  Old B7
            Print #60, "[�F:��]\[�:���]"
             ���r_�S�؃� = 90: D1$ = ���r_��("B2-2R")
                      X0 = X2 - �S��L_XL: Y0 = -�S��_SK�ʒu - �S��L_YL: Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                      Y0 = -�S��_SK�ʒu
               '[[[[ Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                   X0 = FP_�\���ʒuX("L", X2 - �S��L_XL / 2)
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                   YLL = -Y0 + Mark_U1
                   Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(1)
    
    
    
    
    '[[[ B2-3 ]]]  Old B8
            Print #60, "[�F:��]\[�:���]"
             ���r_�S�؃� = 90: D1$ = ���r_��("B2-3")
                      X0 = X2 - �S��L_XL: Y0 = -�S��_SK�ʒu - �S��L_YL:
                      For i2 = 1 To Stoper�ʒu_X�� - 1:
                            X3 = (Stoper�ʒu_X(i2) + Stoper�ʒu_X(i2 + 1)) / 2 - �S��L_XL / 2
                            Call P_���r_�S�ؐ}("", "", "", X3, Y0)
                            Next i2
     
               '[[[[ Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                      Y0 = -�S��_SK�ʒu
                      For i2 = 1 To Stoper�ʒu_X�� - 1:
                            X3 = (Stoper�ʒu_X(i2) + Stoper�ʒu_X(i2 + 1)) / 2
                            X0 = FP_�\���ʒuX("R", X3)
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[<:90]"
                            YLL = -Y0 + Mark_U1
                            Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                            Call P_�S��_������(1)
                            Next i2
     
     
    '[[[ ���S��(��������) ]]]
            Print #60, "[�F:��]\[�:���]"
           '  B3=D25_@3136+164+4x250+400+4x250+164_   B95+3445.1    D98+1327.9+1534.4_r150
             ���r_�S�؃� = 270:  D1$ = ���r_��("BD1")
                    ' X0 = .BXR - ������_X1: Y0 = -������_Y1
                    ' Call P_���r_�S�ؐ}("", "", "", X0, Y0)
                    ' X0_LL = �S��L_XL: Y0_LL = �S��L_YL
              
                    ' D1$ = ���r_��("BD1R")
                    ' X0 = -.BXL + ������_X1: Y0 = -������_Y1: ���r_�S�؃� = 270:   '180 - ������_�p�x
                    ' Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             
             '
             '     .(X1,Y1)
             '
             '
             '     .(X01,Y01)
             '
             '                    .(X2,Y2)
             '
             ���L = ������_X1
             X1 = -.BXL + ���L: Y1 = -������_Y1
            ' Y=AA1*X+BB1
             X01 = -.BXL: Y01 = -.H + .H1: X02 = -�y�؋��r_��.BXL: Y02 = -.H
             Call CALUAB(X01, Y01, X02, Y02, ���L, AA1, BB1)
             X2 = X1: Y2 = AA1 * X2 + BB1
             X3 = X2 + ������_LX:  Y3 = AA1 * X3 + BB1:
             Print #60, "[P:" + FD2(X1, Y1) + "]\[Lr:" + FD3(0, Y2 - Y1, ������_r) + "|" + FD2(X3 - X2, Y3 - Y2) + "]"
     
             ���L = ������_X1
             X1 = .BXR - ���L: Y1 = -������_Y1
            ' Y=AA2*X+BB2
             X01 = .BXR: Y01 = -.H + .H1: X02 = �y�؋��r_��.BXR: Y02 = -.H
             Call CALUAB(X02, Y02, X01, Y01, ���L, AA2, BB2)
             X2 = X1: Y2 = AA2 * X2 + BB2
             X3 = X2 - ������_LX:  Y3 = AA2 * X3 + BB2:
             Print #60, "[P:" + FD2(X1, Y1) + "]\[Lr:" + FD3(0, Y2 - Y1, ������_r) + "|" + FD2(X3 - X2, Y3 - Y2) + "]"
     
     
               '[[[[ Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                   X11 = -�y�؋��r_��.BXL + 300: X22 = �y�؋��r_��.BXR - 300
                   Y11 = AA1 * X11 + BB1
                   Print #60, "[P:" + FD2(X11, Y11) + "]\[<:270]"
                   YLL = Mark_D2 - Abs(Y11)
                   Print #60, "[P:" + FD2(X11, Y11) + "]\[L:" + FD2(0, -YLL) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
     
                   Print #60, "[P:" + FD2(X22, Y11) + "]\[<:270]"
                   YLL = Mark_D2 - Abs(Y11)
                   Print #60, "[P:" + FD2(X22, Y11) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(2)
     
     
     
    '[[[  ����ׯ��   ]]]
            Print #60, "[�F:��]\[�:Hoop]"
              ���r_�S�؃� = 90: D1$ = ���r_��("B5-1")
              D1$ = ���r_��("Spit")
              X0 = -.BXL: Y0 = -�S��_SK�ʒu: XL = 0: YL = �S��L_YL
              For ii = 1 To �S��P_����
                       Print #60, "[P:" + FD2(X0 + �S��P_�ʒu(ii), Y0) + "]\[L:" + FD2(0, -YL) + "]"
                       Next ii
    
    '[[[  �����ׯ��   ]]]
            Print #60, "[�F:��]\[�:Hoop]"
             ' ���̍ۂ̓S�؂����Ƃ� ��̌��z�ɂ�� ���
             ' B01 = D22_K98_B1618_D2292 + F_r160    ' �����ׯ��  Y�� �Ώۍl��  --> B01
              
              ���r_�S�؃� = 270: D1$ = ���r_��("B01")
              D1$ = ���r_��("Spit")
              X0 = -.BXL:
              ��Y0 = -.H + �S��_SK�ʒu * Dcos(�����p�x): ��Cut_YL = 0
              ����Xpit = �S��P_L(2): ��Cut_YL = -����Xpit * �������z
              
              �EY0 = -.H + �S��_SK�ʒu * Dcos(�E���p�x): �ECut_YL = 0
              
              For ii = 1 To �S��P_����: X1 = X0 + �S��P_�ʒu(ii): Xpit = �S��P_�ʒu(ii + 1) - �S��P_�ʒu(ii)
                       Select Case X1
                       Case Is < -�y�؋��r_��.BXL:
                                Y1 = ��Y0 + ��Cut_YL
                                YL = �S��L_YL - ��Cut_YL
                                Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YL) + "]"
                                 ��Cut_YL = ��Cut_YL + Xpit * �������z
                       Case Is < �y�؋��r_��.BXR:
                       
                       Case Else:
                                Y1 = �EY0 + �ECut_YL
                                YL = �S��L_YL - �ECut_YL
                                Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YL) + "]"
                                 �ECut_YL = �ECut_YL + Xpit * �E�����z
                       
                       End Select
                       Next ii
    
    
    
    
    '[[[  ���ׯ��  Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
    
              D1$ = ���r_��("Spit")
              For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii):
                       Select Case X1
                       Case Is < -�y�؋��r_��.BXL:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      SMark$(ii) = "B02"
                                   Case Else:    SMark$(ii) = "B03":
                                   End Select
                                   
                       Case Is < �y�؋��r_��.BXR:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      SMark$(ii) = "B5-1"
                                   Case Else:    SMark$(ii) = "B5-2"
                                   End Select
                       
                       Case Else:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      SMark$(ii) = "B02":
                                   Case Else:    SMark$(ii) = "B03"
                                   End Select
                       End Select
                       Next ii
              '[[[ B5-1 Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                       ���r_�S�؃� = 90: D1$ = ���r_��("B5-1"): Y0 = -�S��_SK�ʒu - �S��L_YL
                       Y0 = FP_�\���ʒuZ("U", Y0) + 0.7 * �\���ʒu_Zpit
                       D1$ = ���r_��("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B5-1": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, 15) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
    
    
              '[[[ B5-2 Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                       ���r_�S�؃� = 90: D1$ = ���r_��("B5-2"): Y0 = -�S��_SK�ʒu - �S��L_YL
                       Y0 = FP_�\���ʒuZ("U", Y0) + 0.3 * �\���ʒu_Zpit
                       D1$ = ���r_��("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B5-2": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<:0," + Mid(D01$, 2) + "]"
                       XLL = -X0 + .BXR + Mark_R1
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -9) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
    
              '[[[ B01, B02 Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                       ���r_�S�؃� = 90: D1$ = ���r_��("B01"): Y0 = Y0 - 2 * �\���ʒu_Zpit
                       Y0 = FP_�\���ʒuZ("U", Y0) + 0.5 * �\���ʒu_Zpit
                       D1$ = ���r_��("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B02": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1: X9 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<R:180," + Mid(D01$, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[Lm:" + FD2(-45, 0) + "]\[pm:5,0]"
                       D1$ = ���r_��("B01"): Call P_�S��_������(0): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       D1$ = ���r_��("B02"): Call P_�S��_������(2)
    
              '[[[ (B01), B03,B04 Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                       ���r_�S�؃� = 90: D1$ = ���r_��("B03"): Y0 = Y0 - �\���ʒu_Zpit
                       D1$ = ���r_��("Spit")
                       X0 = 0: X_1 = 99999: D01$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B03": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1: X9 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<R:180," + Mid(D01$, 2) + "]"
                       XLL = .BXL + X9 + Mark_L1
                       Print #60, "[P:" + FD2(X9, Y0) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, -1.2 * Mark_Pit + �\���ʒu_Zpit) + "]\[Lm:" + FD2(-45, 0) + "]\[pm:5,0]"
                       D1$ = ���r_��("B01"): Call P_�S��_������(0): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       D1$ = ���r_��("B03"): Call P_�S��_������(0): Print #60, "[p:" + FD2(1.05 * Mark_Pit, 0) + "]"
                       D1$ = ���r_��("B04"): Call P_�S��_������(2)
    
    
    


    '[[[  ���ׯ�� ���@ ]]]
              D1$ = ���r_��("Spit")
              ���@�ʒu2 = ���@���ʒu_�����f��.U�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��2 = ���@���ʒu_�����f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
              
              Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu2) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii))
                        D11$ = D11$ + FD3(�S��P_L(ii), 0, -��2) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - �S��P_�ʒu(�S��P_����), 0, 0) + "]"
              Print #60, D11$


      
      
    '[[[   ���S��  ]]]
            Print #60, "[�F:��]\[�:Hoop]"
             '   B4=D25_K73_@98+12x150_B3150_D2829
              ���r_�S�؃� = 0
              D1$ = ���r_��("B��1")
              XL = �S��L_XL: YL = 0: ����� = �S��_SK�ʒu
              X1 = -.BXL + �����: X2 = .BXR - �S��_SK�ʒu:
               
             ' ������_X1 ������_Y2 �ʒu�����Ƃ� ��̌��z�ɂ�� ���
             ' ��̌�_ �ʒu�����Ƃ� ��̌��z�ɂ�� ���
                   ' Y=A*X+B       X=(Y-B)/A    B=Y-A*X     A=�������z  Y=-.H+.H1+�����   B=Y-A*0
               Y_CK = -.H + .H1 + ����� / Dcos(�����p�x)
               'AA1 = �������z: BB1 = Y_CK
              For ii = 1 To �S��P_����: Y1 = -�S��P_�ʒu(ii)
                       DXL = 0
                       If Y1 < Y_CK Then
                            If AA1 <> 0 Then DXL = .BXL + (Y1 - BB1) / AA1 - �����
                             If DXL < 0 Then DXL = Abs(DXL): '  R ����
                             End If
                       Print #60, "[P:" + FD2(X1 + DXL, Y1) + "]\[L:" + FD2(XL - DXL, 0) + "]"
                       Print #60, "[P:" + FD2(X2 - DXL, Y1) + "]\[L:" + FD2(-XL + DXL, 0) + "]"
                       Next ii
    
    
               '[[[[ ���S�� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
                   X1 = -.BXL + ����� + 100: X2 = -�y�؋��r_��.BXL + 150: X3 = �y�؋��r_��.BXR - 150: X4 = .BXR - ����� - 100
                   Y0 = -�S��P_�ʒu(1)
                   n01 = 0: D01$ = "": n02 = 0: D02$ = "": Y2 = 0
                   For ii = 1 To �S��P_����: Y1 = -�S��P_�ʒu(ii):
                       Dpit = �S��P_�ʒu(ii) - �S��P_�ʒu(ii - 1)
                       Select Case Y1
                       Case Is > Y_CK: n01 = n01 + 1:  D01$ = D01$ + FP1(Dpit)
                       Case Else:  If Y2 = 0 Then Y2 = Y1
                                   n02 = n02 + 1: D02$ = D02$ + FP1(Dpit)
                       End Select
                       Next ii
                   
                   '[[[[ ���S�� ��1 ]]]
                   YLL = -Mark_D1 - Y0
                   Print #60, "[P:" + FD2(X1, 0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                   Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
    
                   Print #60, "[P:" + FD2(X4, 0) + "]\[<:270," + Mid(D01$, 2) + ",*]"
                   Print #60, "[P:" + FD2(X4, Y0) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(2)
    
                   
                   '[[[[ ���S�� ��2 ]]]
                   D1$ = ���r_��("B��2")
                   If D1$ <> "" Then
                   YLL = -Mark_D1 - Y2
                   Print #60, "[P:" + FD2(X2, Y2) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X2, Y2) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
                   Call P_�S��_������(2)
    
                   Print #60, "[P:" + FD2(X3, Y2) + "]\[<:270," + Mid(D02$, 2) + ",-]"
                   Print #60, "[P:" + FD2(X3, Y2) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(2)
                   End If
    
    '[[[   ���S��  ���@ ]]]
              ���@�ʒu6 = .BXR + ���@���ʒu_�����f��.R�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��6 = (���@�ʒu6 - .BXR) / ����}_Scale - 1
              ��61 = (���@�ʒu6 - .BXR) / ����}_Scale - 1
              D1$ = ���r_��("B��1")
              Print #60, "  [P:" + FD2(���@�ʒu6, -.H) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Ds$(�S��P_Data�� + 2 - ii) = �S��P_Data$(ii): Di(�S��P_Data�� + 2 - ii) = �S��P_L(ii)
                        Next ii
                        Ds(1) = "": Di(1) = .H + ������ - �S��P_�ʒu(�S��P_����)
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(Ds$(ii)): 'If ii > �S��P_Data�� Then Moj$ = Moj$ + ",R=6"
                        D11$ = D11$ + FD3(0, Di(ii), ��6) + "," + Moj$ + "|"
                        Next ii
                        'D11$ = D11$ + "]"
                        D11$ = D11$ + FD3(0, Di(�S��P_Data�� + 1), 0) + ",,R=6]"
              Print #60, D11$
          
     End With
          
     End Sub




Sub P_��_�f��B()
     '�����f��
     
     ReDim ���@S(50) As Single, Roop�S�ؕ�(50) As Single, Stoper_CX(19) As Single
     ReDim SMark$(100), Mark_Y(50) As Single
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
      
     With �y�؋��r_��
      
                 
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.2 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.2 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      
      '[[[ �i�}�� ]]]
         Y0 = .BYR + (���@���ʒu_������.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂa�|�a")
         Print #60, "[dot:]"
         Call P_���r_��_�f�ʐ}
         Print #60, "[con:]"
     
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
          Call P_���r_��_���ʐ}
     
     
      '[[[ �f�ʈʒu�w�� ]]]
             X1 = -.BXL - 10 * ����}_Scale: Y1 = -.BYL + 5 * ����}_Scale
             X2 = .BXR + 40 * ����}_Scale
             Call P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y1, "�`", "�`", 0)
      
      
       '[[[ �į�߰ ���� Line ]]]
                  Call P_���r_Stoper_����("C")
     
  
      
      Print #60, "[�F:��]\[con:]"
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .BYR + ���@���ʒu_������.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_������.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
     
          ' L���@
                  ���@�ʒuL1 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_������.L�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.BYL) + "]"
                  Print #60, "[��:" + F9(-��L1) + ":" + FD3(0, .BY, -��L1) + "]"
     
      
      '[[[ �į�߰ ���� Line ]]]
                  Call P_���r_Stoper_����("C")
      
     
      '[[[ �į�߰ X���@ ]]]
                  ���@�ʒu2 = .BYR + ���@���ʒu_������.U�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_������.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper�I�_��_X���@(���@�ʒu2, ��2)
      
      '[[[ �į�߰ Y���@ ]]]
                  ���@�ʒuL2 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_������.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper_Y���@(���@�ʒuL2, ��L2)
      
      
      
      '[[[  X �\���ʒu   ]]]
                  D1$ = ���r_��("Spit"):  �\���ʒu_X�� = �S��P_����
                  For ii = 1 To �S��P_����:  �\���ʒu_X(ii) = -.BXL + �S��P_�ʒu(ii):     Next ii
                  �\���ʒu_XPit = Abs(�\���ʒu_X(2) - �\���ʒu_X(3))
      
      
      ���@�� = 0
      '[[[ ٰ�ߓS�� ]]]
            Print #60, "[�F:��]\[�:���]"
                   '*OLD  B1-1=$ٰ�ߋ�_6+6-D32_P�}672_@126+2x80_XY_Lr340+564+r340+3784+J960+5744+r340+564+r340+3784+J960+5744
                   '      B1=D32_K136_@126+2x80_B4124+J960+5124_D1244         ' ٰ�ߓS��(���) 1
                   '      B1=D32_K216_@126+3x80_B4044+J960+5044_D1084         ' ٰ�ߓS��(���) 2
          '* 2002.11.3  ���r_J�S�؊J��_BAK = ���r_J�S�؊J��: ���r_J�S�؊J�� = 0
        For ii = 1 To 3:
              ���r_�S�؃� = 180
              Select Case ii
              Case 1:   D1$ = ���r_��("BR1"): If D1$ <> "" Then ���@�� = ���@�� + 1: ���@S(���@��) = �S��_SK�ʒu
              Case 2:   D1$ = ���r_��("BR2"): If D1$ <> "" Then ���@�� = ���@�� + 1: ���@S(���@��) = �S��_SK�ʒu
              Case 3:   D1$ = ���r_��("BR3"): If D1$ <> "" Then ���@�� = ���@�� + 1: ���@S(���@��) = �S��_SK�ʒu
              End Select
              Roop�S��_K�ʒu = �S��_SK�ʒu
                 X0 = -�S��L_Xcen: Y0 = .BYR - �S��_SK�ʒu - �S��L_YL / 2 - �S��L_Ycen
                       '* 2002.11.13
                       Call P_���r_�S�ؐ}("�Y", "", "", X0, Y0)
                 
                 X0 = -�S��L_Xcen: Y0 = -.BYL + �S��_SK�ʒu + �S��L_YL / 2 - �S��L_Ycen
                       Call P_���r_�S�ؐ}("�Y", "", "", X0, Y0)
              Roop�S�ؕ�(���@��) = �S��L_YL
              Next ii
            
      
      '[[[ ٰ�ߓS�� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
              Stoper$ = ���r_��("�į�߈ʒu")
              ���r_�S�؃� = 180
               '[[[ BR1 Mak ]]]
                       D1$ = ���r_��("BR1")
                       If D1$ <> "" Then
                       X1 = Stoper�ʒu_X(1) - 7 * �\���ʒu_XPit: X2 = Stoper�ʒu_X(Stoper�ʒu_Data��) + 3 * �\���ʒu_XPit
                       X1 = FP_�\���ʒuX("L", X1): X2 = FP_�\���ʒuX("R", X2)
                       Y1 = -.BYL + �S��_SK�ʒu + �S��L_YL - ���r_J�S�؊J�� * ����}_Scale: Y2 = .BYR - �S��_SK�ʒu
                       Ypit = Y2 - Y1:
                       YLL = -Y1 + .BYR + Mark_U1
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
                       End If
      
               '[[[ BR2 Mak ]]]
                       D1$ = ���r_��("BR2")
                       If D1$ <> "" Then
                       X1 = Stoper�ʒu_X(1) + 4 * �\���ʒu_XPit: X2 = Stoper�ʒu_X(Stoper�ʒu_Data��) - 7 * �\���ʒu_XPit
                       X1 = FP_�\���ʒuX("R", X1): X2 = FP_�\���ʒuX("L", X2)
                       Y1 = -.BYL + �S��_SK�ʒu + �S��L_YL - ���r_J�S�؊J�� * ����}_Scale: Y2 = .BYR - �S��_SK�ʒu
                       Ypit = Y2 - Y1:
                       YLL = -Y1 + .BYR + Mark_U1
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
                       End If
      
               '[[[ BR2 Mak ]]]
                       D1$ = ���r_��("BR3")
                       If D1$ <> "" Then
                       X1 = Stoper�ʒu_X(1) + 3 * �\���ʒu_XPit: X2 = Stoper�ʒu_X(Stoper�ʒu_Data��) - 8 * �\���ʒu_XPit
                       X1 = FP_�\���ʒuX("R", X1): X2 = FP_�\���ʒuX("L", X2)
                       Y1 = -.BYL + �S��_SK�ʒu + �S��L_YL - ���r_J�S�؊J�� * ����}_Scale: Y2 = .BYR - �S��_SK�ʒu
                       Ypit = Y2 - Y1:
                       YLL = -Y1 + .BYR + Mark_U2
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
      
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90," + F9(Ypit) + "]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
                       End If
      
      
      
      '[[[ ٰ�ߓS�ؐ��@ ]]]
                  ���@�ʒuL3 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ���@���ʒu_������.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
            LLM1 = Roop�S�ؕ�(���@��): LLM2 = .BY - 2 * (���@S(1) + Roop�S�ؕ�(1))
            For ii = ���@�� To 1 Step -1:    ���@S(ii) = ���@S(ii) - ���@S(ii - 1):    Next ii
                  D1$ = ""
                  For ii = 1 To ���@��
                        D1$ = D1$ + "|" + FD3(0, ���@S(ii), -��L3): If ii = 1 Then D1$ = D1$ + ",,L=7"
                        Next ii
                  D1$ = D1$ + "|" + FD3(0, LLM1, -��L3)
                  If ���@�� > 1 Then
                          For ii = ���@�� To 2 Step -1: D1$ = D1$ + "|" + FD3(0, ���@S(ii), -��L3): If ii = 2 Then D1$ = D1$ + ",,LC=5"
                               Next ii
                          End If
                  '.... ����
                  D1$ = D1$ + "|" + FD3(0, LLM2, -��L3)
      
                  If ���@�� > 1 Then
                          For ii = 2 To ���@��: D1$ = D1$ + "|" + FD3(0, ���@S(ii), -��L3): If ii = 2 Then D1$ = D1$ + ",,RC=5"
                               Next ii
                          End If
                  D1$ = D1$ + "|" + FD3(0, LLM1, -��L3)
                  If ���@�� > 1 Then For ii = ���@�� To 2 Step -1: D1$ = D1$ + "|" + FD3(0, ���@S(ii), -��L3): Next ii
                  
                  D1$ = "[��:" + Mid(D1$, 2) + "|" + FD3(0, ���@S(1), -��L3) + ",,R=7]"
                  Print #60, "[P:" + FD2(���@�ʒuL3, -.BYL) + "]"
                  Print #60, D1$
      
      '[[[ ��S�� ]]]
            Print #60, "[�F:��]\[�:���]"
        ' ��S�S��  B2-1  B2-2  B2-3
             '            B2=D16_K126_@396.7+4*180.7_LF+8900+F
                         ' �� B2-2, B2-3 �͌v�Z���܂�
      
              ���r_�S�؃� = 0:      D1$ = ���r_��("BU1")
                X1 = -�S��L_XL / 2: X2 = �S��L_XL / 2
                   For ii = 1 To Stoper�ʒu_X��
                       Stoper_CX(ii) = (Stoper�ʒu_X(ii) + Stoper�ʒu_X(ii + 1)) / 2
                       Next ii
              
              For ii = 1 To �S��P_����
                       Y0 = .BYR - �S��P_�ʒu(ii)
                       Select Case FP_Stoper_Y�ʒu(Y0)
                       Case "":      D1$ = ���r_��("B2-1"): X0 = -�S��L_Xcen: Call P_���r_�S�ؐ}("", "V", "", X0, Y0)
                       Case Else:
                                     D1$ = ���r_��("B2-2����"):  Call P_���r_�S�ؐ}("", "V", "", X1, Y0)
                                     ���r_�S�؃� = 180:          Call P_���r_�S�ؐ}("", "V", "R", X2, Y0)
                                     ���r_�S�؃� = 0: D1$ = ���r_��("B2-3����"): XL2 = �S��L_XL / 2
                                     For i2 = 1 To Stoper�ʒu_X�� - 1:
                                         X3 = Stoper_CX(i2) - XL2: Call P_���r_�S�ؐ}("", "V", "", X3, Y0)
                                         Next i2
                       End Select
              
                       X0 = -�S��L_Xcen: Y0 = -.BYL + �S��P_�ʒu(ii)
                       Select Case FP_Stoper_Y�ʒu(Y0)
                       Case "":      D1$ = ���r_��("B2-1"): X0 = -�S��L_Xcen: Call P_���r_�S�ؐ}("", "V", "", X0, Y0)
                       Case Else:
                                     D1$ = ���r_��("B2-2����"):  Call P_���r_�S�ؐ}("", "V", "", X1, Y0)
                                     ���r_�S�؃� = 180:          Call P_���r_�S�ؐ}("", "V", "R", X2, Y0)
                                     ���r_�S�؃� = 0: D1$ = ���r_��("B2-3����"): XL2 = �S��L_XL / 2
                                     For i2 = 1 To Stoper�ʒu_X�� - 1:
                                         X3 = Stoper_CX(i2) - XL2: Call P_���r_�S�ؐ}("", "V", "", X3, Y0)
                                         Next i2
                       End Select
                       
                  
                  Next ii
              
      
      '[[[ ��S�؁@Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
      
              ���r_�S�؃� = 0:      D1$ = ���r_��("BU1")
              
              �\���ʒu_Y�� = �S��P_���� * 2
              For ii = 1 To �S��P_����:   �\���ʒu_Y(ii) = -.BYL + �S��P_�ʒu(ii):     Next ii
              For ii = 1 To �S��P_����:   �\���ʒu_Y(�\���ʒu_Y�� + 1 - ii) = .BYR - �S��P_�ʒu(ii):   Next ii
              �\���ʒu_Ypit = Abs(�\���ʒu_Y(2) - �\���ʒu_Y(1))
              
              For ii = 1 To �\���ʒu_Y��
                       Y0 = �\���ʒu_Y(ii)
                       Select Case FP_Stoper_Y�ʒu(Y0)
                       Case "":     SMark$(ii) = "B2-1"
                       Case Else:   SMark$(ii) = "B2-23"
                       End Select
                       Next ii
                       
              '[[[ B2-1 Mark ]]]
                       ���r_�S�؃� = 0: D1$ = ���r_��("B2-1"):
                       X0 = FP_�\���ʒuX("C", -3 * �\���ʒu_XPit)
                       D01$ = "": Y0 = 0: Y_1 = 99999: D01$ = ""
                       For ii = 1 To �\���ʒu_Y��: Y1 = �\���ʒu_Y(ii)
                             Select Case SMark$(ii)
                             Case "B2-1": If Y0 = 0 Then Y0 = Y1
                                          Ypit = Y1 - Y_1: If Y_1 <> 99999 Then D01$ = D01$ + FP1(Ypit)
                                          Y_1 = Y1: Y9 = Y1
                             Case Else:
                             End Select
                             Next ii
                       Print #60, "[P:" + FD2(X0, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       YLL = Y9 + .BYL + Mark_D1
                       Print #60, "[P:" + FD2(X0, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
              
              '[[[ B2-2, B2-3 Mark ]]]
                       ���r_�S�؃� = 0: D1$ = ���r_��("B2-2"):
                       X1 = Stoper�ʒu_X(1) - 6 * �\���ʒu_XPit: X2 = Stoper�ʒu_X(Stoper�ʒu_Data��) + 4 * �\���ʒu_XPit
                       X1 = FP_�\���ʒuX("L", X1): X2 = FP_�\���ʒuX("R", X2)
                       
                       X3 = Stoper�ʒu_X(1) + 5 * �\���ʒu_XPit: X4 = Stoper�ʒu_X(Stoper�ʒu_Data��) - 5 * �\���ʒu_XPit
                       X3 = FP_�\���ʒuX("R", X3): X4 = FP_�\���ʒuX("L", X4)
                       D01$ = "": Y0 = 0: Y_1 = 99999: D01$ = ""
                       For ii = 1 To �\���ʒu_Y��: Y1 = �\���ʒu_Y(ii)
                             Select Case SMark$(ii)
                             Case "B2-23": If Y0 = 0 Then Y0 = Y1
                                          Ypit = Y1 - Y_1: If Y_1 <> 99999 Then D01$ = D01$ + FP1(Ypit)
                                          Y_1 = Y1: Y9 = Y1
                             Case Else:
                             End Select
                             Next ii
                       YLL = Y9 + .BYL + Mark_D1
                       Print #60, "[P:" + FD2(X1, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X1, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
              
                       Print #60, "[P:" + FD2(X2, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X2, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
              
                       D1$ = ���r_��("B2-3")
                       Print #60, "[P:" + FD2(X3, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X3, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
              
                       Print #60, "[P:" + FD2(X4, Y0) + "]\[<R:270," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X4, Y9) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
      
      
      
      
      '[[[ ��S�ؐ��@ ]]]
                  ���@�ʒuL4 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale + 3 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L4 = ���@���ʒu_������.L�J�� - 3 * ���r_���@��_Pit_��̐} - 1
                  ��S�ؐ��@�� = Roop�S�ؕ�(���@��)
                  ��S��pit = ��S�ؐ��@�� / (�S��P_���� + 1)
                  Moj$ = F9(�S��P_���� + 1) + "x" + f1(��S��pit) + "=" + F9(��S�ؐ��@��)
                  Y1 = -.BYL + Roop�S��_K�ʒu: Y2 = .BYR - Roop�S��_K�ʒu - ��S�ؐ��@��
                  Print #60, "[P:" + FD2(���@�ʒuL4, Y1) + "]\[��:" + FD3(0, ��S�ؐ��@��, 0) + "," + Moj$ + "]"
                  Print #60, "[P:" + FD2(���@�ʒuL4, Y2) + "]\[��:" + FD3(0, ��S�ؐ��@��, 0) + "," + Moj$ + "]"
      
      
      
      
      '[[[ ���S�� �� ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                  '        B4=D25_K73_@98+12x150_B3150_D2829
                 '*OLD  B4-1=9+9-D25_@98+8x150_L2880+r270+2289+r270+2880
             ���r_�S�؃� = 180:      D1$ = ���r_��("B��1")
                       X0 = -.BXL + �S��_SK�ʒu + �S��L_XL / 2 - �S��L_Xcen: Y0 = -�S��L_Ycen: '- �S�؈ʒu_�ʒu(jj)
                       Call P_���r_�S�ؐ}("", "", "", X0, Y0)
     
             ���r_�S�؃� = 0:      D1$ = ���r_��("B��1")
                       X0 = .BXR - �S��_SK�ʒu - �S��L_XL / 2 - �S��L_Xcen: Y0 = -�S��L_Ycen: '- �S�؈ʒu_�ʒu(jj)
                       Call P_���r_�S�ؐ}("", "", "", X0, Y0)
     
     
      '[[[ ���S�� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
             ���r_�S�؃� = 180:      D1$ = ���r_��("B��1")
                       X1 = Stoper�ʒu_X(1): X1 = FP_�\���ʒuX("C", X1):
                       X2 = Stoper�ʒu_X(Stoper�ʒu_Data��): X2 = FP_�\���ʒuX("C", X2):
                       Y1 = -�S��L_YL / 2:
     
                       YLL = .BYL + Y1 + Mark_D2
                       XLL = 0: If .H1 > 0 Then XLL = 1.3 * ���r_�S�ؖ���_�a
                       '*2002.10.29
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:270]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L1 + XLL, 0) + "]\[pm:6,0]"
                       If XLL > 0 Then Call P_�S��_������(0): Print #60, "[p:" + FD2(1.2 * Mark_Pit, 0) + "]": D1$ = ���r_��("B��2")
                       Call P_�S��_������(1)
     
                       D1$ = ���r_��("B��1")
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:270]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L1 + XLL, 0) + "]\[pm:6,0]"
                       If XLL > 0 Then Call P_�S��_������(0): Print #60, "[p:" + FD2(1.2 * Mark_Pit, 0) + "]": ���r_�� ("B��2")
                       Call P_�S��_������(1)
     
     
     
     
    '[[[  ����ׯ��   ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '      B01 = D22_X98_K98_B1618_D2292 + F_r160    ' �����ׯ��  Y�� �Ώۍl��  --> B01
                    '      B02 = D22_X98_K98_B1618_DF + 440          ' ����ׯ��  Y�� �Ώۍl��  --> B02, B03, B04
                    '      B03 = D16_K98_B2776_D500              ' ������ׯ��    --->  B5-1, B5-2, B5-3

              
              ���r_�S�؃� = 90: D1$ = ���r_��("B02"): XL1 = �S��L_XL: X��� = �S��_XX
                                D1$ = ���r_��("B03"): XL1�O = �S��L_XL
                                D1$ = ���r_��("B04"): XL1�� = �S��L_XL
              ���r_�S�؃� = 90: D1$ = ���r_��("B5-1"): XL2 = �S��L_XL
                                D1$ = ���r_��("B5-2"): XL2�O = �S��L_XL
                                D1$ = ���r_��("B5-3"): XL2�� = �S��L_XL
              
              
              D1$ = ���r_��("Spit")
              X0 = -.BXL:  XL = �S��L_XL
              Y1 = -.BYL + X���
              Y2 = .BYR - X���
              Y0 = -XL2 / 2
    
              For ii = 1 To �S��P_����: X1 = X0 + �S��P_�ʒu(ii):
                       Select Case X1
                       Case Is < -�y�؋��r_��.BXL:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      Print #60, "[P:" + FD2(X1 + ���r_J�S�؊J�� * ����}_Scale, Y2) + "]\[�M2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[�M2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   
                                   Case Else:    Print #60, "[P:" + FD2(X1, Y2) + "]\[�M2:" + FD4(0, -XL1�O, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[�M2:" + FD4(0, XL1�O, 1.5, -45) + "]"
                                                 Print #60, "[P:" + FD2(X1, -XL1�� / 2) + "]\[�M2:" + FD4(0, XL1��, 1.5, -45) + "]"
                                   End Select
                                   
                       Case Is < �y�؋��r_��.BXR:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, XL2) + "]"
                                   Case Else:    Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, XL2�O) + "]"
                                                 Print #60, "[P:" + FD2(X1, -XL2�� / 2) + "]\[L:" + FD2(0, XL2��) + "]"
                                                 Print #60, "[P:" + FD2(X1, -Y0) + "]\[L:" + FD2(0, -XL2�O) + "]"
                                   End Select
                       
                       Case Else:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      Print #60, "[P:" + FD2(X1 + ���r_J�S�؊J�� * ����}_Scale, Y2) + "]\[�M2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[�M2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   
                                   Case Else:    Print #60, "[P:" + FD2(X1, Y2) + "]\[�M2:" + FD4(0, -XL1�O, 1.5, 45) + "]"
                                                 Print #60, "[P:" + FD2(X1, Y1) + "]\[�M2:" + FD4(0, XL1�O, 1.5, -45) + "]"
                                                 Print #60, "[P:" + FD2(X1, -XL1�� / 2) + "]\[�M2:" + FD4(0, XL1��, 1.5, -45) + "]"
                                   End Select
                       End Select
                       Next ii
    
    
    
    
    '[[[  ����ׯ�� ���@ ]]]
              D1$ = ���r_��("Spit")
              ���@�ʒu3 = .BYR + ���@���ʒu_������.U�J�� * ����}_Scale - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��3 = ���@���ʒu_������.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
              
              Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu3) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii))
                        D11$ = D11$ + FD3(�S��P_L(ii), 0, -��3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - �S��P_�ʒu(�S��P_����), 0, 0) + "]"
              Print #60, D11$
     
    '[[[  ���ׯ�� Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
              D1$ = ���r_��("Spit")
              For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii):
                       Select Case X1
                       Case Is < -�y�؋��r_��.BXL:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      SMark$(ii) = "B02"
                                   Case Else:    SMark$(ii) = "B03":
                                   End Select
                                   
                       Case Is < �y�؋��r_��.BXR:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      SMark$(ii) = "B5-1"
                                   Case Else:    SMark$(ii) = "B5-2"
                                   End Select
                       
                       Case Else:
                                   Select Case FP_Stoper_X�ʒu(X1)
                                   Case "":      SMark$(ii) = "B02":
                                   Case Else:    SMark$(ii) = "B03"
                                   End Select
                       End Select
                       Next ii
              '[[[ B02 Mark ]]]
                       X0_02 = 0: X1_02 = 99999: D0_02$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B02": If X0_02 = 0 Then X0_02 = X1
                                          Xpit = X1 - X1_02: If X1_02 <> 99999 Then D0_02$ = D0_02$ + FP1(Xpit)
                                          X1_02 = X1: X9_02 = X1
                             Case Else:
                             End Select
                             Next ii
              
              '[[[ B03 Mark ]]]
                       X0_03 = 0: X1_03 = 99999: D0_03$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B03": If X0_03 = 0 Then X0_03 = X1
                                          Xpit = X1 - X1_03: If X1_03 <> 99999 Then D0_03$ = D0_03$ + FP1(Xpit)
                                          X1_03 = X1
                             Case Else:
                             End Select
                             Next ii
                       
              '[[[ B5-1 Mark ]]]
                       X0_51 = 0: X1_51 = 99999: D0_51$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B5-1": If X0_51 = 0 Then X0_51 = X1
                                          Xpit = X1 - X1_51: If X1_51 <> 99999 Then D0_51$ = D0_51$ + FP1(Xpit)
                                          X1_51 = X1
                             Case Else:
                             End Select
                             Next ii
                       
              '[[[ B5-2 Mark ]]]
                       X0_52 = 0: X1_52 = 99999: D0_52$ = ""
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B5-2": If X0_52 = 0 Then X0_52 = X1
                                          Xpit = X1 - X1_52: If X1_52 <> 99999 Then D0_52$ = D0_52$ + FP1(Xpit)
                                          X1_52 = X1
                             Case Else:
                             End Select
                             Next ii
                       
                       
                Mark_Y(1) = .BYR
                For ii = 1 To 10: Mark_Y(ii + 1) = Mark_Y(ii) - 1.15 * Mark_Pit: Next ii
                       B03_Y1 = �\���ʒu_Y(�\���ʒu_Y��) + 0.6 * �\���ʒu_Ypit
                       B03_Y2 = �\���ʒu_Y(1) - 0.6 * �\���ʒu_Ypit
                       B52_Y1 = �\���ʒu_Y(�\���ʒu_Y��) + 0.3 * �\���ʒu_Ypit
                       B52_Y2 = �\���ʒu_Y(1) - 0.3 * �\���ʒu_Ypit
                       
                       B51_Y1 = FP_�\���ʒuY("U", Stoper�ʒu_Y(1) + Stoper�ʒu_BY(1) / 2) + 0.6 * �\���ʒu_Ypit
                       B53_Y1 = 50
                       B04_Y1 = -50
                       
                       
                       ���r_�S�؃� = 90: D1$ = ���r_��("B03")
                       Call P_MarkR(D0_03$, X0_03, B03_Y1, Mark_Y(1), Mark_R1)
                       Call P_MarkR(D0_03$, X0_03, B03_Y2, Mark_Y(7), Mark_R1 - 40)
    
                       ���r_�S�؃� = 90: D1$ = ���r_��("B5-2")
                       Call P_MarkR(D0_52$, X0_52, B52_Y1, Mark_Y(2), Mark_R1)
                       Call P_MarkR(D0_52$, X0_52, B52_Y2, Mark_Y(6), Mark_R1)
     
                       ���r_�S�؃� = 90: D1$ = ���r_��("B5-1")
                       Call P_MarkR(D0_51$, X0_51, B51_Y1, Mark_Y(3), Mark_R1 - 40)
     
                       ���r_�S�؃� = 90: D1$ = ���r_��("B5-3")
                       Call P_MarkR(D0_52$, X0_52, B53_Y1, Mark_Y(4), Mark_R1)
     
                       ���r_�S�؃� = 90: D1$ = ���r_��("B04")
                       Call P_MarkR(D0_03$, X0_03, B04_Y1, Mark_Y(5), Mark_R1 - 40)
     
     
                       B02_Y1 = FP_�\���ʒuY("D", Stoper�ʒu_Y(1) + Stoper�ʒu_BY(1) / 2 - 20) + 0.5 * �\���ʒu_Ypit
                       B02_Y2 = FP_�\���ʒuY("D", Stoper�ʒu_Y(Stoper�ʒu_Data��) - Stoper�ʒu_BY(Stoper�ʒu_Data��) / 2 + 20) + 0.5 * �\���ʒu_Ypit
                       B02_Y1_2 = .BYR + Mark_U1
                       B02_Y2_2 = -.BYL - Mark_D1
                       ���r_�S�؃� = 90: D1$ = ���r_��("B02")
     
                       Call P_MarkL(D0_02$, X0_02, X9_02, B02_Y1, B02_Y1_2, Mark_L1)
                       Call P_MarkL(D0_02$, X0_02, X9_02, B02_Y2, B02_Y2_2, Mark_L1)
     
      End With
     ' Cir
     End Sub

Sub P_MarkR(D01$, X0, Y1, Y2, Mark_R1)
        Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + Mid(D01$, 2) + "]"
        XLL = -X0 + �y�؋��r_��.BXR + Mark_R1
        Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
        Call P_�S��_������(2)

       End Sub
Sub P_MarkL(D01$, X0, X9, Y1, Y2, Mark_L1)
        Print #60, "[P:" + FD2(X0, Y1) + "]\[<R:180," + Mid(D01$, 2) + "]"
        XLL = X9 + �y�؋��r_��.BXL + Mark_L1
        Print #60, "[P:" + FD2(X9, Y1) + "]\[L:" + FD2(-XLL, 0) + "]\[L:" + FD2(0, Y2 - Y1) + "]\[Lm:" + FD2(-����_L2, 0) + "]\[pm:5,0]"
        Call P_�S��_������(2)

       End Sub

Sub P_��_�f��C()
     '�����f��
     ReDim SMark$(100)
     
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
                
     With �y�؋��r_��
                 
                 Mark_Pit = ���r_�S�ؖ���_�a * ����}_Scale
                 Mark_U1 = 8 * ����}_Scale: Mark_U2 = Mark_U1 + 1.1 * Mark_Pit
                 Mark_D1 = 1.5 * Mark_Pit:     Mark_D2 = Mark_D1 + 1.1 * Mark_Pit
                 Mark_L1 = 3 * ����}_Scale
                 Mark_R1 = 3 * ����}_Scale
      
      '[[[ �i�}�� ]]]
         Y0 = .BYR + (���@���ʒu_������.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂb�|�b")
                
      '[[[ ��� ]]]
            Print #60, "[�F:��]\[�:���]"
        Call P_���r_��_���ʐ}
         Print #60, "[dot:]"
         Call P_���r_��_�f�ʐ}
         Print #60, "[con:]"
     
     
       '[[[ �į�߰ ���� Line ]]]
                  Print #60, "[dot:]"
                  Call P_���r_Stoper_����("C")
      
       Print #60, "[con:]"
      
      
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = .BYR + ���@���ʒu_������.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_������.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu1) + "]"
                  Print #60, "[��:" + F9(-��1) + ":" + FD3(.BX, 0, -��1) + "]"
     
                  ���@�ʒu2 = .BYR + ���@���ʒu_������.U�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_������.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(-.BXL, ���@�ʒu2) + "]"
                  Print #60, "[��:" + FD3(.BXL2, 0, -��2) + "|" + FD3(�y�؋��r_��.BX, 0, -��2) + "|" + FD3(.BXR2, 0, -��2) + "]"
          
          
          ' L���@
                  ���@�ʒuL1 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_������.L�J�� - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.BYL) + "]"
                  Print #60, "[��:" + F9(-��L1) + ":" + FD3(0, .BY, -��L1) + "]"
     
                  ���@�ʒuL2 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_������.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(���@�ʒuL2, -.BYL) + "]"
                  Print #60, "[��:" + FD3(0, .BYL, -��L2) + "|" + FD3(0, .BYR, 0) + "]"
     
    '[[[ ���S��(��������) ]]]
            Print #60, "[�F:��]\[�:���]"
           '  B3=D25_@136+164+4x250+400+4x250+164_   B95+3445.1    D98+1327.9+1534.4_r150
              ���r_�S�؃� = 270: D1$ = ���r_��("BD1"): X0_LL = �S��L_XL
              X1 = -.BXL + ������_X1:   X2 = .BXR - ������_X1
              
              For ii = 1 To �S��P_����: Y1 = -.BYL + �S��P_�ʒu(ii):
                      Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X0_LL, 0) + "]"
                      Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(-X0_LL, 0) + "]"
                      Next ii
    
    '[[[ ���S��(��������) ���@ ]]]
                  ���@�ʒuL3 = -.BXL - ���@���ʒu_������.L�J�� * ����}_Scale + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ���@���ʒu_������.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
              
              Print #60, "  [P:" + FD2(���@�ʒuL3, -.BYL) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                        D11$ = D11$ + FD3(0, �S��P_L(ii), -��L3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(0, .BY - �S��P_�ʒu(�S��P_����), 0) + ",,R=7]"
              Print #60, D11$
     
    '[[[ ���S��(��������) Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
              ���r_�S�؃� = 270: D1$ = ���r_��("BD1"): 'X0_LL = �S��L_XL
                   X1 = -�y�؋��r_��.BXL + 200: X2 = �y�؋��r_��.BXR - 200
                   Y0 = .BYR - �S��P_�ʒu(1): '�S��P_����):
                   
                   YLL = Y0 + .BYL + Mark_D1
                   Print #60, "[P:" + FD2(X1, .BYR) + "]\[<:270," + �S��_pit$ + ",*]": ' ",-]"
                   Print #60, "[P:" + FD2(X1, Y0) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(2)
                   Print #60, "[P:" + FD2(X2, .BYR) + "]\[<:270," + �S��_pit$ + ",*]": ' ",-]"
                   Print #60, "[P:" + FD2(X2, Y0) + "]\[L:" + FD2(0, -YLL) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                   Call P_�S��_������(2)
     
     
     '[[[  Y �\���ʒu   ]]]
                  D1$ = ���r_��("BD1"):  �\���ʒu_Y�� = �S��P_����
                  For ii = 1 To �S��P_����:  �\���ʒu_Y(ii) = -.BYL + �S��P_�ʒu(ii):     Next ii
                  �\���ʒu_Ypit = Abs(�\���ʒu_Y(2) - �\���ʒu_Y(3))
        
        
        
    '[[[  �����ׯ��   ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                    '      B01 = D22_X98_K98_B1618_D2292 + F_r160    ' �����ׯ��  Y�� �Ώۍl��  --> B01
                    '      B02 = D22_X98_K98_B1618_DF + 440          ' ����ׯ��  Y�� �Ώۍl��  --> B02, B03, B04
                    '      B03 = D16_K98_B2776_D500              ' ������ׯ��    --->  B5-1, B5-2, B5-3

              
              ���r_�S�؃� = 90: D1$ = ���r_��("B01"): XL1 = �S��L_XL: X��� = �S��_XX
              
              
              D1$ = ���r_��("Spit")
              X0 = -.BXL:  XL = �S��L_XL
              Y1 = -.BYL + X���
              Y2 = .BYR - X���
    
              For ii = 1 To �S��P_����: X1 = X0 + �S��P_�ʒu(ii):
                       Select Case X1
                       Case Is < -�y�؋��r_��.BXL:
                                   Print #60, "[P:" + FD2(X1 + ���r_J�S�؊J�� * ����}_Scale, Y2) + "]\[�M2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                   Print #60, "[P:" + FD2(X1, Y1) + "]\[�M2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   SMark$(ii) = "B01"
                       Case Is < �y�؋��r_��.BXR: SMark$(ii) = ""
                       
                       Case Else:
                                   Print #60, "[P:" + FD2(X1 + ���r_J�S�؊J�� * ����}_Scale, Y2) + "]\[�M2:" + FD4(0, -XL1, 1.5, 45) + "]"
                                   Print #60, "[P:" + FD2(X1, Y1) + "]\[�M2:" + FD4(0, XL1, 1.5, -45) + "]"
                                   SMark$(ii) = "B01"
                       End Select
                       Next ii
    
    '[[[  �����ׯ�� Mark  ]]]
            Print #60, "[�F:��]\[�:Mark]"
    
              '[[[ B01 Mark ]]]
                       Y1 = �\���ʒu_Y(2) + �\���ʒu_Ypit / 2
                       Y2 = �\���ʒu_Y(�\���ʒu_Y�� - 1) - �\���ʒu_Ypit / 2
                       
                       X0 = 0: X_1 = 99999: D01$ = ""
                       XDL = ���r_J�S�؊J�� * ����}_Scale
                       For ii = 1 To �S��P_����: X1 = -.BXL + �S��P_�ʒu(ii)
                             Select Case SMark$(ii)
                             Case "B01": If X0 = 0 Then X0 = X1
                                          Xpit = X1 - X_1: If X_1 <> 99999 Then D01$ = D01$ + FP1(Xpit)
                                          X_1 = X1
                             Case Else:
                             End Select
                             Next ii
    
    
                       XLL = -X0 + .BXR + Mark_L1
                       Print #60, "[P:" + FD2(X0, Y1) + "]\[<:0," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X0, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
    
                       Print #60, "[P:" + FD2(X0 + XDL, Y2) + "]\[<:0," + Mid(D01$, 2) + "]"
                       Print #60, "[P:" + FD2(X0 + XDL, Y2) + "]\[L:" + FD2(XLL, 0) + "]\[lm:" + FD2(����_L2, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(2)
    
    
    
    
    '[[[  ���ׯ�� ���@ ]]]
              D1$ = ���r_��("Spit")
              ���@�ʒu3 = .BYR + ���@���ʒu_������.U�J�� * ����}_Scale - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
              ��3 = ���@���ʒu_������.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
              
              Print #60, "  [P:" + FD2(-.BXL, ���@�ʒu3) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 3 Then Moj$ = ""
                        D11$ = D11$ + FD3(�S��P_L(ii), 0, -��3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BX - �S��P_�ʒu(�S��P_����), 0, 0) + "]"
              Print #60, D11$
     
     
     
     
     
     
     End With
     
     End Sub




Sub P_��_�f��sa()
     '�����f��
     ReDim ���@S(50) As Single, Roop�S�ؕ�(50) As Single
     
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     '���_   ����[  ���r�c
     
     With �y�؋��r_��
      
      
      '[[[ �i�}�� ]]]
         Y0 = (���@���ʒu_���f��.U�J�� + �i�}���J���ʒu) * ����}_Scale
         Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|��")
     
      '[[[ ���f�� }}}
            Print #60, "[�F:��]\[�:���]"
           ������ = �y�؋��r_��.���zL
           �オ�� = �y�؋��r_��.���zC
           Call P_���r_��_�f�ʐ}
     
      '[[[ ��̐��@ ]]]
          ' U���@
                  ���@�ʒu1 = ���@���ʒu_���f��.U�J�� * ����}_Scale
                  ��1 = ���@���ʒu_���f��.U�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu1) + "]\[��:" + F9(-��1) + ":" + FD3(.BY, 0, -��1) + "]"
     
                  ���@�ʒu2 = ���@���ʒu_���f��.U�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��2 = ���@���ʒu_���f��.U�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, FP_Stoper_�f��Y���@(���@�ʒu2, ��2)
          
          ' D���@
                  ���@�ʒuD1 = -.H - ���@���ʒu_���f��.D�J�� * ����}_Scale
                  ��D1 = ���@���ʒu_���f��.D�J�� - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒuD1) + "]\[��:" + F9(��D1) + ":" + FD3(.BY, 0, ��D1) + "]"
     
                  ���@�ʒuD2 = -.H - ���@���ʒu_���f��.D�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D2 = ���@���ʒu_���f��.D�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒuD2) + "]\[��:" + FD3(.BYL, 0, ��D2) + "|" + FD3(.BYR, 0, 0) + "]"
          
          
          ' L���@
                  ���@�ʒuL1 = -.BYL - ���@���ʒu_���f��.L�J�� * ����}_Scale
                  ��L1 = ���@���ʒu_���f��.L�J�� - 1
                  ��L12 = ���@���ʒu_���f��.L�J�� + .BYL / ����}_Scale - 1
                  Print #60, "[P:" + FD2(���@�ʒuL1, -.H) + "]\[��:" + F9(-��L1) + ":" + FD3(0, .H, -��L12) + "]"
     
                  ���@�ʒuL2 = -.BYL - ���@���ʒu_���f��.L�J�� * ����}_Scale + 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L2 = ���@���ʒu_���f��.L�J�� - 1 * ���r_���@��_Pit_��̐} - 1
                  ��L22 = ���@���ʒu_���f��.L�J�� + .BYL / ����}_Scale - 1 * ���r_���@��_Pit_��̐} - 1
                  Print #60, "[P:" + FD2(���@�ʒuL2, -.H) + "]"
                  Print #60, "[��:" + FD3(0, .H + .���zL, -��L2) + "|" + FD3(0, -.���zL, -��L2) + ",,L=7|" + FD3(0, .���zC, -��L22) + ",,R=8]"
     
          ' R���@
     
                  ���@�ʒuR1 = .BYR + ���@���ʒu_���f��.L�J�� * ����}_Scale
                  ��R1 = ���@���ʒu_���f��.R�J�� - 1
                  ��R12 = ���@���ʒu_���f��.R�J�� + .BYR / ����}_Scale - 1
                  Print #60, "[P:" + FD2(���@�ʒuR1, -.H) + "]"
                  Print #60, "[��:" + FD1(��R1) + ":" + FD3(0, .H + .���zL, ��R1) + "|" + FD3(0, -.���zL, ��R1) + ",,L=7|" + FD3(0, .���zC, ��R12) + ",,R=8]"
     
     
     
      '[[[ �į�� ]]]
            Print #60, "[�F:��]\[�:���]"
          
          Print #60, "[dot:]"
          Call P_���r_Stoper_Y�f��(0, -������, �オ��)
          Print #60, "[con:]"
          
      
      '[[[ ٰ�ߓS�� ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
        ���@�� = 0
        Roop_�S��Pit_���@$ = "": Roop_Pit_��L = 0
        B02_X0 = 0
            ���r_J�S�؊J��_BAK = ���r_J�S�؊J��: ���r_J�S�؊J�� = 0
        For ii = 1 To 3:
              ���r_�S�؃� = 180
              
              Select Case ii
              Case 1:   D1$ = ���r_��("BR1"): If D1$ <> "" Then ���@�� = ���@�� + 1: ���@S(���@��) = �S��_SK�ʒu
              Case 2:   D1$ = ���r_��("BR2"): If D1$ <> "" Then ���@�� = ���@�� + 1: ���@S(���@��) = �S��_SK�ʒu
              Case 3:   D1$ = ���r_��("BR3"): If D1$ <> "" Then ���@�� = ���@�� + 1: ���@S(���@��) = �S��_SK�ʒu
              End Select
              
              If D1$ <> "" Then
                  If �S��P_��L > Roop_Pit_��L Then Roop_Pit_��L = �S��P_��L: Roop_�S��Pit_���@$ = �S��_pit$
                  �S�،a$ = �S��_�a$
                  Roop�S�؊Ԋu = �S��L_YL: Roop�S��_K�ʒu = �S��_SK�ʒu
                  B02_X0 = Roop�S��_K�ʒu
                  X1 = -.BYL + Roop�S��_K�ʒu: X2 = X1 + Roop�S�؊Ԋu
                  X3 = .BYR - Roop�S��_K�ʒu: X4 = X3 - Roop�S�؊Ԋu
                  Roop�S�ؕ�(���@��) = �S��L_YL

                  For i2 = 1 To �S��P_����:  Y0 = -�S��P_�ʒu(i2)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[���r�S��:" + �S�،a$ + "]\[P:" + FD2(X2, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                            Print #60, "[P:" + FD2(X3, Y0) + "]\[���r�S��:" + �S�،a$ + "]\[P:" + FD2(X4, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                       Next i2
                 End If
              Next ii
            ���r_J�S�؊J�� = ���r_J�S�؊J��_BAK
        
      '[[[ ٰ�ߓS�� ���@  ---> ]]]
                  ���@�ʒu3 = ���@���ʒu_���f��.U�J�� * ����}_Scale - 2 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��3 = ���@���ʒu_���f��.U�J�� - 2 * ���r_���@��_Pit_��̐} - 1
            LLM1 = Roop�S�ؕ�(���@��): LLM2 = .BY - 2 * (���@S(1) + Roop�S�ؕ�(1))
            For ii = ���@�� To 1 Step -1:    ���@S(ii) = ���@S(ii) - ���@S(ii - 1):    Next ii
                  D1$ = ""
                  For ii = 1 To ���@��
                        D1$ = D1$ + "|" + FD3(���@S(ii), 0, -��3): If ii = 1 Then D1$ = D1$ + ",,L=7"
                        Next ii
                  D1$ = D1$ + "|" + FD3(LLM1, 0, -��3)
                  If ���@�� > 1 Then
                          For ii = ���@�� To 2 Step -1: D1$ = D1$ + "|" + FD3(���@S(ii), 0, -��3): If ii = 2 Then D1$ = D1$ + ",,LC=5"
                               Next ii
                          End If
                  '.... ����
                  D1$ = D1$ + "|" + FD3(LLM2, 0, -��3)
      
                  If ���@�� > 1 Then
                          For ii = 2 To ���@��: D1$ = D1$ + "|" + FD3(���@S(ii), 0, -��3): If ii = 2 Then D1$ = D1$ + ",,RC=5"
                               Next ii
                          End If
                  D1$ = D1$ + "|" + FD3(LLM1, 0, -��3)
                  If ���@�� > 1 Then For ii = ���@�� To 2 Step -1: D1$ = D1$ + "|" + FD3(���@S(ii), 0, -��3): Next ii
                  
                  D1$ = "[��:" + Mid(D1$, 2) + "|" + FD3(���@S(1), 0, -��3) + ",,R=7]"
                  Print #60, "[P:" + FD2(-.BYL, ���@�ʒu3) + "]"
                  Print #60, D1$
                  
                  
                  
                  
      '[[[ ٰ�ߓS�� Y ���@ ]]]
                  ���@�ʒuL3 = -.BYL - ���@���ʒu_���f��.L�J�� * ����}_Scale + 2 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��L3 = ���@���ʒu_���f��.L�J�� - 2 * ���r_���@��_Pit_��̐} - 1
         If Roop_�S��Pit_���@$ <> "" Then
                  Call ���r_�S��_Pit_ck(Roop_�S��Pit_���@$)
                  Y00 = -.H: D11$ = "[P:" + FD2(���@�ʒuL3, -.H) + "]\[��:"
                  For ii = �S��P_���� To 1 Step -1: Y1 = -�S��P_�ʒu(ii)
                        D11$ = D11$ + FD3(0, Y1 - Y00, -��L3) + "|"
                        Y00 = Y1
                        Next ii
                        Y1 = .���zL
                        D11$ = D11$ + FD3(0, Y1 - Y00, 0) + ",,R=6]"
                  Print #60, D11$
             End If
      
      '[[[ ��S�� B2-1 B2-2 B2-3 ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
              '           B2=D16_K126_@396.7+4x180.7_LF+8900+F        ' ###  *  ---> x
                  ���r_�S�؃� = 0:      D1$ = ���r_��("BU1")
                  �S�،a$ = �S��_�a$: Y0 = -�S��_SK�ʒu
                  For ii = 1 To �S��P_����:
                            X1 = -.BYL + �S��P_�ʒu(ii): X2 = .BYR - �S��P_�ʒu(ii)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                       Next ii
                  
                  
                  
      '[[[ ��S�� B2-1 B2-2 B2-3 ���@ ]]]
                  
                  ���@�ʒu4 = ���@���ʒu_���f��.U�J�� * ����}_Scale - 3 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��4 = ���@���ʒu_���f��.U�J�� - 3 * ���r_���@��_Pit_��̐} - 1
                  ��S�ؐ��@�� = Roop�S�ؕ�(���@��)
                  ��S��pit = ��S�ؐ��@�� / (�S��P_���� + 1)
                  Moj$ = F9(�S��P_���� + 1) + "x" + f1(��S��pit) + "=" + F9(��S�ؐ��@��)
                  X1 = -.BYL + Roop�S��_K�ʒu: X2 = .BYR - Roop�S��_K�ʒu - ��S�ؐ��@��
                  Print #60, "[P:" + FD2(X1, ���@�ʒu4) + "]\[��:" + FD3(��S�ؐ��@��, 0, 0) + "," + Moj$ + "]"
                  Print #60, "[P:" + FD2(X2, ���@�ʒu4) + "]\[��:" + FD3(��S�ؐ��@��, 0, 0) + "," + Moj$ + "]"
      
                  
                  
                  
                  
                  
                  
                  
        
      '[[[ ���S��(��������) ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
                '         B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                        ' �[���̓S�؂̈ʒu  *2002.10.28
                            ���r_�S�؃� = 270:     D1$ = ���r_��("BS1")
                             DXL = Val(�S��_X$):  DYL = 0.6 * �S��_r
        
                  ���r_�S�؃� = 270:      D1$ = ���r_��("BD1")
                  �S�،a$ = �S��_�a$: Y0 = -.H + ������_X1
                  For ii = 1 To �S��P_����: X0 = -.BYL + �S��P_�ʒu(ii):
                       Select Case ii
                       Case 1, �S��P_����: Print #60, "[P:" + FD2(X0, Y0 + DYL) + "]\[���r�S��:" + �S�،a$ + "]"
                       Case Else:          Print #60, "[P:" + FD2(X0, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                       End Select
                       Next ii
    
    '[[[ ���S��(��������) ���@ ]]]
                  ���@�ʒuD3 = -.H - ���@���ʒu_���f��.D�J�� * ����}_Scale + 3 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��D3 = ���@���ʒu_���f��.D�J�� - 3 * ���r_���@��_Pit_��̐} - 1
              
              Print #60, "  [P:" + FD2(-.BYL, ���@�ʒuD3) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(�S��P_Data$(ii)): If ii = 1 Then Moj$ = Moj$ + ",L=7"
                        D11$ = D11$ + FD3(�S��P_L(ii), 0, ��D3) + "," + Moj$ + "|"
                        Next ii
                        D11$ = D11$ + FD3(.BY - �S��P_�ʒu(�S��P_����), 0, 0) + ",,R=7]"
              Print #60, D11$
        
        
      '[[[ ���S��   B4-1 ]]]
            Print #60, "[�F:��]\[�:�S�ؒf��]"
                '          B4=D25_K73_@126+12x150_B3150_D2829
                  ���r_�S�؃� = 180:     D1$ = ���r_��("B��1")
                  X1 = -�S��L_YL / 2: X2 = �S��L_YL / 2
                  For ii = 1 To �S��P_����:   Y0 = -�S��P_�ʒu(ii)
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[���r�S��:" + �S�،a$ + "]\[P:" + FD2(X2, Y0) + "]\[���r�S��:" + �S�،a$ + "]"
                       Next ii
     
    '[[[   ���S��  ���@ ]]]
      
                  ���@�ʒuR2 = .BYR + ���@���ʒu_���f��.L�J�� * ����}_Scale - 1 * ���r_���@��_Pit_��̐} * ����}_Scale
                  ��R2 = ���@���ʒu_���f��.R�J�� - 1 * ���r_���@��_Pit_��̐} - 1
              Print #60, "  [P:" + FD2(���@�ʒuR2, -.H) + "]"
                  D11$ = "  [��:"
                  For ii = 1 To �S��P_Data��
                        Ds$(�S��P_Data�� + 2 - ii) = �S��P_Data$(ii): Di(�S��P_Data�� + 2 - ii) = �S��P_L(ii)
                        Next ii
                        Ds(1) = "": Di(1) = .H + ������ - �S��P_�ʒu(�S��P_����)
                  For ii = 1 To �S��P_Data��
                        Moj$ = P_���r_��Pit���@(Ds$(ii)): 'If ii > �S��P_Data�� Then Moj$ = Moj$ + ",R=6"
                        D11$ = D11$ + FD3(0, Di(ii), ��R2) + "," + Moj$ + "|"
                        Next ii
                        'D11$ = D11$ + "]"
                        D11$ = D11$ + FD3(0, Di(�S��P_Data�� + 1), 0) + ",,R=6]"
              Print #60, D11$
        
        
        
       '[[[ ����ׯ��  B02 ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                '         B02 = D22_X98_K98_B1618_DF + 440      '### ����ׯ��  Y�� �Ώۍl��  --> B02, B03, B04
             ���r_�S�؃� = 90:     D1$ = ���r_��("B02")
             X0 = -.BYL + �S��_XX: Y0 = -�S��_SK�ʒu - �S��L_YL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             X0 = .BYR - �S��_XX - �S��L_XL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
     
        
      '[[[ ����ׯ�� B02 Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
             ���r_�S�؃� = 90:      D1$ = ���r_��("B02")
                       X1 = -.BYL + B02_X0 + 95
                       X2 = .BYR - B02_X0 - 95
                       Y1 = -�S��_SK�ʒu:
     
                       YLL = -Y1 + 4 * ����}_Scale
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:90]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(0, YLL) + "]\[Lm:" + FD2(-����_L1, 0) + "]\[pm:5,0]"
                       Call P_�S��_������(1)
     
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[<:90]"
                       Print #60, "[P:" + FD2(X2, Y1) + "]\[L:" + FD2(0, YLL) + "]\[lm:" + FD2(����_L1, 0) + "]\[pm:6,0]"
                       Call P_�S��_������(1)
     
       
       '[[[ �����ׯ�� ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                '          B01 = D22_X98_K98_B1618_D2292 + F_r160 '### �����ׯ��  Y�� �Ώۍl��  --> B01
             ���r_�S��L�v�Z_max$ = "Y" ' �S��L �ő咷��Set
             ���r_�S�؃� = 270:     D1$ = ���r_��("BS1")
             X0 = -.BYL + �S��_XX + �S��L_XL: Y0 = -.H + �S��_SK�ʒu + �S��L_YL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             
             ���r_�S�؃� = 270:     D1$ = ���r_��("BS1R")
             X0 = .BYR - �S��_XX: Y0 = -.H + �S��_SK�ʒu + �S��L_YL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             ���r_�S��L�v�Z_max$ = "" ' �S��L �ő咷��Reset
     
       '[[[ �����ׯ��Mark ]]]
            Print #60, "[�F:��]\[�:Mark]"
             ���r_�S�؃� = 270:     D1$ = ���r_��("BS1")
             X1 = -.BYL + �S��_XX + �S��L_XL: Y1 = -.H + �S��_SK�ʒu + 280
                       XLL = -X0 + .BYR + 5 * ����}_Scale
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[<:0]"
                       Print #60, "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL, 0) + "]\[Lm:" + FD2(0, -25) + "|" + FD2(����_L1, 0) + "]\[pm:-14,0]"
                       Call P_�S��_������(1)
     
     
     
     End With
     End Sub
Sub P_��_�f��sa�S�ؔz�ؐ}()
     
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
            
     With �y�؋��r_��
      
      '[[[ �i�}�� ]]]
           Y0 = �i�}���J���ʒu * ����}_Scale
           Call P_���r_�i�}��(0, Y0, 0, "�f�ʂ��|���S�ؔz�ؐ}")
           Print #60, "[Msize:" + FD1(���r_�S��_Mark_Msize) + "]"
     
     '[[[ ���f�� }}}
            Print #60, "[�F:��]\[�:���]"
          ������ = �y�؋��r_��.���zL
           �オ�� = �y�؋��r_��.���zC
           Call P_���r_��_�f�ʐ}
      
      '[[[ �į�� ]]]
          
            Print #60, "[�F:��]\[�:���]"
          Print #60, "[dot:]"
          Call P_���r_Stoper_Y�f��(0, -������, �オ��)
          Print #60, "[con:]"
          
      
       '[[[ ���ׯ�߈ʒu  ]]]
             ' ����ׯ��          B02 = D22_X98_K98_B1618_DF + 440      '### ����ׯ��  Y�� �Ώۍl��  --> B02, B03, B04
               ���r_�S�؃� = 90:     D1$ = ���r_��("BS2")
               Strap_U = -�S��_SK�ʒu
               Strap_L1 = -.BYL + �S��_XX: Strap_L2 = Strap_L1 + �S��L_XL
               Strap_R1 = .BYR - �S��_XX: Strap_L2 = Strap_R1 - �S��L_XL
             ' �����ׯ��           B01 = D22_X98_K98_B1618_D2292 + F_r160 '### �����ׯ��  Y�� �Ώۍl��  --> B01
               ���r_�S�؃� = 270:     D1$ = ���r_��("BS1")
               Strap_D = -.H + �S��_SK�ʒu
      
               M�a2 = ���r_�S��_Mark_D * ����}_Scale / 2
      
      �S�ؔԍ� = 0
      
      '[[[ ٰ�ߓS�� ]]]
            Print #60, "[�F:��]\[�:�S��Mark]"
        For ii = 1 To 3:
              ���r_�S�؃� = 180
              Select Case ii
              Case 1:              D1$ = ���r_��("BR1"): If D1$ <> "" Then �S�ؔԍ� = �S�ؔԍ� + 1
              Case 2:              D1$ = ���r_��("BR2"): If D1$ <> "" Then �S�ؔԍ� = �S�ؔԍ� + 1
              Case 3:              D1$ = ���r_��("BR3"): If D1$ <> "" Then �S�ؔԍ� = �S�ؔԍ� + 1
              End Select
                  �S�،a$ = �S��_�a$
                  Roop�S�؊Ԋu = �S��L_YL: Roop�S��_K�ʒu = �S��_SK�ʒu
                  X1 = -.BYL + Roop�S��_K�ʒu: If ii = 1 Then X1 = Strap_L1 + M�a2:
                  X2 = -.BYL + Roop�S��_K�ʒu + Roop�S�؊Ԋu
                  X3 = .BYR - Roop�S��_K�ʒu: If ii = 1 Then X3 = Strap_R1 - M�a2
                  X4 = .BYR - Roop�S��_K�ʒu - Roop�S�؊Ԋu
                  Y_DL = Strap_U - M�a2 + �S��P_�ʒu(1)
                  For i2 = 1 To �S��P_����:  Y0 = -�S��P_�ʒu(i2) + Y_DL
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                            Print #60, "[P:" + FD2(X3, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                            Print #60, "[P:" + FD2(X4, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                       Next i2
              Next ii
        
        
      '[[[ ���S��(��������) ]]]
            Print #60, "[�F:��]\[�:�S��Mark]"
                '         B3=D25_@136+164+4x250+400+4x250+164_B95+3445.1_D98+1327.9+1534.4_r150
                        ' �[���̓S�؂̈ʒu  *2002.10.28
                            ���r_�S�؃� = 270:     D1$ = ���r_��("BS1")
                             DXL = Val(�S��_X$):  DYL = 0.6 * �S��_r
                             X1 = -.BYL + DXL + ���r_�S��_Mark_D * ����}_Scale / 2
                             X9 = .BYR - DXL - ���r_�S��_Mark_D * ����}_Scale / 2
                  
                  �S�ؔԍ� = �S�ؔԍ� + 1
                  ���r_�S�؃� = 270:      D1$ = ���r_��("BD1")
                  �S�،a$ = �S��_�a$: Y0 = Strap_D + M�a2
                  For ii = 1 To �S��P_����: X0 = -.BYL + �S��P_�ʒu(ii):
                        Select Case ii
                        Case 1:               Print #60, "[P:" + FD2(X1, Y0 + DYL) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                        Case �S��P_����:      Print #60, "[P:" + FD2(X9, Y0 + DYL) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                        Case Else:            Print #60, "[P:" + FD2(X0, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                        End Select
                       Next ii
      
      '[[[ ���S��   B4-1 ]]]
            Print #60, "[�F:��]\[�:�S��Mark]"
                '          B4=D25_K73_@126+12x150_B3150_D2829
                  �S�ؔԍ� = �S�ؔԍ� + 1: ������Ck$ = ""
                  ���r_�S�؃� = 180:     D1$ = ���r_��("B��1")
                  X1 = Strap_L1 - M�a2: X2 = Strap_R1 + M�a2
                  For ii = 1 To �S��P_����:   Y0 = -�S��P_�ʒu(ii)
                           If ������Ck$ = "" And Y0 <= ������_Y2 Then �S�ؔԍ� = �S�ؔԍ� + 1: ������Ck$ = "N"
                            
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ�) + "]"
                       Next ii
     
        
      '[[[ ��S�� B2-1 B2-2 B2-3 ]]]
            Print #60, "[�F:��]\[�:�S��Mark]"
              '           B2=D16_K126_@396.7+4x180.7_LF+8900+F        ' ###  *  ---> x
                  �S�ؔԍ� = �S�ؔԍ� + 1
                  �ԍ�2 = 0
                  ���r_�S�؃� = 0:      D1$ = ���r_��("BU1")
                  �S�،a$ = �S��_�a$: Y0 = Strap_U - M�a2
                  For ii = 1 To �S��P_����:
                            X1 = -.BYL + �S��P_�ʒu(ii): X2 = .BYR - �S��P_�ʒu(ii)
                            �ԍ�2 = 0: If FP_Stoper_Y�ʒu(X1) <> "" Then �ԍ�2 = 1
                            
                            Print #60, "[P:" + FD2(X1, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ� + �ԍ�2) + "]"
                            Print #60, "[P:" + FD2(X2, Y0) + "]\[����:" + F9(���r_�S��_Mark_D) + "," + F9(�S�ؔԍ� + �ԍ�2) + "]"
                       Next ii
                  
        
       '[[[ ����ׯ�� ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                '         B02 = D22_X98_K98_B1618_DF + 440      '### ����ׯ��  Y�� �Ώۍl��  --> B02, B03, B04
             ���r_�S�؃� = 90:     D1$ = ���r_��("BS2")
             X0 = -.BYL + �S��_XX: Y0 = -�S��_SK�ʒu - �S��L_YL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             X0 = .BYR - �S��_XX - �S��L_XL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
     
        
       '[[[ �����ׯ�� ]]]
            Print #60, "[�F:��]\[�:Hoop]"
                '          B01 = D22_X98_K98_B1618_D2292 + F_r160 '### �����ׯ��  Y�� �Ώۍl��  --> B01
             ���r_�S��L�v�Z_max$ = "Y" ' �S��L �ő咷��Set
             ���r_�S�؃� = 270:     D1$ = ���r_��("BS1")
             X0 = -.BYL + �S��_XX + �S��L_XL: Y0 = -.H + �S��_SK�ʒu + �S��L_YL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             
             ���r_�S�؃� = 270:     D1$ = ���r_��("BS1R")
             X0 = .BYR - �S��_XX: Y0 = -.H + �S��_SK�ʒu + �S��L_YL
             Call P_���r_�S�ؐ}("", "", "", X0, Y0)
             ���r_�S��L�v�Z_max$ = "" ' �S��L �ő咷�� Rset
     
     
     End With
     End Sub
Sub P_��_B1(Data1$)
     ' B1-1   B1-2
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 180
     D1$ = ���r_��(Data1$)
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
            ' Yp = 2.2 * ���r_���@��_�J��_�S�ؐ} * ����}_Scale
             'Xp = �S��L_Xmin
             Print #60, "[P:" + FD2(-�S��L_Xcen, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(20, -2.3 * ���r_�S�ؖ���_�a) + "]"
             Call P_�S��_������(3)
     
            ' Xp = �S��L_Xmax
              Print #60, "[P:" + FD2(�S��L_Xcen, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-30, -2.3 * ���r_�S�ؖ���_�a) + "]"
             Call P_�S��_������(4)
     End Sub



Sub P_��_B2_1()
    ' B2-1
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 0
     D1$ = ���r_��("B2-1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     
     Print #60, "[P:" + FD2(0, 0) + "]\[pm:" + FD2(-15, -1.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
     
Sub P_��_B2_2()
    ' B2-1
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 0
     D1$ = ���r_��("B2-2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B2_3()
    ' B2-1
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B2-3")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub



Sub P_��_B3_1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 270
     D1$ = ���r_��("BD1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P0:]\[pm:" + FD2(-20, 0) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B4_1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 180
     D1$ = ���r_��("B��1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P0:]\[pm:" + FD2(-10, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B4_2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 0
     D1$ = ���r_��("B��2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P0:]\[pm:" + FD2(-10, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B5_1()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B5-1")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B5_2()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B5-2")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B5_3()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B5-3")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -1.1 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub

Sub P_��_B01()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 270
     D1$ = ���r_��("B01")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -2.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B02()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B02")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-15, -1.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B03()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B03")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-10, -1.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub
Sub P_��_B04()
     If ���r���_�\��$ = "Y" Then Print #60, "[�_:]\*���_"
     ���r_�S�؃� = 90
     D1$ = ���r_��("B04")
     Call P_���r_�S�ؐ}("Y", "", "", -�S��L_Xcen, -�S��L_Ycen)
     Print #60, "[P:" + FD2(0, -Abs(�S��L_Ycen)) + "]\[pm:" + FD2(-10, -1.5 * ���r_�S�ؖ���_�a) + "]"
     Call P_�S��_������(3)
     End Sub



'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�y�؋��r     ��}�@Sub                �@  �@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������


'����������������������������������������������������������������������������������������������
'���� P_���r_��_���ʐ}       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_��_�f�ʐ}()
    With �y�؋��r_��
    D01$ = Uxf_P(-.BXL, 0)
    D02$ = "\[L:r" + F9(.r) + ":" + FD2(0, .BYR) + "|" + FD2(.BX, 0) + "|" + FD2(0, -.BY) + "|" + FD2(-.BX, 0) + "|" + FD2(0, .BYL) + "]"
    Print #60, D01$ + D02$
    End With
    End Sub


'����������������������������������������������������������������������������������������������
'���� P_���r_��_���ʐ}       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_��_���ʐ}()
    With �y�؋��r_��
    D01$ = Uxf_P(-.BXL, 0)
    D02$ = "\[L:r" + F9(.r) + ":" + FD2(0, .BYR) + "|" + FD2(.BX, 0) + "|" + FD2(0, -.BY) + "|" + FD2(-.BX, 0) + "|" + FD2(0, .BYL) + "]"
    Print #60, D01$ + D02$
    End With
    End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_��_�f�ʐ}       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_��_�f�ʐ}()
    With �y�؋��r_��
    D01$ = Uxf_P(0, .���zC)
    D02$ = "\[Lr:" + FD2(.BYR, -.���zC + .���zR) + "|" + FD3(0, -.H - .���zR, .r) + "|" + FD3(-.BY, 0, .r) + "|" + FD2(0, .H + .���zL) + "|" + FD2(.BYL, -.���zL + .���zC) + "]"
    End With
    Print #60, D01$ + D02$
    End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_���ʒu_��_�f�ʐ}     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_���ʒu_��_�f�ʐ}()
    With �y�؋��r_��
    
           BB = .BY
           HH = .H * 1.1
           Print #60, "[P:" + FD2(-BB / 2, 0) + "]\[L:" + FD2(BB, 0) + "]"
           Print #60, "[P:" + FD2(-BB / 2, -HH) + "]\[L:" + FD2(0, HH) + "]"
           Print #60, "[P:" + FD2(BB / 2, -HH) + "]\[L:" + FD2(0, HH) + "]"
           X1 = -0.55 * BB: Y1 = -HH: X2 = 0.55 * BB: Y2 = Y1: W1 = 12: H1 = -5
           Print #60, Uxf_�ؒfM1(X1, Y1, X2, Y2, W1, H1)
    End With
    End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_��_���f�ʐ}     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_��_���f�ʐ}(X0, Y0, ������, ��H)
          
          
     '     BB_X$ = ���r_��("BX")
          ���z_L = ������: '.���zL
          
          With �y�؋��r_��
                
                D01$ = Uxf_P(X0 - .BXL, Y0 + ���z_L) + "\" + Uxf_��(.BX, 0)
                Print #60, "    " + D01$
          ��H2 = ��H: If ��H2 = 0 Then ��H2 = 0.5 * .H
          
          C_HH = .H + ��H2
         ' C_HH = .H * 1.5
                B_H0 = C_HH - .H
                
                Print #60, Uxf_P(X0 - �y�؋��r_��.BXL, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0, .r2) + "|" + FD3(-.BXL2, .H1, .r) + "|" + FD2(0, .H2 + ���z_L) + "]"
     
                Print #60, Uxf_P(X0 + �y�؋��r_��.BXR, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0, .r2) + "|" + FD3(.BXR2, .H1, .r) + "|" + FD2(0, .H2 + ���z_L) + "]"
          
               If .r > 0 Then
                    Print #60, UXF_����("DOT")
                    If .BXL2 = 0 Then TAN1 = 0 Else TAN1 = .H1 / .BXL2:
                    COS1 = .BXL2 / Sqr(.H1 ^ 2 + .BXL2 ^ 2): L3 = .r * TAN1: L2 = .r / COS1: RrD = L2 - L3
                    Print #60, Uxf_P(X0 - �y�؋��r_��.BXL + .r, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0 + RrD, .r2) + "|" + FD3(-.BXL2, .H1, .r) + "|" + FD2(0, .H2 + ���z_L - RrD) + "]"
     
                    If .BXR2 = 0 Then TAN1 = 0 Else TAN1 = .H1 / .BXR2:
                    COS1 = .BXR2 / Sqr(.H1 ^ 2 + .BXR2 ^ 2):   L3 = .r * TAN1: L2 = .r / COS1:   RrD = L2 - L3
                    Print #60, Uxf_P(X0 + �y�؋��r_��.BXR - .r, Y0 - C_HH) + "\[Lr:" + FD3(0, B_H0 + RrD, .r2) + "|" + FD3(.BXR2, .H1, .r) + "|" + FD2(0, .H2 + ���z_L - RrD) + "]"
                    End If
     
            If ��H2 < .H Then
     
               Print #60, UXF_����("CON")
               X1 = X0 - �y�؋��r_��.BXL: Y1 = Y0 - C_HH: X2 = X0 + �y�؋��r_��.BXR: Y2 = Y1: W1 = 12: H1 = -5
               Print #60, Uxf_�ؒfM1(X1, Y1, X2, Y2, W1, H1)
               End If
            
            End With
    End Sub


'����������������������������������������������������������������������������������������������
'���� P_���r_�n��Mark1       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_�n��Mark1(XL, YL)
    '�n��Mark ��`��
  '  Print #60, "    [��:" + FD2(XL, YL) + "]\[pm:-10,0]\[me:200]"
    Print #60, "    [��:" + FD2(XL, YL) + "]\[me:200]\[Lm:10,0]"
    Print #60, "    [re:200]\[Lm:0,3]\[pm:2,1]\[�د�:2,2,90,0.1]"
    Print #60, "    [re:200]\[pm:3,0]\[Arc1m:2,270,360]\[re:200]\[pm:7.2,0]\[Arc1m:2,180,270]"

    End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_�S�ؐ}          �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_�S�ؐ}(���@�o��$, Ftype$, F����$, �S��X0, �S��Y0)
           '���@�o��$   Y N   �Y
           ' Ftype$�@̯�Type      U   V
           ' F����$  ̯�����      +  R
           ' �S��X0, �S��Y0  Start �ʒu
          
          
          
          Select Case F����$
          Case "R": Fook���� = -1
          Case Else: Fook���� = 1
          End Select
          
          ' (1)  or   (2),(3) ���K�v
          '(1) CALL  ���r_�S��_ck(����$, �S��Data$)
          
          '(2) CALL  ���r_�S��_�a_��_ck(DATA1$)
          '(3) CALL  ���r_�S��_L_ck(DATA1$)
            
          �S�؃� = ���r_�S�؃�
          
          ��_�J�� = ���r_���@��_�J��_�S�ؐ} * ����}_Scale
           
           Joint_�S�؊J�� = ���r_J�S�؊J�� * ����}_Scale: If ���@�o��$ = "�Y" Then Joint_�S�؊J�� = 0
           Select Case ���@�o��$
           Case "�Y":                     �YJoint_�S�؊J�� = -���r_J�S�؊J�� * ����}_Scale: Joint_�S�؊J�� = 0
           Case "�Y-":  ���@�o��$ = "�Y": �YJoint_�S�؊J�� = ���r_J�S�؊J�� * ����}_Scale: Joint_�S�؊J�� = 0
           End Select
           
          
          S���o�� = ���r_���@��_�J��_�S�ؐ} - 1: E���o�� = ���r_���@��_�J��_�S�ؐ} - 1
            
          �Otype$ = ""
            
            �S�،a$ = ���r�S�،a$(1)
            �S��n = �S�ؐ�_��n
           
           
           Point_X = �S��X0: Point_Y = �S��Y0
          ' Print #60, "       '  �S�ؐ} Start"
           Print #60, "    " + Uxf_P(Point_X, Point_Y)
           
           For ii = 1 To �S��L_Data��: LL = �S��L_L(ii): RR = �S��L_r(ii): Data1$ = �S��L_Data$(ii)
                Select Case �S��L_Type$(ii)
                Case "�p":     �S�؃� = �S�؃� - �S��L_�Ȋp�x(ii)
                
                Case "L":      If �Otype$ = "L" Then �S�؃� = �S�؃� - 90
                               If LL > 0 Then
                               XLL = LL * Dcos(�S�؃�): YLL = LL * Dsin(�S�؃�)
                               X1 = Point_X: Y1 = Point_Y: X2 = X1 + XLL: Y2 = Y1 + YLL
                               Select Case �p�x���K��(�S�؃�)
                                    Case Is <= 90: ������ = -1
                                    Case Is <= 270: ������ = 1
                                    Case Else: ������ = -1
                                    End Select
                               Call P_���r_Calu_�_AB_�Ɖ�]���W(90, ��_�J��, X1, Y1, X2, Y2, Xp1, Yp1)
                               X1 = Xp1: Y1 = Yp1: X2 = X1 + XLL:  Y2 = Y1 + YLL
                               '* 2002.11.4
                               If �S��L_���H����$ = "Y" And ii = �S��L_Data�� Then
                                     XLL = XLL + Joint_�S�؊J��
                                     End If
                                                             
                               D01$ = "   [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL, YLL) + "]"
                               Moj$ = �S��L_Data$(ii)
                               'Moj$ = F9(LL)
                               If ���@�o��$ = "Y" Then D01$ = D01 + "\[P:" + FD2(X1, Y1) + "]\[��:" + F9(������ * S���o��) + ":" + FD3(XLL, YLL, ������ * E���o��) + "," + Moj$ + "]"
                               Print #60, "     " + D01$
                               
                               Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
                              End If
                Case "F":
                               Hook_D1 = FP_���r_�S��_Data("D1", �S�،a$)
                               Hook_b1 = FP_���r_�S��_Data("b", �S�،a$)
                               Hook_�p�x = 180 * Fook����
                               Select Case �Otype$
                               Case "L": Hook_�p�x = -180 * Fook����
                                          Hook_DX = 0.1 * Dcos(�S�؃�): Hook_DY = 0.1 * Dsin(�S�؃�)
                               Case Else
                                          Hook_DX = -0.1 * Dcos(�S�؃�): Hook_DY = -0.1 * Dsin(�S�؃�)
                               End Select
                               
                               Select Case Ftype$
                               Case "V":  Hook_�p�x = Hook_�p�x / 6
                                          Print #60, "   [P:" + FD2(Point_X, Point_Y) + "]\[̯�V:" + FD5(Hook_DX, Hook_DY, Hook_�p�x, Hook_D1, Hook_b1) + "]"
                               Case Else: Print #60, "   [P:" + FD2(Point_X, Point_Y) + "]\[̯�:" + FD5(Hook_DX, Hook_DY, Hook_�p�x, Hook_D1, Hook_b1) + "]"
                               End Select

                Case "W":      '�޽����
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\" + UXF_�_()
                               '*2002.11.5
                               If ���@�o��$ = "Y" Then
                               Print #60, "[�ݒ�out:]"
                                   Print #60, "[�F:��]\[�:���@��]\[Msize:" + F9(�}_���@_Msize) + "]"

                               LL1 = 8 * ����}_Scale: LL2 = 22 * ����}_Scale
                               XLL1 = LL1 * Dcos(�S�؃� - 60): YLL1 = LL1 * Dsin(�S�؃� - 60)
                               XLL2 = LL2 * Dcos(�S�؃�): YLL2 = LL2 * Dsin(�S�؃�)
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL1, YLL1) + "|" + FD2(XLL2, YLL2) + "]"
                               Print #60, "   [P:" + FD2(Point_X + XLL1, Point_Y + YLL1) + "]\[��:" + FD3(0, 0, �S�؃�) + ",L,�K�X����]"
                               Print #60, "[�ݒ�in:]"
                               End If
                
                Case "K":      '�@�B�p����
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\" + UXF_�_()
                
                               If ���@�o��$ = "Y" Then
                               Print #60, "[�ݒ�out:]"
                                   Print #60, "[�F:��]\[�:���@��]\[Msize:" + F9(�}_���@_Msize) + "]"

                               LL1 = 8 * ����}_Scale: LL2 = 22 * ����}_Scale
                               XLL1 = LL1 * Dcos(�S�؃� - 60): YLL1 = LL1 * Dsin(�S�؃� - 60)
                               XLL2 = LL2 * Dcos(�S�؃�): YLL2 = LL2 * Dsin(�S�؃�)
                               Print #60, "    [P:" + FD2(Point_X, Point_Y) + "]\[L:" + FD2(XLL1, YLL1) + "|" + FD2(XLL2, YLL2) + "]"
                               Print #60, "   [P:" + FD2(Point_X + XLL1, Point_Y + YLL1) + "]\[��:" + FD3(0, 0, �S�؃�) + ",L,�@�B���p��]"
                               Print #60, "[�ݒ�in:]"
                               End If
                
                Case "J":      If LL <= 0 Then LL = 2 * FP_���r_�S��_Data("L1", �S�،a$): Stop
                               'Joint_L = LL
                               XLL = -LL * Dcos(�S�؃�) + Joint_�S�؊J�� * Dsin(�S�؃�): YLL = -LL * Dsin(�S�؃�) + Joint_�S�؊J�� * Dcos(�S�؃�)
                               XLL2 = -LL * Dcos(�S�؃�): YLL2 = -LL * Dsin(�S�؃�)
                               X1 = Point_X: Y1 = Point_Y:  X2 = X1 + XLL2: Y2 = Y1 + YLL2
                               Select Case �p�x���K��(�S�؃�)
                                    Case Is <= 90: ������ = 1
                                    Case Is <= 270: ������ = -1
                                    Case Else: ������ = 1
                                    End Select
                               
                               Select Case ���@�o��$
                               Case "Y":    Call P_���r_Calu_�_AB_�Ɖ�]���W(90, ��_�J��, X1, Y1, X2, Y2, Xp1, Yp1)
                                            X1 = Xp1: Y1 = Yp1: X2 = X1 + XLL2:  Y2 = Y1 + YLL2
                                            D01$ = "[P:" + FD2(X1, Y1) + "]\[��:" + F9(������ * S���o��) + ":" + FD3(XLL2, YLL2, ������ * E���o��) + "]"
                                            Print #60, "     " + D01$
                               Case "�Y":    Call P_���r_Calu_�_AB_�Ɖ�]���W(90, �YJoint_�S�؊J��, X1, Y1, X2, Y2, Xp1, Yp1)
                                            X1 = Xp1: Y1 = Yp1: X2 = X1 + XLL2:  Y2 = Y1 + YLL2
                                            D01$ = "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(XLL2, YLL2) + "]"
                                            Print #60, "     " + D01$
                               Case Else
                               End Select
                               Point_X = Point_X + XLL: Point_Y = Point_Y + YLL
                
                Case "R":      �S��_r�p�x = �S��L_r�p�x(ii)
                               ���S_�S�؃� = �S�؃� - 90
                               �S�؃� = �S�؃� - �S��_r�p�x
                               ��]�� = -�S��_r�p�x
                               XLL = 0: YLL = 0
                               X1 = Point_X:  Y1 = Point_Y: X2 = Point_X: Y2 = Point_Y
                               
                               ���S_DX = RR * Dcos(���S_�S�؃�): ���S_DY = RR * Dsin(���S_�S�؃�)
                               '***
                               If �S��_r�p�x < 0 Then ���S_DX = -���S_DX: ���S_DY = -���S_DY: '***
                               X0 = X1 + ���S_DX: Y0 = Y1 + ���S_DY
                               Call P_���r_Calu_�Ɖ�](��]��, X0, Y0, X1, Y1, X2, Y2)
                               r1 = �S�؃� + 90: r2 = r1 + �S��_r�p�x
                               
                               If �S��_r�p�x < 0 Then r9 = r1: r1 = r2 + 180: r2 = r9 + 180:
                               
                               D01$ = "   [P:" + FD2(Point_X + ���S_DX, Point_Y + ���S_DY) + "]\" + Uxf_Arc_1(RR, r1, r2)
                               R���@$ = F���r(2 * 3.14159265358979 * RR * Abs(��]��) / 360)
                               If ���@�o��$ = "Y" Then
                                     D01$ = D01$ + "\" + UXF_���@_Arc(��_�J�� + RR, r1, r2, S���o��, S���o��, "<>", R���@$)
                               
                                     X3 = (X1 + X2) / 2: Y3 = (Y1 + Y2) / 2: �p�x�� = Calu�p�x(X0, Y0, X3, Y3)
                                     
                                     Print #60, "[�ݒ�out:]"
                                     Print #60, "[�F:��]\[�:���@��]\[Msize:" + F9(�}_���@_Msize) + "]"
                                     Print #60, "[Li:" + FD4(X0, Y0, X1, Y1) + "]\[Li:" + FD4(X0, Y0, X2, Y2) + "]"
                                     Select Case �p�x��
                                     Case Is <= 90: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                     Case Is < 270: Print #60, "[P:" + FD2(X0, Y0) + "]\[lm:16,0]\[pm:2,0]\R=" + F9(RR)
                                     Case Else: Print #60, "[P:" + FD2(X0, Y0) + "]\[Lm:-16,0]\[pm:2,0]\R=" + F9(RR)
                                     End Select
                                     Print #60, "[�ݒ�in:]"
                                     End If
                                D01$ = D01$ + "\" + Uxf_P(X2, Y2)
                               
                               Print #60, "     " + D01$
                               Point_X = X2: Point_Y = Y2
                
                
                Case Else:  ��er = "*Err  P_���r_�S�ؐ} " + �S��L_Type$(ii): er (""): If ����CK > 99 Then Stop
                End Select
                �Otype$ = �S��L_Type$(ii)
                Next ii
                
     
     �S��L_���H����$ = ""
     End Sub


'����������������������������������������������������������������������������������������������
'���� P_���r_Stoper_����     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_Stoper_����(DType$)
       ' DType$="X"      X ��`��
       ' DType$="C"      ����ײ� ��`��

            Print #60, "[�F:��]\[�:Stoper]"

           D0$ = ���r_��("�į�߈ʒu")
           For ii = 1 To Stoper�ʒu_Data��
                X0 = Stoper�ʒu_X(ii): Y0 = Stoper�ʒu_Y(ii): BX = Stoper�ʒu_BX(ii): BY = Stoper�ʒu_BY(ii)
                
                Select Case BX
                Case 0:       D1$ = "[P:" + FD2(X0, Y0) + "]\[Cir:" + FD1(BY / 2) + "]"
                Case Else:    D1$ = "[P:" + FD2(X0 - BX / 2, Y0 - BY / 2) + "]\[L:" + FD2(0, BY) + "|" + FD2$(BX, O) + "|" + FD2(0, -BY) + "|" + FD2(-BX, 0) + "]"
                End Select
                
                Print #60, D1$
                If InStr(DType$, "X") > 0 Then
                     Print #60, "[P:" + FD2(X0 - BX / 2, Y0 - BY / 2) + "]\[L:" + FD2(BX, BY) + "]"
                     Print #60, "[P:" + FD2(X0 - BX / 2, Y0 + BY / 2) + "]\[L:" + FD2(BX, -BY) + "]"
                     End If
                Next ii
    If InStr(DType$, "C") > 0 Then
           X0 = -�y�؋��r_��.BXL
           For ii = 1 To Stoper�ʒu_X��: X0 = X0 + Stoper�ʒu_�I�_Xpit(ii)
                X1 = 0: Y1 = -�y�؋��r_��.BYL: Y2 = �y�؋��r_��.BYR
                Call P_���r_Center_Line(X0, Y1, X0, Y2, 0, 0)
                Next ii
    
           Y0 = -�y�؋��r_��.BYL
           For ii = 1 To Stoper�ʒu_Y��: Y0 = Y0 + Stoper�ʒu_Ypit(ii)
                X1 = -�y�؋��r_��.BXL: X2 = �y�؋��r_��.BXR
                Call P_���r_Center_Line(X1, Y0, X2, Y0, 0, 0)
                Next ii
    
           End If
    
    End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_Stoper_X�f��   (���f��)     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_Stoper_X�f��(Y00, DY)
     ' Y00  ����̍�}����
     ' DY   Stoper�̍����������߂�  (+)�k��
            Print #60, "[�F:��]\[�:Stoper]"
           
           D0$ = ���r_��("�į�߈ʒu")
           For ii = 1 To Stoper�I�_���ʒu��i
                X0 = Stoper�ʒu_X(ii): Y0 = Stoper�ʒu_Y(ii): BX = Stoper�ʒu_BX(ii): BY = Stoper�ʒu_BY(ii): HH = Stoper�ʒu_H(ii) - DY
                D1$ = "[P:" + FD2(X0 - BX / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BX, O) + "|" + FD2(0, HH) + "]"
                Print #60, D1$
                Next ii
         Print #60, "[con:]"

    End Sub
'����������������������������������������������������������������������������������������������
'���� P_���r_Stoper_Y�f��   (�Z�f��)     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_Stoper_Y�f��(Y00, DY�[, �オ��)
     ' Y00  ����̍�}����
     ' DY�[ ���̒[��������
           
            Print #60, "[�F:��]\[�:Stoper]"
           
           D0$ = ���r_��("�į�߈ʒu")
           For ii = 1 To Stoper�ʒu_Data��
                X0 = Stoper�ʒu_X(ii): Y0 = Stoper�ʒu_Y(ii): BX = Stoper�ʒu_BX(ii): BY = Stoper�ʒu_BY(ii): HH = Stoper�ʒu_H(ii)
                D1$ = "[P:" + FD2(Y0 - BY / 2, Y00) + "]\[L:" + FD2(0, -HH) + "|" + FD2$(BY, O) + "|" + FD2(0, HH) + "]"
                Print #60, D1$
                Next ii
         Print #60, "[con:]"
    
    End Sub

Function FP_Stoper�I�_��_X���@(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BXL, ���@�ʒu1) + "]\[��:"
      For ii = 1 To Stoper�I�_���ʒu��i:  D1$ = D1$ + FD3(Stoper�ʒu_�I�_Xpit(ii), 0, -��1) + "|":  Next ii
      D1$ = D1$ + FD3(Stoper�ʒu_�I�_Xpit(Stoper�I�_���ʒu��i + 1), 0, 0) + "]"
      FP_Stoper�I�_��_X���@ = D1$
      End Function
Function FP_Stoper�N�_��_X���@(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BXL, ���@�ʒu1) + "]\[��:"
      For ii = 1 To Stoper�N�_���ʒu��i:  D1$ = D1$ + FD3(Stoper�ʒu_�N�_Xpit(ii), 0, -��1) + "|":  Next ii
      D1$ = D1$ + FD3(Stoper�ʒu_�N�_Xpit(Stoper�N�_���ʒu��i + 1), 0, 0) + "]"
      FP_Stoper�N�_��_X���@ = D1$
      End Function


Function FP_Stoper_Y���@(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(���@�ʒu1, -�y�؋��r_��.BYL) + "]\[��:"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(1), -��1) + "|"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(2) / 2, -��1) + "|"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(2) / 2, -��1) + "|"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(Stoper�ʒu_Y�� + 1), 0) + "]"
      FP_Stoper_Y���@ = D1$
      End Function
Function FP_Stoper_Y���@2(���@�ʒu1, ��1)
           D0$ = ���r_��("�į�߈ʒu")
           BX = Stoper�ʒu_BX(1): BY = Stoper�ʒu_BY(1)
      D1$ = "[P:" + FD2(���@�ʒu1, -�y�؋��r_��.BYL) + "]\[��:"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(1) - BY / 2, -��1) + "|"
      D1$ = D1$ + FD3(0, BY, -��1) + "|"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(2) - BY, -��1) + "|"
      D1$ = D1$ + FD3(0, BY, -��1) + "|"
      D1$ = D1$ + FD3(0, Stoper�ʒu_Ypit(Stoper�ʒu_Y�� + 1) - BY / 2, 0) + "]"
      FP_Stoper_Y���@2 = D1$
      End Function

Function FP_Stoper_�f��Y���@(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BYL, ���@�ʒu1) + "]\[��:"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(1), 0, -��1) + "|"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(2) / 2, 0, -��1) + "|"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(2) / 2, 0, -��1) + "|"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(Stoper�ʒu_Y�� + 1), 0, 0) + "]"
      FP_Stoper_�f��Y���@ = D1$
      End Function
Function FP_Stoper_�f��Y���@2(���@�ʒu1, ��1)
           D0$ = ���r_��("�į�߈ʒu")
           BX = Stoper�ʒu_BX(1): BY = Stoper�ʒu_BY(1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BYL, ���@�ʒu1) + "]\[��:"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(1) - BY / 2, 0, -��1) + "|"
      D1$ = D1$ + FD3(BY, 0, -��1) + "|"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(2) - BY, 0, -��1) + "|"
      D1$ = D1$ + FD3(BY, 0, -��1) + "|"
      D1$ = D1$ + FD3(Stoper�ʒu_Ypit(Stoper�ʒu_Y�� + 1) - BY / 2, 0, 0) + "]"
      FP_Stoper_�f��Y���@2 = D1$
      End Function

'����������������������������������������������������������������������������������������������
'���� P_���r_�B��_����       �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_�B��_����()
      �B��$ = ���r_��("�B���ʒu")
      For ii = 1 To �B���ʒu_Data��
             Xp = �B���ʒu_X(ii): Yp = �B���ʒu_Y(ii)
             �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no): BD$ = ���r_�B��("BD"): �B��_BX = ���_D(1): �B��_BY = ���_D(2)
             Print #60, "     [P:" + FD2(Xp, Yp) + "]\[B:" + FD2(�B��_BX, �B��_BY) + "]"
             Next ii
      End Sub



Function FP_�B���I�_��_X���@1(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BXL, ���@�ʒu1) + "]\[��:"
      For ii = 1 To �B���I�_���ʒu��i:  D1$ = D1$ + FD3(�B���ʒu_�I�_Xpit(ii), 0, -��1) + "|":  Next ii
      D1$ = D1$ + FD3(�B���ʒu_�I�_Xpit(�B���I�_���ʒu��i + 1), 0, 0) + "]"
      FP_�B���I�_��_X���@1 = D1$
      End Function

Function FP_�B���N�_��_X���@1(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BXL, ���@�ʒu1) + "]\[��:"
      For ii = 1 To �B���N�_���ʒu��i:  D1$ = D1$ + FD3(�B���ʒu_�N�_Xpit(ii), 0, -��1) + "|":  Next ii
      D1$ = D1$ + FD3(�B���ʒu_�N�_Xpit(�B���N�_���ʒu��i + 1), 0, 0) + "]"
      FP_�B���N�_��_X���@1 = D1$
      End Function


Function FP_�B���I�_��_X���@2(���@�ʒu1, ��1)
      '  �B���̓S�؂̊��t���@
      D1$ = "[P:" + FD2(-�y�؋��r_��.BXL, ���@�ʒu1) + "]\[��:"
      Lpit0 = 0
      For ii = 1 To �B���I�_���ʒu��i
            �B��no = �B���ʒu_No(ii): Call ���r_�B��_Get(�B��no): �B��D$ = ���r_�B��("S2"):
            Lpit1 = �S��P_��L
            LLL = �B���ʒu_�I�_Xpit(ii) - Lpit0 / 2 - Lpit1 / 2
            D2$ = FD3(LLL, 0, -��1) + "|"
            If ii = 1 And LLL < ���@�\���L Then D2$ = FD3(LLL, 0, -��1) + ",,L=6|"
            Moj$ = P_���r_��Pit���@(�S��_pit$)
            D3$ = FD3(Lpit1, 0, -��1) + "," + Moj$ + "|"
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      LLL = �B���ʒu_�I�_Xpit(�B���I�_���ʒu��i + 1) - Lpit0 / 2
      D2$ = FD3(LLL, 0, 0) + "]"
      If LLL < ���@�\���L Then D2$ = FD3(LLL, 0, 0) + ",,R=6]"
      
      D1$ = D1$ + D2$
      FP_�B���I�_��_X���@2 = D1$
      End Function

Function FP_�B���N�_��_X���@2(���@�ʒu1, ��1)
      '  �B���̓S�؂̊��t���@
      D1$ = "[P:" + FD2(-�y�؋��r_��.BXL, ���@�ʒu1) + "]\[��:"
      Lpit0 = 0
      For ii = 1 To �B���N�_���ʒu��i: ii2 = ii + �B���I�_���ʒu��i
            �B��no = �B���ʒu_No(ii2): Call ���r_�B��_Get(�B��no): �B��D$ = ���r_�B��("S2"):
            Lpit1 = �S��P_��L
            LLL = �B���ʒu_�N�_Xpit(ii) - Lpit0 / 2 - Lpit1 / 2
            D2$ = FD3(LLL, 0, -��1) + "|"
            If ii = 1 And LLL < ���@�\���L Then D2$ = FD3(LLL, 0, -��1) + ",,L=6|"
            
            
            Moj$ = P_���r_��Pit���@(�S��_pit$)
            D3$ = FD3(Lpit1, 0, -��1) + "," + Moj$ + "|"
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      
      LLL = �B���ʒu_�N�_Xpit(�B���N�_���ʒu��i + 1) - Lpit0 / 2
      D2$ = FD3(LLL, 0, 0) + "]"
      If LLL < ���@�\���L Then D2$ = FD3(LLL, 0, 0) + ",,R=6]"
      
      D1$ = D1$ + D2$
      FP_�B���N�_��_X���@2 = D1$
      End Function


Function FP_�B��_Y���@(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(���@�ʒu1, -�y�؋��r_��.BYL) + "]\[��:"
      D1$ = D1$ + FD3(0, �B���ʒu_Ypit(1), -��1) + "|"
      'D1$ = D1$ + FD3(0, �B���ʒu_Ypit(2) / 2, -��1) + "|"
      'D1$ = D1$ + FD3(0, �B���ʒu_Ypit(2) / 2, -��1) + "|"
      D1$ = D1$ + FD3(0, �B���ʒu_Ypit(2), -��1) + "|"
      D1$ = D1$ + FD3(0, �B���ʒu_Ypit(�B���ʒu_Y�� + 1), 0) + "]"
      FP_�B��_Y���@ = D1$
      End Function

Function FP_�B��_�f��Y���@(���@�ʒu1, ��1)
      D1$ = "[P:" + FD2(-�y�؋��r_��.BYL, ���@�ʒu1) + "]\[��:"
      D1$ = D1$ + FD3(�B���ʒu_Ypit(1), 0, -��1) + "|"
      'D1$ = D1$ + FD3(�B���ʒu_Ypit(2) / 2, 0, -��1) + "|"
      'D1$ = D1$ + FD3(�B���ʒu_Ypit(2) / 2, 0, -��1) + "|"
      D1$ = D1$ + FD3(�B���ʒu_Ypit(2), 0, -��1) + "|"
      D1$ = D1$ + FD3(�B���ʒu_Ypit(�B���ʒu_Y�� + 1), 0, 0) + "]"
      FP_�B��_�f��Y���@ = D1$
      End Function

Function FP_�B��_Y���@2(���@�ʒu1, ��1)
      '  �B���̓S�؂̊��t���@
      D1$ = "[P:" + FD2(���@�ʒu1, -�y�؋��r_��.BYL) + "]\[��:"
      Lpit0 = 0: ��LL = 0
      For ii = 1 To �B���ʒu_Y��:
            Select Case ii
            Case 1:   �B��no = �B���ʒu_No(�B���I�_���ʒu��i + 1)
            Case Else: �B��no = �B���ʒu_No(1)
            End Select
            
            Call ���r_�B��_Get(�B��no): �B��D$ = ���r_�B��("S1"):
            Y_���� = Val(�S��_Y$): If ii > 1 Then Y_���� = -Y_����
            Lpit1 = �S��P_��L
            LLL = �B���ʒu_Ypit(ii) - Lpit0 / 2 - Lpit1 / 2 - Y_����
            ��LL = ��LL + LLL
            D2$ = FD3(0, LLL, -��1) + "|"
             If ii = 1 And LLL < ���@�\���L Then D2$ = FD3(0, LLL, -��1) + ",,L=6|"
            
    '*OK        If ii = 2 Then D2$ = D2$ + FD3(0, LLL, -��1) + "|": ��LL = ��LL + LLL
            Moj$ = P_���r_��Pit���@(�S��_pit$)
            D3$ = FD3(0, Lpit1, -��1) + "," + Moj$ + "|"
            ��LL = ��LL + Lpit1
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      LLL = �y�؋��r_��.BY - ��LL
      D2$ = FD3(0, LLL, 0) + "]"
      If LLL < ���@�\���L Then D2$ = FD3(0, LLL, 0) + ",,R=6]"
      D1$ = D1$ + D2$
      FP_�B��_Y���@2 = D1$
      End Function
Function FP_�B��_�f��Y���@2(���@�ʒu1, ��1)
      ' �f��   �B���̓S�؂̊��t���@
      D1$ = "[P:" + FD2(-�y�؋��r_��.BYL, ���@�ʒu1) + "]\[��:"
      Lpit0 = 0: ��LL = 0
      For ii = 1 To �B���ʒu_Y��:
            Select Case ii
            Case 1:   �B��no = �B���ʒu_No(�B���I�_���ʒu��i + 1)
            Case Else: �B��no = �B���ʒu_No(1)
            End Select
            
            Call ���r_�B��_Get(�B��no): �B��D$ = ���r_�B��("S1"):
            Y_���� = Val(�S��_Y$): If ii > 1 Then Y_���� = -Y_����
            Lpit1 = �S��P_��L
            LLL = �B���ʒu_Ypit(ii) - Lpit0 / 2 - Lpit1 / 2 - Y_����
            ��LL = ��LL + LLL
            D2$ = FD3(LLL, 0, -��1) + "|"
            If ii = 1 And LLL < ���@�\���L Then D2$ = FD3(LLL, 0, -��1) + ",,L=6|"
      '*      If ii = 2 Then D2$ = D2$ + FD3(LLL, 0, -��1) + "|": ��LL = ��LL + LLL
            Moj$ = P_���r_��Pit���@(�S��_pit$)
            D3$ = FD3(Lpit1, 0, -��1) + "," + Moj$ + "|"
            ��LL = ��LL + Lpit1
            D1$ = D1$ + D2$ + D3$
            Lpit0 = Lpit1
            Next ii
      LLL = �y�؋��r_��.BY - ��LL
      D2$ = FD3(LLL, 0, 0) + "]"
      If LLL < ���@�\���L Then D2$ = FD3(LLL, 0, 0) + ",,R=6]"
      
      D1$ = D1$ + D2$
      FP_�B��_�f��Y���@2 = D1$
      End Function

'����������������������������������������������������������������������������������������������
'���� P_���r_��Pit���@(Moj$)(�Z�f��)     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Function P_���r_��Pit���@(Moj$)
     ' 3x150  --->  3x150=450
     D1$ = UCase(Moj$)
     ni = InStr(D1$, "X")
     If ni > 1 Then
            D2$ = Mid(D1$, 1, ni - 1): D3$ = Mid(D1$, ni + 1)
            D1$ = Moj$ + "=" + F9(Val(D2$) * Val(D3$))
            End If
     P_���r_��Pit���@ = LCase(D1$)
     End Function



Sub P_���r_Calu_�Ɖ�](��, X0, Y0, X1, Y1, Xp, Yp)
    ' X0,Y0 �𒆐S�ɉ�]�������W�����߂� (X1,Y1) ����@��]�����@���W(Xp,Yp)
    r = Sqr((X1 - X0) * (X1 - X0) + (Y1 - Y0) * (Y1 - Y0))
    If r <= 0 Then ��er = "System P_���r_Calu_�Ɖ�] r=0": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
    SN1 = (Y1 - Y0) / r: CS1 = (X1 - X0) / r
    SN = Dsin(��): CS = Dcos(��)
    Xp = X0 + r * (CS1 * CS - SN1 * SN)
    Yp = Y0 + r * (SN1 * CS + CS1 * SN)
    End Sub
Sub P_���r_Calu_�_AB_�Ɖ�]���W(��, l, XA, YA, XB, YB, Xp, Yp)
    ' XA,YA �𒆐S�ɉ�]�������W�����߂� Vecter(XA,YA)_(XB,YB) ����@��]���ċ����� L�̍��W�@(Xp,Yp)
    r = Sqr((XB - XA) * (XB - XA) + (YB - YA) * (YB - YA))
    If r <= 0 Then ��er = "System P_���r_Calu_�_AB_�Ɖ�]���W r=0": er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
    SN1 = (YB - YA) / r: CS1 = (XB - XA) / r
    SN = Dsin(��): CS = Dcos(��)
    Xp = XA + l * (CS1 * CS - SN1 * SN)
    Yp = YA + l * (SN1 * CS + CS1 * SN)
    End Sub

'����������������������������������������������������������������������������������������������
'���� P_���r_�i�}��          �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_�i�}��(X0, Y0, �p�x, Moj$)
    '
    Print #60, "[�ݒ�out:]\[�F:��]\[�:Title]"
    Print #60, "[Msize:" + F9(�}��_Msize) + "]\[P:" + FD2(X0, Y0) + "]"
    Print #60, "[��_:" + F9(�p�x) + ",1.2," + Moj$ + "]\[�ݒ�in:]"
    End Sub
'����������������������������������������������������������������������������������������������
'���� P_�S��_������          �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������

Sub P_�S��_������(����n)
    ' �S��_��_����$     exp   Moj1$="B": Moj2$="0": Moj3$="1": Moj4$="16-D32 x 10840"
    ' Point�_ ���̉���
     ReDim ��M_Ds$(30), ��M_Di(30)
    Call Ddata("_", �S��_��_����$, ��M_Ds(), ��M_Di(), ni)
    Moj1$ = ��M_Ds(1)
    Moj2$ = ��M_Ds(2)
    Moj3$ = ��M_Ds(3)
    'Moj4$ = ��M_Ds(4)
    Select Case ����n
    Case 0:   Moj4$ = ""
    Case 1:   Moj4$ = �S��_��_����1$
    Case 2:   Moj4$ = �S��_��_����2$
    Case 3:   Moj4$ = �S��_��_����3$
    Case 4:   Moj4$ = �S��_��_����4$
    End Select
    
    
    Print #60, "[�ݒ�out:]\[me:150]"
    Print #60, "[�F:��]\[�:Mark]"
    DD = ���r_�S�ؖ���_�a
    D1$ = "[me:900]\[pm:" + FD2(0, DD / 2) + "]\[��:" + F9(DD) + "]"
    D2$ = "[pm:" + FD2(-0.35 * DD, 0) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize1) + "]\[��:0,0,0,LC," + Moj1$ + "]"
    D3$ = "[re:900]\[pm:" + FD2(0.05 * DD, 0.55 * DD) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize2) + "]\[��:0,0,0,LD," + Moj2$ + "]"
    D4$ = "[re:900]\[pm:" + FD2(0.05 * DD, 0.15 * DD) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize2) + "]\[��:0,0,0,LD," + Moj3$ + "]"
    
    XX5 = 0.65 * DD: If Len(Moj3$) > 1 Then XX5 = 0.8 * DD
    D5$ = "[re:900]\[pm:" + FD2(XX5, 0) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize3) + "]\[��:0,0,0,LD," + Moj4$ + "]"
    Print #60, "     " + D1$
    Print #60, "     " + D2$
    Print #60, "     " + D3$
    Print #60, "     " + D4$
    If Moj4$ <> "" Then Print #60, "     " + D5$
    Print #60, "[�ݒ�in:]\[re:150]"
    End Sub

'����������������������������������������������������������������������������������������������
'���� P_�S��_�����̏c          �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_�S��_�����̏c(����n)
    ' exp   Moj1$="B": Moj2$="0": Moj3$="1": Moj4$="16-D32 x 10840"
    ' Point�_ ���̉���
    
     ReDim ��M_Ds$(30), ��M_Di(30)
    Call Ddata("_", �S��_��_����$, ��M_Ds(), ��M_Di(), ni)
    Moj1$ = ��M_Ds(1)
    Moj2$ = ��M_Ds(2)
    Moj3$ = ��M_Ds(3)
   ' Moj4$ = ��M_Ds(4)
    Select Case ����n
    Case 0:   Moj4$ = ""
    Case 1:   Moj4$ = �S��_��_����1$
    Case 2:   Moj4$ = �S��_��_����2$
    Case 3:   Moj4$ = �S��_��_����3$
    Case 4:   Moj4$ = �S��_��_����4$
    End Select
    
    
    Print #60, "[�ݒ�out:]"
    Print #60, "[�F:��]\[�:Mark]"
    DD = ���r_�S�ؖ���_�a
    D1$ = "[me:900]\[pm:" + FD2(-DD / 2, 0) + "]\[��:" + F9(DD) + "]"
    D2$ = "[pm:" + FD2(0, -0.35 * DD) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize1) + "]\[��:0,0,90,LC," + Moj1$ + "]"
    D3$ = "[re:900]\[pm:" + FD2(-0.75 * DD, 0.05 * DD) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize2) + "]\[��:0,0,90,LD," + Moj2$ + "]"
    D4$ = "[re:900]\[pm:" + FD2(-0.15 * DD, 0.05 * DD) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize2) + "]\[��:0,0,90,LD," + Moj3$ + "]"
    D5$ = "[re:900]\[pm:" + FD2(0, 0.6 * DD) + "]\[Msize:" + F9(���r_�S�ؖ���_Msize3) + "]\[��:0,0,90,LD," + Moj4$ + "]"
    Print #60, "     " + D1$
    Print #60, "     " + D2$
    Print #60, "     " + D3$
    Print #60, "     " + D4$
    If Moj4$ <> "" Then Print #60, "     " + D5$
    Print #60, "[�ݒ�in:]"
    
    End Sub







'����������������������������������������������������������������������������������������������
'���� P_���r_Center_Line     �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_Center_Line(X1, Y1, X2, Y2, X3, Y3)
    ' X3=0, Y3=0  CL ϰ���`���Ȃ�
      '[[[ ���� Line ]]]
    Print #60, "[�ݒ�out:]"
    Print #60, "[�:Center-Line]"
    Print #60, "[" + �}_CenterLine_����$ + ":]\[�F:" + �}_CenterLine_���F$ + "]"
    Print #60, "  [P:" + FD2(X1, Y1) + "]\[L:" + FD2(X2 - X1, Y2 - Y1) + "]"
    �p�x = Calu�p�x(X1, Y1, X2, Y2) - 90
    If X3 <> 0 Or Y3 <> 0 Then Print #60, "  [P:" + FD2(X3, Y3) + "]\[CL:" + FD2(6, �p�x) + "]"
    Print #60, "[�ݒ�in:]"

    End Sub



'����������������������������������������������������������������������������������������������
'���� P_���r_�f�ʈʒu�w��    �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'����������������������������������������������������������������������������������������������
Sub P_���r_�f�ʈʒu�w��(X1, Y1, X2, Y2, Moj1$, Moj2$, Moj�p�x)
    '  ����  1 or -1
    '
    '       5                6
    '      /��               ��
    '    7  ��               �� 8
    '      1���� 3        4����2
    '
    '
          XL = �f�ʈʒu�w��_XL * ����}_Scale
          YL = �f�ʈʒu�w��_YL * ����}_Scale
          ��L = �f�ʈʒu�w��_��L * ����}_Scale
        '        �f�ʈʒu�w��_��p = 15: '�x
        '        �f�ʈʒu�w��_Msize = 5: '
    
    ���p�x = Calu�p�x(X1, Y1, X2, Y2)
    X3 = X1 + XL * Dcos(���p�x): Y3 = Y1 + XL * Dsin(���p�x)
    X4 = X2 - XL * Dcos(���p�x): Y4 = Y2 - XL * Dsin(���p�x)
    X5 = X1 + YL * Dcos(���p�x + 90): Y5 = Y1 + YL * Dsin(���p�x + 90)
    X6 = X2 + YL * Dcos(���p�x + 90): Y6 = Y2 + YL * Dsin(���p�x + 90)
    
    X7 = X5 + ��L * Dcos(���p�x + 270 - �f�ʈʒu�w��_��p): Y7 = Y5 + ��L * Dsin(���p�x + 270 - �f�ʈʒu�w��_��p)
    X8 = X6 + ��L * Dcos(���p�x + 270 + �f�ʈʒu�w��_��p): Y8 = Y6 + ��L * Dsin(���p�x + 270 + �f�ʈʒu�w��_��p)
    
    D1$ = "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X5 - X1, Y5 - Y1) + "|" + FD2(X7 - X5, Y7 - Y5) + "]"
    D1$ = D1$ + "\[P:" + FD2(X2, Y2) + "]\[L:" + FD2(X6 - X2, Y6 - Y2) + "|" + FD2(X8 - X6, Y8 - Y6) + "]"
    
    D2$ = "[P:" + FD2(X1, Y1) + "]\[L:" + FD2(X3 - X1, Y3 - Y1) + "]"
    D2$ = D2$ + "\[P:" + FD2(X2, Y2) + "]\[L:" + FD2(X4 - X2, Y4 - Y2) + "]"
    
    D3$ = D2$ + "\[P:" + FD2((X3 + X5) / 2, (Y3 + Y5) / 2) + "]\[wc:" + Moj1$ + "]"
    D4$ = D2$ + "\[P:" + FD2((X4 + X6) / 2, (Y4 + Y6) / 2) + "]\[wc:" + Moj2$ + "]"
    
    Print #60, "[�ݒ�out:]\[Msize:" + F9(�f�ʈʒu�w��_Msize) + "]\[�F:" + �f�ʈʒu�w��_���F$ + "]"
            Print #60, "[�:�f�ʈʒu�w��]"
    Print #60, D1$
    Print #60, D2$
    Print #60, D3$
    Print #60, D4$
    Print #60, "[�ݒ�in:]"

    End Sub



'��������������������������������������������������������������������������������������������������������������������������������������
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�y�؋��r     �S�؍ޗ��\�@Data Control �@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@2002.11.22�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'���@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@              �@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@�@��
'��������������������������������������������������������������������������������������������������������������������������������������


Public Sub �y��_���r_�S�؍ޗ��\_Write(Temp$)

        Temp2$ = Data_dsk + "�S�؍ޗ��\.Dat"

           ReDim DK$(100)

       Open Temp2$ For Output As #10
       
       Print #10, Space(10); "�S�؍ޗ��\.DXF     �S�؍ޗ��\      �t�m��"
       Print #10, Space(10); "�\�Ԋu=20    ���_=50,520"
       Print #10, Space(10)
       
       Print #10, Space(10); "/�͂�"
              KOMO$ = "BR1,BR2,BR3,*,B2-1,B2-2,B2-3,*,BD1,B��1,B��2,*,B5-1,B5-2,B5-3,*,B01,B02,B03,B04"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = ���r_��(Da$)
                  P_�S�؍ޗ��\_Write (Da$)
                  Next ii
             
              KOMO$ = "*,S1,S2"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = ���r_�B��(Da$)
                  P_�S�؍ޗ��\_Write (Da$)
                  Next ii
              KOMO$ = "*,*,H1,H2,H3*"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = ���r_Stoper(Da$)
                  P_�S�؍ޗ��\_Write (Da$)
                  Next ii
       
       Print #10, ""
       Print #10, "/PAGE"
       Print #10, Space(10); "/��"
              KOMO$ = "C1�{��,C2�{��,C3�{��,C4�{��,C5�{��,C6�{��,*,�OHOOPX,�OHOOPY,*,��HOOPX,��HOOPX-2,*,��HOOPY,��HOOPY-2,*,CK"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = ���r_��(Da$)
                  P_�S�؍ޗ��\_Write (Da$)
                  Next ii
       
       Print #10, ""
       'Print #10, "/PAGE"
       Print #10, Space(10); "/��b"
              KOMO$ = "FY1,FY2,FY3,*,FX1,FX2,FX3,FX4,*,FH1*,FH2*"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = ���r_��b(Da$)
                  P_�S�؍ޗ��\_Write (Da$)
                  Next ii
       
       
       
       
       
       Print #10, ""
       Print #10, "/PAGE"
       Print #10, Space(10); "/�S�ؑ��d��"
       
       Print #10, ""
       Print #10, ""
       Print #10, Space(10); "/�Y"
             Da$ = ���r_��b("�Y�ʒu")
             Print #10, Space(10); "���މӏ�=" + f0(�Y�ʒu_Data��)
             Da$ = ���r_�Y("HOOP")
              KOMO$ = "K1-1,K1-2,K1-3,K1-4,K1-5,"
              KOMO$ = KOMO$ + "K2-1,K2-2,K2-3,K2-4,K2-5,"
              KOMO$ = KOMO$ + "K3-1,K3-2,K3-3,K3-4,K3-5,"
              KOMO$ = KOMO$ + "*,�g����,HOOP��,*,HOOP1,HOOP2,HOOP3,*,��߰�1,��߰�2,��߰�3"
              Call Ddata(",", KOMO$, DK(), Di(), ni)
              For ii = 1 To ni:      Da$ = DK(ii): If Da$ <> "*" Then Da$ = ���r_�Y(Da$)
                  P_�S�؍ޗ��\_Write (Da$)
                  Next ii
       
       
       
       
       
       Close #10




End Sub

Private Sub P_�S�؍ޗ��\_Write(Da$)
    Select Case Da$
    Case "":
    Case "*": Print #10, Spc(10); "."
    Case Else: Print #10, Spc(10); "."; F��$(�\����$, 10); F��$(�\�S�،a$, 10); f(F��2(�\�S��L), 11.1); f(�\�S�ؖ{��, 7);
         
            Print #10, "   $"; F��$(�\�S�ؓK�p$, 12); " "; �\�S�؍ގ�$; "   W"; f0(�\�S��W�ӏ�)
    'Stop
    End Select
    
    End Sub



Public Sub �y��_���r_�S�؍ޗ��\_Read(Temp$)

          Dxf_No = Dxf_No + 1

     EMS0$ = "�y�؋��r �S�؍ޗ��\ Read": EMS1 = "": EMS2 = ""
     �k��$ = "": �}��{_Scale = 50
    ZU_Scale = �}��{_Scale
    �S�ؕ\_����$ = ""
            �S�ؕ\_����$ = ""
            �S�ؕ\_�W�v$ = ""
            ���_X = 50: ���_Y = 520
            �\�Ԋu = 50
            �\���މӏ� = 1
      
      
      For ii = 1 To 20: �\_�����S�؏d��(ii) = 0: �\_���S�؏d��(ii) = 0
            �\_�S��W�ӏ�(ii) = 0: �\_�S�؃�W�ӏ�(ii) = 0
            �\_�S��K�ӏ�(ii) = 0: �\_�S�؃�K�ӏ�(ii) = 0
            Next ii
     
     
     
     Open Temp$ For Input As #2
                Line Input #2, �y��_���r_DXF_F��$: EMS1 = "��}Data  " + �y��_���r_DXF_F��$ + "  "
                Line Input #2, �}_����$
                Line Input #2, �}�ԍ�$
     
                Call �}_File_��(�y��_���r_DXF_F��$, Input_F$, Output_F$)
                �ϊ�type$ = "Dxf": Data_Type$ = "Ploter": �p��size$ = "A1"
                
                Call �}_File_Start(Input_F$, �ϊ�type$, Data_Type$, �p��size$, �}��{_Scale, ���r_LAYER_N, ���r_layer$())
                ����}_Scale = �}��{_Scale

                For ii = 1 To ���r�}_��{�ݒ萔:    Print #60, "[��{�ݒ�:" + ���r�}_��{�ݒ�(ii) + "]":    Next ii
     
                Call �y��_���r_�g��}
                �S�؍ޗ��\�o��$ = "Y"
                
                
             '   Print #60, "[Msize:3]"
                Print #60, "[Msize:" + F9(�S�؍ޗ��\_Msize) + "]"
     
        Do
                If INP$ <> "N" Then Line Input #2, Da$
                INP$ = ""
     
                 Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
             Select Case ����s$
             Case "/": 'Exit Do
                         
                         EMS2 = Da$ + "   "
                         
                         If �S�؍ޗ��\�o��$ = "Y" Then Call P_�S�؍ޗ��\: �S�؍ޗ��\�o��$ = ""
                         
                          If �S�ؕ\_�W�v$ <> "" Then Call P_�S�ؕ\_�W�v: �S�ؕ\_�W�v$ = ""
                         
                         Select Case UCase(����2s$)
                         Case "/END": Exit Do
                         Case "/PAGE":
                                     
                                     ���_X = ���_X + �S�ؕ\_XL / ����}_Scale + �\�Ԋu: Call �}_���_(���_X, ���_Y)

                                      Call P_�S�؍ޗ��\
                         
                         Case "/�S�ؑ��d��":
                                    Call P_�S�ؕ\_���W�v
                         
                         Case Else:
                         
                                       �S�ؕ\_����$ = Mid(Da$, 2)
                                       �O�S�،a$ = ""
                                       �O�S�؍ގ�$ = ""
                                     �S�ؕ\_��Y = �S�ؕ\_��Y - �S�ؕ\_Ypit:  '   ���݂�Y���W
                                      Print #60, "[P:" + FD2(5 * ����}_Scale, �S�ؕ\_��Y) + "]\[wl:" + �S�ؕ\_����$ + "]"
                                      �S�ؕ\_�W�v$ = "Y"
                         
                         End Select
             
             Case "**": er (����3s$): ' User ����
             Case "*": ' ���ā@�@�@exp  *����
             
             
             
             Case "���_=":        Call Ddata(",", ����3s$, Ds$(), Di(), ni)
                                  If ni <> 2 Then ��er = " ���_=X0,Y0 �łȂ� (" + Da$ + ")": If ����CK > 99 Then Stop
                                  ���_X = Di(1): ���_Y = Di(2)
                                  Call �}_���_(���_X, ���_Y)
                                  '����}_Scale = �}��{_Scale
        
             
             Case "�\�Ԋu=":        �\�Ԋu = Val(����3s$)
             
             Case "���މӏ�=": �\���މӏ� = Val(����3s$)
             
             Case ".":            Call P_�S�ؕ\(Da$):
                                  If ��er <> "" Then If ����CK > 99 Then Stop
                                  INP$ = "N"
             
             
             Case Else: ��er = "�S�ؕ\ ����ވʒu���(" + Da$ + ")�� �����ł��܂���":   If ����CK > 99 Then Stop
             End Select
     
             If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     
             Loop

     Close #60: ' Call �}_File_Start �Ł@OPEN
     
     Call UXF_�ϊ�(Input_F$, Output_F$): ' Uxf ---> Dxf
     '***2
     
     Close #2
     End Sub


Sub P_�S�ؕ\(Da$)
     '�S�ؕ\_��Y   ���݂�Y���W
     
     
     'Dim �O�S�،a$, �O�S�؍ގ�$
     
     �S�ؕ\_��Y = �S�ؕ\_��Y - �S�ؕ\_Ypit
     �S��1�d�� = 0: �S�؏d�� = 0: �S�ؓE�v$ = "":
     �S�؍ގ�$ = �O�S�؍ގ�$
     �S�ؕ���$ = Trim(Mid(Da$, 2))
     �S��W�ӏ� = 0: �S��K�ӏ� = 0
     
     If �S�ؕ���$ = "" Then �O�S�ؕ���$ = "*": Line Input #2, Da$: Exit Sub
              
              
     EMS2$ = �S�ؕ���$ + "  "
     Y0 = �S�ؕ\_��Y
         
              
              Input #2, �S�،a$
                   �S�ؒP�ʏd�� = FP_���r_�S��_Data("W", �S�،a$) / 1000
     
              Input #2, �S�ؒ���s$: �S�ؒ��� = Val(�S�ؒ���s$)
              Input #2, �S�ؖ{��s$: �S�ؖ{�� = Val(�S�ؖ{��s$)
     
     
     Do
                If INP$ <> "N" Then Line Input #2, Da$
                INP$ = ""
     
                 Call INP����3(Da$, ����s$, ����2s$, ����3s$)
        
                 If Mid$(Da$, 1, 1) = "S" Then ����s$ = "SD"
                 If Mid$(Da$, 1, 1) = "W" Then ����s$ = "W"
                 If Mid$(Da$, 1, 1) = "K" Then ����s$ = "K"
             
             Select Case ����s$
             Case "/": Exit Do
             
             Case "**": er (����3s$): ' User ����
             Case "*": ' ���ā@�@�@exp  *����
             Case "���_=":     Exit Do
             Case ".":  Exit Do
             
             Case "$": �S�ؓE�v$ = ����3s$
             
             Case "SD": �S�؍ގ�$ = Da$
             
             Case "W": �S��W�ӏ� = Val(Mid(Da$, 2))
             Case "K": �S��K�ӏ� = Val(Mid(Da$, 2))
             
             Case Else: ��er = "�S�ؕ\  �S�؈ʒu���(" + Da$ + ")�� �����ł��܂���":   If ����CK > 99 Then Stop
             End Select
     
             If ��er <> "" Then er (""): If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
     
             Loop
     
             
             
             
             
             �S��1�d�� = �S�ؒP�ʏd�� * �S�ؒ���: �S�؏d�� = �S��1�d�� * �S�ؖ{��
     
           For XX = 2 To �S�ؕ\_XN:  Print #60, "[P:" + FD2(�S�ؕ\X(XX), Y0 - �S�ؕ\_Ypit / 2) + "]\[L:" + FD2(0, �S�ؕ\_Ypit) + "]": Next XX
     
     
           '[[[ �S�ؕ��� ]]]
                    X1 = �S�ؕ\X(1) + �S�ؕ\L(1) / 2
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + �S�ؕ���$ + "]"
     
           '[[[ �S�،a ]]]
                    X1 = �S�ؕ\X(2) + �S�ؕ\L(2) / 2
                    �\���S�،a$ = �S�،a$
                    If �\���S�،a$ = �O�S�،a$ Then �\���S�،a$ = "�V"
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + �\���S�،a$ + "]"
     
           '[[[ �S�ؒ��� ]]]
                    X1 = �S�ؕ\X(3) + 0.7 * �S�ؕ\L(3)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + FP_�S��F0(�S�ؒ���) + "]"
     
           '[[[ �S�ؖ{�� ]]]
                    X1 = �S�ؕ\X(4) + 0.7 * �S�ؕ\L(4)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + f0(�S�ؖ{��) + "]"
     
           '[[[ �S�؁@1�d�� ]]]
                    X1 = �S�ؕ\X(5) + 0.8 * �S�ؕ\L(5)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + FP_�S��F3$(�S��1�d��) + "]"
     
           '[[[ �S�؏d�� ]]]
                    X1 = �S�ؕ\X(6) + 0.8 * �S�ؕ\L(6)
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wr:" + FP_�S��F1$(�S�؏d��) + "]"
     
           '[[[ �S�ؓE�v ]]]
                    X1 = �S�ؕ\X(7) + �S�ؕ\L(7) / 2
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + �S�ؓE�v$ + "]"
     
           '[[[ �S�؍ގ� ]]]
                    X1 = �S�ؕ\X(8) + �S�ؕ\L(8) / 2
                    �\���S�؍ގ�$ = �S�؍ގ�$
                    If �\���S�؍ގ�$ = �O�S�؍ގ�$ Then �\���S�؍ގ�$ = "�V"
                    If �O�S�ؕ���$ = "*" Then �\���S�؍ގ�$ = �S�؍ގ�$
                    Print #60, "[P:" + FD2(X1, Y0) + "]\[wc:" + �\���S�؍ގ�$ + "]"
     
           '[[[ �S��W�ӏ� ]]]
                    X1 = �S�ؕ\X(9) + 1 * ����}_Scale
                    �S��W�ӏ�s$ = "(" + f0(�S��W�ӏ�) + ")"
                    If �S��W�ӏ� > 0 Then Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + �S��W�ӏ�s$ + "]"
           
           
           
           Call P_�S�؏d��_�W�v(�S�،a$, �S�؏d��, �S��W�ӏ�)
           
           �O�S�،a$ = �S�،a$
           �O�S�؍ގ�$ = �S�؍ގ�$
           �O�S�ؕ���$ = �S�ؕ���$
    
    End Sub

Function FP_�S��F0$(X):
       FP_�S��F0$ = Format$(X, "00")
       End Function

Function FP_�S��F1$(X):
       FP_�S��F1$ = Format$(X, "0.0")
       End Function
Function FP_�S��F3$(X):
       FP_�S��F3$ = Format$(X, "0.000")
       End Function

Sub P_�S�؏d��_�W�v(�S�،a$, �S�؏d��, �S��W�ӏ�)

    Select Case UCase(�S�،a$)
    Case "D10":        �\_�S�،a$(12) = "D10":   �\_���S�؏d��(12) = �\_���S�؏d��(12) + �S�؏d��:  �\_�S��W�ӏ�(12) = �\_�S��W�ӏ�(12) + �S��W�ӏ�
    Case "D13":        �\_�S�،a$(11) = "D13":   �\_���S�؏d��(11) = �\_���S�؏d��(11) + �S�؏d��:  �\_�S��W�ӏ�(11) = �\_�S��W�ӏ�(11) + �S��W�ӏ�
    Case "D16":        �\_�S�،a$(10) = "D16":   �\_���S�؏d��(10) = �\_���S�؏d��(10) + �S�؏d��:  �\_�S��W�ӏ�(10) = �\_�S��W�ӏ�(10) + �S��W�ӏ�
    Case "D19":        �\_�S�،a$(9) = "D19":    �\_���S�؏d��(9) = �\_���S�؏d��(9) + �S�؏d��:  �\_�S��W�ӏ�(9) = �\_�S��W�ӏ�(9) + �S��W�ӏ�
    Case "D22":        �\_�S�،a$(8) = "D22":    �\_���S�؏d��(8) = �\_���S�؏d��(8) + �S�؏d��:  �\_�S��W�ӏ�(8) = �\_�S��W�ӏ�(8) + �S��W�ӏ�
    Case "D25":        �\_�S�،a$(7) = "D25":    �\_���S�؏d��(7) = �\_���S�؏d��(7) + �S�؏d��:  �\_�S��W�ӏ�(7) = �\_�S��W�ӏ�(7) + �S��W�ӏ�
    Case "D29":        �\_�S�،a$(6) = "D29":    �\_���S�؏d��(6) = �\_���S�؏d��(6) + �S�؏d��:  �\_�S��W�ӏ�(6) = �\_�S��W�ӏ�(6) + �S��W�ӏ�
    Case "D32":        �\_�S�،a$(5) = "D32":    �\_���S�؏d��(5) = �\_���S�؏d��(5) + �S�؏d��:  �\_�S��W�ӏ�(5) = �\_�S��W�ӏ�(5) + �S��W�ӏ�
    Case "D35":        �\_�S�،a$(4) = "D35":    �\_���S�؏d��(4) = �\_���S�؏d��(4) + �S�؏d��:  �\_�S��W�ӏ�(4) = �\_�S��W�ӏ�(4) + �S��W�ӏ�
    Case "D38":        �\_�S�،a$(3) = "D38":    �\_���S�؏d��(3) = �\_���S�؏d��(3) + �S�؏d��:  �\_�S��W�ӏ�(3) = �\_�S��W�ӏ�(3) + �S��W�ӏ�
    Case "D41":        �\_�S�،a$(2) = "D41":    �\_���S�؏d��(2) = �\_���S�؏d��(2) + �S�؏d��:  �\_�S��W�ӏ�(2) = �\_�S��W�ӏ�(2) + �S��W�ӏ�
    Case "D51":        �\_�S�،a$(1) = "D51":    �\_���S�؏d��(1) = �\_���S�؏d��(1) + �S�؏d��:  �\_�S��W�ӏ�(1) = �\_�S��W�ӏ�(1) + �S��W�ӏ�
    Case "��13":       �\_�S�،a$(15) = "��13":  �\_���S�؏d��(15) = �\_���S�؏d��(15) + �S�؏d��:  �\_�S��W�ӏ�(15) = �\_�S��W�ӏ�(15) + �S��W�ӏ�
    Case Else: ��er = " �S�،a  " + �S�،a$ + " ����������": If ����CK > 99 Then Stop: Exit Sub Else Exit Sub
    End Select
    
    End Sub

Sub P_�S�ؕ\_�W�v()
     Y0 = �S�ؕ\_��Y - 3 * �S�ؕ\_Ypit
         X1 = 30 * ����}_Scale
         X2 = 80 * ����}_Scale: X2B = 82 * ����}_Scale
         X3 = 90 * ����}_Scale: X4 = 130 * ����}_Scale
    If �\���މӏ� > 1 Then X3 = 120 * ����}_Scale: X4 = 140 * ����}_Scale
         
         ���S�؏d�� = 0: �P��$ = "Kg"
         ��W�ӏ� = 0
     For ii = 1 To 20: ��W�ӏ� = ��W�ӏ� + �\_�S��W�ӏ�(ii): Next ii
    
     If ��W�ӏ� > 0 Then
         Print #60, "[P:" + FD2(X4 - 40, Y0) + "]\[wl:(�K�X����)]"
         Y0 = Y0 - �S�ؕ\_Ypit
         End If
    
    For ii = 1 To 16
          �S�؏d�� = �\_���S�؏d��(ii)
          If �S�؏d�� > 0 Then
                 Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + �\_�S�،a$(ii) + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_�S��F1$(�S�؏d��) + "]"
                 If �\���މӏ� > 1 Then
                        �\���މӏ�s$ = "x " + F9(�\���މӏ�) + " = " + f(�S�؏d�� * �\���މӏ�, 9.1)
                        Print #60, "[P:" + FD2(X2B, Y0) + "]\[wl:" + �\���މӏ�s$ + "]"
                        End If
                 
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:" + �P��$ + "]"
                 If �\_�S��W�ӏ�(ii) > 0 Then
                       �S��W�ӏ�s$ = "(" + f0(�\_�S��W�ӏ�(ii)) + ")"
                       Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + �S��W�ӏ�s$ + "]"
                       End If
                 
                 
                 �P��$ = "�V"
                 ���S�؏d�� = ���S�؏d�� + �S�؏d��
                Y0 = Y0 - �S�ؕ\_Ypit
                End If
          �\_�����S�؏d��(ii) = �\_�����S�؏d��(ii) + �\_���S�؏d��(ii): �\_���S�؏d��(ii) = 0
          �\_�S�؃�W�ӏ�(ii) = �\_�S�؃�W�ӏ�(ii) + �\_�S��W�ӏ�(ii): �\_�S��W�ӏ�(ii) = 0
          Next ii
    
          Y0 = Y0 - �S�ؕ\_Ypit
     Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + �S�ؕ\_����$ + "���v" + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_�S��F1$(���S�؏d��) + "]"
                 If �\���މӏ� > 1 Then
                        �\���މӏ�s$ = "x " + F9(�\���މӏ�) + " = " + f(���S�؏d�� * �\���މӏ�, 9.1)
                        Print #60, "[P:" + FD2(X2B, Y0) + "]\[wl:" + �\���މӏ�s$ + "]"
                        End If
                 
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:Kg]"
     If ��W�ӏ� > 0 Then �S��W�ӏ�s$ = "(" + f0(��W�ӏ�) + ")":        Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + �S��W�ӏ�s$ + "]"
    
          Y0 = Y0 - 2 * �S�ؕ\_Ypit
    �S�ؕ\_��Y = Y0
    End Sub

Sub P_�S�ؕ\_���W�v()
     Y0 = �S�ؕ\_��Y - 3 * �S�ؕ\_Ypit
         X1 = 30 * ����}_Scale
         X2 = 80 * ����}_Scale
         X3 = 90 * ����}_Scale
         X4 = 130 * ����}_Scale
         
         ���S�؏d�� = 0: �P��$ = "Kg"
         ��W�ӏ� = 0
     For ii = 1 To 20: ��W�ӏ� = ��W�ӏ� + �\_�S�؃�W�ӏ�(ii): Next ii
    
     If ��W�ӏ� > 0 Then
         Print #60, "[P:" + FD2(X4 - 40, Y0) + "]\[wl:(�K�X����)]"
         Y0 = Y0 - �S�ؕ\_Ypit
         End If
    
    For ii = 1 To 16
          �S�؏d�� = �\_�����S�؏d��(ii)
          If �S�؏d�� > 0 Then
                 Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:" + �\_�S�،a$(ii) + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_�S��F1$(�S�؏d��) + "]"
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:" + �P��$ + "]"
                 If �\_�S�؃�W�ӏ�(ii) > 0 Then
                       �S��W�ӏ�s$ = "(" + f0(�\_�S�؃�W�ӏ�(ii)) + ")"
                       Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + �S��W�ӏ�s$ + "]"
                       End If
                 
                 
                 �P��$ = "�V"
                 ���S�؏d�� = ���S�؏d�� + �S�؏d��
                Y0 = Y0 - �S�ؕ\_Ypit
                End If
          Next ii
    
          Y0 = Y0 - �S�ؕ\_Ypit
     Print #60, "[P:" + FD2(X1, Y0) + "]\[wl:�S�ؑ��d��" + "]\[P:" + FD2(X2, Y0) + "]\[wr:" + FP_�S��F1$(���S�؏d��) + "]"
                 Print #60, "[P:" + FD2(X3, Y0) + "]\[wc:Kg]"
     If ��W�ӏ� > 0 Then �S��W�ӏ�s$ = "(" + f0(��W�ӏ�) + ")":        Print #60, "[P:" + FD2(X4, Y0) + "]\[wl:" + �S��W�ӏ�s$ + "]"
    
          Y0 = Y0 - 2 * �S�ؕ\_Ypit
    �S�ؕ\_��Y = Y0
    End Sub



Sub P_�S�؍ޗ��\()
    ' �S�ؕ\����$(30), �S�ؕ\����2$(30)
    ' �S�ؕ\L(i)  :  X �g��
    ' �S�ؕ\X(i)  :  X �g ���ʒu
    ' �S�ؕ\_Ypit, �S�ؕ\_YL, �S�ؕ\_XL
     �S�ؕ\_XN = 8: �S�ؕ\_YN = 66
     �S�ؕ\_��Y = 0: '   ���݂�Y���W
    
    '[[[  X  ]]]
           �S�ؕ\����$(1) = "��  ��":       �S�ؕ\����$(2) = "�a":      �S�ؕ\����$(3) = "��  ��":      �S�ؕ\����$(4) = "�{  ��"
           �S�ؕ\����$(5) = "��{����d��": �S�ؕ\����$(6) = "�d  ��":  �S�ؕ\����$(7) = "�K  �v":      �S�ؕ\����$(8) = "��  ��"
           
           �S�ؕ\����2$(1) = "":       �S�ؕ\����2$(2) = "":      �S�ؕ\����2$(3) = "(mm)":      �S�ؕ\����2$(4) = ""
           �S�ؕ\����2$(5) = "(Kg)": �S�ؕ\����2$(6) = "(Kg)":  �S�ؕ\����2$(7) = "":      �S�ؕ\����2$(8) = ""
           
           �S�ؕ\L(1) = 18:    �S�ؕ\L(2) = 20:    �S�ؕ\L(3) = 25:    �S�ؕ\L(4) = 18
           �S�ؕ\L(5) = 28.5:  �S�ؕ\L(6) = 25:    �S�ؕ\L(7) = 21.5:  �S�ؕ\L(8) = 20
           �S�ؕ\_XL = 0
            For ii = 1 To 10: �S�ؕ\L(ii) = �S�ؕ\L(ii) * ����}_Scale: Next ii
            For ii = 1 To 10: �S�ؕ\X(ii) = �S�ؕ\_XL: �S�ؕ\_XL = �S�ؕ\_XL + �S�ؕ\L(ii): Next ii
    
    '[[[  Y  ]]]
           �S�ؕ\_Ypit = 7 * ����}_Scale
           �S�ؕ\_YL = �S�ؕ\_Ypit
           �S�ؕ\_��Y = Y0 - 1.5 * �S�ؕ\_Ypit: '   ���݂�Y���W
           
           
           
    '[[[  �S�ؕ\  ]]]
           
           For XX = 2 To �S�ؕ\_XN:   Print #60, "[P:" + FD2(�S�ؕ\X(XX), 0) + "]\[L:" + FD2(0, -2 * �S�ؕ\_Ypit) + "]":    Next XX
           For XX = 1 To �S�ؕ\_XN:   Print #60, "[P:" + FD2((�S�ؕ\X(XX) + �S�ؕ\X(XX + 1)) / 2, -0.5 * �S�ؕ\_Ypit) + "]\[wc:" + �S�ؕ\����$(XX) + "]":  Next XX
           
           For XX = 1 To �S�ؕ\_XN: Print #60, "[P:" + FD2((�S�ؕ\X(XX) + �S�ؕ\X(XX + 1)) / 2, -1.5 * �S�ؕ\_Ypit) + "]\[wc:" + �S�ؕ\����2$(XX) + "]":  Next XX
           
           Print #60, "[P:" + FD2(0, 0) + "]\[L:" + FD2(�S�ؕ\_XL, 0) + "]"
           For YY = 1 To �S�ؕ\_YN: �S�ؕ\_YL = �S�ؕ\_YL + �S�ؕ\_Ypit
               Print #60, "[P:" + FD2(0, -�S�ؕ\_YL) + "]\[L:" + FD2(�S�ؕ\_XL, 0) + "]"
               Next YY
    
           Print #60, "[P:" + FD2(0, 0) + "]\[L:" + FD2(0, -�S�ؕ\_YL) + "]"
           Print #60, "[P:" + FD2(�S�ؕ\_XL, 0) + "]\[L:" + FD2(0, -�S�ؕ\_YL) + "]"
    
    
    
    
    End Sub




