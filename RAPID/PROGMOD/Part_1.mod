MODULE Part_1
  ! ------------------------------------------------------------------
  ! Single-part welding template
  !
  ! Purpose:
  !   - Run one part only (no multi-part branching)
  !   - Keep nozzle cleaning and BullsEye tool check available
  !   - Provide a copy/paste starting point for new part files
  !
  ! Dependencies:
  !   - LogicZ (home/safe/pounce positions + rTC2013)
  !   - BE_User1 (BECheckToolb for BullsEye)
  !   - mTSC (optional torch cleaner if you prefer MechCleanGun)
  ! ------------------------------------------------------------------

  LOCAL PERS bool bUseTorchClean := TRUE;
  LOCAL PERS bool bUseBullseye := TRUE;

  ! Placeholder weld/seam data for the template. Replace with real values.
  LOCAL TASK PERS welddata weldPart := [0,0,[1,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0]];
  LOCAL TASK PERS seamdata seamPart := [1,1,[1,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];

  ! Placeholder targets for the weld path. Replace with taught points.
  CONST robtarget pPartApproach := [[-514.49,-897.92,-127.68],[0.230166,-0.665843,-0.672051,-0.22809],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartStart := [[-513.42,-896.95,-136.62],[0.210767,-0.657306,-0.686363,-0.228983],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartEnd := [[-481.07,-897.11,-138.20],[0.210746,-0.657346,-0.686325,-0.229001],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartDepart := [[-479.64,-891.87,-91.90],[0.200495,-0.679391,-0.672743,-0.213649],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  PROC RunPart_1()
    TPWrite "Single-part template start";

    ! Optional BullsEye tool check before running a part.
    IF bUseBullseye THEN
      BECheckToolb;
    ENDIF

    ! Optional nozzle cleaning/reaming before the part weld.
    IF bUseTorchClean THEN
      rTC2013;
      ! Alternative: MechCleanGun;  ! From mTSC.mod
    ENDIF

    MoveJ pHomePos, v800, fine, tWeldGun;
    MoveJ pSafeS1, v800, fine, tWeldGun;
    MoveJ pPounceS1, v800, fine, tWeldGun;

    ! ----------------------------------------------------------------
    ! Single-part weld path (edit only the weld start/end points).
    ! ----------------------------------------------------------------
    MoveL pPartApproach, v200, z10, tWeldGun;
    ArcLStart pPartStart, v30, seamPart, weldPart, fine, tWeldGun;
    ArcLEnd pPartEnd, v30, seamPart, weldPart, fine, tWeldGun;
    MoveL pPartDepart, v200, z10, tWeldGun;

    MoveJ pSafeS1, v800, fine, tWeldGun;
    MoveJ pHomePos, v800, fine, tWeldGun;

    TPWrite "Single-part template complete";
  ENDPROC
ENDMODULE
