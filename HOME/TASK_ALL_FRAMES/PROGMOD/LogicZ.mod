                                            
MODULE LogicZ
	CONST robtarget pPark:=[[877.74,-1.13,1156.40],[0.00630492,0.00175109,0.999978,-0.00049176],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pSafeS1:=[[82.84,919.33,1175.90],[0.326608,0.635474,-0.637382,0.288521],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pSafeS2:=[[-13.04,-947.27,1114.93],[0.0492264,0.710875,0.699723,-0.051199],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pPounceS1:=[[44.14,948.67,577.59],[0.0459887,-0.688396,0.722623,0.0425714],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pPounceS2:=[[-13.05,-947.27,590.98],[0.0492199,0.71087,0.699727,-0.0512126],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pHomePos:=[[877.74,-1.12,1156.39],[0.00629838,0.001748,0.999978,-0.000488105],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pServiceS1:=[[-139.48,-775.51,888.19],[0.0651308,-0.76387,-0.637482,-0.0766646],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pSVCs1:=[[455.65,-140.80,351.09],[0.0313309,-0.185516,-0.982,-0.016678],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pAtReamer:=[[1050.70,-87.24,-82.27],[0.0242843,-0.245072,0.969047,0.0172726],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pReamerPounce:=[[1038.10,-85.15,68.45],[0.0180992,0.236074,-0.971562,0.00280343],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];  
	CONST robtarget pWireCutterPounce:=[[1181.79,-113.56,-125.49],[0.0334445,-0.238041,0.970618,0.0109022],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pWireCutterApproach:=[[1145.81,-114.46,-124.86],[0.0308497,-0.23618,0.971139,0.0125579],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];	
	CONST robtarget pWireCut:=[[1181.79,-113.56,-125.01],[0.0334438,-0.238041,0.970618,0.0109007],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pHomePos10:=[[1194.18,-118.52,457.68],[0.0181154,0.235986,-0.971583,0.00284814],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  PERS num regYskipValOrgS1:=25.4;
  PERS num regYskipValOrgS2:=25.4;
  PERS num regYskipValRightS1:=25.4;
  PERS num regYskipValLeftS1:=-25.4;
  PERS num regYskipValRightS2:=25.4;
  PERS num regYskipValLeftS2:=-25.4;
  PERS pose YleftSide1:=[[0,0,0],[1,0,0,0]];
  PERS pose YleftSide2:=[[0,0,0],[1,0,0,0]];
  PERS pose YrightSide1:=[[0,0,0],[1,0,0,0]];
  PERS pose YrightSide2:=[[0,0,0],[1,0,0,0]];
  PERS num regPartsCountSide1:=0;
  PERS num regPartsCountSide2:=0;
  CONST speeddata CellSpeed:=[800,500,5000,1000];
  
  CONST robtarget pReamerPounce10:=[[1250.76,-123.19,101.94],[0.00606879,0.163719,0.986488,0.000211333],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pApproachSpray30:=[[1242.24,-118.23,45.95],[0.00599894,0.163728,0.986487,0.000249373],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	PERS num nSprayTime:=1.2;
	PERS num nCleanTime:=3.5;
	PERS num nDisplayTime:=0.9;
    
    VAR clock clockmain;
    

	PROC rSetup()
		TPWrite "Modify Service Positions";
		MoveJ pPark, v800, fine, tWeldGun;
		Stop;
		MoveJ pSafeS1, v800, fine, tWeldGun;
		Stop;
		MoveJ pPounceS1, v800, fine, tWeldGun;
		Stop;
		MoveJ pSafeS1, v800, fine, tWeldGun;
		Stop;
		MoveJ pSVCs1, v800, fine, tWeldGun;
		Stop;
		MoveJ pSafeS1, v800, fine, tWeldGun;
		Stop;
		MoveJ pSafeS2, v800, fine, tWeldGun;
		Stop;
		MoveJ pPounceS2, v800, fine, tWeldGun;
		Stop;
		MoveJ pSafeS2, v800, fine, tWeldGun;
		Stop;
		MoveJ pHomePos, v800, fine, tWeldGun;
		Stop;
		ArcMoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v800, z10, tWeldGun;
		Stop;
		MoveJ pHomePos, v800, fine, tWeldGun;
	ENDPROC
    
    PROC rStartup()
		rResetSta1;
		rResetSta2;
	ENDPROC
    
!xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    PROC rRun()
        ClkReset clock1;
        ClkStart clock1;
      IF A_onlySide1 = TRUE THEN
            rA_Pos_Side1;
            
        ELSEIF  B_onlySide1 = TRUE THEN 
            rB_Pos_Side1;
            
        ELSEIF AB_Side1 = TRUE THEN 
            rA_Pos_Side1;    
            rB_Pos_Side1;
            
        ELSEIF A_onlyside2 = TRUE THEN 
            rA_Pos_Side2;
            
        ELSEIF B_onlySide2 = TRUE THEN
            rB_Pos_Side2;
            
        ELSEIF AB_Side2 = TRUE THEN 
            rA_Pos_Side2;    
            rB_Pos_Side2;    
        ELSEIF bSkid50 = TRUE THEN
            TPWrite "Running ProSkid50";
            ProSkid50;
        ELSEIF bSkid100 = TRUE THEN
            TPWrite "Running ProSkid100";
            ProSkid100;
        ELSEIF bSkid200 = TRUE THEN
            TPWrite "Running ProSkid200";
            ProSkid200;
        ELSEIF bSide1A100 = TRUE THEN
            TPWrite "A Running S1 100";
            rRUNSIDE1A100;
        ELSEIF bSide1A200 = TRUE THEN
            TPWrite "A Running S1 200";
            rRUNSide1A200;
        ELSEIF bLongWeld = TRUE THEN
            TPWrite "Running LongWelds";
            longwelds;
        ELSEIF bRover = TRUE THEN
            TPWrite "Running LawnRover";
            LawnRover;     
        ENDIF
        ClkStop clock1;
    	ENDPROC
     
     PROC rResetSta1()
		Reset doOpRdy1Out;
   		WaitTime 0.2;
		Set doOpRdy1Out;
	ENDPROC
     PROC rResetSta2()
		Reset doOpRdy2Out;
   		WaitTime 0.2;
           Set doOpRdy2Out;
	ENDPROC
    
     PROC rHome()
		TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!          MANUAL OPERATION        !!!";
		TPWrite "!!!                                  !!!";
		TPWrite "!!!          ROBOT MOVING HOME       !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite " ";
		TPWrite " ";
	MoveJ pHomePos, CellSpeed, fine, tWeldGun;
	ENDPROC
	 PROC rService()
		TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!          MANUAL OPERATION        !!!";
		TPWrite "!!!                                  !!!";
		TPWrite "!!!          MOVING TO SERVICE       !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite " ";
		TPWrite " ";
	MoveJ pSVCs1, CellSpeed, fine, tWeldGun;
	ENDPROC

     PROC rPositioner()
		TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
	ENDPROC

	PROC rTest()
		TPWrite "Test Program";
		WaitTime 1;
	ENDPROC
	PROC rSweepSide1A()
		TPWrite "Rotate Station 1 to Side A.";
		MoveJ pSafeS1, v800, fine, tWeldGun;
		
		WaitTime 0.1;
	ENDPROC
	PROC rSweepSide2B()
		TPWrite "Rotate Station 2 to Side B.";
		MoveJ pSafeS2, v800, fine, tWeldGun;
		
		WaitTime 0.1;
	ENDPROC
	PROC rSweepSide2A()
		TPWrite "Rotate Station 2 to Side A.";
		MoveJ pSafeS2, v800, fine, tWeldGun;
           
		WaitTime 0.1;
	ENDPROC
	PROC rSweepSide1B()
		TPWrite "Rotate Station 1 to Side B.";
		MoveJ pSafeS1, v800, fine, tWeldGun;
		
		WaitTime 0.1;
	ENDPROC
    
	PROC rTC2013()
		MoveJ pHomePos, CellSpeed, fine, tWeldGun;
		MoveJ pHomePos10, CellSpeed, fine, tWeldGun;
		MoveJ pWireCutterApproach, CellSpeed, fine, tWeldGun;
		Set soAwManFeed15mm;
		Reset soAwManFeed15mm;
		MoveJ pWireCutterPounce, CellSpeed, fine, tWeldGun;
		MoveJ pWireCut, v300, fine, tWeldGun;
		WaitTime 2;
		PulseDO\PLength:=0.5, doWireCut;
		WaitTime 2;
		MoveJ pWireCut, v300, fine, tWeldGun;
		MoveJ pWireCutterPounce, CellSpeed, fine, tWeldGun;
		MoveJ pWireCutterApproach, CellSpeed, fine, tWeldGun;
		MoveJ pReamerPounce, CellSpeed, fine, tWeldGun;
		MoveJ pAtReamer, v200, fine, tWeldGun;
		WaitTime 0.5;
		SetDO doR1TC_Ream, high;
		WaitTime 0.5;
		Set doR1TC_Lift;
		WaitTime nCleanTime;
		Reset doR1TC_Lift;
		WaitTime 1.0;
		SetDO doR1TC_Ream, low;
		WaitTime 2;
		MoveJ pReamerPounce, CellSpeed, fine, tWeldGun;
		MoveJ pApproachSpray, CellSpeed, fine, tWeldGun;
		MoveL pSpray, CellSpeed, fine, tWeldGun;
		PulseDO\PLength:=nSprayTime, doR1TC_Lube;
		WaitTime 1.5;
		MoveJ pApproachSpray, CellSpeed, fine, tWeldGun;
		MoveJ pHomePos10, CellSpeed, fine, tWeldGun;
		MoveJ pHomePos, CellSpeed, fine, tWeldGun;
	ENDPROC

    ! 
    ! Bool initialization is located in Prog1 data.
    
	PROC rDisplayBoolS1()
		TPWrite "Run Part A      ==>"\Bool:=A_onlySide1;
		TPWrite "Run Part B      ==>"\Bool:=B_onlySide1;
		TPWrite "Run Parts A&B   ==>"\Bool:=AB_Side1;
		TPWrite "NoPartSide1     ==>"\Bool:=bNoPartSide1;
     	ENDPROC	
	PROC rDisplayBoolS2()
        
        TPWrite "Run Part A      ==>"\Bool:=A_onlySide2;
		TPWrite "Run Part B      ==>"\Bool:=B_onlySide2;
		TPWrite "Run Parts A&B   ==>"\Bool:=AB_Side2;
		TPWrite "NoPartSide1     ==>"\Bool:=bNoPartSide2;

	ENDPROC
    PROC rSelSkidBDisplay()
        TPWrite "Run Skid 50 ==>"\Bool:=bSkid50;
        TPWrite "Run Skid 100 ==>"\Bool:=bSkid100;
        TPWrite "Run Skid 200 ==>"\Bool:=bSkid200;
    ENDPROC
    PROC rSelPrg100BDisplay()
        TPWrite "Run SS 100 Side 1A ==>"\Bool:=bSide1A100;
        TPWrite "Run SS 200 Side 1A ==>"\Bool:=bSide1A200;
    ENDPROC
    PROC rSelOtherBDisplay()
        TPWrite "Run Lawn Rover ==>"\Bool:=bRover;
        TPWrite "Run LongWeld   ==>"\Bool:=bLongWeld;
    ENDPROC        
    PROC rResetBoolS1()
     
        A_onlySide1:=FALSE;
        B_onlySide1:=FALSE;
	    AB_Side1:=FALSE;
        bNoPartSide1:=FALSE;
        
        bSkid50:=FALSE;
        bSkid100:=FALSE;   
        bSkid200:=FALSE;
        bSide1A100:=FALSE;
        bSide1A200:=FALSE;
        bLongWeld:=FALSE;
	ENDPROC
	PROC rResetBoolS2()

		A_onlySide2:=FALSE;
        B_onlySide2:=FALSE;
	    AB_Side2:=FALSE;
		bNoPartSide2:=FALSE;
        bRover:=FALSE;
	
	ENDPROC
    
    !rMainBDisplay shows the chosen parameters, selected in the side menus, on the main menu in Mod MainModule.
    
	PROC rMainBDisplay()
		TPWrite "Menu Display";
		IF A_onlySide1 = TRUE THEN
			TPWrite "Part Selected ==> 300 - A Pos only Side1";
           ELSEIF B_onlySide1 = TRUE THEN
			TPWrite "Part Selected ==> 300 - B Pos only Side1";
		ELSEIF AB_Side1 = TRUE THEN
			TPWrite "Part Selected ==> 300 - A&B Selected Side1";
		ELSEIF bNoPartSide1 = TRUE THEN
			TPWrite "Part Selected ==> NoPartSide1";	
        ELSEIF bSkid50 = TRUE THEN
            TPWrite "Part Selected ==> Skid 50 ";
        ELSEIF bSkid100 = TRUE THEN
            TPWrite "Part Selected ==> Skid 100 ";
        ELSEIF bSkid200 = TRUE THEN
            TPWrite "Part Selected ==> Skid 200 ";
        ELSEIF bSide1A100 = TRUE THEN
            TPWrite "Part Selected ==> SS100 Side 1A ";
        ELSEIF bSide1A200 = TRUE THEN
            TPWrite "Part Selected ==> SS200 Side 1A ";
        ELSEIF bLongWeld = TRUE THEN
            TPWrite "Part Selected ==> LongWeld Side 1 ";
		ELSE
			TPWrite "Part Selected ==>No Parts Selected Side1";
		ENDIF
        
		IF A_onlySide2 = TRUE THEN
			TPWrite "Part Selected ==> A Pos only Side2";
           ELSEIF B_onlySide2 = TRUE THEN
			TPWrite "Part Selected ==> B Pos only Side2";
		ELSEIF AB_Side2 = TRUE THEN
			TPWrite "Part Selected ==> A&B Selected Side2";
		ELSEIF bNoPartSide2 = TRUE THEN
			TPWrite "Part Selected ==> NoPartSide2";
        ELSEIF bRover = TRUE THEN
            TPWrite "Part Selected ==> Rover";
        ELSE
			TPWrite "Part Selected ==>No Parts Selected Side2";
		ENDIF
	!	TPWrite "Count Side1 ==> "\Num:=regPartsCountSide1;
	!	TPWrite "Count Side2 ==> "\Num:=regPartsCountSide2;
    
    ! Copyright Automotive Robotics Company  - All Rights Reserved
    ! File: GNC
    ! Date: 06-2013
    ! Revised: 08-2014
    ! Customer: GNC
    !	Robot Ser# 2600-501273
    !	System Pack  5
    ! Language: Rapid - RobotWare
    ! Author: Steven V. Duran
    ! Revision:B
    ! Modified:5-2014
    !
    ! 
		ENDPROC
	PROC rResetPartsCount1()
		regPartsCountSide1 := 0;
	ENDPROC
	PROC rResetPartsCount2()
		regPartsCountSide2 := 0;
	ENDPROC

 PROC rGetOffsetS1()
    TPErase;
    TPWrite "***************************";
    TPWrite "*!! GNC Industries Inc. !!*";
    TPWrite "***************************";
    TPWrite " ";
    TPWrite "     STATION ONE ";
    TPWrite "Enter Offset Value in mm ";
    TPWrite "0 to 195 Valid Entries   ";
    TPReadNum regYskipValOrgS1,"";
    WHILE regYskipValOrgS1 <= -1 OR regYskipValOrgS1 >= 195 DO
      rGetOffsetS1;
    ENDWHILE
    regYskipValRightS1:=regYskipValOrgS1;
    regYskipValLeftS1:= 0-regYskipValOrgS1;
    RETURN;
  ENDPROC
  
 PROC rGetOffsetS2()
    TPErase;
    TPWrite "***************************";
    TPWrite "*!! GNC Industries Inc. !!*";
    TPWrite "***************************";
    TPWrite " ";
    TPWrite "     STATION TWO ";
    TPWrite "Enter Offset Value in mm ";
    TPWrite " 0 to 195 Valid Entries";
    TPReadNum regYskipValOrgS2,"";
    WHILE regYskipValOrgS2 <= -1 OR regYskipValOrgS2 >= 195 DO
      rGetOffsetS2;
    ENDWHILE
    regYskipValRightS2:=regYskipValOrgS2;
    regYskipValLeftS2:= 0-regYskipValOrgS2;
    RETURN;
  ENDPROC

  PROC rMSG()
    TPErase;
    TPWrite " Offset Station 1   ==> "\Num:=regYskipValOrgS1;
    TPWrite " Offset Station 2   ==> "\Num:=regYskipValOrgS2;
   ENDPROC
   

        
	PROC rTestPosTop()
	  rResetSta1;
	 ENDPROC
	PROC rTestPosBottom()
	  rResetSta1;
	 ENDPROC


ENDMODULE