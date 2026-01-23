MODULE Part_4
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
  LOCAL CONST robtarget pPartApproach := [[-336.25,-871.19,-128.23],[0.0916487,-0.841258,-0.420907,-0.326687],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartStart := [[-338.59,-862.58,-134.25],[0.091653,-0.841261,-0.420909,-0.326675],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartEnd := [[-343.89,-887.38,-134.91],[0.00905831,0.920106,0.0370212,0.389812],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartDepart := [[-340.52,-888.78,-94.76],[0.0606807,0.91536,0.0671192,0.392339],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  PROC RunPart_4()
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
    IF bDryRun THEN
      MoveL DryRunTarget(pPartApproach), v200, z10, tWeldGun\WObj:=wobjPart4;
      MoveL DryRunTarget(pPartStart), v200, z10, tWeldGun\WObj:=wobjPart4;
      MoveL DryRunTarget(pPartEnd), v200, z10, tWeldGun\WObj:=wobjPart4;
      MoveL DryRunTarget(pPartDepart), v200, z10, tWeldGun\WObj:=wobjPart4;
    ELSE
      MoveL pPartApproach, v200, z10, tWeldGun\WObj:=wobjPart4;
      ArcLStart pPartStart, v30, seamPart, weldPart, fine, tWeldGun\WObj:=wobjPart4;
      ArcLEnd pPartEnd, v30, seamPart, weldPart, fine, tWeldGun\WObj:=wobjPart4;
      MoveL pPartDepart, v200, z10, tWeldGun\WObj:=wobjPart4;
    ENDIF

    MoveJ pSafeS1, v800, fine, tWeldGun;
    MoveJ pHomePos, v800, fine, tWeldGun;

    TPWrite "Single-part template complete";
  ENDPROC
ENDMODULE
