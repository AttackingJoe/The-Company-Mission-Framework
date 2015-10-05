// TCMF 5.1
[] execVM "briefing.sqf";  // briefings in sqf format have to called in the init
player addrating 99999; // because fuck that "player turns hostile" shit 

//ACRE stuff
//Change the variable to true if you want to enable the functionality
//NOTE: for adding a translator, see the translator.sqf file in the scripts folder.

// Main on/off switch. If you want to use any of the features leave this on.
_acremain = true;

//Allows AI to hear player speech.
_acreaihear = true;
//This allows for transmissions occurring at the same time to distort one another.It also means being able to hear and transmit at the same time.
_acrerealint = true;
//Add unique languages and radio channels to each side.
_acrelangandfreq = true;
//Add unique languages to each side. If the unified option is enabled this must be false.
_acrelang = false;
//Add unique radio channels to each side. If the unified option is enabled this must be false.
_acrefreq = false;

// wait until template is init and player synched
waitUntil { TB3_INIT };

//Group Markers
f_script_setGroupMarkers = [] execVM "tb3\f\groupMarkers\f_setLocalGroupMarkers.sqf";

//Acre switches
if (_acremain)then{
	if (_acreaihear)then{
		[true] call acre_api_fnc_setRevealToAI;
	}else{
		[false] call acre_api_fnc_setRevealToAI;
	};

	if(_acrerealint)then{
		[true] call acre_api_fnc_setFullDuplex;
		[true] call acre_api_fnc_setInterference;
	}else{
		[false] call acre_api_fnc_setFullDuplex;
		[false] call acre_api_fnc_setInterference;
	}; 

	if ((_acrelangandfreq) && !(_acrefreq || _acrelang))then{
		[true, true] call acre_api_fnc_setupMission;
	}else{
		if((_acrelang) or (_acrefreq) and (_acrelangandfreq))then{
			systemChat "Please check your init.sqf, some ACRE variable is set incorrectly";
		}else{
			if (_acrelang)then{
				[true] call acre_api_fnc_babelSetupMission;
			}else{
				if (_acrefreq)then{
					[false, true] call acre_api_fnc_setupMission;
				};
			};
		};
	};
};


if (isServer) then {
	// AI information sharing
		[] execVM "scripts\ai\aiLink.sqf";
};
