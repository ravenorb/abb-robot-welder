# Program selection map

This document maps the pendant menu selections to the underlying RAPID procedures.

## Main menu

`MainModule.main` displays five options and calls the procedures below.【F:RAPID/PROGMOD/MainModule.mod†L6-L35】

| Menu option | Procedure | Description |
| --- | --- | --- |
| Home | `rHome` | Move to home position. 【F:RAPID/PROGMOD/LogicZ.mod†L139-L148】 |
| Service | `rService` | Move to service position. 【F:RAPID/PROGMOD/LogicZ.mod†L149-L157】 |
| Tools | `rToolsMenu` | Tooling operations menu. 【F:RAPID/PROGMOD/Side_Menus.mod†L21-L52】 |
| Parts | `rPartsMenu` | Select Part 1–10. 【F:RAPID/PROGMOD/Side_Menus.mod†L62-L145】 |
| Run | `rRun` | Execute selected part/program. 【F:RAPID/PROGMOD/LogicZ.mod†L95-L176】 |

## Parts menu

`rPartsMenu` and `rPartsMenuPage2` set the boolean flags used by `rRun` to pick a program. For example, selecting Part 1 sets `bPart1 := TRUE`, which causes `rRun` to call `RunPart_1`.【F:RAPID/PROGMOD/Side_Menus.mod†L62-L145】【F:RAPID/PROGMOD/LogicZ.mod†L95-L176】

## Other selection menus

Additional program selection menus are available for skids, side menus, and “Other” programs such as Rover/LongWeld. These menus set other boolean flags consumed by `rRun` or side-specific procedures. 【F:RAPID/PROGMOD/Side_Menus.mod†L146-L260】【F:RAPID/PROGMOD/LogicZ.mod†L95-L176】

