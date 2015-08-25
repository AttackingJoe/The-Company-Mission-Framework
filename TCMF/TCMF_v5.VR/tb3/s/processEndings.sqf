
_endCfg = (missionConfigFile >> "CfgDebriefing");
_endCount 	= count _endCfg;
_endLoop = true;


// keep checking each ending until one of the conditions becomes true
while { _endLoop } do {
	for [{ _x = 0 },{_x < _endCount},{ _x = _x +1 }] do {
		_endCur = _endCfg select _x;
		_endCurS = configName _endCur;
		_endCon = getArray (_endCur select 6) select 0;
		
		if ( call compile _endCon ) exitWith {
			_endLoop = false;
			sleep 1;
			
			// send the call to the outro over the network
			[-2, { (_this select 0) call BIS_fnc_endMission; },[_endCurS]] call CBA_fnc_globalExecute;
		};
	}; 
	sleep .2
};
/*
sleep 1;

	
	publicVariable "WCasNum"; publicVariable "WStartNum"; publicVariable "WCasRate"; // west stats
	publicVariable "ECasNum"; publicVariable "EStartNum"; publicVariable "ECasRate"; // east stats
	publicVariable "RCasNum"; publicVariable "RStartNum"; publicVariable "RCasRate"; // resistance stats
	publicVariable "CCasNum"; publicVariable "CStartNum"; publicVariable "CCasRate"; // civ stats

	// send the call to the outro over the network
	[-2, {_endType call BIS_fnc_endMission; }] call CBA_fnc_globalExecute;

*/
