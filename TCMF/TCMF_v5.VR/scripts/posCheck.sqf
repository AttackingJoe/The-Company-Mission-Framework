
	hint "Waiting 10 seconds...";

	sleep 5;

	_i = 0;
	_bldgs = 0;

	{
		while {_i < 1000} do {

			if ((_x buildingPos _i) select 0 > 0) then {

				_labelText = str(_i);

				_temp = "TargetP_Inf2_F" createVehicle (_x buildingPos _i);
				_temp setPos (_x buildingPos _i);
				[_labelText,[(_x buildingPos _i select 0), (_x buildingPos _i select 1), (_x buildingPos _i select 2)],10,0] spawn bis_fnc_3Dcredits;

				_i = _i + 1;
			}
			else {

				_i = 1100;
			};
		};

		_i = 0;

		_bldgs = _bldgs + 1;
		hint format ["Done %1 of %2",_bldgs,count (nearestObjects [player, ["Building"], 50])];

	} forEach nearestObjects [player, ["Building"], 50];

	hint "ALL DONE!";