# Add Weld Points

This guide explains how to add welds using `WeldProgram.mod`.

## Before you begin
- Teach orientation poses at the BullsEye (`Teach Orientation`).
- Set up the part frame (`Setup Part`).

## Add a weld
1. Run `WeldProgram.main`.
2. Select the part number (1–6).
3. Choose **Add Weld**.
4. Pick the weld type:
   - **Vertical**: YLeft, YRight, YMid
   - **Horizontal**: XUp, XDn, XMid
   - **Corner**: ULC, URC, DLC, DRC (creates two weld slots)
   - **Free**: operator chooses orientation; start + end are taught
5. Enter the length (inches). The program converts to millimeters.
6. Jog to the start point (and end for free welds), then press **Play**.
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
