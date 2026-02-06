# Operator Manual

## Purpose
This manual describes how to operate the ABB welding program in `WeldProgram.mod`. The program is designed to be pendant-friendly and uses explicit data fields (no arrays or RECORDs). All weld geometry is derived from a single taught point plus weld type and length.

## Safety and prerequisites
- Verify all safety devices and interlocks are active.
- Confirm the correct tool (`tool0`) is loaded and the wire tip is sharp/clean.
- Ensure the BullsEye target is mounted, clean, and in a reachable position.
- Make sure the robot is in AUTO or the approved mode for teaching.

## Main menu flow
1. Run `WeldProgram.main` on the pendant.
2. Select the part number (1–6).
3. Select the desired action:
   - **Teach Orientation**
   - **Setup Part**
   - **Add Weld**
   - **Review Weld**
   - **Edit Weld**
   - **Delete Weld**

## Teach orientation (bullseye)
Orientation teaching stores the TCP rotation for the weld direction.

1. Choose **Teach Orientation**.
2. Select the orientation tool:
   - 1=Left, 2=Right, 3=Up, 4=Down, 5=YMid, 6=XMid
3. Jog the robot to the BullsEye and touch off the wire tip.
4. Press **Play** to store the orientation pose.

## Setup part frames
For each part, store the origin, max, and Z0 touch-off point.

1. Choose **Setup Part**.
2. Jog to the part origin (most X-, Y-), then press **Play**.
3. Jog to the part max (most X+, Y+), then press **Play**.
4. Jog to the Z0 plane (wire tip touch-off), then press **Play**.

## Add a weld
1. Choose **Add Weld**.
2. Select the weld type:
   - 1=Vertical, 2=Horizontal, 3=Corner, 4=Free
3. Follow pendant prompts to set subtype, orientation tool, and length (in inches).
4. Jog to the start point (and end point for free welds), then press **Play**.
5. The program builds the derived approach/end/retract/transverse points and performs a dry run.

### Corner welds
Corner welds consume two slots (one Y leg, one X leg). The corner point is taught once, then both legs are created:
- **Upper corners (ULC/URC)**: start at the corner.
- **Lower corners (DLC/DRC)**: start is offset +Y (for the Y leg) and -X (for the X leg).

## Review a weld
1. Choose **Review Weld**.
2. Enter the weld slot (1–30).
3. The robot dry-runs the approach → start → end → retract path.

## Edit a weld
1. Choose **Edit Weld**.
2. Enter the weld slot (1–30).
3. Jog to the new start point (and end point for free welds).
4. Enter the length if requested.
5. The slot is rebuilt with the new geometry.

## Delete a weld
1. Choose **Delete Weld**.
2. Enter the weld slot (1–30).
3. Confirm deletion.

## Troubleshooting
- **Slot is empty**: Choose a different slot or add a weld first.
- **No free weld slots**: Delete unused slots or archive the part and use another part number.
- **Unexpected orientation**: Re-teach the orientation poses at the BullsEye.
