# Adding weld locations to a part module

Each part module follows the same structure as `SinglePartTemplate.mod`: a single
approach/start/end/depart sequence with `seamdata`/`welddata` describing the weld
parameters. Use the steps below to add or update weld locations.

## Update an existing part module

1. Open the part module you want to change (for example, `RAPID/TASK1/PROGMOD/Part_1.mod`).
2. Update these targets to the new taught points:
   * `pPartApproach`
   * `pPartStart`
   * `pPartEnd`
   * `pPartDepart`
3. Adjust `seamPart` and `weldPart` data to match the desired weld schedule.
4. If you need **multiple welds** in the same part, add additional `MoveL`/`ArcLStart`/`ArcLEnd`
   segments inside the `RunPart_*` procedure, keeping the same approach/start/end/depart pattern.

## Create a new part module

1. Copy `RAPID/TASK1/PROGMOD/SinglePartTemplate.mod` to a new file such as
   `RAPID/TASK1/PROGMOD/Part_11.mod`.
2. Rename the module and procedure to match the new file name:
   * `MODULE Part_11`
   * `PROC RunPart_11()`
3. Teach the weld points and update `pPartApproach`, `pPartStart`, `pPartEnd`, and
   `pPartDepart`.
4. Register the new part in the menus and run logic:
   * Add a new selection in `Side_Menus.mod` so the operator can choose the new part.
   * Add a new `ELSEIF` branch in `LogicZ.mod` so `rRun` can call `RunPart_11`.

## Validation checklist

* Confirm the torch, fixture, and workobject are correct before running.
* Verify all new points are taught with appropriate clearance.
* Run the part in slow/manual mode the first time to confirm motion and weld quality.
