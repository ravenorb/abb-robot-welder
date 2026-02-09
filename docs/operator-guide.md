# Operator guide

## Purpose

This program drives an ABB welding cell through a menu-driven workflow. Operators
use the **Production** menu to run automatic or preview cycles and the **Setup**
and **Teaching** menus to configure origins, presets, and weld data.

## Run a production cycle

1. **Start the task** and ensure the robot is in a safe state.
2. From the main menu, choose **Production** → **Run**.
3. Select one of the run options:
   * **Auto From Begining**
   * **Auto From Part# / Weld#**
   * **Opt Stop From Begining**
   * **Opt Stop From Part# / Weld#**
4. Monitor the status messages and the weld cycle. The robot will:
   * Optionally run a BullsEye tool check.
   * Optionally clean the torch.
   * Move to home/safe positions, perform the weld path, then return home.

## Notes

* Use **Production** → **Preview** for fly/dry runs before enabling arc time.
* If you need to change weld locations or add a new origin, follow the instructions
  in `docs/adding-weld-locations.md`.
