# Start-up and run a part program

This guide describes the operator workflow for starting the cell and running the currently selected part program.

## 1) Power-up and initial checks

- Verify the cell is ready to run per your plant’s standard safety procedure.
- On the pendant, open the main menu. The main menu provides **Home**, **Service**, **Tools**, **Parts**, and **Run** options from `MainModule.main`.【F:RAPID/PROGMOD/MainModule.mod†L6-L35】

## 2) Move to Home (optional)

- Select **Home** from the main menu to move to the home position (`rHome`).【F:RAPID/PROGMOD/MainModule.mod†L16-L33】【F:RAPID/PROGMOD/LogicZ.mod†L139-L148】
- Use **Service** when you need access to the service position (`rService`).【F:RAPID/PROGMOD/MainModule.mod†L16-L33】【F:RAPID/PROGMOD/LogicZ.mod†L149-L157】

## 3) Run tooling checks (as required)

Open **Tools** to access setup, torch cleaning, and BullsEye tool check options. The tools menu is defined in `rToolsMenu`.【F:RAPID/PROGMOD/Side_Menus.mod†L21-L52】

- **rSetup**: moves through service positions with stop points for verification or reteaching (`rSetup`).【F:RAPID/PROGMOD/Side_Menus.mod†L29-L36】【F:RAPID/PROGMOD/LogicZ.mod†L29-L66】
- **TchCln**: runs torch cleaning via `rTC2013` (wire cut + ream + spray).【F:RAPID/PROGMOD/Side_Menus.mod†L37-L43】【F:RAPID/PROGMOD/LogicZ.mod†L199-L236】
- **Bullseye**: runs `BECheckToolb` to verify TCP (BullsEye).【F:RAPID/PROGMOD/Side_Menus.mod†L43-L48】【F:RAPID/PROGMOD/BE_User1.mod†L33-L52】

## 4) Select a part

- Choose **Parts** from the main menu to open the part selection pages.
- The Parts menu allows selection of Part 1–10. Each selection sets a boolean that `rRun` uses to run the correct program.【F:RAPID/PROGMOD/Side_Menus.mod†L62-L145】【F:RAPID/PROGMOD/LogicZ.mod†L95-L176】

## 5) Run the selected part

- Return to the main menu and select **Run** to execute the selected program (`rRun`).【F:RAPID/PROGMOD/MainModule.mod†L22-L35】【F:RAPID/PROGMOD/LogicZ.mod†L95-L176】
- The part program typically performs:
  - Optional BullsEye check.
  - Optional torch cleaning.
  - Home → Safe → Pounce moves.
  - The weld path defined by approach/start/end/depart targets.

This structure is demonstrated in `RunPart_1` (same pattern used in other part files).【F:RAPID/PROGMOD/Part_1.mod†L26-L60】

## 6) Completion

After the weld path completes, the program returns to Safe and Home positions and prints a completion message (see `RunPart_1`).【F:RAPID/PROGMOD/Part_1.mod†L53-L60】

