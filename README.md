# abb-robot-welder

Base template for ABB robotic welder.

## Single-part template

A ready-to-copy single-part RAPID module is available at:

```
RAPID/TASK1/PROGMOD/SinglePartTemplate.mod
```

It is designed to run **one** part and includes optional hooks for:

- Torch/nozzle cleaning (`rTC2013` in `LogicZ.mod` or `MechCleanGun` in `mTSC.mod`)
- BullsEye tool check (`BECheckToolb` in `BE_User1.mod`)

Edit the `pPartApproach`, `pPartStart`, `pPartEnd`, and `pPartDepart` targets and the
`seamPart` / `weldPart` data to define a new part, then copy the module to create
new single-part programs.
