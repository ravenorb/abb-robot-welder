 MODULE MainModule
	
	VAR num regMainmenu01:=0;


	PROC main()
 		rStartup;
		TPErase;
		TPWrite "!!!               GNC                !!!";
		TPWrite "!!!       BUILDING QUALITY PARTS     !!!";
		TPWrite "!!!         WITH QUALITY PEOPLE      !!!";
        TPWrite"The cycle time is ="\Num:=ClkRead(clock1);
		rMainBDisplay;
		TPReadFK regMainmenu01, stEmpty, "Home", "Service", "Tools", "Parts", "Run";
		TEST regMainmenu01
		CASE 1:
			rHome;
		CASE 2:
			rService;
		CASE 3:
			rToolsMenu;
		CASE 4:
			rPartsMenu;
		CASE 5:
			rRun;
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
		!rRUNSide1B;
		WaitTime 0.1;
	ENDPROC
	PROC rB_Pos_Side2()
		TPWrite "B RUNNING S2";
		rRUNSide2B;
		WaitTime 0.1;
	ENDPROC
ENDMODULE
