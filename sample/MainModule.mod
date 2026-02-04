 MODULE MainModule
	
	VAR num regMainmenu01:=0;


	PROC main()
 		rStartup;
		TPErase;
		TPWrite "!!!               GNC                !!!";
		TPWrite "!!!       BUILDING QUALITY PARTS     !!!";
		TPWrite "!!!         WITH QUALITY PEOPLE      !!!";
        TPWrite "The cycle time is =" \Num:=ClkRead(clock1);
		TPReadFK regMainmenu01, stEmpty, "Home", "Service", "Tool", "Teach", "Run";
		TEST regMainmenu01
		CASE 1:
			rHome;
		CASE 2:
			rService;
		CASE 3:
			rManual;
		CASE 4:
			rTeach;
		CASE 5:
			rRun;
		ENDTEST
	ENDPROC
    
ENDMODULE
