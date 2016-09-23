#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do {
	case "cop_basic": {
		switch(true) do {
			case (playerSide != west): {"You are not a cop!"};
			default {
				["Altis Cop Shop",
					[
						["SMG_02_F",nil,7500],
						["SMG_05_F",nil,7500],
						["hgun_P07_snds_F","Stun Pistol",2000],
						["optic_Holosight_smg",nil,1100],
						["muzzle_snds_L",nil,1100],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["NVGoggles",nil,2000],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag_SMG_02",nil,50],
						["16Rnd_9x21_Mag",nil,50]
					]
				];
			};
		};
	};
	
	case "med_basic": {
		switch (true) do {
			case (playerSide != independent): {"You are not an Medic"};
			default {
				["Medic Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles_OPFOR",nil,5000],
						["B_Bergen_sgg",nil,100],
						["B_Carryall_oli",nil,100],
						["B_Kitbag_mcamo",nil,100]
					]
				];
			};
		};
	};

	case "donor":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a donator!"};
			case (!license_civ_donator1): {"You don't have a license to use this!"};
			default
			{
				["Donator Weapon Store",
					[
					    ["hgun_ACPC2_F",nil,7500],
						["hgun_Pistol_heavy_01_F",nil,7500],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["hgun_Rook40_F",nil,7500],
						["hgun_PDW2000_F",nil,35000],
						["optic_Holosight_smg",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Aco_smg",nil,5000],
						["optic_ACO_grn_smg",nil,5000],
						["acc_flashlight",nil,5000],
						["acc_pointer_IR",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["16Rnd_9x21_Mag",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["11Rnd_45ACP_Mag",nil,1000],
						["30Rnd_9x21_Mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000]
					]
				];
			};
		};
	};

	case "donor3":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a donator!"};
			case (!license_civ_donator3): {"You don't have a license to use this!"};
			default
			{
				["Donator Weapon Store",
					[
					    ["hgun_ACPC2_F",nil,7500],
						["hgun_Pistol_heavy_01_F",nil,7500],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["hgun_Rook40_F",nil,7500],
						["hgun_PDW2000_F",nil,35000],
						["arifle_SDAR_F",nil,55000],
						["arifle_TRG21_F",nil,250000],
						["optic_MRCO",nil,12500],
						["optic_Holosight_smg",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Aco_smg",nil,5000],
						["optic_ACO_grn_smg",nil,5000],
						["acc_flashlight",nil,5000],
						["acc_pointer_IR",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["16Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["11Rnd_45ACP_Mag",nil,1000],
						["30Rnd_9x21_Mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000]
					]
				];
			};
		};
	};

	case "donor5":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a donator!"};
			case (!license_civ_donator5): {"You don't have a license to use this!"};
			default
			{
				["Donator Weapon Store",
					[
						["arifle_Mk20_F",nil,200000],
						["hgun_ACPC2_F",nil,7500],
						["hgun_Pistol_heavy_01_F",nil,7500],
						["hgun_Pistol_heavy_02_F",nil,7500],
						["hgun_Rook40_F",nil,7500],
						["hgun_PDW2000_F",nil,35000],
						["arifle_SDAR_F",nil,55000],
						["arifle_TRG21_F",nil,250000],
						["optic_MRCO",nil,15000],
						["optic_Hamr",nil,32000],
						["optic_Holosight_smg",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Aco_smg",nil,5000],
						["optic_ACO_grn_smg",nil,5000],
						["acc_flashlight",nil,5000],
						["acc_pointer_IR",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["16Rnd_9x21_Mag",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["11Rnd_45ACP_Mag",nil,1000],
						["30Rnd_9x21_Mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000]
					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 2): {"You are not at a patrol officer rank!"};
			default
			{
				["Altis Corporal Shop",
					[
					    ["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXC_Black_F",nil,25000],
						["SMG_02_F",nil,7500],
						["SMG_05_F","",7500],
						["SMG_01_F",nil,15000],
						["arifle_SPAR_01_blk_F",nil,25000],
						["arifle_Mk20C_plain_F",nil,25000],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_Holosight",nil,2500],
						["acc_flashlight",nil,2500],
						["acc_pointer_IR",nil,2500],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_acp",nil,2500],
						["NVGoggles_OPFOR",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_9x21_Mag_SMG_02","",10],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_556x45_Stanag",nil,100]
					]
				];
			};
		};
	};

	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 3): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Sergeant Officer Shop",
					[
					    ["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,45000],
						["arifle_SPAR_01_blk_F",nil,25000],
						["SMG_02_F",nil,7500],
						["SMG_01_F",nil,15000],
						["SMG_05_F",nil,7500],
						["arifle_Mk20C_plain_F",nil,15000],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_NVS",nil,2500],
						["optic_Holosight",nil,2500],
						["acc_flashlight",nil,2500],
						["acc_pointer_IR",nil,2500],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_acp",nil,2500],
						["NVGoggles_OPFOR",nil,5000],
						["HandGrenade_Stone",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["30Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag_SMG_02",nil,50],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_556x45_Stanag",nil,100]
					]
				];
			};
		};
	};

	case "cop_lieutenant":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 4): {"You are not at a lieutenant rank!"};
			default
			{
				["Altis Lieutenant Shop",
					[
					    ["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,75000],
						["arifle_Katiba_F",nil,75000],
						["arifle_SPAR_01_blk_F",nil,25000],
						//["arifle_MX_SW_Black_F",nil,45000],
						["SMG_02_F",nil,7500],
						["SMG_01_F",nil,15000],
						["SMG_05_F","",7500],
						["arifle_Mk20C_plain_F",nil,15000],
						["optic_Arco",nil,2500],
						["optic_LRPS",nil,25000],
						["optic_AMS",nil,25000],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_NVS",nil,2500],
						["optic_Holosight",nil,2500],
						["acc_flashlight",nil,2500],
						["acc_pointer_IR",nil,2500],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_acp",nil,2500],
						["NVGoggles_OPFOR",nil,5000],
						["HandGrenade_Stone",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["30Rnd_65x39_caseless_mag",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,100],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag_SMG_02",nil,50],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_556x45_Stanag",nil,100]
					]
				];
			};
		};
	};

	case "cop_major":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (FETCH_CONST(life_coplevel) < 5): {"You are not at a sergeant rank!"};
			default
			{
				["Altis Major, Captain and Colonel Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,75000],
						["arifle_SPAR_01_blk_F",nil,25000],
						["arifle_Katiba_F",nil,75000],
						["arifle_MX_SW_Black_F",nil,125000],
						["LMG_03_F",nil,225000],
                		["srifle_LRR_camo_F",nil,45000],
						["SMG_02_F",nil,7500],
						["SMG_01_F",nil,15000],
						["SMG_05_F","",7500],
						["arifle_Mk20C_plain_F",nil,15000],
						["DemoCharge_Remote_Mag",nil,45000],
						["optic_Arco",nil,2500],
						["optic_LRPS",nil,25000],
						["optic_AMS",nil,25000],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_NVS",nil,2500],
						["optic_Holosight",nil,2500],
						["acc_flashlight",nil,2500],
						["acc_pointer_IR",nil,2500],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_H_MG",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_acp",nil,2500],
						["NVGoggles_OPFOR",nil,5000],
						["HandGrenade_Stone",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["B_UavTerminal",nil,100000],
						["B_UAV_01_backpack_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["200Rnd_556x45_Box_F",nil,10000],
						["7Rnd_408_Mag",nil,1000],
						["30Rnd_65x39_caseless_green",nil,100],
						["100Rnd_65x39_caseless_mag",nil,100],
						["30Rnd_556x45_Stanag_green",nil,100],
						["30Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag_SMG_02",nil,50],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_556x45_Stanag",nil,100]
					]
				];
			};
		};
	};

	case "military":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (!license_cop_military): {"You are not a military!"};
			default
			{
				["Military Police Weapon Shop",
					[
						["hgun_P07_snds_F","Stun Pistol",2000],
						//["arifle_MX_Black_F",nil,35000],
						//["srifle_DMR_03_F",nil,125000],
						//["srifle_DMR_03_khaki_F",nil,125000],
						//["srifle_DMR_03_tan_F",nil,125000],
						//["srifle_DMR_03_multicam_F",nil,125000],
						//["srifle_DMR_03_woodland_F",nil,125000],
						//["srifle_EBR_F",nil,125000],
						["arifle_MXC_Black_F",nil,25000],
						["arifle_MXM_Black_F",nil,45000],
						["arifle_Katiba_F",nil,45000],
						["arifle_MX_SW_Black_F",nil,45000],
                		["srifle_LRR_camo_F",nil,45000],
						["SMG_02_F",nil,7500],
						["SMG_01_F",nil,15000],
						["arifle_Mk20C_plain_F",nil,15000],
						["DemoCharge_Remote_Mag",nil,45000],
						["optic_Arco",nil,2500],
						["optic_LRPS",nil,25000],
						["optic_AMS",nil,25000],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,2500],
						["optic_NVS",nil,2500],
						["optic_Holosight",nil,2500],
						["acc_flashlight",nil,2500],
						["acc_pointer_IR",nil,2500],
						//["muzzle_snds_H",nil,2500],
						["muzzle_snds_L",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_acp",nil,2500],
						["muzzle_snds_B",nil,5000],
						["NVGoggles_OPFOR",nil,5000],
						["HandGrenade_Stone",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["B_UavTerminal",nil,100000],
						["B_UAV_01_backpack_F",nil,100000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["7Rnd_408_Mag",nil,1000],
						//["100Rnd_65x39_caseless_mag",nil,100],
						//["20Rnd_762x51_Mag",nil,100],
						["30Rnd_65x39_caseless_green",nil,100],
						["30Rnd_9x21_Mag",nil,100],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_556x45_Stanag",nil,100]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a license to use this!"};
			default
			{
				["Freedom And Independence Army Shop",
					[
						["arifle_SDAR_F",nil,25000],
						["SMG_01_F",nil,15000],
						["arifle_TRG21_F",nil,20000],
						["arifle_Mk20C_F",nil,20000],
						["arifle_AKS_F",nil,25000],
						["arifle_MX_SW_F",nil,235000],
						["arifle_Katiba_F",nil,75000],
						["arifle_ARX_blk_F",nil,75000],
						["DemoCharge_Remote_Mag",nil,75000],
						["optic_Arco",nil,2500],
						["optic_Hamr",nil,2500],
						["optic_MRCO",nil,2500],
						["optic_DMS",nil,25000],
						["optic_NVS",nil,2500],
						["optic_LRPS",nil,100000],
						["optic_Holosight",nil,2500],
						["acc_flashlight",nil,2500],
						["acc_pointer_IR",nil,2500],
						["muzzle_snds_H",nil,2500],
						["muzzle_snds_M",nil,2500],
						["muzzle_snds_65_TI_blk_F",nil,2500],
						["muzzle_snds_H_MG",nil,2500],
						["muzzle_snds_acp",nil,2500],
						["NVGoggles_OPFOR",nil,5000],
						["FirstAidKit",nil,100],
						["ToolKit",nil,100],
						["Binocular",nil,100],
						["ItemGPS",nil,10],
						["100Rnd_65x39_caseless_mag",nil,10000],
						["30Rnd_65x39_caseless_green",nil,100],
						["30Rnd_545x39_Mag_F",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,100],
						["30Rnd_556x45_Stanag",nil,100]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Gun Store",
					[
						["hgun_Rook40_F",nil,16500],
						["hgun_Pistol_heavy_02_F",nil,18500],
						["hgun_ACPC2_F",nil,21500],
						["hgun_PDW2000_F",nil,95000],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,7500],
						["16Rnd_9x21_Mag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["30Rnd_9x21_Mag_SMG_02",nil,2500],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_9x21_Mag",nil,1000]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["arifle_SDAR_F",nil,90000],
						["arifle_TRG20_F",nil,375000],
						["arifle_AKS_F",nil,345000],
						["hgun_Rook40_F",nil,16500],
						["hgun_Pistol_heavy_02_F",nil,18500],
						["hgun_ACPC2_F",nil,21500],
						["hgun_PDW2000_F",nil,65000],
						["optic_ACO_grn_smg",nil,2500],
						["optic_MRCO",nil,35000],
						["V_Rangemaster_belt",nil,7500],
						//["muzzle_snds_acp",nil,10000],
						["Binocular",nil,100],
						["ItemGPS",nil,50],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,15000],
						["16Rnd_9x21_Mag",nil,1000],
						["20Rnd_556x45_UW_mag",nil,1000],
						["30Rnd_545x39_Mag_F",nil,1000],
						["30Rnd_556x45_Stanag",nil,1000],
						["9Rnd_45ACP_Mag",nil,1000],
						["6Rnd_45ACP_Cylinder",nil,1000],
						["30Rnd_45ACP_Mag_SMG_01",nil,1000],
						["30Rnd_9x21_Mag",nil,2500]
					]
				];
			};
		};
	};

	case "bandit":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Bandit Armament",
					[
						["arifle_SDAR_F",nil,50000],
						["arifle_TRG21_F",nil,245000],
						["arifle_AKS_F",nil,200000],
						["arifle_Katiba_F",nil,800000],
						["SMG_01_F",nil,145000],
						["optic_MRCO",nil,17500],
						["optic_Hamr",nil,40000],
						["optic_Arco",nil,45000],
						["optic_SOS",nil,145000],
						["muzzle_snds_M",nil,75000],
						["muzzle_snds_acp",nil,15000],
						["muzzle_snds_H",nil,175000],
						["Binocular",nil,100],
						["ItemGPS",nil,50],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles_OPFOR",nil,15000],
						["20Rnd_556x45_UW_mag",nil,2500],
						["30Rnd_556x45_Stanag",nil,2500],
						["30Rnd_545x39_Mag_F",nil,2500],
						["30Rnd_65x39_caseless_green",nil,4500],
						["30Rnd_45ACP_Mag_SMG_01",nil,2500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["Binocular",nil,100],
				["ItemGPS",nil,50],
				["ToolKit",nil,250],
				["FirstAidKit",nil,150],
				["NVGoggles",nil,20000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
};
