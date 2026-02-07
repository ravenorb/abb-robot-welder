# abb-robot-welder

RAPID program package for the ABB welding cell. This repository contains the
modules required to run the new single-part welding workflow, including the
main menu, utilities (home/safe positions, torch cleaning, BullsEye tool check),
and ten part modules that each execute a single weld path.

## What this program does

* Boots into `MainModule` and presents the operator with the Home/Service/Tools/Parts/Run menu.
* Lets the operator select and run a specific part program (`Part_1.mod` … `Part_10.mod`).
* Each part module follows the same pattern: optional BullsEye check, optional torch clean,
  home/safe positioning, then a single weld path defined by `pPartApproach`,
  `pPartStart`, `pPartEnd`, and `pPartDepart`.

## What to load on the controller

Load the following folders into the controller (no extra backup data is required):

* `RAPID/` (program and system modules)
* `SYSPAR/` (system parameter configuration used by the program)
* `system.xml`

## Documentation

Operator instructions and guidance for adding weld locations are in `docs/`:

* `docs/operator-guide.md`
* `docs/adding-weld-locations.md`
