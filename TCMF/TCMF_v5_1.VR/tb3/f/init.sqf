// Briefing Functions
tb3_fCreateNote				= compile (preprocessFileLineNumbers "tb3\f\fCreateNote.sqf");
      
// Array Functions
tb3_fInMixedArray				= compile (preprocessFileLineNumbers "tb3\f\array\fInMixedArray.sqf");
tb3_fEnumMixedArray				= compile (preprocessFileLineNumbers "tb3\f\array\fEnumMixedArray.sqf");
//tb3_fArrayCountOccurrences			= compile (preprocessFileLineNumbers "tb3\f\array\fArrayCountOccurrences.sqf");

// Loadout Functions
tb3_fLoadout 				= compile (preprocessFileLineNumbers "tb3\f\loadout\fLoadout.sqf"); //runs sub functions for addition and removal of equipment
tb3_fClearInventory 				= compile (preprocessFileLineNumbers "tb3\f\loadout\fClearInventory.sqf");
tb3_fSelectPrimaryMuzzle	= compile (preprocessFileLineNumbers "tb3\f\loadout\fSelectPrimaryMuzzle.sqf");

tb3_fSetItems				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetItems.sqf");
tb3_fSetLinkedItems				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetLinkedItems.sqf");

tb3_fSetUniform				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetUniform.sqf");
tb3_fSetVest				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetVest.sqf");
tb3_fSetHeadgear				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetHeadgear.sqf");
tb3_fSetGoggles				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetGoggles.sqf");
tb3_fSetBackpack				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetBackpack.sqf");

tb3_fSetWeapons				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetWeapons.sqf");
tb3_fSetMagazines				= compile (preprocessFileLineNumbers "tb3\f\loadout\fSetMagazines.sqf");
	//container specific gear
	tb3_fSetRuckItems				= compile (preprocessFileLineNumbers "tb3\f\loadout\containers\fSetRuckItems.sqf");
	tb3_fSetRuckMagazines				= compile (preprocessFileLineNumbers "tb3\f\loadout\containers\fSetRuckMagazines.sqf");
	tb3_fSetVestItems				= compile (preprocessFileLineNumbers "tb3\f\loadout\containers\fSetVestItems.sqf");
	tb3_fSetVestMagazines				= compile (preprocessFileLineNumbers "tb3\f\loadout\containers\fSetVestMagazines.sqf");
	tb3_fSetUniformItems				= compile (preprocessFileLineNumbers "tb3\f\loadout\containers\fSetUniformItems.sqf");
	tb3_fSetUniformMagazines				= compile (preprocessFileLineNumbers "tb3\f\loadout\containers\fSetUniformMagazines.sqf");	
	
	
tb3_fSetVehCargoMagazines			= compile (preprocessFileLineNumbers "tb3\f\loadout\vehicleCargo\fSetVehCargoMagazines.sqf");
tb3_fSetVehCargoWeapons				= compile (preprocessFileLineNumbers "tb3\f\loadout\vehicleCargo\fSetVehCargoWeapons.sqf");
tb3_fSetVehCargoItems				= compile (preprocessFileLineNumbers "tb3\f\loadout\vehicleCargo\fSetVehCargoItems.sqf");
tb3_fSetVehCargoBackpacks				= compile (preprocessFileLineNumbers "tb3\f\loadout\vehicleCargo\fSetVehCargoRucks.sqf");

