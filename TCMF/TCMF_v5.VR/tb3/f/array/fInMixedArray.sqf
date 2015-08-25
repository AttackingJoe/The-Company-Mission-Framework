private ["_unit", "_mixedArray", "_inArray"];

_unit 		= _this select 0;
_mixedArray = _this select 1;
_inArray 	= false;


// check if unit is in mixed array
{
	_inArray = switch ( typeName _x ) do 
	{
		case "SIDE":  { (side _unit == _x) };
		case "STRING":{ (faction _unit == _x) || (typeOf _unit == _x) };
		case "GROUP": { (group _unit == _x) };
		case "OBJECT":{ (_unit == _x) };
		default { false }
	};
	if ( _inArray ) exitWith { };
} forEach _mixedArray;

_inArray // ret
