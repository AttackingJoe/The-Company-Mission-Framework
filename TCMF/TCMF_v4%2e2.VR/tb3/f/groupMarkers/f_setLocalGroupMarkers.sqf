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
		["CO", 0, "PLT HQ", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["RECON",  4, "RECON", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MARK",  4, "MARKSMAN", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["ENG_DEMO",  6, "ENG_DEMO", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["ENG_MINE",  6, "ENG_MINE", "ColorOrange"] spawn f_fnc_localGroupMarker;		

 		["IFV1",  7, "IFV1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV2",  7, "IFV2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV3",  7, "IFV3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV4",  7, "IFV4", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV5",  7, "IFV5", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV6",  7, "IFV6", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV7",  7, "IFV7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV8",  7, "IFV8", "ColorBlack"] spawn f_fnc_localGroupMarker;

 		["TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["TH1",  9, "TH1", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH2",  9, "TH2", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH3",  9, "TH3", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH4",  9, "TH4", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH5",  9, "TH5", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["TH6",  9, "TH6", "ColorBlack"] spawn f_fnc_localGroupMarker;
   		["TH7",  9, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["TH8",  9, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > CSAT
// Markers seen by players in CSAT slots.

	case "opf_f":
	{
		["Op_CO", 0, "PLT HQ", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["Op_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["Op_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["Op_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["Op_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["Op_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["Op_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["Op_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["Op_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["Op_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["Op_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_RECON",  4, "RECON", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_MARK",  4, "MARKSMAN", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_ENG_DEMO",  6, "ENG_DEMO", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["Op_ENG_MINE",  6, "ENG_MINE", "ColorOrange"] spawn f_fnc_localGroupMarker;		

 		["Op_IFV1",  7, "IFV1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV2",  7, "IFV2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV3",  7, "IFV3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV4",  7, "IFV4", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV5",  7, "IFV5", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV6",  7, "IFV6", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV7",  7, "IFV7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_IFV8",  7, "IFV8", "ColorBlack"] spawn f_fnc_localGroupMarker;

 		["Op_TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["Op_TH1",  9, "TH1", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["Op_TH2",  9, "TH2", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["Op_TH3",  9, "TH3", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["Op_TH4",  9, "TH4", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["Op_TH5",  9, "TH5", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["Op_TH6",  9, "TH6", "ColorBlack"] spawn f_fnc_localGroupMarker;
   		["Op_TH7",  9, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["Op_TH8",  9, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["Op_AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

	};


// ====================================================================================

// MARKERS: INDEPEDENT > AAF
// Markers seen by players in AAF slots.
// NEEDS A TCMF FACTION WITH UNITS THAT ARE PLACED IN GROUPS!

	case "ind_f":
	{
		["CO", 0, "PLT HQ", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["PSG", 0, "PSG", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;

		["BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["HAT1",  3, "HAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MSAM1",  3, "MSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["HSAM1",  3, "HSAM1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["RECON",  4, "RECON", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["MARK",  4, "MARKSMAN", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["ENG1",  6, "ENG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["ENG_DEMO",  6, "ENG_DEMO", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["ENG_MINE",  6, "ENG_MINE", "ColorOrange"] spawn f_fnc_localGroupMarker;		

 		["IFV1",  7, "IFV1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV2",  7, "IFV2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV3",  7, "IFV3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV4",  7, "IFV4", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV5",  7, "IFV5", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV6",  7, "IFV6", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV7",  7, "IFV7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["IFV8",  7, "IFV8", "ColorBlack"] spawn f_fnc_localGroupMarker;

 		["TNK1",  8, "TNK1", "ColorRed"] spawn f_fnc_localGroupMarker;

		["TH1",  9, "TH1", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH2",  9, "TH2", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH3",  9, "TH3", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH4",  9, "TH4", "ColorBlack"] spawn f_fnc_localGroupMarker;
 		["TH5",  9, "TH5", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["TH6",  9, "TH6", "ColorBlack"] spawn f_fnc_localGroupMarker;
   		["TH7",  9, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["TH8",  9, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

		["AH1",  9, "AH1", "ColorRed"] spawn f_fnc_localGroupMarker;

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

if (true) exitWith {};

