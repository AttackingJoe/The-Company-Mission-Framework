//loadout items
private ["_unit","_cfg","_gear","_slotItems","_items","_weapons","_magazines","_grenades","_backpack","_headgear","_uniform","_vest","_goggles","_priKit","_secKit","_backpackMagazines","_backpackItems","_vestItems","_vestMagazines","_uniformItems","_uniformMagazines"];

//core info
_unit = _this select 0;
_cfg = _this select 1;
_gear  = _this select 2;

//Remove the unit's current gear if they are a person and not a vehicle, because fuck vehicles. Those fucking cunts.
if (_unit isKindOf "AllVehicles") then {[_unit] call tb3_fClearInventory;};

//get the defined gear.
TB3_GearPath = (missionConfigFile >> "TB3_Gear");
	_weapons 	= getArray (TB3_GearPath >> _cfg >> _gear >> "weapons");
	_magazines 	= getArray (TB3_GearPath >> _cfg >> _gear >> "magazines");

	_priKit		= getArray (TB3_GearPath >> _cfg >> _gear >> "priKit");
	_secKit 	= getArray (TB3_GearPath >> _cfg >> _gear >> "secKit");	
	
	_backpack	= getArray (TB3_GearPath >> _cfg >> _gear >> "backpack");
		_backpackMagazines = getArray (TB3_GearPath >> _cfg >> _gear >> "backpackMagazines");
		_backpackItems = getArray (TB3_GearPath >> _cfg >> _gear >> "backpackItems");
	_headgear	= getArray (TB3_GearPath >> _cfg >> _gear >> "headgear");
	_uniform	= getArray (TB3_GearPath >> _cfg >> _gear >> "uniform");
		_uniformMagazines = getArray (TB3_GearPath >> _cfg >> _gear >> "uniformMagazines");
		_uniformItems = getArray (TB3_GearPath >> _cfg >> _gear >> "uniformItems");
	_vest		= getArray (TB3_GearPath >> _cfg >> _gear >> "vest");
		_vestMagazines = getArray (TB3_GearPath >> _cfg >> _gear >> "vestMagazines");
		_vestItems = getArray (TB3_GearPath >> _cfg >> _gear >> "vestItems");
	_goggles	= getArray (TB3_GearPath >> _cfg >> _gear >> "goggles");
	_items		= getArray (TB3_GearPath >> _cfg >> _gear >> "items");
	_assignedItems	= getArray (TB3_GearPath >> _cfg >> _gear >> "assignedItems");
	
	_vehCargoWeapons = getArray (TB3_GearPath >> _cfg >> _gear >> "vehCargoWeapons");
	_vehCargoMagazines = getArray (TB3_GearPath >> _cfg >> _gear >> "vehCargoMagazines");
	_vehCargoItems = getArray (TB3_GearPath >> _cfg >> _gear >> "vehCargoItems");
	_vehCargoRucks = getArray (TB3_GearPath >> _cfg >> _gear >> "vehCargoRucks");


//adding stuff	
if ((count _assignedItems) > 0) then { [_unit,_assignedItems] call tb3_fSetLinkedItems; };
if ((count _backpack) > 0) then { [_unit,_backpack select 0] call tb3_fSetBackpack;	};	

//Allow randomized items by not selecting 0
if ((count _headgear) > 0) then { [_unit,_headgear] call tb3_fSetHeadgear;	}; 
if ((count _uniform) > 0) then { [_unit,_uniform] call tb3_fSetUniform;	};		
if ((count _goggles) > 0) then { [_unit,_goggles] call tb3_fSetGoggles; };	

if ((count _vest) > 0) then { [_unit,_vest select 0] call tb3_fSetVest;	};	
if ((count _magazines) > 0) then {	[_unit,_magazines] call tb3_fSetMagazines; };
if ((count _items) > 0) then { [_unit,_items] call tb3_fSetItems;	};	

if ((count _backpackMagazines) > 0) then { [_unit,_backpackMagazines] call tb3_fSetRuckMagazines;	};
if ((count _backpackItems) > 0) then { [_unit,_backpackItems] call tb3_fSetRuckItems;	};	
if ((count _uniformMagazines) > 0) then { [_unit,_uniformMagazines] call tb3_fSetUniformMagazines;	};
if ((count _uniformItems) > 0) then { [_unit,_uniformItems] call tb3_fSetUniformItems;	};	
if ((count _vestMagazines) > 0) then { [_unit,_vestMagazines] call tb3_fSetVestMagazines;	};	
if ((count _vestItems) > 0) then { [_unit,_vestItems] call tb3_fSetVestItems;	};	
if ((count _weapons) > 0) then { [_unit,_weapons,_priKit,_secKit] call tb3_fSetWeapons; };

if ((count _vehCargoItems) > 0) then { [_unit,_vehCargoItems] call tb3_fSetVehCargoItems; };
if ((count _vehCargoWeapons) > 0) then { [_unit,_vehCargoWeapons] call tb3_fSetVehCargoWeapons; };
if ((count _vehCargoMagazines) > 0) then { [_unit,_vehCargoMagazines] call tb3_fSetVehCargoMagazines; };
if ((count _vehCargoRucks) > 0) then { [_unit,_vehCargoRucks] call tb3_fSetVehCargoBackpacks; };
