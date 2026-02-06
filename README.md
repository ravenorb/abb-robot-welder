# ABB Robot Welder Program Pack

This repository contains a full, pendant-friendly RAPID implementation for an ABB welding cell using explicit data declarations (no arrays, no RECORDs). The program is centered on `WeldProgram.mod`, which provides a complete operator flow for teaching orientations, defining part frames, adding welds, and reviewing/editing/deleting weld slots.

## Repository layout

- `RAPID/PROGMOD/WeldProgram.mod`: Primary RAPID program with full data model, geometry routines, and operator menus.
- `docs/`: Operator and stakeholder documentation (manual, architecture, checklists).
- `sample/`: Legacy reference modules retained for historical context.
- `HOME/`: Controller-side assets (BullsEye configuration, templates, images).
- `system.xml`: Controller system properties and RobotWare metadata.

## Highlights

- **Explicit data model**: 6 parts × 30 weld slots each, stored as individual PERS variables (no indexing tricks).
- **Geometry from a single taught point**: Approach, arc end, retract, and transverse points are derived using the rules in `WeldProgram.mod`.
- **Orientation-driven tooling**: Orientation is stored as `pOri_*` robtargets; generated points copy rotation from the selected orientation.
- **Operator workflow**: Teach orientation → setup part frame → add/review/edit/delete welds using pendant prompts.

## Documentation index

- `docs/operator-manual.md`: Full operator walkthrough and safety notes.
- `docs/program-architecture.md`: Data model, geometry rules, and module structure.
- `docs/overview-for-management.md`: One-page executive summary.
- `docs/add-weld-points.md`: How to add weld points (including corner logic).
- `docs/startup-run-part-program.md`: Startup and run procedure.
- `docs/step-through-test-program.md`: Dry-run verification flow.
- `docs/tools-features.md`: Orientation teaching and BullsEye usage.
- `docs/program-selection-map.md`: Menu/flow map.
- `docs/operator-checklist.md`: Shift-level checklist.

## How to load the program

1. Load the RAPID module `RAPID/PROGMOD/WeldProgram.mod` into the controller task.
2. Ensure the robot has `tool0` configured and the BullsEye target is accessible.
3. From the pendant, run `WeldProgram.main` to access setup and welding menus.
