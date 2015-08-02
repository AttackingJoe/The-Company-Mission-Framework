private ["_unit", "_magazines", "_addThis", "_putMag", "_handled"];

_unit = _this select 0;

_handled = false;


if ( !isNull(uniformContainer _unit) ) then
{
	if ( local _unit ) then 
	{
		clearMagazineCargo (uniformContainer _unit);
		_magazines = _this select 1;
		{
			(uniformContainer _unit) addMagazineCargoGlobal _x;
		} forEach _magazines;
		_handled = true;
	};
};

_handled  // ret