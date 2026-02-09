 MODULE Side_Menus
     
	VAR num regMainmenu02:=0;
    VAR num regMainmenu03:=0;
    VAR num regMainmenu04:=0;
 
    
    VAR num regSelmenu01:=0;
    VAR num regSelmenu02:=0;
    VAR num regSelmenu03:=0;
    VAR num regSelmenu04:=0;
    VAR num regSelmenu05:=0;
    
    VAR num regManualmenu01:=0;
    VAR num regManualmenu02:=0;
    VAR num regManualmenu03:=0;
    VAR num regManualmenu04:=0;
    VAR num regPositionMenu:=0;
    VAR num regUtilitiesMenu:=0;
    VAR num regSetupMenu:=0;
    VAR num regRunMenu:=0;
    VAR num regProductionMenu:=0;
    VAR num regProductionRunMenu:=0;
    VAR num regProductionPreviewMenu:=0;
    VAR num regTeachingMenu:=0;
    VAR num regLoadSaveMenu:=0;
    VAR num regOrientationMenu:=0;
    VAR num regFrameMenu:=0;
    VAR num regSafePosMenu:=0;
    VAR num regSpeedMenu:=0;
    VAR num regSpeedTypeMenu:=0;

	PROC rProductionMenu()
		TPErase;
		TPWrite "Production Menu";
		TPReadFK regProductionMenu, stEmpty, "Run", "Preview", "Utilities Menu", "Return";
		TEST regProductionMenu
		CASE 1:
			rProductionRunMenu;
		CASE 2:
			rProductionPreviewMenu;
		CASE 3:
			rUtilitiesMenu;
		CASE 4:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rProductionRunMenu()
		TPErase;
		TPWrite "Run";
		TPReadFK regProductionRunMenu, stEmpty, "Auto From Beginning", "Auto From Part# / Weld#", "Opt Stop From Beginning", "Opt Stop From Part# / Weld#", "Return";
		TEST regProductionRunMenu
		CASE 1:
			rRun;
		CASE 2:
			rSelFrame;
			rRun;
		CASE 3:
			rRun;
		CASE 4:
			rSelFrame;
			rRun;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rProductionPreviewMenu()
		TPErase;
		TPWrite "Preview";
		TPReadFK regProductionPreviewMenu, stEmpty, "Fly/Dry From Beginning", "Fly/Dry From Part# / Weld#", "Opt Stop From Beginning", "Opt Stop From Part# / Weld#", "Return";
		TEST regProductionPreviewMenu
		CASE 1:
			PreviewEnabledParts;
		CASE 2:
			PreviewOrigin;
		CASE 3:
			PreviewEnabledParts;
		CASE 4:
			PreviewOrigin;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rTeachingMenu()
		TPErase;
		TPWrite "Teaching Menu";
		TPReadFK regTeachingMenu, stEmpty, "Edit Origin", "Wipe Origin", "Return";
		TEST regTeachingMenu
		CASE 1:
			TeachMenu;
		CASE 2:
			WipeOrigin;
		CASE 3:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rLoadSaveMenu()
		TPErase;
		TPWrite "Load/Save Module Menu";
		TPReadFK regLoadSaveMenu, stEmpty, "Load Module", "Save Module", "Void Module", "Rename Module", "Return";
		TEST regLoadSaveMenu
		CASE 1:
			TPWrite "Load Module not configured.";
		CASE 2:
			TPWrite "Save Module not configured.";
		CASE 3:
			TPWrite "Void Module not configured.";
		CASE 4:
			TPWrite "Rename Module not configured.";
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rPositionMenu()
		TPErase;
		TPWrite "Position Menu";
		TPReadFK regPositionMenu, stEmpty, "Home", "Service", "BullsEye ck", "Fixture ck", "Return";
		TEST regPositionMenu
		CASE 1:
			rHome;
		CASE 2:
			rService;
		CASE 3:
			MoveJ pBullseye, v200, fine, tWeldGun;
		CASE 4:
			MoveJ pFixtureCheck, v200, fine, tWeldGun;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rUtilitiesMenu()
		TPErase;
		TPWrite "Utilities Menu";
		TPReadFK regUtilitiesMenu, stEmpty, "Align Torch", "Clean Torch", "BullsEye ck", "Fixture ck", "Return";
		TEST regUtilitiesMenu
		CASE 1:
			BECheckToolb;
		CASE 2:
			rTC2013;
		CASE 3:
			BESetUpToolb;
		CASE 4:
			rTorchSetup;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rSetupMenu()
		TPErase;
		TPWrite "Setup Menu";
		TPReadFK regSetupMenu, stEmpty, "Work Origin", "Preset Positions", "Weld Config", "Speeds", "Return";
		TEST regSetupMenu
		CASE 1:
			rFrameMenu;
		CASE 2:
			rSafePosMenu;
		CASE 3:
			rWeldConfigMenu;
		CASE 4:
			rSpeedsMenu;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rOrientationMenu()
		TPErase;
		TPWrite "Torch Angle";
		TPReadFK regOrientationMenu, stEmpty, "Y + Side", "Y - Side", "Y Centered", "X + Side", "X - Side", "X Centered";
		TEST regOrientationMenu
		CASE 1:
			TeachOrientation T_OLEFT;
		CASE 2:
			TeachOrientation T_ORIGHT;
		CASE 3:
			TeachOrientation T_OYMID;
		CASE 4:
			TeachOrientation T_ODOWN;
		CASE 5:
			TeachOrientation T_OUP;
		CASE 6:
			TeachOrientation T_OXMID;
		ENDTEST
	ENDPROC

	PROC rWeldConfigMenu()
		TPErase;
		TPWrite "Weld Config";
		TPReadFK regOrientationMenu, stEmpty, "Torch Angle", "Weld Presets", "Weave Presets", "Seam Presets", "Return";
		TEST regOrientationMenu
		CASE 1:
			rOrientationMenu;
		CASE 2:
			ShowWeldDefaults;
		CASE 3:
			ShowWeldDefaults;
		CASE 4:
			ShowWeldDefaults;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rOrientationMenuLegacy()
		TPErase;
		TPWrite "Orientation Setup";
		TPReadFK regOrientationMenu, stEmpty, "Left", "Right", "Up", "Down", "YMid", "XMid";
		TEST regOrientationMenu
		CASE 1:
			TeachOrientation T_OLEFT;
		CASE 2:
			TeachOrientation T_ORIGHT;
		CASE 3:
			TeachOrientation T_OUP;
		CASE 4:
			TeachOrientation T_ODOWN;
		CASE 5:
			TeachOrientation T_OYMID;
		CASE 6:
			TeachOrientation T_OXMID;
		ENDTEST
	ENDPROC

	PROC rFrameMenu()
		VAR num partNum;
		TPErase;
		TPWrite "Work Origin - Select Origin (1-6)";
		TPReadNum partNum, "";
		IF partNum = 1 THEN
			TPWrite "Origin 1";
			TPWrite "Base:  "\Pos:=P01Origin.trans;
			TPWrite "Limit: "\Pos:=P01Max.trans;
			TPWrite "Z-Plane: "\Pos:=P01Zoff.trans;
			TPWrite "WObj:  wobjP01";
			SetupP01;
		ELSEIF partNum = 2 THEN
			TPWrite "Origin 2";
			TPWrite "Base:  "\Pos:=P02Origin.trans;
			TPWrite "Limit: "\Pos:=P02Max.trans;
			TPWrite "Z-Plane: "\Pos:=P02Zoff.trans;
			TPWrite "WObj:  wobjP02";
			SetupP02;
		ELSEIF partNum = 3 THEN
			TPWrite "Origin 3";
			TPWrite "Base:  "\Pos:=P03Origin.trans;
			TPWrite "Limit: "\Pos:=P03Max.trans;
			TPWrite "Z-Plane: "\Pos:=P03Zoff.trans;
			TPWrite "WObj:  wobjP03";
			SetupP03;
		ELSEIF partNum = 4 THEN
			TPWrite "Origin 4";
			TPWrite "Base:  "\Pos:=P04Origin.trans;
			TPWrite "Limit: "\Pos:=P04Max.trans;
			TPWrite "Z-Plane: "\Pos:=P04Zoff.trans;
			TPWrite "WObj:  wobjP04";
			SetupP04;
		ELSEIF partNum = 5 THEN
			TPWrite "Origin 5";
			TPWrite "Base:  "\Pos:=P05Origin.trans;
			TPWrite "Limit: "\Pos:=P05Max.trans;
			TPWrite "Z-Plane: "\Pos:=P05Zoff.trans;
			TPWrite "WObj:  wobjP05";
			SetupP05;
		ELSEIF partNum = 6 THEN
			TPWrite "Origin 6";
			TPWrite "Base:  "\Pos:=P06Origin.trans;
			TPWrite "Limit: "\Pos:=P06Max.trans;
			TPWrite "Z-Plane: "\Pos:=P06Zoff.trans;
			TPWrite "WObj:  wobjP06";
			SetupP06;
		ENDIF
	ENDPROC

	PROC rSafePosMenu()
		TPErase;
		TPWrite "Preset Positions";
		TPReadFK regSafePosMenu, stEmpty, "Park 1", "Tool Reference 1", "Torch Station", "BullsEye Station", "Frame Reference 1", "Return";
		TEST regSafePosMenu
		CASE 1:
			TeachSafePos 1;
		CASE 2:
			TeachSafePos 2;
		CASE 3:
			TeachSafePos 3;
		CASE 4:
			TeachSafePos 4;
		CASE 5:
			TeachSafePos 5;
		CASE 6:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rSpeedsMenu()
		TPErase;
		TPWrite "Speeds Menu";
		TPReadFK regSpeedMenu, stEmpty, "Preview", "Production", "Return";
		TEST regSpeedMenu
		CASE 1:
			EditSpeedMenu 1;
		CASE 2:
			EditSpeedMenu 2;
		CASE 3:
			RETURN;
		ENDTEST
	ENDPROC

	PROC rRunMenu()
		TPErase;
		ShowRunSummary;
		TPReadFK regRunMenu, stEmpty, "Run Parts", "Preview", "Edit", "Teach", "Reset", "Return";
		TEST regRunMenu
		CASE 1:
			rRun;
		CASE 2:
			PreviewEnabledParts;
		CASE 3:
			EditPartSettings;
		CASE 4:
			TeachMenu;
		CASE 5:
			ResetMenu;
		CASE 6:
			RETURN;
		ENDTEST
	ENDPROC
    
	PROC rManual()
		TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!           SAFETY FIRST           !!!";
		TPWrite "!!!                                  !!!";
		TPWrite "!!!      Select Manual Operation     !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite " ";
		TPWrite " ";
		TPReadFK regManualmenu01, "Select Function", "rSetup", "", "TchCln", "Bullseye", "Return";
		TEST regManualmenu01
		CASE 1:
			rSetup;
			regManualmenu01:=0;
		CASE 2:
			regManualmenu01:=0;
		CASE 3:
			rTC2013;
			regManualmenu01:=0;
			RETURN;
		CASE 4:
			BECheckToolb;
			regManualmenu01:=0;
			RETURN;
		CASE 5:
			regManualmenu01:=0;
			RETURN;
		ENDTEST
	ENDPROC
    
	PROC rSelFrame()
		TPErase;
		TPWrite "!!!               GNC                !!!";
		TPWrite "!!!       BUILDING QUALITY PARTS     !!!";
		TPWrite "!!!         WITH QUALITY PEOPLE      !!!";
		
		TPReadFK regSelmenu01, "Select Product Type", "Skid", "100-200-300 SS", "300", "Other", "Return";
		TEST regSelmenu01
		CASE 1:
			rSelSkids;
		CASE 2:
			rSelPrg100;
		CASE 3:
			rSelPrg300;
		CASE 4:
			rSelOther;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC   
        PROC rSelSkids()
	     TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!       Building Quality Parts     !!!";
		TPWrite "!!!        Select Parts to Run       !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		rSelSkidBDisplay;
		TPReadFK regSelmenu02, "Select Skid Size", stEmpty, "Skid 50", "Skid 100", "Skid 200", "Return";
		TEST regSelmenu02
		CASE 1:
			    rSelSkids;
		CASE 2:
			rResetBoolS1;
                bSkid50 := TRUE;
			    rSelSkids;
		CASE 3:
			rResetBoolS1;
                bSkid100 := TRUE;
			rSelSkids;
		CASE 4:
			rResetBoolS1;
                bSkid200 := TRUE;
			rSelSkids;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC
        PROC rSelPrg100()
	     TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!       Building Quality Parts     !!!";
		TPWrite "!!!        Select Parts to Run       !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		rSelPrg100BDisplay;
		TPReadFK regSelmenu03, "Select program to run", stEmpty, "SS 100 1A", "SS 200 1A", "SS 300 1A", "Return";
		TEST regSelmenu03
		CASE 1:
			
			rSelPrg100;
		CASE 2:
			rResetBoolS1;
            bSide1A100 := TRUE;
			rSelPrg100;
		CASE 3:
			rResetBoolS1;
            bSide1A200 := TRUE;
			rSelPrg100;
        CASE 4:
            rResetBoolS1;
            bSide1A300 := TRUE;
            rSelPrg100;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC
	    PROC rSelPrg300()
	     TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!       Building Quality Parts     !!!";
		TPWrite "!!!        Select Parts to Run       !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPReadFK regSelmenu04, "Select Side", "Side One", stEmpty, "Side Two", stEmpty, "Return";
		TEST regSelmenu04
		CASE 1:
			rSide1Menu;
			
		CASE 2:
			rResetPartsCount1;
			rSelPrg300;
		CASE 3:
			rSide2Menu;
			
		CASE 4:
			rResetPartsCount2;
			rSelPrg300;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC
	        PROC rSide1Menu()
	     TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!         Side One Parts           !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "";
		rDisplayBoolS1;
		TPReadFK regMainmenu03, "Select Parts to run", "A Pos", "B Pos", "A&B Pos", "NoPartsS1", "Return";
		TEST regMainmenu03
		CASE 1:
			rResetBoolS1;
                A_onlySide1 := TRUE;
                rSide1Menu;
		CASE 2:
			rResetBoolS1;
			B_onlySide1 := TRUE;
			rSide1Menu;
		CASE 3:
			rResetBoolS1;
			AB_Side1 := TRUE;
			rSide1Menu;
		CASE 4:
			rResetBoolS1;
			bNoPartSide1 := TRUE;
			rSide1Menu;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC
            PROC rSide2Menu()
    	     TPErase;
    		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
    		TPWrite "!!!         Side Two Parts           !!!";
    		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
    		TPWrite "";
    		rDisplayBoolS2;
    		TPReadFK regMainmenu04, "Select Parts to run", "A Pos", "B Pos", "A&B Pos", "NoPartsS2", "Return";
              TEST regMainmenu04
    		CASE 1:
    			rResetBoolS2;
                    A_onlySide2 := TRUE;
                    rSide2Menu;
    		CASE 2:
    			rResetBoolS2;
    			B_onlySide2 := TRUE;
    			rSide2Menu;
    		CASE 3:
    			rResetBoolS2;
    			AB_Side2 := TRUE;
    			rSide2Menu;
    		CASE 4:
    			rResetBoolS2;
    			bNoPartSide2 := TRUE;
    			rSide2Menu;
    		CASE 5:
    			RETURN;
    		ENDTEST
    
    
    	ENDPROC
        PROC rSelOther()
	     TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!       Building Quality Parts     !!!";
		TPWrite "!!!        Select Parts to Run       !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		rSelOtherBDisplay;
		TPReadFK regSelmenu05, "Select Part", stEmpty, "New Weld Prog", "Rover", "LongWeld", "Return";
		TEST regSelmenu05
		CASE 1:
			rSelOther;
		CASE 2:
			mainweld;
			rSelOther;
		CASE 3:
			!rResetBoolS2;
            IF bRover = FALSE THEN
                    bRover := TRUE; 
                ELSEIF bRover =TRUE THEN
                    bRover := FALSE;
                ENDIF
			    rSelOther;
		CASE 4:
			rResetBoolS1;
                    bLongWeld := TRUE;
			    rSelOther;
		CASE 5:
			RETURN;
		ENDTEST
	ENDPROC    
ENDMODULE
