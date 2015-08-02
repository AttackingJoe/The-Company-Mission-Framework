tb3_netBusy = true;
publicVariable "tb3_netBusy";

	if ([player, 'ACRE_PRC148'] call acre_api_fnc_hasKindOfRadio) then 
	{
		[-2, {tb3 globalChat "'0'ALPHA THIS IS 1'0'ALPHA. MESSAGE OVER.'";}] call CBA_fnc_globalExecute;
		sleep 2.5;
		[-2, {tb3 globalChat "'1'0'ALPHA, 0'ALPHA. SEND OVER.'";}] call CBA_fnc_globalExecute;
		sleep 2.5;
		[-2, {tb3 globalChat "'0'ALPHA, MY PLATOON CONSOLIDATED ON OUR OBJECTIVE, HOLDING, OVER.'";}] call CBA_fnc_globalExecute;
		sleep 4.5;
		[-2, {tb3 globalChat "'1'0'ALPHA, 0'ALPHA. ROGER, OUT.'";}] call CBA_fnc_globalExecute;
		sleep 1;
	}
	else
	{
		sleep 10.5;
	};
	
	BLU_win = true;
	publicVariable "BLU_win";
	
tb3_netBusy = false;
publicVariable "tb3_netBusy";