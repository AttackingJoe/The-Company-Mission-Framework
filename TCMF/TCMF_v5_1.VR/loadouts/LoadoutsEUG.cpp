class EUG {
			// Example: [this,"EUG","PL"] call tb3_fLoadout; [this, class, loadout]	
			// Novorossiya Rebel Gearscript by Keyblade
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//		PC			- Platoon Commander 
			//		RTO 		- Platoon Sgt. (as Radio Operator)
			//		SL 			- Squad leader
			//    FO      - Forward Observer
			//		MOL			- Mortar Leader 
			//		MED 		- Medic
			//		FTL			- Fire team leader
			//		RIF 		- Rifleman 
			//		AR 			- Automatic rifleman
			//		ARR			- Assistant automatic rifleman 
			//		RAT			- Rifleman (AT)
			//    MMG     - Medium MG
			//    MMGA    - Medium MG assistant
			//		MAT			- Medium AT
			//		MATA		- Medium AT assistant
			//		MARK		- Marksman
			//		SN			- Sniper
			//		SP			- Spotter (for sniper) 
			//		VC			- Vehicle crew 
			//		PIL		    - Pilot
			//		ENG			- Engineer
			//
			//		Vehicle Cargo Loadouts
			//		V_CAR		- car/4x4/jeep
			//		V_TR		- truck
			//		V_IFV		- ifv
			
			
			//========================Equipment Definitions========================
			//=== Weapons ===
			
			//Attachments
			#define rifle_sup "rhs_acc_pbs1"
			#define ar_sup "hlc_muzzle_762SUP_AK"
			#define aim_scope "hlc_optic_kobra"
			#define ar_scope "HLC_Optic_1p29"
			#define marksman_scope "HLC_Optic_PSO1"
			#define mat_scope "rhs_acc_pgo7v"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "rhs_weap_akm"
			#define riflemag "rhs_30Rnd_762x39mm"
			#define riflemag_tr "rhs_30Rnd_762x39mm_tracer" 
			
			//Auto-Rifleman
			#define ar "hlc_rifle_rpk"
			#define armag "hlc_75Rnd_762x39_m_rpk" // Mixed tracer-ball 75 Round Mag
			
			//Rifleman AT
			#define rat "rhs_weap_rpg26"
			#define ratmag "rhs_rpg26_mag"
			
			//Medium MG
			#define mmg "rhs_weap_pkm"
			#define mmgmag "rhs_100Rnd_762x54mmR_green"
			
			//Medium AT
			#define mat "rhs_weap_rpg7"
			#define matmag "rhs_rpg7_PG7VL_mag"
			
			// Rifle with GL and HE grenades - CO, DC, FTLs
			#define glrifle "rhs_weap_akm_gp25"
			#define glriflemag "rhs_30Rnd_762x39mm"
			#define glriflemag_tr "rhs_30Rnd_762x39mm_tracer"
			#define glmag {"hlc_VOG25_AK,15"} //use with HLC AK's only
			
			//Marksman/Sniper
			#define dmr "rhs_weap_svdp_wd"
			#define sniper "rhs_weap_svdp_wd" // has camo skin
			#define dmrMag "rhs_10Rnd_762x54mmR_7N1"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "rhs_weap_akms" 
			#define smgmag "rhs_30Rnd_762x39mm"
			#define smgmag_tr "rhs_30Rnd_762x39mm_tracer"
			
			// Smoke for FTLs, Squad Leaders, etc //use with HLC AK's only
			#define glsmoke {"hlc_GRD_White",6},  \
								{"hlc_GRD_green",3}, \
								{"hlc_GRD_Red",3},  \
								{"hlc_GRD_yellow",3}

			// Flare gl grenades - CO, DC, FTLs        //Dont use with HLC AK's at all
			#define glflare 	{"rhs_VG40OP_white",3}, \
									{"rhs_VG40OP_red",2}, \
									{"rhs_VG40OP_green",2}
									
			// Grenades
			#define grenade "rhs_mag_rgd5"
			#define smokegrenadewhite "rhs_mag_rdg2_white"
			#define handFlareRed "ACE_HandFlare_Red"
			#define handFlareGreen "ACE_HandFlare_Green"
			#define handFlareWhite "ACE_HandFlare_White"
			#define handFlareYellow "ACE_HandFlare_Yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemred "Chemlight_red"
			
			// ace equipment - what everyone should have
			#define ace_default	{"ACE_fieldDressing",10}, \
								{"ACE_morphine",1}, \
								{"ACE_EarPlugs",1},\
								{ACE_bodyBag,1},\
								{"ACE_Flashlight_XL50",1}


			//Override for a Medic					
			#define ace_medic	{"ACE_fieldDressing",30}, \
								{"ACE_morphine",15}, \
								{"ACE_epinephrine",10}, \
								{"ACE_bloodIV_500",6}, \
								{"ACE_EarPlugs",1}, \
								{"ACE_Flashlight_XL50",1}
								
			//Other ace
			#define ace_epipen "ACE_epinephrine" // For PC, SL, FTL
			#define ace_sparebarrel "ACE_SpareBarrel"
			#define ace_defuse "ACE_DefusalKit"   
			#define ace_firing_device "ACE_Clacker"
			#define ace_mrangetable "ACE_RangeTable_82mm"
			
			//Double Misc
			#define toolkit "ToolKit"
			#define explosive "DemoCharge_Remote_Mag"
			#define at_mine "rhs_mine_tm62m_mag"
			#define ap_mine "rhs_mine_pmn2_mag"
			#define minedetector "MineDetector"
			#define binoculars "Binocular"
			#define range_finder "rhs_pdu4"
			#define laserd "Laserdesignator"
			#define battery "Laserbatteries"
			
			//Radio 
			#define long_range "ACRE_PRC148" //Long range - Short-wave
			#define short_range "ACRE_PRC343" //Short range -Short-wave
					
			//=== Clothes ===

			//Uniform		
			#define default_uniform "LOP_U_US_Fatigue_04", "LOP_U_US_Fatigue_03", "LOP_U_US_Fatigue_01", "LOP_U_US_Fatigue_02"
			#define pilot_uniform "rhs_uniform_m88_patchless"
			#define sniper_uniform "LOP_U_US_Fatigue_04"
				
			//Headgear
			#define leader_headgear "rhs_6b26_green"
			#define default_headgear "rhs_6b26_bala_green"
			#define vcrew_headgear "rhs_tsh4_bala"
			#define pilot_headgear "rhs_zsh7a"
			#define aircrew_headgear "rhs_gssh18"
			#define sniper_headgear "H_Shemag_olive"
			
			//Backpack
			#define default_backpack "rhs_sidor"
			#define rpg_backpack "rhs_sidor"
			#define pilot_backpack "rhs_sidor"
			#define engineer_backpack "B_Carryall_oli"
			#define mortg_backpack "I_Mortar_01_weapon_F"
			#define morta_backpack "I_Mortar_01_support_F"
			
			
			//Vests
			#define vest_default "rhs_vydra_3m"
			#define vest_medic "rhs_vydra_3m"
			#define vest_engineer "rhs_vydra_3m"
			#define vest_sniper "rhs_vydra_3m"
			#define vest_vehiclecrew "rhs_6b23_crew"
			#define vest_pilot "rhs_6sh46"
			#define vest_leader "LOP_V_6Sh92_Radio_OLV"
			
			//Face
			#define facecover "rhs_scarf"
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemWatch","ItemMap","ItemGPS","ItemCompass"//With GPS
			#define default_equipment "ItemWatch","ItemMap","ItemCompass"
			#define crew_equipment "ItemWatch","ItemMap","ItemGPS","ItemCompass","ace_NVG_Gen4" //With GPs and NVG for vic crews
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
						{ace_epipen,1},
						{glriflemag_tr,2},
						glmag,
						glsmoke
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
						{ace_epipen,1},
						{glriflemag_tr,2},
						glsmoke,
						glmag
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
						{ace_epipen,1},
						{glriflemag_tr,2},
						glsmoke,
						glmag
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Forward Observer==================
			class FO {
				weapons[] = {smg,laserd};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					    {battery,1}
					};
					backpackItems[] = {
						ace_default,
					    {ace_epipen,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
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
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_medic,
						
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
						{smgmag,5},
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
						{ace_epipen,1},
						{glriflemag_tr,2},
						glsmoke,
						glmag
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grnade,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
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
						ace_default,
						{riflemag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1},
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
			//================Auto-Rifleman (Machine Gunner)==================
			class AR {
				weapons[] = {ar};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{armag,3}
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
					    {short_range,1},
						{smokegrenadewhite,2},
						{grenade,1}
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
						{armag,3},
						{riflemag,2}
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
						{grenade,1},
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
			//================Rifleman (AT)==================
			class RAT {
				weapons[] = {rifle,rat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
						{ratmag,1},
						{riflemag,2}
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
						{grenade,1},
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
			};//================Medium MG==================
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
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{mmgmag,2}
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
			//================Medium (AT)==================
			class MAT {
				weapons[] = {rifle,mat};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {rpg_backpack};
					backpackMagazines[] = {	
						{matmag,2}
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
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,8}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {mat_scope};
			};
			//================Medium (AT) Assistant==================
			class MATA {
				weapons[] = {rifle,range_finder};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {rpg_backpack};
					backpackMagazines[] = {	
						{matmag,4}
					};
					backpackItems[] = {
						ace_default,
						{short_range,1}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
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
			//================Designated Marksman==================
			class MARK {
				weapons[] = {dmr,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{dmrMag,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{dmrMag,6}
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
				uniform[] = {sniper_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_sniper};
					vestMagazines[] = {
						{dmrMag,6}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {marksman_scope};
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
				uniform[] = {sniper_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,8}
					};
				assignedItems[] = {defualt_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Crew==================
			class VC {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						ace_default,
						{ace_epipen,1},
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
						{smgmag,5}
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
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					    ace_default,
						{ace_epipen,1},
						{toolkit,1}
					};
				headgear[] = {aircrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_pilot};
					vestMagazines[] = {
					    {smgmag,3}
					};
				assignedItems[] = {crew_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Engineer==================
			class ENG {
				weapons[] = {smg};
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
						{long_range,1},
						{short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{smgmag,6}
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
					{riflemag,20},
					{riflemag_tr,10},
					{ratmag,2},
					{mmgmag,5},
					{dmrMag,5},
					{armag,15},
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
					{riflemag,30},
					{riflemag_tr,10},
					{ratmag,2},
					{mmgmag,10},
					{dmrMag,10},
					{armag,20},
					{matmag,4},
					{glmag,10}
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
					{mmgmag,10},
					{dmrMag,10},
					{armag,20},
					{matmag,4},
					{glmag,10},
					{ratmag,2}
					
				};
				vehCargoItems[] = { 
				{smokegrenadewhite,10},
				{grenade,10},
				ace_medic
				};
			};
};
