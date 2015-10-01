class USA {
			// Example: [this,"USA","PL"] call tb3_fLoadout; [this, class, loadout]	
			// Default BlueFor Gear Script by HawkBlade
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at, if a definition is in front check that)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//		PC			- Platoon Commander 
			//		RTO 		- Platoon Sgt. (as Radio Operator)
			//		SL 			- Squad Leader
			//      FO          - Forward Observer
			//		MOL			- Mortar Leader
			//		MED 		- Medic
			//		FTL			- Fire team leader
			//		RIF 		- Rifleman 
			//		AR 			- Automatic rifleman
			//		ARR			- Assistant automatic rifleman 
			//		RAT			- Rifleman (AT)
			//      MMG         - Medium MG
			//      MMGA        - Medium MG assistant
			//		MAT			- Medium AT
			//		MATA		- Medium AT assistant
			//		MARK		- Marksman
			//		SN			- Sniper
			//		SP			- Spotter (for sniper) 
			//		VC			- Vehicle Crew 
			//		PIL		    -Pilot / Aircrew
			//		ENG			- Engineer
			//
			//		Vehicle Cargo Loadouts
			//		V_CAR		- Car/4x4/jeep
			//		V_TR		- Truck
			//		V_IFV		- Ifv
			
			
			//========================Equipment Definitions========================
			//=== Weapons ===
			
			//Attachments
			#define suppressor "rhsusf_acc_rotex5_grey" // Rifle only
			#define laser_light "rhsusf_acc_anpeq15_light" // Rifle only
			
			#define aim_scope "rhsusf_acc_compm4"
			#define holo_scope "rhsusf_acc_eotech_552"
			#define rifle_scope "rhsusf_acc_ACOG"
			#define mg_scope "rhsusf_acc_ELCAN"
			#define sniper_scope "rhsusf_acc_LEUPOLDMK4"
			#define marksman_scope "hlc_optic_LRT_m14"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "rhs_weap_m16a4_carryhandle_grip"
			#define riflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
			#define riflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
			#define carbine "rhs_weap_m4a1_carryhandle_grip2"
			#define carbinemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
			#define carbinemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
			
			//Auto-Rifleman
			#define ar "rhs_weap_m249_pip_L"
			#define armag "rhs_200rnd_556x45_M_SAW" // Mixed ball-tracer
			
			//Rifleman AT
			#define rat "rhs_weap_M136"
			#define ratmag "rhs_m136_mag"
			
			//Medium MG
			#define mmg "rhs_weap_m240B"
			#define mmgmag "rhsusf_100Rnd_762x51" // Mixed ball-tracer
			
			//Medium AT
			#define mat "rhs_weap_fgm148"
			#define matmag "rhs_fgm148_magazine_AT"
			
			// Rifle with GL and HE grenades - CO, DC, FTLs
			#define glrifle "rhs_weap_m16a4_carryhandle_M203"
			#define glriflemag "rhs_mag_30Rnd_556x45_M855A1_Stanag"
			#define glriflemag_tr "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red"
			#define glmag {"rhs_mag_M433_HEDP",15}
			
			//Marksman
			#define dmr "hlc_rifle_M21"
			#define dmrMag "hlc_20Rnd_762x51_B_M14"
			
			//Sniper
			#define sniper "rhs_weap_XM2010"
			#define snipermag "rhsusf_5Rnd_300winmag_xm2010"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "hlc_smg_mp5n" 
			#define smgmag "hlc_30Rnd_9x19_B_MP5"
			#define smgmag_tr "30Rnd_45ACP_Mag_SMG_01_tracer_green"
			
			// Smoke for FTLs, Squad Leaders, etc
			#define glsmoke {"rhs_mag_M714_white",8},  \
								{"rhs_mag_M715_green",4}, \
								{"rhs_mag_M713_red",4} , \
								{"rhs_mag_M716_yellow",4}

			// Flare gl grenades - CO, DC, FTLs - Will need to be added for night missions
			#define glflare 	{"rhs_mag_M585_white",3}, \
									{"rhs_mag_M662_red",2}, \
									{"rhs_mag_M661_green",2}
									
			// Grenades
			#define grenade "rhs_mag_m67"
			#define smokegrenadewhite "rhs_mag_an_m8hc"
			#define smokegrenadegreen "rhs_mag_m18_green"
			#define handFlareRed "ACE_HandFlare_Red"
			#define handFlareGreen "ACE_HandFlare_Green"
			#define handFlareWhite "ACE_HandFlare_White"
			#define handFlareYellow "ACE_HandFlare_Yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemblue "Chemlight_blue"
			
			// ace equipment - what everyone should have
			#define ace_default	{"ACE_fieldDressing",10}, \
								{"ACE_morphine",1}, \
								{"ACE_EarPlugs",1}

			//Override for a Medic					
			#define ace_medic	{"ACE_fieldDressing",30}, \
								{"ACE_morphine",15}, \
								{"ACE_epinephrine",10}, \
								{"ACE_bloodIV_500",6}, \
								{"ACE_EarPlugs",1}
			
			//Other ace
			#define ace_epipen "ACE_epinephrine" // For PC, SL, FTL
			#define ace_sparebarrel "ACE_SpareBarrel"
			#define ace_defuse "ACE_DefusalKit"   
			#define ace_firing_device "ACE_Clacker"
			#define ace_mrangetable "ACE_RangeTable_82mm"
			
			//Double Misc
			#define toolkit "ToolKit"
			#define explosive "DemoCharge_Remote_Mag"
			#define at_mine "ATMine_Range_Mag"
			#define ap_mine "APERSBoundingMine_Range_Mag"
			#define minedetector "MineDetector"
			#define binoculars "Binocular"
			#define range_finder "BWA3_Vector"
			#define laserd "Laserdesignator"
			#define battery "Laserbatteries"
			
			//Radio 
			#define long_range "ACRE_PRC148" //Long range - Short-wave
			#define short_range "ACRE_PRC343" //Short range -Short-wave
					
			//=== Clothes ===

			//Uniform		
			#define default_uniform "rhs_uniform_cu_ocp_patchless"
				
			//Headgear
			#define leader_headgear "rhsusf_patrolcap_ocp", "rhs_Booniehat_ocp"
			#define default_headgear "rhsusf_ach_bare_tan", "rhsusf_ach_helmet_ocp", "rhsusf_ach_helmet_ess_ocp", "rhsusf_ach_helmet_headset_ocp", "rhsusf_ach_helmet_headset_ess_ocp"
			#define vcrew_headgear "rhsusf_cvc_green_helmet"
			#define pilot_headgear "rhsusf_hgu56p"
			#define sniper_headgear "rhs_Booniehat_ocp" 
			
			//Backpack
			#define default_backpack "rhsusf_assault_eagleaiii_ocp"
			#define crew_backpack "rhsusf_assault_eagleaiii_ocp"
			#define engineer_backpack "B_Kitbag_cbr"
			#define mortg_backpack "O_Mortar_01_weapon_F"
			#define morta_backpack "O_Mortar_01_support_F"
			
			//Vests
			#define vest_default "rhsusf_iotv_ocp_rifleman"
			#define vest_medic "rhsusf_iotv_ocp_medic"
			#define vest_engineer "rhsusf_iotv_ocp_repair"
			#define vest_sniper "rhsusf_iotv_ocp_rifleman"
			#define vest_vehiclecrew "rhsusf_iotv_ocp"
			#define vest_leader "rhsusf_iotv_ocp_squadleader"
			#define vest_ftl_leader "rhsusf_iotv_ocp_teamleader"
			
			//Face
			#define facecover "TRYK_Shemagh_shade"
			#define glasses "BWA3_G_Combat_Orange", "BWA3_G_Combat_Clear", "BWA3_G_Combat_Black", "TRYK_Shemagh_ESS", "TRYK_Shemagh_shade"
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemMap","ItemGPS","ItemCompass","ItemWatch"//With GPS
			#define default_equipment "ItemMap","ItemCompass","ItemWatch"
			#define crew_equipment "ItemMap","ItemGPS","ItemCompass","ACE_NVG_Gen4","ItemWatch" //With GPs and NVG for vic crews
			
			//========================Class Loadouts Definitions========================
			//================Platoon Leader==================
			class PC {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{ACE_epinephrine,1},
						glmag,
						glsmoke
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,3}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holo_scope};
				secKit[] = {};
			};
			//================Platoon Sgt. (RTO)==================
			class RTO {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{ACE_epinephrine,1},
						glmag,
						glsmoke
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,3}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holo_scope};
				secKit[] = {};
			};
			//================Squad Leader (deputy leader)==================
			class SL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{ACE_epinephrine,1},
						glmag,
						glsmoke
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_ftl_leader};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,3}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holo_scope};
				secKit[] = {};
			};
			//================Forward Observer==================
			class FO {
				weapons[] = {rifle,laserd};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					    {battery,1}
					};
					backpackItems[] = {
						ace_default,
					    {ACE_epinephrine,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,4},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,8}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			
			//================Mortar Leader==================
			class MOLG {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {mortg_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1},
						ace_default,
						{ACE_epinephrine,1},
						{ace_mrangetable, 1}
					};
				goggles[] = {};
				vest[] = {vest_ftl_leader};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Mortar Assist==================
			class MOLA {
				weapons[] = {rifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {morta_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {	
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1},
						ace_default,
						{ACE_epinephrine,1},
						{ace_mrangetable, 1}
					};
				goggles[] = {};
				vest[] = {vest_ftl_leader};
					vestMagazines[] = {
						{riflemag,7}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medic==================
			class MED {
				weapons[] = {carbine};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_medic
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_medic};
					vestMagazines[] = {
						{carbinemag,7},
						{smokegrenadewhite,8}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Team Leader==================
			class FTL {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{ACE_epinephrine,1},
						glmag,
						glsmoke
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,3}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {holo_scope};
				secKit[] = {};
			};
			//================Rifleman==================
			class RIF {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Auto-Rifleman (Machine Gunner)==================
			class AR {
				weapons[] = {ar};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,1}
					};
					backpackItems[] = {
						ace_default,
						{ace_sparebarrel,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{armag,3}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Auto-Rifleman Assistant==================
			class ARR {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,2}
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {rifle,rat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{ratmag,1}
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium MG==================
			class MMG {
				weapons[] = {mmg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{mmgmag,2}
					};
					backpackItems[] = {
						ace_default,
						{ace_sparebarrel,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{mmgmag,3}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium MG assistant==================
			class MMGA {
				weapons[] = {rifle,range_finder};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					    {mmgmag,3}
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {""};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium (AT)==================
			class MAT {
				weapons[] = {rifle,mat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {	
						{matmag,1}
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medium (AT) Assistant==================
			class MATA {
				weapons[] = {rifle,range_finder};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {	
						{matmag,1}
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {defualt_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Designated Marksman==================
			class MARK {
				weapons[] = {dmr,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {sniper_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{dmrMag,8}
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
				secKit[] = {};
			};
			//================Sniper==================
			class SN {
				weapons[] = {sniper};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {sniper_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{snipermag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {sniper_scope};
				secKit[] = {};
			};
			//================Spotter==================
			class SP {
				weapons[] = {rifle,range_finder};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default
					};
				headgear[] = {sniper_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,11}
					};
				assignedItems[] = {defualt_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Crew==================
			class VC {
				weapons[] = {smg,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {crew_backpack};
					backpackMagazines[] = {
					    {smgmag,2}
					};
					backpackItems[] = {
						ace_default,
						{ACE_epinephrine,1},
						{toolkit,1}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_vehiclecrew};
					vestMagazines[] = {
						{smgmag,2},
					};
				assignedItems[] = {crew_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Pilot==================
			class PIL {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {crew_backpack};
					backpackMagazines[] = {
					    {smgmag,2}
					};
					backpackItems[] = {
						ace_default,
						{ACE_epinephrine,1},
						{toolkit,1}
					};
				headgear[] = {pilot_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_vehiclecrew};
					vestMagazines[] = {
						{smgmag,2},
					};
				assignedItems[] = {crew_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Engineer==================
			class ENG {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {engineer_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{toolkit,1},
						{ace_defuse,1},
						{ace_firing_device,1},
						{explosive,6}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Loadouts==================
			class V_CAR {
				vehCargoWeapons[] = {
				    {rat,2}
				};
				vehCargoMagazines[] = {
					{riflemag,30},
					{riflemag_tr,8},
					{ratmag,2},
					{dmrMag,5},
					{armag,5},
					{matmag,3},
					{glmag,5}
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5}
				};
				vehCargoRucks[] = { };
			};
			class V_TR {
				vehCargoWeapons[] = { 
				    {rat,2}
				};
				vehCargoMagazines[] = {
					{riflemag,50},
					{riflemag_tr,10},
					{ratmag,2},
					{dmrMag,20},
					{armag,15},
					{matmag,6},
					{glmag,15}
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,10},
				{grenade,10},
				ace_medic
				};
				vehCargoRucks[] = { };
			};
			class V_IFV {
				vehCargoWeapons[] = {
				    {rat,2}
				};
				vehCargoMagazines[] = {
					{riflemag,30},
					{riflemag_tr,10},
					{ratmag,2},
					{dmrMag,10},
					{armag,10},
					{matmag,4},
					{glmag,10},
					
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,5},
				{grenade,5},
				ace_medic
				};
			};
};