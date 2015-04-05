// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)

f_script_briefing = [] execVM "briefing.sqf";  // we should double check the usefulness of this, breifing shouldn't need to be called in the init.

player addrating 99999; // because fuck that "player turns hostile" shit 

// F3 - ORBAT Notes
// Credits: TCMF v3

[] execVM "tb3\briefing\f_orbatNotes.sqf";

// wait until template is init and player synched

waitUntil { TB3_INIT };

//Group Markers
f_script_setGroupMarkers = [] execVM "tb3\f\groupMarkers\f_setLocalGroupMarkers.sqf";


if (isServer) then {

	// AI information sharing
		[] execVM "scripts\ai\aiLink.sqf";
	//Allow AI to get knocked unconscious 
///		{_x setVariable ["AGM_AllowUnconscious", true]} forEach allUnits; - Not rocking this until it's not just a "snap to ground" when unconscious. It's too obvious.
	
	};

	// Building Position Indicator
		//[] execVM "scripts\posCheck.sqf";	

	player switchmove "AmovPknlMstpSlowWrflDnon";
	