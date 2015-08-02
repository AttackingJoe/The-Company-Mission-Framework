private ["_unit", "_itmes", "_addThis", "_putMag", "_handled"];

_unit = _this select 0;
_handled = false;


if ( !isNull(uniformContainer _unit) ) then
{
	if ( local _unit ) then 
	{
		clearItemCargoGlobal (uniformContainer _unit);
		
		_items = _this select 1;
		{
			(uniformContainer _unit) addItemCargoGlobal _x;
		} forEach _items;
		_handled = true;
	};
};
//diag_log "Done adding uniformItems";
_handled  // ret