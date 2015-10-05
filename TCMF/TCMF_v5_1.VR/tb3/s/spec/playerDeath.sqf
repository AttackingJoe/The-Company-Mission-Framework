_has_spec = false;
// https://youtu.be/q36uaSlf0ck?t=87
_message = "You are dead.\nEntering spectator mode...";
sleep 2;

if (!local player) exitWith {};

while {true} do
{
	while {alive player} do {sleep 0.2};
		
	titleText [_message, "BLACK", 0.2];
	sleep 1;
	titleText [_message, "BLACK FADED", 10];
    
    if (!_has_spec) then { [player] join grpNull; };
	
 	while {!alive player} do {sleep 0.2};
	
	player setPos (getpos specpen);
        if (!_has_spec) then { 
			[] execVM "tb3\s\spec\spectator.sqf"; 
			_has_spec = true; 
		} else { 
			titleText [_message, "BLACK IN", 0.2]; 
		};
 
	player setCaptive true;
	player addEventHandler ["HandleDamage", {false}];
	{player removeMagazine _x} forEach magazines player;
	removeAllWeapons player;
	removeAllItems player;
	[true] call acre_api_fnc_setSpectator;
};
