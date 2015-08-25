// Move player 3m behind his group leader or into leader's vehicle
// By Megagoth1702, thanks to Sandiford and Cheesenoggin, slightly modified by ZZEZ

private ["_leader","_LX","_LY","_LZ"];

	_leader = leader player;

	if (_leader == player) exitWith {hintSilent format["You are the group leader, you cannot teleport to yourself.",player]};
	
	if (_leader distance specPen < 100) exitWith {hintSilent format["There is no-one left to teleport to.",player]};

	if (vehicle _leader == _leader) then
	{
		_LX = (getpos _leader select 0) + (3*sin ((getDir _leader) -180));
		_LY = (getpos _leader select 1) + (3*cos ((getDir _leader) -180));
		_LZ = (getpos _leader select 2);

		player setpos [_LX,_LY,_LZ];
		player setUnitPos "DOWN";
	}
	else
	{
		if ((vehicle _leader) emptyPositions "cargo" == 0) then
		{
			hintSilent format["There is no room left in the leaders vehicle.",player]
		}
		else
		{
			player moveincargo vehicle _leader;
		};
	};