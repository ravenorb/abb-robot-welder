MODULE Part_3
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
  LOCAL PERS welddata weldPart := [0,0,[1,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0]];
  LOCAL PERS seamdata seamPart := [1,1,[1,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];

  ! Placeholder targets for the weld path. Replace with taught points.
  LOCAL CONST robtarget pPartApproach := [[-512.18,-856.47,-124.70],[0.238884,-0.653044,-0.673688,-0.250226],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartStart := [[-513.54,-858.91,-136.72],[0.215398,-0.662814,-0.680722,-0.225612],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartEnd := [[-338.32,-860.21,-136.79],[0.215451,-0.662739,-0.68078,-0.225604],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartDepart := [[-339.56,-873.86,-125.98],[0.215452,-0.662777,-0.680806,-0.225413],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  PROC RunPart_3()
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
