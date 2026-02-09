# Startup and Run Procedure

## Startup checklist
1. Power on the controller and confirm all safety interlocks are active.
2. Verify the correct tool (`tool0`) and wire are installed.
3. Confirm the BullsEye target is clean and reachable.
4. Load `MainModule.mod` and start `MainModule.main`.

## Run a part program
1. Confirm the weld slots are populated (optional review step).
2. Use **Teaching** → **Edit Origin** → **View Weld** to dry-run any new or modified welds.
3. Switch to the appropriate welding mode.
4. Use **Production** → **Run** to begin production.

## When to re-run setup
- After any fixture change: run **Setup** → **Work Origin**.
- After any torch adjustment: re-run BullsEye calibration and verify **Weld Config** → **Torch Angle**.
