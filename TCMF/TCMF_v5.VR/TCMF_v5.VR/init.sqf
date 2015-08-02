[] execVM "briefing.sqf";  // briefings in sqf format have to called in the init
player addrating 99999; // because fuck that "player turns hostile" shit 

// wait until template is init and player synched
waitUntil { TB3_INIT };

//Group Markers
f_script_setGroupMarkers = [] execVM "tb3\f\groupMarkers\f_setLocalGroupMarkers.sqf";


if (isServer) then {

	// AI information sharing
		[] execVM "scripts\ai\aiLink.sqf";
	//Allow AI to get knocked unconscious 
	//{_x setVariable ["AGM_AllowUnconscious", true]} forEach allUnits; - Not using this until it's not just a "snap to ground" when unconscious. It's too obvious.
	
	};

	// Building Position Indicator
		//[] execVM "scripts\posCheck.sqf";	



	
	