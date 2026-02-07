# Step-Through Test Program

Use this procedure to verify weld points without striking an arc.

## Procedure
1. Run `WeldProgram.main`.
2. Select the part number (1–6).
3. Choose **Review Weld**.
4. Enter a weld slot (1–30).
5. The robot will dry-run:
   - Transverse → Approach → ArcStart → ArcEnd → Retract → Transverse
6. Repeat for each weld slot you want to verify.

## Notes
- Always start with the first new weld after changes.
- If any clearance issues are found, use **Edit Weld** to correct the start point.
