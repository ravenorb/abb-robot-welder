# Step through and test a part program (slow mode)

Use this guide to validate all weld points in a part program by stepping through slowly in manual mode.

## 1) Prepare the program

- Select the part using the Parts menu (Part 1–10 or other selections). The selection is stored and shown on the main menu display. 【F:RAPID/PROGMOD/Side_Menus.mod†L62-L145】【F:RAPID/PROGMOD/LogicZ.mod†L260-L338】
- Ensure the selected part module matches the workpiece you want to verify. The main sequence is executed through `rRun` in `LogicZ`.【F:RAPID/PROGMOD/LogicZ.mod†L95-L176】

## 2) Enter manual mode and reduce speed

- Switch the controller to **Manual/T1**.
- Reduce the speed slider to a low value (e.g., 5–10%).
- Use **Single Step** execution so each move is executed intentionally.

## 3) Step through the approach and weld path

- The part sequence typically moves to **Home → Safe → Pounce** positions before the weld path begins, then runs the approach/start/end/depart targets. This pattern is shown in `RunPart_1`.【F:RAPID/PROGMOD/Part_1.mod†L42-L52】
- Single-step each `MoveJ` / `MoveL` and each `ArcLStart` / `ArcLEnd` instruction to confirm clearance and torch orientation. (See the order of motion in `RunPart_1`.)【F:RAPID/PROGMOD/Part_1.mod†L42-L52】

## 4) Confirm weld points

At each weld point:

- Confirm the torch tip is correctly aligned at `pPartStart` and `pPartEnd` (or any additional points you added).
- Verify the work object is correct and there are no collisions when moving between points.

## 5) Optional tooling checks

If you are validating the full cycle, include optional tool checks for BullsEye and torch cleaning. These are typically called at the start of the part module and can be enabled/disabled with `bUseBullseye` and `bUseTorchClean`.【F:RAPID/PROGMOD/Part_1.mod†L12-L40】

