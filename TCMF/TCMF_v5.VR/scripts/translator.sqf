//	___________                           .__          __                
//	\__    ___/___________    ____   _____|  | _____ _/  |_  ___________ 
//	  |    |  \_  __ \__  \  /    \ /  ___/  | \__  \\   __\/  _ \_  __ \
//	  |    |   |  | \// __ \|   |  \\___ \|  |__/ __ \|  | (  <_> )  | \/
//	  |____|   |__|  (____  /___|  /____  >____(____  /__|  \____/|__|   
//	                      \/     \/     \/          \/                   
//			A script for adding a translator to your missions
//	
// Place the following in the init field of your translator unit:
//
//	for two spoken languages (side language and one other)
//
//  	_lang = [this, "language ID 1"] execVM "scripts\translator.sqf";
//
//	for three spoken languages (side language and two others)
//
//		_lang = [this, "language ID 1", "language ID 2"] execVM "scripts\translator.sqf";
//
//
//  _______Language List____________
//	|_ID_|____Name____|____Side____|
//  |civ |Civilian    |Civilian    |
//  |ind |Independent |Independent |
//  |west|Blufor      |West        |
//  |east|Opfor       |East        |
//
//
//_________________________________________________________________________________________
//DO NOT EDIT BELLOW THIS LINE!
//_________________________________________________________________________________________

_translator = _this select 0;
_toLang1 = _this select 1;
_toLang2 = _this select 2;
_side = side _translator;

if (isNil "_toLang2") then{
	switch _side do { 
		case east: { 
				if (_toLang1 != "east") then
				{
					["east", _toLang1] call acre_api_fnc_babelSetSpokenLanguages;
				};
			};
		case west: { 
				if (_toLang1 != "west") then
				{
					["west", _toLang1] call acre_api_fnc_babelSetSpokenLanguages;		
				};
			};
		case independent: { 
				if (_toLang1 != "ind") then
				{
					["ind", _toLang1] call acre_api_fnc_babelSetSpokenLanguages;
				};
			};
		case civilian: { 
				if (_toLang1 != "civ") then
				{
					["civ", _toLang1] call acre_api_fnc_babelSetSpokenLanguages;	
				};
			};
	};
}else{
	switch _side do { 
		case east: { 
				if (_toLang1 != "east") then
				{
					if (_toLang2 != "east") then
					{
						["east", _toLang1, _toLang2] call acre_api_fnc_babelSetSpokenLanguages;
					};
				};
			};
		case west: { 
			if (_toLang1 != "west") then
			{
				if (_toLang2 != "west") then
					{
						["west", _toLang1, _toLang2] call acre_api_fnc_babelSetSpokenLanguages;
					};
				};
			};
		case independent: { 
			if (_toLang1 != "ind") then
			{
					if (_toLang2 != "ind") then
					{
						["ind", _toLang1, _toLang2] call acre_api_fnc_babelSetSpokenLanguages;
					};
				};
			};
		case civilian: { 
				if (_toLang1 != "civ") then
				{
					if (_toLang2 != "civ") then
					{
						["civ", _toLang1, _toLang2] call acre_api_fnc_babelSetSpokenLanguages;
					};	
				};
			};
		};
};


