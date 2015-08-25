private ["_unit", "_items", "_addThis", "_putMag", "_handled"];

_unit = _this select 0;
_handled = false;


if ( !isNull(backpackContainer _unit) ) then // dealing with a BIS backpack
{
	if ( local _unit ) then 
	{
	
		clearItemCargoGlobal (backpackContainer _unit);
		
		_items = _this select 1;
		
		{
			(backpackContainer _unit) addItemCargoGlobal _x;
		} forEach _items;
		_handled = true;
	};
};
//diag_log "Done adding ruckItems";
_handled  // ret