

_side 	= _this select 0;
_skill 	= _this select 1;

if ( !isServer ) exitWith { };
waitUntil { TB3_INIT  && time > 0 };



if ( _skill > 1 ) then { _skill = _skill / 10 };
{
	if ( side _x == _side ) then
	{
		_x setSkill _skill;
	};
}
forEach allUnits;

