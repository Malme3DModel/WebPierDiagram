Attribute VB_Name = "cmnVariable"
Option Explicit
'///////////////////////////////////////////////////////////
'Interface以外でも使用する広域変数や定数 - cmnVariable.bas
'   99/11/13 kit作成
'///////////////////////////////////////////////////////////

'///////////////////////////////////////////////////////////
'固定文字列の中身は
'ProjectMain(main.bas)内の InitFixStrings で設定している
'///////////////////////////////////////////////////////////

'===========================================================
'計算種類の判定フラグの値
'===========================================================
Public Const gcCalcFlag_Normal As Integer = 0
Public Const gcCalcFlag_KuiHanryoku As Integer = 1  '杭反力のみ
Public Const gcCalcFlag_Shu As Integer = 2          'シュー反力のみ
Public Const gcCalcFlag_Kat As Integer = 3          '片持ちフォームのみ
Public Const gcCalcFlag_Kui As Integer = 4          '杭
Public Const gcCalcFlag_Kutai As Integer = 5      '柱
Public Const gcCalcFlag_KutaiKuiFooting As Integer = 6 '柱・杭・フーチング

'===========================================================
'基本データ(frmBasicData)のデータ
'===========================================================
Public Const gcstrBasicDataFile As String = "BasicData"





'===========================================================
'計算フォーム（frmCalc）のデータ
'===========================================================
Public pOutputPriority(6) As Variant
Public pOutputName(6) As Variant
Public pOutputSize(6) As Variant
Public pUpdate(6) As Variant
Public pEtc(2) As Variant



'0 - チェック無し 1 - 耐震を除く 2 - 耐震のみ
Public pCalcTaishin As Integer

'SNAPファイル出力フラグ
Public pOutputSNAPData As Integer   '1で出力

'SNAPファイル出力パス
Public pOutputSNAPDir As String

'SNAPファイルを古い形式で出力するフラグ
Public pOutputOldSNAPName As Integer   '1で旧形式----SNAP自動処理に変更 02/09/09 nagase


'===========================================================
'MDIForm（MDIForm_橋脚）のデータ
'===========================================================
Public Const gcstrMDIFile As String = "MDI"


'===========================================================
'下部構造(frmKKouzou)のデータ
'===========================================================
Public Const gcstrKKouzouFile As String = "KKouzou"

'計算用
Public pB() As Variant
Public pW() As Variant
Public pH() As Variant

Public pKuikei As Variant
Public pKuinaga As Variant

Public pKuihaic1() As Variant
Public pKuihaic2() As Variant

Public pRHanti() As Variant
Public pShakaku() As Variant

Public pFootingBothTepa As Variant


'===========================================================
'片持梁・桁座(frmKatamochi)のデータ
'===========================================================
Public Const gcstrKatamochiFile As String = "Katamochi"

'計算用
Public pKatamochi0() As Variant
Public pKatamochi1() As Variant
Public pKatamochi2() As Variant
Public pKatamochi3() As Variant
Public pKatamochi4() As Variant
Public pKatamochi5() As Variant
Public pKatamochi6() As Variant
Public pKatamochi7() As Variant
Public pKatamochi8() As Variant
Public pKatamochi9() As Variant
Public pKatamochi10() As Variant
Public pKatamochi11() As Variant
Public pKatamochi12() As Variant
Public pKatamochi13() As Variant
Public pKatamochi14() As Variant
Public pKatamochi15() As Variant
Public pKatamochi16() As Variant
Public pKatamochi17() As Variant
Public pKatamochi18() As Variant


'===========================================================
'基礎配筋(frmKisohaikin)のデータ
'===========================================================
Public Const gcstrKisohaikinFile As String = "Kisohaikin"

'計算用
Public pKiso0() As Variant
Public pKiso1() As Variant
Public pKiso2() As Variant
Public pKiso3() As Variant
Public pKiso4() As Variant
Public pKiso5() As Variant
Public pKiso6() As Variant
Public pKiso7() As Variant


'===========================================================
'躯体(frmKutai)のデータ
'===========================================================
Public Const gcstrKutaiFile As String = "Kutai"

'計算用
Public pKutai0() As Variant
Public pKutai1() As Variant
Public pKutai2() As Variant
Public pKutai3() As Variant
Public pKutai4() As Variant
Public pKutai5() As Variant
Public pKutai6() As Variant
Public pKutai7() As Variant
Public pKutai8() As Variant
Public pKutai9() As Variant
Public pKutai10() As Variant
Public pKutai11() As Variant


