_has_spec = false;
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
			[player, true] call TFAR_fnc_forceSpectator;
			[] execVM "tb3\s\spec\spectator.sqf"; 
			_has_spec = true; 
		} else { 
			titleText [_message, "BLACK IN", 0.2]; 
		};
   
	//Casualty monitor stuff.
	if (side player == WEST) then { [0, {WCasArr = WCasArr + _this;},[player]] call CBA_fnc_globalExecute;};
	if (side player == EAST) then { [0, {ECasArr = ECasArr + _this;},[player]] call CBA_fnc_globalExecute;};
	if (side player == RESISTANCE) then { [0, {RCasArr = RCasArr + _this;},[player]] call CBA_fnc_globalExecute;};
	if (side player == CIVILIAN) then { [0, {CCasArr = CCasArr + _this;},[player]] call CBA_fnc_globalExecute;}; 

	player setCaptive true;
	player addEventHandler ["HandleDamage", {false}];
	{player removeMagazine _x} forEach magazines player;
	removeAllWeapons player;
	removeAllItems player;
};
//if (true) exitWith {};

