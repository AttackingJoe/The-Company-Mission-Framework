// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// MAKE SURE THE PLAYER INITIALIZES PROPERLY

if (!isDedicated && (isNull player)) then
{
    waitUntil {sleep 0.1; !isNull player};
};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction
if(count _this == 0) then
{
	_unitfaction = toLower (faction player);

	// If the unitfaction is different from the 	group leader's faction, the latters faction is used
	if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};
}
else
{
	_unitfaction = (_this select 0);
};
// ====================================================================================
switch (_unitfaction) do
{
// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO slots.

	case "blu_f":
	{
		["UnitNATO_CO", 0, "PLT HQ", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_PSG", 0, "PSG", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["UnitNATO_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["UnitNATO_A1_FTL", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["UnitNATO_A2_FTL", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["UnitNATO_A3_FTL", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["UnitNATO_B1_FTL", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["UnitNATO_B2_FTL", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["UnitNATO_B3_FTL", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["UnitNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["UnitNATO_C1_FTL", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["UnitNATO_C2_FTL", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["UnitNATO_C3_FTL", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["UnitNATO_MMG1_G", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_HMG1_G",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_MAT1_G", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_HAT1_G",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_MTR1_G",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_MSAM1_G",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_HSAM1_G",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_SN",  4, "SNIPER", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_MARK",  4, "MARKSMAN", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_ENG1_DEMO",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitNATO_ENG1_MINE",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;		

 		["UnitNATO_IFV1_VC",  7, "IFV1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV2_VC",  7, "IFV2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV3_VC",  7, "IFV3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV4_VC",  7, "IFV4", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV5_VC",  7, "IFV5", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV6_VC",  7, "IFV6", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV7_VC",  7, "IFV7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_IFV8_VC",  7, "IFV8", "ColorBlack"] spawn f_fnc_localGroupMarker;

 		["UnitNATO_TNK1_VC",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitNATO_TH1_P",  9, "TH1", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitNATO_TH2_P",  9, "TH2", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitNATO_TH3_P",  9, "TH3", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitNATO_TH4_P",  9, "TH4", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitNATO_TH5_P",  9, "TH5", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["UnitNATO_TH6_P",  9, "TH6", "ColorBlack"] spawn f_fnc_localGroupMarker;
   		["UnitNATO_TH7_P",  9, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitNATO_TH8_P",  9, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["UnitNATO_AH1_P",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > CSAT
// Markers seen by players in CSAT slots.

	case "opf_f":
	{
		["UnitCSAT_CO", 0, "PLT HQ", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_PSG", 0, "PSG", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_A1_FTL", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_A2_FTL", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_A3_FTL", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_B1_FTL", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_B2_FTL", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_B3_FTL", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_C1_FTL", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_C2_FTL", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_C3_FTL", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_MMG1_G", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_HMG1_G",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_MAT1_G", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_HAT1_G",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_MTR1_G",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_MSAM1_G",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_HSAM1_G",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_SN",  4, "SNIPER", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_MARK",  4, "MARKSMAN", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_ENG1_DEMO",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_ENG1_MINE",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;		

 		["UnitCSAT_IFV1_VC",  7, "IFV1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_IFV2_VC",  7, "IFV2", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitCSAT_IFV3_VC",  7, "IFV3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_IFV4_VC",  7, "IFV4", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitCSAT_IFV5_VC",  7, "IFV5", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_IFV6_VC",  7, "IFV6", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["UnitCSAT_IFV7_VC",  7, "IFV7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_IFV8_VC",  7, "IFV8", "ColorBlack"] spawn f_fnc_localGroupMarker;

 		["UnitCSAT_TNK1_VC",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_TH1_P",  9, "TH1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH2_P",  9, "TH2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH3_P",  9, "TH3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH4_P",  9, "TH4", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH5_P",  9, "TH5", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH6_P",  9, "TH6", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH7_P",  9, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["UnitCSAT_TH8_P",  9, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["UnitCSAT_AH1_P",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

	};


// ====================================================================================

// MARKERS: INDEPEDENT > AAF
// Markers seen by players in AAF slots.

	case "ind_f":
	{
		["GrpAAF_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpAAF_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpAAF_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH2",  9, "TH2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH3",  9, "TH3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TH4",  9, "TH4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpAAF_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitAAF_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};
// ====================================================================================

// MARKERS: BLUFOR > FIA
// Markers seen by players in BLUFOR-FIA slots.

	case "blu_g_f":
	{
		["GrpFIA_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpFIA_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpFIA_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitFIA_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > FIA
// Markers seen by players in OPFOR-FIA slots.

	case "opf_g_f":
	{
		["GrpOFIA_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpOFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpOFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpOFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpOFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpOFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpOFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpOFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitOFIA_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitOFIA_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: INDEPENDENT > FIA
// Markers seen by players in INDEPENDENT-FIA slots.

	case "ind_g_f":
	{
		["GrpIFIA_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_DC", 0, "DC", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpIFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

 		["GrpIFIA_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_TH1",  9, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH2",  9, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH3",  9, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH4",  9, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpIFIA_TH5",  9, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpIFIA_TH6",  9, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
   		["GrpIFIA_TH7",  9, "TH7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpIFIA_TH8",  9, "TH8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpIFIA_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["UnitIFIA_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitIFIA_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

};

// ====================================================================================


