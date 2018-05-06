// F3 - Folk ARPS Assign Gear Script - AAF
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co			- commander
//		dc 			- deputy commander / squad leader
//		m 			- medic
//		ftl			- fire team leader
//		ar 			- automatic rifleman
//		aar			- assistant automatic rifleman
//		rat			- rifleman (AT)
//		dm			- designated marksman
//		mmgg		- medium mg gunner
//		mmgag		- medium mg assistant
//		matg		- medium AT gunner
//		matag		- medium AT assistant
//		hmgg		- heavy mg gunner (deployable)
//		hmgag		- heavy mg assistant (deployable)
//		hatg		- heavy AT gunner (deployable)
//		hatag		- heavy AT assistant (deployable)
//		mtrg		- mortar gunner (deployable)
//		mtrag		- mortar assistant (deployable)
//		msamg		- medium SAM gunner
//		msamag		- medium SAM assistant gunner
//		hsamg		- heavy SAM gunner (deployable)
//		hsamag		- heavy SAM assistant gunner (deployable)
//		sn			- sniper
//		sp			- spotter (for sniper)
//		vc			- vehicle commander
//		vg			- vehicle gunner
//		vd			- vehicle driver (repair)
//		pp			- air vehicle pilot / co-pilot
//		pcc			- air vehicle co-pilot (repair) / crew chief (repair)
//		pc			- air vehicle crew
//		eng			- engineer (demo)
//		engm		- engineer (mines)
//		uav			- UAV operator
//		div    		- divers
//
//		r 			- rifleman
//		car			- carabineer
//		smg			- submachinegunner
//		gren		- grenadier
//
//		v_car		- car/4x4
//		v_tr		- truck
//		v_ifv		- ifv
//
//		crate_small	- small ammocrate
//		crate_med	- medium ammocrate
//		crate_large	- large ammocrate
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

// ATTACHMENTS - PRIMARY
_attach1 = "acc_pointer_IR";	// IR Laser
_attach2 = "acc_flashlight";	// Flashlight

_silencer1 = "muzzle_snds_M";	// 5.56 suppressor
_silencer2 = "muzzle_snds_H";	// 6.5 suppressor

_scope1 = "optic_ACO_grn";		// ACO
_scope2 = "optic_MRCO";			// MRCO Scope - 1x - 6x
_scope3 = "optic_SOS";			// SOS Scope - 18x - 75x

_bipod1 = "bipod_03_F_oli";		// Default bipod
_bipod2 = "bipod_03_F_blk";		// Black bipod

// Default setup
_attachments = [_attach1,_scope1]; // The default attachment set for most units, overwritten in the individual unitType

// [] = remove all
// [_attach1,_scope1,_silencer] = remove all, add items assigned in _attach1, _scope1 and _silencer1
// [_scope2] = add _scope2, remove rest
// false = keep attachments as they are

// ====================================================================================

// ATTACHMENTS - HANDGUN
_hg_silencer1 = "muzzle_snds_acp";	// .45 suppressor

_hg_scope1 = "optic_MRD";			// MRD

// Default setup
_hg_attachments= []; // The default attachment set for handguns, overwritten in the individual unitType

// ====================================================================================

// WEAPON SELECTION

// Standard Riflemen ( MMG Assistant Gunner, Assistant Automatic Rifleman, MAT Assistant Gunner, MTR Assistant Gunner, Rifleman)
_rifle = "arifle_Mk20_F";
_riflemag = "30Rnd_556x45_Stanag";
_riflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard Carabineer (Medic, Rifleman (AT), MAT Gunner, MTR Gunner, Carabineer)
_carbine = "arifle_Mk20C_F";
_carbinemag = "30Rnd_556x45_Stanag";
_carbinemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";

// Standard Submachine Gun/Personal Defence Weapon (Aircraft Pilot, Submachinegunner)
_smg = "SMG_02_F";
_smgmag = "30Rnd_9x21_Mag";
_smgmag_tr = "30Rnd_9x21_Mag";

// Diver
_diverWep = "arifle_SDAR_F";
_diverMag1 = "30Rnd_556x45_Stanag";
_diverMag2 = "20Rnd_556x45_UW_mag";

// Rifle with GL and HE grenades (CO, DC, FTLs)
_glrifle = "arifle_Mk20_GL_MRCO_pointer_F";
_glriflemag = "30Rnd_556x45_Stanag";
_glriflemag_tr = "30Rnd_556x45_Stanag_Tracer_Yellow";
_glmag = "1Rnd_HE_Grenade_shell";

