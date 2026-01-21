MODULE Part_9
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

  PERS bool bUseTorchClean := TRUE;
  PERS bool bUseBullseye := TRUE;

  ! Placeholder weld/seam data for the template. Replace with real values.
  TASK PERS welddata weldPart := [0,0,[1,0,0,0,0,0,0,0,0],[0,0,0,0,0,0,0,0,0]];
  TASK PERS seamdata seamPart := [1,1,[1,0,0,0,0,0,0,0,0],0,0,0,0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0,0,[0,0,0,0,0,0,0,0,0],0];

  ! Placeholder targets for the weld path. Replace with taught points.
  CONST robtarget pPartApproach := [[5.70,-898.13,-125.58],[0.246931,-0.64953,-0.670081,-0.261012],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartStart := [[5.30,-897.90,-137.78],[0.203047,-0.669211,-0.681329,-0.216148],[-2,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartEnd := [[39.29,-898.07,-137.00],[0.203054,-0.669216,-0.681319,-0.216158],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  CONST robtarget pPartDepart := [[40.66,-920.62,70.48],[0.246699,-0.649617,-0.670207,-0.260692],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
  PROC RunPart_9()
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

    MoveJ LogicZ::pHomePos, v800, fine, tWeldGun;
    MoveJ LogicZ::pSafeS1, v800, fine, tWeldGun;
    MoveJ LogicZ::pPounceS1, v800, fine, tWeldGun;

    ! ----------------------------------------------------------------
    ! Single-part weld path (edit only the weld start/end points).
    ! ----------------------------------------------------------------
    MoveL pPartApproach, v200, z10, tWeldGun;
    ArcLStart pPartStart, v30, seamPart, weldPart, fine, tWeldGun;
    ArcLEnd pPartEnd, v30, seamPart, weldPart, fine, tWeldGun;
    MoveL pPartDepart, v200, z10, tWeldGun;

    MoveJ LogicZ::pSafeS1, v800, fine, tWeldGun;
    MoveJ LogicZ::pHomePos, v800, fine, tWeldGun;

    TPWrite "Single-part template complete";
  ENDPROC
ENDMODULE