'===========================================================
'支承(frmShishou)のデータ
'===========================================================
Public Const gcstrShishouFile As String = "Shishou"

'計算用
Public pShishou0() As Variant
Public pShishou1() As Variant
Public pShishou2() As Variant
Public pShishou3() As Variant
Public pShishou4() As Variant
Public pShishou5() As Variant


'===========================================================
'杭配筋(frmKuiHaikin)のデータ
'===========================================================
Public Const gcstrKuiHaikinFile As String = "KuiHaikin"

'計算用
Public pKuiHaikin0() As Variant
Public pKuiHaikin1() As Variant
Public pKuiHaikin2() As Variant
Public pKuiHaikin3() As Variant
Public pKuiHaikin4() As Variant
Public pKuiHaikin5() As Variant
Public pKuiHaikin6() As Variant


'===========================================================
'計算・印刷のデータ   2000/09/14 江川 追加
'===========================================================
Public Const gcstrKeisanFile As String = "Keisan"
Public Const gcstrDigestFile As String = "Digest"

Public gintOutput(13) As Integer
Public gintUseExtFile(3) As Integer
Public gstrPickUpFileName(2) As String
Public gintKuiStartNo As Integer

'総括表のみ出力時にtrue 2002/01/13 kit
Public gbKuibaneOnlySoukatu As Boolean

'===========================================================
'データファイル関係
'===========================================================
Public Const gcstrCommonDataFile As String = "橋脚図化システム"
Public Const gcstrInitFile As String = "橋脚図化システム"        '*.ini ファイル

Public Const gcstrFileMaskAll = "|全てのﾌｧｲﾙ (*.*)|*.*"

Public gstrAppDir As String         '実行ファイル（アプリ本体）のあるパス名
Public gstrExeDir As String         '実行ファイル（TruEXE）のあるパス名
Public gstrPfsDir As String         '実行ファイル（PFORCE）のあるパス名
Public gstrFrXDir As String         '実行ファイル（FRAME）のあるパス名
Public gstrDanDir As String         '実行ファイル（WinDan）のあるパス名
Public gstrJinDir As String         '実行ファイル（WinJin) のあるパス名
Public gstrSNAPDir As String        'SNAPファイルのデフォルト出力先フォルダ名
Public gstrCurDir As String         'データファイルパス名
Public gstrMarkDir As String        '共通データパス名
Public gstrCalcDir As String        '計算用
Public gstrFrmDir As String         'フレーム断面力用
Public gstrSOKKATUDir As String     '設計総括表
Public gstrTmpDir As String         '作業用
Public gstrCurFilename As String    '現在開いているアーカイブファイル名
Public gstrTitle As String          'ファイルタイトル

Public gstrInitDirPartOpen As String '他のファイルから読込みの際の初期ディレクトリ

Public Const gcstrFileExtNoDot As String = "phk"                '保存用
Public Const gcstrFileExt As String = "." & gcstrFileExtNoDot
Public Const gcstrCalcFileExtNoDot As String = "clc"            '計算用
Public Const gcstrCalcFileExt As String = "." & gcstrCalcFileExtNoDot

Public Const gcstrCmnFileExt As String = ".dat"                 '共通ファイル用
Public Const gcstrNameFile As String = "FileName." & gcstrFileExtNoDot '復帰ファイル名の保存用

Public Const gcstrSNAPFileExt As String = ".ndt"                'SNAPデータ用

'===========================================================
'アプリケーションで共通のデータ
'===========================================================
'Public Type typInputList
'    Dim strMark As String
'    Dim strName As String
'End Type
'
'Public usrListSharyou As typInputList

'===========================================================
'その他のグローバル変数
'===========================================================
Public Const gcsngNullVal = -9000000# ' Null値

Public gcintScrbarmyspace As Integer
Public Const gcintObjmyspace = 80
Public Const gcintGridmyspaceV = 80

'SI単位による単位の切り替え用 添え字 = 1 がSI単位
Public Const gcintNotSI = 0
Public Const gcintSI = 1

Public gcstrTf(1) As String         'tf or kN
Public gcstrTf_m3(1) As String      'tf/m3 or kN/m3
Public gcstrKgf_cm2(1) As String    ' kgf/cm2 or N/mm2

'現在の単位系
Public gintTanni As Integer

'ダイジェスト版印刷の有無
Public gbDigest As Boolean

