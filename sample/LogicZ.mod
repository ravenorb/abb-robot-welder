                                            
MODULE LogicZ
	CONST robtarget pPark:=[[877.74,-1.13,1156.40],[0.00630492,0.00175109,0.999978,-0.00049176],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pSafeS1:=[[82.84,919.33,1175.90],[0.326608,0.635474,-0.637382,0.288521],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pSafeS2:=[[-13.04,-947.27,1114.93],[0.0492264,0.710875,0.699723,-0.051199],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pPounceS1:=[[44.14,948.67,577.59],[0.0459887,-0.688396,0.722623,0.0425714],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pPounceS2:=[[-13.05,-947.27,590.98],[0.0492199,0.71087,0.699727,-0.0512126],[-2,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pHomePos:=[[877.74,-1.12,1156.39],[0.00629838,0.001748,0.999978,-0.000488105],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pServiceS1:=[[-139.48,-775.51,888.19],[0.0651308,-0.76387,-0.637482,-0.0766646],[-2,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pSVCs1:=[[455.65,-140.80,351.09],[0.0313309,-0.185516,-0.982,-0.016678],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pAtReamer:=[[1039.53,-98.06,-74.23],[0.00477736,0.0423196,-0.99906,0.00808312],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pReamerPounce:=[[1038.34,-98.07,11.79],[0.00476329,0.0423182,-0.99906,0.00808266],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];  
	CONST robtarget pWireCutterPounce:=[[1175.35,-119.56,-107.51],[0.0115519,-0.0317514,0.999402,-0.00740941],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pWireCutterApproach:=[[1148.86,-124.46,-111.06],[0.0308489,-0.23618,0.971138,0.0125575],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];	
	CONST robtarget pWireCut:=[[1175.35,-119.56,-127.71],[0.011553,-0.0317519,0.999402,-0.00740939],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
	ENDPROC
    
!xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    PROC rRun()
        ClkReset clock1;
        ClkStart clock1;
        rRUNSide1A300;
        ClkStop clock1;
    ENDPROC
     
     PROC rResetSta1()
		Reset doOpRdy1Out;
   		WaitTime 0.2;
		Set doOpRdy1Out;
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

	PROC rResetPartsCount1()
		regPartsCountSide1 := 0;
	ENDPROC



ENDMODULE