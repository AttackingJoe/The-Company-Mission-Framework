private ["_unit","_handled"];

_unit = _this select 0;

if ( local _unit ) then {
	removeGoggles _unit;
	removeVest _unit;
	removeUniform _unit;
	removeHeadGear _unit; //no you may not leave your hat on.
	{_unit unlinkItem _x;} forEach assignedItems _unit;
	{_unit removeWeapon _x;} forEach weapons _unit;
	
	
} else { 

	_handled = false;
	
};

_handled;