// Smoke for FTLs, Squad Leaders, etc
_glsmokewhite = "1Rnd_Smoke_Grenade_shell";
_glsmokegreen = "1Rnd_SmokeGreen_Grenade_shell";
_glsmokered = "1Rnd_SmokeRed_Grenade_shell";

// Flares for FTLs, Squad Leaders, etc
_glflarewhite = "UGL_FlareWhite_F";
_glflarered = "UGL_FlareRed_F";
_glflareyellow = "UGL_FlareYellow_F";
_glflaregreen = "UGL_FlareGreen_F";

// Pistols (CO, DC, Automatic Rifleman, Medium MG Gunner)
_pistol = "hgun_ACPC2_F";
_pistolmag = "9Rnd_45ACP_Mag";

// Grenades
_grenade = "HandGrenade";
_Mgrenade = "MiniGrenade";
_smokegrenade = "SmokeShell";
_smokegrenadegreen = "SmokeShellGreen";

// misc medical items.
_firstaid = "FirstAidKit";
_medkit = "Medikit";

// Night Vision Goggles (NVGoggles)
_nvg = "NVGoggles_INDEP";

// UAV Terminal
_uavterminal = "I_UavTerminal";

// Chemlights
_chemgreen =  "Chemlight_green";
_chemred = "Chemlight_red";
_chemyellow =  "Chemlight_yellow";
_chemblue = "Chemlight_blue";

// Backpacks
_bagsmall = "B_AssaultPack_khk";			// carries 120, weighs 20
_bagmedium = "B_FieldPack_oli";				// carries 200, weighs 30
_baglarge =  "B_Carryall_oli"; 				// carries 320, weighs 40
_bagmediumdiver =  "B_AssaultPack_blk";		// used by divers
_baguav = "I_UAV_01_backpack_F";			// used by UAV operator
_baghmgg = "I_HMG_01_weapon_F";				// used by Heavy MG gunner
_baghmgag = "I_HMG_01_support_F";			// used by Heavy MG assistant gunner
_baghatg = "I_AT_01_weapon_F";				// used by Heavy AT gunner
_baghatag = "I_HMG_01_support_F";			// used by Heavy AT assistant gunner
_bagmtrg = "I_Mortar_01_weapon_F";			// used by Mortar gunner
_bagmtrag = "I_Mortar_01_support_F";		// used by Mortar assistant gunner
_baghsamg = "I_AA_01_weapon_F";				// used by Heavy SAM gunner
_baghsamag = "I_HMG_01_support_F";			// used by Heavy SAM assistant gunner

// ====================================================================================

// UNIQUE, ROLE-SPECIFIC EQUIPMENT

// Automatic Rifleman
_AR = "LMG_Mk200_F";
_ARmag = "200Rnd_65x39_cased_Box";
_ARmag_tr = "200Rnd_65x39_cased_Box_Tracer";

// Medium MG
_MMG = "MMG_01_tan_F";
_MMGmag = "150Rnd_93x64_Mag";
_MMGmag_tr = "150Rnd_93x64_Mag";

// NON-DLC ALTERNATIVE:
//_MMG = "LMG_Zafir_F";
//_MMGmag = ""150Rnd_762x54_Box"";
//_MMGmag_tr = ""150Rnd_762x54_Box"_Tracer";

// Marksman rifle
_DMrifle = "srifle_EBR_F";
_DMriflemag = "20Rnd_762x51_Mag";

// Rifleman AT
_RAT = "launch_RPG32_F";
_RATmag = "RPG32_F";

// Medium AT
_MAT = "launch_NLAW_F";
_MATmag1 = "NLAW_F";
_MATmag2 = "NLAW_F";

// Surface Air
_SAM = "launch_I_Titan_F";
_SAMmag = "Titan_AA";

// Heavy AT
_HAT = "launch_I_Titan_short_F";
_HATmag1 = "Titan_AT";
_HATmag2 = "Titan_AP";

// Sniper
_SNrifle = "srifle_GM6_F";
_SNrifleMag = "5Rnd_127x108_Mag";

// Engineer items
_ATmine = "ATMine_Range_Mag";
_satchel = "DemoCharge_Remote_Mag";
_APmine1 = "APERSBoundingMine_Range_Mag";
_APmine2 = "APERSMine_Range_Mag";

// ====================================================================================

// CLOTHES AND UNIFORMS

// Define classes. This defines which gear class gets which uniform
// "medium" vests are used for all classes if they are not assigned a specific uniform

_light = [];
_heavy =  ["eng","engm"];
_diver = ["div"];
_pilot = ["pp","pcc","pc"];
_crew = ["vc","vg","vd"];
_ghillie = ["sn","sp"];
_specOp = [];

