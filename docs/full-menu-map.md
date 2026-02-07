# Full Menu Map

This map mirrors the pendant-driven menu flow defined in `MainModule.mod`, `Side_Menus.mod`, and `WeldProgram.mod`.

```
MainModule.main
├─ Home
│  └─ rHome (move to home position)
├─ Position
│  └─ Position Menu
│     ├─ Home
│     ├─ Service
│     ├─ BullsEye ck
│     ├─ Fixture ck
│     └─ Return
├─ Utilities
│  └─ Utilities Menu
│     ├─ Align Torch
│     ├─ Clean Torch
│     ├─ Bullseye Setup
│     ├─ Torch Setup
│     └─ Return
├─ Setup
│  └─ Setup Menu
│     ├─ Orientation
│     │  └─ Orientation Setup
│     │     ├─ Left
│     │     ├─ Right
│     │     ├─ Up
│     │     ├─ Down
│     │     ├─ YMid
│     │     └─ XMid
│     ├─ Frames
│     │  └─ Frames Setup - Select Part (1–6)
│     │     ├─ Part 1 → SetupP01
│     │     ├─ Part 2 → SetupP02
│     │     ├─ Part 3 → SetupP03
│     │     ├─ Part 4 → SetupP04
│     │     ├─ Part 5 → SetupP05
│     │     └─ Part 6 → SetupP06
│     ├─ WeldDATA
│     │  └─ ShowWeldDefaults
│     ├─ SafePOS
│     │  └─ Safe Positions
│     │     ├─ SafeS1
│     │     ├─ SafeS1Weld
│     │     ├─ Setup
│     │     ├─ Bullseye
│     │     ├─ Fixture
│     │     └─ Return
│     ├─ Speeds
│     │  └─ Speeds Menu
│     │     ├─ Preview → EditSpeedMenu(Preview)
│     │     │  ├─ ArcStart
│     │     │  ├─ ArcEnd
│     │     │  ├─ Approach
│     │     │  ├─ Retract
│     │     │  ├─ Trans
│     │     │  └─ Return
│     │     ├─ Production → EditSpeedMenu(Production)
│     │     │  ├─ ArcStart
│     │     │  ├─ ArcEnd
│     │     │  ├─ Approach
│     │     │  ├─ Retract
│     │     │  ├─ Trans
│     │     │  └─ Return
│     │     └─ Return
│     └─ Return
└─ Run
   └─ Run Menu
      ├─ Run Parts → rRun (uses part-selection flags below)
      ├─ Preview → PreviewEnabledParts
      ├─ Edit → EditPartSettings
      ├─ Teach → Teach Menu
      │  ├─ Add
      │  │  ├─ Part (1–6)
      │  │  └─ AddWeld
      │  ├─ Preview
      │  │  ├─ Part (1–6)
      │  │  └─ PreviewPart
      │  ├─ Edit
      │  │  ├─ Part (1–6)
      │  │  ├─ Slot (1–30)
      │  │  └─ EditWeld
      │  ├─ Delete
      │  │  ├─ Part (1–6)
      │  │  ├─ Slot (1–30)
      │  │  └─ DeleteWeld
      │  └─ Return
      ├─ Reset → Reset Menu
      │  ├─ Slot
      │  │  ├─ Part (1–6)
      │  │  ├─ Slot (1–30)
      │  │  └─ ClearSlot
      │  ├─ Frame
      │  │  ├─ Part (1–6)
      │  │  └─ ResetPartFrame
      │  └─ Full Part
      │     ├─ Part (1–6)
      │     └─ ResetPartAll
      └─ Return
```

## Part-selection menus used by `Run Parts`

These menus set the boolean flags that `rRun` checks before executing the chosen program.

```
Select Frame Type (rSelFrame)
├─ Skid
│  └─ Select Skid Size (rSelSkids)
│     ├─ Skid 50
│     ├─ Skid 100
│     ├─ Skid 200
│     └─ Return
├─ 100-200-300 SS
│  └─ Select frame to run (rSelPrg100)
│     ├─ SS 100 1A
│     ├─ SS 200 1A
│     ├─ SS 300 1A
│     └─ Return
├─ 300
│  └─ Select Side (rSelPrg300)
│     ├─ Side One
│     │  └─ Side One Parts (rSide1Menu)
│     │     ├─ A Pos
│     │     ├─ B Pos
│     │     ├─ A&B Pos
│     │     ├─ NoPartsS1
│     │     └─ Return
│     ├─ Side Two
│     │  └─ Side Two Parts (rSide2Menu)
│     │     ├─ A Pos
│     │     ├─ B Pos
│     │     ├─ A&B Pos
│     │     ├─ NoPartsS2
│     │     └─ Return
│     └─ Return
├─ Other
│  └─ Select Part (rSelOther)
│     ├─ New Weld Prog
│     ├─ Rover
│     ├─ LongWeld
│     └─ Return
└─ Return
```
