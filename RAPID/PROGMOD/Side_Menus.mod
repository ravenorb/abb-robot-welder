 MODULE Side_Menus
    VAR num regPartsMenu01:=0;
    VAR num regPartsMenu02:=0;
    VAR num regOptionsMenu01:=0;
    VAR num regOffsetMenu01:=0;

    PROC rOptionsMenu()
        TPErase;
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        TPWrite "!!!            OPTIONS MENU          !!!";
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        TPWrite "Dry Run ==> "\Bool:=bDryRun;
        TPWrite "Offset S1 ==> "\Num:=regYskipValOrgS1;
        TPWrite "Offset S2 ==> "\Num:=regYskipValOrgS2;
        TPReadFK regOptionsMenu01, "Select Option", "Service", "Dry Run", "Offsets", "Gun Clean", "Return";
        TEST regOptionsMenu01
        CASE 1:
            rService;
        CASE 2:
            rToggleDryRun;
            rOptionsMenu;
        CASE 3:
            rOffsetMenu;
        CASE 4:
            rTC2013;
            rOptionsMenu;
        CASE 5:
            RETURN;
        ENDTEST
    ENDPROC

    PROC rOffsetMenu()
        TPErase;
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        TPWrite "!!!           OFFSET MENU            !!!";
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        rMSG;
        TPReadFK regOffsetMenu01, "Select Offset", "Station 1", "Station 2", "Show", "Reset", "Return";
        TEST regOffsetMenu01
        CASE 1:
            rGetOffsetS1;
            rOffsetMenu;
        CASE 2:
            rGetOffsetS2;
            rOffsetMenu;
        CASE 3:
            rMSG;
            rOffsetMenu;
        CASE 4:
            rResetOffsets;
            rOffsetMenu;
        CASE 5:
            RETURN;
        ENDTEST
    ENDPROC

    PROC rPartsMenu()
        TPErase;
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        TPWrite "!!!       Building Quality Parts     !!!";
        TPWrite "!!!         Select Part to Run       !!!";
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        rPartsMenuDisplay;
        TPReadFK regPartsMenu01, "Select Part", "Part 1", "Part 2", "Part 3", "Part 4", "Part 5", "Next";
        TEST regPartsMenu01
        CASE 0:
            RETURN;
        CASE 1:
            rResetBoolS1;
            bPart1 := TRUE;
            rPartsMenu;
        CASE 2:
            rResetBoolS1;
            bPart2 := TRUE;
            rPartsMenu;
        CASE 3:
            rResetBoolS1;
            bPart3 := TRUE;
            rPartsMenu;
        CASE 4:
            rResetBoolS1;
            bPart4 := TRUE;
            rPartsMenu;
        CASE 5:
            rResetBoolS1;
            bPart5 := TRUE;
            rPartsMenu;
        CASE 6:
            rPartsMenuPage2;
        ENDTEST
    ENDPROC

    PROC rPartsMenuPage2()
        TPErase;
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        TPWrite "!!!       Building Quality Parts     !!!";
        TPWrite "!!!         Select Part to Run       !!!";
        TPWrite "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!";
        rPartsMenuDisplay;
        TPReadFK regPartsMenu02, "Select Part", "Part 6", "Part 7", "Part 8", "Part 9", "Part 10", "Prev";
        TEST regPartsMenu02
        CASE 0:
            RETURN;
        CASE 1:
            rResetBoolS1;
            bPart6 := TRUE;
            rPartsMenuPage2;
        CASE 2:
            rResetBoolS1;
            bPart7 := TRUE;
            rPartsMenuPage2;
        CASE 3:
            rResetBoolS1;
            bPart8 := TRUE;
            rPartsMenuPage2;
        CASE 4:
            rResetBoolS1;
            bPart9 := TRUE;
            rPartsMenuPage2;
        CASE 5:
            rResetBoolS1;
            bPart10 := TRUE;
            rPartsMenuPage2;
        CASE 6:
            rPartsMenu;
        ENDTEST
    ENDPROC
ENDMODULE
