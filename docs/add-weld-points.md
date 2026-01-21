# Add weld points to a current program

This guide explains how to add or update weld points in an existing part program module (e.g., `Part_1.mod`).

## 1) Identify the part module

Part programs are stored in `RAPID/PROGMOD` and use the same structure as the single-part template. The example below uses `RunPart_1`, which shows the standard sequence and target definitions.【F:RAPID/PROGMOD/Part_1.mod†L1-L60】

If you need a fresh starting point, copy `SinglePartTemplate.mod` and rename it to your new part file, then update the targets and data as described below.【F:RAPID/PROGMOD/SinglePartTemplate.mod†L1-L59】

## 2) Update the weld path targets

In the part module, update or add targets that define your weld path:

- `pPartApproach`
- `pPartStart`
- `pPartEnd`
- `pPartDepart`

These targets are defined as `CONST robtarget` values in the part module. For example, see `Part_1.mod` for the current values and positions.【F:RAPID/PROGMOD/Part_1.mod†L18-L22】

## 3) Update seam and weld data

Weld settings live in `welddata` and `seamdata` definitions (for example, `weldPart` and `seamPart`). These are defined at the top of the part file and are referenced by the Arc welding instructions.【F:RAPID/PROGMOD/Part_1.mod†L14-L16】【F:RAPID/PROGMOD/Part_1.mod†L49-L51】

## 4) Add or extend Arc segments

If you need more than one weld segment:

1. Add new target(s) for the additional start/end points.
2. Add extra `ArcL`, `ArcLStart`, or `ArcLEnd` instructions inside the part’s run procedure.

The standard single-segment pattern is shown here:

- `ArcLStart pPartStart, ...`
- `ArcLEnd pPartEnd, ...`

See the implementation in `RunPart_1` or `SinglePartTemplate` for the baseline structure.【F:RAPID/PROGMOD/Part_1.mod†L47-L52】【F:RAPID/PROGMOD/SinglePartTemplate.mod†L43-L49】

## 5) Verify optional tooling steps

Each part module can enable or disable:

- BullsEye tool check (`BECheckToolb`).
- Torch cleaning (`rTC2013`) or the alternate cleaner (`MechCleanGun`).

These are toggled via `bUseBullseye` and `bUseTorchClean` in the part module and called before the weld path begins.【F:RAPID/PROGMOD/Part_1.mod†L12-L40】

