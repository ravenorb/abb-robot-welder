MODULE WeldProgram

    ! =========================
    ! ======= SAFE POS ========
    ! =========================
    PERS robtarget pSafeS1Weld := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pSetup  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pBullseye := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! =========================
    ! == ORIENTATION POSES ====
    ! =========================
    PERS robtarget pOri_Left := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pOri_Right:= [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pOri_Up   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pOri_Down := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pOri_yMid := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget pOri_xMid := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! =========================
    ! ===== PART FRAMES =======
    ! =========================
    PERS robtarget P01Origin := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01Max    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01Zoff   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS wobjdata wobjP01 := [FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    PERS num nWeldsP01 := 0;

    PERS robtarget P02Origin := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02Max    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02Zoff   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS wobjdata wobjP02 := [FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    PERS num nWeldsP02 := 0;

    PERS robtarget P03Origin := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03Max    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03Zoff   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS wobjdata wobjP03 := [FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    PERS num nWeldsP03 := 0;

    PERS robtarget P04Origin := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04Max    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04Zoff   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS wobjdata wobjP04 := [FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    PERS num nWeldsP04 := 0;

    PERS robtarget P05Origin := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05Max    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05Zoff   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS wobjdata wobjP05 := [FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    PERS num nWeldsP05 := 0;

    PERS robtarget P06Origin := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06Max    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06Zoff   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS wobjdata wobjP06 := [FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    PERS num nWeldsP06 := 0;

    ! =========================
    ! == WELD SLOT STORAGE ====
    ! =========================
    ! ---- P01 weld slots ----
    PERS bool P01W01_Used := FALSE;
    PERS num  P01W01_SubType := 0;
    PERS num  P01W01_ToolSel := 0;
    PERS num  P01W01_LenMM := 0;
    PERS robtarget P01W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W01_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W01_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W01_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W02_Used := FALSE;
    PERS num  P01W02_SubType := 0;
    PERS num  P01W02_ToolSel := 0;
    PERS num  P01W02_LenMM := 0;
    PERS robtarget P01W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W02_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W02_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W02_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W03_Used := FALSE;
    PERS num  P01W03_SubType := 0;
    PERS num  P01W03_ToolSel := 0;
    PERS num  P01W03_LenMM := 0;
    PERS robtarget P01W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W03_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W03_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W03_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W04_Used := FALSE;
    PERS num  P01W04_SubType := 0;
    PERS num  P01W04_ToolSel := 0;
    PERS num  P01W04_LenMM := 0;
    PERS robtarget P01W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W04_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W04_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W04_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W05_Used := FALSE;
    PERS num  P01W05_SubType := 0;
    PERS num  P01W05_ToolSel := 0;
    PERS num  P01W05_LenMM := 0;
    PERS robtarget P01W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W05_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W05_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W05_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W06_Used := FALSE;
    PERS num  P01W06_SubType := 0;
    PERS num  P01W06_ToolSel := 0;
    PERS num  P01W06_LenMM := 0;
    PERS robtarget P01W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W06_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W06_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W06_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W07_Used := FALSE;
    PERS num  P01W07_SubType := 0;
    PERS num  P01W07_ToolSel := 0;
    PERS num  P01W07_LenMM := 0;
    PERS robtarget P01W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W07_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W07_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W07_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W08_Used := FALSE;
    PERS num  P01W08_SubType := 0;
    PERS num  P01W08_ToolSel := 0;
    PERS num  P01W08_LenMM := 0;
    PERS robtarget P01W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W08_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W08_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W08_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W09_Used := FALSE;
    PERS num  P01W09_SubType := 0;
    PERS num  P01W09_ToolSel := 0;
    PERS num  P01W09_LenMM := 0;
    PERS robtarget P01W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W09_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W09_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W09_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W10_Used := FALSE;
    PERS num  P01W10_SubType := 0;
    PERS num  P01W10_ToolSel := 0;
    PERS num  P01W10_LenMM := 0;
    PERS robtarget P01W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W10_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W10_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W10_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W11_Used := FALSE;
    PERS num  P01W11_SubType := 0;
    PERS num  P01W11_ToolSel := 0;
    PERS num  P01W11_LenMM := 0;
    PERS robtarget P01W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W11_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W11_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W11_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W12_Used := FALSE;
    PERS num  P01W12_SubType := 0;
    PERS num  P01W12_ToolSel := 0;
    PERS num  P01W12_LenMM := 0;
    PERS robtarget P01W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W12_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W12_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W12_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W13_Used := FALSE;
    PERS num  P01W13_SubType := 0;
    PERS num  P01W13_ToolSel := 0;
    PERS num  P01W13_LenMM := 0;
    PERS robtarget P01W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W13_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W13_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W13_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W14_Used := FALSE;
    PERS num  P01W14_SubType := 0;
    PERS num  P01W14_ToolSel := 0;
    PERS num  P01W14_LenMM := 0;
    PERS robtarget P01W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W14_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W14_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W14_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W15_Used := FALSE;
    PERS num  P01W15_SubType := 0;
    PERS num  P01W15_ToolSel := 0;
    PERS num  P01W15_LenMM := 0;
    PERS robtarget P01W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W15_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W15_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W15_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W16_Used := FALSE;
    PERS num  P01W16_SubType := 0;
    PERS num  P01W16_ToolSel := 0;
    PERS num  P01W16_LenMM := 0;
    PERS robtarget P01W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W16_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W16_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W16_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W17_Used := FALSE;
    PERS num  P01W17_SubType := 0;
    PERS num  P01W17_ToolSel := 0;
    PERS num  P01W17_LenMM := 0;
    PERS robtarget P01W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W17_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W17_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W17_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W18_Used := FALSE;
    PERS num  P01W18_SubType := 0;
    PERS num  P01W18_ToolSel := 0;
    PERS num  P01W18_LenMM := 0;
    PERS robtarget P01W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W18_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W18_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W18_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W19_Used := FALSE;
    PERS num  P01W19_SubType := 0;
    PERS num  P01W19_ToolSel := 0;
    PERS num  P01W19_LenMM := 0;
    PERS robtarget P01W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W19_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W19_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W19_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W20_Used := FALSE;
    PERS num  P01W20_SubType := 0;
    PERS num  P01W20_ToolSel := 0;
    PERS num  P01W20_LenMM := 0;
    PERS robtarget P01W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W20_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W20_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W20_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W21_Used := FALSE;
    PERS num  P01W21_SubType := 0;
    PERS num  P01W21_ToolSel := 0;
    PERS num  P01W21_LenMM := 0;
    PERS robtarget P01W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W21_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W21_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W21_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W22_Used := FALSE;
    PERS num  P01W22_SubType := 0;
    PERS num  P01W22_ToolSel := 0;
    PERS num  P01W22_LenMM := 0;
    PERS robtarget P01W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W22_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W22_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W22_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W23_Used := FALSE;
    PERS num  P01W23_SubType := 0;
    PERS num  P01W23_ToolSel := 0;
    PERS num  P01W23_LenMM := 0;
    PERS robtarget P01W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W23_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W23_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W23_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W24_Used := FALSE;
    PERS num  P01W24_SubType := 0;
    PERS num  P01W24_ToolSel := 0;
    PERS num  P01W24_LenMM := 0;
    PERS robtarget P01W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W24_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W24_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W24_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W25_Used := FALSE;
    PERS num  P01W25_SubType := 0;
    PERS num  P01W25_ToolSel := 0;
    PERS num  P01W25_LenMM := 0;
    PERS robtarget P01W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W25_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W25_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W25_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W26_Used := FALSE;
    PERS num  P01W26_SubType := 0;
    PERS num  P01W26_ToolSel := 0;
    PERS num  P01W26_LenMM := 0;
    PERS robtarget P01W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W26_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W26_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W26_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W27_Used := FALSE;
    PERS num  P01W27_SubType := 0;
    PERS num  P01W27_ToolSel := 0;
    PERS num  P01W27_LenMM := 0;
    PERS robtarget P01W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W27_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W27_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W27_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W28_Used := FALSE;
    PERS num  P01W28_SubType := 0;
    PERS num  P01W28_ToolSel := 0;
    PERS num  P01W28_LenMM := 0;
    PERS robtarget P01W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W28_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W28_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W28_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W29_Used := FALSE;
    PERS num  P01W29_SubType := 0;
    PERS num  P01W29_ToolSel := 0;
    PERS num  P01W29_LenMM := 0;
    PERS robtarget P01W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W29_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W29_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W29_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P01W30_Used := FALSE;
    PERS num  P01W30_SubType := 0;
    PERS num  P01W30_ToolSel := 0;
    PERS num  P01W30_LenMM := 0;
    PERS robtarget P01W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W30_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W30_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P01W30_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! ---- P02 weld slots ----
    PERS bool P02W01_Used := FALSE;
    PERS num  P02W01_SubType := 0;
    PERS num  P02W01_ToolSel := 0;
    PERS num  P02W01_LenMM := 0;
    PERS robtarget P02W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W01_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W01_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W01_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W02_Used := FALSE;
    PERS num  P02W02_SubType := 0;
    PERS num  P02W02_ToolSel := 0;
    PERS num  P02W02_LenMM := 0;
    PERS robtarget P02W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W02_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W02_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W02_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W03_Used := FALSE;
    PERS num  P02W03_SubType := 0;
    PERS num  P02W03_ToolSel := 0;
    PERS num  P02W03_LenMM := 0;
    PERS robtarget P02W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W03_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W03_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W03_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W04_Used := FALSE;
    PERS num  P02W04_SubType := 0;
    PERS num  P02W04_ToolSel := 0;
    PERS num  P02W04_LenMM := 0;
    PERS robtarget P02W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W04_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W04_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W04_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W05_Used := FALSE;
    PERS num  P02W05_SubType := 0;
    PERS num  P02W05_ToolSel := 0;
    PERS num  P02W05_LenMM := 0;
    PERS robtarget P02W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W05_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W05_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W05_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W06_Used := FALSE;
    PERS num  P02W06_SubType := 0;
    PERS num  P02W06_ToolSel := 0;
    PERS num  P02W06_LenMM := 0;
    PERS robtarget P02W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W06_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W06_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W06_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W07_Used := FALSE;
    PERS num  P02W07_SubType := 0;
    PERS num  P02W07_ToolSel := 0;
    PERS num  P02W07_LenMM := 0;
    PERS robtarget P02W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W07_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W07_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W07_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W08_Used := FALSE;
    PERS num  P02W08_SubType := 0;
    PERS num  P02W08_ToolSel := 0;
    PERS num  P02W08_LenMM := 0;
    PERS robtarget P02W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W08_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W08_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W08_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W09_Used := FALSE;
    PERS num  P02W09_SubType := 0;
    PERS num  P02W09_ToolSel := 0;
    PERS num  P02W09_LenMM := 0;
    PERS robtarget P02W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W09_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W09_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W09_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W10_Used := FALSE;
    PERS num  P02W10_SubType := 0;
    PERS num  P02W10_ToolSel := 0;
    PERS num  P02W10_LenMM := 0;
    PERS robtarget P02W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W10_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W10_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W10_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W11_Used := FALSE;
    PERS num  P02W11_SubType := 0;
    PERS num  P02W11_ToolSel := 0;
    PERS num  P02W11_LenMM := 0;
    PERS robtarget P02W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W11_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W11_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W11_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W12_Used := FALSE;
    PERS num  P02W12_SubType := 0;
    PERS num  P02W12_ToolSel := 0;
    PERS num  P02W12_LenMM := 0;
    PERS robtarget P02W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W12_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W12_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W12_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W13_Used := FALSE;
    PERS num  P02W13_SubType := 0;
    PERS num  P02W13_ToolSel := 0;
    PERS num  P02W13_LenMM := 0;
    PERS robtarget P02W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W13_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W13_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W13_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W14_Used := FALSE;
    PERS num  P02W14_SubType := 0;
    PERS num  P02W14_ToolSel := 0;
    PERS num  P02W14_LenMM := 0;
    PERS robtarget P02W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W14_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W14_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W14_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W15_Used := FALSE;
    PERS num  P02W15_SubType := 0;
    PERS num  P02W15_ToolSel := 0;
    PERS num  P02W15_LenMM := 0;
    PERS robtarget P02W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W15_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W15_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W15_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W16_Used := FALSE;
    PERS num  P02W16_SubType := 0;
    PERS num  P02W16_ToolSel := 0;
    PERS num  P02W16_LenMM := 0;
    PERS robtarget P02W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W16_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W16_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W16_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W17_Used := FALSE;
    PERS num  P02W17_SubType := 0;
    PERS num  P02W17_ToolSel := 0;
    PERS num  P02W17_LenMM := 0;
    PERS robtarget P02W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W17_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W17_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W17_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W18_Used := FALSE;
    PERS num  P02W18_SubType := 0;
    PERS num  P02W18_ToolSel := 0;
    PERS num  P02W18_LenMM := 0;
    PERS robtarget P02W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W18_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W18_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W18_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W19_Used := FALSE;
    PERS num  P02W19_SubType := 0;
    PERS num  P02W19_ToolSel := 0;
    PERS num  P02W19_LenMM := 0;
    PERS robtarget P02W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W19_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W19_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W19_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W20_Used := FALSE;
    PERS num  P02W20_SubType := 0;
    PERS num  P02W20_ToolSel := 0;
    PERS num  P02W20_LenMM := 0;
    PERS robtarget P02W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W20_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W20_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W20_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W21_Used := FALSE;
    PERS num  P02W21_SubType := 0;
    PERS num  P02W21_ToolSel := 0;
    PERS num  P02W21_LenMM := 0;
    PERS robtarget P02W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W21_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W21_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W21_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W22_Used := FALSE;
    PERS num  P02W22_SubType := 0;
    PERS num  P02W22_ToolSel := 0;
    PERS num  P02W22_LenMM := 0;
    PERS robtarget P02W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W22_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W22_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W22_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W23_Used := FALSE;
    PERS num  P02W23_SubType := 0;
    PERS num  P02W23_ToolSel := 0;
    PERS num  P02W23_LenMM := 0;
    PERS robtarget P02W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W23_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W23_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W23_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W24_Used := FALSE;
    PERS num  P02W24_SubType := 0;
    PERS num  P02W24_ToolSel := 0;
    PERS num  P02W24_LenMM := 0;
    PERS robtarget P02W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W24_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W24_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W24_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W25_Used := FALSE;
    PERS num  P02W25_SubType := 0;
    PERS num  P02W25_ToolSel := 0;
    PERS num  P02W25_LenMM := 0;
    PERS robtarget P02W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W25_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W25_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W25_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W26_Used := FALSE;
    PERS num  P02W26_SubType := 0;
    PERS num  P02W26_ToolSel := 0;
    PERS num  P02W26_LenMM := 0;
    PERS robtarget P02W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W26_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W26_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W26_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W27_Used := FALSE;
    PERS num  P02W27_SubType := 0;
    PERS num  P02W27_ToolSel := 0;
    PERS num  P02W27_LenMM := 0;
    PERS robtarget P02W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W27_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W27_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W27_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W28_Used := FALSE;
    PERS num  P02W28_SubType := 0;
    PERS num  P02W28_ToolSel := 0;
    PERS num  P02W28_LenMM := 0;
    PERS robtarget P02W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W28_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W28_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W28_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W29_Used := FALSE;
    PERS num  P02W29_SubType := 0;
    PERS num  P02W29_ToolSel := 0;
    PERS num  P02W29_LenMM := 0;
    PERS robtarget P02W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W29_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W29_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W29_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P02W30_Used := FALSE;
    PERS num  P02W30_SubType := 0;
    PERS num  P02W30_ToolSel := 0;
    PERS num  P02W30_LenMM := 0;
    PERS robtarget P02W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W30_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W30_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P02W30_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! ---- P03 weld slots ----
    PERS bool P03W01_Used := FALSE;
    PERS num  P03W01_SubType := 0;
    PERS num  P03W01_ToolSel := 0;
    PERS num  P03W01_LenMM := 0;
    PERS robtarget P03W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W01_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W01_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W01_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W02_Used := FALSE;
    PERS num  P03W02_SubType := 0;
    PERS num  P03W02_ToolSel := 0;
    PERS num  P03W02_LenMM := 0;
    PERS robtarget P03W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W02_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W02_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W02_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W03_Used := FALSE;
    PERS num  P03W03_SubType := 0;
    PERS num  P03W03_ToolSel := 0;
    PERS num  P03W03_LenMM := 0;
    PERS robtarget P03W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W03_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W03_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W03_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W04_Used := FALSE;
    PERS num  P03W04_SubType := 0;
    PERS num  P03W04_ToolSel := 0;
    PERS num  P03W04_LenMM := 0;
    PERS robtarget P03W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W04_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W04_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W04_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W05_Used := FALSE;
    PERS num  P03W05_SubType := 0;
    PERS num  P03W05_ToolSel := 0;
    PERS num  P03W05_LenMM := 0;
    PERS robtarget P03W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W05_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W05_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W05_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W06_Used := FALSE;
    PERS num  P03W06_SubType := 0;
    PERS num  P03W06_ToolSel := 0;
    PERS num  P03W06_LenMM := 0;
    PERS robtarget P03W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W06_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W06_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W06_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W07_Used := FALSE;
    PERS num  P03W07_SubType := 0;
    PERS num  P03W07_ToolSel := 0;
    PERS num  P03W07_LenMM := 0;
    PERS robtarget P03W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W07_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W07_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W07_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W08_Used := FALSE;
    PERS num  P03W08_SubType := 0;
    PERS num  P03W08_ToolSel := 0;
    PERS num  P03W08_LenMM := 0;
    PERS robtarget P03W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W08_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W08_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W08_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W09_Used := FALSE;
    PERS num  P03W09_SubType := 0;
    PERS num  P03W09_ToolSel := 0;
    PERS num  P03W09_LenMM := 0;
    PERS robtarget P03W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W09_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W09_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W09_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W10_Used := FALSE;
    PERS num  P03W10_SubType := 0;
    PERS num  P03W10_ToolSel := 0;
    PERS num  P03W10_LenMM := 0;
    PERS robtarget P03W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W10_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W10_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W10_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W11_Used := FALSE;
    PERS num  P03W11_SubType := 0;
    PERS num  P03W11_ToolSel := 0;
    PERS num  P03W11_LenMM := 0;
    PERS robtarget P03W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W11_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W11_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W11_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W12_Used := FALSE;
    PERS num  P03W12_SubType := 0;
    PERS num  P03W12_ToolSel := 0;
    PERS num  P03W12_LenMM := 0;
    PERS robtarget P03W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W12_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W12_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W12_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W13_Used := FALSE;
    PERS num  P03W13_SubType := 0;
    PERS num  P03W13_ToolSel := 0;
    PERS num  P03W13_LenMM := 0;
    PERS robtarget P03W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W13_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W13_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W13_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W14_Used := FALSE;
    PERS num  P03W14_SubType := 0;
    PERS num  P03W14_ToolSel := 0;
    PERS num  P03W14_LenMM := 0;
    PERS robtarget P03W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W14_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W14_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W14_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W15_Used := FALSE;
    PERS num  P03W15_SubType := 0;
    PERS num  P03W15_ToolSel := 0;
    PERS num  P03W15_LenMM := 0;
    PERS robtarget P03W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W15_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W15_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W15_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W16_Used := FALSE;
    PERS num  P03W16_SubType := 0;
    PERS num  P03W16_ToolSel := 0;
    PERS num  P03W16_LenMM := 0;
    PERS robtarget P03W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W16_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W16_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W16_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W17_Used := FALSE;
    PERS num  P03W17_SubType := 0;
    PERS num  P03W17_ToolSel := 0;
    PERS num  P03W17_LenMM := 0;
    PERS robtarget P03W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W17_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W17_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W17_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W18_Used := FALSE;
    PERS num  P03W18_SubType := 0;
    PERS num  P03W18_ToolSel := 0;
    PERS num  P03W18_LenMM := 0;
    PERS robtarget P03W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W18_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W18_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W18_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W19_Used := FALSE;
    PERS num  P03W19_SubType := 0;
    PERS num  P03W19_ToolSel := 0;
    PERS num  P03W19_LenMM := 0;
    PERS robtarget P03W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W19_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W19_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W19_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W20_Used := FALSE;
    PERS num  P03W20_SubType := 0;
    PERS num  P03W20_ToolSel := 0;
    PERS num  P03W20_LenMM := 0;
    PERS robtarget P03W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W20_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W20_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W20_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W21_Used := FALSE;
    PERS num  P03W21_SubType := 0;
    PERS num  P03W21_ToolSel := 0;
    PERS num  P03W21_LenMM := 0;
    PERS robtarget P03W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W21_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W21_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W21_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W22_Used := FALSE;
    PERS num  P03W22_SubType := 0;
    PERS num  P03W22_ToolSel := 0;
    PERS num  P03W22_LenMM := 0;
    PERS robtarget P03W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W22_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W22_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W22_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W23_Used := FALSE;
    PERS num  P03W23_SubType := 0;
    PERS num  P03W23_ToolSel := 0;
    PERS num  P03W23_LenMM := 0;
    PERS robtarget P03W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W23_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W23_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W23_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W24_Used := FALSE;
    PERS num  P03W24_SubType := 0;
    PERS num  P03W24_ToolSel := 0;
    PERS num  P03W24_LenMM := 0;
    PERS robtarget P03W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W24_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W24_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W24_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W25_Used := FALSE;
    PERS num  P03W25_SubType := 0;
    PERS num  P03W25_ToolSel := 0;
    PERS num  P03W25_LenMM := 0;
    PERS robtarget P03W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W25_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W25_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W25_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W26_Used := FALSE;
    PERS num  P03W26_SubType := 0;
    PERS num  P03W26_ToolSel := 0;
    PERS num  P03W26_LenMM := 0;
    PERS robtarget P03W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W26_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W26_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W26_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W27_Used := FALSE;
    PERS num  P03W27_SubType := 0;
    PERS num  P03W27_ToolSel := 0;
    PERS num  P03W27_LenMM := 0;
    PERS robtarget P03W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W27_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W27_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W27_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W28_Used := FALSE;
    PERS num  P03W28_SubType := 0;
    PERS num  P03W28_ToolSel := 0;
    PERS num  P03W28_LenMM := 0;
    PERS robtarget P03W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W28_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W28_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W28_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W29_Used := FALSE;
    PERS num  P03W29_SubType := 0;
    PERS num  P03W29_ToolSel := 0;
    PERS num  P03W29_LenMM := 0;
    PERS robtarget P03W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W29_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W29_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W29_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P03W30_Used := FALSE;
    PERS num  P03W30_SubType := 0;
    PERS num  P03W30_ToolSel := 0;
    PERS num  P03W30_LenMM := 0;
    PERS robtarget P03W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W30_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W30_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P03W30_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! ---- P04 weld slots ----
    PERS bool P04W01_Used := FALSE;
    PERS num  P04W01_SubType := 0;
    PERS num  P04W01_ToolSel := 0;
    PERS num  P04W01_LenMM := 0;
    PERS robtarget P04W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W01_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W01_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W01_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W02_Used := FALSE;
    PERS num  P04W02_SubType := 0;
    PERS num  P04W02_ToolSel := 0;
    PERS num  P04W02_LenMM := 0;
    PERS robtarget P04W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W02_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W02_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W02_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W03_Used := FALSE;
    PERS num  P04W03_SubType := 0;
    PERS num  P04W03_ToolSel := 0;
    PERS num  P04W03_LenMM := 0;
    PERS robtarget P04W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W03_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W03_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W03_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W04_Used := FALSE;
    PERS num  P04W04_SubType := 0;
    PERS num  P04W04_ToolSel := 0;
    PERS num  P04W04_LenMM := 0;
    PERS robtarget P04W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W04_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W04_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W04_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W05_Used := FALSE;
    PERS num  P04W05_SubType := 0;
    PERS num  P04W05_ToolSel := 0;
    PERS num  P04W05_LenMM := 0;
    PERS robtarget P04W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W05_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W05_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W05_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W06_Used := FALSE;
    PERS num  P04W06_SubType := 0;
    PERS num  P04W06_ToolSel := 0;
    PERS num  P04W06_LenMM := 0;
    PERS robtarget P04W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W06_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W06_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W06_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W07_Used := FALSE;
    PERS num  P04W07_SubType := 0;
    PERS num  P04W07_ToolSel := 0;
    PERS num  P04W07_LenMM := 0;
    PERS robtarget P04W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W07_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W07_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W07_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W08_Used := FALSE;
    PERS num  P04W08_SubType := 0;
    PERS num  P04W08_ToolSel := 0;
    PERS num  P04W08_LenMM := 0;
    PERS robtarget P04W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W08_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W08_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W08_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W09_Used := FALSE;
    PERS num  P04W09_SubType := 0;
    PERS num  P04W09_ToolSel := 0;
    PERS num  P04W09_LenMM := 0;
    PERS robtarget P04W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W09_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W09_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W09_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W10_Used := FALSE;
    PERS num  P04W10_SubType := 0;
    PERS num  P04W10_ToolSel := 0;
    PERS num  P04W10_LenMM := 0;
    PERS robtarget P04W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W10_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W10_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W10_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W11_Used := FALSE;
    PERS num  P04W11_SubType := 0;
    PERS num  P04W11_ToolSel := 0;
    PERS num  P04W11_LenMM := 0;
    PERS robtarget P04W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W11_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W11_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W11_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W12_Used := FALSE;
    PERS num  P04W12_SubType := 0;
    PERS num  P04W12_ToolSel := 0;
    PERS num  P04W12_LenMM := 0;
    PERS robtarget P04W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W12_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W12_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W12_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W13_Used := FALSE;
    PERS num  P04W13_SubType := 0;
    PERS num  P04W13_ToolSel := 0;
    PERS num  P04W13_LenMM := 0;
    PERS robtarget P04W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W13_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W13_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W13_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W14_Used := FALSE;
    PERS num  P04W14_SubType := 0;
    PERS num  P04W14_ToolSel := 0;
    PERS num  P04W14_LenMM := 0;
    PERS robtarget P04W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W14_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W14_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W14_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W15_Used := FALSE;
    PERS num  P04W15_SubType := 0;
    PERS num  P04W15_ToolSel := 0;
    PERS num  P04W15_LenMM := 0;
    PERS robtarget P04W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W15_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W15_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W15_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W16_Used := FALSE;
    PERS num  P04W16_SubType := 0;
    PERS num  P04W16_ToolSel := 0;
    PERS num  P04W16_LenMM := 0;
    PERS robtarget P04W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W16_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W16_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W16_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W17_Used := FALSE;
    PERS num  P04W17_SubType := 0;
    PERS num  P04W17_ToolSel := 0;
    PERS num  P04W17_LenMM := 0;
    PERS robtarget P04W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W17_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W17_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W17_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W18_Used := FALSE;
    PERS num  P04W18_SubType := 0;
    PERS num  P04W18_ToolSel := 0;
    PERS num  P04W18_LenMM := 0;
    PERS robtarget P04W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W18_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W18_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W18_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W19_Used := FALSE;
    PERS num  P04W19_SubType := 0;
    PERS num  P04W19_ToolSel := 0;
    PERS num  P04W19_LenMM := 0;
    PERS robtarget P04W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W19_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W19_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W19_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W20_Used := FALSE;
    PERS num  P04W20_SubType := 0;
    PERS num  P04W20_ToolSel := 0;
    PERS num  P04W20_LenMM := 0;
    PERS robtarget P04W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W20_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W20_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W20_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W21_Used := FALSE;
    PERS num  P04W21_SubType := 0;
    PERS num  P04W21_ToolSel := 0;
    PERS num  P04W21_LenMM := 0;
    PERS robtarget P04W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W21_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W21_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W21_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W22_Used := FALSE;
    PERS num  P04W22_SubType := 0;
    PERS num  P04W22_ToolSel := 0;
    PERS num  P04W22_LenMM := 0;
    PERS robtarget P04W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W22_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W22_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W22_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W23_Used := FALSE;
    PERS num  P04W23_SubType := 0;
    PERS num  P04W23_ToolSel := 0;
    PERS num  P04W23_LenMM := 0;
    PERS robtarget P04W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W23_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W23_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W23_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W24_Used := FALSE;
    PERS num  P04W24_SubType := 0;
    PERS num  P04W24_ToolSel := 0;
    PERS num  P04W24_LenMM := 0;
    PERS robtarget P04W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W24_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W24_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W24_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W25_Used := FALSE;
    PERS num  P04W25_SubType := 0;
    PERS num  P04W25_ToolSel := 0;
    PERS num  P04W25_LenMM := 0;
    PERS robtarget P04W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W25_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W25_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W25_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W26_Used := FALSE;
    PERS num  P04W26_SubType := 0;
    PERS num  P04W26_ToolSel := 0;
    PERS num  P04W26_LenMM := 0;
    PERS robtarget P04W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W26_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W26_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W26_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W27_Used := FALSE;
    PERS num  P04W27_SubType := 0;
    PERS num  P04W27_ToolSel := 0;
    PERS num  P04W27_LenMM := 0;
    PERS robtarget P04W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W27_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W27_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W27_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W28_Used := FALSE;
    PERS num  P04W28_SubType := 0;
    PERS num  P04W28_ToolSel := 0;
    PERS num  P04W28_LenMM := 0;
    PERS robtarget P04W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W28_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W28_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W28_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W29_Used := FALSE;
    PERS num  P04W29_SubType := 0;
    PERS num  P04W29_ToolSel := 0;
    PERS num  P04W29_LenMM := 0;
    PERS robtarget P04W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W29_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W29_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W29_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P04W30_Used := FALSE;
    PERS num  P04W30_SubType := 0;
    PERS num  P04W30_ToolSel := 0;
    PERS num  P04W30_LenMM := 0;
    PERS robtarget P04W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W30_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W30_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P04W30_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! ---- P05 weld slots ----
    PERS bool P05W01_Used := FALSE;
    PERS num  P05W01_SubType := 0;
    PERS num  P05W01_ToolSel := 0;
    PERS num  P05W01_LenMM := 0;
    PERS robtarget P05W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W01_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W01_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W01_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W02_Used := FALSE;
    PERS num  P05W02_SubType := 0;
    PERS num  P05W02_ToolSel := 0;
    PERS num  P05W02_LenMM := 0;
    PERS robtarget P05W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W02_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W02_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W02_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W03_Used := FALSE;
    PERS num  P05W03_SubType := 0;
    PERS num  P05W03_ToolSel := 0;
    PERS num  P05W03_LenMM := 0;
    PERS robtarget P05W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W03_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W03_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W03_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W04_Used := FALSE;
    PERS num  P05W04_SubType := 0;
    PERS num  P05W04_ToolSel := 0;
    PERS num  P05W04_LenMM := 0;
    PERS robtarget P05W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W04_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W04_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W04_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W05_Used := FALSE;
    PERS num  P05W05_SubType := 0;
    PERS num  P05W05_ToolSel := 0;
    PERS num  P05W05_LenMM := 0;
    PERS robtarget P05W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W05_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W05_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W05_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W06_Used := FALSE;
    PERS num  P05W06_SubType := 0;
    PERS num  P05W06_ToolSel := 0;
    PERS num  P05W06_LenMM := 0;
    PERS robtarget P05W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W06_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W06_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W06_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W07_Used := FALSE;
    PERS num  P05W07_SubType := 0;
    PERS num  P05W07_ToolSel := 0;
    PERS num  P05W07_LenMM := 0;
    PERS robtarget P05W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W07_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W07_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W07_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W08_Used := FALSE;
    PERS num  P05W08_SubType := 0;
    PERS num  P05W08_ToolSel := 0;
    PERS num  P05W08_LenMM := 0;
    PERS robtarget P05W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W08_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W08_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W08_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W09_Used := FALSE;
    PERS num  P05W09_SubType := 0;
    PERS num  P05W09_ToolSel := 0;
    PERS num  P05W09_LenMM := 0;
    PERS robtarget P05W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W09_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W09_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W09_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W10_Used := FALSE;
    PERS num  P05W10_SubType := 0;
    PERS num  P05W10_ToolSel := 0;
    PERS num  P05W10_LenMM := 0;
    PERS robtarget P05W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W10_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W10_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W10_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W11_Used := FALSE;
    PERS num  P05W11_SubType := 0;
    PERS num  P05W11_ToolSel := 0;
    PERS num  P05W11_LenMM := 0;
    PERS robtarget P05W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W11_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W11_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W11_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W12_Used := FALSE;
    PERS num  P05W12_SubType := 0;
    PERS num  P05W12_ToolSel := 0;
    PERS num  P05W12_LenMM := 0;
    PERS robtarget P05W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W12_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W12_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W12_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W13_Used := FALSE;
    PERS num  P05W13_SubType := 0;
    PERS num  P05W13_ToolSel := 0;
    PERS num  P05W13_LenMM := 0;
    PERS robtarget P05W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W13_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W13_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W13_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W14_Used := FALSE;
    PERS num  P05W14_SubType := 0;
    PERS num  P05W14_ToolSel := 0;
    PERS num  P05W14_LenMM := 0;
    PERS robtarget P05W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W14_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W14_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W14_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W15_Used := FALSE;
    PERS num  P05W15_SubType := 0;
    PERS num  P05W15_ToolSel := 0;
    PERS num  P05W15_LenMM := 0;
    PERS robtarget P05W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W15_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W15_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W15_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W16_Used := FALSE;
    PERS num  P05W16_SubType := 0;
    PERS num  P05W16_ToolSel := 0;
    PERS num  P05W16_LenMM := 0;
    PERS robtarget P05W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W16_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W16_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W16_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W17_Used := FALSE;
    PERS num  P05W17_SubType := 0;
    PERS num  P05W17_ToolSel := 0;
    PERS num  P05W17_LenMM := 0;
    PERS robtarget P05W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W17_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W17_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W17_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W18_Used := FALSE;
    PERS num  P05W18_SubType := 0;
    PERS num  P05W18_ToolSel := 0;
    PERS num  P05W18_LenMM := 0;
    PERS robtarget P05W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W18_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W18_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W18_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W19_Used := FALSE;
    PERS num  P05W19_SubType := 0;
    PERS num  P05W19_ToolSel := 0;
    PERS num  P05W19_LenMM := 0;
    PERS robtarget P05W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W19_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W19_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W19_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W20_Used := FALSE;
    PERS num  P05W20_SubType := 0;
    PERS num  P05W20_ToolSel := 0;
    PERS num  P05W20_LenMM := 0;
    PERS robtarget P05W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W20_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W20_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W20_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W21_Used := FALSE;
    PERS num  P05W21_SubType := 0;
    PERS num  P05W21_ToolSel := 0;
    PERS num  P05W21_LenMM := 0;
    PERS robtarget P05W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W21_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W21_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W21_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W22_Used := FALSE;
    PERS num  P05W22_SubType := 0;
    PERS num  P05W22_ToolSel := 0;
    PERS num  P05W22_LenMM := 0;
    PERS robtarget P05W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W22_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W22_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W22_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W23_Used := FALSE;
    PERS num  P05W23_SubType := 0;
    PERS num  P05W23_ToolSel := 0;
    PERS num  P05W23_LenMM := 0;
    PERS robtarget P05W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W23_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W23_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W23_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W24_Used := FALSE;
    PERS num  P05W24_SubType := 0;
    PERS num  P05W24_ToolSel := 0;
    PERS num  P05W24_LenMM := 0;
    PERS robtarget P05W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W24_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W24_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W24_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W25_Used := FALSE;
    PERS num  P05W25_SubType := 0;
    PERS num  P05W25_ToolSel := 0;
    PERS num  P05W25_LenMM := 0;
    PERS robtarget P05W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W25_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W25_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W25_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W26_Used := FALSE;
    PERS num  P05W26_SubType := 0;
    PERS num  P05W26_ToolSel := 0;
    PERS num  P05W26_LenMM := 0;
    PERS robtarget P05W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W26_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W26_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W26_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W27_Used := FALSE;
    PERS num  P05W27_SubType := 0;
    PERS num  P05W27_ToolSel := 0;
    PERS num  P05W27_LenMM := 0;
    PERS robtarget P05W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W27_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W27_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W27_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W28_Used := FALSE;
    PERS num  P05W28_SubType := 0;
    PERS num  P05W28_ToolSel := 0;
    PERS num  P05W28_LenMM := 0;
    PERS robtarget P05W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W28_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W28_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W28_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W29_Used := FALSE;
    PERS num  P05W29_SubType := 0;
    PERS num  P05W29_ToolSel := 0;
    PERS num  P05W29_LenMM := 0;
    PERS robtarget P05W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W29_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W29_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W29_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P05W30_Used := FALSE;
    PERS num  P05W30_SubType := 0;
    PERS num  P05W30_ToolSel := 0;
    PERS num  P05W30_LenMM := 0;
    PERS robtarget P05W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W30_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W30_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P05W30_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! ---- P06 weld slots ----
    PERS bool P06W01_Used := FALSE;
    PERS num  P06W01_SubType := 0;
    PERS num  P06W01_ToolSel := 0;
    PERS num  P06W01_LenMM := 0;
    PERS robtarget P06W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W01_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W01_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W01_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W02_Used := FALSE;
    PERS num  P06W02_SubType := 0;
    PERS num  P06W02_ToolSel := 0;
    PERS num  P06W02_LenMM := 0;
    PERS robtarget P06W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W02_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W02_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W02_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W03_Used := FALSE;
    PERS num  P06W03_SubType := 0;
    PERS num  P06W03_ToolSel := 0;
    PERS num  P06W03_LenMM := 0;
    PERS robtarget P06W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W03_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W03_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W03_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W04_Used := FALSE;
    PERS num  P06W04_SubType := 0;
    PERS num  P06W04_ToolSel := 0;
    PERS num  P06W04_LenMM := 0;
    PERS robtarget P06W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W04_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W04_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W04_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W05_Used := FALSE;
    PERS num  P06W05_SubType := 0;
    PERS num  P06W05_ToolSel := 0;
    PERS num  P06W05_LenMM := 0;
    PERS robtarget P06W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W05_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W05_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W05_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W06_Used := FALSE;
    PERS num  P06W06_SubType := 0;
    PERS num  P06W06_ToolSel := 0;
    PERS num  P06W06_LenMM := 0;
    PERS robtarget P06W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W06_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W06_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W06_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W07_Used := FALSE;
    PERS num  P06W07_SubType := 0;
    PERS num  P06W07_ToolSel := 0;
    PERS num  P06W07_LenMM := 0;
    PERS robtarget P06W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W07_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W07_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W07_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W08_Used := FALSE;
    PERS num  P06W08_SubType := 0;
    PERS num  P06W08_ToolSel := 0;
    PERS num  P06W08_LenMM := 0;
    PERS robtarget P06W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W08_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W08_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W08_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W09_Used := FALSE;
    PERS num  P06W09_SubType := 0;
    PERS num  P06W09_ToolSel := 0;
    PERS num  P06W09_LenMM := 0;
    PERS robtarget P06W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W09_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W09_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W09_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W10_Used := FALSE;
    PERS num  P06W10_SubType := 0;
    PERS num  P06W10_ToolSel := 0;
    PERS num  P06W10_LenMM := 0;
    PERS robtarget P06W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W10_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W10_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W10_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W11_Used := FALSE;
    PERS num  P06W11_SubType := 0;
    PERS num  P06W11_ToolSel := 0;
    PERS num  P06W11_LenMM := 0;
    PERS robtarget P06W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W11_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W11_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W11_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W12_Used := FALSE;
    PERS num  P06W12_SubType := 0;
    PERS num  P06W12_ToolSel := 0;
    PERS num  P06W12_LenMM := 0;
    PERS robtarget P06W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W12_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W12_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W12_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W13_Used := FALSE;
    PERS num  P06W13_SubType := 0;
    PERS num  P06W13_ToolSel := 0;
    PERS num  P06W13_LenMM := 0;
    PERS robtarget P06W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W13_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W13_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W13_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W14_Used := FALSE;
    PERS num  P06W14_SubType := 0;
    PERS num  P06W14_ToolSel := 0;
    PERS num  P06W14_LenMM := 0;
    PERS robtarget P06W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W14_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W14_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W14_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W15_Used := FALSE;
    PERS num  P06W15_SubType := 0;
    PERS num  P06W15_ToolSel := 0;
    PERS num  P06W15_LenMM := 0;
    PERS robtarget P06W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W15_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W15_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W15_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W16_Used := FALSE;
    PERS num  P06W16_SubType := 0;
    PERS num  P06W16_ToolSel := 0;
    PERS num  P06W16_LenMM := 0;
    PERS robtarget P06W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W16_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W16_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W16_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W17_Used := FALSE;
    PERS num  P06W17_SubType := 0;
    PERS num  P06W17_ToolSel := 0;
    PERS num  P06W17_LenMM := 0;
    PERS robtarget P06W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W17_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W17_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W17_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W18_Used := FALSE;
    PERS num  P06W18_SubType := 0;
    PERS num  P06W18_ToolSel := 0;
    PERS num  P06W18_LenMM := 0;
    PERS robtarget P06W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W18_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W18_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W18_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W19_Used := FALSE;
    PERS num  P06W19_SubType := 0;
    PERS num  P06W19_ToolSel := 0;
    PERS num  P06W19_LenMM := 0;
    PERS robtarget P06W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W19_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W19_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W19_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W20_Used := FALSE;
    PERS num  P06W20_SubType := 0;
    PERS num  P06W20_ToolSel := 0;
    PERS num  P06W20_LenMM := 0;
    PERS robtarget P06W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W20_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W20_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W20_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W21_Used := FALSE;
    PERS num  P06W21_SubType := 0;
    PERS num  P06W21_ToolSel := 0;
    PERS num  P06W21_LenMM := 0;
    PERS robtarget P06W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W21_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W21_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W21_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W22_Used := FALSE;
    PERS num  P06W22_SubType := 0;
    PERS num  P06W22_ToolSel := 0;
    PERS num  P06W22_LenMM := 0;
    PERS robtarget P06W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W22_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W22_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W22_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W23_Used := FALSE;
    PERS num  P06W23_SubType := 0;
    PERS num  P06W23_ToolSel := 0;
    PERS num  P06W23_LenMM := 0;
    PERS robtarget P06W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W23_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W23_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W23_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W24_Used := FALSE;
    PERS num  P06W24_SubType := 0;
    PERS num  P06W24_ToolSel := 0;
    PERS num  P06W24_LenMM := 0;
    PERS robtarget P06W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W24_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W24_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W24_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W25_Used := FALSE;
    PERS num  P06W25_SubType := 0;
    PERS num  P06W25_ToolSel := 0;
    PERS num  P06W25_LenMM := 0;
    PERS robtarget P06W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W25_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W25_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W25_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W26_Used := FALSE;
    PERS num  P06W26_SubType := 0;
    PERS num  P06W26_ToolSel := 0;
    PERS num  P06W26_LenMM := 0;
    PERS robtarget P06W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W26_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W26_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W26_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W27_Used := FALSE;
    PERS num  P06W27_SubType := 0;
    PERS num  P06W27_ToolSel := 0;
    PERS num  P06W27_LenMM := 0;
    PERS robtarget P06W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W27_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W27_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W27_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W28_Used := FALSE;
    PERS num  P06W28_SubType := 0;
    PERS num  P06W28_ToolSel := 0;
    PERS num  P06W28_LenMM := 0;
    PERS robtarget P06W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W28_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W28_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W28_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W29_Used := FALSE;
    PERS num  P06W29_SubType := 0;
    PERS num  P06W29_ToolSel := 0;
    PERS num  P06W29_LenMM := 0;
    PERS robtarget P06W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W29_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W29_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W29_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS bool P06W30_Used := FALSE;
    PERS num  P06W30_SubType := 0;
    PERS num  P06W30_ToolSel := 0;
    PERS num  P06W30_LenMM := 0;
    PERS robtarget P06W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W30_ArcEnd   := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W30_Retract  := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
    PERS robtarget P06W30_Trans    := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];

    ! =========================
    ! ======= CONSTANTS =======
    ! =========================
    CONST num INCH := 25.4;
    CONST num cApproach := 0.100*INCH;
    CONST num cTransZ   := 10.0*INCH;

    CONST num WT_VERT   := 1;
    CONST num WT_HORIZ  := 2;
    CONST num WT_CORNER := 3;
    CONST num WT_FREE   := 4;

    CONST num WSV_YLEFT  := 11;
    CONST num WSV_YRIGHT := 12;
    CONST num WSV_YMID   := 13;
    CONST num WSH_XUP    := 21;
    CONST num WSH_XDN    := 22;
    CONST num WSH_XMID   := 23;
    CONST num WSC_ULC    := 31;
    CONST num WSC_URC    := 32;
    CONST num WSC_DLC    := 33;
    CONST num WSC_DRC    := 34;
    CONST num WSF_FREE   := 41;

    CONST num T_OLEFT := 1;
    CONST num T_ORIGHT:= 2;
    CONST num T_OUP   := 3;
    CONST num T_ODOWN := 4;
    CONST num T_OYMID := 5;
    CONST num T_OXMID := 6;

    ! =========================
    ! ===== ORI PICKER ========
    ! =========================
    FUNC robtarget GetOriPose(num toolSel)
        IF toolSel = T_OLEFT THEN
            RETURN pOri_Left;
        ELSEIF toolSel = T_ORIGHT THEN
            RETURN pOri_Right;
        ELSEIF toolSel = T_OUP THEN
            RETURN pOri_Up;
        ELSEIF toolSel = T_ODOWN THEN
            RETURN pOri_Down;
        ELSEIF toolSel = T_OYMID THEN
            RETURN pOri_yMid;
        ELSE
            RETURN pOri_xMid;
        ENDIF
    ENDFUNC

    ! =========================
    ! ===== GEOMETRY ==========
    ! =========================
    FUNC robtarget CalcApproach(robtarget arcStart, num subType)
        IF subType = WSV_YLEFT THEN
            RETURN Offs(arcStart, -cApproach, +cApproach, +cApproach);
        ELSEIF subType = WSV_YRIGHT THEN
            RETURN Offs(arcStart, +cApproach, +cApproach, +cApproach);
        ELSEIF subType = WSH_XUP THEN
            RETURN Offs(arcStart, -cApproach, +cApproach, +cApproach);
        ELSEIF subType = WSH_XDN THEN
            RETURN Offs(arcStart, -cApproach, -cApproach, +cApproach);
        ELSE
            RETURN Offs(arcStart, 0, 0, +cApproach);
        ENDIF
    ENDFUNC

    FUNC robtarget CalcArcEnd(robtarget arcStart, num subType, num lenMM, robtarget freeEnd)
        IF subType = WSV_YLEFT OR subType = WSV_YRIGHT OR subType = WSV_YMID THEN
            RETURN Offs(arcStart, 0, -lenMM, 0);
        ELSEIF subType = WSH_XUP OR subType = WSH_XDN OR subType = WSH_XMID THEN
            RETURN Offs(arcStart, +lenMM, 0, 0);
        ELSE
            RETURN freeEnd;
        ENDIF
    ENDFUNC

    FUNC robtarget CalcRetract(robtarget arcEnd, num subType)
        IF subType = WSV_YLEFT THEN
            RETURN Offs(arcEnd, -cApproach, +cApproach, +cApproach);
        ELSEIF subType = WSV_YRIGHT THEN
            RETURN Offs(arcEnd, +cApproach, +cApproach, +cApproach);
        ELSEIF subType = WSH_XUP THEN
            RETURN Offs(arcEnd, -cApproach, +cApproach, +cApproach);
        ELSEIF subType = WSH_XDN THEN
            RETURN Offs(arcEnd, -cApproach, -cApproach, +cApproach);
        ELSE
            RETURN Offs(arcEnd, 0, 0, +cApproach);
        ENDIF
    ENDFUNC

    FUNC robtarget CalcTransverse(robtarget retract)
        RETURN Offs(retract, 0, 0, +cTransZ);
    ENDFUNC

    PROC ApplyOri(VAR robtarget p, num toolSel)
        VAR robtarget o;
        o := GetOriPose(toolSel);
        p.rot := o.rot;
        p.robconf := o.robconf;
        p.extax := o.extax;
    ENDPROC

    PROC BuildWeldFromStart(
        robtarget startIn,
        robtarget freeEndIn,
        num subType,
        num toolSel,
        num lenMM,
        VAR robtarget arcStart,
        VAR robtarget arcEnd,
        VAR robtarget approach,
        VAR robtarget retract,
        VAR robtarget trans)
        arcStart := startIn;
        ApplyOri arcStart, toolSel;
        arcEnd := CalcArcEnd(arcStart, subType, lenMM, freeEndIn);
        ApplyOri arcEnd, toolSel;
        approach := CalcApproach(arcStart, subType);
        ApplyOri approach, toolSel;
        retract := CalcRetract(arcEnd, subType);
        ApplyOri retract, toolSel;
        trans := CalcTransverse(retract);
        ApplyOri trans, toolSel;
    ENDPROC

    ! =========================
    ! ==== DRY RUN MOVE =======
    ! =========================
    PROC DryRun(robtarget pTrans, robtarget pApp, robtarget pS, robtarget pE, robtarget pRet)
        MoveL pTrans, v500, z50, tool0;
        MoveL pApp,   v300, z10, tool0;
        MoveL pS,     v100, z1,  tool0;
        MoveL pE,     v100, z1,  tool0;
        MoveL pRet,   v300, z10, tool0;
        MoveL pTrans, v500, z50, tool0;
    ENDPROC

    PROC SetupP01()
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to P01 ORIGIN (most x-,y-). Press Play.";
        Stop;
        P01Origin := CRobT(\Tool:=tool0);
        TPWrite "Jog to P01 MAX (most x+,y+). Press Play.";
        Stop;
        P01Max := CRobT(\Tool:=tool0);
        TPWrite "Jog to P01 Z0 plane (touch wire tip). Press Play.";
        Stop;
        P01Zoff := CRobT(\Tool:=tool0);
        wobjP01.uframe.trans := P01Origin.trans;
        wobjP01.uframe.rot := P01Origin.rot;
        wobjP01.oframe.trans := P01Zoff.trans;
        wobjP01.oframe.rot := P01Zoff.rot;
        TPWrite "P01 frame points recorded.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC SetupP02()
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to P02 ORIGIN (most x-,y-). Press Play.";
        Stop;
        P02Origin := CRobT(\Tool:=tool0);
        TPWrite "Jog to P02 MAX (most x+,y+). Press Play.";
        Stop;
        P02Max := CRobT(\Tool:=tool0);
        TPWrite "Jog to P02 Z0 plane (touch wire tip). Press Play.";
        Stop;
        P02Zoff := CRobT(\Tool:=tool0);
        wobjP02.uframe.trans := P02Origin.trans;
        wobjP02.uframe.rot := P02Origin.rot;
        wobjP02.oframe.trans := P02Zoff.trans;
        wobjP02.oframe.rot := P02Zoff.rot;
        TPWrite "P02 frame points recorded.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC SetupP03()
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to P03 ORIGIN (most x-,y-). Press Play.";
        Stop;
        P03Origin := CRobT(\Tool:=tool0);
        TPWrite "Jog to P03 MAX (most x+,y+). Press Play.";
        Stop;
        P03Max := CRobT(\Tool:=tool0);
        TPWrite "Jog to P03 Z0 plane (touch wire tip). Press Play.";
        Stop;
        P03Zoff := CRobT(\Tool:=tool0);
        wobjP03.uframe.trans := P03Origin.trans;
        wobjP03.uframe.rot := P03Origin.rot;
        wobjP03.oframe.trans := P03Zoff.trans;
        wobjP03.oframe.rot := P03Zoff.rot;
        TPWrite "P03 frame points recorded.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC SetupP04()
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to P04 ORIGIN (most x-,y-). Press Play.";
        Stop;
        P04Origin := CRobT(\Tool:=tool0);
        TPWrite "Jog to P04 MAX (most x+,y+). Press Play.";
        Stop;
        P04Max := CRobT(\Tool:=tool0);
        TPWrite "Jog to P04 Z0 plane (touch wire tip). Press Play.";
        Stop;
        P04Zoff := CRobT(\Tool:=tool0);
        wobjP04.uframe.trans := P04Origin.trans;
        wobjP04.uframe.rot := P04Origin.rot;
        wobjP04.oframe.trans := P04Zoff.trans;
        wobjP04.oframe.rot := P04Zoff.rot;
        TPWrite "P04 frame points recorded.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC SetupP05()
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to P05 ORIGIN (most x-,y-). Press Play.";
        Stop;
        P05Origin := CRobT(\Tool:=tool0);
        TPWrite "Jog to P05 MAX (most x+,y+). Press Play.";
        Stop;
        P05Max := CRobT(\Tool:=tool0);
        TPWrite "Jog to P05 Z0 plane (touch wire tip). Press Play.";
        Stop;
        P05Zoff := CRobT(\Tool:=tool0);
        wobjP05.uframe.trans := P05Origin.trans;
        wobjP05.uframe.rot := P05Origin.rot;
        wobjP05.oframe.trans := P05Zoff.trans;
        wobjP05.oframe.rot := P05Zoff.rot;
        TPWrite "P05 frame points recorded.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC SetupP06()
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to P06 ORIGIN (most x-,y-). Press Play.";
        Stop;
        P06Origin := CRobT(\Tool:=tool0);
        TPWrite "Jog to P06 MAX (most x+,y+). Press Play.";
        Stop;
        P06Max := CRobT(\Tool:=tool0);
        TPWrite "Jog to P06 Z0 plane (touch wire tip). Press Play.";
        Stop;
        P06Zoff := CRobT(\Tool:=tool0);
        wobjP06.uframe.trans := P06Origin.trans;
        wobjP06.uframe.rot := P06Origin.rot;
        wobjP06.oframe.trans := P06Zoff.trans;
        wobjP06.oframe.rot := P06Zoff.rot;
        TPWrite "P06 frame points recorded.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC TeachOrientation(num toolSel)
        MoveJ pSetup, v200, z50, tool0;
        TPWrite "Jog to orientation, touch bullseye, then press Play.";
        Stop;
        IF toolSel = T_OLEFT THEN
            pOri_Left := CRobT(\Tool:=tool0);
        ELSEIF toolSel = T_ORIGHT THEN
            pOri_Right := CRobT(\Tool:=tool0);
        ELSEIF toolSel = T_OUP THEN
            pOri_Up := CRobT(\Tool:=tool0);
        ELSEIF toolSel = T_ODOWN THEN
            pOri_Down := CRobT(\Tool:=tool0);
        ELSEIF toolSel = T_OYMID THEN
            pOri_yMid := CRobT(\Tool:=tool0);
        ELSE
            pOri_xMid := CRobT(\Tool:=tool0);
        ENDIF
        TPWrite "Orientation stored.";
        MoveJ pSafeS1Weld, v200, z50, tool0;
    ENDPROC

    PROC StoreSlot_P01(num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF slot = 1 THEN
            P01W01_SubType := subType;
            P01W01_ToolSel := toolSel;
            P01W01_LenMM := lenMM;
            P01W01_ArcStart := arcStart;
            P01W01_ArcEnd := arcEnd;
            P01W01_Approach := approach;
            P01W01_Retract := retract;
            P01W01_Trans := trans;
            P01W01_Used := TRUE;
        ELSEIF slot = 2 THEN
            P01W02_SubType := subType;
            P01W02_ToolSel := toolSel;
            P01W02_LenMM := lenMM;
            P01W02_ArcStart := arcStart;
            P01W02_ArcEnd := arcEnd;
            P01W02_Approach := approach;
            P01W02_Retract := retract;
            P01W02_Trans := trans;
            P01W02_Used := TRUE;
        ELSEIF slot = 3 THEN
            P01W03_SubType := subType;
            P01W03_ToolSel := toolSel;
            P01W03_LenMM := lenMM;
            P01W03_ArcStart := arcStart;
            P01W03_ArcEnd := arcEnd;
            P01W03_Approach := approach;
            P01W03_Retract := retract;
            P01W03_Trans := trans;
            P01W03_Used := TRUE;
        ELSEIF slot = 4 THEN
            P01W04_SubType := subType;
            P01W04_ToolSel := toolSel;
            P01W04_LenMM := lenMM;
            P01W04_ArcStart := arcStart;
            P01W04_ArcEnd := arcEnd;
            P01W04_Approach := approach;
            P01W04_Retract := retract;
            P01W04_Trans := trans;
            P01W04_Used := TRUE;
        ELSEIF slot = 5 THEN
            P01W05_SubType := subType;
            P01W05_ToolSel := toolSel;
            P01W05_LenMM := lenMM;
            P01W05_ArcStart := arcStart;
            P01W05_ArcEnd := arcEnd;
            P01W05_Approach := approach;
            P01W05_Retract := retract;
            P01W05_Trans := trans;
            P01W05_Used := TRUE;
        ELSEIF slot = 6 THEN
            P01W06_SubType := subType;
            P01W06_ToolSel := toolSel;
            P01W06_LenMM := lenMM;
            P01W06_ArcStart := arcStart;
            P01W06_ArcEnd := arcEnd;
            P01W06_Approach := approach;
            P01W06_Retract := retract;
            P01W06_Trans := trans;
            P01W06_Used := TRUE;
        ELSEIF slot = 7 THEN
            P01W07_SubType := subType;
            P01W07_ToolSel := toolSel;
            P01W07_LenMM := lenMM;
            P01W07_ArcStart := arcStart;
            P01W07_ArcEnd := arcEnd;
            P01W07_Approach := approach;
            P01W07_Retract := retract;
            P01W07_Trans := trans;
            P01W07_Used := TRUE;
        ELSEIF slot = 8 THEN
            P01W08_SubType := subType;
            P01W08_ToolSel := toolSel;
            P01W08_LenMM := lenMM;
            P01W08_ArcStart := arcStart;
            P01W08_ArcEnd := arcEnd;
            P01W08_Approach := approach;
            P01W08_Retract := retract;
            P01W08_Trans := trans;
            P01W08_Used := TRUE;
        ELSEIF slot = 9 THEN
            P01W09_SubType := subType;
            P01W09_ToolSel := toolSel;
            P01W09_LenMM := lenMM;
            P01W09_ArcStart := arcStart;
            P01W09_ArcEnd := arcEnd;
            P01W09_Approach := approach;
            P01W09_Retract := retract;
            P01W09_Trans := trans;
            P01W09_Used := TRUE;
        ELSEIF slot = 10 THEN
            P01W10_SubType := subType;
            P01W10_ToolSel := toolSel;
            P01W10_LenMM := lenMM;
            P01W10_ArcStart := arcStart;
            P01W10_ArcEnd := arcEnd;
            P01W10_Approach := approach;
            P01W10_Retract := retract;
            P01W10_Trans := trans;
            P01W10_Used := TRUE;
        ELSEIF slot = 11 THEN
            P01W11_SubType := subType;
            P01W11_ToolSel := toolSel;
            P01W11_LenMM := lenMM;
            P01W11_ArcStart := arcStart;
            P01W11_ArcEnd := arcEnd;
            P01W11_Approach := approach;
            P01W11_Retract := retract;
            P01W11_Trans := trans;
            P01W11_Used := TRUE;
        ELSEIF slot = 12 THEN
            P01W12_SubType := subType;
            P01W12_ToolSel := toolSel;
            P01W12_LenMM := lenMM;
            P01W12_ArcStart := arcStart;
            P01W12_ArcEnd := arcEnd;
            P01W12_Approach := approach;
            P01W12_Retract := retract;
            P01W12_Trans := trans;
            P01W12_Used := TRUE;
        ELSEIF slot = 13 THEN
            P01W13_SubType := subType;
            P01W13_ToolSel := toolSel;
            P01W13_LenMM := lenMM;
            P01W13_ArcStart := arcStart;
            P01W13_ArcEnd := arcEnd;
            P01W13_Approach := approach;
            P01W13_Retract := retract;
            P01W13_Trans := trans;
            P01W13_Used := TRUE;
        ELSEIF slot = 14 THEN
            P01W14_SubType := subType;
            P01W14_ToolSel := toolSel;
            P01W14_LenMM := lenMM;
            P01W14_ArcStart := arcStart;
            P01W14_ArcEnd := arcEnd;
            P01W14_Approach := approach;
            P01W14_Retract := retract;
            P01W14_Trans := trans;
            P01W14_Used := TRUE;
        ELSEIF slot = 15 THEN
            P01W15_SubType := subType;
            P01W15_ToolSel := toolSel;
            P01W15_LenMM := lenMM;
            P01W15_ArcStart := arcStart;
            P01W15_ArcEnd := arcEnd;
            P01W15_Approach := approach;
            P01W15_Retract := retract;
            P01W15_Trans := trans;
            P01W15_Used := TRUE;
        ELSEIF slot = 16 THEN
            P01W16_SubType := subType;
            P01W16_ToolSel := toolSel;
            P01W16_LenMM := lenMM;
            P01W16_ArcStart := arcStart;
            P01W16_ArcEnd := arcEnd;
            P01W16_Approach := approach;
            P01W16_Retract := retract;
            P01W16_Trans := trans;
            P01W16_Used := TRUE;
        ELSEIF slot = 17 THEN
            P01W17_SubType := subType;
            P01W17_ToolSel := toolSel;
            P01W17_LenMM := lenMM;
            P01W17_ArcStart := arcStart;
            P01W17_ArcEnd := arcEnd;
            P01W17_Approach := approach;
            P01W17_Retract := retract;
            P01W17_Trans := trans;
            P01W17_Used := TRUE;
        ELSEIF slot = 18 THEN
            P01W18_SubType := subType;
            P01W18_ToolSel := toolSel;
            P01W18_LenMM := lenMM;
            P01W18_ArcStart := arcStart;
            P01W18_ArcEnd := arcEnd;
            P01W18_Approach := approach;
            P01W18_Retract := retract;
            P01W18_Trans := trans;
            P01W18_Used := TRUE;
        ELSEIF slot = 19 THEN
            P01W19_SubType := subType;
            P01W19_ToolSel := toolSel;
            P01W19_LenMM := lenMM;
            P01W19_ArcStart := arcStart;
            P01W19_ArcEnd := arcEnd;
            P01W19_Approach := approach;
            P01W19_Retract := retract;
            P01W19_Trans := trans;
            P01W19_Used := TRUE;
        ELSEIF slot = 20 THEN
            P01W20_SubType := subType;
            P01W20_ToolSel := toolSel;
            P01W20_LenMM := lenMM;
            P01W20_ArcStart := arcStart;
            P01W20_ArcEnd := arcEnd;
            P01W20_Approach := approach;
            P01W20_Retract := retract;
            P01W20_Trans := trans;
            P01W20_Used := TRUE;
        ELSEIF slot = 21 THEN
            P01W21_SubType := subType;
            P01W21_ToolSel := toolSel;
            P01W21_LenMM := lenMM;
            P01W21_ArcStart := arcStart;
            P01W21_ArcEnd := arcEnd;
            P01W21_Approach := approach;
            P01W21_Retract := retract;
            P01W21_Trans := trans;
            P01W21_Used := TRUE;
        ELSEIF slot = 22 THEN
            P01W22_SubType := subType;
            P01W22_ToolSel := toolSel;
            P01W22_LenMM := lenMM;
            P01W22_ArcStart := arcStart;
            P01W22_ArcEnd := arcEnd;
            P01W22_Approach := approach;
            P01W22_Retract := retract;
            P01W22_Trans := trans;
            P01W22_Used := TRUE;
        ELSEIF slot = 23 THEN
            P01W23_SubType := subType;
            P01W23_ToolSel := toolSel;
            P01W23_LenMM := lenMM;
            P01W23_ArcStart := arcStart;
            P01W23_ArcEnd := arcEnd;
            P01W23_Approach := approach;
            P01W23_Retract := retract;
            P01W23_Trans := trans;
            P01W23_Used := TRUE;
        ELSEIF slot = 24 THEN
            P01W24_SubType := subType;
            P01W24_ToolSel := toolSel;
            P01W24_LenMM := lenMM;
            P01W24_ArcStart := arcStart;
            P01W24_ArcEnd := arcEnd;
            P01W24_Approach := approach;
            P01W24_Retract := retract;
            P01W24_Trans := trans;
            P01W24_Used := TRUE;
        ELSEIF slot = 25 THEN
            P01W25_SubType := subType;
            P01W25_ToolSel := toolSel;
            P01W25_LenMM := lenMM;
            P01W25_ArcStart := arcStart;
            P01W25_ArcEnd := arcEnd;
            P01W25_Approach := approach;
            P01W25_Retract := retract;
            P01W25_Trans := trans;
            P01W25_Used := TRUE;
        ELSEIF slot = 26 THEN
            P01W26_SubType := subType;
            P01W26_ToolSel := toolSel;
            P01W26_LenMM := lenMM;
            P01W26_ArcStart := arcStart;
            P01W26_ArcEnd := arcEnd;
            P01W26_Approach := approach;
            P01W26_Retract := retract;
            P01W26_Trans := trans;
            P01W26_Used := TRUE;
        ELSEIF slot = 27 THEN
            P01W27_SubType := subType;
            P01W27_ToolSel := toolSel;
            P01W27_LenMM := lenMM;
            P01W27_ArcStart := arcStart;
            P01W27_ArcEnd := arcEnd;
            P01W27_Approach := approach;
            P01W27_Retract := retract;
            P01W27_Trans := trans;
            P01W27_Used := TRUE;
        ELSEIF slot = 28 THEN
            P01W28_SubType := subType;
            P01W28_ToolSel := toolSel;
            P01W28_LenMM := lenMM;
            P01W28_ArcStart := arcStart;
            P01W28_ArcEnd := arcEnd;
            P01W28_Approach := approach;
            P01W28_Retract := retract;
            P01W28_Trans := trans;
            P01W28_Used := TRUE;
        ELSEIF slot = 29 THEN
            P01W29_SubType := subType;
            P01W29_ToolSel := toolSel;
            P01W29_LenMM := lenMM;
            P01W29_ArcStart := arcStart;
            P01W29_ArcEnd := arcEnd;
            P01W29_Approach := approach;
            P01W29_Retract := retract;
            P01W29_Trans := trans;
            P01W29_Used := TRUE;
        ELSEIF slot = 30 THEN
            P01W30_SubType := subType;
            P01W30_ToolSel := toolSel;
            P01W30_LenMM := lenMM;
            P01W30_ArcStart := arcStart;
            P01W30_ArcEnd := arcEnd;
            P01W30_Approach := approach;
            P01W30_Retract := retract;
            P01W30_Trans := trans;
            P01W30_Used := TRUE;
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC LoadSlot_P01(num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF slot = 1 THEN
            used := P01W01_Used;
            subType := P01W01_SubType;
            toolSel := P01W01_ToolSel;
            lenMM := P01W01_LenMM;
            arcStart := P01W01_ArcStart;
            arcEnd := P01W01_ArcEnd;
            approach := P01W01_Approach;
            retract := P01W01_Retract;
            trans := P01W01_Trans;
        ELSEIF slot = 2 THEN
            used := P01W02_Used;
            subType := P01W02_SubType;
            toolSel := P01W02_ToolSel;
            lenMM := P01W02_LenMM;
            arcStart := P01W02_ArcStart;
            arcEnd := P01W02_ArcEnd;
            approach := P01W02_Approach;
            retract := P01W02_Retract;
            trans := P01W02_Trans;
        ELSEIF slot = 3 THEN
            used := P01W03_Used;
            subType := P01W03_SubType;
            toolSel := P01W03_ToolSel;
            lenMM := P01W03_LenMM;
            arcStart := P01W03_ArcStart;
            arcEnd := P01W03_ArcEnd;
            approach := P01W03_Approach;
            retract := P01W03_Retract;
            trans := P01W03_Trans;
        ELSEIF slot = 4 THEN
            used := P01W04_Used;
            subType := P01W04_SubType;
            toolSel := P01W04_ToolSel;
            lenMM := P01W04_LenMM;
            arcStart := P01W04_ArcStart;
            arcEnd := P01W04_ArcEnd;
            approach := P01W04_Approach;
            retract := P01W04_Retract;
            trans := P01W04_Trans;
        ELSEIF slot = 5 THEN
            used := P01W05_Used;
            subType := P01W05_SubType;
            toolSel := P01W05_ToolSel;
            lenMM := P01W05_LenMM;
            arcStart := P01W05_ArcStart;
            arcEnd := P01W05_ArcEnd;
            approach := P01W05_Approach;
            retract := P01W05_Retract;
            trans := P01W05_Trans;
        ELSEIF slot = 6 THEN
            used := P01W06_Used;
            subType := P01W06_SubType;
            toolSel := P01W06_ToolSel;
            lenMM := P01W06_LenMM;
            arcStart := P01W06_ArcStart;
            arcEnd := P01W06_ArcEnd;
            approach := P01W06_Approach;
            retract := P01W06_Retract;
            trans := P01W06_Trans;
        ELSEIF slot = 7 THEN
            used := P01W07_Used;
            subType := P01W07_SubType;
            toolSel := P01W07_ToolSel;
            lenMM := P01W07_LenMM;
            arcStart := P01W07_ArcStart;
            arcEnd := P01W07_ArcEnd;
            approach := P01W07_Approach;
            retract := P01W07_Retract;
            trans := P01W07_Trans;
        ELSEIF slot = 8 THEN
            used := P01W08_Used;
            subType := P01W08_SubType;
            toolSel := P01W08_ToolSel;
            lenMM := P01W08_LenMM;
            arcStart := P01W08_ArcStart;
            arcEnd := P01W08_ArcEnd;
            approach := P01W08_Approach;
            retract := P01W08_Retract;
            trans := P01W08_Trans;
        ELSEIF slot = 9 THEN
            used := P01W09_Used;
            subType := P01W09_SubType;
            toolSel := P01W09_ToolSel;
            lenMM := P01W09_LenMM;
            arcStart := P01W09_ArcStart;
            arcEnd := P01W09_ArcEnd;
            approach := P01W09_Approach;
            retract := P01W09_Retract;
            trans := P01W09_Trans;
        ELSEIF slot = 10 THEN
            used := P01W10_Used;
            subType := P01W10_SubType;
            toolSel := P01W10_ToolSel;
            lenMM := P01W10_LenMM;
            arcStart := P01W10_ArcStart;
            arcEnd := P01W10_ArcEnd;
            approach := P01W10_Approach;
            retract := P01W10_Retract;
            trans := P01W10_Trans;
        ELSEIF slot = 11 THEN
            used := P01W11_Used;
            subType := P01W11_SubType;
            toolSel := P01W11_ToolSel;
            lenMM := P01W11_LenMM;
            arcStart := P01W11_ArcStart;
            arcEnd := P01W11_ArcEnd;
            approach := P01W11_Approach;
            retract := P01W11_Retract;
            trans := P01W11_Trans;
        ELSEIF slot = 12 THEN
            used := P01W12_Used;
            subType := P01W12_SubType;
            toolSel := P01W12_ToolSel;
            lenMM := P01W12_LenMM;
            arcStart := P01W12_ArcStart;
            arcEnd := P01W12_ArcEnd;
            approach := P01W12_Approach;
            retract := P01W12_Retract;
            trans := P01W12_Trans;
        ELSEIF slot = 13 THEN
            used := P01W13_Used;
            subType := P01W13_SubType;
            toolSel := P01W13_ToolSel;
            lenMM := P01W13_LenMM;
            arcStart := P01W13_ArcStart;
            arcEnd := P01W13_ArcEnd;
            approach := P01W13_Approach;
            retract := P01W13_Retract;
            trans := P01W13_Trans;
        ELSEIF slot = 14 THEN
            used := P01W14_Used;
            subType := P01W14_SubType;
            toolSel := P01W14_ToolSel;
            lenMM := P01W14_LenMM;
            arcStart := P01W14_ArcStart;
            arcEnd := P01W14_ArcEnd;
            approach := P01W14_Approach;
            retract := P01W14_Retract;
            trans := P01W14_Trans;
        ELSEIF slot = 15 THEN
            used := P01W15_Used;
            subType := P01W15_SubType;
            toolSel := P01W15_ToolSel;
            lenMM := P01W15_LenMM;
            arcStart := P01W15_ArcStart;
            arcEnd := P01W15_ArcEnd;
            approach := P01W15_Approach;
            retract := P01W15_Retract;
            trans := P01W15_Trans;
        ELSEIF slot = 16 THEN
            used := P01W16_Used;
            subType := P01W16_SubType;
            toolSel := P01W16_ToolSel;
            lenMM := P01W16_LenMM;
            arcStart := P01W16_ArcStart;
            arcEnd := P01W16_ArcEnd;
            approach := P01W16_Approach;
            retract := P01W16_Retract;
            trans := P01W16_Trans;
        ELSEIF slot = 17 THEN
            used := P01W17_Used;
            subType := P01W17_SubType;
            toolSel := P01W17_ToolSel;
            lenMM := P01W17_LenMM;
            arcStart := P01W17_ArcStart;
            arcEnd := P01W17_ArcEnd;
            approach := P01W17_Approach;
            retract := P01W17_Retract;
            trans := P01W17_Trans;
        ELSEIF slot = 18 THEN
            used := P01W18_Used;
            subType := P01W18_SubType;
            toolSel := P01W18_ToolSel;
            lenMM := P01W18_LenMM;
            arcStart := P01W18_ArcStart;
            arcEnd := P01W18_ArcEnd;
            approach := P01W18_Approach;
            retract := P01W18_Retract;
            trans := P01W18_Trans;
        ELSEIF slot = 19 THEN
            used := P01W19_Used;
            subType := P01W19_SubType;
            toolSel := P01W19_ToolSel;
            lenMM := P01W19_LenMM;
            arcStart := P01W19_ArcStart;
            arcEnd := P01W19_ArcEnd;
            approach := P01W19_Approach;
            retract := P01W19_Retract;
            trans := P01W19_Trans;
        ELSEIF slot = 20 THEN
            used := P01W20_Used;
            subType := P01W20_SubType;
            toolSel := P01W20_ToolSel;
            lenMM := P01W20_LenMM;
            arcStart := P01W20_ArcStart;
            arcEnd := P01W20_ArcEnd;
            approach := P01W20_Approach;
            retract := P01W20_Retract;
            trans := P01W20_Trans;
        ELSEIF slot = 21 THEN
            used := P01W21_Used;
            subType := P01W21_SubType;
            toolSel := P01W21_ToolSel;
            lenMM := P01W21_LenMM;
            arcStart := P01W21_ArcStart;
            arcEnd := P01W21_ArcEnd;
            approach := P01W21_Approach;
            retract := P01W21_Retract;
            trans := P01W21_Trans;
        ELSEIF slot = 22 THEN
            used := P01W22_Used;
            subType := P01W22_SubType;
            toolSel := P01W22_ToolSel;
            lenMM := P01W22_LenMM;
            arcStart := P01W22_ArcStart;
            arcEnd := P01W22_ArcEnd;
            approach := P01W22_Approach;
            retract := P01W22_Retract;
            trans := P01W22_Trans;
        ELSEIF slot = 23 THEN
            used := P01W23_Used;
            subType := P01W23_SubType;
            toolSel := P01W23_ToolSel;
            lenMM := P01W23_LenMM;
            arcStart := P01W23_ArcStart;
            arcEnd := P01W23_ArcEnd;
            approach := P01W23_Approach;
            retract := P01W23_Retract;
            trans := P01W23_Trans;
        ELSEIF slot = 24 THEN
            used := P01W24_Used;
            subType := P01W24_SubType;
            toolSel := P01W24_ToolSel;
            lenMM := P01W24_LenMM;
            arcStart := P01W24_ArcStart;
            arcEnd := P01W24_ArcEnd;
            approach := P01W24_Approach;
            retract := P01W24_Retract;
            trans := P01W24_Trans;
        ELSEIF slot = 25 THEN
            used := P01W25_Used;
            subType := P01W25_SubType;
            toolSel := P01W25_ToolSel;
            lenMM := P01W25_LenMM;
            arcStart := P01W25_ArcStart;
            arcEnd := P01W25_ArcEnd;
            approach := P01W25_Approach;
            retract := P01W25_Retract;
            trans := P01W25_Trans;
        ELSEIF slot = 26 THEN
            used := P01W26_Used;
            subType := P01W26_SubType;
            toolSel := P01W26_ToolSel;
            lenMM := P01W26_LenMM;
            arcStart := P01W26_ArcStart;
            arcEnd := P01W26_ArcEnd;
            approach := P01W26_Approach;
            retract := P01W26_Retract;
            trans := P01W26_Trans;
        ELSEIF slot = 27 THEN
            used := P01W27_Used;
            subType := P01W27_SubType;
            toolSel := P01W27_ToolSel;
            lenMM := P01W27_LenMM;
            arcStart := P01W27_ArcStart;
            arcEnd := P01W27_ArcEnd;
            approach := P01W27_Approach;
            retract := P01W27_Retract;
            trans := P01W27_Trans;
        ELSEIF slot = 28 THEN
            used := P01W28_Used;
            subType := P01W28_SubType;
            toolSel := P01W28_ToolSel;
            lenMM := P01W28_LenMM;
            arcStart := P01W28_ArcStart;
            arcEnd := P01W28_ArcEnd;
            approach := P01W28_Approach;
            retract := P01W28_Retract;
            trans := P01W28_Trans;
        ELSEIF slot = 29 THEN
            used := P01W29_Used;
            subType := P01W29_SubType;
            toolSel := P01W29_ToolSel;
            lenMM := P01W29_LenMM;
            arcStart := P01W29_ArcStart;
            arcEnd := P01W29_ArcEnd;
            approach := P01W29_Approach;
            retract := P01W29_Retract;
            trans := P01W29_Trans;
        ELSEIF slot = 30 THEN
            used := P01W30_Used;
            subType := P01W30_SubType;
            toolSel := P01W30_ToolSel;
            lenMM := P01W30_LenMM;
            arcStart := P01W30_ArcStart;
            arcEnd := P01W30_ArcEnd;
            approach := P01W30_Approach;
            retract := P01W30_Retract;
            trans := P01W30_Trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot_P01(num slot)
        IF slot = 1 THEN
            P01W01_Used := FALSE;
            P01W01_SubType := 0;
            P01W01_ToolSel := 0;
            P01W01_LenMM := 0;
            P01W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W01_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W01_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W01_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 2 THEN
            P01W02_Used := FALSE;
            P01W02_SubType := 0;
            P01W02_ToolSel := 0;
            P01W02_LenMM := 0;
            P01W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W02_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W02_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W02_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 3 THEN
            P01W03_Used := FALSE;
            P01W03_SubType := 0;
            P01W03_ToolSel := 0;
            P01W03_LenMM := 0;
            P01W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W03_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W03_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W03_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 4 THEN
            P01W04_Used := FALSE;
            P01W04_SubType := 0;
            P01W04_ToolSel := 0;
            P01W04_LenMM := 0;
            P01W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W04_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W04_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W04_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 5 THEN
            P01W05_Used := FALSE;
            P01W05_SubType := 0;
            P01W05_ToolSel := 0;
            P01W05_LenMM := 0;
            P01W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W05_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W05_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W05_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 6 THEN
            P01W06_Used := FALSE;
            P01W06_SubType := 0;
            P01W06_ToolSel := 0;
            P01W06_LenMM := 0;
            P01W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W06_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W06_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W06_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 7 THEN
            P01W07_Used := FALSE;
            P01W07_SubType := 0;
            P01W07_ToolSel := 0;
            P01W07_LenMM := 0;
            P01W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W07_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W07_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W07_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 8 THEN
            P01W08_Used := FALSE;
            P01W08_SubType := 0;
            P01W08_ToolSel := 0;
            P01W08_LenMM := 0;
            P01W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W08_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W08_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W08_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 9 THEN
            P01W09_Used := FALSE;
            P01W09_SubType := 0;
            P01W09_ToolSel := 0;
            P01W09_LenMM := 0;
            P01W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W09_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W09_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W09_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 10 THEN
            P01W10_Used := FALSE;
            P01W10_SubType := 0;
            P01W10_ToolSel := 0;
            P01W10_LenMM := 0;
            P01W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W10_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W10_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W10_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 11 THEN
            P01W11_Used := FALSE;
            P01W11_SubType := 0;
            P01W11_ToolSel := 0;
            P01W11_LenMM := 0;
            P01W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W11_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W11_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W11_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 12 THEN
            P01W12_Used := FALSE;
            P01W12_SubType := 0;
            P01W12_ToolSel := 0;
            P01W12_LenMM := 0;
            P01W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W12_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W12_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W12_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 13 THEN
            P01W13_Used := FALSE;
            P01W13_SubType := 0;
            P01W13_ToolSel := 0;
            P01W13_LenMM := 0;
            P01W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W13_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W13_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W13_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 14 THEN
            P01W14_Used := FALSE;
            P01W14_SubType := 0;
            P01W14_ToolSel := 0;
            P01W14_LenMM := 0;
            P01W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W14_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W14_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W14_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 15 THEN
            P01W15_Used := FALSE;
            P01W15_SubType := 0;
            P01W15_ToolSel := 0;
            P01W15_LenMM := 0;
            P01W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W15_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W15_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W15_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 16 THEN
            P01W16_Used := FALSE;
            P01W16_SubType := 0;
            P01W16_ToolSel := 0;
            P01W16_LenMM := 0;
            P01W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W16_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W16_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W16_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 17 THEN
            P01W17_Used := FALSE;
            P01W17_SubType := 0;
            P01W17_ToolSel := 0;
            P01W17_LenMM := 0;
            P01W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W17_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W17_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W17_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 18 THEN
            P01W18_Used := FALSE;
            P01W18_SubType := 0;
            P01W18_ToolSel := 0;
            P01W18_LenMM := 0;
            P01W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W18_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W18_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W18_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 19 THEN
            P01W19_Used := FALSE;
            P01W19_SubType := 0;
            P01W19_ToolSel := 0;
            P01W19_LenMM := 0;
            P01W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W19_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W19_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W19_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 20 THEN
            P01W20_Used := FALSE;
            P01W20_SubType := 0;
            P01W20_ToolSel := 0;
            P01W20_LenMM := 0;
            P01W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W20_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W20_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W20_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 21 THEN
            P01W21_Used := FALSE;
            P01W21_SubType := 0;
            P01W21_ToolSel := 0;
            P01W21_LenMM := 0;
            P01W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W21_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W21_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W21_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 22 THEN
            P01W22_Used := FALSE;
            P01W22_SubType := 0;
            P01W22_ToolSel := 0;
            P01W22_LenMM := 0;
            P01W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W22_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W22_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W22_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 23 THEN
            P01W23_Used := FALSE;
            P01W23_SubType := 0;
            P01W23_ToolSel := 0;
            P01W23_LenMM := 0;
            P01W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W23_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W23_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W23_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 24 THEN
            P01W24_Used := FALSE;
            P01W24_SubType := 0;
            P01W24_ToolSel := 0;
            P01W24_LenMM := 0;
            P01W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W24_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W24_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W24_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 25 THEN
            P01W25_Used := FALSE;
            P01W25_SubType := 0;
            P01W25_ToolSel := 0;
            P01W25_LenMM := 0;
            P01W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W25_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W25_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W25_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 26 THEN
            P01W26_Used := FALSE;
            P01W26_SubType := 0;
            P01W26_ToolSel := 0;
            P01W26_LenMM := 0;
            P01W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W26_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W26_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W26_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 27 THEN
            P01W27_Used := FALSE;
            P01W27_SubType := 0;
            P01W27_ToolSel := 0;
            P01W27_LenMM := 0;
            P01W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W27_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W27_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W27_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 28 THEN
            P01W28_Used := FALSE;
            P01W28_SubType := 0;
            P01W28_ToolSel := 0;
            P01W28_LenMM := 0;
            P01W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W28_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W28_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W28_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 29 THEN
            P01W29_Used := FALSE;
            P01W29_SubType := 0;
            P01W29_ToolSel := 0;
            P01W29_LenMM := 0;
            P01W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W29_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W29_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W29_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 30 THEN
            P01W30_Used := FALSE;
            P01W30_SubType := 0;
            P01W30_ToolSel := 0;
            P01W30_LenMM := 0;
            P01W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W30_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W30_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P01W30_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC StoreNextFree_P01(num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF NOT P01W01_Used THEN
            StoreSlot_P01 1, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W02_Used THEN
            StoreSlot_P01 2, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W03_Used THEN
            StoreSlot_P01 3, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W04_Used THEN
            StoreSlot_P01 4, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W05_Used THEN
            StoreSlot_P01 5, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W06_Used THEN
            StoreSlot_P01 6, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W07_Used THEN
            StoreSlot_P01 7, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W08_Used THEN
            StoreSlot_P01 8, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W09_Used THEN
            StoreSlot_P01 9, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W10_Used THEN
            StoreSlot_P01 10, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W11_Used THEN
            StoreSlot_P01 11, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W12_Used THEN
            StoreSlot_P01 12, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W13_Used THEN
            StoreSlot_P01 13, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W14_Used THEN
            StoreSlot_P01 14, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W15_Used THEN
            StoreSlot_P01 15, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W16_Used THEN
            StoreSlot_P01 16, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W17_Used THEN
            StoreSlot_P01 17, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W18_Used THEN
            StoreSlot_P01 18, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W19_Used THEN
            StoreSlot_P01 19, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W20_Used THEN
            StoreSlot_P01 20, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W21_Used THEN
            StoreSlot_P01 21, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W22_Used THEN
            StoreSlot_P01 22, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W23_Used THEN
            StoreSlot_P01 23, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W24_Used THEN
            StoreSlot_P01 24, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W25_Used THEN
            StoreSlot_P01 25, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W26_Used THEN
            StoreSlot_P01 26, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W27_Used THEN
            StoreSlot_P01 27, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W28_Used THEN
            StoreSlot_P01 28, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W29_Used THEN
            StoreSlot_P01 29, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSEIF NOT P01W30_Used THEN
            StoreSlot_P01 30, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP01 := nWeldsP01 + 1;
            RETURN;
        ELSE
            TPWrite "No free weld slots available.";
        ENDIF
    ENDPROC

    PROC StoreSlot_P02(num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF slot = 1 THEN
            P02W01_SubType := subType;
            P02W01_ToolSel := toolSel;
            P02W01_LenMM := lenMM;
            P02W01_ArcStart := arcStart;
            P02W01_ArcEnd := arcEnd;
            P02W01_Approach := approach;
            P02W01_Retract := retract;
            P02W01_Trans := trans;
            P02W01_Used := TRUE;
        ELSEIF slot = 2 THEN
            P02W02_SubType := subType;
            P02W02_ToolSel := toolSel;
            P02W02_LenMM := lenMM;
            P02W02_ArcStart := arcStart;
            P02W02_ArcEnd := arcEnd;
            P02W02_Approach := approach;
            P02W02_Retract := retract;
            P02W02_Trans := trans;
            P02W02_Used := TRUE;
        ELSEIF slot = 3 THEN
            P02W03_SubType := subType;
            P02W03_ToolSel := toolSel;
            P02W03_LenMM := lenMM;
            P02W03_ArcStart := arcStart;
            P02W03_ArcEnd := arcEnd;
            P02W03_Approach := approach;
            P02W03_Retract := retract;
            P02W03_Trans := trans;
            P02W03_Used := TRUE;
        ELSEIF slot = 4 THEN
            P02W04_SubType := subType;
            P02W04_ToolSel := toolSel;
            P02W04_LenMM := lenMM;
            P02W04_ArcStart := arcStart;
            P02W04_ArcEnd := arcEnd;
            P02W04_Approach := approach;
            P02W04_Retract := retract;
            P02W04_Trans := trans;
            P02W04_Used := TRUE;
        ELSEIF slot = 5 THEN
            P02W05_SubType := subType;
            P02W05_ToolSel := toolSel;
            P02W05_LenMM := lenMM;
            P02W05_ArcStart := arcStart;
            P02W05_ArcEnd := arcEnd;
            P02W05_Approach := approach;
            P02W05_Retract := retract;
            P02W05_Trans := trans;
            P02W05_Used := TRUE;
        ELSEIF slot = 6 THEN
            P02W06_SubType := subType;
            P02W06_ToolSel := toolSel;
            P02W06_LenMM := lenMM;
            P02W06_ArcStart := arcStart;
            P02W06_ArcEnd := arcEnd;
            P02W06_Approach := approach;
            P02W06_Retract := retract;
            P02W06_Trans := trans;
            P02W06_Used := TRUE;
        ELSEIF slot = 7 THEN
            P02W07_SubType := subType;
            P02W07_ToolSel := toolSel;
            P02W07_LenMM := lenMM;
            P02W07_ArcStart := arcStart;
            P02W07_ArcEnd := arcEnd;
            P02W07_Approach := approach;
            P02W07_Retract := retract;
            P02W07_Trans := trans;
            P02W07_Used := TRUE;
        ELSEIF slot = 8 THEN
            P02W08_SubType := subType;
            P02W08_ToolSel := toolSel;
            P02W08_LenMM := lenMM;
            P02W08_ArcStart := arcStart;
            P02W08_ArcEnd := arcEnd;
            P02W08_Approach := approach;
            P02W08_Retract := retract;
            P02W08_Trans := trans;
            P02W08_Used := TRUE;
        ELSEIF slot = 9 THEN
            P02W09_SubType := subType;
            P02W09_ToolSel := toolSel;
            P02W09_LenMM := lenMM;
            P02W09_ArcStart := arcStart;
            P02W09_ArcEnd := arcEnd;
            P02W09_Approach := approach;
            P02W09_Retract := retract;
            P02W09_Trans := trans;
            P02W09_Used := TRUE;
        ELSEIF slot = 10 THEN
            P02W10_SubType := subType;
            P02W10_ToolSel := toolSel;
            P02W10_LenMM := lenMM;
            P02W10_ArcStart := arcStart;
            P02W10_ArcEnd := arcEnd;
            P02W10_Approach := approach;
            P02W10_Retract := retract;
            P02W10_Trans := trans;
            P02W10_Used := TRUE;
        ELSEIF slot = 11 THEN
            P02W11_SubType := subType;
            P02W11_ToolSel := toolSel;
            P02W11_LenMM := lenMM;
            P02W11_ArcStart := arcStart;
            P02W11_ArcEnd := arcEnd;
            P02W11_Approach := approach;
            P02W11_Retract := retract;
            P02W11_Trans := trans;
            P02W11_Used := TRUE;
        ELSEIF slot = 12 THEN
            P02W12_SubType := subType;
            P02W12_ToolSel := toolSel;
            P02W12_LenMM := lenMM;
            P02W12_ArcStart := arcStart;
            P02W12_ArcEnd := arcEnd;
            P02W12_Approach := approach;
            P02W12_Retract := retract;
            P02W12_Trans := trans;
            P02W12_Used := TRUE;
        ELSEIF slot = 13 THEN
            P02W13_SubType := subType;
            P02W13_ToolSel := toolSel;
            P02W13_LenMM := lenMM;
            P02W13_ArcStart := arcStart;
            P02W13_ArcEnd := arcEnd;
            P02W13_Approach := approach;
            P02W13_Retract := retract;
            P02W13_Trans := trans;
            P02W13_Used := TRUE;
        ELSEIF slot = 14 THEN
            P02W14_SubType := subType;
            P02W14_ToolSel := toolSel;
            P02W14_LenMM := lenMM;
            P02W14_ArcStart := arcStart;
            P02W14_ArcEnd := arcEnd;
            P02W14_Approach := approach;
            P02W14_Retract := retract;
            P02W14_Trans := trans;
            P02W14_Used := TRUE;
        ELSEIF slot = 15 THEN
            P02W15_SubType := subType;
            P02W15_ToolSel := toolSel;
            P02W15_LenMM := lenMM;
            P02W15_ArcStart := arcStart;
            P02W15_ArcEnd := arcEnd;
            P02W15_Approach := approach;
            P02W15_Retract := retract;
            P02W15_Trans := trans;
            P02W15_Used := TRUE;
        ELSEIF slot = 16 THEN
            P02W16_SubType := subType;
            P02W16_ToolSel := toolSel;
            P02W16_LenMM := lenMM;
            P02W16_ArcStart := arcStart;
            P02W16_ArcEnd := arcEnd;
            P02W16_Approach := approach;
            P02W16_Retract := retract;
            P02W16_Trans := trans;
            P02W16_Used := TRUE;
        ELSEIF slot = 17 THEN
            P02W17_SubType := subType;
            P02W17_ToolSel := toolSel;
            P02W17_LenMM := lenMM;
            P02W17_ArcStart := arcStart;
            P02W17_ArcEnd := arcEnd;
            P02W17_Approach := approach;
            P02W17_Retract := retract;
            P02W17_Trans := trans;
            P02W17_Used := TRUE;
        ELSEIF slot = 18 THEN
            P02W18_SubType := subType;
            P02W18_ToolSel := toolSel;
            P02W18_LenMM := lenMM;
            P02W18_ArcStart := arcStart;
            P02W18_ArcEnd := arcEnd;
            P02W18_Approach := approach;
            P02W18_Retract := retract;
            P02W18_Trans := trans;
            P02W18_Used := TRUE;
        ELSEIF slot = 19 THEN
            P02W19_SubType := subType;
            P02W19_ToolSel := toolSel;
            P02W19_LenMM := lenMM;
            P02W19_ArcStart := arcStart;
            P02W19_ArcEnd := arcEnd;
            P02W19_Approach := approach;
            P02W19_Retract := retract;
            P02W19_Trans := trans;
            P02W19_Used := TRUE;
        ELSEIF slot = 20 THEN
            P02W20_SubType := subType;
            P02W20_ToolSel := toolSel;
            P02W20_LenMM := lenMM;
            P02W20_ArcStart := arcStart;
            P02W20_ArcEnd := arcEnd;
            P02W20_Approach := approach;
            P02W20_Retract := retract;
            P02W20_Trans := trans;
            P02W20_Used := TRUE;
        ELSEIF slot = 21 THEN
            P02W21_SubType := subType;
            P02W21_ToolSel := toolSel;
            P02W21_LenMM := lenMM;
            P02W21_ArcStart := arcStart;
            P02W21_ArcEnd := arcEnd;
            P02W21_Approach := approach;
            P02W21_Retract := retract;
            P02W21_Trans := trans;
            P02W21_Used := TRUE;
        ELSEIF slot = 22 THEN
            P02W22_SubType := subType;
            P02W22_ToolSel := toolSel;
            P02W22_LenMM := lenMM;
            P02W22_ArcStart := arcStart;
            P02W22_ArcEnd := arcEnd;
            P02W22_Approach := approach;
            P02W22_Retract := retract;
            P02W22_Trans := trans;
            P02W22_Used := TRUE;
        ELSEIF slot = 23 THEN
            P02W23_SubType := subType;
            P02W23_ToolSel := toolSel;
            P02W23_LenMM := lenMM;
            P02W23_ArcStart := arcStart;
            P02W23_ArcEnd := arcEnd;
            P02W23_Approach := approach;
            P02W23_Retract := retract;
            P02W23_Trans := trans;
            P02W23_Used := TRUE;
        ELSEIF slot = 24 THEN
            P02W24_SubType := subType;
            P02W24_ToolSel := toolSel;
            P02W24_LenMM := lenMM;
            P02W24_ArcStart := arcStart;
            P02W24_ArcEnd := arcEnd;
            P02W24_Approach := approach;
            P02W24_Retract := retract;
            P02W24_Trans := trans;
            P02W24_Used := TRUE;
        ELSEIF slot = 25 THEN
            P02W25_SubType := subType;
            P02W25_ToolSel := toolSel;
            P02W25_LenMM := lenMM;
            P02W25_ArcStart := arcStart;
            P02W25_ArcEnd := arcEnd;
            P02W25_Approach := approach;
            P02W25_Retract := retract;
            P02W25_Trans := trans;
            P02W25_Used := TRUE;
        ELSEIF slot = 26 THEN
            P02W26_SubType := subType;
            P02W26_ToolSel := toolSel;
            P02W26_LenMM := lenMM;
            P02W26_ArcStart := arcStart;
            P02W26_ArcEnd := arcEnd;
            P02W26_Approach := approach;
            P02W26_Retract := retract;
            P02W26_Trans := trans;
            P02W26_Used := TRUE;
        ELSEIF slot = 27 THEN
            P02W27_SubType := subType;
            P02W27_ToolSel := toolSel;
            P02W27_LenMM := lenMM;
            P02W27_ArcStart := arcStart;
            P02W27_ArcEnd := arcEnd;
            P02W27_Approach := approach;
            P02W27_Retract := retract;
            P02W27_Trans := trans;
            P02W27_Used := TRUE;
        ELSEIF slot = 28 THEN
            P02W28_SubType := subType;
            P02W28_ToolSel := toolSel;
            P02W28_LenMM := lenMM;
            P02W28_ArcStart := arcStart;
            P02W28_ArcEnd := arcEnd;
            P02W28_Approach := approach;
            P02W28_Retract := retract;
            P02W28_Trans := trans;
            P02W28_Used := TRUE;
        ELSEIF slot = 29 THEN
            P02W29_SubType := subType;
            P02W29_ToolSel := toolSel;
            P02W29_LenMM := lenMM;
            P02W29_ArcStart := arcStart;
            P02W29_ArcEnd := arcEnd;
            P02W29_Approach := approach;
            P02W29_Retract := retract;
            P02W29_Trans := trans;
            P02W29_Used := TRUE;
        ELSEIF slot = 30 THEN
            P02W30_SubType := subType;
            P02W30_ToolSel := toolSel;
            P02W30_LenMM := lenMM;
            P02W30_ArcStart := arcStart;
            P02W30_ArcEnd := arcEnd;
            P02W30_Approach := approach;
            P02W30_Retract := retract;
            P02W30_Trans := trans;
            P02W30_Used := TRUE;
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC LoadSlot_P02(num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF slot = 1 THEN
            used := P02W01_Used;
            subType := P02W01_SubType;
            toolSel := P02W01_ToolSel;
            lenMM := P02W01_LenMM;
            arcStart := P02W01_ArcStart;
            arcEnd := P02W01_ArcEnd;
            approach := P02W01_Approach;
            retract := P02W01_Retract;
            trans := P02W01_Trans;
        ELSEIF slot = 2 THEN
            used := P02W02_Used;
            subType := P02W02_SubType;
            toolSel := P02W02_ToolSel;
            lenMM := P02W02_LenMM;
            arcStart := P02W02_ArcStart;
            arcEnd := P02W02_ArcEnd;
            approach := P02W02_Approach;
            retract := P02W02_Retract;
            trans := P02W02_Trans;
        ELSEIF slot = 3 THEN
            used := P02W03_Used;
            subType := P02W03_SubType;
            toolSel := P02W03_ToolSel;
            lenMM := P02W03_LenMM;
            arcStart := P02W03_ArcStart;
            arcEnd := P02W03_ArcEnd;
            approach := P02W03_Approach;
            retract := P02W03_Retract;
            trans := P02W03_Trans;
        ELSEIF slot = 4 THEN
            used := P02W04_Used;
            subType := P02W04_SubType;
            toolSel := P02W04_ToolSel;
            lenMM := P02W04_LenMM;
            arcStart := P02W04_ArcStart;
            arcEnd := P02W04_ArcEnd;
            approach := P02W04_Approach;
            retract := P02W04_Retract;
            trans := P02W04_Trans;
        ELSEIF slot = 5 THEN
            used := P02W05_Used;
            subType := P02W05_SubType;
            toolSel := P02W05_ToolSel;
            lenMM := P02W05_LenMM;
            arcStart := P02W05_ArcStart;
            arcEnd := P02W05_ArcEnd;
            approach := P02W05_Approach;
            retract := P02W05_Retract;
            trans := P02W05_Trans;
        ELSEIF slot = 6 THEN
            used := P02W06_Used;
            subType := P02W06_SubType;
            toolSel := P02W06_ToolSel;
            lenMM := P02W06_LenMM;
            arcStart := P02W06_ArcStart;
            arcEnd := P02W06_ArcEnd;
            approach := P02W06_Approach;
            retract := P02W06_Retract;
            trans := P02W06_Trans;
        ELSEIF slot = 7 THEN
            used := P02W07_Used;
            subType := P02W07_SubType;
            toolSel := P02W07_ToolSel;
            lenMM := P02W07_LenMM;
            arcStart := P02W07_ArcStart;
            arcEnd := P02W07_ArcEnd;
            approach := P02W07_Approach;
            retract := P02W07_Retract;
            trans := P02W07_Trans;
        ELSEIF slot = 8 THEN
            used := P02W08_Used;
            subType := P02W08_SubType;
            toolSel := P02W08_ToolSel;
            lenMM := P02W08_LenMM;
            arcStart := P02W08_ArcStart;
            arcEnd := P02W08_ArcEnd;
            approach := P02W08_Approach;
            retract := P02W08_Retract;
            trans := P02W08_Trans;
        ELSEIF slot = 9 THEN
            used := P02W09_Used;
            subType := P02W09_SubType;
            toolSel := P02W09_ToolSel;
            lenMM := P02W09_LenMM;
            arcStart := P02W09_ArcStart;
            arcEnd := P02W09_ArcEnd;
            approach := P02W09_Approach;
            retract := P02W09_Retract;
            trans := P02W09_Trans;
        ELSEIF slot = 10 THEN
            used := P02W10_Used;
            subType := P02W10_SubType;
            toolSel := P02W10_ToolSel;
            lenMM := P02W10_LenMM;
            arcStart := P02W10_ArcStart;
            arcEnd := P02W10_ArcEnd;
            approach := P02W10_Approach;
            retract := P02W10_Retract;
            trans := P02W10_Trans;
        ELSEIF slot = 11 THEN
            used := P02W11_Used;
            subType := P02W11_SubType;
            toolSel := P02W11_ToolSel;
            lenMM := P02W11_LenMM;
            arcStart := P02W11_ArcStart;
            arcEnd := P02W11_ArcEnd;
            approach := P02W11_Approach;
            retract := P02W11_Retract;
            trans := P02W11_Trans;
        ELSEIF slot = 12 THEN
            used := P02W12_Used;
            subType := P02W12_SubType;
            toolSel := P02W12_ToolSel;
            lenMM := P02W12_LenMM;
            arcStart := P02W12_ArcStart;
            arcEnd := P02W12_ArcEnd;
            approach := P02W12_Approach;
            retract := P02W12_Retract;
            trans := P02W12_Trans;
        ELSEIF slot = 13 THEN
            used := P02W13_Used;
            subType := P02W13_SubType;
            toolSel := P02W13_ToolSel;
            lenMM := P02W13_LenMM;
            arcStart := P02W13_ArcStart;
            arcEnd := P02W13_ArcEnd;
            approach := P02W13_Approach;
            retract := P02W13_Retract;
            trans := P02W13_Trans;
        ELSEIF slot = 14 THEN
            used := P02W14_Used;
            subType := P02W14_SubType;
            toolSel := P02W14_ToolSel;
            lenMM := P02W14_LenMM;
            arcStart := P02W14_ArcStart;
            arcEnd := P02W14_ArcEnd;
            approach := P02W14_Approach;
            retract := P02W14_Retract;
            trans := P02W14_Trans;
        ELSEIF slot = 15 THEN
            used := P02W15_Used;
            subType := P02W15_SubType;
            toolSel := P02W15_ToolSel;
            lenMM := P02W15_LenMM;
            arcStart := P02W15_ArcStart;
            arcEnd := P02W15_ArcEnd;
            approach := P02W15_Approach;
            retract := P02W15_Retract;
            trans := P02W15_Trans;
        ELSEIF slot = 16 THEN
            used := P02W16_Used;
            subType := P02W16_SubType;
            toolSel := P02W16_ToolSel;
            lenMM := P02W16_LenMM;
            arcStart := P02W16_ArcStart;
            arcEnd := P02W16_ArcEnd;
            approach := P02W16_Approach;
            retract := P02W16_Retract;
            trans := P02W16_Trans;
        ELSEIF slot = 17 THEN
            used := P02W17_Used;
            subType := P02W17_SubType;
            toolSel := P02W17_ToolSel;
            lenMM := P02W17_LenMM;
            arcStart := P02W17_ArcStart;
            arcEnd := P02W17_ArcEnd;
            approach := P02W17_Approach;
            retract := P02W17_Retract;
            trans := P02W17_Trans;
        ELSEIF slot = 18 THEN
            used := P02W18_Used;
            subType := P02W18_SubType;
            toolSel := P02W18_ToolSel;
            lenMM := P02W18_LenMM;
            arcStart := P02W18_ArcStart;
            arcEnd := P02W18_ArcEnd;
            approach := P02W18_Approach;
            retract := P02W18_Retract;
            trans := P02W18_Trans;
        ELSEIF slot = 19 THEN
            used := P02W19_Used;
            subType := P02W19_SubType;
            toolSel := P02W19_ToolSel;
            lenMM := P02W19_LenMM;
            arcStart := P02W19_ArcStart;
            arcEnd := P02W19_ArcEnd;
            approach := P02W19_Approach;
            retract := P02W19_Retract;
            trans := P02W19_Trans;
        ELSEIF slot = 20 THEN
            used := P02W20_Used;
            subType := P02W20_SubType;
            toolSel := P02W20_ToolSel;
            lenMM := P02W20_LenMM;
            arcStart := P02W20_ArcStart;
            arcEnd := P02W20_ArcEnd;
            approach := P02W20_Approach;
            retract := P02W20_Retract;
            trans := P02W20_Trans;
        ELSEIF slot = 21 THEN
            used := P02W21_Used;
            subType := P02W21_SubType;
            toolSel := P02W21_ToolSel;
            lenMM := P02W21_LenMM;
            arcStart := P02W21_ArcStart;
            arcEnd := P02W21_ArcEnd;
            approach := P02W21_Approach;
            retract := P02W21_Retract;
            trans := P02W21_Trans;
        ELSEIF slot = 22 THEN
            used := P02W22_Used;
            subType := P02W22_SubType;
            toolSel := P02W22_ToolSel;
            lenMM := P02W22_LenMM;
            arcStart := P02W22_ArcStart;
            arcEnd := P02W22_ArcEnd;
            approach := P02W22_Approach;
            retract := P02W22_Retract;
            trans := P02W22_Trans;
        ELSEIF slot = 23 THEN
            used := P02W23_Used;
            subType := P02W23_SubType;
            toolSel := P02W23_ToolSel;
            lenMM := P02W23_LenMM;
            arcStart := P02W23_ArcStart;
            arcEnd := P02W23_ArcEnd;
            approach := P02W23_Approach;
            retract := P02W23_Retract;
            trans := P02W23_Trans;
        ELSEIF slot = 24 THEN
            used := P02W24_Used;
            subType := P02W24_SubType;
            toolSel := P02W24_ToolSel;
            lenMM := P02W24_LenMM;
            arcStart := P02W24_ArcStart;
            arcEnd := P02W24_ArcEnd;
            approach := P02W24_Approach;
            retract := P02W24_Retract;
            trans := P02W24_Trans;
        ELSEIF slot = 25 THEN
            used := P02W25_Used;
            subType := P02W25_SubType;
            toolSel := P02W25_ToolSel;
            lenMM := P02W25_LenMM;
            arcStart := P02W25_ArcStart;
            arcEnd := P02W25_ArcEnd;
            approach := P02W25_Approach;
            retract := P02W25_Retract;
            trans := P02W25_Trans;
        ELSEIF slot = 26 THEN
            used := P02W26_Used;
            subType := P02W26_SubType;
            toolSel := P02W26_ToolSel;
            lenMM := P02W26_LenMM;
            arcStart := P02W26_ArcStart;
            arcEnd := P02W26_ArcEnd;
            approach := P02W26_Approach;
            retract := P02W26_Retract;
            trans := P02W26_Trans;
        ELSEIF slot = 27 THEN
            used := P02W27_Used;
            subType := P02W27_SubType;
            toolSel := P02W27_ToolSel;
            lenMM := P02W27_LenMM;
            arcStart := P02W27_ArcStart;
            arcEnd := P02W27_ArcEnd;
            approach := P02W27_Approach;
            retract := P02W27_Retract;
            trans := P02W27_Trans;
        ELSEIF slot = 28 THEN
            used := P02W28_Used;
            subType := P02W28_SubType;
            toolSel := P02W28_ToolSel;
            lenMM := P02W28_LenMM;
            arcStart := P02W28_ArcStart;
            arcEnd := P02W28_ArcEnd;
            approach := P02W28_Approach;
            retract := P02W28_Retract;
            trans := P02W28_Trans;
        ELSEIF slot = 29 THEN
            used := P02W29_Used;
            subType := P02W29_SubType;
            toolSel := P02W29_ToolSel;
            lenMM := P02W29_LenMM;
            arcStart := P02W29_ArcStart;
            arcEnd := P02W29_ArcEnd;
            approach := P02W29_Approach;
            retract := P02W29_Retract;
            trans := P02W29_Trans;
        ELSEIF slot = 30 THEN
            used := P02W30_Used;
            subType := P02W30_SubType;
            toolSel := P02W30_ToolSel;
            lenMM := P02W30_LenMM;
            arcStart := P02W30_ArcStart;
            arcEnd := P02W30_ArcEnd;
            approach := P02W30_Approach;
            retract := P02W30_Retract;
            trans := P02W30_Trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot_P02(num slot)
        IF slot = 1 THEN
            P02W01_Used := FALSE;
            P02W01_SubType := 0;
            P02W01_ToolSel := 0;
            P02W01_LenMM := 0;
            P02W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W01_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W01_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W01_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 2 THEN
            P02W02_Used := FALSE;
            P02W02_SubType := 0;
            P02W02_ToolSel := 0;
            P02W02_LenMM := 0;
            P02W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W02_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W02_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W02_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 3 THEN
            P02W03_Used := FALSE;
            P02W03_SubType := 0;
            P02W03_ToolSel := 0;
            P02W03_LenMM := 0;
            P02W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W03_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W03_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W03_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 4 THEN
            P02W04_Used := FALSE;
            P02W04_SubType := 0;
            P02W04_ToolSel := 0;
            P02W04_LenMM := 0;
            P02W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W04_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W04_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W04_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 5 THEN
            P02W05_Used := FALSE;
            P02W05_SubType := 0;
            P02W05_ToolSel := 0;
            P02W05_LenMM := 0;
            P02W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W05_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W05_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W05_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 6 THEN
            P02W06_Used := FALSE;
            P02W06_SubType := 0;
            P02W06_ToolSel := 0;
            P02W06_LenMM := 0;
            P02W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W06_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W06_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W06_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 7 THEN
            P02W07_Used := FALSE;
            P02W07_SubType := 0;
            P02W07_ToolSel := 0;
            P02W07_LenMM := 0;
            P02W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W07_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W07_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W07_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 8 THEN
            P02W08_Used := FALSE;
            P02W08_SubType := 0;
            P02W08_ToolSel := 0;
            P02W08_LenMM := 0;
            P02W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W08_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W08_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W08_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 9 THEN
            P02W09_Used := FALSE;
            P02W09_SubType := 0;
            P02W09_ToolSel := 0;
            P02W09_LenMM := 0;
            P02W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W09_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W09_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W09_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 10 THEN
            P02W10_Used := FALSE;
            P02W10_SubType := 0;
            P02W10_ToolSel := 0;
            P02W10_LenMM := 0;
            P02W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W10_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W10_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W10_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 11 THEN
            P02W11_Used := FALSE;
            P02W11_SubType := 0;
            P02W11_ToolSel := 0;
            P02W11_LenMM := 0;
            P02W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W11_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W11_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W11_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 12 THEN
            P02W12_Used := FALSE;
            P02W12_SubType := 0;
            P02W12_ToolSel := 0;
            P02W12_LenMM := 0;
            P02W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W12_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W12_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W12_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 13 THEN
            P02W13_Used := FALSE;
            P02W13_SubType := 0;
            P02W13_ToolSel := 0;
            P02W13_LenMM := 0;
            P02W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W13_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W13_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W13_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 14 THEN
            P02W14_Used := FALSE;
            P02W14_SubType := 0;
            P02W14_ToolSel := 0;
            P02W14_LenMM := 0;
            P02W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W14_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W14_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W14_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 15 THEN
            P02W15_Used := FALSE;
            P02W15_SubType := 0;
            P02W15_ToolSel := 0;
            P02W15_LenMM := 0;
            P02W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W15_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W15_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W15_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 16 THEN
            P02W16_Used := FALSE;
            P02W16_SubType := 0;
            P02W16_ToolSel := 0;
            P02W16_LenMM := 0;
            P02W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W16_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W16_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W16_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 17 THEN
            P02W17_Used := FALSE;
            P02W17_SubType := 0;
            P02W17_ToolSel := 0;
            P02W17_LenMM := 0;
            P02W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W17_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W17_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W17_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 18 THEN
            P02W18_Used := FALSE;
            P02W18_SubType := 0;
            P02W18_ToolSel := 0;
            P02W18_LenMM := 0;
            P02W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W18_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W18_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W18_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 19 THEN
            P02W19_Used := FALSE;
            P02W19_SubType := 0;
            P02W19_ToolSel := 0;
            P02W19_LenMM := 0;
            P02W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W19_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W19_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W19_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 20 THEN
            P02W20_Used := FALSE;
            P02W20_SubType := 0;
            P02W20_ToolSel := 0;
            P02W20_LenMM := 0;
            P02W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W20_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W20_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W20_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 21 THEN
            P02W21_Used := FALSE;
            P02W21_SubType := 0;
            P02W21_ToolSel := 0;
            P02W21_LenMM := 0;
            P02W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W21_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W21_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W21_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 22 THEN
            P02W22_Used := FALSE;
            P02W22_SubType := 0;
            P02W22_ToolSel := 0;
            P02W22_LenMM := 0;
            P02W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W22_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W22_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W22_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 23 THEN
            P02W23_Used := FALSE;
            P02W23_SubType := 0;
            P02W23_ToolSel := 0;
            P02W23_LenMM := 0;
            P02W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W23_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W23_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W23_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 24 THEN
            P02W24_Used := FALSE;
            P02W24_SubType := 0;
            P02W24_ToolSel := 0;
            P02W24_LenMM := 0;
            P02W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W24_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W24_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W24_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 25 THEN
            P02W25_Used := FALSE;
            P02W25_SubType := 0;
            P02W25_ToolSel := 0;
            P02W25_LenMM := 0;
            P02W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W25_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W25_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W25_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 26 THEN
            P02W26_Used := FALSE;
            P02W26_SubType := 0;
            P02W26_ToolSel := 0;
            P02W26_LenMM := 0;
            P02W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W26_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W26_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W26_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 27 THEN
            P02W27_Used := FALSE;
            P02W27_SubType := 0;
            P02W27_ToolSel := 0;
            P02W27_LenMM := 0;
            P02W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W27_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W27_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W27_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 28 THEN
            P02W28_Used := FALSE;
            P02W28_SubType := 0;
            P02W28_ToolSel := 0;
            P02W28_LenMM := 0;
            P02W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W28_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W28_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W28_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 29 THEN
            P02W29_Used := FALSE;
            P02W29_SubType := 0;
            P02W29_ToolSel := 0;
            P02W29_LenMM := 0;
            P02W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W29_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W29_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W29_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 30 THEN
            P02W30_Used := FALSE;
            P02W30_SubType := 0;
            P02W30_ToolSel := 0;
            P02W30_LenMM := 0;
            P02W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W30_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W30_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P02W30_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC StoreNextFree_P02(num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF NOT P02W01_Used THEN
            StoreSlot_P02 1, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W02_Used THEN
            StoreSlot_P02 2, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W03_Used THEN
            StoreSlot_P02 3, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W04_Used THEN
            StoreSlot_P02 4, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W05_Used THEN
            StoreSlot_P02 5, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W06_Used THEN
            StoreSlot_P02 6, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W07_Used THEN
            StoreSlot_P02 7, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W08_Used THEN
            StoreSlot_P02 8, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W09_Used THEN
            StoreSlot_P02 9, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W10_Used THEN
            StoreSlot_P02 10, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W11_Used THEN
            StoreSlot_P02 11, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W12_Used THEN
            StoreSlot_P02 12, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W13_Used THEN
            StoreSlot_P02 13, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W14_Used THEN
            StoreSlot_P02 14, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W15_Used THEN
            StoreSlot_P02 15, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W16_Used THEN
            StoreSlot_P02 16, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W17_Used THEN
            StoreSlot_P02 17, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W18_Used THEN
            StoreSlot_P02 18, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W19_Used THEN
            StoreSlot_P02 19, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W20_Used THEN
            StoreSlot_P02 20, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W21_Used THEN
            StoreSlot_P02 21, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W22_Used THEN
            StoreSlot_P02 22, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W23_Used THEN
            StoreSlot_P02 23, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W24_Used THEN
            StoreSlot_P02 24, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W25_Used THEN
            StoreSlot_P02 25, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W26_Used THEN
            StoreSlot_P02 26, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W27_Used THEN
            StoreSlot_P02 27, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W28_Used THEN
            StoreSlot_P02 28, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W29_Used THEN
            StoreSlot_P02 29, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSEIF NOT P02W30_Used THEN
            StoreSlot_P02 30, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP02 := nWeldsP02 + 1;
            RETURN;
        ELSE
            TPWrite "No free weld slots available.";
        ENDIF
    ENDPROC

    PROC StoreSlot_P03(num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF slot = 1 THEN
            P03W01_SubType := subType;
            P03W01_ToolSel := toolSel;
            P03W01_LenMM := lenMM;
            P03W01_ArcStart := arcStart;
            P03W01_ArcEnd := arcEnd;
            P03W01_Approach := approach;
            P03W01_Retract := retract;
            P03W01_Trans := trans;
            P03W01_Used := TRUE;
        ELSEIF slot = 2 THEN
            P03W02_SubType := subType;
            P03W02_ToolSel := toolSel;
            P03W02_LenMM := lenMM;
            P03W02_ArcStart := arcStart;
            P03W02_ArcEnd := arcEnd;
            P03W02_Approach := approach;
            P03W02_Retract := retract;
            P03W02_Trans := trans;
            P03W02_Used := TRUE;
        ELSEIF slot = 3 THEN
            P03W03_SubType := subType;
            P03W03_ToolSel := toolSel;
            P03W03_LenMM := lenMM;
            P03W03_ArcStart := arcStart;
            P03W03_ArcEnd := arcEnd;
            P03W03_Approach := approach;
            P03W03_Retract := retract;
            P03W03_Trans := trans;
            P03W03_Used := TRUE;
        ELSEIF slot = 4 THEN
            P03W04_SubType := subType;
            P03W04_ToolSel := toolSel;
            P03W04_LenMM := lenMM;
            P03W04_ArcStart := arcStart;
            P03W04_ArcEnd := arcEnd;
            P03W04_Approach := approach;
            P03W04_Retract := retract;
            P03W04_Trans := trans;
            P03W04_Used := TRUE;
        ELSEIF slot = 5 THEN
            P03W05_SubType := subType;
            P03W05_ToolSel := toolSel;
            P03W05_LenMM := lenMM;
            P03W05_ArcStart := arcStart;
            P03W05_ArcEnd := arcEnd;
            P03W05_Approach := approach;
            P03W05_Retract := retract;
            P03W05_Trans := trans;
            P03W05_Used := TRUE;
        ELSEIF slot = 6 THEN
            P03W06_SubType := subType;
            P03W06_ToolSel := toolSel;
            P03W06_LenMM := lenMM;
            P03W06_ArcStart := arcStart;
            P03W06_ArcEnd := arcEnd;
            P03W06_Approach := approach;
            P03W06_Retract := retract;
            P03W06_Trans := trans;
            P03W06_Used := TRUE;
        ELSEIF slot = 7 THEN
            P03W07_SubType := subType;
            P03W07_ToolSel := toolSel;
            P03W07_LenMM := lenMM;
            P03W07_ArcStart := arcStart;
            P03W07_ArcEnd := arcEnd;
            P03W07_Approach := approach;
            P03W07_Retract := retract;
            P03W07_Trans := trans;
            P03W07_Used := TRUE;
        ELSEIF slot = 8 THEN
            P03W08_SubType := subType;
            P03W08_ToolSel := toolSel;
            P03W08_LenMM := lenMM;
            P03W08_ArcStart := arcStart;
            P03W08_ArcEnd := arcEnd;
            P03W08_Approach := approach;
            P03W08_Retract := retract;
            P03W08_Trans := trans;
            P03W08_Used := TRUE;
        ELSEIF slot = 9 THEN
            P03W09_SubType := subType;
            P03W09_ToolSel := toolSel;
            P03W09_LenMM := lenMM;
            P03W09_ArcStart := arcStart;
            P03W09_ArcEnd := arcEnd;
            P03W09_Approach := approach;
            P03W09_Retract := retract;
            P03W09_Trans := trans;
            P03W09_Used := TRUE;
        ELSEIF slot = 10 THEN
            P03W10_SubType := subType;
            P03W10_ToolSel := toolSel;
            P03W10_LenMM := lenMM;
            P03W10_ArcStart := arcStart;
            P03W10_ArcEnd := arcEnd;
            P03W10_Approach := approach;
            P03W10_Retract := retract;
            P03W10_Trans := trans;
            P03W10_Used := TRUE;
        ELSEIF slot = 11 THEN
            P03W11_SubType := subType;
            P03W11_ToolSel := toolSel;
            P03W11_LenMM := lenMM;
            P03W11_ArcStart := arcStart;
            P03W11_ArcEnd := arcEnd;
            P03W11_Approach := approach;
            P03W11_Retract := retract;
            P03W11_Trans := trans;
            P03W11_Used := TRUE;
        ELSEIF slot = 12 THEN
            P03W12_SubType := subType;
            P03W12_ToolSel := toolSel;
            P03W12_LenMM := lenMM;
            P03W12_ArcStart := arcStart;
            P03W12_ArcEnd := arcEnd;
            P03W12_Approach := approach;
            P03W12_Retract := retract;
            P03W12_Trans := trans;
            P03W12_Used := TRUE;
        ELSEIF slot = 13 THEN
            P03W13_SubType := subType;
            P03W13_ToolSel := toolSel;
            P03W13_LenMM := lenMM;
            P03W13_ArcStart := arcStart;
            P03W13_ArcEnd := arcEnd;
            P03W13_Approach := approach;
            P03W13_Retract := retract;
            P03W13_Trans := trans;
            P03W13_Used := TRUE;
        ELSEIF slot = 14 THEN
            P03W14_SubType := subType;
            P03W14_ToolSel := toolSel;
            P03W14_LenMM := lenMM;
            P03W14_ArcStart := arcStart;
            P03W14_ArcEnd := arcEnd;
            P03W14_Approach := approach;
            P03W14_Retract := retract;
            P03W14_Trans := trans;
            P03W14_Used := TRUE;
        ELSEIF slot = 15 THEN
            P03W15_SubType := subType;
            P03W15_ToolSel := toolSel;
            P03W15_LenMM := lenMM;
            P03W15_ArcStart := arcStart;
            P03W15_ArcEnd := arcEnd;
            P03W15_Approach := approach;
            P03W15_Retract := retract;
            P03W15_Trans := trans;
            P03W15_Used := TRUE;
        ELSEIF slot = 16 THEN
            P03W16_SubType := subType;
            P03W16_ToolSel := toolSel;
            P03W16_LenMM := lenMM;
            P03W16_ArcStart := arcStart;
            P03W16_ArcEnd := arcEnd;
            P03W16_Approach := approach;
            P03W16_Retract := retract;
            P03W16_Trans := trans;
            P03W16_Used := TRUE;
        ELSEIF slot = 17 THEN
            P03W17_SubType := subType;
            P03W17_ToolSel := toolSel;
            P03W17_LenMM := lenMM;
            P03W17_ArcStart := arcStart;
            P03W17_ArcEnd := arcEnd;
            P03W17_Approach := approach;
            P03W17_Retract := retract;
            P03W17_Trans := trans;
            P03W17_Used := TRUE;
        ELSEIF slot = 18 THEN
            P03W18_SubType := subType;
            P03W18_ToolSel := toolSel;
            P03W18_LenMM := lenMM;
            P03W18_ArcStart := arcStart;
            P03W18_ArcEnd := arcEnd;
            P03W18_Approach := approach;
            P03W18_Retract := retract;
            P03W18_Trans := trans;
            P03W18_Used := TRUE;
        ELSEIF slot = 19 THEN
            P03W19_SubType := subType;
            P03W19_ToolSel := toolSel;
            P03W19_LenMM := lenMM;
            P03W19_ArcStart := arcStart;
            P03W19_ArcEnd := arcEnd;
            P03W19_Approach := approach;
            P03W19_Retract := retract;
            P03W19_Trans := trans;
            P03W19_Used := TRUE;
        ELSEIF slot = 20 THEN
            P03W20_SubType := subType;
            P03W20_ToolSel := toolSel;
            P03W20_LenMM := lenMM;
            P03W20_ArcStart := arcStart;
            P03W20_ArcEnd := arcEnd;
            P03W20_Approach := approach;
            P03W20_Retract := retract;
            P03W20_Trans := trans;
            P03W20_Used := TRUE;
        ELSEIF slot = 21 THEN
            P03W21_SubType := subType;
            P03W21_ToolSel := toolSel;
            P03W21_LenMM := lenMM;
            P03W21_ArcStart := arcStart;
            P03W21_ArcEnd := arcEnd;
            P03W21_Approach := approach;
            P03W21_Retract := retract;
            P03W21_Trans := trans;
            P03W21_Used := TRUE;
        ELSEIF slot = 22 THEN
            P03W22_SubType := subType;
            P03W22_ToolSel := toolSel;
            P03W22_LenMM := lenMM;
            P03W22_ArcStart := arcStart;
            P03W22_ArcEnd := arcEnd;
            P03W22_Approach := approach;
            P03W22_Retract := retract;
            P03W22_Trans := trans;
            P03W22_Used := TRUE;
        ELSEIF slot = 23 THEN
            P03W23_SubType := subType;
            P03W23_ToolSel := toolSel;
            P03W23_LenMM := lenMM;
            P03W23_ArcStart := arcStart;
            P03W23_ArcEnd := arcEnd;
            P03W23_Approach := approach;
            P03W23_Retract := retract;
            P03W23_Trans := trans;
            P03W23_Used := TRUE;
        ELSEIF slot = 24 THEN
            P03W24_SubType := subType;
            P03W24_ToolSel := toolSel;
            P03W24_LenMM := lenMM;
            P03W24_ArcStart := arcStart;
            P03W24_ArcEnd := arcEnd;
            P03W24_Approach := approach;
            P03W24_Retract := retract;
            P03W24_Trans := trans;
            P03W24_Used := TRUE;
        ELSEIF slot = 25 THEN
            P03W25_SubType := subType;
            P03W25_ToolSel := toolSel;
            P03W25_LenMM := lenMM;
            P03W25_ArcStart := arcStart;
            P03W25_ArcEnd := arcEnd;
            P03W25_Approach := approach;
            P03W25_Retract := retract;
            P03W25_Trans := trans;
            P03W25_Used := TRUE;
        ELSEIF slot = 26 THEN
            P03W26_SubType := subType;
            P03W26_ToolSel := toolSel;
            P03W26_LenMM := lenMM;
            P03W26_ArcStart := arcStart;
            P03W26_ArcEnd := arcEnd;
            P03W26_Approach := approach;
            P03W26_Retract := retract;
            P03W26_Trans := trans;
            P03W26_Used := TRUE;
        ELSEIF slot = 27 THEN
            P03W27_SubType := subType;
            P03W27_ToolSel := toolSel;
            P03W27_LenMM := lenMM;
            P03W27_ArcStart := arcStart;
            P03W27_ArcEnd := arcEnd;
            P03W27_Approach := approach;
            P03W27_Retract := retract;
            P03W27_Trans := trans;
            P03W27_Used := TRUE;
        ELSEIF slot = 28 THEN
            P03W28_SubType := subType;
            P03W28_ToolSel := toolSel;
            P03W28_LenMM := lenMM;
            P03W28_ArcStart := arcStart;
            P03W28_ArcEnd := arcEnd;
            P03W28_Approach := approach;
            P03W28_Retract := retract;
            P03W28_Trans := trans;
            P03W28_Used := TRUE;
        ELSEIF slot = 29 THEN
            P03W29_SubType := subType;
            P03W29_ToolSel := toolSel;
            P03W29_LenMM := lenMM;
            P03W29_ArcStart := arcStart;
            P03W29_ArcEnd := arcEnd;
            P03W29_Approach := approach;
            P03W29_Retract := retract;
            P03W29_Trans := trans;
            P03W29_Used := TRUE;
        ELSEIF slot = 30 THEN
            P03W30_SubType := subType;
            P03W30_ToolSel := toolSel;
            P03W30_LenMM := lenMM;
            P03W30_ArcStart := arcStart;
            P03W30_ArcEnd := arcEnd;
            P03W30_Approach := approach;
            P03W30_Retract := retract;
            P03W30_Trans := trans;
            P03W30_Used := TRUE;
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC LoadSlot_P03(num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF slot = 1 THEN
            used := P03W01_Used;
            subType := P03W01_SubType;
            toolSel := P03W01_ToolSel;
            lenMM := P03W01_LenMM;
            arcStart := P03W01_ArcStart;
            arcEnd := P03W01_ArcEnd;
            approach := P03W01_Approach;
            retract := P03W01_Retract;
            trans := P03W01_Trans;
        ELSEIF slot = 2 THEN
            used := P03W02_Used;
            subType := P03W02_SubType;
            toolSel := P03W02_ToolSel;
            lenMM := P03W02_LenMM;
            arcStart := P03W02_ArcStart;
            arcEnd := P03W02_ArcEnd;
            approach := P03W02_Approach;
            retract := P03W02_Retract;
            trans := P03W02_Trans;
        ELSEIF slot = 3 THEN
            used := P03W03_Used;
            subType := P03W03_SubType;
            toolSel := P03W03_ToolSel;
            lenMM := P03W03_LenMM;
            arcStart := P03W03_ArcStart;
            arcEnd := P03W03_ArcEnd;
            approach := P03W03_Approach;
            retract := P03W03_Retract;
            trans := P03W03_Trans;
        ELSEIF slot = 4 THEN
            used := P03W04_Used;
            subType := P03W04_SubType;
            toolSel := P03W04_ToolSel;
            lenMM := P03W04_LenMM;
            arcStart := P03W04_ArcStart;
            arcEnd := P03W04_ArcEnd;
            approach := P03W04_Approach;
            retract := P03W04_Retract;
            trans := P03W04_Trans;
        ELSEIF slot = 5 THEN
            used := P03W05_Used;
            subType := P03W05_SubType;
            toolSel := P03W05_ToolSel;
            lenMM := P03W05_LenMM;
            arcStart := P03W05_ArcStart;
            arcEnd := P03W05_ArcEnd;
            approach := P03W05_Approach;
            retract := P03W05_Retract;
            trans := P03W05_Trans;
        ELSEIF slot = 6 THEN
            used := P03W06_Used;
            subType := P03W06_SubType;
            toolSel := P03W06_ToolSel;
            lenMM := P03W06_LenMM;
            arcStart := P03W06_ArcStart;
            arcEnd := P03W06_ArcEnd;
            approach := P03W06_Approach;
            retract := P03W06_Retract;
            trans := P03W06_Trans;
        ELSEIF slot = 7 THEN
            used := P03W07_Used;
            subType := P03W07_SubType;
            toolSel := P03W07_ToolSel;
            lenMM := P03W07_LenMM;
            arcStart := P03W07_ArcStart;
            arcEnd := P03W07_ArcEnd;
            approach := P03W07_Approach;
            retract := P03W07_Retract;
            trans := P03W07_Trans;
        ELSEIF slot = 8 THEN
            used := P03W08_Used;
            subType := P03W08_SubType;
            toolSel := P03W08_ToolSel;
            lenMM := P03W08_LenMM;
            arcStart := P03W08_ArcStart;
            arcEnd := P03W08_ArcEnd;
            approach := P03W08_Approach;
            retract := P03W08_Retract;
            trans := P03W08_Trans;
        ELSEIF slot = 9 THEN
            used := P03W09_Used;
            subType := P03W09_SubType;
            toolSel := P03W09_ToolSel;
            lenMM := P03W09_LenMM;
            arcStart := P03W09_ArcStart;
            arcEnd := P03W09_ArcEnd;
            approach := P03W09_Approach;
            retract := P03W09_Retract;
            trans := P03W09_Trans;
        ELSEIF slot = 10 THEN
            used := P03W10_Used;
            subType := P03W10_SubType;
            toolSel := P03W10_ToolSel;
            lenMM := P03W10_LenMM;
            arcStart := P03W10_ArcStart;
            arcEnd := P03W10_ArcEnd;
            approach := P03W10_Approach;
            retract := P03W10_Retract;
            trans := P03W10_Trans;
        ELSEIF slot = 11 THEN
            used := P03W11_Used;
            subType := P03W11_SubType;
            toolSel := P03W11_ToolSel;
            lenMM := P03W11_LenMM;
            arcStart := P03W11_ArcStart;
            arcEnd := P03W11_ArcEnd;
            approach := P03W11_Approach;
            retract := P03W11_Retract;
            trans := P03W11_Trans;
        ELSEIF slot = 12 THEN
            used := P03W12_Used;
            subType := P03W12_SubType;
            toolSel := P03W12_ToolSel;
            lenMM := P03W12_LenMM;
            arcStart := P03W12_ArcStart;
            arcEnd := P03W12_ArcEnd;
            approach := P03W12_Approach;
            retract := P03W12_Retract;
            trans := P03W12_Trans;
        ELSEIF slot = 13 THEN
            used := P03W13_Used;
            subType := P03W13_SubType;
            toolSel := P03W13_ToolSel;
            lenMM := P03W13_LenMM;
            arcStart := P03W13_ArcStart;
            arcEnd := P03W13_ArcEnd;
            approach := P03W13_Approach;
            retract := P03W13_Retract;
            trans := P03W13_Trans;
        ELSEIF slot = 14 THEN
            used := P03W14_Used;
            subType := P03W14_SubType;
            toolSel := P03W14_ToolSel;
            lenMM := P03W14_LenMM;
            arcStart := P03W14_ArcStart;
            arcEnd := P03W14_ArcEnd;
            approach := P03W14_Approach;
            retract := P03W14_Retract;
            trans := P03W14_Trans;
        ELSEIF slot = 15 THEN
            used := P03W15_Used;
            subType := P03W15_SubType;
            toolSel := P03W15_ToolSel;
            lenMM := P03W15_LenMM;
            arcStart := P03W15_ArcStart;
            arcEnd := P03W15_ArcEnd;
            approach := P03W15_Approach;
            retract := P03W15_Retract;
            trans := P03W15_Trans;
        ELSEIF slot = 16 THEN
            used := P03W16_Used;
            subType := P03W16_SubType;
            toolSel := P03W16_ToolSel;
            lenMM := P03W16_LenMM;
            arcStart := P03W16_ArcStart;
            arcEnd := P03W16_ArcEnd;
            approach := P03W16_Approach;
            retract := P03W16_Retract;
            trans := P03W16_Trans;
        ELSEIF slot = 17 THEN
            used := P03W17_Used;
            subType := P03W17_SubType;
            toolSel := P03W17_ToolSel;
            lenMM := P03W17_LenMM;
            arcStart := P03W17_ArcStart;
            arcEnd := P03W17_ArcEnd;
            approach := P03W17_Approach;
            retract := P03W17_Retract;
            trans := P03W17_Trans;
        ELSEIF slot = 18 THEN
            used := P03W18_Used;
            subType := P03W18_SubType;
            toolSel := P03W18_ToolSel;
            lenMM := P03W18_LenMM;
            arcStart := P03W18_ArcStart;
            arcEnd := P03W18_ArcEnd;
            approach := P03W18_Approach;
            retract := P03W18_Retract;
            trans := P03W18_Trans;
        ELSEIF slot = 19 THEN
            used := P03W19_Used;
            subType := P03W19_SubType;
            toolSel := P03W19_ToolSel;
            lenMM := P03W19_LenMM;
            arcStart := P03W19_ArcStart;
            arcEnd := P03W19_ArcEnd;
            approach := P03W19_Approach;
            retract := P03W19_Retract;
            trans := P03W19_Trans;
        ELSEIF slot = 20 THEN
            used := P03W20_Used;
            subType := P03W20_SubType;
            toolSel := P03W20_ToolSel;
            lenMM := P03W20_LenMM;
            arcStart := P03W20_ArcStart;
            arcEnd := P03W20_ArcEnd;
            approach := P03W20_Approach;
            retract := P03W20_Retract;
            trans := P03W20_Trans;
        ELSEIF slot = 21 THEN
            used := P03W21_Used;
            subType := P03W21_SubType;
            toolSel := P03W21_ToolSel;
            lenMM := P03W21_LenMM;
            arcStart := P03W21_ArcStart;
            arcEnd := P03W21_ArcEnd;
            approach := P03W21_Approach;
            retract := P03W21_Retract;
            trans := P03W21_Trans;
        ELSEIF slot = 22 THEN
            used := P03W22_Used;
            subType := P03W22_SubType;
            toolSel := P03W22_ToolSel;
            lenMM := P03W22_LenMM;
            arcStart := P03W22_ArcStart;
            arcEnd := P03W22_ArcEnd;
            approach := P03W22_Approach;
            retract := P03W22_Retract;
            trans := P03W22_Trans;
        ELSEIF slot = 23 THEN
            used := P03W23_Used;
            subType := P03W23_SubType;
            toolSel := P03W23_ToolSel;
            lenMM := P03W23_LenMM;
            arcStart := P03W23_ArcStart;
            arcEnd := P03W23_ArcEnd;
            approach := P03W23_Approach;
            retract := P03W23_Retract;
            trans := P03W23_Trans;
        ELSEIF slot = 24 THEN
            used := P03W24_Used;
            subType := P03W24_SubType;
            toolSel := P03W24_ToolSel;
            lenMM := P03W24_LenMM;
            arcStart := P03W24_ArcStart;
            arcEnd := P03W24_ArcEnd;
            approach := P03W24_Approach;
            retract := P03W24_Retract;
            trans := P03W24_Trans;
        ELSEIF slot = 25 THEN
            used := P03W25_Used;
            subType := P03W25_SubType;
            toolSel := P03W25_ToolSel;
            lenMM := P03W25_LenMM;
            arcStart := P03W25_ArcStart;
            arcEnd := P03W25_ArcEnd;
            approach := P03W25_Approach;
            retract := P03W25_Retract;
            trans := P03W25_Trans;
        ELSEIF slot = 26 THEN
            used := P03W26_Used;
            subType := P03W26_SubType;
            toolSel := P03W26_ToolSel;
            lenMM := P03W26_LenMM;
            arcStart := P03W26_ArcStart;
            arcEnd := P03W26_ArcEnd;
            approach := P03W26_Approach;
            retract := P03W26_Retract;
            trans := P03W26_Trans;
        ELSEIF slot = 27 THEN
            used := P03W27_Used;
            subType := P03W27_SubType;
            toolSel := P03W27_ToolSel;
            lenMM := P03W27_LenMM;
            arcStart := P03W27_ArcStart;
            arcEnd := P03W27_ArcEnd;
            approach := P03W27_Approach;
            retract := P03W27_Retract;
            trans := P03W27_Trans;
        ELSEIF slot = 28 THEN
            used := P03W28_Used;
            subType := P03W28_SubType;
            toolSel := P03W28_ToolSel;
            lenMM := P03W28_LenMM;
            arcStart := P03W28_ArcStart;
            arcEnd := P03W28_ArcEnd;
            approach := P03W28_Approach;
            retract := P03W28_Retract;
            trans := P03W28_Trans;
        ELSEIF slot = 29 THEN
            used := P03W29_Used;
            subType := P03W29_SubType;
            toolSel := P03W29_ToolSel;
            lenMM := P03W29_LenMM;
            arcStart := P03W29_ArcStart;
            arcEnd := P03W29_ArcEnd;
            approach := P03W29_Approach;
            retract := P03W29_Retract;
            trans := P03W29_Trans;
        ELSEIF slot = 30 THEN
            used := P03W30_Used;
            subType := P03W30_SubType;
            toolSel := P03W30_ToolSel;
            lenMM := P03W30_LenMM;
            arcStart := P03W30_ArcStart;
            arcEnd := P03W30_ArcEnd;
            approach := P03W30_Approach;
            retract := P03W30_Retract;
            trans := P03W30_Trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot_P03(num slot)
        IF slot = 1 THEN
            P03W01_Used := FALSE;
            P03W01_SubType := 0;
            P03W01_ToolSel := 0;
            P03W01_LenMM := 0;
            P03W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W01_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W01_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W01_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 2 THEN
            P03W02_Used := FALSE;
            P03W02_SubType := 0;
            P03W02_ToolSel := 0;
            P03W02_LenMM := 0;
            P03W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W02_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W02_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W02_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 3 THEN
            P03W03_Used := FALSE;
            P03W03_SubType := 0;
            P03W03_ToolSel := 0;
            P03W03_LenMM := 0;
            P03W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W03_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W03_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W03_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 4 THEN
            P03W04_Used := FALSE;
            P03W04_SubType := 0;
            P03W04_ToolSel := 0;
            P03W04_LenMM := 0;
            P03W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W04_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W04_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W04_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 5 THEN
            P03W05_Used := FALSE;
            P03W05_SubType := 0;
            P03W05_ToolSel := 0;
            P03W05_LenMM := 0;
            P03W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W05_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W05_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W05_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 6 THEN
            P03W06_Used := FALSE;
            P03W06_SubType := 0;
            P03W06_ToolSel := 0;
            P03W06_LenMM := 0;
            P03W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W06_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W06_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W06_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 7 THEN
            P03W07_Used := FALSE;
            P03W07_SubType := 0;
            P03W07_ToolSel := 0;
            P03W07_LenMM := 0;
            P03W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W07_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W07_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W07_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 8 THEN
            P03W08_Used := FALSE;
            P03W08_SubType := 0;
            P03W08_ToolSel := 0;
            P03W08_LenMM := 0;
            P03W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W08_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W08_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W08_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 9 THEN
            P03W09_Used := FALSE;
            P03W09_SubType := 0;
            P03W09_ToolSel := 0;
            P03W09_LenMM := 0;
            P03W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W09_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W09_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W09_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 10 THEN
            P03W10_Used := FALSE;
            P03W10_SubType := 0;
            P03W10_ToolSel := 0;
            P03W10_LenMM := 0;
            P03W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W10_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W10_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W10_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 11 THEN
            P03W11_Used := FALSE;
            P03W11_SubType := 0;
            P03W11_ToolSel := 0;
            P03W11_LenMM := 0;
            P03W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W11_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W11_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W11_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 12 THEN
            P03W12_Used := FALSE;
            P03W12_SubType := 0;
            P03W12_ToolSel := 0;
            P03W12_LenMM := 0;
            P03W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W12_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W12_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W12_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 13 THEN
            P03W13_Used := FALSE;
            P03W13_SubType := 0;
            P03W13_ToolSel := 0;
            P03W13_LenMM := 0;
            P03W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W13_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W13_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W13_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 14 THEN
            P03W14_Used := FALSE;
            P03W14_SubType := 0;
            P03W14_ToolSel := 0;
            P03W14_LenMM := 0;
            P03W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W14_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W14_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W14_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 15 THEN
            P03W15_Used := FALSE;
            P03W15_SubType := 0;
            P03W15_ToolSel := 0;
            P03W15_LenMM := 0;
            P03W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W15_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W15_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W15_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 16 THEN
            P03W16_Used := FALSE;
            P03W16_SubType := 0;
            P03W16_ToolSel := 0;
            P03W16_LenMM := 0;
            P03W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W16_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W16_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W16_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 17 THEN
            P03W17_Used := FALSE;
            P03W17_SubType := 0;
            P03W17_ToolSel := 0;
            P03W17_LenMM := 0;
            P03W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W17_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W17_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W17_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 18 THEN
            P03W18_Used := FALSE;
            P03W18_SubType := 0;
            P03W18_ToolSel := 0;
            P03W18_LenMM := 0;
            P03W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W18_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W18_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W18_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 19 THEN
            P03W19_Used := FALSE;
            P03W19_SubType := 0;
            P03W19_ToolSel := 0;
            P03W19_LenMM := 0;
            P03W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W19_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W19_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W19_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 20 THEN
            P03W20_Used := FALSE;
            P03W20_SubType := 0;
            P03W20_ToolSel := 0;
            P03W20_LenMM := 0;
            P03W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W20_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W20_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W20_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 21 THEN
            P03W21_Used := FALSE;
            P03W21_SubType := 0;
            P03W21_ToolSel := 0;
            P03W21_LenMM := 0;
            P03W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W21_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W21_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W21_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 22 THEN
            P03W22_Used := FALSE;
            P03W22_SubType := 0;
            P03W22_ToolSel := 0;
            P03W22_LenMM := 0;
            P03W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W22_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W22_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W22_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 23 THEN
            P03W23_Used := FALSE;
            P03W23_SubType := 0;
            P03W23_ToolSel := 0;
            P03W23_LenMM := 0;
            P03W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W23_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W23_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W23_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 24 THEN
            P03W24_Used := FALSE;
            P03W24_SubType := 0;
            P03W24_ToolSel := 0;
            P03W24_LenMM := 0;
            P03W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W24_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W24_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W24_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 25 THEN
            P03W25_Used := FALSE;
            P03W25_SubType := 0;
            P03W25_ToolSel := 0;
            P03W25_LenMM := 0;
            P03W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W25_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W25_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W25_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 26 THEN
            P03W26_Used := FALSE;
            P03W26_SubType := 0;
            P03W26_ToolSel := 0;
            P03W26_LenMM := 0;
            P03W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W26_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W26_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W26_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 27 THEN
            P03W27_Used := FALSE;
            P03W27_SubType := 0;
            P03W27_ToolSel := 0;
            P03W27_LenMM := 0;
            P03W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W27_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W27_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W27_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 28 THEN
            P03W28_Used := FALSE;
            P03W28_SubType := 0;
            P03W28_ToolSel := 0;
            P03W28_LenMM := 0;
            P03W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W28_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W28_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W28_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 29 THEN
            P03W29_Used := FALSE;
            P03W29_SubType := 0;
            P03W29_ToolSel := 0;
            P03W29_LenMM := 0;
            P03W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W29_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W29_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W29_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 30 THEN
            P03W30_Used := FALSE;
            P03W30_SubType := 0;
            P03W30_ToolSel := 0;
            P03W30_LenMM := 0;
            P03W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W30_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W30_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P03W30_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC StoreNextFree_P03(num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF NOT P03W01_Used THEN
            StoreSlot_P03 1, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W02_Used THEN
            StoreSlot_P03 2, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W03_Used THEN
            StoreSlot_P03 3, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W04_Used THEN
            StoreSlot_P03 4, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W05_Used THEN
            StoreSlot_P03 5, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W06_Used THEN
            StoreSlot_P03 6, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W07_Used THEN
            StoreSlot_P03 7, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W08_Used THEN
            StoreSlot_P03 8, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W09_Used THEN
            StoreSlot_P03 9, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W10_Used THEN
            StoreSlot_P03 10, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W11_Used THEN
            StoreSlot_P03 11, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W12_Used THEN
            StoreSlot_P03 12, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W13_Used THEN
            StoreSlot_P03 13, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W14_Used THEN
            StoreSlot_P03 14, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W15_Used THEN
            StoreSlot_P03 15, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W16_Used THEN
            StoreSlot_P03 16, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W17_Used THEN
            StoreSlot_P03 17, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W18_Used THEN
            StoreSlot_P03 18, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W19_Used THEN
            StoreSlot_P03 19, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W20_Used THEN
            StoreSlot_P03 20, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W21_Used THEN
            StoreSlot_P03 21, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W22_Used THEN
            StoreSlot_P03 22, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W23_Used THEN
            StoreSlot_P03 23, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W24_Used THEN
            StoreSlot_P03 24, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W25_Used THEN
            StoreSlot_P03 25, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W26_Used THEN
            StoreSlot_P03 26, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W27_Used THEN
            StoreSlot_P03 27, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W28_Used THEN
            StoreSlot_P03 28, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W29_Used THEN
            StoreSlot_P03 29, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSEIF NOT P03W30_Used THEN
            StoreSlot_P03 30, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP03 := nWeldsP03 + 1;
            RETURN;
        ELSE
            TPWrite "No free weld slots available.";
        ENDIF
    ENDPROC

    PROC StoreSlot_P04(num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF slot = 1 THEN
            P04W01_SubType := subType;
            P04W01_ToolSel := toolSel;
            P04W01_LenMM := lenMM;
            P04W01_ArcStart := arcStart;
            P04W01_ArcEnd := arcEnd;
            P04W01_Approach := approach;
            P04W01_Retract := retract;
            P04W01_Trans := trans;
            P04W01_Used := TRUE;
        ELSEIF slot = 2 THEN
            P04W02_SubType := subType;
            P04W02_ToolSel := toolSel;
            P04W02_LenMM := lenMM;
            P04W02_ArcStart := arcStart;
            P04W02_ArcEnd := arcEnd;
            P04W02_Approach := approach;
            P04W02_Retract := retract;
            P04W02_Trans := trans;
            P04W02_Used := TRUE;
        ELSEIF slot = 3 THEN
            P04W03_SubType := subType;
            P04W03_ToolSel := toolSel;
            P04W03_LenMM := lenMM;
            P04W03_ArcStart := arcStart;
            P04W03_ArcEnd := arcEnd;
            P04W03_Approach := approach;
            P04W03_Retract := retract;
            P04W03_Trans := trans;
            P04W03_Used := TRUE;
        ELSEIF slot = 4 THEN
            P04W04_SubType := subType;
            P04W04_ToolSel := toolSel;
            P04W04_LenMM := lenMM;
            P04W04_ArcStart := arcStart;
            P04W04_ArcEnd := arcEnd;
            P04W04_Approach := approach;
            P04W04_Retract := retract;
            P04W04_Trans := trans;
            P04W04_Used := TRUE;
        ELSEIF slot = 5 THEN
            P04W05_SubType := subType;
            P04W05_ToolSel := toolSel;
            P04W05_LenMM := lenMM;
            P04W05_ArcStart := arcStart;
            P04W05_ArcEnd := arcEnd;
            P04W05_Approach := approach;
            P04W05_Retract := retract;
            P04W05_Trans := trans;
            P04W05_Used := TRUE;
        ELSEIF slot = 6 THEN
            P04W06_SubType := subType;
            P04W06_ToolSel := toolSel;
            P04W06_LenMM := lenMM;
            P04W06_ArcStart := arcStart;
            P04W06_ArcEnd := arcEnd;
            P04W06_Approach := approach;
            P04W06_Retract := retract;
            P04W06_Trans := trans;
            P04W06_Used := TRUE;
        ELSEIF slot = 7 THEN
            P04W07_SubType := subType;
            P04W07_ToolSel := toolSel;
            P04W07_LenMM := lenMM;
            P04W07_ArcStart := arcStart;
            P04W07_ArcEnd := arcEnd;
            P04W07_Approach := approach;
            P04W07_Retract := retract;
            P04W07_Trans := trans;
            P04W07_Used := TRUE;
        ELSEIF slot = 8 THEN
            P04W08_SubType := subType;
            P04W08_ToolSel := toolSel;
            P04W08_LenMM := lenMM;
            P04W08_ArcStart := arcStart;
            P04W08_ArcEnd := arcEnd;
            P04W08_Approach := approach;
            P04W08_Retract := retract;
            P04W08_Trans := trans;
            P04W08_Used := TRUE;
        ELSEIF slot = 9 THEN
            P04W09_SubType := subType;
            P04W09_ToolSel := toolSel;
            P04W09_LenMM := lenMM;
            P04W09_ArcStart := arcStart;
            P04W09_ArcEnd := arcEnd;
            P04W09_Approach := approach;
            P04W09_Retract := retract;
            P04W09_Trans := trans;
            P04W09_Used := TRUE;
        ELSEIF slot = 10 THEN
            P04W10_SubType := subType;
            P04W10_ToolSel := toolSel;
            P04W10_LenMM := lenMM;
            P04W10_ArcStart := arcStart;
            P04W10_ArcEnd := arcEnd;
            P04W10_Approach := approach;
            P04W10_Retract := retract;
            P04W10_Trans := trans;
            P04W10_Used := TRUE;
        ELSEIF slot = 11 THEN
            P04W11_SubType := subType;
            P04W11_ToolSel := toolSel;
            P04W11_LenMM := lenMM;
            P04W11_ArcStart := arcStart;
            P04W11_ArcEnd := arcEnd;
            P04W11_Approach := approach;
            P04W11_Retract := retract;
            P04W11_Trans := trans;
            P04W11_Used := TRUE;
        ELSEIF slot = 12 THEN
            P04W12_SubType := subType;
            P04W12_ToolSel := toolSel;
            P04W12_LenMM := lenMM;
            P04W12_ArcStart := arcStart;
            P04W12_ArcEnd := arcEnd;
            P04W12_Approach := approach;
            P04W12_Retract := retract;
            P04W12_Trans := trans;
            P04W12_Used := TRUE;
        ELSEIF slot = 13 THEN
            P04W13_SubType := subType;
            P04W13_ToolSel := toolSel;
            P04W13_LenMM := lenMM;
            P04W13_ArcStart := arcStart;
            P04W13_ArcEnd := arcEnd;
            P04W13_Approach := approach;
            P04W13_Retract := retract;
            P04W13_Trans := trans;
            P04W13_Used := TRUE;
        ELSEIF slot = 14 THEN
            P04W14_SubType := subType;
            P04W14_ToolSel := toolSel;
            P04W14_LenMM := lenMM;
            P04W14_ArcStart := arcStart;
            P04W14_ArcEnd := arcEnd;
            P04W14_Approach := approach;
            P04W14_Retract := retract;
            P04W14_Trans := trans;
            P04W14_Used := TRUE;
        ELSEIF slot = 15 THEN
            P04W15_SubType := subType;
            P04W15_ToolSel := toolSel;
            P04W15_LenMM := lenMM;
            P04W15_ArcStart := arcStart;
            P04W15_ArcEnd := arcEnd;
            P04W15_Approach := approach;
            P04W15_Retract := retract;
            P04W15_Trans := trans;
            P04W15_Used := TRUE;
        ELSEIF slot = 16 THEN
            P04W16_SubType := subType;
            P04W16_ToolSel := toolSel;
            P04W16_LenMM := lenMM;
            P04W16_ArcStart := arcStart;
            P04W16_ArcEnd := arcEnd;
            P04W16_Approach := approach;
            P04W16_Retract := retract;
            P04W16_Trans := trans;
            P04W16_Used := TRUE;
        ELSEIF slot = 17 THEN
            P04W17_SubType := subType;
            P04W17_ToolSel := toolSel;
            P04W17_LenMM := lenMM;
            P04W17_ArcStart := arcStart;
            P04W17_ArcEnd := arcEnd;
            P04W17_Approach := approach;
            P04W17_Retract := retract;
            P04W17_Trans := trans;
            P04W17_Used := TRUE;
        ELSEIF slot = 18 THEN
            P04W18_SubType := subType;
            P04W18_ToolSel := toolSel;
            P04W18_LenMM := lenMM;
            P04W18_ArcStart := arcStart;
            P04W18_ArcEnd := arcEnd;
            P04W18_Approach := approach;
            P04W18_Retract := retract;
            P04W18_Trans := trans;
            P04W18_Used := TRUE;
        ELSEIF slot = 19 THEN
            P04W19_SubType := subType;
            P04W19_ToolSel := toolSel;
            P04W19_LenMM := lenMM;
            P04W19_ArcStart := arcStart;
            P04W19_ArcEnd := arcEnd;
            P04W19_Approach := approach;
            P04W19_Retract := retract;
            P04W19_Trans := trans;
            P04W19_Used := TRUE;
        ELSEIF slot = 20 THEN
            P04W20_SubType := subType;
            P04W20_ToolSel := toolSel;
            P04W20_LenMM := lenMM;
            P04W20_ArcStart := arcStart;
            P04W20_ArcEnd := arcEnd;
            P04W20_Approach := approach;
            P04W20_Retract := retract;
            P04W20_Trans := trans;
            P04W20_Used := TRUE;
        ELSEIF slot = 21 THEN
            P04W21_SubType := subType;
            P04W21_ToolSel := toolSel;
            P04W21_LenMM := lenMM;
            P04W21_ArcStart := arcStart;
            P04W21_ArcEnd := arcEnd;
            P04W21_Approach := approach;
            P04W21_Retract := retract;
            P04W21_Trans := trans;
            P04W21_Used := TRUE;
        ELSEIF slot = 22 THEN
            P04W22_SubType := subType;
            P04W22_ToolSel := toolSel;
            P04W22_LenMM := lenMM;
            P04W22_ArcStart := arcStart;
            P04W22_ArcEnd := arcEnd;
            P04W22_Approach := approach;
            P04W22_Retract := retract;
            P04W22_Trans := trans;
            P04W22_Used := TRUE;
        ELSEIF slot = 23 THEN
            P04W23_SubType := subType;
            P04W23_ToolSel := toolSel;
            P04W23_LenMM := lenMM;
            P04W23_ArcStart := arcStart;
            P04W23_ArcEnd := arcEnd;
            P04W23_Approach := approach;
            P04W23_Retract := retract;
            P04W23_Trans := trans;
            P04W23_Used := TRUE;
        ELSEIF slot = 24 THEN
            P04W24_SubType := subType;
            P04W24_ToolSel := toolSel;
            P04W24_LenMM := lenMM;
            P04W24_ArcStart := arcStart;
            P04W24_ArcEnd := arcEnd;
            P04W24_Approach := approach;
            P04W24_Retract := retract;
            P04W24_Trans := trans;
            P04W24_Used := TRUE;
        ELSEIF slot = 25 THEN
            P04W25_SubType := subType;
            P04W25_ToolSel := toolSel;
            P04W25_LenMM := lenMM;
            P04W25_ArcStart := arcStart;
            P04W25_ArcEnd := arcEnd;
            P04W25_Approach := approach;
            P04W25_Retract := retract;
            P04W25_Trans := trans;
            P04W25_Used := TRUE;
        ELSEIF slot = 26 THEN
            P04W26_SubType := subType;
            P04W26_ToolSel := toolSel;
            P04W26_LenMM := lenMM;
            P04W26_ArcStart := arcStart;
            P04W26_ArcEnd := arcEnd;
            P04W26_Approach := approach;
            P04W26_Retract := retract;
            P04W26_Trans := trans;
            P04W26_Used := TRUE;
        ELSEIF slot = 27 THEN
            P04W27_SubType := subType;
            P04W27_ToolSel := toolSel;
            P04W27_LenMM := lenMM;
            P04W27_ArcStart := arcStart;
            P04W27_ArcEnd := arcEnd;
            P04W27_Approach := approach;
            P04W27_Retract := retract;
            P04W27_Trans := trans;
            P04W27_Used := TRUE;
        ELSEIF slot = 28 THEN
            P04W28_SubType := subType;
            P04W28_ToolSel := toolSel;
            P04W28_LenMM := lenMM;
            P04W28_ArcStart := arcStart;
            P04W28_ArcEnd := arcEnd;
            P04W28_Approach := approach;
            P04W28_Retract := retract;
            P04W28_Trans := trans;
            P04W28_Used := TRUE;
        ELSEIF slot = 29 THEN
            P04W29_SubType := subType;
            P04W29_ToolSel := toolSel;
            P04W29_LenMM := lenMM;
            P04W29_ArcStart := arcStart;
            P04W29_ArcEnd := arcEnd;
            P04W29_Approach := approach;
            P04W29_Retract := retract;
            P04W29_Trans := trans;
            P04W29_Used := TRUE;
        ELSEIF slot = 30 THEN
            P04W30_SubType := subType;
            P04W30_ToolSel := toolSel;
            P04W30_LenMM := lenMM;
            P04W30_ArcStart := arcStart;
            P04W30_ArcEnd := arcEnd;
            P04W30_Approach := approach;
            P04W30_Retract := retract;
            P04W30_Trans := trans;
            P04W30_Used := TRUE;
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC LoadSlot_P04(num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF slot = 1 THEN
            used := P04W01_Used;
            subType := P04W01_SubType;
            toolSel := P04W01_ToolSel;
            lenMM := P04W01_LenMM;
            arcStart := P04W01_ArcStart;
            arcEnd := P04W01_ArcEnd;
            approach := P04W01_Approach;
            retract := P04W01_Retract;
            trans := P04W01_Trans;
        ELSEIF slot = 2 THEN
            used := P04W02_Used;
            subType := P04W02_SubType;
            toolSel := P04W02_ToolSel;
            lenMM := P04W02_LenMM;
            arcStart := P04W02_ArcStart;
            arcEnd := P04W02_ArcEnd;
            approach := P04W02_Approach;
            retract := P04W02_Retract;
            trans := P04W02_Trans;
        ELSEIF slot = 3 THEN
            used := P04W03_Used;
            subType := P04W03_SubType;
            toolSel := P04W03_ToolSel;
            lenMM := P04W03_LenMM;
            arcStart := P04W03_ArcStart;
            arcEnd := P04W03_ArcEnd;
            approach := P04W03_Approach;
            retract := P04W03_Retract;
            trans := P04W03_Trans;
        ELSEIF slot = 4 THEN
            used := P04W04_Used;
            subType := P04W04_SubType;
            toolSel := P04W04_ToolSel;
            lenMM := P04W04_LenMM;
            arcStart := P04W04_ArcStart;
            arcEnd := P04W04_ArcEnd;
            approach := P04W04_Approach;
            retract := P04W04_Retract;
            trans := P04W04_Trans;
        ELSEIF slot = 5 THEN
            used := P04W05_Used;
            subType := P04W05_SubType;
            toolSel := P04W05_ToolSel;
            lenMM := P04W05_LenMM;
            arcStart := P04W05_ArcStart;
            arcEnd := P04W05_ArcEnd;
            approach := P04W05_Approach;
            retract := P04W05_Retract;
            trans := P04W05_Trans;
        ELSEIF slot = 6 THEN
            used := P04W06_Used;
            subType := P04W06_SubType;
            toolSel := P04W06_ToolSel;
            lenMM := P04W06_LenMM;
            arcStart := P04W06_ArcStart;
            arcEnd := P04W06_ArcEnd;
            approach := P04W06_Approach;
            retract := P04W06_Retract;
            trans := P04W06_Trans;
        ELSEIF slot = 7 THEN
            used := P04W07_Used;
            subType := P04W07_SubType;
            toolSel := P04W07_ToolSel;
            lenMM := P04W07_LenMM;
            arcStart := P04W07_ArcStart;
            arcEnd := P04W07_ArcEnd;
            approach := P04W07_Approach;
            retract := P04W07_Retract;
            trans := P04W07_Trans;
        ELSEIF slot = 8 THEN
            used := P04W08_Used;
            subType := P04W08_SubType;
            toolSel := P04W08_ToolSel;
            lenMM := P04W08_LenMM;
            arcStart := P04W08_ArcStart;
            arcEnd := P04W08_ArcEnd;
            approach := P04W08_Approach;
            retract := P04W08_Retract;
            trans := P04W08_Trans;
        ELSEIF slot = 9 THEN
            used := P04W09_Used;
            subType := P04W09_SubType;
            toolSel := P04W09_ToolSel;
            lenMM := P04W09_LenMM;
            arcStart := P04W09_ArcStart;
            arcEnd := P04W09_ArcEnd;
            approach := P04W09_Approach;
            retract := P04W09_Retract;
            trans := P04W09_Trans;
        ELSEIF slot = 10 THEN
            used := P04W10_Used;
            subType := P04W10_SubType;
            toolSel := P04W10_ToolSel;
            lenMM := P04W10_LenMM;
            arcStart := P04W10_ArcStart;
            arcEnd := P04W10_ArcEnd;
            approach := P04W10_Approach;
            retract := P04W10_Retract;
            trans := P04W10_Trans;
        ELSEIF slot = 11 THEN
            used := P04W11_Used;
            subType := P04W11_SubType;
            toolSel := P04W11_ToolSel;
            lenMM := P04W11_LenMM;
            arcStart := P04W11_ArcStart;
            arcEnd := P04W11_ArcEnd;
            approach := P04W11_Approach;
            retract := P04W11_Retract;
            trans := P04W11_Trans;
        ELSEIF slot = 12 THEN
            used := P04W12_Used;
            subType := P04W12_SubType;
            toolSel := P04W12_ToolSel;
            lenMM := P04W12_LenMM;
            arcStart := P04W12_ArcStart;
            arcEnd := P04W12_ArcEnd;
            approach := P04W12_Approach;
            retract := P04W12_Retract;
            trans := P04W12_Trans;
        ELSEIF slot = 13 THEN
            used := P04W13_Used;
            subType := P04W13_SubType;
            toolSel := P04W13_ToolSel;
            lenMM := P04W13_LenMM;
            arcStart := P04W13_ArcStart;
            arcEnd := P04W13_ArcEnd;
            approach := P04W13_Approach;
            retract := P04W13_Retract;
            trans := P04W13_Trans;
        ELSEIF slot = 14 THEN
            used := P04W14_Used;
            subType := P04W14_SubType;
            toolSel := P04W14_ToolSel;
            lenMM := P04W14_LenMM;
            arcStart := P04W14_ArcStart;
            arcEnd := P04W14_ArcEnd;
            approach := P04W14_Approach;
            retract := P04W14_Retract;
            trans := P04W14_Trans;
        ELSEIF slot = 15 THEN
            used := P04W15_Used;
            subType := P04W15_SubType;
            toolSel := P04W15_ToolSel;
            lenMM := P04W15_LenMM;
            arcStart := P04W15_ArcStart;
            arcEnd := P04W15_ArcEnd;
            approach := P04W15_Approach;
            retract := P04W15_Retract;
            trans := P04W15_Trans;
        ELSEIF slot = 16 THEN
            used := P04W16_Used;
            subType := P04W16_SubType;
            toolSel := P04W16_ToolSel;
            lenMM := P04W16_LenMM;
            arcStart := P04W16_ArcStart;
            arcEnd := P04W16_ArcEnd;
            approach := P04W16_Approach;
            retract := P04W16_Retract;
            trans := P04W16_Trans;
        ELSEIF slot = 17 THEN
            used := P04W17_Used;
            subType := P04W17_SubType;
            toolSel := P04W17_ToolSel;
            lenMM := P04W17_LenMM;
            arcStart := P04W17_ArcStart;
            arcEnd := P04W17_ArcEnd;
            approach := P04W17_Approach;
            retract := P04W17_Retract;
            trans := P04W17_Trans;
        ELSEIF slot = 18 THEN
            used := P04W18_Used;
            subType := P04W18_SubType;
            toolSel := P04W18_ToolSel;
            lenMM := P04W18_LenMM;
            arcStart := P04W18_ArcStart;
            arcEnd := P04W18_ArcEnd;
            approach := P04W18_Approach;
            retract := P04W18_Retract;
            trans := P04W18_Trans;
        ELSEIF slot = 19 THEN
            used := P04W19_Used;
            subType := P04W19_SubType;
            toolSel := P04W19_ToolSel;
            lenMM := P04W19_LenMM;
            arcStart := P04W19_ArcStart;
            arcEnd := P04W19_ArcEnd;
            approach := P04W19_Approach;
            retract := P04W19_Retract;
            trans := P04W19_Trans;
        ELSEIF slot = 20 THEN
            used := P04W20_Used;
            subType := P04W20_SubType;
            toolSel := P04W20_ToolSel;
            lenMM := P04W20_LenMM;
            arcStart := P04W20_ArcStart;
            arcEnd := P04W20_ArcEnd;
            approach := P04W20_Approach;
            retract := P04W20_Retract;
            trans := P04W20_Trans;
        ELSEIF slot = 21 THEN
            used := P04W21_Used;
            subType := P04W21_SubType;
            toolSel := P04W21_ToolSel;
            lenMM := P04W21_LenMM;
            arcStart := P04W21_ArcStart;
            arcEnd := P04W21_ArcEnd;
            approach := P04W21_Approach;
            retract := P04W21_Retract;
            trans := P04W21_Trans;
        ELSEIF slot = 22 THEN
            used := P04W22_Used;
            subType := P04W22_SubType;
            toolSel := P04W22_ToolSel;
            lenMM := P04W22_LenMM;
            arcStart := P04W22_ArcStart;
            arcEnd := P04W22_ArcEnd;
            approach := P04W22_Approach;
            retract := P04W22_Retract;
            trans := P04W22_Trans;
        ELSEIF slot = 23 THEN
            used := P04W23_Used;
            subType := P04W23_SubType;
            toolSel := P04W23_ToolSel;
            lenMM := P04W23_LenMM;
            arcStart := P04W23_ArcStart;
            arcEnd := P04W23_ArcEnd;
            approach := P04W23_Approach;
            retract := P04W23_Retract;
            trans := P04W23_Trans;
        ELSEIF slot = 24 THEN
            used := P04W24_Used;
            subType := P04W24_SubType;
            toolSel := P04W24_ToolSel;
            lenMM := P04W24_LenMM;
            arcStart := P04W24_ArcStart;
            arcEnd := P04W24_ArcEnd;
            approach := P04W24_Approach;
            retract := P04W24_Retract;
            trans := P04W24_Trans;
        ELSEIF slot = 25 THEN
            used := P04W25_Used;
            subType := P04W25_SubType;
            toolSel := P04W25_ToolSel;
            lenMM := P04W25_LenMM;
            arcStart := P04W25_ArcStart;
            arcEnd := P04W25_ArcEnd;
            approach := P04W25_Approach;
            retract := P04W25_Retract;
            trans := P04W25_Trans;
        ELSEIF slot = 26 THEN
            used := P04W26_Used;
            subType := P04W26_SubType;
            toolSel := P04W26_ToolSel;
            lenMM := P04W26_LenMM;
            arcStart := P04W26_ArcStart;
            arcEnd := P04W26_ArcEnd;
            approach := P04W26_Approach;
            retract := P04W26_Retract;
            trans := P04W26_Trans;
        ELSEIF slot = 27 THEN
            used := P04W27_Used;
            subType := P04W27_SubType;
            toolSel := P04W27_ToolSel;
            lenMM := P04W27_LenMM;
            arcStart := P04W27_ArcStart;
            arcEnd := P04W27_ArcEnd;
            approach := P04W27_Approach;
            retract := P04W27_Retract;
            trans := P04W27_Trans;
        ELSEIF slot = 28 THEN
            used := P04W28_Used;
            subType := P04W28_SubType;
            toolSel := P04W28_ToolSel;
            lenMM := P04W28_LenMM;
            arcStart := P04W28_ArcStart;
            arcEnd := P04W28_ArcEnd;
            approach := P04W28_Approach;
            retract := P04W28_Retract;
            trans := P04W28_Trans;
        ELSEIF slot = 29 THEN
            used := P04W29_Used;
            subType := P04W29_SubType;
            toolSel := P04W29_ToolSel;
            lenMM := P04W29_LenMM;
            arcStart := P04W29_ArcStart;
            arcEnd := P04W29_ArcEnd;
            approach := P04W29_Approach;
            retract := P04W29_Retract;
            trans := P04W29_Trans;
        ELSEIF slot = 30 THEN
            used := P04W30_Used;
            subType := P04W30_SubType;
            toolSel := P04W30_ToolSel;
            lenMM := P04W30_LenMM;
            arcStart := P04W30_ArcStart;
            arcEnd := P04W30_ArcEnd;
            approach := P04W30_Approach;
            retract := P04W30_Retract;
            trans := P04W30_Trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot_P04(num slot)
        IF slot = 1 THEN
            P04W01_Used := FALSE;
            P04W01_SubType := 0;
            P04W01_ToolSel := 0;
            P04W01_LenMM := 0;
            P04W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W01_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W01_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W01_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 2 THEN
            P04W02_Used := FALSE;
            P04W02_SubType := 0;
            P04W02_ToolSel := 0;
            P04W02_LenMM := 0;
            P04W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W02_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W02_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W02_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 3 THEN
            P04W03_Used := FALSE;
            P04W03_SubType := 0;
            P04W03_ToolSel := 0;
            P04W03_LenMM := 0;
            P04W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W03_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W03_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W03_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 4 THEN
            P04W04_Used := FALSE;
            P04W04_SubType := 0;
            P04W04_ToolSel := 0;
            P04W04_LenMM := 0;
            P04W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W04_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W04_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W04_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 5 THEN
            P04W05_Used := FALSE;
            P04W05_SubType := 0;
            P04W05_ToolSel := 0;
            P04W05_LenMM := 0;
            P04W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W05_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W05_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W05_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 6 THEN
            P04W06_Used := FALSE;
            P04W06_SubType := 0;
            P04W06_ToolSel := 0;
            P04W06_LenMM := 0;
            P04W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W06_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W06_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W06_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 7 THEN
            P04W07_Used := FALSE;
            P04W07_SubType := 0;
            P04W07_ToolSel := 0;
            P04W07_LenMM := 0;
            P04W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W07_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W07_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W07_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 8 THEN
            P04W08_Used := FALSE;
            P04W08_SubType := 0;
            P04W08_ToolSel := 0;
            P04W08_LenMM := 0;
            P04W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W08_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W08_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W08_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 9 THEN
            P04W09_Used := FALSE;
            P04W09_SubType := 0;
            P04W09_ToolSel := 0;
            P04W09_LenMM := 0;
            P04W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W09_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W09_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W09_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 10 THEN
            P04W10_Used := FALSE;
            P04W10_SubType := 0;
            P04W10_ToolSel := 0;
            P04W10_LenMM := 0;
            P04W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W10_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W10_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W10_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 11 THEN
            P04W11_Used := FALSE;
            P04W11_SubType := 0;
            P04W11_ToolSel := 0;
            P04W11_LenMM := 0;
            P04W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W11_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W11_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W11_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 12 THEN
            P04W12_Used := FALSE;
            P04W12_SubType := 0;
            P04W12_ToolSel := 0;
            P04W12_LenMM := 0;
            P04W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W12_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W12_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W12_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 13 THEN
            P04W13_Used := FALSE;
            P04W13_SubType := 0;
            P04W13_ToolSel := 0;
            P04W13_LenMM := 0;
            P04W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W13_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W13_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W13_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 14 THEN
            P04W14_Used := FALSE;
            P04W14_SubType := 0;
            P04W14_ToolSel := 0;
            P04W14_LenMM := 0;
            P04W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W14_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W14_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W14_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 15 THEN
            P04W15_Used := FALSE;
            P04W15_SubType := 0;
            P04W15_ToolSel := 0;
            P04W15_LenMM := 0;
            P04W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W15_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W15_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W15_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 16 THEN
            P04W16_Used := FALSE;
            P04W16_SubType := 0;
            P04W16_ToolSel := 0;
            P04W16_LenMM := 0;
            P04W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W16_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W16_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W16_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 17 THEN
            P04W17_Used := FALSE;
            P04W17_SubType := 0;
            P04W17_ToolSel := 0;
            P04W17_LenMM := 0;
            P04W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W17_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W17_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W17_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 18 THEN
            P04W18_Used := FALSE;
            P04W18_SubType := 0;
            P04W18_ToolSel := 0;
            P04W18_LenMM := 0;
            P04W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W18_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W18_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W18_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 19 THEN
            P04W19_Used := FALSE;
            P04W19_SubType := 0;
            P04W19_ToolSel := 0;
            P04W19_LenMM := 0;
            P04W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W19_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W19_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W19_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 20 THEN
            P04W20_Used := FALSE;
            P04W20_SubType := 0;
            P04W20_ToolSel := 0;
            P04W20_LenMM := 0;
            P04W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W20_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W20_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W20_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 21 THEN
            P04W21_Used := FALSE;
            P04W21_SubType := 0;
            P04W21_ToolSel := 0;
            P04W21_LenMM := 0;
            P04W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W21_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W21_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W21_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 22 THEN
            P04W22_Used := FALSE;
            P04W22_SubType := 0;
            P04W22_ToolSel := 0;
            P04W22_LenMM := 0;
            P04W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W22_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W22_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W22_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 23 THEN
            P04W23_Used := FALSE;
            P04W23_SubType := 0;
            P04W23_ToolSel := 0;
            P04W23_LenMM := 0;
            P04W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W23_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W23_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W23_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 24 THEN
            P04W24_Used := FALSE;
            P04W24_SubType := 0;
            P04W24_ToolSel := 0;
            P04W24_LenMM := 0;
            P04W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W24_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W24_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W24_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 25 THEN
            P04W25_Used := FALSE;
            P04W25_SubType := 0;
            P04W25_ToolSel := 0;
            P04W25_LenMM := 0;
            P04W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W25_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W25_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W25_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 26 THEN
            P04W26_Used := FALSE;
            P04W26_SubType := 0;
            P04W26_ToolSel := 0;
            P04W26_LenMM := 0;
            P04W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W26_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W26_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W26_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 27 THEN
            P04W27_Used := FALSE;
            P04W27_SubType := 0;
            P04W27_ToolSel := 0;
            P04W27_LenMM := 0;
            P04W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W27_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W27_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W27_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 28 THEN
            P04W28_Used := FALSE;
            P04W28_SubType := 0;
            P04W28_ToolSel := 0;
            P04W28_LenMM := 0;
            P04W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W28_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W28_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W28_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 29 THEN
            P04W29_Used := FALSE;
            P04W29_SubType := 0;
            P04W29_ToolSel := 0;
            P04W29_LenMM := 0;
            P04W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W29_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W29_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W29_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 30 THEN
            P04W30_Used := FALSE;
            P04W30_SubType := 0;
            P04W30_ToolSel := 0;
            P04W30_LenMM := 0;
            P04W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W30_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W30_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P04W30_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC StoreNextFree_P04(num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF NOT P04W01_Used THEN
            StoreSlot_P04 1, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W02_Used THEN
            StoreSlot_P04 2, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W03_Used THEN
            StoreSlot_P04 3, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W04_Used THEN
            StoreSlot_P04 4, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W05_Used THEN
            StoreSlot_P04 5, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W06_Used THEN
            StoreSlot_P04 6, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W07_Used THEN
            StoreSlot_P04 7, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W08_Used THEN
            StoreSlot_P04 8, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W09_Used THEN
            StoreSlot_P04 9, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W10_Used THEN
            StoreSlot_P04 10, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W11_Used THEN
            StoreSlot_P04 11, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W12_Used THEN
            StoreSlot_P04 12, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W13_Used THEN
            StoreSlot_P04 13, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W14_Used THEN
            StoreSlot_P04 14, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W15_Used THEN
            StoreSlot_P04 15, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W16_Used THEN
            StoreSlot_P04 16, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W17_Used THEN
            StoreSlot_P04 17, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W18_Used THEN
            StoreSlot_P04 18, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W19_Used THEN
            StoreSlot_P04 19, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W20_Used THEN
            StoreSlot_P04 20, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W21_Used THEN
            StoreSlot_P04 21, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W22_Used THEN
            StoreSlot_P04 22, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W23_Used THEN
            StoreSlot_P04 23, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W24_Used THEN
            StoreSlot_P04 24, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W25_Used THEN
            StoreSlot_P04 25, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W26_Used THEN
            StoreSlot_P04 26, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W27_Used THEN
            StoreSlot_P04 27, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W28_Used THEN
            StoreSlot_P04 28, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W29_Used THEN
            StoreSlot_P04 29, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSEIF NOT P04W30_Used THEN
            StoreSlot_P04 30, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP04 := nWeldsP04 + 1;
            RETURN;
        ELSE
            TPWrite "No free weld slots available.";
        ENDIF
    ENDPROC

    PROC StoreSlot_P05(num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF slot = 1 THEN
            P05W01_SubType := subType;
            P05W01_ToolSel := toolSel;
            P05W01_LenMM := lenMM;
            P05W01_ArcStart := arcStart;
            P05W01_ArcEnd := arcEnd;
            P05W01_Approach := approach;
            P05W01_Retract := retract;
            P05W01_Trans := trans;
            P05W01_Used := TRUE;
        ELSEIF slot = 2 THEN
            P05W02_SubType := subType;
            P05W02_ToolSel := toolSel;
            P05W02_LenMM := lenMM;
            P05W02_ArcStart := arcStart;
            P05W02_ArcEnd := arcEnd;
            P05W02_Approach := approach;
            P05W02_Retract := retract;
            P05W02_Trans := trans;
            P05W02_Used := TRUE;
        ELSEIF slot = 3 THEN
            P05W03_SubType := subType;
            P05W03_ToolSel := toolSel;
            P05W03_LenMM := lenMM;
            P05W03_ArcStart := arcStart;
            P05W03_ArcEnd := arcEnd;
            P05W03_Approach := approach;
            P05W03_Retract := retract;
            P05W03_Trans := trans;
            P05W03_Used := TRUE;
        ELSEIF slot = 4 THEN
            P05W04_SubType := subType;
            P05W04_ToolSel := toolSel;
            P05W04_LenMM := lenMM;
            P05W04_ArcStart := arcStart;
            P05W04_ArcEnd := arcEnd;
            P05W04_Approach := approach;
            P05W04_Retract := retract;
            P05W04_Trans := trans;
            P05W04_Used := TRUE;
        ELSEIF slot = 5 THEN
            P05W05_SubType := subType;
            P05W05_ToolSel := toolSel;
            P05W05_LenMM := lenMM;
            P05W05_ArcStart := arcStart;
            P05W05_ArcEnd := arcEnd;
            P05W05_Approach := approach;
            P05W05_Retract := retract;
            P05W05_Trans := trans;
            P05W05_Used := TRUE;
        ELSEIF slot = 6 THEN
            P05W06_SubType := subType;
            P05W06_ToolSel := toolSel;
            P05W06_LenMM := lenMM;
            P05W06_ArcStart := arcStart;
            P05W06_ArcEnd := arcEnd;
            P05W06_Approach := approach;
            P05W06_Retract := retract;
            P05W06_Trans := trans;
            P05W06_Used := TRUE;
        ELSEIF slot = 7 THEN
            P05W07_SubType := subType;
            P05W07_ToolSel := toolSel;
            P05W07_LenMM := lenMM;
            P05W07_ArcStart := arcStart;
            P05W07_ArcEnd := arcEnd;
            P05W07_Approach := approach;
            P05W07_Retract := retract;
            P05W07_Trans := trans;
            P05W07_Used := TRUE;
        ELSEIF slot = 8 THEN
            P05W08_SubType := subType;
            P05W08_ToolSel := toolSel;
            P05W08_LenMM := lenMM;
            P05W08_ArcStart := arcStart;
            P05W08_ArcEnd := arcEnd;
            P05W08_Approach := approach;
            P05W08_Retract := retract;
            P05W08_Trans := trans;
            P05W08_Used := TRUE;
        ELSEIF slot = 9 THEN
            P05W09_SubType := subType;
            P05W09_ToolSel := toolSel;
            P05W09_LenMM := lenMM;
            P05W09_ArcStart := arcStart;
            P05W09_ArcEnd := arcEnd;
            P05W09_Approach := approach;
            P05W09_Retract := retract;
            P05W09_Trans := trans;
            P05W09_Used := TRUE;
        ELSEIF slot = 10 THEN
            P05W10_SubType := subType;
            P05W10_ToolSel := toolSel;
            P05W10_LenMM := lenMM;
            P05W10_ArcStart := arcStart;
            P05W10_ArcEnd := arcEnd;
            P05W10_Approach := approach;
            P05W10_Retract := retract;
            P05W10_Trans := trans;
            P05W10_Used := TRUE;
        ELSEIF slot = 11 THEN
            P05W11_SubType := subType;
            P05W11_ToolSel := toolSel;
            P05W11_LenMM := lenMM;
            P05W11_ArcStart := arcStart;
            P05W11_ArcEnd := arcEnd;
            P05W11_Approach := approach;
            P05W11_Retract := retract;
            P05W11_Trans := trans;
            P05W11_Used := TRUE;
        ELSEIF slot = 12 THEN
            P05W12_SubType := subType;
            P05W12_ToolSel := toolSel;
            P05W12_LenMM := lenMM;
            P05W12_ArcStart := arcStart;
            P05W12_ArcEnd := arcEnd;
            P05W12_Approach := approach;
            P05W12_Retract := retract;
            P05W12_Trans := trans;
            P05W12_Used := TRUE;
        ELSEIF slot = 13 THEN
            P05W13_SubType := subType;
            P05W13_ToolSel := toolSel;
            P05W13_LenMM := lenMM;
            P05W13_ArcStart := arcStart;
            P05W13_ArcEnd := arcEnd;
            P05W13_Approach := approach;
            P05W13_Retract := retract;
            P05W13_Trans := trans;
            P05W13_Used := TRUE;
        ELSEIF slot = 14 THEN
            P05W14_SubType := subType;
            P05W14_ToolSel := toolSel;
            P05W14_LenMM := lenMM;
            P05W14_ArcStart := arcStart;
            P05W14_ArcEnd := arcEnd;
            P05W14_Approach := approach;
            P05W14_Retract := retract;
            P05W14_Trans := trans;
            P05W14_Used := TRUE;
        ELSEIF slot = 15 THEN
            P05W15_SubType := subType;
            P05W15_ToolSel := toolSel;
            P05W15_LenMM := lenMM;
            P05W15_ArcStart := arcStart;
            P05W15_ArcEnd := arcEnd;
            P05W15_Approach := approach;
            P05W15_Retract := retract;
            P05W15_Trans := trans;
            P05W15_Used := TRUE;
        ELSEIF slot = 16 THEN
            P05W16_SubType := subType;
            P05W16_ToolSel := toolSel;
            P05W16_LenMM := lenMM;
            P05W16_ArcStart := arcStart;
            P05W16_ArcEnd := arcEnd;
            P05W16_Approach := approach;
            P05W16_Retract := retract;
            P05W16_Trans := trans;
            P05W16_Used := TRUE;
        ELSEIF slot = 17 THEN
            P05W17_SubType := subType;
            P05W17_ToolSel := toolSel;
            P05W17_LenMM := lenMM;
            P05W17_ArcStart := arcStart;
            P05W17_ArcEnd := arcEnd;
            P05W17_Approach := approach;
            P05W17_Retract := retract;
            P05W17_Trans := trans;
            P05W17_Used := TRUE;
        ELSEIF slot = 18 THEN
            P05W18_SubType := subType;
            P05W18_ToolSel := toolSel;
            P05W18_LenMM := lenMM;
            P05W18_ArcStart := arcStart;
            P05W18_ArcEnd := arcEnd;
            P05W18_Approach := approach;
            P05W18_Retract := retract;
            P05W18_Trans := trans;
            P05W18_Used := TRUE;
        ELSEIF slot = 19 THEN
            P05W19_SubType := subType;
            P05W19_ToolSel := toolSel;
            P05W19_LenMM := lenMM;
            P05W19_ArcStart := arcStart;
            P05W19_ArcEnd := arcEnd;
            P05W19_Approach := approach;
            P05W19_Retract := retract;
            P05W19_Trans := trans;
            P05W19_Used := TRUE;
        ELSEIF slot = 20 THEN
            P05W20_SubType := subType;
            P05W20_ToolSel := toolSel;
            P05W20_LenMM := lenMM;
            P05W20_ArcStart := arcStart;
            P05W20_ArcEnd := arcEnd;
            P05W20_Approach := approach;
            P05W20_Retract := retract;
            P05W20_Trans := trans;
            P05W20_Used := TRUE;
        ELSEIF slot = 21 THEN
            P05W21_SubType := subType;
            P05W21_ToolSel := toolSel;
            P05W21_LenMM := lenMM;
            P05W21_ArcStart := arcStart;
            P05W21_ArcEnd := arcEnd;
            P05W21_Approach := approach;
            P05W21_Retract := retract;
            P05W21_Trans := trans;
            P05W21_Used := TRUE;
        ELSEIF slot = 22 THEN
            P05W22_SubType := subType;
            P05W22_ToolSel := toolSel;
            P05W22_LenMM := lenMM;
            P05W22_ArcStart := arcStart;
            P05W22_ArcEnd := arcEnd;
            P05W22_Approach := approach;
            P05W22_Retract := retract;
            P05W22_Trans := trans;
            P05W22_Used := TRUE;
        ELSEIF slot = 23 THEN
            P05W23_SubType := subType;
            P05W23_ToolSel := toolSel;
            P05W23_LenMM := lenMM;
            P05W23_ArcStart := arcStart;
            P05W23_ArcEnd := arcEnd;
            P05W23_Approach := approach;
            P05W23_Retract := retract;
            P05W23_Trans := trans;
            P05W23_Used := TRUE;
        ELSEIF slot = 24 THEN
            P05W24_SubType := subType;
            P05W24_ToolSel := toolSel;
            P05W24_LenMM := lenMM;
            P05W24_ArcStart := arcStart;
            P05W24_ArcEnd := arcEnd;
            P05W24_Approach := approach;
            P05W24_Retract := retract;
            P05W24_Trans := trans;
            P05W24_Used := TRUE;
        ELSEIF slot = 25 THEN
            P05W25_SubType := subType;
            P05W25_ToolSel := toolSel;
            P05W25_LenMM := lenMM;
            P05W25_ArcStart := arcStart;
            P05W25_ArcEnd := arcEnd;
            P05W25_Approach := approach;
            P05W25_Retract := retract;
            P05W25_Trans := trans;
            P05W25_Used := TRUE;
        ELSEIF slot = 26 THEN
            P05W26_SubType := subType;
            P05W26_ToolSel := toolSel;
            P05W26_LenMM := lenMM;
            P05W26_ArcStart := arcStart;
            P05W26_ArcEnd := arcEnd;
            P05W26_Approach := approach;
            P05W26_Retract := retract;
            P05W26_Trans := trans;
            P05W26_Used := TRUE;
        ELSEIF slot = 27 THEN
            P05W27_SubType := subType;
            P05W27_ToolSel := toolSel;
            P05W27_LenMM := lenMM;
            P05W27_ArcStart := arcStart;
            P05W27_ArcEnd := arcEnd;
            P05W27_Approach := approach;
            P05W27_Retract := retract;
            P05W27_Trans := trans;
            P05W27_Used := TRUE;
        ELSEIF slot = 28 THEN
            P05W28_SubType := subType;
            P05W28_ToolSel := toolSel;
            P05W28_LenMM := lenMM;
            P05W28_ArcStart := arcStart;
            P05W28_ArcEnd := arcEnd;
            P05W28_Approach := approach;
            P05W28_Retract := retract;
            P05W28_Trans := trans;
            P05W28_Used := TRUE;
        ELSEIF slot = 29 THEN
            P05W29_SubType := subType;
            P05W29_ToolSel := toolSel;
            P05W29_LenMM := lenMM;
            P05W29_ArcStart := arcStart;
            P05W29_ArcEnd := arcEnd;
            P05W29_Approach := approach;
            P05W29_Retract := retract;
            P05W29_Trans := trans;
            P05W29_Used := TRUE;
        ELSEIF slot = 30 THEN
            P05W30_SubType := subType;
            P05W30_ToolSel := toolSel;
            P05W30_LenMM := lenMM;
            P05W30_ArcStart := arcStart;
            P05W30_ArcEnd := arcEnd;
            P05W30_Approach := approach;
            P05W30_Retract := retract;
            P05W30_Trans := trans;
            P05W30_Used := TRUE;
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC LoadSlot_P05(num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF slot = 1 THEN
            used := P05W01_Used;
            subType := P05W01_SubType;
            toolSel := P05W01_ToolSel;
            lenMM := P05W01_LenMM;
            arcStart := P05W01_ArcStart;
            arcEnd := P05W01_ArcEnd;
            approach := P05W01_Approach;
            retract := P05W01_Retract;
            trans := P05W01_Trans;
        ELSEIF slot = 2 THEN
            used := P05W02_Used;
            subType := P05W02_SubType;
            toolSel := P05W02_ToolSel;
            lenMM := P05W02_LenMM;
            arcStart := P05W02_ArcStart;
            arcEnd := P05W02_ArcEnd;
            approach := P05W02_Approach;
            retract := P05W02_Retract;
            trans := P05W02_Trans;
        ELSEIF slot = 3 THEN
            used := P05W03_Used;
            subType := P05W03_SubType;
            toolSel := P05W03_ToolSel;
            lenMM := P05W03_LenMM;
            arcStart := P05W03_ArcStart;
            arcEnd := P05W03_ArcEnd;
            approach := P05W03_Approach;
            retract := P05W03_Retract;
            trans := P05W03_Trans;
        ELSEIF slot = 4 THEN
            used := P05W04_Used;
            subType := P05W04_SubType;
            toolSel := P05W04_ToolSel;
            lenMM := P05W04_LenMM;
            arcStart := P05W04_ArcStart;
            arcEnd := P05W04_ArcEnd;
            approach := P05W04_Approach;
            retract := P05W04_Retract;
            trans := P05W04_Trans;
        ELSEIF slot = 5 THEN
            used := P05W05_Used;
            subType := P05W05_SubType;
            toolSel := P05W05_ToolSel;
            lenMM := P05W05_LenMM;
            arcStart := P05W05_ArcStart;
            arcEnd := P05W05_ArcEnd;
            approach := P05W05_Approach;
            retract := P05W05_Retract;
            trans := P05W05_Trans;
        ELSEIF slot = 6 THEN
            used := P05W06_Used;
            subType := P05W06_SubType;
            toolSel := P05W06_ToolSel;
            lenMM := P05W06_LenMM;
            arcStart := P05W06_ArcStart;
            arcEnd := P05W06_ArcEnd;
            approach := P05W06_Approach;
            retract := P05W06_Retract;
            trans := P05W06_Trans;
        ELSEIF slot = 7 THEN
            used := P05W07_Used;
            subType := P05W07_SubType;
            toolSel := P05W07_ToolSel;
            lenMM := P05W07_LenMM;
            arcStart := P05W07_ArcStart;
            arcEnd := P05W07_ArcEnd;
            approach := P05W07_Approach;
            retract := P05W07_Retract;
            trans := P05W07_Trans;
        ELSEIF slot = 8 THEN
            used := P05W08_Used;
            subType := P05W08_SubType;
            toolSel := P05W08_ToolSel;
            lenMM := P05W08_LenMM;
            arcStart := P05W08_ArcStart;
            arcEnd := P05W08_ArcEnd;
            approach := P05W08_Approach;
            retract := P05W08_Retract;
            trans := P05W08_Trans;
        ELSEIF slot = 9 THEN
            used := P05W09_Used;
            subType := P05W09_SubType;
            toolSel := P05W09_ToolSel;
            lenMM := P05W09_LenMM;
            arcStart := P05W09_ArcStart;
            arcEnd := P05W09_ArcEnd;
            approach := P05W09_Approach;
            retract := P05W09_Retract;
            trans := P05W09_Trans;
        ELSEIF slot = 10 THEN
            used := P05W10_Used;
            subType := P05W10_SubType;
            toolSel := P05W10_ToolSel;
            lenMM := P05W10_LenMM;
            arcStart := P05W10_ArcStart;
            arcEnd := P05W10_ArcEnd;
            approach := P05W10_Approach;
            retract := P05W10_Retract;
            trans := P05W10_Trans;
        ELSEIF slot = 11 THEN
            used := P05W11_Used;
            subType := P05W11_SubType;
            toolSel := P05W11_ToolSel;
            lenMM := P05W11_LenMM;
            arcStart := P05W11_ArcStart;
            arcEnd := P05W11_ArcEnd;
            approach := P05W11_Approach;
            retract := P05W11_Retract;
            trans := P05W11_Trans;
        ELSEIF slot = 12 THEN
            used := P05W12_Used;
            subType := P05W12_SubType;
            toolSel := P05W12_ToolSel;
            lenMM := P05W12_LenMM;
            arcStart := P05W12_ArcStart;
            arcEnd := P05W12_ArcEnd;
            approach := P05W12_Approach;
            retract := P05W12_Retract;
            trans := P05W12_Trans;
        ELSEIF slot = 13 THEN
            used := P05W13_Used;
            subType := P05W13_SubType;
            toolSel := P05W13_ToolSel;
            lenMM := P05W13_LenMM;
            arcStart := P05W13_ArcStart;
            arcEnd := P05W13_ArcEnd;
            approach := P05W13_Approach;
            retract := P05W13_Retract;
            trans := P05W13_Trans;
        ELSEIF slot = 14 THEN
            used := P05W14_Used;
            subType := P05W14_SubType;
            toolSel := P05W14_ToolSel;
            lenMM := P05W14_LenMM;
            arcStart := P05W14_ArcStart;
            arcEnd := P05W14_ArcEnd;
            approach := P05W14_Approach;
            retract := P05W14_Retract;
            trans := P05W14_Trans;
        ELSEIF slot = 15 THEN
            used := P05W15_Used;
            subType := P05W15_SubType;
            toolSel := P05W15_ToolSel;
            lenMM := P05W15_LenMM;
            arcStart := P05W15_ArcStart;
            arcEnd := P05W15_ArcEnd;
            approach := P05W15_Approach;
            retract := P05W15_Retract;
            trans := P05W15_Trans;
        ELSEIF slot = 16 THEN
            used := P05W16_Used;
            subType := P05W16_SubType;
            toolSel := P05W16_ToolSel;
            lenMM := P05W16_LenMM;
            arcStart := P05W16_ArcStart;
            arcEnd := P05W16_ArcEnd;
            approach := P05W16_Approach;
            retract := P05W16_Retract;
            trans := P05W16_Trans;
        ELSEIF slot = 17 THEN
            used := P05W17_Used;
            subType := P05W17_SubType;
            toolSel := P05W17_ToolSel;
            lenMM := P05W17_LenMM;
            arcStart := P05W17_ArcStart;
            arcEnd := P05W17_ArcEnd;
            approach := P05W17_Approach;
            retract := P05W17_Retract;
            trans := P05W17_Trans;
        ELSEIF slot = 18 THEN
            used := P05W18_Used;
            subType := P05W18_SubType;
            toolSel := P05W18_ToolSel;
            lenMM := P05W18_LenMM;
            arcStart := P05W18_ArcStart;
            arcEnd := P05W18_ArcEnd;
            approach := P05W18_Approach;
            retract := P05W18_Retract;
            trans := P05W18_Trans;
        ELSEIF slot = 19 THEN
            used := P05W19_Used;
            subType := P05W19_SubType;
            toolSel := P05W19_ToolSel;
            lenMM := P05W19_LenMM;
            arcStart := P05W19_ArcStart;
            arcEnd := P05W19_ArcEnd;
            approach := P05W19_Approach;
            retract := P05W19_Retract;
            trans := P05W19_Trans;
        ELSEIF slot = 20 THEN
            used := P05W20_Used;
            subType := P05W20_SubType;
            toolSel := P05W20_ToolSel;
            lenMM := P05W20_LenMM;
            arcStart := P05W20_ArcStart;
            arcEnd := P05W20_ArcEnd;
            approach := P05W20_Approach;
            retract := P05W20_Retract;
            trans := P05W20_Trans;
        ELSEIF slot = 21 THEN
            used := P05W21_Used;
            subType := P05W21_SubType;
            toolSel := P05W21_ToolSel;
            lenMM := P05W21_LenMM;
            arcStart := P05W21_ArcStart;
            arcEnd := P05W21_ArcEnd;
            approach := P05W21_Approach;
            retract := P05W21_Retract;
            trans := P05W21_Trans;
        ELSEIF slot = 22 THEN
            used := P05W22_Used;
            subType := P05W22_SubType;
            toolSel := P05W22_ToolSel;
            lenMM := P05W22_LenMM;
            arcStart := P05W22_ArcStart;
            arcEnd := P05W22_ArcEnd;
            approach := P05W22_Approach;
            retract := P05W22_Retract;
            trans := P05W22_Trans;
        ELSEIF slot = 23 THEN
            used := P05W23_Used;
            subType := P05W23_SubType;
            toolSel := P05W23_ToolSel;
            lenMM := P05W23_LenMM;
            arcStart := P05W23_ArcStart;
            arcEnd := P05W23_ArcEnd;
            approach := P05W23_Approach;
            retract := P05W23_Retract;
            trans := P05W23_Trans;
        ELSEIF slot = 24 THEN
            used := P05W24_Used;
            subType := P05W24_SubType;
            toolSel := P05W24_ToolSel;
            lenMM := P05W24_LenMM;
            arcStart := P05W24_ArcStart;
            arcEnd := P05W24_ArcEnd;
            approach := P05W24_Approach;
            retract := P05W24_Retract;
            trans := P05W24_Trans;
        ELSEIF slot = 25 THEN
            used := P05W25_Used;
            subType := P05W25_SubType;
            toolSel := P05W25_ToolSel;
            lenMM := P05W25_LenMM;
            arcStart := P05W25_ArcStart;
            arcEnd := P05W25_ArcEnd;
            approach := P05W25_Approach;
            retract := P05W25_Retract;
            trans := P05W25_Trans;
        ELSEIF slot = 26 THEN
            used := P05W26_Used;
            subType := P05W26_SubType;
            toolSel := P05W26_ToolSel;
            lenMM := P05W26_LenMM;
            arcStart := P05W26_ArcStart;
            arcEnd := P05W26_ArcEnd;
            approach := P05W26_Approach;
            retract := P05W26_Retract;
            trans := P05W26_Trans;
        ELSEIF slot = 27 THEN
            used := P05W27_Used;
            subType := P05W27_SubType;
            toolSel := P05W27_ToolSel;
            lenMM := P05W27_LenMM;
            arcStart := P05W27_ArcStart;
            arcEnd := P05W27_ArcEnd;
            approach := P05W27_Approach;
            retract := P05W27_Retract;
            trans := P05W27_Trans;
        ELSEIF slot = 28 THEN
            used := P05W28_Used;
            subType := P05W28_SubType;
            toolSel := P05W28_ToolSel;
            lenMM := P05W28_LenMM;
            arcStart := P05W28_ArcStart;
            arcEnd := P05W28_ArcEnd;
            approach := P05W28_Approach;
            retract := P05W28_Retract;
            trans := P05W28_Trans;
        ELSEIF slot = 29 THEN
            used := P05W29_Used;
            subType := P05W29_SubType;
            toolSel := P05W29_ToolSel;
            lenMM := P05W29_LenMM;
            arcStart := P05W29_ArcStart;
            arcEnd := P05W29_ArcEnd;
            approach := P05W29_Approach;
            retract := P05W29_Retract;
            trans := P05W29_Trans;
        ELSEIF slot = 30 THEN
            used := P05W30_Used;
            subType := P05W30_SubType;
            toolSel := P05W30_ToolSel;
            lenMM := P05W30_LenMM;
            arcStart := P05W30_ArcStart;
            arcEnd := P05W30_ArcEnd;
            approach := P05W30_Approach;
            retract := P05W30_Retract;
            trans := P05W30_Trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot_P05(num slot)
        IF slot = 1 THEN
            P05W01_Used := FALSE;
            P05W01_SubType := 0;
            P05W01_ToolSel := 0;
            P05W01_LenMM := 0;
            P05W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W01_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W01_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W01_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 2 THEN
            P05W02_Used := FALSE;
            P05W02_SubType := 0;
            P05W02_ToolSel := 0;
            P05W02_LenMM := 0;
            P05W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W02_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W02_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W02_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 3 THEN
            P05W03_Used := FALSE;
            P05W03_SubType := 0;
            P05W03_ToolSel := 0;
            P05W03_LenMM := 0;
            P05W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W03_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W03_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W03_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 4 THEN
            P05W04_Used := FALSE;
            P05W04_SubType := 0;
            P05W04_ToolSel := 0;
            P05W04_LenMM := 0;
            P05W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W04_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W04_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W04_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 5 THEN
            P05W05_Used := FALSE;
            P05W05_SubType := 0;
            P05W05_ToolSel := 0;
            P05W05_LenMM := 0;
            P05W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W05_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W05_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W05_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 6 THEN
            P05W06_Used := FALSE;
            P05W06_SubType := 0;
            P05W06_ToolSel := 0;
            P05W06_LenMM := 0;
            P05W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W06_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W06_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W06_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 7 THEN
            P05W07_Used := FALSE;
            P05W07_SubType := 0;
            P05W07_ToolSel := 0;
            P05W07_LenMM := 0;
            P05W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W07_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W07_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W07_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 8 THEN
            P05W08_Used := FALSE;
            P05W08_SubType := 0;
            P05W08_ToolSel := 0;
            P05W08_LenMM := 0;
            P05W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W08_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W08_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W08_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 9 THEN
            P05W09_Used := FALSE;
            P05W09_SubType := 0;
            P05W09_ToolSel := 0;
            P05W09_LenMM := 0;
            P05W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W09_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W09_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W09_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 10 THEN
            P05W10_Used := FALSE;
            P05W10_SubType := 0;
            P05W10_ToolSel := 0;
            P05W10_LenMM := 0;
            P05W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W10_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W10_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W10_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 11 THEN
            P05W11_Used := FALSE;
            P05W11_SubType := 0;
            P05W11_ToolSel := 0;
            P05W11_LenMM := 0;
            P05W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W11_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W11_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W11_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 12 THEN
            P05W12_Used := FALSE;
            P05W12_SubType := 0;
            P05W12_ToolSel := 0;
            P05W12_LenMM := 0;
            P05W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W12_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W12_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W12_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 13 THEN
            P05W13_Used := FALSE;
            P05W13_SubType := 0;
            P05W13_ToolSel := 0;
            P05W13_LenMM := 0;
            P05W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W13_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W13_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W13_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 14 THEN
            P05W14_Used := FALSE;
            P05W14_SubType := 0;
            P05W14_ToolSel := 0;
            P05W14_LenMM := 0;
            P05W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W14_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W14_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W14_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 15 THEN
            P05W15_Used := FALSE;
            P05W15_SubType := 0;
            P05W15_ToolSel := 0;
            P05W15_LenMM := 0;
            P05W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W15_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W15_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W15_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 16 THEN
            P05W16_Used := FALSE;
            P05W16_SubType := 0;
            P05W16_ToolSel := 0;
            P05W16_LenMM := 0;
            P05W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W16_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W16_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W16_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 17 THEN
            P05W17_Used := FALSE;
            P05W17_SubType := 0;
            P05W17_ToolSel := 0;
            P05W17_LenMM := 0;
            P05W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W17_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W17_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W17_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 18 THEN
            P05W18_Used := FALSE;
            P05W18_SubType := 0;
            P05W18_ToolSel := 0;
            P05W18_LenMM := 0;
            P05W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W18_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W18_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W18_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 19 THEN
            P05W19_Used := FALSE;
            P05W19_SubType := 0;
            P05W19_ToolSel := 0;
            P05W19_LenMM := 0;
            P05W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W19_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W19_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W19_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 20 THEN
            P05W20_Used := FALSE;
            P05W20_SubType := 0;
            P05W20_ToolSel := 0;
            P05W20_LenMM := 0;
            P05W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W20_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W20_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W20_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 21 THEN
            P05W21_Used := FALSE;
            P05W21_SubType := 0;
            P05W21_ToolSel := 0;
            P05W21_LenMM := 0;
            P05W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W21_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W21_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W21_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 22 THEN
            P05W22_Used := FALSE;
            P05W22_SubType := 0;
            P05W22_ToolSel := 0;
            P05W22_LenMM := 0;
            P05W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W22_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W22_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W22_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 23 THEN
            P05W23_Used := FALSE;
            P05W23_SubType := 0;
            P05W23_ToolSel := 0;
            P05W23_LenMM := 0;
            P05W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W23_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W23_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W23_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 24 THEN
            P05W24_Used := FALSE;
            P05W24_SubType := 0;
            P05W24_ToolSel := 0;
            P05W24_LenMM := 0;
            P05W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W24_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W24_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W24_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 25 THEN
            P05W25_Used := FALSE;
            P05W25_SubType := 0;
            P05W25_ToolSel := 0;
            P05W25_LenMM := 0;
            P05W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W25_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W25_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W25_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 26 THEN
            P05W26_Used := FALSE;
            P05W26_SubType := 0;
            P05W26_ToolSel := 0;
            P05W26_LenMM := 0;
            P05W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W26_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W26_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W26_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 27 THEN
            P05W27_Used := FALSE;
            P05W27_SubType := 0;
            P05W27_ToolSel := 0;
            P05W27_LenMM := 0;
            P05W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W27_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W27_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W27_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 28 THEN
            P05W28_Used := FALSE;
            P05W28_SubType := 0;
            P05W28_ToolSel := 0;
            P05W28_LenMM := 0;
            P05W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W28_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W28_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W28_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 29 THEN
            P05W29_Used := FALSE;
            P05W29_SubType := 0;
            P05W29_ToolSel := 0;
            P05W29_LenMM := 0;
            P05W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W29_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W29_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W29_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 30 THEN
            P05W30_Used := FALSE;
            P05W30_SubType := 0;
            P05W30_ToolSel := 0;
            P05W30_LenMM := 0;
            P05W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W30_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W30_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P05W30_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC StoreNextFree_P05(num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF NOT P05W01_Used THEN
            StoreSlot_P05 1, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W02_Used THEN
            StoreSlot_P05 2, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W03_Used THEN
            StoreSlot_P05 3, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W04_Used THEN
            StoreSlot_P05 4, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W05_Used THEN
            StoreSlot_P05 5, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W06_Used THEN
            StoreSlot_P05 6, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W07_Used THEN
            StoreSlot_P05 7, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W08_Used THEN
            StoreSlot_P05 8, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W09_Used THEN
            StoreSlot_P05 9, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W10_Used THEN
            StoreSlot_P05 10, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W11_Used THEN
            StoreSlot_P05 11, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W12_Used THEN
            StoreSlot_P05 12, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W13_Used THEN
            StoreSlot_P05 13, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W14_Used THEN
            StoreSlot_P05 14, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W15_Used THEN
            StoreSlot_P05 15, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W16_Used THEN
            StoreSlot_P05 16, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W17_Used THEN
            StoreSlot_P05 17, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W18_Used THEN
            StoreSlot_P05 18, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W19_Used THEN
            StoreSlot_P05 19, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W20_Used THEN
            StoreSlot_P05 20, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W21_Used THEN
            StoreSlot_P05 21, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W22_Used THEN
            StoreSlot_P05 22, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W23_Used THEN
            StoreSlot_P05 23, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W24_Used THEN
            StoreSlot_P05 24, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W25_Used THEN
            StoreSlot_P05 25, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W26_Used THEN
            StoreSlot_P05 26, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W27_Used THEN
            StoreSlot_P05 27, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W28_Used THEN
            StoreSlot_P05 28, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W29_Used THEN
            StoreSlot_P05 29, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSEIF NOT P05W30_Used THEN
            StoreSlot_P05 30, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP05 := nWeldsP05 + 1;
            RETURN;
        ELSE
            TPWrite "No free weld slots available.";
        ENDIF
    ENDPROC

    PROC StoreSlot_P06(num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF slot = 1 THEN
            P06W01_SubType := subType;
            P06W01_ToolSel := toolSel;
            P06W01_LenMM := lenMM;
            P06W01_ArcStart := arcStart;
            P06W01_ArcEnd := arcEnd;
            P06W01_Approach := approach;
            P06W01_Retract := retract;
            P06W01_Trans := trans;
            P06W01_Used := TRUE;
        ELSEIF slot = 2 THEN
            P06W02_SubType := subType;
            P06W02_ToolSel := toolSel;
            P06W02_LenMM := lenMM;
            P06W02_ArcStart := arcStart;
            P06W02_ArcEnd := arcEnd;
            P06W02_Approach := approach;
            P06W02_Retract := retract;
            P06W02_Trans := trans;
            P06W02_Used := TRUE;
        ELSEIF slot = 3 THEN
            P06W03_SubType := subType;
            P06W03_ToolSel := toolSel;
            P06W03_LenMM := lenMM;
            P06W03_ArcStart := arcStart;
            P06W03_ArcEnd := arcEnd;
            P06W03_Approach := approach;
            P06W03_Retract := retract;
            P06W03_Trans := trans;
            P06W03_Used := TRUE;
        ELSEIF slot = 4 THEN
            P06W04_SubType := subType;
            P06W04_ToolSel := toolSel;
            P06W04_LenMM := lenMM;
            P06W04_ArcStart := arcStart;
            P06W04_ArcEnd := arcEnd;
            P06W04_Approach := approach;
            P06W04_Retract := retract;
            P06W04_Trans := trans;
            P06W04_Used := TRUE;
        ELSEIF slot = 5 THEN
            P06W05_SubType := subType;
            P06W05_ToolSel := toolSel;
            P06W05_LenMM := lenMM;
            P06W05_ArcStart := arcStart;
            P06W05_ArcEnd := arcEnd;
            P06W05_Approach := approach;
            P06W05_Retract := retract;
            P06W05_Trans := trans;
            P06W05_Used := TRUE;
        ELSEIF slot = 6 THEN
            P06W06_SubType := subType;
            P06W06_ToolSel := toolSel;
            P06W06_LenMM := lenMM;
            P06W06_ArcStart := arcStart;
            P06W06_ArcEnd := arcEnd;
            P06W06_Approach := approach;
            P06W06_Retract := retract;
            P06W06_Trans := trans;
            P06W06_Used := TRUE;
        ELSEIF slot = 7 THEN
            P06W07_SubType := subType;
            P06W07_ToolSel := toolSel;
            P06W07_LenMM := lenMM;
            P06W07_ArcStart := arcStart;
            P06W07_ArcEnd := arcEnd;
            P06W07_Approach := approach;
            P06W07_Retract := retract;
            P06W07_Trans := trans;
            P06W07_Used := TRUE;
        ELSEIF slot = 8 THEN
            P06W08_SubType := subType;
            P06W08_ToolSel := toolSel;
            P06W08_LenMM := lenMM;
            P06W08_ArcStart := arcStart;
            P06W08_ArcEnd := arcEnd;
            P06W08_Approach := approach;
            P06W08_Retract := retract;
            P06W08_Trans := trans;
            P06W08_Used := TRUE;
        ELSEIF slot = 9 THEN
            P06W09_SubType := subType;
            P06W09_ToolSel := toolSel;
            P06W09_LenMM := lenMM;
            P06W09_ArcStart := arcStart;
            P06W09_ArcEnd := arcEnd;
            P06W09_Approach := approach;
            P06W09_Retract := retract;
            P06W09_Trans := trans;
            P06W09_Used := TRUE;
        ELSEIF slot = 10 THEN
            P06W10_SubType := subType;
            P06W10_ToolSel := toolSel;
            P06W10_LenMM := lenMM;
            P06W10_ArcStart := arcStart;
            P06W10_ArcEnd := arcEnd;
            P06W10_Approach := approach;
            P06W10_Retract := retract;
            P06W10_Trans := trans;
            P06W10_Used := TRUE;
        ELSEIF slot = 11 THEN
            P06W11_SubType := subType;
            P06W11_ToolSel := toolSel;
            P06W11_LenMM := lenMM;
            P06W11_ArcStart := arcStart;
            P06W11_ArcEnd := arcEnd;
            P06W11_Approach := approach;
            P06W11_Retract := retract;
            P06W11_Trans := trans;
            P06W11_Used := TRUE;
        ELSEIF slot = 12 THEN
            P06W12_SubType := subType;
            P06W12_ToolSel := toolSel;
            P06W12_LenMM := lenMM;
            P06W12_ArcStart := arcStart;
            P06W12_ArcEnd := arcEnd;
            P06W12_Approach := approach;
            P06W12_Retract := retract;
            P06W12_Trans := trans;
            P06W12_Used := TRUE;
        ELSEIF slot = 13 THEN
            P06W13_SubType := subType;
            P06W13_ToolSel := toolSel;
            P06W13_LenMM := lenMM;
            P06W13_ArcStart := arcStart;
            P06W13_ArcEnd := arcEnd;
            P06W13_Approach := approach;
            P06W13_Retract := retract;
            P06W13_Trans := trans;
            P06W13_Used := TRUE;
        ELSEIF slot = 14 THEN
            P06W14_SubType := subType;
            P06W14_ToolSel := toolSel;
            P06W14_LenMM := lenMM;
            P06W14_ArcStart := arcStart;
            P06W14_ArcEnd := arcEnd;
            P06W14_Approach := approach;
            P06W14_Retract := retract;
            P06W14_Trans := trans;
            P06W14_Used := TRUE;
        ELSEIF slot = 15 THEN
            P06W15_SubType := subType;
            P06W15_ToolSel := toolSel;
            P06W15_LenMM := lenMM;
            P06W15_ArcStart := arcStart;
            P06W15_ArcEnd := arcEnd;
            P06W15_Approach := approach;
            P06W15_Retract := retract;
            P06W15_Trans := trans;
            P06W15_Used := TRUE;
        ELSEIF slot = 16 THEN
            P06W16_SubType := subType;
            P06W16_ToolSel := toolSel;
            P06W16_LenMM := lenMM;
            P06W16_ArcStart := arcStart;
            P06W16_ArcEnd := arcEnd;
            P06W16_Approach := approach;
            P06W16_Retract := retract;
            P06W16_Trans := trans;
            P06W16_Used := TRUE;
        ELSEIF slot = 17 THEN
            P06W17_SubType := subType;
            P06W17_ToolSel := toolSel;
            P06W17_LenMM := lenMM;
            P06W17_ArcStart := arcStart;
            P06W17_ArcEnd := arcEnd;
            P06W17_Approach := approach;
            P06W17_Retract := retract;
            P06W17_Trans := trans;
            P06W17_Used := TRUE;
        ELSEIF slot = 18 THEN
            P06W18_SubType := subType;
            P06W18_ToolSel := toolSel;
            P06W18_LenMM := lenMM;
            P06W18_ArcStart := arcStart;
            P06W18_ArcEnd := arcEnd;
            P06W18_Approach := approach;
            P06W18_Retract := retract;
            P06W18_Trans := trans;
            P06W18_Used := TRUE;
        ELSEIF slot = 19 THEN
            P06W19_SubType := subType;
            P06W19_ToolSel := toolSel;
            P06W19_LenMM := lenMM;
            P06W19_ArcStart := arcStart;
            P06W19_ArcEnd := arcEnd;
            P06W19_Approach := approach;
            P06W19_Retract := retract;
            P06W19_Trans := trans;
            P06W19_Used := TRUE;
        ELSEIF slot = 20 THEN
            P06W20_SubType := subType;
            P06W20_ToolSel := toolSel;
            P06W20_LenMM := lenMM;
            P06W20_ArcStart := arcStart;
            P06W20_ArcEnd := arcEnd;
            P06W20_Approach := approach;
            P06W20_Retract := retract;
            P06W20_Trans := trans;
            P06W20_Used := TRUE;
        ELSEIF slot = 21 THEN
            P06W21_SubType := subType;
            P06W21_ToolSel := toolSel;
            P06W21_LenMM := lenMM;
            P06W21_ArcStart := arcStart;
            P06W21_ArcEnd := arcEnd;
            P06W21_Approach := approach;
            P06W21_Retract := retract;
            P06W21_Trans := trans;
            P06W21_Used := TRUE;
        ELSEIF slot = 22 THEN
            P06W22_SubType := subType;
            P06W22_ToolSel := toolSel;
            P06W22_LenMM := lenMM;
            P06W22_ArcStart := arcStart;
            P06W22_ArcEnd := arcEnd;
            P06W22_Approach := approach;
            P06W22_Retract := retract;
            P06W22_Trans := trans;
            P06W22_Used := TRUE;
        ELSEIF slot = 23 THEN
            P06W23_SubType := subType;
            P06W23_ToolSel := toolSel;
            P06W23_LenMM := lenMM;
            P06W23_ArcStart := arcStart;
            P06W23_ArcEnd := arcEnd;
            P06W23_Approach := approach;
            P06W23_Retract := retract;
            P06W23_Trans := trans;
            P06W23_Used := TRUE;
        ELSEIF slot = 24 THEN
            P06W24_SubType := subType;
            P06W24_ToolSel := toolSel;
            P06W24_LenMM := lenMM;
            P06W24_ArcStart := arcStart;
            P06W24_ArcEnd := arcEnd;
            P06W24_Approach := approach;
            P06W24_Retract := retract;
            P06W24_Trans := trans;
            P06W24_Used := TRUE;
        ELSEIF slot = 25 THEN
            P06W25_SubType := subType;
            P06W25_ToolSel := toolSel;
            P06W25_LenMM := lenMM;
            P06W25_ArcStart := arcStart;
            P06W25_ArcEnd := arcEnd;
            P06W25_Approach := approach;
            P06W25_Retract := retract;
            P06W25_Trans := trans;
            P06W25_Used := TRUE;
        ELSEIF slot = 26 THEN
            P06W26_SubType := subType;
            P06W26_ToolSel := toolSel;
            P06W26_LenMM := lenMM;
            P06W26_ArcStart := arcStart;
            P06W26_ArcEnd := arcEnd;
            P06W26_Approach := approach;
            P06W26_Retract := retract;
            P06W26_Trans := trans;
            P06W26_Used := TRUE;
        ELSEIF slot = 27 THEN
            P06W27_SubType := subType;
            P06W27_ToolSel := toolSel;
            P06W27_LenMM := lenMM;
            P06W27_ArcStart := arcStart;
            P06W27_ArcEnd := arcEnd;
            P06W27_Approach := approach;
            P06W27_Retract := retract;
            P06W27_Trans := trans;
            P06W27_Used := TRUE;
        ELSEIF slot = 28 THEN
            P06W28_SubType := subType;
            P06W28_ToolSel := toolSel;
            P06W28_LenMM := lenMM;
            P06W28_ArcStart := arcStart;
            P06W28_ArcEnd := arcEnd;
            P06W28_Approach := approach;
            P06W28_Retract := retract;
            P06W28_Trans := trans;
            P06W28_Used := TRUE;
        ELSEIF slot = 29 THEN
            P06W29_SubType := subType;
            P06W29_ToolSel := toolSel;
            P06W29_LenMM := lenMM;
            P06W29_ArcStart := arcStart;
            P06W29_ArcEnd := arcEnd;
            P06W29_Approach := approach;
            P06W29_Retract := retract;
            P06W29_Trans := trans;
            P06W29_Used := TRUE;
        ELSEIF slot = 30 THEN
            P06W30_SubType := subType;
            P06W30_ToolSel := toolSel;
            P06W30_LenMM := lenMM;
            P06W30_ArcStart := arcStart;
            P06W30_ArcEnd := arcEnd;
            P06W30_Approach := approach;
            P06W30_Retract := retract;
            P06W30_Trans := trans;
            P06W30_Used := TRUE;
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC LoadSlot_P06(num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF slot = 1 THEN
            used := P06W01_Used;
            subType := P06W01_SubType;
            toolSel := P06W01_ToolSel;
            lenMM := P06W01_LenMM;
            arcStart := P06W01_ArcStart;
            arcEnd := P06W01_ArcEnd;
            approach := P06W01_Approach;
            retract := P06W01_Retract;
            trans := P06W01_Trans;
        ELSEIF slot = 2 THEN
            used := P06W02_Used;
            subType := P06W02_SubType;
            toolSel := P06W02_ToolSel;
            lenMM := P06W02_LenMM;
            arcStart := P06W02_ArcStart;
            arcEnd := P06W02_ArcEnd;
            approach := P06W02_Approach;
            retract := P06W02_Retract;
            trans := P06W02_Trans;
        ELSEIF slot = 3 THEN
            used := P06W03_Used;
            subType := P06W03_SubType;
            toolSel := P06W03_ToolSel;
            lenMM := P06W03_LenMM;
            arcStart := P06W03_ArcStart;
            arcEnd := P06W03_ArcEnd;
            approach := P06W03_Approach;
            retract := P06W03_Retract;
            trans := P06W03_Trans;
        ELSEIF slot = 4 THEN
            used := P06W04_Used;
            subType := P06W04_SubType;
            toolSel := P06W04_ToolSel;
            lenMM := P06W04_LenMM;
            arcStart := P06W04_ArcStart;
            arcEnd := P06W04_ArcEnd;
            approach := P06W04_Approach;
            retract := P06W04_Retract;
            trans := P06W04_Trans;
        ELSEIF slot = 5 THEN
            used := P06W05_Used;
            subType := P06W05_SubType;
            toolSel := P06W05_ToolSel;
            lenMM := P06W05_LenMM;
            arcStart := P06W05_ArcStart;
            arcEnd := P06W05_ArcEnd;
            approach := P06W05_Approach;
            retract := P06W05_Retract;
            trans := P06W05_Trans;
        ELSEIF slot = 6 THEN
            used := P06W06_Used;
            subType := P06W06_SubType;
            toolSel := P06W06_ToolSel;
            lenMM := P06W06_LenMM;
            arcStart := P06W06_ArcStart;
            arcEnd := P06W06_ArcEnd;
            approach := P06W06_Approach;
            retract := P06W06_Retract;
            trans := P06W06_Trans;
        ELSEIF slot = 7 THEN
            used := P06W07_Used;
            subType := P06W07_SubType;
            toolSel := P06W07_ToolSel;
            lenMM := P06W07_LenMM;
            arcStart := P06W07_ArcStart;
            arcEnd := P06W07_ArcEnd;
            approach := P06W07_Approach;
            retract := P06W07_Retract;
            trans := P06W07_Trans;
        ELSEIF slot = 8 THEN
            used := P06W08_Used;
            subType := P06W08_SubType;
            toolSel := P06W08_ToolSel;
            lenMM := P06W08_LenMM;
            arcStart := P06W08_ArcStart;
            arcEnd := P06W08_ArcEnd;
            approach := P06W08_Approach;
            retract := P06W08_Retract;
            trans := P06W08_Trans;
        ELSEIF slot = 9 THEN
            used := P06W09_Used;
            subType := P06W09_SubType;
            toolSel := P06W09_ToolSel;
            lenMM := P06W09_LenMM;
            arcStart := P06W09_ArcStart;
            arcEnd := P06W09_ArcEnd;
            approach := P06W09_Approach;
            retract := P06W09_Retract;
            trans := P06W09_Trans;
        ELSEIF slot = 10 THEN
            used := P06W10_Used;
            subType := P06W10_SubType;
            toolSel := P06W10_ToolSel;
            lenMM := P06W10_LenMM;
            arcStart := P06W10_ArcStart;
            arcEnd := P06W10_ArcEnd;
            approach := P06W10_Approach;
            retract := P06W10_Retract;
            trans := P06W10_Trans;
        ELSEIF slot = 11 THEN
            used := P06W11_Used;
            subType := P06W11_SubType;
            toolSel := P06W11_ToolSel;
            lenMM := P06W11_LenMM;
            arcStart := P06W11_ArcStart;
            arcEnd := P06W11_ArcEnd;
            approach := P06W11_Approach;
            retract := P06W11_Retract;
            trans := P06W11_Trans;
        ELSEIF slot = 12 THEN
            used := P06W12_Used;
            subType := P06W12_SubType;
            toolSel := P06W12_ToolSel;
            lenMM := P06W12_LenMM;
            arcStart := P06W12_ArcStart;
            arcEnd := P06W12_ArcEnd;
            approach := P06W12_Approach;
            retract := P06W12_Retract;
            trans := P06W12_Trans;
        ELSEIF slot = 13 THEN
            used := P06W13_Used;
            subType := P06W13_SubType;
            toolSel := P06W13_ToolSel;
            lenMM := P06W13_LenMM;
            arcStart := P06W13_ArcStart;
            arcEnd := P06W13_ArcEnd;
            approach := P06W13_Approach;
            retract := P06W13_Retract;
            trans := P06W13_Trans;
        ELSEIF slot = 14 THEN
            used := P06W14_Used;
            subType := P06W14_SubType;
            toolSel := P06W14_ToolSel;
            lenMM := P06W14_LenMM;
            arcStart := P06W14_ArcStart;
            arcEnd := P06W14_ArcEnd;
            approach := P06W14_Approach;
            retract := P06W14_Retract;
            trans := P06W14_Trans;
        ELSEIF slot = 15 THEN
            used := P06W15_Used;
            subType := P06W15_SubType;
            toolSel := P06W15_ToolSel;
            lenMM := P06W15_LenMM;
            arcStart := P06W15_ArcStart;
            arcEnd := P06W15_ArcEnd;
            approach := P06W15_Approach;
            retract := P06W15_Retract;
            trans := P06W15_Trans;
        ELSEIF slot = 16 THEN
            used := P06W16_Used;
            subType := P06W16_SubType;
            toolSel := P06W16_ToolSel;
            lenMM := P06W16_LenMM;
            arcStart := P06W16_ArcStart;
            arcEnd := P06W16_ArcEnd;
            approach := P06W16_Approach;
            retract := P06W16_Retract;
            trans := P06W16_Trans;
        ELSEIF slot = 17 THEN
            used := P06W17_Used;
            subType := P06W17_SubType;
            toolSel := P06W17_ToolSel;
            lenMM := P06W17_LenMM;
            arcStart := P06W17_ArcStart;
            arcEnd := P06W17_ArcEnd;
            approach := P06W17_Approach;
            retract := P06W17_Retract;
            trans := P06W17_Trans;
        ELSEIF slot = 18 THEN
            used := P06W18_Used;
            subType := P06W18_SubType;
            toolSel := P06W18_ToolSel;
            lenMM := P06W18_LenMM;
            arcStart := P06W18_ArcStart;
            arcEnd := P06W18_ArcEnd;
            approach := P06W18_Approach;
            retract := P06W18_Retract;
            trans := P06W18_Trans;
        ELSEIF slot = 19 THEN
            used := P06W19_Used;
            subType := P06W19_SubType;
            toolSel := P06W19_ToolSel;
            lenMM := P06W19_LenMM;
            arcStart := P06W19_ArcStart;
            arcEnd := P06W19_ArcEnd;
            approach := P06W19_Approach;
            retract := P06W19_Retract;
            trans := P06W19_Trans;
        ELSEIF slot = 20 THEN
            used := P06W20_Used;
            subType := P06W20_SubType;
            toolSel := P06W20_ToolSel;
            lenMM := P06W20_LenMM;
            arcStart := P06W20_ArcStart;
            arcEnd := P06W20_ArcEnd;
            approach := P06W20_Approach;
            retract := P06W20_Retract;
            trans := P06W20_Trans;
        ELSEIF slot = 21 THEN
            used := P06W21_Used;
            subType := P06W21_SubType;
            toolSel := P06W21_ToolSel;
            lenMM := P06W21_LenMM;
            arcStart := P06W21_ArcStart;
            arcEnd := P06W21_ArcEnd;
            approach := P06W21_Approach;
            retract := P06W21_Retract;
            trans := P06W21_Trans;
        ELSEIF slot = 22 THEN
            used := P06W22_Used;
            subType := P06W22_SubType;
            toolSel := P06W22_ToolSel;
            lenMM := P06W22_LenMM;
            arcStart := P06W22_ArcStart;
            arcEnd := P06W22_ArcEnd;
            approach := P06W22_Approach;
            retract := P06W22_Retract;
            trans := P06W22_Trans;
        ELSEIF slot = 23 THEN
            used := P06W23_Used;
            subType := P06W23_SubType;
            toolSel := P06W23_ToolSel;
            lenMM := P06W23_LenMM;
            arcStart := P06W23_ArcStart;
            arcEnd := P06W23_ArcEnd;
            approach := P06W23_Approach;
            retract := P06W23_Retract;
            trans := P06W23_Trans;
        ELSEIF slot = 24 THEN
            used := P06W24_Used;
            subType := P06W24_SubType;
            toolSel := P06W24_ToolSel;
            lenMM := P06W24_LenMM;
            arcStart := P06W24_ArcStart;
            arcEnd := P06W24_ArcEnd;
            approach := P06W24_Approach;
            retract := P06W24_Retract;
            trans := P06W24_Trans;
        ELSEIF slot = 25 THEN
            used := P06W25_Used;
            subType := P06W25_SubType;
            toolSel := P06W25_ToolSel;
            lenMM := P06W25_LenMM;
            arcStart := P06W25_ArcStart;
            arcEnd := P06W25_ArcEnd;
            approach := P06W25_Approach;
            retract := P06W25_Retract;
            trans := P06W25_Trans;
        ELSEIF slot = 26 THEN
            used := P06W26_Used;
            subType := P06W26_SubType;
            toolSel := P06W26_ToolSel;
            lenMM := P06W26_LenMM;
            arcStart := P06W26_ArcStart;
            arcEnd := P06W26_ArcEnd;
            approach := P06W26_Approach;
            retract := P06W26_Retract;
            trans := P06W26_Trans;
        ELSEIF slot = 27 THEN
            used := P06W27_Used;
            subType := P06W27_SubType;
            toolSel := P06W27_ToolSel;
            lenMM := P06W27_LenMM;
            arcStart := P06W27_ArcStart;
            arcEnd := P06W27_ArcEnd;
            approach := P06W27_Approach;
            retract := P06W27_Retract;
            trans := P06W27_Trans;
        ELSEIF slot = 28 THEN
            used := P06W28_Used;
            subType := P06W28_SubType;
            toolSel := P06W28_ToolSel;
            lenMM := P06W28_LenMM;
            arcStart := P06W28_ArcStart;
            arcEnd := P06W28_ArcEnd;
            approach := P06W28_Approach;
            retract := P06W28_Retract;
            trans := P06W28_Trans;
        ELSEIF slot = 29 THEN
            used := P06W29_Used;
            subType := P06W29_SubType;
            toolSel := P06W29_ToolSel;
            lenMM := P06W29_LenMM;
            arcStart := P06W29_ArcStart;
            arcEnd := P06W29_ArcEnd;
            approach := P06W29_Approach;
            retract := P06W29_Retract;
            trans := P06W29_Trans;
        ELSEIF slot = 30 THEN
            used := P06W30_Used;
            subType := P06W30_SubType;
            toolSel := P06W30_ToolSel;
            lenMM := P06W30_LenMM;
            arcStart := P06W30_ArcStart;
            arcEnd := P06W30_ArcEnd;
            approach := P06W30_Approach;
            retract := P06W30_Retract;
            trans := P06W30_Trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot_P06(num slot)
        IF slot = 1 THEN
            P06W01_Used := FALSE;
            P06W01_SubType := 0;
            P06W01_ToolSel := 0;
            P06W01_LenMM := 0;
            P06W01_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W01_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W01_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W01_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W01_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 2 THEN
            P06W02_Used := FALSE;
            P06W02_SubType := 0;
            P06W02_ToolSel := 0;
            P06W02_LenMM := 0;
            P06W02_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W02_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W02_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W02_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W02_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 3 THEN
            P06W03_Used := FALSE;
            P06W03_SubType := 0;
            P06W03_ToolSel := 0;
            P06W03_LenMM := 0;
            P06W03_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W03_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W03_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W03_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W03_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 4 THEN
            P06W04_Used := FALSE;
            P06W04_SubType := 0;
            P06W04_ToolSel := 0;
            P06W04_LenMM := 0;
            P06W04_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W04_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W04_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W04_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W04_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 5 THEN
            P06W05_Used := FALSE;
            P06W05_SubType := 0;
            P06W05_ToolSel := 0;
            P06W05_LenMM := 0;
            P06W05_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W05_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W05_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W05_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W05_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 6 THEN
            P06W06_Used := FALSE;
            P06W06_SubType := 0;
            P06W06_ToolSel := 0;
            P06W06_LenMM := 0;
            P06W06_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W06_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W06_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W06_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W06_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 7 THEN
            P06W07_Used := FALSE;
            P06W07_SubType := 0;
            P06W07_ToolSel := 0;
            P06W07_LenMM := 0;
            P06W07_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W07_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W07_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W07_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W07_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 8 THEN
            P06W08_Used := FALSE;
            P06W08_SubType := 0;
            P06W08_ToolSel := 0;
            P06W08_LenMM := 0;
            P06W08_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W08_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W08_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W08_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W08_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 9 THEN
            P06W09_Used := FALSE;
            P06W09_SubType := 0;
            P06W09_ToolSel := 0;
            P06W09_LenMM := 0;
            P06W09_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W09_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W09_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W09_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W09_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 10 THEN
            P06W10_Used := FALSE;
            P06W10_SubType := 0;
            P06W10_ToolSel := 0;
            P06W10_LenMM := 0;
            P06W10_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W10_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W10_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W10_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W10_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 11 THEN
            P06W11_Used := FALSE;
            P06W11_SubType := 0;
            P06W11_ToolSel := 0;
            P06W11_LenMM := 0;
            P06W11_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W11_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W11_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W11_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W11_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 12 THEN
            P06W12_Used := FALSE;
            P06W12_SubType := 0;
            P06W12_ToolSel := 0;
            P06W12_LenMM := 0;
            P06W12_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W12_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W12_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W12_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W12_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 13 THEN
            P06W13_Used := FALSE;
            P06W13_SubType := 0;
            P06W13_ToolSel := 0;
            P06W13_LenMM := 0;
            P06W13_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W13_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W13_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W13_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W13_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 14 THEN
            P06W14_Used := FALSE;
            P06W14_SubType := 0;
            P06W14_ToolSel := 0;
            P06W14_LenMM := 0;
            P06W14_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W14_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W14_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W14_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W14_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 15 THEN
            P06W15_Used := FALSE;
            P06W15_SubType := 0;
            P06W15_ToolSel := 0;
            P06W15_LenMM := 0;
            P06W15_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W15_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W15_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W15_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W15_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 16 THEN
            P06W16_Used := FALSE;
            P06W16_SubType := 0;
            P06W16_ToolSel := 0;
            P06W16_LenMM := 0;
            P06W16_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W16_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W16_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W16_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W16_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 17 THEN
            P06W17_Used := FALSE;
            P06W17_SubType := 0;
            P06W17_ToolSel := 0;
            P06W17_LenMM := 0;
            P06W17_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W17_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W17_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W17_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W17_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 18 THEN
            P06W18_Used := FALSE;
            P06W18_SubType := 0;
            P06W18_ToolSel := 0;
            P06W18_LenMM := 0;
            P06W18_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W18_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W18_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W18_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W18_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 19 THEN
            P06W19_Used := FALSE;
            P06W19_SubType := 0;
            P06W19_ToolSel := 0;
            P06W19_LenMM := 0;
            P06W19_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W19_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W19_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W19_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W19_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 20 THEN
            P06W20_Used := FALSE;
            P06W20_SubType := 0;
            P06W20_ToolSel := 0;
            P06W20_LenMM := 0;
            P06W20_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W20_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W20_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W20_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W20_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 21 THEN
            P06W21_Used := FALSE;
            P06W21_SubType := 0;
            P06W21_ToolSel := 0;
            P06W21_LenMM := 0;
            P06W21_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W21_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W21_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W21_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W21_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 22 THEN
            P06W22_Used := FALSE;
            P06W22_SubType := 0;
            P06W22_ToolSel := 0;
            P06W22_LenMM := 0;
            P06W22_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W22_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W22_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W22_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W22_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 23 THEN
            P06W23_Used := FALSE;
            P06W23_SubType := 0;
            P06W23_ToolSel := 0;
            P06W23_LenMM := 0;
            P06W23_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W23_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W23_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W23_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W23_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 24 THEN
            P06W24_Used := FALSE;
            P06W24_SubType := 0;
            P06W24_ToolSel := 0;
            P06W24_LenMM := 0;
            P06W24_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W24_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W24_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W24_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W24_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 25 THEN
            P06W25_Used := FALSE;
            P06W25_SubType := 0;
            P06W25_ToolSel := 0;
            P06W25_LenMM := 0;
            P06W25_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W25_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W25_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W25_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W25_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 26 THEN
            P06W26_Used := FALSE;
            P06W26_SubType := 0;
            P06W26_ToolSel := 0;
            P06W26_LenMM := 0;
            P06W26_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W26_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W26_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W26_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W26_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 27 THEN
            P06W27_Used := FALSE;
            P06W27_SubType := 0;
            P06W27_ToolSel := 0;
            P06W27_LenMM := 0;
            P06W27_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W27_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W27_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W27_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W27_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 28 THEN
            P06W28_Used := FALSE;
            P06W28_SubType := 0;
            P06W28_ToolSel := 0;
            P06W28_LenMM := 0;
            P06W28_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W28_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W28_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W28_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W28_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 29 THEN
            P06W29_Used := FALSE;
            P06W29_SubType := 0;
            P06W29_ToolSel := 0;
            P06W29_LenMM := 0;
            P06W29_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W29_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W29_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W29_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W29_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSEIF slot = 30 THEN
            P06W30_Used := FALSE;
            P06W30_SubType := 0;
            P06W30_ToolSel := 0;
            P06W30_LenMM := 0;
            P06W30_ArcStart := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W30_ArcEnd := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W30_Approach := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W30_Retract := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
            P06W30_Trans := [[0,0,0],[1,0,0,0],[0,0,0,0],[9E9,9E9,9E9,9E9,9E9,9E9]];
        ELSE
            TPWrite "Invalid weld slot.";
        ENDIF
    ENDPROC

    PROC StoreNextFree_P06(num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF NOT P06W01_Used THEN
            StoreSlot_P06 1, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W02_Used THEN
            StoreSlot_P06 2, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W03_Used THEN
            StoreSlot_P06 3, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W04_Used THEN
            StoreSlot_P06 4, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W05_Used THEN
            StoreSlot_P06 5, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W06_Used THEN
            StoreSlot_P06 6, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W07_Used THEN
            StoreSlot_P06 7, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W08_Used THEN
            StoreSlot_P06 8, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W09_Used THEN
            StoreSlot_P06 9, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W10_Used THEN
            StoreSlot_P06 10, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W11_Used THEN
            StoreSlot_P06 11, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W12_Used THEN
            StoreSlot_P06 12, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W13_Used THEN
            StoreSlot_P06 13, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W14_Used THEN
            StoreSlot_P06 14, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W15_Used THEN
            StoreSlot_P06 15, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W16_Used THEN
            StoreSlot_P06 16, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W17_Used THEN
            StoreSlot_P06 17, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W18_Used THEN
            StoreSlot_P06 18, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W19_Used THEN
            StoreSlot_P06 19, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W20_Used THEN
            StoreSlot_P06 20, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W21_Used THEN
            StoreSlot_P06 21, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W22_Used THEN
            StoreSlot_P06 22, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W23_Used THEN
            StoreSlot_P06 23, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W24_Used THEN
            StoreSlot_P06 24, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W25_Used THEN
            StoreSlot_P06 25, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W26_Used THEN
            StoreSlot_P06 26, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W27_Used THEN
            StoreSlot_P06 27, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W28_Used THEN
            StoreSlot_P06 28, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W29_Used THEN
            StoreSlot_P06 29, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSEIF NOT P06W30_Used THEN
            StoreSlot_P06 30, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
            nWeldsP06 := nWeldsP06 + 1;
            RETURN;
        ELSE
            TPWrite "No free weld slots available.";
        ENDIF
    ENDPROC

    PROC StoreNextFree(num partNum, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF partNum = 1 THEN
            StoreNextFree_P01 subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 2 THEN
            StoreNextFree_P02 subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 3 THEN
            StoreNextFree_P03 subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 4 THEN
            StoreNextFree_P04 subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 5 THEN
            StoreNextFree_P05 subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 6 THEN
            StoreNextFree_P06 subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSE
            TPWrite "Invalid part selection.";
        ENDIF
    ENDPROC

    PROC StoreSlot(num partNum, num slot, num subType, num toolSel, num lenMM,
                       robtarget arcStart, robtarget arcEnd, robtarget approach, robtarget retract, robtarget trans)
        IF partNum = 1 THEN
            StoreSlot_P01 slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 2 THEN
            StoreSlot_P02 slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 3 THEN
            StoreSlot_P03 slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 4 THEN
            StoreSlot_P04 slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 5 THEN
            StoreSlot_P05 slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 6 THEN
            StoreSlot_P06 slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSE
            TPWrite "Invalid part selection.";
        ENDIF
    ENDPROC

    PROC LoadSlot(num partNum, num slot, VAR bool used, VAR num subType, VAR num toolSel, VAR num lenMM,
                       VAR robtarget arcStart, VAR robtarget arcEnd, VAR robtarget approach, VAR robtarget retract, VAR robtarget trans)
        IF partNum = 1 THEN
            LoadSlot_P01 slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 2 THEN
            LoadSlot_P02 slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 3 THEN
            LoadSlot_P03 slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 4 THEN
            LoadSlot_P04 slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 5 THEN
            LoadSlot_P05 slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSEIF partNum = 6 THEN
            LoadSlot_P06 slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        ELSE
            used := FALSE;
        ENDIF
    ENDPROC

    PROC ClearSlot(num partNum, num slot)
        IF partNum = 1 THEN
            ClearSlot_P01 slot;
        ELSEIF partNum = 2 THEN
            ClearSlot_P02 slot;
        ELSEIF partNum = 3 THEN
            ClearSlot_P03 slot;
        ELSEIF partNum = 4 THEN
            ClearSlot_P04 slot;
        ELSEIF partNum = 5 THEN
            ClearSlot_P05 slot;
        ELSEIF partNum = 6 THEN
            ClearSlot_P06 slot;
        ELSE
            TPWrite "Invalid part selection.";
        ENDIF
    ENDPROC

    PROC AddWeld(num partNum)
        VAR num major;
        VAR num subType;
        VAR num toolSel;
        VAR num lenIn;
        VAR num lenMM;
        VAR robtarget pStart;
        VAR robtarget pEnd;
        VAR robtarget aS;
        VAR robtarget aE;
        VAR robtarget aA;
        VAR robtarget aR;
        VAR robtarget aT;
        VAR bool repeat;
        VAR num distIn;
        VAR num distMM;
        VAR num cornerType;

        TPWrite "Add Weld - choose type: 1=Vert 2=Horiz 3=Corner 4=Free";
        TPReadNum major, "";

        IF major = WT_VERT THEN
            TPWrite "Vert subtype: 11=YLeft 12=YRight 13=YMid";
            TPReadNum subType, "";
            IF subType = WSV_YLEFT THEN
                toolSel := T_OLEFT;
            ELSEIF subType = WSV_YRIGHT THEN
                toolSel := T_ORIGHT;
            ELSE
                toolSel := T_OYMID;
            ENDIF
        ELSEIF major = WT_HORIZ THEN
            TPWrite "Horiz subtype: 21=XUp 22=XDn 23=XMid";
            TPReadNum subType, "";
            IF subType = WSH_XUP THEN
                toolSel := T_OUP;
            ELSEIF subType = WSH_XDN THEN
                toolSel := T_ODOWN;
            ELSE
                toolSel := T_OXMID;
            ENDIF
        ELSEIF major = WT_FREE THEN
            subType := WSF_FREE;
            TPWrite "Free weld orientation tool: 1=Left 2=Right 3=Up 4=Down 5=YMid 6=XMid";
            TPReadNum toolSel, "";
        ELSE
            TPWrite "Corner subtype: 31=ULC 32=URC 33=DLC 34=DRC";
            TPReadNum subType, "";
            cornerType := subType;
        ENDIF

        IF major = WT_CORNER THEN
            TPWrite "Enter corner length (inches):";
            TPReadNum lenIn, "";
            lenMM := lenIn*INCH;
            TPWrite "Jog to CORNER point (not start). Press Play.";
            Stop;
            pStart := CRobT(\Tool:=tool0);

            ! ---- Y leg ----
            IF cornerType = WSC_ULC OR cornerType = WSC_DLC THEN
                toolSel := T_OLEFT;
                subType := WSV_YLEFT;
            ELSE
                toolSel := T_ORIGHT;
                subType := WSV_YRIGHT;
            ENDIF

            IF cornerType = WSC_DLC OR cornerType = WSC_DRC THEN
                aS := Offs(pStart, 0, +lenMM, 0);
            ELSE
                aS := pStart;
            ENDIF

            BuildWeldFromStart aS, pEnd, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
            StoreNextFree partNum, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
            DryRun aT, aA, aS, aE, aR;

            ! ---- X leg ----
            IF cornerType = WSC_ULC OR cornerType = WSC_URC THEN
                toolSel := T_OUP;
                subType := WSH_XUP;
            ELSE
                toolSel := T_ODOWN;
                subType := WSH_XDN;
            ENDIF

            IF cornerType = WSC_URC OR cornerType = WSC_DRC THEN
                aS := Offs(pStart, -lenMM, 0, 0);
            ELSE
                aS := pStart;
            ENDIF

            BuildWeldFromStart aS, pEnd, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
            StoreNextFree partNum, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
            DryRun aT, aA, aS, aE, aR;
            RETURN;
        ENDIF

        IF major <> WT_FREE THEN
            TPWrite "Enter weld length (inches):";
            TPReadNum lenIn, "";
            lenMM := lenIn*INCH;
        ELSE
            lenMM := 0;
        ENDIF

        IF major = WT_FREE THEN
            TPWrite "Jog to FREE WELD START. Press Play.";
            Stop;
            pStart := CRobT(\Tool:=tool0);
            TPWrite "Jog to FREE WELD END. Press Play.";
            Stop;
            pEnd := CRobT(\Tool:=tool0);
        ELSE
            TPWrite "Jog to START point. Press Play.";
            Stop;
            pStart := CRobT(\Tool:=tool0);
            pEnd := pStart;
        ENDIF

        BuildWeldFromStart pStart, pEnd, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
        StoreNextFree partNum, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
        DryRun aT, aA, aS, aE, aR;

        IF major = WT_VERT OR major = WT_HORIZ THEN
            TPWrite "Repeat? 1=Yes 0=No";
            TPReadNum lenIn, "";
            repeat := (lenIn = 1);
            WHILE repeat DO
                TPWrite "Enter distance to next start (inches, +/-):";
                TPReadNum distIn, "";
                distMM := distIn*INCH;
                IF major = WT_VERT THEN
                    pStart := Offs(pStart, 0, distMM, 0);
                ELSE
                    pStart := Offs(pStart, distMM, 0, 0);
                ENDIF
                BuildWeldFromStart pStart, pEnd, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
                StoreNextFree partNum, subType, toolSel, lenMM, aS, aE, aA, aR, aT;
                DryRun aT, aA, aS, aE, aR;
                TPWrite "Repeat again? 1=Yes 0=No";
                TPReadNum lenIn, "";
                repeat := (lenIn = 1);
            ENDWHILE
        ENDIF
    ENDPROC

    PROC ReviewWeld(num partNum, num slot)
        VAR bool used;
        VAR num subType;
        VAR num toolSel;
        VAR num lenMM;
        VAR robtarget arcStart;
        VAR robtarget arcEnd;
        VAR robtarget approach;
        VAR robtarget retract;
        VAR robtarget trans;
        LoadSlot partNum, slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        IF used THEN
            DryRun trans, approach, arcStart, arcEnd, retract;
        ELSE
            TPWrite "Slot is empty.";
        ENDIF
    ENDPROC

    PROC EditWeld(num partNum, num slot)
        VAR bool used;
        VAR num subType;
        VAR num toolSel;
        VAR num lenMM;
        VAR num lenIn;
        VAR robtarget arcStart;
        VAR robtarget arcEnd;
        VAR robtarget approach;
        VAR robtarget retract;
        VAR robtarget trans;
        VAR robtarget pStart;
        VAR robtarget pEnd;
        LoadSlot partNum, slot, used, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        IF NOT used THEN
            TPWrite "Slot is empty.";
            RETURN;
        ENDIF
        MoveL approach, v100, z10, tool0;
        TPWrite "Jog to new start point, then press Play.";
        Stop;
        pStart := CRobT(\Tool:=tool0);
        IF subType = WSF_FREE THEN
            TPWrite "Jog to new end point, then press Play.";
            Stop;
            pEnd := CRobT(\Tool:=tool0);
        ELSE
            pEnd := pStart;
        ENDIF
        IF subType <> WSF_FREE THEN
            TPWrite "Enter length (inches) to keep or update:";
            TPReadNum lenIn, "";
            lenMM := lenIn*INCH;
        ENDIF
        BuildWeldFromStart pStart, pEnd, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        StoreSlot partNum, slot, subType, toolSel, lenMM, arcStart, arcEnd, approach, retract, trans;
        TPWrite "Weld updated.";
    ENDPROC

    PROC DeleteWeld(num partNum, num slot)
        VAR num confirm;
        TPWrite "Delete weld slot? 1=Yes 0=No";
        TPReadNum confirm, "";
        IF confirm = 1 THEN
            ClearSlot partNum, slot;
            TPWrite "Weld deleted.";
        ENDIF
    ENDPROC

    PROC mainweld()
        VAR num partNum;
        VAR num choice;
        TPWrite "Select Part (1-6):";
        TPReadNum partNum, "";
        TPWrite "1=Teach Ori 2=Setup Part 3=Add Weld 4=Review 5=Edit 6=Delete";
        TPReadNum choice, "";
        IF choice = 1 THEN
            TPWrite "Tool: 1=Left 2=Right 3=Up 4=Down 5=YMid 6=XMid";
            TPReadNum choice, "";
            TeachOrientation choice;
        ELSEIF choice = 2 THEN
            IF partNum = 1 THEN
                SetupP01;
            ELSEIF partNum = 2 THEN
                SetupP02;
            ELSEIF partNum = 3 THEN
                SetupP03;
            ELSEIF partNum = 4 THEN
                SetupP04;
            ELSEIF partNum = 5 THEN
                SetupP05;
            ELSEIF partNum = 6 THEN
                SetupP06;
            ELSE
                TPWrite "Invalid part selection.";
            ENDIF
        ELSEIF choice = 3 THEN
            AddWeld partNum;
        ELSEIF choice = 4 THEN
            TPWrite "Enter weld slot to review (1-30):";
            TPReadNum choice, "";
            ReviewWeld partNum, choice;
        ELSEIF choice = 5 THEN
            TPWrite "Enter weld slot to edit (1-30):";
            TPReadNum choice, "";
            EditWeld partNum, choice;
        ELSEIF choice = 6 THEN
            TPWrite "Enter weld slot to delete (1-30):";
            TPReadNum choice, "";
            DeleteWeld partNum, choice;
        ELSE
            TPWrite "Invalid selection.";
        ENDIF
    ENDPROC

ENDMODULE
