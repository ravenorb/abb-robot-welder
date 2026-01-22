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
		TPReadFK regMainmenu01, stEmpty, "Home", "Service", "Nozzle Cln", "Parts", "Run";
		TEST regMainmenu01
		CASE 1:
			rHome;
		CASE 2:
			rService;
		CASE 3:
			rTC2013;
		CASE 4:
			rPartsMenu;
		CASE 5:
			rRun;
		ENDTEST
	ENDPROC
ENDMODULE