// Basic clothing
// The outfit-piece is randomly selected from the array for each unit

_baseUniform = ["U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_CombatUniform_tshirt"];
_baseHelmet = ["H_HelmetIA_net","H_HelmetIA_camo","H_HelmetIA"];
_baseGlasses = [];

// Vests
_lightRig = ["V_Chestrig_oli","V_BandollierB_oli"];
_mediumRig = ["V_PlateCarrierIA2_dgtl","V_PlateCarrierIA1_dgtl"]; 	// default for all infantry classes
_heavyRig = ["V_PlateCarrierIAGL_dgtl"];

// Diver
_diverUniform =  ["U_I_Wetsuit"];
_diverHelmet = [];
_diverRig = ["V_RebreatherIA"];
_diverGlasses = ["G_Diving"];

// Pilot
_pilotUniform = ["U_I_HeliPilotCoveralls"];
_pilotHelmet = ["H_PilotHelmetHeli_I"];
_pilotRig = ["V_TacVest_oli"];
_pilotGlasses = [];

// Crewman
_crewUniform = ["U_I_CombatUniform"];
_crewHelmet = ["H_HelmetCrew_I"];
_crewRig = ["V_TacVest_oli"];
_crewGlasses = [];

// Ghillie
_ghillieUniform = ["U_I_GhillieSuit"];	//DLC alternatives: ["U_I_FullGhillie_lsh","U_I_FullGhillie_ard","U_I_FullGhillie_sard"];
_ghillieHelmet = [];
_ghillieRig = ["V_Chestrig_oli"];
_ghillieGlasses = [];

// Spec Op - no nice stuff for AAF
_sfuniform = _baseUniform;
_sfhelmet = _baseHelmet;
_sfRig = _mediumRig;
_sfGlasses = [];

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following interprets what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init
_isMan = _unit isKindOf "CAManBase";	// We check if we're dealing with a soldier or a vehicle

// ====================================================================================

// This block needs only to be run on an infantry unit
if (_isMan) then {

		// PREPARE UNIT FOR GEAR ADDITION
	// The following code removes all existing weapons, items, magazines and backpacks

	removeBackpack _unit;
	removeAllWeapons _unit;
	removeAllItemsWithMagazines _unit;
	removeAllAssignedItems _unit;

	// ====================================================================================

	// HANDLE CLOTHES
	// Handle clothes and helmets and such using the include file called next.

	#include "f_assignGear_clothes.sqf";

	// ====================================================================================

	// ADD UNIVERSAL ITEMS
	// Add items universal to all units of this faction

	_unit linkItem _nvg;					// Add and equip the faction's nvg
	_unit addItem _firstaid;				// Add a single first aid kit (FAK)
	_unit linkItem "ItemMap";				// Add and equip the map
	_unit linkItem "ItemCompass";			// Add and equip a compass
	_unit linkItem "ItemRadio";				// Add and equip A3's default radio
	_unit linkItem "ItemWatch";				// Add and equip a watch
	//_unit linkItem "ItemGPS"; 			// Add and equip a GPS

  // ADD ACE ITEMS
	_unit addItem "ACE_Flashlight_XL50";	// Add a flashlight for ACE map support.
	_unit addItem "ACE_Maptools";

	// Add medical items
	{_unit addItem "ACE_fieldDressing"} forEach [1,2,3,4,5,6,7,8]; // Bandages
	{_unit addItem "ACE_morphine"} forEach [1,2,3,4];
	//{_unit addItem "ACE_epinephrine"} forEach [1,2];
	//{_unit addItem "ACE_bloodIV"} forEach [1,2];

};

// ====================================================================================

// SETUP BACKPACKS
// Include the correct backpack file for the faction

_backpack = {
	_typeofBackPack = _this select 0;
	_loadout = 1;
	if (count _this > 1) then {_loadout = _this select 1};
	switch (_typeofBackPack) do
	{
		#include "f_assignGear_aaf_b.sqf";
	};
};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