'各フォームのデータ変更フラグ
Public Const gciFormNum As Integer = 15
Public gbolChgFlag(gciFormNum) As Boolean
Public Const gcfrmMDIForm_橋脚 = 0
Public Const gcfrmJKouzou = 1
Public Const gcfrmJHanryoku = 2
Public Const gcfrmRessha = 3
Public Const gcfrmKKouzou = 4
Public Const gcfrmJiban = 5
Public Const gcfrmKuiHaichi = 6
Public Const gcfrmSonota = 7
Public Const gcfrmKatamochi = 8
Public Const gcfrmKisohaikin = 9
Public Const gcfrmSekkei = 10
Public Const gcfrmKutai = 11
Public Const gcfrmKeisan = 12
Public Const gcfrmSNAP = 13

Public Const gcfrmShishou = 14
Public Const gcfrmKuiHaikin = 15

Public Const gcfrmBasicData = 16

'機　能 ：  計算前の準備。データを計算用ファイルから読み込んで変数に格納する
'戻り値 ：  ""で正常終了
'Public Function gSetCmnVariable() As String
'    Dim intNum As Integer
'
'    On Error GoTo ErrorHandler
'
'    gSetCmnVariable = ""
'
'    '計算用ファイルから読み込む
'    Call FrTextDataInput(gstrCalcDir & gcstrJKouzouFile & gcstrCalcFileExt, intNum, False, pJOUBN, pJOUB, pSUPN, pSUP, pSUP2, pMUK)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrJHanryokuFile & gcstrCalcFileExt, intNum, False, pHANA, pHANB, pHANC, pHAND, pHANK)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrResshaFile & gcstrCalcFileExt, intNum, False, pRES, pRESN, pTANJU, pKYOD1, pKYOD2)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrKKouzouFile & gcstrCalcFileExt, intNum, False, pKUTAI, pDOKA, pDENS, pDEN)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrJibanFile & gcstrCalcFileExt, intNum, False, pJIBAN, pKUISENTAN, pKUISYU, pKUIKEI, pKUINAG, pJIBANSHU)
'
'    Call FrTextDataInput(gstrCalcDir & gcstrKuiHaichiFile & gcstrCalcFileExt, intNum, False, pKUIHAIX, pKUIHAIY)
'
'    Exit Function
'
'ErrorHandler:
'    Close
'    gSetCmnVariable = Format$(Err.Number) & vbCrLf & Err.Description
'
'End Function

Public gbolIsDebug As Boolean 'デバッグモード
Public gbolDoCalcHHEN As Boolean  ' 水平変位計算実行 True)する  False)しない
Public gbolDoCalcPForce As Boolean  ' 水平変位計算実行 True)する  False)しない
Public gbolZuWaku As Boolean    '図枠の作図

'==========================================================================================
'橋脚頂部の節点荷重
Public gLCASE(50, 4)    As Variant  '線路方向
                                    '添字１：ＣＡＳＥ Ｎｏ
                                    '添字２：１－軸力、２－水平力、３－ﾓｰﾒﾝﾄ、４－説明
Public gCCASE(50, 4)    As Variant  '線路直角方向
                                    '添字１：ＣＡＳＥ Ｎｏ
                                    '添字２：１－軸力、２－水平力、３－ﾓｰﾒﾝﾄ、４－説明

'桁受け・桁座の自重
Public Keta_Dload(4)    As Double   '1:tf   2,3,4:tf/m

'柱部の自重
Public Pole_Dload       As Double   'tf/m

'フーチングの自重（線路方向）
Public Foot_Dload_L(2)  As Double   'tf/m   １：肩部    ２：頂上部

'フーチングの自重（線路直角方向）
Public Foot_Dload_C     As Double   'tf/m

'上載土の自重（線路方向）
Public Earth_Dload_L(8) As Double   'tf/m   １：肩部    ２：頂上部  ３：柱部

'上載土の自重（線路直角方向）
Public Earth_Dload_C(2) As Double   'tf/m   １：肩部    ２：柱部

'杭の自重
Public Pile_Dload       As Double   'tf/m

'躯体・フーチングの地震力
Public Type BodyFoot
    BeamUke_H           As Double   'tf
    BeamUke_M           As Double   'tf･m
    BeamZA_1            As Double   'tf/m   上端
    BeamZA_2            As Double   'tf/m   オベリスク
    BeamZA_3            As Double   'tf/m   下端
    Pole                As Double   'tf/m   中空部無し
    Foot_1              As Double   'tf     オベリスク
    Foot_2              As Double   'tf
    alf                 As Double   '終局限界の係数
