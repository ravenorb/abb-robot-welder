# Step-Through Test Program

Use this procedure to verify weld points without striking an arc.

## Procedure
1. Run `MainModule.main`.
2. Choose **Teaching** → **Edit Origin** → **View Weld**.
3. Select the origin number (1–6).
4. Enter a weld slot (1–30).
5. The robot will dry-run:
   - Transverse → Approach → ArcStart → ArcEnd → Retract → Transverse
6. Repeat for each weld slot you want to verify.

## Notes
- Always start with the first new weld after changes.
- If any clearance issues are found, use **Teaching** → **Edit Origin** → **Add Weld** to correct the start point.
