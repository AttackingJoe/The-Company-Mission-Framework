private ["_unit", "_uniform", "_handled"];


_unit = _this select 0;

if ( local _unit ) then
{
	// first get naked
	removeUniform _unit;

	_uniformArray = _this select 1;
	_uniform = _uniformArray call BIS_fnc_selectRandom;
	_unit forceAddUniform _uniform;
		
	_handled = true;
} else
{
	_handled = false;
};

_handled // ret
