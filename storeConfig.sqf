// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
# @@Modification par Shawn le 13/11/2014
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
	// Handguns
	["P07 Pistol", "hgun_P07_F", 50],
	["Rook-40 Pistol", "hgun_Rook40_F", 50],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 75],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 75],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 100],
	
	//R3F Armes
	["PAMAS", "R3F_PAMAS", 200]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 100],
	["Sting SMG", "SMG_02_F", 125],
	["Vermin SMG", "SMG_01_F", 125],
	
	//R3F Armes
	["MP5SD", "R3F_MP5SD", 325]
];

rifleArray = compileFinal str
[
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 150],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 175],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 200],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 200],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 250],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 250],

	["TRG-20 Carbine", "arifle_TRG20_F", 150],
	["TRG-21 Rifle ", "arifle_TRG21_F", 200],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

	["Katiba Carbine", "arifle_Katiba_C_F", 150],
	["Katiba Rifle", "arifle_Katiba_F", 200],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],

	["MX Carbine", "arifle_MXC_F", 150],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 175],
	["MX Rifle", "arifle_MX_F", 200],
	["MX Rifle (Black)", "arifle_MX_Black_F", 225],
	["MX 3GL Rifle", "arifle_MX_GL_F", 250],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 275],

	// Markman Rifles
	["MXM Rifle", "arifle_MXM_F", 300],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 325],
	["DMR Rifle", "srifle_DMR_01_F", 400],
	["Mk18 ABR Rifle", "srifle_EBR_F", 450],

	// Sniper Rifles
	["M320 LRR Sniper", "srifle_LRR_SOS_F", 1000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_SOS_F", 1150],
	["GM6 Lynx Sniper", "srifle_GM6_SOS_F", 1100],
	["GM6 Lynx Sniper (camo)", "srifle_GM6_camo_SOS_F", 1250],
	
	//R3F Armes
	["Famas F1", "R3F_Famas_F1", 450],
	["Famas F1 DES", "R3F_Famas_F1_DES", 450],
	["Famas F1 HG", "R3F_Famas_F1_HG", 550],
	["Famas F1 HG DES", "R3F_Famas_F1_HG_DES", 550],
	["Famas F1 M203", "R3F_Famas_F1_M203", 750],
	["Famas F1 M203 DES", "R3F_Famas_F1_M203_DES", 750],
	["Famas G2 DES", "R3F_Famas_G2_DES", 550],
	["Famas G2 HG", "R3F_Famas_G2_HG", 550],
	["Famas G2 HG_DES", "R3F_Famas_G2_HG_DES", 550],
	["Famas G2 M203", "R3F_Famas_G2_M203", 750],
	["Famas G2 M203 DES", "R3F_Famas_G2_M203_DES", 750],
	["Famas surb HG", "R3F_Famas_surb_HG", 650],
	["Famas surb HG DES", "R3F_Famas_surb_HG_DES", 650],
	["Famas surb", "R3F_Famas_surb", 650],
	["Famas surb DES", "R3F_Famas_surb_DES", 750],
	["Famas surb M203", "R3F_Famas_surb_M203", 750],
	["Famas surb M203 DES", "R3F_Famas_surb_M203_DES", 750],
	["Famas felin", "R3F_Famas_felin", 17050],
	["Famas felin DES", "R3F_Famas_felin_DES", 17150],
	["FRF2", "R3F_FRF2", 950],
	["FRF2 DES", "R3F_FRF2_DES", 950],
	["M107 Sniper", "R3F_M107", 3000],
	["M107 DES Sniper", "R3F_M107_DES", 3000],
	["PGM Hecate II", "R3F_PGM_Hecate_II", 3500],
	["PGM Hecate II DES", "R3F_PGM_Hecate_II_DES", 4500],
	["PGM Hecate II POLY", "R3F_PGM_Hecate_II_POLY", 4500]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 300],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 325],
	["Mk200 LMG", "LMG_Mk200_F", 375],
	["Zafir LMG", "LMG_Zafir_F", 450],
	
	//R3F Armes
	["Minimi", "R3F_Minimi", 650],
	["Minimi HG", "R3F_Minimi_HG", 650],
	["Minimi 762", "R3F_Minimi_762", 950],
	["Minimin 762 HG", "R3F_Minimi_762_HG", 950],
	["HK417L", "R3F_HK417L", 650],
	["HK417L DES", "R3F_HK417L_DES", 650],
	["HK417M", "R3F_HK417M", 650],
	["HK417M_DES", "R3F_HK417M_DES", 650],
	["HK417M HG", "R3F_HK417M_HG", 650],
	["HK417M HG DES", "R3F_HK417M_HG_DES", 650],
	["HK417S HG", "R3F_HK417S_HG", 650],
	["HK417S HG DES", "R3F_HK417S_HG_DES", 650],
	["HK416M", "R3F_HK416M", 650],
	["HK416M DES", "R3F_HK416M_DES", 650],
	["HK416M HG", "R3F_HK416M_HG", 650],
	["HK416M HG DES", "R3F_HK416M_HG_DES", 650]
];

