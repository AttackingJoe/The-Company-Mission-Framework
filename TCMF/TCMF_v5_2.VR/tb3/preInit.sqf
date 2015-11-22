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
diag_log text "Made on TCMF 5.1";
diag_log text format[" init method: %1", _this select 0];
diag_log text "";
diag_log text "|======================================================================================|"; 
diag_log text "";



// Initialize important variables 
TB3_Settings = (missionConfigFile >> "TB3_Settings");
TB3_missionFilePathLength = (count(toArray(__FILE__)) - 18); 

// Discover what this node is
[] spawn compile (preprocessFileLineNumbers "tb3\s\nodeDiscovery.sqf");

// Initialize all functions
call compile (preprocessFileLineNumbers "tb3\f\init.sqf");

// Run the briefing
call compile (preprocessFileLineNumbers "briefing.sqf");

// Run the user defined pre_init
call compile (preprocessFileLineNumbers "preinit.sqf");

// Start spectator handling
[] execVM "tb3\s\spec\playerDeath.sqf";

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


