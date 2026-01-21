# Operator checklist

Use this checklist at the start of a shift, after program changes, or before running a new part.

## Pre-run checks

- Confirm the correct part program is selected in the Parts menu (Part 1–10 or other menu selections).【F:RAPID/PROGMOD/Side_Menus.mod†L62-L260】
- Verify the main menu display shows the intended selection (see `rMainBDisplay`).【F:RAPID/PROGMOD/LogicZ.mod†L260-L338】
- If required, run **BullsEye** to confirm TCP accuracy (`BECheckToolb`).【F:RAPID/PROGMOD/Side_Menus.mod†L43-L48】【F:RAPID/PROGMOD/BE_User1.mod†L33-L52】
- If required, run **Torch Cleaning** (`rTC2013` or `MechCleanGun`).【F:RAPID/PROGMOD/Side_Menus.mod†L37-L43】【F:RAPID/PROGMOD/LogicZ.mod†L199-L236】【F:RAPID/PROGMOD/mTSC.mod†L70-L110】

## Program change checks

- If a part program was edited, step through in slow mode to validate approach/start/end/depart points. The baseline pattern is shown in the part modules (e.g., `RunPart_1`).【F:RAPID/PROGMOD/Part_1.mod†L42-L52】
- Confirm optional tooling steps (`bUseBullseye`, `bUseTorchClean`) are correctly set in the part module.【F:RAPID/PROGMOD/Part_1.mod†L12-L40】

## Post-run

- Confirm the program returned to Safe and Home positions after the weld path completes. The standard sequence is shown in the part module structure.【F:RAPID/PROGMOD/Part_1.mod†L53-L60】

