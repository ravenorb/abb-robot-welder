
MODULE ProgSide1
    !setup for 300ss
    RECORD WeldPoint300
    robtarget trans;
    robtarget approach;
    robtarget start;
    robtarget end;
    robtarget exitt;
    seamdata seamiii;
    welddata weldiii;
    ENDRECORD
    PERS WeldPoint300 wp300{40};
    PERS num WeldiiiCount := 0;	
	PERS seamdata seam13:=[1,1,[1,0,14,127,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];
	PERS welddata weld13:=[6.90033,6.90033,[1,0,19,110.71,0,0,0,0,0],[0,0,18.5,110.71,0,0,0,0,0]];
    PERS weavedata weave1:=[1,1,3.81,5.08,1.778,0,0,0,0,0,0,0,0,0,0];
	
    PROC rTeach()
        <SMT>
    ENDPROC
    PROC rRUNSide1A300()
        VAR num i;
            !300 Gallon Space Saver
		TPWrite "Side 1 A";    
        MoveJ pSafeS1, vmax, fine, tWeldGun;
            
    
            FOR i FROM 1 TO WeldiiiCount DO
                
                ! Optional safety check
                IF wp300{i}.start.trans.x <> 0 THEN
                    RunWeld(i);
                ENDIF
            
            ENDFOR
		MoveJ pSafeS1, vmax, fine, tWeldGun;
	ENDPROC
    


PROC RunWeld(num i)

    MoveJ wp300{i}.trans, vmax, z50, tWeldGun;
    MoveJ wp300{i}.approach, vmax, z10, tWeldGun;
    MoveL wp300{i}.start, v50, z5, tWeldGun;
    ArcLStart wp300{i}.start, v5, wp300{i}.seamiii, wp300{i}.weldiii\Weave:=weave1, fine, tWeldGun;
    ArcLEnd   wp300{i}.end,   v5, wp300{i}.seamiii, wp300{i}.weldiii\Weave:=weave1, fine, tWeldGun;
    MoveL wp300{i}.exitt, v50, z5, tWeldGun;
ENDPROC

    
ENDMODULE
