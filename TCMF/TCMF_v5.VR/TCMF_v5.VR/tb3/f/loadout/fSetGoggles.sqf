private ["_unit", "_goggles", "_handled"];


_unit = _this select 0;

if ( local _unit ) then
{
	removeGoggles _unit;

	_gogglesArray = _this select 1;
	_goggles = _gogglesArray Call BIS_fnc_SelectRandom;
	_unit addGoggles _goggles;

	_handled = true;
} else
{
	_handled = false;
};

_handled // ret
