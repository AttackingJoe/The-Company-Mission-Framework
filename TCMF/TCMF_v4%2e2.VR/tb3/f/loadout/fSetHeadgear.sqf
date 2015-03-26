private ["_unit", "_headgear", "_handled"];


_unit = _this select 0;

if ( local _unit ) then
{
	removeHeadgear _unit;
	
	_headgearArray = _this select 1;
	_headgear = _headgearArray call BIS_fnc_selectRandom;
	
	_unit addHeadgear _headgear;
	
	_handled = true;
} else
{
	_handled = false;
};

_handled // ret
