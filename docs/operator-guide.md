# Operator guide

## Purpose

This program drives an ABB welding cell through a menu-driven workflow. Operators
select a part program from the Parts menu and then execute it from the Run menu
entry. The Run logic calls the selected part submodule (`RunPart_1` … `RunPart_10`).

## Run a part

1. **Start the task** and ensure the robot is in a safe state.
2. From the main menu, choose **Parts**.
3. Select the desired part (Part 1–Part 10). This sets the active part flag.
4. Return to the main menu and choose **Run**.
5. Monitor the status messages and the weld cycle. The robot will:
   * Optionally run a BullsEye tool check.
   * Optionally clean the torch.
   * Move to home/safe positions, perform the weld path, then return home.

## Notes

* Parts 1–10 are pre-configured as single-path weld routines.
* If you need to change weld locations or add a new part, follow the instructions
  in `docs/adding-weld-locations.md`.