shotgunArray = compileFinal str
[
	// Currently unused
];

launcherArray = compileFinal str
[
	["RPG-42 Alamut", "launch_RPG32_F", 400],
	["PCML", "launch_NLAW_F", 600],
	["Titan MPRL Compact (Tan)", "launch_Titan_short_F", 500],
	["Titan MPRL Compact (Brown)", "launch_O_Titan_short_F", 500],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 500],
	["Titan MPRL AA (Desert)", "launch_Titan_F", 600],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 600],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 600],
	
	//R3F Armes
	["AT4CS", "R3F_AT4CS", 3600],
	["ERYX", "R3F_ERYX", 3600],
	["STINGER", "R3F_STINGER", 3600]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call shotgunArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd (NATO)", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd (CSAT)", "O_static_AT_F", 2500],
	["Static Titan AT 4Rnd (AAF)", "I_static_AT_F", 2500],
	["Static Titan AA 4Rnd (NATO)", "B_static_AA_F", 3000],
	["Static Titan AA 4Rnd (CSAT)", "O_static_AA_F", 3000],
	["Static Titan AA 4Rnd (AAF)", "I_static_AA_F", 3000],
	["Mk30 HMG .50 Low tripod (NATO)", "B_HMG_01_F", 2500],
	["Mk30 HMG .50 Low tripod (CSAT)", "O_HMG_01_F", 2500],
	["Mk30 HMG .50 Low tripod (AAF)", "I_HMG_01_F", 2500],
	// ["Mk30A HMG .50 Sentry (NATO)", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry (CSAT)", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry (AAF)", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod (NATO)", "B_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod (CSAT)", "O_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod (AAF)", "I_HMG_01_high_F", 3000],
	["Mk32 GMG 20mm Low tripod (NATO)", "B_GMG_01_F", 5500],
	["Mk32 GMG 20mm Low tripod (CSAT)", "O_GMG_01_F", 5500],
	["Mk32 GMG 20mm Low tripod (AAF)", "I_GMG_01_F", 5500],
	// ["Mk32A GMG 20mm Sentry (NATO)", "B_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry (CSAT)", "O_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry (AAF)", "I_GMG_01_A_F", 10000],
	["Mk32 GMG 20mm High tripod (NATO)", "B_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod (CSAT)", "O_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod (AAF)", "I_GMG_01_high_F", 6000],
	["Mk6 Mortar (NATO)", "B_Mortar_01_F", 12500],
	["Mk6 Mortar (CSAT)", "O_Mortar_01_F", 12500],
	["Mk6 Mortar (AAF)", "I_Mortar_01_F", 12500]
];

