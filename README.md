# ABB Robot Welder Program Pack

This repository contains the RAPID program set and controller-side files for an ABB robotic welding cell. The core operator flow is driven by the `MainModule` menu and supporting program modules under `RAPID/PROGMOD`.【F:RAPID/PROGMOD/MainModule.mod†L1-L38】

## What's in this repo

- `RAPID/PROGMOD`: Task-level RAPID modules, including the main menu, part programs, tooling routines, and templates.【F:RAPID/PROGMOD/MainModule.mod†L1-L38】
- `RAPID/SYSMOD`: System-level RAPID modules (`USER.SYS`, `GAP_USER.SYS`).【F:RAPID/SYSMOD/USER.SYS†L1-L1】
- `HOME`: Controller-side assets (BullsEye files, logs, templates).【F:HOME/BullsEye/INSTALL.CMD†L1-L1】
- `system.xml`: Controller system properties and RobotWare media metadata.【F:system.xml†L1-L10】

## Operator workflow (high level)

1. Use the main menu to move Home or Service positions, run nozzle cleaning, select Parts, and start Run. The menu options are built in `MainModule.main` and dispatch to `rHome`, `rService`, `rTC2013`, `rPartsMenu`, and `rRun`.【F:RAPID/PROGMOD/MainModule.mod†L6-L28】
2. Parts are selected in the Parts menus (`rPartsMenu` / `rPartsMenuPage2`) and stored as boolean selections. The chosen selection is shown in the main menu display (`rMainBDisplay`).【F:RAPID/PROGMOD/Side_Menus.mod†L62-L145】【F:RAPID/PROGMOD/LogicZ.mod†L277-L302】
3. `rRun` in `LogicZ` executes the selected part routine (`RunPart_1` … `RunPart_10`).【F:RAPID/PROGMOD/LogicZ.mod†L73-L100】

## Part program structure

Individual part programs follow a common structure:

- Optional BullsEye check (`BECheckToolb`).【F:RAPID/PROGMOD/Part_1.mod†L26-L33】【F:RAPID/PROGMOD/BE_User1.mod†L33-L52】
- Optional torch cleaning (`rTC2013`) or alternative cleaner (`MechCleanGun`).【F:RAPID/PROGMOD/Part_1.mod†L35-L40】【F:RAPID/PROGMOD/LogicZ.mod†L199-L236】【F:RAPID/PROGMOD/mTSC.mod†L70-L110】
- Move through Home → Safe → Pounce positions before the weld path.【F:RAPID/PROGMOD/Part_1.mod†L42-L47】【F:RAPID/PROGMOD/LogicZ.mod†L2-L9】
- Weld path defined by approach/start/end/depart targets and seam/weld data.【F:RAPID/PROGMOD/Part_1.mod†L18-L60】

## Documentation

Operator-facing guides live in `docs/`:

- `docs/startup-run-part-program.md`: Start-up and run workflow for the current part program.
- `docs/add-weld-points.md`: How to add weld points and update seam/weld data.
- `docs/step-through-test-program.md`: Slow, step-by-step verification of weld points.
- `docs/tools-features.md`: Tooling features (torch cleaning, BullsEye).
- `docs/program-selection-map.md`: Menu map and selection logic.
- `docs/operator-checklist.md`: Operator checklist for shifts and program changes.

## Helpful templates

- `RAPID/PROGMOD/SinglePartTemplate.mod` is a ready-to-copy single-part template with optional torch cleaning and BullsEye checks. Edit the targets and seam/weld data, then copy the module for a new part program.【F:RAPID/PROGMOD/SinglePartTemplate.mod†L1-L59】

## Program file pointers

- `RAPID/PROGMOD/ALL_FRAMES.pgf` is the primary program file for loading the RAPID modules from the `RAPID` folder.
- `HOME/TASK_ALL_FRAMES/PROGMOD/ALL_FRAMES.pgf` remains as the controller-side snapshot used during backups or manual restores (and is the only `.pgf` kept in that folder).
- `HOME/All_Frames_1.0/PROGMOD/All_Frames_1.0.pgf` is a versioned snapshot retained for reference.
