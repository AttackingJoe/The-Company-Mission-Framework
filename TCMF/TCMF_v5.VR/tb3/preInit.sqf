	/////////////////////////////////////////////////////////////////////
	//  This script will initialize all major functions of the mk4/TB3 mission template  //
	//														     //
	//						DO NOT MODIFY       SORRY MIKE!                                   //
	/////////////////////////////////////////////////////////////////////

	
if (!isNil "TB3_INIT" ) exitWith {};
TB3_INIT = false;


	
// Place a mission info header in the RPT
diag_log text ""; 
diag_log text format["|=============================  %1 @ %2 =============================|", missionName, worldName]; 
diag_log text "";
diag_log text " tb3 template 0.10";
diag_log text format[" init method: %1", _this select 0];
diag_log text "";
diag_log text "|======================================================================================|"; 
diag_log text "";



// Initialize important variables 
TB3_ACRE = isClass(configFile >> "CfgPatches" >> "ACRE_Main");
TB3_ACE = isClass(configFile >> "CfgPatches" >> "ACE_Main");
TB3_Settings = (missionConfigFile >> "TB3_Settings");
TB3_missionFilePathLength = (count(toArray(__FILE__)) - 18); 
TB3_adminendex = false;


TB3_requireVersion = 3; // the required version of the description.ext
WCasRate = 0; WCasNum = 0; WStartNum = 0;
ECasRate = 0; ECasNum = 0; EStartNum = 0;
RCasRate = 0; RCasNum = 0; RStartNum = 0;
CCasRate = 0; CCasNum = 0; CStartNum = 0;


// Discover what this node is
[] spawn compile (preprocessFileLineNumbers "tb3\s\nodeDiscovery.sqf");

// Initialize all functions
call compile (preprocessFileLineNumbers "tb3\f\init.sqf");

// Run the briefing
call compile (preprocessFileLineNumbers "briefing.sqf");

// Run the user defined pre_init
call compile (preprocessFileLineNumbers "preinit.sqf");


/////////////////////////////////////////////////////////
// Start going through the settings and start the chosen scripts //
/////////////////////////////////////////////////////////


// check if the description.ext version is supported by this version of the template 
if ( TB3_requireVersion != getNumber(TB3_Settings >> "General" >> "version") ) then
{
	[] spawn { 
		waitUntil { time > 0 }; 
		hintC format["Your description.ext version is incompatible with the current version of the template. 
					\n\nYour version: %1
					\nRequired version: %2", getNumber(TB3_Settings >> "General" >> "version"), TB3_requireVersion];
	};
};

// run the code field in the parameters
if ( getNumber(TB3_Settings >> "General" >> "processParams") == 1 ) then { 
	call compile (preprocessFileLineNumbers "tb3\s\processParams.sqf");
};

// Disable saving in the MP editor?
if ( (getNumber(TB3_Settings >> "General" >> "enableSaving") == 0) && !isDedicated ) then { 
	enableSaving [false, false];
};



// Start dynamic View Distance?
if ( getNumber(TB3_Settings >> "General" >>  "dynamicViewDistance") == 1 ) then 
{
	[] execVM "tb3\s\dynamicViewDistance.sqf";
};



// Start spectator handling
if ( getNumber(TB3_Settings >> "General" >>  "spectator") == 1 ) then 
{
	[] execVM "tb3\s\spec\playerDeath.sqf";
};



////////////////
// ACE settings //
////////////////
/*
ace_sys_tracking_markers_enabled = if ( getNumber(MK4_Settings >> "ACE" >> "tracking") == 1 ) then { true } else { false };
ace_sys_tracking_enabled = if ( getNumber(MK4_Settings >> "ACE" >> "tracking") == 1 ) then { true } else { false };
ace_sys_spectator_playable_only = if ( getNumber(MK4_Settings >> "ACE" >> "spectatePlayable") == 1 ) then { true } else { false };
ace_sys_spectator_no_butterfly_mode = if ( getNumber(MK4_Settings >> "ACE" >> "spectateNoButterfly") == 1 ) then { true } else { false };
ACE_NoStaminaEffects = if ( getNumber(MK4_Settings >> "ACE" >> "noStaminaEffects") == 1 ) then { true } else { false };
ACE_NO_RECOGNIZE = if ( getNumber(MK4_Settings >> "ACE" >> "noRecognize") == 1 ) then { true } else { false };
*/



// Select primary muzzle and put the unit in a safe stance
[] spawn {
	waitUntil { TB3_INIT };
	player setVariable ["tb3_unitSide", side player, true];
	[player] call TB3_fSelectPrimaryMuzzle;
	
	if ( player == vehicle player ) then // if player is on foot
	{
		player switchMove "amovpercmstpslowwrfldnon_player_idlesteady03"; // no need to broadcast over network
	};
};