case "rif":
{
	_unit setUnitLoadout [["hlc_rifle_M4","","","FHQ_optic_AIM",["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["demian2435_police_man_uniform",[["ACRE_PRC343",1],["ACRE_PRC152",1],["ACE_fieldDressing",5],["ACE_bloodIV_500",1],["ACE_epinephrine",1],["ACE_morphine",5],["ACE_CableTie",6]]],["TRYK_V_tacv1LP_BK",[["rhsusf_mag_17Rnd_9x19_JHP",3,17],["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red",2,30],["rhs_mag_30Rnd_556x45_M855A1_Stanag",6,30],["ACE_Chemlight_HiOrange",2,1],["ACE_Chemlight_HiWhite",2,1],["SmokeShell",2,1]]],["B_AssaultPack_blk",[]],"H_Cap_police","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};

case "sg":
{
	_unit setUnitLoadout [["UK3CB_BAF_L128A1","","","",["UK3CB_BAF_12G_Pellets",8],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["demian2435_police_man_uniform",[["ACRE_PRC343",1],["ACRE_PRC152",1],["ACE_fieldDressing",5],["ACE_bloodIV_500",1],["ACE_epinephrine",1],["ACE_morphine",5],["ACE_CableTie",6]]],["TRYK_V_tacv1LP_BK",[["rhsusf_mag_17Rnd_9x19_JHP",3,17],["ACE_Chemlight_HiOrange",2,1],["ACE_Chemlight_HiWhite",2,1],["SmokeShell",2,1],["UK3CB_BAF_12G_Pellets",10,8],["UK3CB_BAF_12G_Slugs",4,8]]],["B_AssaultPack_blk",[]],"H_Cap_police","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};

case "smg":
{
	_unit setUnitLoadout [["hlc_smg_mp5a4","","","",["hlc_30Rnd_9x19_GD_MP5",30],[],""],[],["rhsusf_weap_glock17g4","","","",["rhsusf_mag_17Rnd_9x19_JHP",17],[],""],["demian2435_police_man_uniform",[["ACRE_PRC343",1],["ACRE_PRC152",1],["ACE_fieldDressing",5],["ACE_bloodIV_500",1],["ACE_epinephrine",1],["ACE_morphine",5],["ACE_CableTie",6]]],["TRYK_V_tacv1LP_BK",[["rhsusf_mag_17Rnd_9x19_JHP",3,17],["ACE_Chemlight_HiOrange",2,1],["ACE_Chemlight_HiWhite",2,1],["SmokeShell",2,1],["hlc_30Rnd_9x19_GD_MP5",8,30]]],["B_AssaultPack_blk",[]],"H_Cap_police","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch",""]];
};

// CRATE: Small, ammo for 1 fireteam
	case "crate_police":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addItemCargoGlobal ["ACE_fieldDressing", 40];
		_unit addItemCargoGlobal ["ACE_morphine", 20];
		_unit addItemCargoGlobal ["ACE_epinephrine", 10];
		_unit addItemCargoGlobal ["ACE_bloodIV", 10];
		
		_unit addItemCargoGlobal ["hlc_rifle_M4", 2];
		_unit addItemCargoGlobal ["UK3CB_BAF_L128A1", 2];
		_unit addItemCargoGlobal ["hlc_smg_mp5a4", 2];
		_unit addItemCargoGlobal ["rhsusf_weap_glock17g4", 6];
		
		_unit addItemCargoGlobal ["FHQ_optic_AIM", 2];
		_unit addItemCargoGlobal ["acc_flashlight", 6];
		_unit addItemCargoGlobal ["ACE_CableTie", 12];
		_unit addItemCargoGlobal ["ACE_Chemlight_HiOrange", 12];
		_unit addItemCargoGlobal ["ACE_Chemlight_HiWhite", 12];
		
		_unit addItemCargoGlobal ["SmokeShell", 12];
		_unit addItemCargoGlobal ["ACE_Chemlight_HiWhite", 12];
		
		_unit addItemCargoGlobal ["ACRE_PRC343", 6];
		_unit addItemCargoGlobal ["ACRE_PRC152", 2];
		
		_unit addItemCargoGlobal ["demian2435_police_man_uniform", 6];
		_unit addItemCargoGlobal ["TRYK_V_tacv1LP_BK", 6];
		_unit addItemCargoGlobal ["B_AssaultPack_blk", 6];
		_unit addItemCargoGlobal ["H_Cap_police", 6];
		_unit addItemCargoGlobal ["G_Aviator", 6];
		
		_unit addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 6];
		_unit addItemCargoGlobal ["UK3CB_BAF_12G_Pellets", 22];
		_unit addItemCargoGlobal ["UK3CB_BAF_12G_Slugs", 8];
		_unit addItemCargoGlobal ["hlc_30Rnd_9x19_GD_MP5", 40];
		_unit addItemCargoGlobal ["rhsusf_mag_17Rnd_9x19_JHP", 12];
		_unit addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
		
		
};


// CRATE: Medium, ammo for 1 squad
	case "crate_evidence_guns":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addItemCargoGlobal ["rhs_weap_akms", 2];
		_unit addItemCargoGlobal ["Cre8ive_Rfl_CV_557", 2];
		_unit addItemCargoGlobal ["hgun_ACPC2_F", 4];
		_unit addItemCargoGlobal ["rhs_weap_pkm", 1];
		_unit addItemCargoGlobal ["hlc_rifle_rpk", 1];
		_unit addItemCargoGlobal ["rhs_weap_m4", 2];
		_unit addItemCargoGlobal ["rhs_weap_M590_8RD", 2];
		_unit addItemCargoGlobal ["hlc_rifle_ak74_dirty", 2];
		_unit addItemCargoGlobal ["rhs_weap_savz61", 2];
		_unit addItemCargoGlobal ["hlc_rifle_FAL5000", 3];
		
		_unit addItemCargoGlobal ["optic_KHS_old", 2];
		
		_unit addItemCargoGlobal ["rhs_mag_rdg2_white", 12];
		_unit addItemCargoGlobal ["ACE_Chemlight_HiWhite", 12];
		_unit addItemCargoGlobal ["rhs_mag_rdg2_black", 4];
		_unit addItemCargoGlobal ["rhs_mag_rgo", 12];
		
		_unit addItemCargoGlobal ["rhs_30Rnd_762x39mm", 16];
		_unit addItemCargoGlobal ["Cre8ive_Mag_CV_557_5Rnd", 10];
		_unit addItemCargoGlobal ["Cre8ive_Mag_CV_557_5Rnd_Tracer_Red", 4];
		_unit addItemCargoGlobal ["9Rnd_45ACP_Mag", 12];
		_unit addItemCargoGlobal ["rhs_100Rnd_762x54mmR", 3];
		_unit addItemCargoGlobal ["hlc_45Rnd_762x39_m_rpk", 8];
		_unit addItemCargoGlobal ["rhs_mag_30Rnd_556x45_M855A1_Stanag", 16];
		_unit addItemCargoGlobal ["rhsusf_8Rnd_00Buck", 16];
		_unit addItemCargoGlobal ["rhsusf_8Rnd_Slug", 8];
		_unit addItemCargoGlobal ["hlc_30Rnd_545x39_B_AK", 16];
		_unit addItemCargoGlobal ["rhsgref_20rnd_765x17_vz61", 24];
		_unit addItemCargoGlobal ["hlc_20Rnd_762x51_B_fal", 24];
};

	case "crate_evidence_gear":
{
		clearWeaponCargoGlobal _unit;
		clearMagazineCargoGlobal _unit;
		clearItemCargoGlobal _unit;
		clearBackpackCargoGlobal _unit;
		
		_unit addItemCargoGlobal ["ACRE_PRC343", 18];
		_unit addItemCargoGlobal ["ACRE_PRC152", 4];
		
		_unit addItemCargoGlobal ["bv_FlashLight", 8];
		_unit addItemCargoGlobal ["DemoCharge_Remote_Mag", 4];
		_unit addItemCargoGlobal ["SatchelCharge_Remote_Mag", 4];
		_unit addItemCargoGlobal ["ACE_M26_Clacker", 8];
		
		_unit addItemCargoGlobal ["V_Chestrig_oli", 4];
		_unit addItemCargoGlobal ["H_Cap_oli", 4];
		_unit addItemCargoGlobal ["V_BandollierB_oli", 2];
		_unit addItemCargoGlobal ["H_Booniehat_khk", 2];
		_unit addItemCargoGlobal ["H_Shemag_olive", 4];
		_unit addItemCargoGlobal ["V_TacVest_blk", 3];
		_unit addItemCargoGlobal ["H_Bandanna_khk", 2];
		_unit addItemCargoGlobal ["V_Chestrig_blk", 4];
		_unit addItemCargoGlobal ["H_Watchcap_camo", 2];
		
		_unit addItemCargoGlobal ["LOP_U_IRA_Fatigue_DPM_BSW", 8];
		_unit addItemCargoGlobal ["LOP_U_UVF_Fatigue_GREY_GSW", 8];
		_unit addItemCargoGlobal ["LOP_U_IRA_Fatigue_GRK_BLUE", 6];
		
		_unit addItemCargoGlobal ["B_Messenger_Black_F", 2];
		_unit addItemCargoGlobal ["B_FieldPack_blk", 4];
		_unit addItemCargoGlobal ["B_TacticalPack_blk", 6];
		
};

// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
		_unit addmagazines [_riflemag,7];
		_unit addweapon _rifle;

		_unit selectweapon primaryweapon _unit;

		if (true) exitwith {player globalchat format ["DEBUG (f\assignGear\f_assignGear_aaf.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};


// ====================================================================================

// If this isn't run on an infantry unit we can exit
if !(_isMan) exitWith {};

// ====================================================================================

// Handle weapon attachments

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING

_unit selectweapon primaryweapon _unit;
