// ***********************************
// Gear Kits 
// ***********************************
// ******** GEAR CLASSES **********
//
//	Maptools		"ACE_MapTools"	["ACE_MapTools",1]
//	Binocular		"Binocular"	["Binocular",1]		
//
// 	Map			"ItemMap"
//	Compass			"ItemCompass"
//	Watch			"ItemWatch"
//	Personal Radio		"ItemRadio"
//
// ******* KIT NAMES FORMAT ********
//  Kit names format:		kit_FACTION_ROLE
//	Platoon Leader / Командир Взвода	->	kit_ussf_pl
//	Squad Leader / Командир отделения	->	kit_ussf_sl
//	Section Leader				->	kit_ussf_sl
//	2IC					->	kit_ussf_2ic
//	Fireteam Leader				->	kit_ussf_ftl
//	Automatic Rifleman			->	kit_ussf_ar
//	Grenadier / Стрелок (ГП)		->	kit_ussf_gr
//	Rifleman / Стрелок			->	kit_ussf_r
//	Экипаж					->	kit_ussf_crew
//	Пулеметчик				->	kit_ussf_mg
//	Стрелок-Гранатометчик			->	kit_ussf_at
//	Стрелок, помощник гранатометчика	->	kit_ussf_aat
//	Старший стрелок				->	kit_ussf_ar / kit_ussf_ss
//	Снайпер					->	kit_ussf_mm
// ****************
//
// ******** USEFUL MACROSES *******
// Maros for Empty weapon
#define EMPTYKIT	[["","","","",""],["","","","",""],["","","","",""],["","","","",""],[],[["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0],["",0]],[["",0],["",0],["",0],["",0],["",0],["",0]],[]]
// Macros for Empty weapon
#define EMPTYWEAPON	"","",["","","",""]
// Macros for the list of items to be chosen randomly
#define RANDOM_ITEM	["H_HelmetB_grass","H_HelmetB"]
// Macros to give the item only if daytime is in given inerval (e.g. to give NVGoggles only at night)
#define NIGHT_ITEM(X)	if (daytime < 9 || daytime > 18) then { X } else { "" }

// ******** ASSIGNED and UNIFORM ITEMS MACRO ********
#define NVG_NIGHT_ITEM		if (daytime < 9 || daytime > 18) then { "NVGoggles_OPFOR" } else { "" }
#define BINOCULAR_ITEM		"Binocular"

#define ASSIGNED_ITEMS		"ItemMap","ItemCompass","ItemWatch"
#define ASSIGNED_ITEMS_L	"ItemMap","ItemCompass","ItemWatch","ItemRadio", BINOCULAR_ITEM

#define UNIFORM_ITEMS		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1]
#define UNIFORM_ITEMS_L		["ACE_fieldDressing",5],["ACE_packingBandage",5],["ACE_elasticBandage",5],["ACE_tourniquet",2],["ACE_morphine",2],["ACE_epinephrine",2],["ACE_quikclot",5],["ACE_CableTie",2],["ACE_Flashlight_XL50",1],["ACE_EarPlugs",1],["ACE_MapTools",1]
// ****************

