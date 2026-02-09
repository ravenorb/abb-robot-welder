MainModule.main	
├─ Production	
│  └─ Production Menu	
├─ Setup	
│  └─ Setup Menu	
├─ Teaching	
│  └─ Teaching Menu	
├─ Position	
│  └─ Position Menu	
├─ Load/Save	
│  └─ Load/Save Module Menu	
	
├─ Setup	
│  └─ Setup Menu	
│     ├─ Work Origin	FRAMES
│     │  └─ Select Origin # (1-6)	FRAMES SETUP SELECT
│     │     ├─ Origin 1	SetupP01
│     │     │  ├─ Base1	
│     │     │  ├─ Limit1	
│     │     │  ├─ Z-Plane 1	
│     │     │  └─ Return	
│     │     ├─ Origin 2	SetupP02
│     │     │  ├─ Base 2	
│     │     │  ├─ Limit 2	
│     │     │  ├─ Z-Plane 2	
│     │     │  └─ Return	
│     │     ├─ Origin 3	SetupP03
│     │     │  ├─ Base 3	
│     │     │  ├─ Limit 3	
│     │     │  ├─ Z-Plane 3	
│     │     │  └─ Return	
│     │     ├─ Origin 4	SetupP04
│     │     │  ├─ Base 4	
│     │     │  ├─ Limit 4	
│     │     │  ├─ Z-Plane 4	
│     │     │  └─ Return	
│     │     ├─ Origin 5	SetupP05
│     │     │  ├─ Base 5	
│     │     │  ├─ Limit 5	
│     │     │  ├─ Z-Plane 5	
│     │     │  └─ Return	
│     │     ├─ Origin 6	SetupP06
│     │     │  ├─ Base 6	
│     │     │  ├─ Limit 6	
│     │     │  ├─ Z-Plane 6	
│     │     │  └─ Return	
│     ├─ Preset Positions	SafePOS
│     │  └─ Side 1	
│     │     ├─ Tool Reference 1	Setup
│     │     ├─ Frame Reference 1	Fixture
│     │     ├─ Park 1	SafeS1Weld
│     │     └─ Return	
│     │  └─ Side 2	
│     │     ├─ Tool Reference 2	
│     │     ├─ Frame Reference 2	
│     │     ├─ Park 2	
│     │     └─ Return	
│     │  └─ Torch Station	
│     │     ├─ Wire Cut	
│     │     ├─ Reamer	
│     │     ├─ Spray	
│     │     ├─ Service	
│     │     └─ Return	
│     │  └─ BullsEye Station	
│     │     ├─ Wire Touch Pt	
│     │     ├─ Begin Calibration	
│     │     └─ Return	
│     │  └─ Return	
│     ├─ Weld Config	
│     │  └─ Torch Angle	
│     │     └─ Y-Axis welds	
│     │     │  ├─  + side	LEFT
│     │     │  ├─  - side	RIGHT
│     │     │  ├─  centered	YMID
│     │     │  └─ Return	
│     │     └─ X-Axis welds	
│     │     │  ├─  + side	DOWN
│     │     │  ├─  - side	UP
│     │     │  ├─  centered	XMID
│     │     │  └─ Return	
│     │     └─ Return	
│     │  └─ Weld Presets	
│     │     ├─ Select Weld Preset (1-9)	
│     │     │  ├─ [DISPLAY CURRENT DATA]	
│     │     │  ├─ [INPUT BOX FOR NEW DATA]	
│     │     │  ├─ Update	
│     │     │  └─ Return	
│     │  └─ Weave Presets	
│     │     ├─ Select Weave Preset (1-9)	
│     │     │  ├─ [DISPLAY CURRENT DATA]	
│     │     │  ├─ [INPUT BOX FOR NEW DATA]	
│     │     │  ├─ Update	
│     │     │  └─ Return	
│     │  └─ Seam Presets	
│     │     ├─ Select Seam Preset (1-9)	
│     │     │  ├─ [DISPLAY CURRENT DATA]	
│     │     │  ├─ [INPUT BOX FOR NEW DATA]	
│     │     │  ├─ Update	
│     │     │  └─ Return	
│     ├─ Speeds	
│     │  └─ Speeds Menu	
│     │     ├─ Preview → EditSpeedMenu(Preview)	
│     │     │  ├─ Arc	
│     │     │  ├─ Approach	
│     │     │  ├─ Retract	
│     │     │  ├─ Transfer	
│     │     │  └─ Return	
│     │     ├─ Production → EditSpeedMenu(Production)	
│     │     │  ├─ Arc	
│     │     │  ├─ Approach	
│     │     │  ├─ Retract	
│     │     │  ├─ Transfer	
│     │     │  └─ Return	
│     │     └─ Return	
│     └─ Return	
	
