# Program Architecture

## Overview
`WeldProgram.mod` is a pendant-first RAPID program that stores all weld data explicitly (no arrays, no RECORDs). The system supports 6 parts and 30 weld slots per part, with all geometry derived from a single taught point plus weld type and length.

## Data model (explicit storage)
For each part (P01–P06):
- `PxxOrigin`, `PxxMax`, `PxxZoff`: robtargets for work origin setup.
- `wobjPxx`: work object derived from origin and Z0.
- `nWeldsPxx`: simple counter for stored welds.

For each weld slot (W01–W30):
- `PxxWyy_Used`: whether the slot is occupied.
- `PxxWyy_SubType`: weld subtype (e.g., YLeft, XUp).
- `PxxWyy_ToolSel`: orientation tool selection.
- `PxxWyy_LenMM`: length in millimeters.
- `PxxWyy_ArcStart`, `ArcEnd`, `Approach`, `Retract`, `Trans`: derived points.

## Weld type enums
- Major types: `WT_VERT`, `WT_HORIZ`, `WT_CORNER`, `WT_FREE`.
- Subtypes: `WSV_*`, `WSH_*`, `WSC_*`, `WSF_FREE`.
- Tool selection: `T_OLEFT`, `T_ORIGHT`, `T_OUP`, `T_ODOWN`, `T_OYMID`, `T_OXMID`.

## Geometry rules
- **Approach**: 0.100" offset, direction based on subtype.
- **Arc end**: length-based offset in Y (vertical) or X (horizontal). Free weld uses a taught end point.
- **Retract**: mirrored approach off the arc end.
- **Transverse**: +10" in Z from retract.

All operator-entered lengths are in inches and converted to millimeters (`INCH := 25.4`).

## Orientation handling
Orientation is stored as `pOri_*` robtargets. When a weld is built, the orientation pose is applied by copying rotation/robconf/extax into the derived points. This avoids toolframe math while keeping the wire tip aligned on the BullsEye.

## Workflow modules
- **Setup**: Work Origin, Preset Positions, Weld Config, Speeds.
- **Teaching**: Edit Origin (add/view/delete welds) and Wipe Origin.
- **Production**: Run, Preview, Utilities.
