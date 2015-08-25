[] execVM "briefing.sqf";  // briefings in sqf format have to called in the init
player addrating 99999; // because fuck that "player turns hostile" shit 

// wait until template is init and player synched
waitUntil { TB3_INIT };

//Group Markers
f_script_setGroupMarkers = [] execVM "tb3\f\groupMarkers\f_setLocalGroupMarkers.sqf";

//ACRE stuff
//Full duplex means being able to hear and transmit at the same time.
[true] call acre_api_fnc_setFullDuplex;
//This allows for transmissions occurring at the same time to distort one another.
[true] call acre_api_fnc_setInterference;
//Allows AI to hear player speech.
[true] call acre_api_fnc_setRevealToAI;
//Add unique radio channels to each side.
[true, true] call acre_api_fnc_setupMission;
//Add unique languages to each side.
[true] call acre_api_fnc_babelSetupMission;
//NOTE: for adding a translator, see the translator.sqf file in the scripts folder.

if (isServer) then {
	// AI information sharing
		[] execVM "scripts\ai\aiLink.sqf";
};
