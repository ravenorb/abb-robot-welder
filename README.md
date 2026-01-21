# abb-robot-welder

Base template for ABB robotic welder.

## Single-part template

A ready-to-copy single-part RAPID module is available at:

```
RAPID/PROGMOD/SinglePartTemplate.mod
```

It is designed to run **one** part and includes optional hooks for:

- Torch/nozzle cleaning (`rTC2013` in `LogicZ.mod` or `MechCleanGun` in `mTSC.mod`)
- BullsEye tool check (`BECheckToolb` in `BE_User1.mod`)

Edit the `pPartApproach`, `pPartStart`, `pPartEnd`, and `pPartDepart` targets and the
`seamPart` / `weldPart` data to define a new part, then copy the module to create
new single-part programs.

## Setup and configuration files

- `RAPID/PROGMOD` contains the task program modules (including the main entry points).
- `RAPID/SYSMOD` contains the RAPID system modules (e.g., `USER.SYS`, `GAP_USER.SYS`).
- `HOME` contains controller-side configuration and support files (BullsEye install, templates,
  logs, etc.).
- `system.xml` captures the controller system properties and RobotWare media metadata.
