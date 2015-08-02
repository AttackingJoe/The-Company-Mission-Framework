/*
	GrenadeStop v0.8 for ArmA 3 Alpha by Bake
	
	DESCRIPTION:
	Stops players from throwing grenades in safety zones.
	
	INSTALLATION:
	Move grenadeStop.sqf to your mission's folder. Then add the
	following line to your init.sqf file (create one if necessary):
	execVM "grenadeStop.sqf";
	
	CONFIGURATION:
	Edit the #defines below.
*/

#define SAFETY_ZONES	[[start, 250]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define MESSAGE			"Press I instead of G to" +\
						" open your inventory.\nRebind the throw key to avoid accidents."

if (isDedicated) exitWith {};
waitUntil {!isNull player};

player addEventHandler ["Fired", {
	if (_this select 2 == "HandGrenadeMuzzle") then
	{
		// Lazy evaluation now supported by default? Curly brackets not working.
		
		if ({(_this select 0) distance getPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
		{
			deleteVehicle (_this select 6);
			titleText [MESSAGE, "PLAIN", 1];
		};
	};
}];
