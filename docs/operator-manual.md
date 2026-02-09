# Operator Manual

## Purpose
This manual describes how to operate the ABB welding program driven by `MainModule.mod` and `WeldProgram.mod`. The program is designed to be pendant-friendly and uses explicit data fields (no arrays or RECORDs). All weld geometry is derived from a single taught point plus weld type and length.

## Safety and prerequisites
- Verify all safety devices and interlocks are active.
- Confirm the correct tool (`tool0`) is loaded and the wire tip is sharp/clean.
- Ensure the BullsEye target is mounted, clean, and in a reachable position.
- Make sure the robot is in AUTO or the approved mode for teaching.

## Main menu flow
1. Run `MainModule.main` on the pendant.
2. Choose the primary workflow:
   - **Production** (run or preview weld cycles)
   - **Setup** (origins, presets, weld configuration, speeds)
   - **Teaching** (add/view/delete welds per origin)
   - **Position** (quick moves to safe or service positions)
   - **Load/Save** (load, save, void, or rename modules)

## Production menu
Use **Production** for live or dry-run cycles.

1. Choose **Production** → **Run** for automatic cycles:
   - **Auto From Begining**
   - **Auto From Part# / Weld#**
   - **Opt Stop From Begining**
   - **Opt Stop From Part# / Weld#**
2. Choose **Production** → **Preview** for fly/dry runs:
   - **Fly/Dry From Begining**
   - **Fly/Dry From Part# / Weld#**
   - **Opt Stop From Begining**
   - **Opt Stop From Part# / Weld#**
3. Use **Production** → **Utilities Menu** for service actions:
   - **Align Torch**
   - **Clean Torch**
   - **BullsEye ck**
   - **Fixture ck**

## Setup menu (origins, presets, configuration)
### Work origin setup
Each origin stores the base, limit, and Z-plane touch-off points for the work object.

1. Choose **Setup** → **Work Origin** → **Select Origin # (1–6)**.
2. Select the origin (1–6), then teach:
   - **Base** (most X-, Y-)
   - **Limit** (most X+, Y+)
   - **Z-Plane** (wire-tip touch-off)

### Preset positions
Use **Setup** → **Preset Positions** for quick moves to reference positions.

* **Side 1**
  - Tool Reference 1
  - Origin Reference 1 (formerly Frame Reference 1)
  - Park 1
* **Side 2**
  - Tool Reference 2
  - Origin Reference 2 (formerly Frame Reference 2)
  - Park 2
* **Torch Station**
  - Wire Cut, Reamer, Spray, Service
* **BullsEye Station**
  - Wire Touch Pt, Begin Calibration

### Weld configuration
Use **Setup** → **Weld Config** for orientation and preset data.

* **Torch Angle**
  - **Y-Axis welds**: + side, - side, centered
  - **X-Axis welds**: + side, - side, centered
* **Weld Presets**, **Weave Presets**, **Seam Presets**
  - Select preset (1–9), review data, enter new values, then **Update**.

### Speeds
Use **Setup** → **Speeds** to edit preview and production speeds.

* **Preview** → Arc, Approach, Retract, Transfer
* **Production** → Arc, Approach, Retract, Transfer

## Teaching menu (per-origin weld data)
### Add weld
1. Choose **Teaching** → **Edit Origin** → **Select Origin # (1–6)**.
2. Choose **Add Weld** → **Select Weld # (1–30)** (default is next available).
3. Select the weld type:
   - **X Axis** ( +Side, - Side, Centered )
   - **Y Axis** ( +Side, - Side, Centered )
   - **Corner** (Y+/X+, Y+/X-, Y-/X+, Y-/X-)
   - **P 2 P WELD**
4. Follow pendant prompts to set orientation, length, and start/end points.

### View weld
1. Choose **Teaching** → **Edit Origin** → **Select Origin # (1–6)**.
2. Choose **View Weld** → **Select Weld # (1–30)**.
3. The robot dry-runs the approach → start → end → retract path.

### Delete weld
1. Choose **Teaching** → **Edit Origin** → **Select Origin # (1–6)**.
2. Choose **Delete Weld** → **Select Weld # (1–30)**.
3. Confirm deletion.

### Wipe origin
Use **Teaching** → **Wipe Origin** → **Select Origin # (1–6)** to clear weld data for a specific origin.

## Position menu
Use **Position** to move directly to the same preset positions available in Setup:

* Side 1, Side 2, Torch Station, BullsEye Station, then **Return**.

## Load/Save menu
Use **Load/Save** to manage program modules:

* **Load Module**, **Save Module**, **Void Module**, **Rename Module**, **Return**.

## Troubleshooting
- **Slot is empty**: Choose a different slot or add a weld first.
- **No free weld slots**: Delete unused slots or archive the part and use another part number.
- **Unexpected orientation**: Re-teach the orientation poses at the BullsEye.
