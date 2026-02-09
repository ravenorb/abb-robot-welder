MODULE MainModule
	
	VAR num regMainmenu01:=0;
    VAR string fileName := "MainModule";


	PROC main()
 		rStartup;
		TPErase;
		TPWrite "!!!          GNC INDUSTRIES               !!!";
		TPWrite "!!!     SPRAYER FRAME WELDING    !!!";
		TPWrite "!!!         ", fileName, "      !!!";
        TPWrite "The cycle time is ="\Num:=ClkRead(clock1);
		rMainBDisplay;
		TPReadFK regMainmenu01, stEmpty, "Production", "Setup", "Teaching", "Position", "Load/Save";
		TEST regMainmenu01
		CASE 1:
			rProductionMenu;
		CASE 2:
			rSetupMenu;
		CASE 3:
			rTeachingMenu;
		CASE 4:
			rPositionMenu;
		CASE 5:
			rLoadSaveMenu;
		ENDTEST
	ENDPROC
    	PROC rA_Pos_Side1()
		TPWrite "A RUNNING S1";
		rRUNSide1A;
		WaitTime 0.1;
	ENDPROC
	PROC rA_Pos_Side2()
		TPWrite "A RUNNING S2";
		rRUNSide2A;
		WaitTime 0.1;
	ENDPROC
	PROC rB_Pos_Side1()
		TPWrite "B RUNNING S1";
		rRUNSide1B;
		WaitTime 0.1;
	ENDPROC
	PROC rB_Pos_Side2()
		TPWrite "B RUNNING S2";
		rRUNSide2B;
		WaitTime 0.1;
	ENDPROC
ENDMODULE
