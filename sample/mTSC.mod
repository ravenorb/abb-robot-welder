%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE mTSC
  !**********************************************************
  !
  ! (c) ABB
  !
  !**********************************************************
  !
  ! Module:       TSC
  !
  ! Written by:   
  !
  ! Description:  Module that holds procedures to control the
  !               Torch cleaner
  ! Procedures:   
  !
  ! Functions:    
  !
  ! Created:      2006-11-03
  !
  ! Version:      1.0
  !
  ! History:      1.0
  !                 Created
  !
  !
  !
  !**********************************************************
  !
  !**********************************************************
  !*Robtargets                                              *
  !**********************************************************  
  !
  CONST jointtarget jtApproachTSC:=[[-97.8739,-30.576,50.5157,-49.3508,73.7972,102.273],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pApproachClean:=[[1050.72,-87.22,155.83],[0.0279877,-0.244658,0.969202,0.00269102],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pMechClean:=[[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
  CONST robtarget pApproachSpray:=[[924.10,-116.40,11.79],[0.0047641,0.0423178,-0.99906,0.00808313],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pSpray:=[[924.11,-116.39,-23.01],[0.00476051,0.042326,-0.99906,0.00808163],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pApproachClean10:=[[1242.60,-126.55,55.50],[0.0157871,0.519622,-0.854112,0.0153762],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pApproachSpray10:=[[1325.26,-68.58,55.41],[0.0158081,0.519613,-0.854117,0.0153811],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pApproachSpray20:=[[1311.51,-63.16,59.32],[0.0158687,0.519601,-0.854123,0.0154063],[-1,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST speeddata vCellSpeed:=[800,500,5000,1000];
  TASK PERS wobjdata wobj200S2B:=[FALSE,TRUE,"",[[-370.687,-531.146,-173.691],[0.704423,-0.000498683,-0.00260731,-0.709775]],[[0.00417233,-0.00241399,-0.000119209],[1,4.08276E-07,4.24316E-07,1.97952E-06]]];
  TASK PERS wobjdata wobj50S2A:=[FALSE,TRUE,"",[[-1195.09,-523.607,-173.996],[0.704328,-0.0019714,-0.00108713,-0.709871]],[[0.0025034,0,0.0012815],[1,-1.26116E-06,9.19483E-07,9.30524E-07]]];
  TASK PERS wobjdata wobjS1F3:=[FALSE,TRUE,"",[[904.776,556.898,-53.5921],[0.709298,0.00171125,0.00186513,0.704905]],[[-0.00101328,0.000357628,0.00111386],[1,-6.54233E-07,4.05588E-07,2.51779E-07]]];
  TASK PERS wobjdata wobjS1F2:=[FALSE,TRUE,"",[[795.803,558.274,-111.638],[0.70994,0.000565801,0.00154152,0.704261]],[[0.000715256,-0.00178814,-0.00115484],[1,5.57019E-07,-2.69403E-06,-7.98986E-08]]];
  TASK PERS wobjdata wobjS1F1:=[FALSE,TRUE,"",[[-532.712,570.296,-106.053],[0.709025,0.00193738,0.0031799,0.705174]],[[-0.00411272,-0.00143051,-0.000536442],[1,-8.16557E-07,7.56343E-07,-1.18358E-06]]];
  CONST robtarget pApproachSpray40:=[[1134.86,-109.65,100.37],[0.0314354,-0.194504,0.980379,0.00610681],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pAboveSpray:=[[1051.02,-120.90,627.52],[0.0838721,-0.0430298,-0.995185,-0.0268528],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST speeddata v2:=[2,500,5000,1000];
  LOCAL PERS wobjdata wobjTest:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
  TASK PERS menudata md_menudata1:=["","","menudata1",1,"",255,True,1,0,False,0];
  ! 
  !
  !
  !
  !---------------------------------------------------------------------------
  ! Procedure ChangeMenuLang
  !---------------------------------------------------------------------------
  !  
  ! 
  !---------------------------------------------------------------------------
  ! Procedure MechCleanGun
  !---------------------------------------------------------------------------
  !  
  PROC MechCleanGun()
    !
    !
    MoveJ pHomePos, vCellSpeed, fine, tWeldGun;
    MoveJ pAboveSpray, v500, fine, tWeldGun;
    MoveL pApproachClean, v500, fine, tWeldGun;
    MoveL pAtReamer, v200, fine, tWeldGun;
    SetDO doR1TC_Ream, 1;
    SetDO doR1TC_Lift, 1;
    WaitTime 3;
    SetDO doR1TC_Lift, 0;
    SetDO doR1TC_Ream, 0;
    WaitTime 0.5;
    MoveL pApproachClean, v200, fine, tWeldGun;
    MoveL pApproachSpray, v200, fine, tWeldGun;
    MoveL pSpray, v200, fine, tWeldGun;
    PulseDO\PLength:=1, doR1TC_Lube;
    WaitTime 1;
    MoveL pApproachSpray, v200, fine, tWeldGun;
    Wire_Cut;
    MoveJ [[1242.52,-119.03,687.76],[0.00101718,0.298639,0.954114,-0.0219144],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v500, fine, tWeldGun;
    MoveJ pHomePos, vCellSpeed, fine, tWeldGun;
	  !
  ENDPROC
  
  !---------------------------------------------------------------------------
  ! Procedure MechCleanGun
  !---------------------------------------------------------------------------
  !  

  !---------------------------------------------------------------------------
  ! Procedure TcQStopR1
  ! Connected to SysEvent QStop
  !---------------------------------------------------------------------------
  !  
  
  PROC Wire_Cut()
    MoveL pApproachSpray, v500, fine, tWeldGun;
    MoveL pApproachSpray40, v500, fine, tWeldGun;
    MoveL pWireCutterApproach, v500, fine, tWeldGun;
    MoveL pWireCutterPounce, v500, fine, tWeldGun;
    Set soAwManFeed15mm;
    WaitTime 0.5;
    Reset soAwManFeed15mm;
    WaitTime 1.0;
    MoveL pWireCut, v200, fine, tWeldGun;
    WaitTime 1.0;
    PulseDO\PLength:=0.5, doWireCut;
    WaitTime 1.0;
    MoveL pWireCutterPounce, v200, fine, tWeldGun;
    MoveL pWireCutterApproach, v500, fine, tWeldGun;
    MoveL pApproachSpray40, v500, fine, tWeldGun;
    MoveL pApproachSpray, v500, fine, tWeldGun;
  ENDPROC

	PROC menudata1()
		<SMT>
	ENDPROC 
ENDMODULE