├─ Production	
│  └─ Run	
│     ├─ Auto From Begining	
│     ├─ Auto From Part# / Weld#	
│     ├─ Opt Stop From Begining	
│     ├─ Opt Stop From Part# / Weld#	
│     └─ Return	
│  └─ Preview	
│     ├─ Fly/Dry From Begining	
│     ├─ Fly/Dry From Part# / Weld#	
│     ├─ Opt Stop From Begining	
│     ├─ Opt Stop From Part# / Weld#	
│     └─ Return	
│  └─ Utilities Menu	
│     ├─ Align Torch	
│     ├─ Clean Torch	
│     ├─ BullsEye ck	
│     ├─ Fixture ck	
│     └─ Return	
	
├─ Teaching	
│ ├─ Edit Origin	
│  │     └─ Select Origin # (1-6)	
│  │         ├─ Add Weld	
│  │             ├─ Select Weld # (1-30)	
│  │                               Offers Default of next available	
│  │                 ├─ Select Weld Type	
│  │                     ├─ X Axis	
│  │                     │   ├─ +Side	
│  │                     │   ├─ - Side	
│  │                     │   ├─ - Centered	
│  │                     │   └─ Return	
│  │                     ├─ Y Axis	
│  │                     │   ├─ +Side	
│  │                     │   ├─ - Side	
│  │                     │   ├─ - Centered	
│  │                     │   └─ Return	
│  │                    ├─ Corner	
│  │                     │   ├─ Y + AND X +	
│  │                     │   ├─ Y + AND X -	
│  │                     │   ├─ Y - AND X +	
│  │                     │   ├─ Y - AND X -	
│  │                     │   └─ Return	
│  │                    ├─ P 2 P WELD	
│  │                    └─ Return	
│  │        ├─ Delete Weld	
│  │        │     └─ Select Weld # (1-30)	
│  │        ├─ View Weld	
│  │         │     └─ Select Weld # (1-30)	
│  │         └─ Return	
│  ├─  Wipe Origin	
│           └─ Select Origin # (1-6)	
│  └─ Return	
	
├─ Position	
│     │  └─ Side 1	
│     │     ├─ Tool Reference 1	
│     │     ├─ Frame Reference 1	
│     │     ├─ Park 1	
│     │     └─ Return	
│     │  └─ Side 2	
│     │     ├─ Tool Reference 2	
│     │     ├─ Frame Reference 2	
│     │     ├─ Park 2	
│     │     └─ Return	
│     │  └─ Torch Station	
│     │     ├─ Wire Cut	
│     │     ├─ Reamer	
│     │     ├─ Spray	
│     │     ├─ Service	
│     │     └─ Return	
│     │  └─ BullsEye Station	
│     │     ├─ Wire Touch Pt	
│     │     ├─ Begin Calibration	
│     │     └─ Return	
│     │  └─ Return	
	
├─ Load/Save	
│  └─ Load Module	
│  └─ Save Module	
│  └─ Void Module	
│  └─ Rename Module	
│  └─ Return	
	
