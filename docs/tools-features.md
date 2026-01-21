# Tools features (torch cleaning, BullsEye, setup)

The Tools menu provides access to service setup, torch cleaning, and BullsEye tool checking.

## Tools menu entries

The Tools menu is implemented in `rToolsMenu` and presents the following options to the operator: **rSetup**, **TchCln**, **Bullseye**, and **Return**.【F:RAPID/PROGMOD/Side_Menus.mod†L21-L52】

## rSetup (service position verification)

- `rSetup` moves the robot through park, safe, pounce, and service positions with `Stop` prompts so you can verify or reteach positions as needed.【F:RAPID/PROGMOD/LogicZ.mod†L29-L66】

## TchCln (torch cleaning)

The default torch cleaning routine is `rTC2013`, which performs:

- Wire cutting.
- Reaming.
- Anti-spatter spray.

This routine is defined in `LogicZ` and is used by the Tools menu and part programs when `bUseTorchClean` is enabled.【F:RAPID/PROGMOD/Side_Menus.mod†L37-L43】【F:RAPID/PROGMOD/LogicZ.mod†L199-L236】

## Alternate torch cleaning (MechCleanGun)

An alternate cleaning routine is available in `mTSC.mod` as `MechCleanGun`. This routine includes approach, clean, spray, and wire cut motions and can be called from part modules if preferred.【F:RAPID/PROGMOD/mTSC.mod†L70-L110】

## BullsEye tool check

`BECheckToolb` is the BullsEye TCP check routine used by the Tools menu and optionally within part programs. It moves to the BullsEye station, runs the check, and returns to the safe position.【F:RAPID/PROGMOD/Side_Menus.mod†L43-L48】【F:RAPID/PROGMOD/BE_User1.mod†L33-L52】

