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
    
	PROC rManual()
		TPErase;
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite "!!!           SAFETY FIRST           !!!";
		TPWrite "!!!                                  !!!";
		TPWrite "!!!      Select Manual Operation     !!!";
		TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
		TPWrite " ";
		TPWrite " ";
		TPReadFK regManualmenu01, stEmpty, "rSetup", stEmpty, "TchCln", "Bullseye", "Return";
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
		
		TPReadFK regSelmenu01, stEmpty, "Skid", "100-200-300 SS", "300", "Other", "Return";
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
		TPReadFK regSelmenu02, stEmpty, stEmpty, "Skid 50", "Skid 100", "Skid 200", "Return";
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
		TPReadFK regSelmenu03, stEmpty, stEmpty, "SS 100 1A", "SS 200 1A", "SS 300 1A", "Return";
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
		TPReadFK regSelmenu04, stEmpty, "Side One", stEmpty, "Side Two", stEmpty, "Return";
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
		TPReadFK regMainmenu03, stEmpty, "A Pos", "B Pos", "A&B Pos", "NoPartsS1", "Return";
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
    		TPReadFK regMainmenu04, stEmpty, "A Pos", "B Pos", "A&B Pos", "NoPartsS2", "Return";
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
		TPReadFK regSelmenu05, stEmpty, stEmpty, "New Weld Prog", "Rover", "LongWeld", "Return";
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
