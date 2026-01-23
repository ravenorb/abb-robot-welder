MODULE Part_10
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
  LOCAL CONST robtarget pPartApproach := [[286.40,-910.85,-115.99],[0.24696,-0.649475,-0.670149,-0.260949],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartStart := [[287.09,-901.24,-138.12],[0.20011,-0.665429,-0.68641,-0.214478],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartEnd := [[319.26,-901.70,-138.51],[0.200189,-0.665343,-0.686488,-0.214425],[-1,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartDepart := [[324.35,-903.06,-116.80],[0.246972,-0.649396,-0.670267,-0.260831],[-1,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  PROC RunPart_10()
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
      MoveL DryRunTarget(pPartApproach), v200, z10, tWeldGun\WObj:=wobjPart10;
      MoveL DryRunTarget(pPartStart), v200, z10, tWeldGun\WObj:=wobjPart10;
      MoveL DryRunTarget(pPartEnd), v200, z10, tWeldGun\WObj:=wobjPart10;
      MoveL DryRunTarget(pPartDepart), v200, z10, tWeldGun\WObj:=wobjPart10;
    ELSE
      MoveL pPartApproach, v200, z10, tWeldGun\WObj:=wobjPart10;
      ArcLStart pPartStart, v30, seamPart, weldPart, fine, tWeldGun\WObj:=wobjPart10;
      ArcLEnd pPartEnd, v30, seamPart, weldPart, fine, tWeldGun\WObj:=wobjPart10;
      MoveL pPartDepart, v200, z10, tWeldGun\WObj:=wobjPart10;
    ENDIF

    MoveJ pSafeS1, v800, fine, tWeldGun;
    MoveJ pHomePos, v800, fine, tWeldGun;

    TPWrite "Single-part template complete";
  ENDPROC
ENDMODULE
