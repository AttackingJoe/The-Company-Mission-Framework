private ["_unit", "_items", "_addThis", "_putMag", "_handled"];

_unit = _this select 0;

_handled = false;


if ( !isNull(vestContainer _unit) ) then
{
	if ( local _unit ) then 
	{
		clearItemCargoGlobal (vestContainer _unit);
		
		_items = _this select 1;
		{
			(vestContainer _unit) addItemCargoGlobal _x;
		} forEach _items;
		_handled = true;
	};
};
//diag_log "Done adding vestItems";
_handled  // ret