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
    
ENDMODULE