throwputArray = compileFinal str
[
	["Mini Grenade", "MiniGrenade", 50],
	["Grenade explosive", "HandGrenade", 100],
	["Mine APERS antipersonnel à cable", "APERSTripMine_Wire_Mag", 200],
	["Mine APERS antipersonnel bondissante", "APERSBoundingMine_Range_Mag", 250],
	["Mine APERS antipersonnel à pression", "APERSMine_Range_Mag", 300],
	["charge à fragmentation Claymore", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["Mine M6 SLAM", "SLAMDirectionalMine_Wire_Mag", 350],
	["Mine AntiTanque", "ATMine_Range_Mag", 400],
	["Charge Explosive", "DemoCharge_Remote_Mag", 450],
	["Charge explosive en sacoche", "SatchelCharge_Remote_Mag", 500],
	["Grenade Fumigène (White)", "SmokeShell", 50],
	["Grenade Fumigène (Purple)", "SmokeShellPurple", 50],
	["Grenade Fumigène (Blue)", "SmokeShellBlue", 50],
	["Grenade Fumigène (Green)", "SmokeShellGreen", 50],
	["Grenade Fumigène (Yellow)", "SmokeShellYellow", 50],
	["Grenade Fumigène (Orange)", "SmokeShellOrange", 50],
	["Grenade Fumigène (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 250],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 250],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 400],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 350],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	["Titan Anti-Personnel Missile", "Titan_AP", 350],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile", "Titan_AA", 350],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50],
	
	//R3F Munitions
	["15Rnd 9x19 PAMAS", "R3F_15Rnd_9x19_PAMAS", 50],
	["30Rnd 9x19 MP5", "R3F_30Rnd_9x19_MP5", 50],
	["25Rnd 556x45 FAMAS", "R3F_25Rnd_556x45_FAMAS", 50],
	["25Rnd 556x45 TRACER_FAMAS", "R3F_25Rnd_556x45_TRACER_FAMAS", 50],
	["30Rnd 556x45 FAMAS", "R3F_30Rnd_556x45_FAMAS", 50],
	["30Rnd 556x45 TRACER_FAMAS", "R3F_30Rnd_556x45_TRACER_FAMAS", 50],
	["30Rnd 556x45 HK416", "R3F_30Rnd_556x45_HK416", 50],
	["30Rnd 556x45 TRACER_HK416", "R3F_30Rnd_556x45_TRACER_HK416", 50],
	["10Rnd 762x51 FRF2", "R3F_10Rnd_762x51_FRF2", 150],
	["7Rnd 127x99 PGM", "R3F_7Rnd_127x99_PGM", 150],
	["7Rnd 127x99 PEI PGM", "R3F_7Rnd_127x99_PEI_PGM", 150],
	["R3F_10Rnd_127x99_M107", "R3F_10Rnd_127x99_M107", 150],
	["R3F_10Rnd_127x99_PEI_M107", "R3F_10Rnd_127x99_PEI_M107", 150],
	["200Rnd 556x45 MINIMI", "R3F_200Rnd_556x45_MINIMI", 40],
	["100Rnd 762x51 MINIMI", "R3F_100Rnd_762x51_MINIMI", 50],
	["20Rnd 762x51 HK417", "R3F_20Rnd_762x51_HK417", 50],
	["20Rnd 762x51 TRACER_HK417", "R3F_20Rnd_762x51_TRACER_HK417", 50],
	["30Rnd 9x19 MP5", "R3F_30Rnd_9x19_MP5", 20],
	["AT4CS Mag", "R3F_AT4CS_Mag", 350],
	["ERYX_Mag", "R3F_ERYX_Mag", 350],
	["STINGER_Mag", "R3F_STINGER_Mag", 350]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Silencieux 9mm", "muzzle_snds_L", 50, "item"],
	["Silencieux .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Silencieux 5.56mm", "muzzle_snds_M", 100, "item"],
	["Silencieux 6.5mm", "muzzle_snds_H", 100, "item"],
	["Silencieux 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Silencieux 7.62mm", "muzzle_snds_B", 125, "item"],
	["Lampe", "acc_flashlight", 25, "item"],
	["Pointeur Laser", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["MRCO", "optic_MRCO", 100, "item"],
	["ARCO", "optic_Arco", 125, "item"],
	["RCO", "optic_Hamr", 150, "item"],
	["DMS", "optic_DMS", 1750, "item"],
	["LRPS", "optic_LRPS", 1750, "item"],
	["SOS", "optic_SOS", 2000, "item"],
	["NVS", "optic_NVS", 5000, "item"],
	["TWS", "optic_tws", 50000, "item"],
	["TWS MG", "optic_tws_mg", 60000, "item"],
	["Nightstalker", "optic_Nightstalker", 55000, "item"],
	
	//R3F Accesoires
	["Silencieux FAMAS", "R3F_SILENCIEUX_FAMAS", 125, "item"],
	["Silencieux FAMAS DES", "R3F_SILENCIEUX_FAMAS_DES", 125, "item"],
	["Silencieux HK416", "R3F_SILENCIEUX_HK416", 125, "item"], 
	["Silencieux HK416 DES", "R3F_SILENCIEUX_HK416_DES", 125, "item"],
	["Silencieux FRF2", "R3F_SILENCIEUX_FRF2", 125, "item"],
	["Silencieux FRF2 DES", "R3F_SILENCIEUX_FRF2_DES", 125, "item"],
	["Silencieux HK417", "R3F_SILENCIEUX_HK417", 125, "item"],
	["Silencieux HK417 DES", "R3F_SILENCIEUX_HK417_DES", 125, "item"],
	["AIMPOINT", "R3F_AIMPOINT", 500, "item"],
	["AIMPOINT DES", "R3F_AIMPOINT_DES", 500, "item"],
	["EOTECH", "R3F_EOTECH", 500, "item"],
	["EOTECH DES", "R3F_EOTECH_DES", 500, "item"],
	["J4", "R3F_J4", 500, "item"],
	["J4 DES", "R3F_J4_DES", 500, "item"],
	["FELIN", "R3F_FELIN", 15500, "item"],
	["FELIN DES", "R3F_FELIN_DES", 15500, "item"],
	["FELIN FRF2", "R3F_FELIN_FRF2", 15500, "item"],
	["J8", "R3F_J8", 500, "item"],
	["J8 DES", "R3F_J8_DES", 500, "item"],
	["J8 MILDOT", "R3F_J8_MILDOT", 500, "item"],
	["J8 MILDOT_DES", "R3F_J8_MILDOT_DES", 500, "item"],
	["J10", "R3F_J10", 500, "item"],
	["J10 DES", "R3F_J10_DES", 500, "item"],
	["J10 MILDOT", "R3F_J10_MILDOT", 500, "item"],
	["J10 MILDOT_DES", "R3F_J10_MILDOT_DES", 500, "item"],
	["NF", "R3F_NF", 500, "item"],
	["NF DES", "R3F_NF_DES", 500, "item"],
	["NF42", "R3F_NF42", 500, "item"],
	["NF42_DES", "R3F_NF42_DES", 500, "item"],
	["ZEISS", "R3F_ZEISS", 500, "item"],
	["ZEISS_DES", "R3F_ZEISS_DES", 500, "item"],
	["OB50", "R3F_OB50", 500, "item"],
	["LAMPE SURB", "R3F_LAMPE_SURB", 500, "item"],
	["LAMPE SURB_DES", "R3F_LAMPE_SURB_DES", 500, "item"],
	["POINTEUR SURB", "R3F_POINTEUR_SURB", 500, "item"],
	["POINTEUR SURB_DES", "R3F_POINTEUR_SURB_DES", 500, "item"],
	["PIRAT", "R3F_PIRAT", 500, "item"],
	["PIRAT DES", "R3F_PIRAT_DES", 500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["ECH", "H_HelmetB", 50, "hat"],
	["ECH (Ghillie)", "H_HelmetB_camo", 50, "hat"],
	["ECH (Light)", "H_HelmetB_light", 50, "hat"],
	["ECH (Spraypaint)", "H_HelmetB_paint", 50, "hat"],
	["SF Helmet", "H_HelmetSpecB", 50, "hat"],
	["SF Helmet (Black)", "H_HelmetSpecB_blk", 50, "hat"],
	["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 50, "hat"],
	["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_plain_blk", 50, "hat"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 50, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 50, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 50, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 50, "hat"],
	["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 50, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 50, "hat"],
	["MICH", "H_HelmetIA", 50, "hat"],
	["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 50, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 50, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 50, "hat"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 50, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 50, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Dark blue)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Dark brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Dark khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Dark green)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	["Beret (Green)", "H_Beret_grn", 10, "hat"],
	["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	["Beret (Red)", "H_Beret_red", 10, "hat"],
	["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	["Black Turban", "H_TurbanO_blk", 50, "hat"],
	["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (Tan)", "H_Booniehat_tan", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Digi)", "H_Booniehat_dgtl", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Raven Security)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (SAS)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (SF)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	["Shemag (Brown)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
	["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"],
	["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"],
	
	//R3F Casques
	["R3F_beret_commando", "R3F_beret_commando", 100, "hat"], 
	["R3F_beret_para", "R3F_beret_para", 100, "hat"],
	["R3F_beret", "R3F_beret", 100, "hat"],
	["R3F_cagoule_punisher", "R3F_cagoule_punisher", 100, "hat"],
	["R3F_cagoule_noire", "R3F_cagoule_noire", 100, "hat"],
	["R3F_cagoule_olive", "R3F_cagoule_olive", 100, "hat"],
	["R3F_cagoule_tan", "R3F_cagoule_tan", 100, "hat"],
	["R3F_casque_spectra_EOD", "R3F_casque_spectra_EOD", 100, "hat"],
	["R3F_casque_spectra_EOD_DA", "R3F_casqueFS_olive", 100, "hat"],
	["R3F_casqueFS_tan", "R3F_casqueFS_tan", 100, "hat"],
	["R3F_casque_pilote", "R3F_casque_pilote", 100, "hat"],
	["R3F_casque_spectra", "R3F_casque_spectra", 100, "hat"],
	["R3F_casque_spectra_bleu", "R3F_casque_spectra_bleu", 100, "hat"],
	["R3F_casque_spectra_DA", "R3F_casque_spectra_DA", 100, "hat"],
	["R3F_casque_spectra_DA_bleu", "R3F_casque_spectra_DA_bleu", 100, "hat"],
	["R3F_casque_spectra_DA_vert", "R3F_casque_spectra_DA_vert", 100, "hat"],
	["R3F_casque_spectra_jaune", "R3F_casque_spectra_jaune", 100, "hat"],
	["R3F_casque_spectra_vert", "R3F_casque_spectra_vert", 100, "hat"],
	["R3F_casquette_off", "R3F_casquette_off", 100, "hat"],
	["R3F_casquette_off_DA", "R3F_casquette_off_DA", 100, "hat"],
	["R3F_casquette", "R3F_casquette", 100, "hat"],
	["R3F_casquette_TAN", "R3F_casquette_TAN", 100, "hat"],
	["R3F_chapeaubrousse_CE", "R3F_chapeaubrousse_CE", 100, "hat"],
	["R3F_chapeaubrousse_TAN", "R3F_chapeaubrousse_TAN", 100, "hat"]
];

uniformArray = compileFinal str
[
	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 300, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 300, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 300, "uni"],
	["Wetsuit (NATO)", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["Uniform (NATO)", "U_B_CombatUniform_mcam", 50, "uni"],
	["Uniform (CSAT)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt", 50, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 50, "uni"],
	["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 50, "uni"],
	["CTRG Combat Uniform (UBACS)", "U_B_CTRG_1", 50, "uni"],
	["CTRG Combat Uniform (UBACS2)", "U_B_CTRG_2", 50, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_3", 50, "uni"],
	["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	
	//R3F Vetements
	["R3F_uniform_diver", "R3F_uniform_diver", 1000, "uni"],
	["R3F_uniform_Ghillie_DA", "R3F_uniform_Ghillie_DA", 1000, "uni"],
	["R3F_uniform_Ghillie", "R3F_uniform_Ghillie", 1000, "uni"],
	["R3F_uniform_apso", "R3F_uniform_apso", 1000, "uni"],
	["R3F_uniform_f1", "R3F_uniform_f1", 1000, "uni"],
	["R3F_uniform_f1_DA", "R3F_uniform_f1_DA", 1000, "uni"],
	["R3F_uniform_f1_medic_DA", "R3F_uniform_f1_medic_DA", 1000, "uni"],
	["R3F_uniform_off", "R3F_uniform_off", 1000, "uni"],
	["R3F_uniform_off_DA", "R3F_uniform_off_DA", 1000, "uni"],
	["R3F_uniform_piheli", "R3F_uniform_piheli", 1000, "uni"],
	["R3F_uniform_urr", "R3F_uniform_urr", 1000, "uni"],
	["R3F_uniform_urr_DA", "R3F_uniform_urr_DA", 1000, "uni"],
	["R3F_uniform_urr_medic", "R3F_uniform_urr_medic", 1000, "uni"],
	["R3F_uniform_urr_medic_DA", "R3F_uniform_urr_medic_DA", 1000, "uni"]
];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["ELBV Harness", "V_HarnessOSpec_brn", -1, "vest"],
	["ELBV Harness (Gray)", "V_HarnessOSpec_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	
	//R3F Gillets
	["R3F_veste_ce300", "R3F_veste_ce300", 1200, "vest"],
	["R3F_veste_ce600", "R3F_veste_ce600", 1200, "vest"],
	["R3F_veste_APSO_EOD_TAN", "R3F_veste_APSO_EOD_TAN", 1200, "vest"],
	["R3F_veste_APSO_TAN", "R3F_veste_APSO_TAN", 1200, "vest"],
	["R3F_vestetactique_noire", "R3F_vestetactique_noire", 1200, "vest"],
	["R3F_veste_noire", "R3F_veste_noire", 1200, "vest"]
];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],

	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	
	//R3F Sac a dos
	["R3F_sac_moyen_casque_CE_B", "R3F_sac_moyen_casque_CE_B", 1000, "backpack"],
	["R3F_sac_lourd_APSO_TAN", "R3F_sac_lourd_APSO_TAN", 1000, "backpack"],
	["R3F_sac_lourd_APSO_CE_FLG", "R3F_sac_lourd_APSO_CE_FLG", 1000, "backpack"],
	["R3F_sac_lourd_APSO_casque_CE", "R3F_sac_lourd_APSO_casque_CE", 1000, "backpack"],
	["R3F_sac_lourd_APSO_casque_TAN", "R3F_sac_lourd_APSO_casque_TAN", 1000, "backpack"],
	["R3F_sac_lourd_AT_CE", "R3F_sac_lourd_AT_CE", 1000, "backpack"],
	["R3F_sac_lourd_AT_TAN", "R3F_sac_lourd_AT_TAN", 1000, "backpack"],
	["R3F_sac_lourd_CE", "R3F_sac_lourd_CE", 1000, "backpack"],
	["R3F_sac_petit_noir", "R3F_sac_petit_noir", 1000, "backpack"],
	["R3F_sac_moyen_CE", "R3F_sac_moyen_CE", 1000, "backpack"],
	["R3F_sac_moyen_medic_CE", "R3F_sac_moyen_medic_CE", 1000, "backpack"],
	["R3F_sac_moyen_medic_noir", "R3F_sac_moyen_medic_noir", 1000, "backpack"],
	["R3F_sac_moyen_medic_TAN", "R3F_sac_moyen_medic_TAN", 1000, "backpack"],
	["R3F_sac_moyen_casque_TAN_DA_V", "R3F_sac_moyen_casque_TAN_DA_V", 1000, "backpack"],
	["R3F_sac_moyen_AT_TAN", "R3F_sac_moyen_AT_TAN", 1000, "backpack"],
	["R3F_sac_moyen_TAN_DA_FLG", "R3F_sac_moyen_TAN_DA_FLG", 1000, "backpack"],
	["R3F_sac_moyen_AT_TAN_DA", "R3F_sac_moyen_AT_TAN_DA", 1000, "backpack"]
];

genItemArray = compileFinal str
[
	["Drone UAV (NATO)", "B_UAV_01_backpack_F", 500, "backpack"],
	["Drone UAV (CSAT)", "O_UAV_01_backpack_F", 500, "backpack"],
	["Drone UAV (AAF)", "I_UAV_01_backpack_F", 500, "backpack"],
	["TélécomandeUAV (NATO)", "B_UavTerminal", 150, "gps"],
	["Télécomande UAV (CSAT)", "O_UavTerminal", 150, "gps"],
	["Télécomande UAV (AAF)", "I_UavTerminal", 150, "gps"],
	["GPS", "ItemGPS", 100, "gps"],
	["Kit de Premier Soin", "FirstAidKit", 25, "item"],
	["Trousse Médicale", "Medikit", 150, "item"],
	["Kit de réparation", "ToolKit", 150, "item"],
	["Détecteur de Mines", "MineDetector", 100, "item"],
	["JVN", "NVGoggles", 100, "nvg"],
	["Lunette de Plongeée", "G_Diving", 100, "gogg"],
	["Jumelle", "Binocular", 50, "binoc"],
	["Télémetre", "Rangefinder", 150, "binoc"],
	["Designateur Laser", "Laserdesignator", 1000, "binoc"],
	["Bâton Lumineux (Blue)", "Chemlight_blue", 25, "mag"],
	["Bâton Lumineux (Green)", "Chemlight_green", 25, "mag"],
	["Bâton Lumineux (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Bâton Lumineux (Red)", "Chemlight_red", 25, "mag"],
	
	//R3F Lunettes, jumelles
	//["R3F_lunettes_X800", "R3F_lunettes_X800", 300, "gogg"],
	//["R3F_lunettes_ESS", "R3F_lunettes_ESS", 300, "gogg"],
	["JIM LR_DES", "R3F_JIM_LR_DES", 500, "binoc"],
	["JIM LR", "R3F_JIM_LR", 500, "binoc"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 500, "vehicle"],

	["Quad (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quad (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quad (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quad (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quad (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Honda Civic", "C_Hatchback_01_F", 800, "vehicle"],
	["Honda Civic Type R", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["BM X6", "C_SUV_01_F", 1100, "vehicle"],
	["4x4 Dodge", "C_Offroad_01_F", 1100, "vehicle"],
	["4x4 Dodge Camouflage", "B_G_Offroad_01_F", 1250, "vehicle"],
	["4x4 Dodge dépannage", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["4x4 Dodge Armé", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Iveco Daily Benne", "C_Van_01_transport_F", 700, "vehicle"],
	["Iveco Daily (Camouflage)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Iveco Daily Caisse", "C_Van_01_box_F", 900, "vehicle"],
	["Camion de gazoil", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Camion de gazoil (Camouflage)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tracteur", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Caisse", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Couvert", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Gazoil", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Médical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Dépanneur", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Munitions", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Tempest Matériel", "O_Truck_03_device_F", 4000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Couvert", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Gazoil", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Médical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Dépanneur", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Tempest Munitions", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Couvert", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Gazoil", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Médical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Dépanneur", "I_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Munitions", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2500, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2500, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"]
];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"]
];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159

	/*["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],*/

	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	//["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 50000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 60000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 60000, "vehicle"] // Mi-28 with gunner (black camo)
];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 40000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 45000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 60000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 20000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 10000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 10000, "vehicle"],
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 20000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 10000, "vehicle"],
	["R3F_L159 Alca (AA)", "R3F_ALCA_AA", 25000, "vehicle"],
	["R3F_L159 Alca (CAS)", "R3F_ALCA_CAS", 25000, "vehicle"],
	["MIG29", "IVORY_MIG29K_1", 30000, "vehicle"]
	
];

boatsArray = compileFinal str
[
	["Bateau de Sauvetage", "C_Rubberboat", 500, "boat"],
	["Bateau de Sauvetage (NATO)", "B_Lifeboat", 500, "boat"],
	["Bateau de Sauvetage (CSAT)", "O_Lifeboat", 500, "boat"],
	["Bateau de Sauvetage (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Bateau de Sauvetage (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Bateau de Sauvetage (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Bateau de Sauvetage (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Bateau à moteur", "C_Boat_Civil_01_F", 1000, "boat"],
	//["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 900, "boat"],
	//["Motorboat Police", "C_Boat_Civil_police_01_F", 1250, "boat"],
	["Bateau d'attaque HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Bateau d'attaque (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Bateau d'attaque (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Noir", "#(rgb,1,1,1)color(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gris", "#(rgb,1,1,1)color(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["Blanc", "#(rgb,1,1,1)color(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Bleu Nuit", "#(rgb,1,1,1)color(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Bleu", "#(rgb,1,1,1)color(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Bleu Vert", "#(rgb,1,1,1)color(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Vert", "#(rgb,1,1,1)color(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Jaune", "#(rgb,1,1,1)color(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", "#(rgb,1,1,1)color(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Rouge", "#(rgb,1,1,1)color(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Rose", "#(rgb,1,1,1)color(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Viloet", "#(rgb,1,1,1)color(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Bronze", "client\images\vehicleTextures\nato.jpg"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Marron", "client\images\vehicleTextures\csat.jpg"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Vert", "client\images\vehicleTextures\aaf.jpg"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Trippante", "client\images\vehicleTextures\rainbow.jpg"],
			["Carbon", "client\images\vehicleTextures\carbon.jpg"],
			["Rouille", "client\images\vehicleTextures\rusty.jpg"],
			["Jean", "client\images\vehicleTextures\denim.jpg"],
			["Psychotique", "client\images\vehicleTextures\psych.jpg"],
			["Leopard", "client\images\vehicleTextures\leopard.jpg"],
			["'USA", "client\images\vehicleTextures\murica.jpg"],
			["Confederation", "client\images\vehicleTextures\confederate.jpg"],
			["Jaune Camo", "client\images\vehicleTextures\camo_fuel.jpg"],
			["Orange Camo", "client\images\vehicleTextures\camo_fack.jpg"],
			["Rouge Camo", "client\images\vehicleTextures\camo_deser.jpg"],
			["Rose Camo", "client\images\vehicleTextures\camo_pank.jpg"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Noir", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_black_CO.paa"],
			["Blanc", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_white_CO.paa"],
			["Bleu", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_blue_CO.paa"],
			["Vert", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_green_CO.paa"],
			["Jaune", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_yellow_CO.paa"],
			["Orange", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_orange_CO.paa"],
			["Rouge", "\A3\Soft_F_Kart\Kart_01\Data\Kart_01_base_red_CO.paa"]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Bouteille d'eau", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\bouteille.paa", 30, 15],
	["Conserve de viande", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Kit de reparation", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\ToolKit.paa", 500, 250],
	["Jerry Can (Plein)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Vide)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Balise de reaparition", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\respawn.paa", 1500, 750],
	["Tente de camouflage", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\tente.paa", 200, 100],
	["Tuyau pour Syphoner", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\Syphon.paa", 200, 100],
	["RedBull", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\RedBull.paa", 100, 50],
	["Coffre fort", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\coffrefort.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
