
/* *********** This array defines detailed properties of zones ************************** */
[
	"patrol_w" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			4, /* Groups quantity */
			/* Units */
			[
				["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"patrol_bridge" /* Zone Name */
	,"EAST",true, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			3, /* Groups quantity */
			/* Units */
			[
				["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["LIMITED","SAFE","YELLOW","WEDGE"]
]
,
[
	"reinf" /* Zone Name */
	,"EAST",false, /* Side, is Active */ [],[]
	/* Groups: */
	,[
		[
			2, /* Groups quantity */
			/* Units */
			[
				["CUP_O_BTR60_Green_RU", "Vehicle Advance", "cargo_kit_sov"]
				,["CUP_O_RU_Soldier_EMR", [0,"Gunner"], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [0,"Driver"], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
				,["CUP_O_RU_Soldier_EMR", [], "kit_sov_random"]
			]
		]
	]
	/* Behavior: Speed, Behavior, Combat mode, Formation */
	,["FULL","SAFE","YELLOW","WEDGE"]
	 /* (OPTIONAL) Activation condition */
	,{ [ TRG_2, "east", "", "< 3"] call dzn_fnc_ccUnits }
]