End Type
Public Body_Qload(2)    As BodyFoot     '１：線路方向   ２：線路直角方向

'浮力
Public Type FloatForce
    Level               As Double   'tf/m   平水位
    High                As Double   'tf/m   高水位
    Low                 As Double   'tf/m   低水位
    Pole_Lev            As Double   'tf     柱部の集中荷重 平水位
    Pole_Hi             As Double   'tf     柱部の集中荷重 高水位
    Pole_Low            As Double   'tf     柱部の集中荷重 低水位
End Type
Public Float_Load(2)    As FloatForce   '１：線路方向   ２：線路直角方向

'風荷重
Public Type WindForce
    BeamUke             As Double   'tf/m
    BeamZA_1            As Double   'tf/m
    BeamZA_2            As Double   'tf/m
    Pole                As Double   'tf/m
End Type
Public Wind_Load(2)     As WindForce    '１：列車有り   ２：列車無し

'線路直角方向・死荷重地震・終局限界状態の係数
Public Final_Dload_alf  As Double

'==========================================================================================

Public gintCASE As Integer      'ＣＡＳＥ Ｎｏ カウント用

'線路方向
Public Type CaseData_L
    RB      As Double
    rc      As Double
    HB      As Double
    HC      As Double
    n       As Double
    H       As Double
    m       As Double
    LINE    As Integer  '０：線路方向       １：線路直角方向
    Mode    As Integer  '０：計算結果出力   １：出力無し    ２：タイトル出力無し
    Msg     As String
End Type
Public gCASEDATA_L    As CaseData_L     '各ＣＡＳＥの節点荷重計算用データ

'線路直角方向
Public Type CaseData_C
    HB      As Double
    HC      As Double
    m1      As Double
    m2      As Double
    LINE    As Integer  '０：線路方向       １：線路直角方向
    Mode    As Integer  '０：計算結果出力   １：出力無し    ２：タイトル出力無し
    Msg     As String
End Type
Public gCASEDATA_C    As CaseData_C     '各ＣＡＳＥの節点荷重計算用データ

'桁座の衝撃係数
Public GSYOG(2, 4) As Single       '(i, j)
                                    'i -- 1:起点側
                                    '     2:終点側
                                    'j -- 1:単線載荷(終局)
                                    '     2:複線載荷(終局)
                                    '     3:単線載荷(使用)
                                    '     4:複線載荷(使用)

'下部構造の衝撃係数
Public Impact_Val(4, 4) As Single   'i -- 1:柱下端
                                    '     2:ﾌｰﾁﾝｸﾞ下面・平水位
                                    '     3:ﾌｰﾁﾝｸﾞ下面・高水位
                                    '     4:ﾌｰﾁﾝｸﾞ下面・低水位
                                    'j -- 1:使用・単線
                                    '     2:使用・複線
                                    '     3:終局・単線
                                    '     4:終局・複線
                                    
Public Impact_ValB(4, 4) As Single   'i -- 1:柱下端
                                    '     2:ﾌｰﾁﾝｸﾞ下面・平水位
                                    '     3:ﾌｰﾁﾝｸﾞ下面・高水位
                                    '     4:ﾌｰﾁﾝｸﾞ下面・低水位
                                    'j -- 1:使用・単線
                                    '     2:使用・複線
                                    '     3:終局・単線
                                    '     4:終局・複線

'===========================================================
'靭性率計算用の変数
'===========================================================
'Footing - Public Sub 柱の断面力表()内で代入する
Public pMd(2) As Single '1-線路方向 2-線路直角方向
Public pNd(2) As Single
Public pVd(2) As Single

'===========================================================
'骨組計算用の変数       2000/12/26  kit
'===========================================================
'pStartBuzNo_F(ix, HOK)
'ix  1-Start    2-End
'HOK 1-線路方向 2-線路直角方向
Public pFootingBuzNo(2, 2) As Integer   'フーチングのスタート/エンド部材番号
Public pKuiBuzNo(2, 2) As Integer       '杭のスタート/エンド部材番号

Public K終局震度(2) As Single
Public KPage As Integer '               ページ出力の際　PAGE を表示  --- 1
Public Ksnap水平力(2, 2, 2) As Single '     ストッパー水平力用
Public gSNAP後処理(2)       As Single '     SNAP後処理　方向選択

