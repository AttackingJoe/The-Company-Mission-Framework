class RUS {
			// Example: [this,"RUS","PL"] call tb3_fLoadout; [this, class, loadout]	
			// Russian OpFor Gear Script by Jords
			// Info:
			// - If it is crashing ARMA, check for a missing comma, or " (it will tell you the line number to look at)
			// - For multi line definitions use \
			// - All loadouts listed are customised to correct equipment, so have fun with them
			
			//		Infantry Loadouts
			//		PC			- Platoon Commander 
			//		RTO 		- Platoon Sgt. (as Radio Operator)
			//		SL 			- Platoon Sgt. / Section leader
			//		MED 		- medic
			//		FTL			- fire team leader (senior rifleman)
			//		RIF 		- rifleman 
			//		AR 			- automatic rifleman
			//		ARR			- assistant automatic rifleman 
			//		RAT			- rifleman (AT)
			//      MMG         - Medium MG
			//      MMGA        - Mediem MG assistant
			//		MAT			- Medium AT
			//		MATA		- Medium AT assistant
			//		MARK		- marksman
			//		SN			- sniper
			//		SP			- spotter (for sniper) 
			//		VC			- vehicle commander 
			//		VG			- vehicle gunner 
			//		VD			- vehicle driver (repair) 
			//		PIL			- air vehicle pilot / co-pilot 
			//		PILR		- air vehicle co-pilot (repair) / crew chief (repair) 
			//		AIRCR		- air vehicle crew 
			//		ENG			- engineer 
			//		ENGDEMO		- engineer (demo) 
			//		ENGMINE		- engineer (mines) 
			//
			//		Vehicle Cargo Loadouts
			//		V_CAR		- car/4x4/jeep
			//		V_TR		- truck
			//		V_IFV		- ifv
			
			
			//========================Equipment Definitions========================
			//=== Weapons ===
			
			//Scopes
			#define aim_scope "hlc_optic_kobra"
			#define marksman_scope "rhs_acc_pso1m2"
			#define mat_scope "rhs_acc_pgo7v"
			
			// Standard Riflemen (Assistants, Rifleman)
			#define rifle "hlc_rifle_aks74"
			#define riflemag "hlc_30Rnd_545x39_B_AK"
			#define riflemag_tr "hlc_30Rnd_545x39_t_ak" 
			
			//Auto-Rifleman
			#define ar "hlc_rifle_rpk"
			#define armag "hlc_75Rnd_762x39_m_rpk"
			
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
			#define glrifle "hlc_rifle_aks74_GL"
			#define glriflemag "hlc_30Rnd_545x39_B_AK"
			#define glriflemag_tr "hlc_30Rnd_545x39_t_ak"
			#define glmag "hlc_VOG25_AK"  //use with hlc weapons only
			
			//Marksman/Sniper
			#define dmr "rhs_weap_svdp_wd"
			#define sniper "rhs_weap_svdp_wd" // has camo skin
			#define dmrMag "rhs_10Rnd_762x54mmR_7N1"
			
			// Standard Sub-machine Gun/Personal Defence Weapon (Aircraft Pilot, Sub-machine-gunner, Vehicle Crew) 
			#define smg "hlc_rifle_aks74u" 
			#define smgmag "hlc_30Rnd_545x39_B_AK"
			#define smgmag_tr "hlc_30Rnd_545x39_t_ak"
			
			// Smoke for FTLs, Squad Leaders, etc //use with HLC weapons only
			#define glsmoke {"hlc_GRD_White",3},  \
								{"hlc_GRD_green",2}, \
								{"hlc_GRD_Red",2} 

			// Flare gl grenades - CO, DC, FTLs        //Dont use with HLC AK just encase of errors
			#define glflare 	{"rhs_VG40OP_white",3}, \
									{"rhs_VG40OP_red",2}, \
									{"rhs_VG40OP_green",2}
									
			// Grenades
			#define grenade "rhs_mag_rgd5"
			#define smokegrenadewhite "rhs_mag_rdg2_white"
			#define smokegrenadegreen "rhs_mag_nspd_green"
			#define handFlareRed "rhs_mag_nspn_red"
			#define handFlareGreen "rhs_mag_nspn_green"
			#define handFlareWhite "rhs_mag_nspn_red"
			#define handFlareYellow "rhs_mag_nspn_yellow"
			
			//=== MISC ===
			
			//Chemical lights
			#define chemred "Chemlight_red"
			
			// AGM equipment - what everyone should have
			#define agm_default	{"AGM_Bandage",2}, \
								{"AGM_Morphine",1}, \
								{"AGM_EarBuds",1}

			//Override for a Medic					
			#define agm_medic	{"AGM_Bandage",20}, \
								{"AGM_Morphine",10}, \
								{"AGM_Epipen",10}, \
								{"AGM_Bloodbag",3}, \
								{"AGM_EarBuds",1}
			
			//Other AGM
			#define agm_epipen "AGM_Epipen" // For PC, SL, FTL
			#define agm_sparebarrel "AGM_SpareBarrel"
			#define agm_defuse "AGM_DefusalKit"
			#define agm_firing_device "AGM_Clacker"
			
			//Double Misc
			#define toolkit "ToolKit"
			#define explosive "DemoCharge_Remote_Mag"
			#define at_mine "rhs_mine_tm62m_mag"
			#define ap_mine "rhs_mine_pmn2_mag"
			#define minedetector "MineDetector"
			#define binoculars "Binocular"
			#define range_finder "BWA3_Vector"
			
			//Radio 
			#define long_range "ACRE_PRC148" //Long range - Short-wave
			#define short_range "ACRE_PRC343" //Short range -Short-wave
					
			//=== Clothes ===

			//Uniform		
			#define default_uniform "rhs_uniform_flora_patchless"
			#define pilot_uniform "rhs_uniform_df15"
			#define sniper_uniform "rhs_uniform_flora_patchless"
				
			//Headgear
			#define leader_headgear "rhs_fieldcap"
			#define default_headgear "rhs_6b27m"
			#define vcrew_headgear "rhs_tsh4_ess"
			#define pilot_headgear "rhs_zsh7a"
			#define aircrew_headgear "rhs_zsh7a_mike"
			#define sniper_headgear "rhs_6b28_flora_bala"
			
			//Backpack
			#define default_backpack "rhs_assault_umbts"
			#define rpg_backpack "rhs_rpg"
			#define pilot_backpack "TRYK_B_Coyotebackpack_BLK"
			#define engineer_backpack "rhs_assault_umbts_engineer"
			
			
			//Vests
			#define vest_default "rhs_6b23_rifleman"
			#define vest_grenadier "rhs_6b23_grenadier"
			#define vest_medic "rhs_6b23_medic"
			#define vest_engineer "rhs_6b23_engineer"
			#define vest_sniper "rhs_6b23_sniper"
			#define vest_vehiclecrew_commander "rhs_6b23_crewofficer"
			#define vest_vehiclecrew "rhs_6b23_crew"
			#define vest_leader "rhs_6b23_6sh92_headset_mapcase"
			
			//Face
			#define facecover "rhs_scarf"
			
			//=== EQUIPMENT ===
			//MUST BE ONE LINE
			#define leader_equipment "ItemMap","ItemGPS","ItemCompass"//With GPS
			#define default_equipment "ItemMap","ItemCompass"
			#define crew_equipment "ItemMap","ItemGPS","ItemCompass","AGM_NVG_Gen4" //With GPs and NVG for vic crews
			//========================Class Loadouts Definitions========================
			//================Platoon Leader==================
			class PC {
				weapons[] = {glrifle,binoculars};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemred,2},
						{glmag,3},
						{long_range,1},
						{short_range,1},
						glsmoke,
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,2},
						{glmag,2}
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
						agm_default,
						{agm_epipen,1},
						{chemred,2},
						{glmag,3},
						{long_range,1},
						{short_range,1},
						glsmoke,
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,2},
						{glmag,2}
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
						{glriflemag,2}
					};
					backpackItems[] = {
						agm_default,
						{agm_epipen,1},
						{chemred,2},
						{glmag,3},
						{long_range,1},
						{short_range,1},
						glsmoke
					};
				headgear[] = {leader_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_leader};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,2},
						{glmag,2}
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Medic==================
			class MED {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_medic,
						{chemred,2},
						{short_range,1},
						{smokegrenadewhite,4}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_medic};
					vestMagazines[] = {
						{riflemag,6},
						{riflemag_tr,2}
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
						agm_default,
						{agm_epipen,1},
						{chemred,2},
						{glmag,3},
						{short_range,1},
						glsmoke,
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{glriflemag,7},
						{glriflemag_tr,2}
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
						agm_default,
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2}
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
						agm_default,
						{agm_sparebarrel,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					    {armag,2}
					};
					uniformItems[] = {
					    {short_range,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
					    {smokegrenadewhite,2},
						{armag,1}
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
						{armag,6}
					};
					backpackItems[] = {
						agm_default,
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
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
						agm_default,
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2}
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
						agm_default,
						{long_range,1},
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,6},
						{riflemag_tr,2},
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
						{matmag,3}
					};
					backpackItems[] = {
						agm_default,
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,6},
						{riflemag_tr,2},
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
						agm_default,
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{dmrMag,2}
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
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
						agm_default,
						{long_range,1},
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {sniper_headgear};
				uniform[] = {sniper_uniform};
					uniformMagazines[] = {
						{dmrMag,2}
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
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
						agm_default,
						{long_range,1},
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {sniper_headgear};
				uniform[] = {sniper_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{grenade,1}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,7},
						{riflemag_tr,2},
					};
				assignedItems[] = {defualt_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Commander==================
			class VC {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{long_range,1},
						{short_range,1},
						{chemblue,2}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_vehiclecrew_commander};
					vestMagazines[] = {
						{smgmag,5},
					};
				assignedItems[] = {crew_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Vehicle Driver (Repair)==================
			class VD {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{long_range,1},
						{short_range,1},
						{chemblue,2}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
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
			//================Vehicle Gunner==================
			class VG {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {default_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{long_range,1},
						{short_range,1},
						{chemblue,2}
					};
				headgear[] = {vcrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
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
				backpack[] = {};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					};
				headgear[] = {pilot_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2},
						{smgmag,3},
						{long_range,1},
						{short_range,1},
						agm_default
					};
				goggles[] = {};
				vest[] = {};
					vestMagazines[] = {
					};
				assignedItems[] = {crew_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Pilot (Repair)==================
			class PILR {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {crew_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{chemblue,2},
						{long_range,1},
						{short_range,1},
						{toolkit,1}
					};
				headgear[] = {aircrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,3}
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {};
					vestMagazines[] = {
					};
				assignedItems[] = {crew_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Air Crew==================
			class AIRCR {
				weapons[] = {smg};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {crew_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
					    agm_default,
					    {long_range,1},
						{short_range,1}
					};
				headgear[] = {aircrew_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
						{smgmag,3}
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {};
					vestMagazines[] = {
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
						agm_default,
						{toolkit,1},
						{long_range,1},
						{short_range,1},
						{chemblue,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2},
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Engineer (DEMO)==================
			class ENGDEMO {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {engineer_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{explosive,5},
						{agm_firing_device,1},
						{long_range,1},
						{short_range,1},
						{chemblue,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2},
					};
				assignedItems[] = {leader_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {};
				secKit[] = {};
			};
			//================Engineer (Mine)==================
			class ENGMINE {
				weapons[] = {rifle};
				magazines[] = {	}; //do not use if using specific allocation of magazines
				backpack[] = {engineer_backpack};
					backpackMagazines[] = {
					};
					backpackItems[] = {
						agm_default,
						{toolkit,1},
						{minedetector,1},
						{ap_mine,10},
						{long_range,1},
						{short_range,1},
						{at_mine,5}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_engineer};
					vestMagazines[] = {
						{riflemag,5},
						{riflemag_tr,2},
					};
				assignedItems[] = {leader_equipment};
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
						agm_default,
						{agm_sparebarrel,1},
						{long_range,1},
						{short_range,1},
						{chemred,2}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{mmgmag,4}
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
					};
					backpackItems[] = {
						agm_default,
						{chemred,2},
						{short_range,1},
						{mmgmag,4}
					};
				headgear[] = {default_headgear};
				uniform[] = {default_uniform};
					uniformMagazines[] = {
					};
					uniformItems[] = {
					    {smokegrenadewhite,2}
					};
				goggles[] = {};
				vest[] = {vest_default};
					vestMagazines[] = {
						{riflemag,6},
						{riflemag_tr,2},
					};
				assignedItems[] = {default_equipment};
				items[] = {	}; //do not use if using specific allocation of items
				
				priKit[] = {flashlight};
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
				agm_medic
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
				agm_medic
				};
			};
};