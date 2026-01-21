%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE BE_User1
  TASK PERS tooldata tWeldGun:=[TRUE,[[91.6931,0.827393,389.803],[0.922078,-0.000834299,0.387004,-0.000212223]],[5.3,[31.7,-4.1,38.8],[1,0,0,0],0.034,0.069,0.044]];
  LOCAL CONST robtarget pSafePos:=[[980.84,-25.17,1127.55],[0.183045,0.080843,0.979713,-0.0110132],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  TASK PERS jointtarget jtBE_StartPos:=[[-13.8821,17.2432,23.3231,47.0265,69.2824,-124.92],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  TASK PERS jointtarget jtBE_ApprPos:=[[-13.8822,12.5789,18.4865,44.8773,75.8942,-117.766],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST be_device devYokeUp1:=["diBE_SEN1",TRUE,[6,45,100,100],[40,45,100,100],0.1,FALSE,TRUE,TRUE];
  ! BullsEye for robot 1   
  
  
  PROC BESetUpToolb()
    !MoveToHomePos;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    Stop;
    BESetupToolJ jtBE_ApprPos,jtBE_StartPos,14,tdMigDefault,scanBullsMig,devYokeUp1,v200,fine,tWeldGun;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    !MoveToHomePos;
  ENDPROC

  PROC BEUpdateToolb()
    !MoveToHomePos;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    BEUpdateTcp tWeldGun\XYZOnly;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    !MoveToHomePos;
  ENDPROC

  PROC BECheckToolb()
    !MoveToHomePos;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    BECheckTcp tWeldGun\XYZOnly\SingleScan;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    !MoveToHomePos;
  ENDPROC

  PROC BERefPntb()
    !MoveToHomePos;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    BERefPointer tWeldGun;
    MoveJ [[837.58,37.34,1429.48],[0.330224,-0.0598726,0.941203,-0.0387938],[0,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tWeldGun;
    !MoveToHomePos;
  ENDPROC


ENDMODULE
