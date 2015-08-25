private ["_unit", "_backpack", "_handled"];


_unit = _this select 0;

if ( local _unit ) then
{
	removeBackpack _unit;
	
	_backpack = _this select 1;

	_unit addBackpack _backpack;
		
	_handled = true;
} else
{
	_handled = false;
};

_handled // ret
