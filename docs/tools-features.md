# Tools and Features

## Orientation teaching (BullsEye)
Orientation poses (`pOri_*`) are stored by touching the wire tip to the BullsEye and recording the pose. Weld points copy the orientation from the selected pose, ensuring consistent tool alignment without complex TCP math.

## Work origin setup
Each part uses three taught points:
- **Origin**: most X-, Y- corner.
- **Max**: most X+, Y+ corner.
- **Z0**: touch-off plane for height reference.

These points populate `PxxOrigin`, `PxxMax`, `PxxZoff`, and update `wobjPxx`.

## Dry run
The **View Weld** flow uses a dry run with safe speeds and fine zones to verify geometry before welding.
