	
private ["_player","_textColor","_nearUnits","_index","_displayDistance"];
disableSerialization;
	
if (isNil "tb3_nameTags") then {tb3_nameTags = true};

_textColor = getArray (TB3_Settings >> "nameTags" >> "colour");
_displayDistance = getNumber (TB3_Settings >> "nameTags" >> "distance");

[{
	if (tb3_nameTags && alive player) then {
		_distance = (_this select 0) select 0;
		_color = (_this select 0) select 1;
		_player = player;		
		_nearUnits = [_player, _distance] call tb3_fGetNearUnits;
		
		if (count _nearUnits > 0) then {
			1 cutRsc ["namehud","PLAIN"];
			_index = 0;
			{
				[_player, _x, _index, _color, _distance] call tb3_fSetNameTag;
			} forEach _nearUnits;
		};
	};
}, 0, [_displayDistance,_textColor]] call CBA_fnc_addPerFrameHandler;