kit_para_r = [
	["<EQUIPEMENT >>  ","cwr3_i_uniform_dpm_gloves","cwr3_i_vest_58webbing","cwr3_i_bergen_backpack_dpm","cwr3_i_headgear_parahelmet_camo",""],
	["<PRIMARY WEAPON >>  ","cwr3_arifle_l1a1","CUP_20Rnd_762x51_FNFAL_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["CUP_HandGrenade_L109A1_HE",3],["PRIMARY MAG",5],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["ACE_EntrenchingTool",1],["ACE_DefusalKit",1],["ACE_wirecutter",1],["PRIMARY MAG",5],["DemoCharge_Remote_Mag",2],["cwr3_30Rnd_762x51_Bren_M",8]]]
];
kit_para_mg = [
	["<EQUIPEMENT >>  ","cwr3_i_uniform_dpm_gloves","cwr3_i_vest_58webbing","cwr3_i_bergen_backpack_dpm","cwr3_i_headgear_parahelmet_camo",""],
	["<PRIMARY WEAPON >>  ","cwr3_lmg_bren","cwr3_30Rnd_762x51_Bren_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",5],["CUP_HandGrenade_L109A1_HE",3],["HANDGUN MAG",3]]],
	["<BACKPACK ITEMS >> ",[["PRIMARY MAG",8]]]
];
kit_para_pl = [
	["<EQUIPEMENT >>  ","cwr3_i_uniform_dpm_gloves","cwr3_i_vest_58webbing","usm_pack_st138_prc77","cwr3_i_headgear_beret_02_para",""],
	["<PRIMARY WEAPON >>  ","cwr3_arifle_l1a1","CUP_20Rnd_762x51_FNFAL_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HANDGUN MAG",2],["SmokeShell",2],["SmokeShellBlue",2],["SmokeShellRed",2],["CUP_HandGrenade_L109A1_HE",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_para_sl = [
	["<EQUIPEMENT >>  ","cwr3_i_uniform_dpm_gloves","cwr3_i_vest_58webbing","usm_pack_st138_prc77","cwr3_i_headgear_beret_02_para",""],
	["<PRIMARY WEAPON >>  ","cwr3_arifle_l1a1","CUP_20Rnd_762x51_FNFAL_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HANDGUN MAG",2],["SmokeShell",2],["SmokeShellBlue",2],["SmokeShellRed",2],["CUP_HandGrenade_L109A1_HE",1]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_para_ftl = [
	["<EQUIPEMENT >>  ","cwr3_i_uniform_dpm_gloves","cwr3_i_vest_58webbing","cwr3_i_bergen_backpack_dpm","cwr3_i_headgear_parahelmet_olive_net",""],
	["<PRIMARY WEAPON >>  ","cwr3_arifle_l1a1","CUP_20Rnd_762x51_FNFAL_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_M72A6_Loaded","CUP_M72A6_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Browning_HP","CUP_13Rnd_9x19_Browning_HP",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["HANDGUN MAG",2],["SmokeShell",1],["SmokeShellBlue",1],["SmokeShellRed",1],["CUP_HandGrenade_L109A1_HE",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
#define SOV_UNI ["cwr3_o_uniform_m1982_lacers","cwr3_o_uniform_m1982","cwr3_o_uniform_m1982_lacers_rolled","cwr3_o_uniform_m1982_rolled"]
#define SOV_VEST_R ["cwr3_o_vest_chicom_beltkit_ak74","cwr3_o_vest_harness_ak74","cwr3_o_vest_6b2_ak74"]
#define SOV_HEAD ["cwr3_o_headgear_ssh68","cwr3_o_headgear_ssh68_cover","cwr3_o_headgear_fieldcap_m1982"]

kit_sov_random = [
	"kit_sov_sl"
	,"kit_sov_r"
	,"kit_sov_at"
	,"kit_sov_r"
	,"kit_sov_r"
	,"kit_sov_r"
	,"kit_sov_r"
	,"kit_sov_mg"
	,"kit_sov_ar"
	,"kit_sov_gr"
	,"kit_sov_mm"
];
kit_sov_sl = [
	["<EQUIPEMENT >>  ","cwr3_o_uniform_m1982_lacers","cwr3_o_vest_harness_black_officer","RD_54_69_R148","panama_afg2",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",11],["rhs_mag_rgd5",3],["rhs_mag_rdg2_white",1],["rhs_mag_rdg2_black",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",10],["CUP_1Rnd_SmokeRed_GP25_M",10]]]
];
kit_sov_jtac = [
	["<EQUIPEMENT >>  ","cwr3_o_uniform_m1982_lacers","cwr3_o_vest_harness_black_officer","RD_54_69_R148","panama_afg2",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",2],["rhs_mag_rdg2_white",1],["rhs_mag_rdg2_black",1]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",10],["CUP_1Rnd_SmokeRed_GP25_M",10]]]
];
kit_sov_r = [
	["<EQUIPEMENT >>  ",SOV_UNI,SOV_VEST_R,"cwr3_o_backpack_harness_roll",SOV_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",11],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2]]]
];
kit_sov_at = [
	["<EQUIPEMENT >>  ",SOV_UNI,SOV_VEST_R,"cwr3_o_backpack_harness_roll",SOV_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","CUP_launch_RPG18_Loaded","CUP_RPG18_M",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",11],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",2]]]
];
kit_sov_mg = [
	["<EQUIPEMENT >>  ",SOV_UNI,"cwr3_o_vest_harness_mg","cwr3_o_backpack_harness_roll",SOV_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_lmg_PKM","CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",3]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rgd5",3]]]
];
kit_sov_ar = [
	["<EQUIPEMENT >>  ",SOV_UNI,"cwr3_o_vest_harness_ak74","cwr3_o_backpack_harness_roll",SOV_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_RPK74_45","CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",12],["rhs_mag_rgd5",2]]],
	["<BACKPACK ITEMS >> ",[["rhs_mag_rgd5",3]]]
];
kit_sov_gr = [
	["<EQUIPEMENT >>  ",SOV_UNI,"cwr3_o_vest_harness_ak74","cwr3_o_backpack_harness_roll",SOV_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AK74_GL","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",9],["CUP_1Rnd_HE_GP25_M",13]]],
	["<BACKPACK ITEMS >> ",[["CUP_1Rnd_HE_GP25_M",10]]]
];
kit_sov_mm = [
	["<EQUIPEMENT >>  ",SOV_UNI,"cwr3_o_vest_harness_black_svd","cwr3_o_backpack_harness_roll",SOV_HEAD,""],
	["<PRIMARY WEAPON >>  ","CUP_srifle_SVD","CUP_10Rnd_762x54_SVD_M",["","","CUP_optic_PSO_1",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["rhs_mag_rgd5",2],["PRIMARY MAG",15]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_pilot = [
	["<EQUIPEMENT >>  ","cwr3_o_uniform_pilot_ttsko","cwr3_o_vest_6b2_officer","","rhs_zsh7a_mike",""],
	["<PRIMARY WEAPON >>  ","","",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","CUP_hgun_Makarov","CUP_8Rnd_9x18_Makarov_M",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS_L],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS_L]],
	["<VEST ITEMS >> ",[["HANDGUN MAG",5],["rhs_mag_rgd5",3],["rhs_mag_rdg2_black",3],["rhs_mag_rdg2_white",3],["rhs_mag_nspd",2]]],
	["<BACKPACK ITEMS >> ",[]]
];
kit_sov_crew = [
	["<EQUIPEMENT >>  ","cwr3_o_uniform_m1982_lacers","cwr3_o_vest_beltkit_ak74","","CUP_H_TK_TankerHelmet",""],
	["<PRIMARY WEAPON >>  ","CUP_arifle_AKS74U","CUP_30Rnd_545x39_AK_M",["","","",""]],
	["<LAUNCHER WEAPON >>  ","","",["","","",""]],
	["<HANDGUN WEAPON >>  ","","",["","","",""]],
	["<ASSIGNED ITEMS >>  ", ASSIGNED_ITEMS],
	["<UNIFORM ITEMS >> ",[UNIFORM_ITEMS]],
	["<VEST ITEMS >> ",[["PRIMARY MAG",8],["rhs_mag_rgd5",3]]],
	["<BACKPACK ITEMS >> ",[]]
];
cargo_kit_sov = [
	[["CUP_launch_RPG18_Loaded",3]],
	[["rhs_mag_rgd5",20],["CUP_1Rnd_HE_GP25_M",30],["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M",15],["CUP_30Rnd_545x39_AK_M",30],["CUP_10Rnd_762x54_SVD_M",20],["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M",15],["CUP_8Rnd_9x18_Makarov_M",10],["rhs_mag_rdg2_black",6],["rhs_mag_rdg2_white",6],["rhs_mag_nspd",6],["CUP_1Rnd_SMOKE_GP25_M",15],["CUP_1Rnd_SmokeRed_GP25_M",15]],
	[["ACE_fieldDressing",30],["ACE_elasticBandage",15],["ACE_tourniquet",10]],
	[["cwr3_o_backpack_harness_roll",9]]
];