private ["_unit", "_magazines", "_addThis", "_putMag", "_handled"];


_unit = _this select 0;
_handled = false;


if ( !isNull(backpackContainer _unit) ) then // dealing with a BIS backpack
{
	if ( local _unit ) then 
	{
		clearMagazineCargoGlobal (backpackContainer _unit);
		
		
		_magazines = _this select 1;
		{
			(backpackContainer _unit) addMagazineCargoGlobal _x;
		} forEach _magazines;
		_handled = true;
	};
};

_handled  // ret
