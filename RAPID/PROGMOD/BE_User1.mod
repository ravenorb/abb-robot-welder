%%%
  VERSION:1
  LANGUAGE:ENGLISH
%%%

MODULE BE_User1
  TASK PERS tooldata tWeldGun:=[TRUE,[[109.186,-2.80676,376.482],[0.897126,0.00570523,0.441553,-0.0127845]],[5.3,[31.7,-4.1,38.8],[1,0,0,0],0.034,0.069,0.044]];
  LOCAL CONST robtarget pSafePos:=[[980.84,-25.17,1127.55],[0.183045,0.080843,0.979713,-0.0110132],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  TASK PERS jointtarget jtBE_StartPos:=[[-12.0799,15.7414,21.8982,47.0249,70.2549,-121.617],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  TASK PERS jointtarget jtBE_ApprPos:=[[-13.1356,16.1046,21.4278,46.5539,70.9377,-122.141],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
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
