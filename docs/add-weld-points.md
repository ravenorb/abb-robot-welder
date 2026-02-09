# Add Weld Points

This guide explains how to add welds using the pendant-driven menus.

## Before you begin
- Confirm the BullsEye target is clean and reachable.
- Set up the work origin (**Setup** → **Work Origin**).
- Verify torch angle or preset data if needed (**Setup** → **Weld Config**).

## Add a weld
1. Run `MainModule.main`.
2. Choose **Teaching** → **Edit Origin** → **Select Origin # (1–6)**.
3. Choose **Add Weld** → **Select Weld # (1–30)** (defaults to next available).
4. Pick the weld type:
   - **X Axis**: +Side, - Side, Centered
   - **Y Axis**: +Side, - Side, Centered
   - **Corner**: Y+/X+, Y+/X-, Y-/X+, Y-/X- (creates two weld slots)
   - **P 2 P WELD**: point-to-point weld, teach start + end
5. Enter the length (inches). The program converts to millimeters.
6. Jog to the start point (and end for P 2 P WELD), then press **Play**.
7. The program builds derived points and performs a dry run.

## Corner weld behavior
Corner welds consume two slots:
- **Y leg**: runs from start to end along Y-.
- **X leg**: runs from start to end along X+.

For lower corners (DLC/DRC), the start point is offset +Y for the vertical leg and -X for the horizontal leg, because the corner is the end point.

## Repeat function (vertical/horizontal only)
After adding a vertical or horizontal weld, the program can repeat the weld at a fixed offset.
1. Select **Repeat**.
2. Enter the distance (inches, positive or negative).
3. The next weld is stored in the next free slot.
