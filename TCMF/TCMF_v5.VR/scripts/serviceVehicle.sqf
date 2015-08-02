//Vehicle Repair / Rearm / Fuel Transfer
        //Example: [player,[2,1.0],1,1,false] execVM "serviceVehicle.sqf";                //Example for vehicle usage
        //Example: [thisList,[2,1.0],1,1,false] execVM "serviceVehicle.sqf";        //Example for trigger usage

        if (!isServer) exitWith {};

        private ["_src","_srcRefuel","_srcReammo","_srcRepair","_srcVeh","_veh","_vehArray","_vehProgress","_vehType","_srcFuel","_fuelLevel","_damage","_magazines","_magArray","_removed","_count","_srcThreshold","_srcRefuelType","_srcRefuelAmt"];

        #define ACK(TGT,TYPE,SRC,MSG) \
        [-1, {(_this select 0) vehicleChat format [MSG, (_this select 1)]; (_this select 2) vehicleChat format [MSG, (_this select 1)]}, [TGT,TYPE,SRC]] call CBA_fnc_globalExecute;

        #define TRANSFUEL(TGT,TGTAMT,SRC,SRCAMT) \
        [-2, {(_this select 0) setFuel (_this select 1); (_this select 2) setFuel (_this select 3)}, [TGT,TGTAMT,SRC,SRCAMT]] call CBA_fnc_globalExecute;

        _src                 = _this select 0;        //Unit in Service Vehicle, or thisList if Trigger
        _srcRefuel        = _this select 1;        //Array:         [0,0.1] - 0,1,2 = None,Transfer,Refuel, 0.1 = Amount
        _srcReammo        = _this select 2;        //Number:         0,1        - 0 = None, 1 = Rearm
        _srcRepair        = _this select 3;        //Number:         0,1        - 0 = None, 1 = Repair
        _srcAir         = _this select 4;        //Boolean:         Air Vehicles Allowed?

        _srcVeh         = "";
        if (typeName _src == "OBJECT") then {
                _srcVeh                = (vehicle _src);        //Service Vehicle
        } else {
                _srcVeh = "Land_HelipadEmpty_F" createVehicle (position (_src select 0));
                _srcVeh setPosATL (getPosATL (_src select 0));
        };

        _vehArray         = [];
        if (_srcAir) then {
                _vehArray = ((nearestObjects [_srcVeh, ["LandVehicle","Air","Ship"],10]) - [_srcVeh])
        } else {
                _vehArray = ((nearestObjects [_srcVeh, ["LandVehicle","Ship"],10]) - [_srcVeh])
        };

        if (count _vehArray == 0) exitWith {[-1, {_this vehicleChat format ["No valid vehicles nearby!"]}, _srcVeh] call CBA_fnc_globalExecute};

        _veh = _vehArray select 0;
        _vehType = getText(configFile>>"CfgVehicles">>typeOf _veh>>"DisplayName");

        _vehProgress = _veh getVariable ["tin_repairProgress",false];
        if (_vehProgress) exitWith {[-1, {_this vehicleChat format ["Repair already in progress!"]}, _srcVeh] call CBA_fnc_globalExecute};

        _veh setVariable ["tin_repairProgress",true,true];

        _srcFuel = fuel _srcVeh;
        _fuelLevel = fuel _veh;
        _damage = getDammage _veh;

        if (_veh isKindOf "UAV_01_base_F" || _veh isKindOf "UAV" || _veh isKindOf "UGV_01_base_F") then {
                //Just the service vehicle; UAVs do not like being out of fuel at present and will become unresponsive if defueled.
                [-2, {(_this select 0) setFuel (_this select 1);}, [_srcVeh,0]] call CBA_fnc_globalExecute;
        } else {
                TRANSFUEL(_veh,0,_srcVeh,0);
        };

        ACK(_veh,_vehType,_srcVeh,"Beginning service on %1. Stand by...");

        ///// Rearming Module //////////////////
        if (_srcReammo == 1) then {
                _magazines = getArray(configFile >> "CfgVehicles" >> typeOf _veh >> "magazines");

                tin_reload = {
                        _magArray = _this select 0;

                        _removed = [];
                        {
                                if (!(_x in _removed)) then {
                                        [-2, {(_this select 0) removeMagazines (_this select 1)},[_veh,_x]] call CBA_fnc_globalExecute;
                                        _removed = _removed + [_x];
                                };
                        } forEach _magArray;

                        {
                                ACK(_veh,_x,_srcVeh,"Reloading %1");
                                sleep 0.1;
                                [-2, {(_this select 0) addMagazine (_this select 1)},[_veh,_x]] call CBA_fnc_globalExecute;
                        } forEach _magArray;
                };

                if (count _magazines > 0) then {
                        [_magazines] call tin_reload;
                };

                _count = count (configFile >> "CfgVehicles" >> typeOf _veh >> "Turrets");

                if (_count > 0) then {
                        for "_i" from 0 to (_count - 1) do {
                                scopeName "xx_reload2_xx";
                                _config = (configFile >> "CfgVehicles" >> typeOf _veh >> "Turrets") select _i;
                                _magazines = getArray(_config >> "magazines");

                                [_magazines] call tin_reload;

                                _count_other = count (_config >> "Turrets");
                                
                                if (_count_other > 0) then {
                                        for "_i" from 0 to (_count_other - 1) do {
                                                _config2 = (_config >> "Turrets") select _i;
                                                _magazines = getArray(_config2 >> "magazines");

                                                [_magazines] call tin_reload;
                                        };
                                };
                        };
                };

                for "_x" from 25 to 100 step 25 do {sleep 5; ACK(_veh,_x,_srcVeh,"Rearming (%1%)...");};

                _veh setVehicleAmmo 1;        // Reload turrets / drivers magazine
                ACK(_veh,_vehType,_srcVeh,"%1 Rearmed!");

                sleep 5;
        };
        ////////////////////////////////////////

        ///// Repair Module ////////////////////
        if (_srcRepair == 1) then {
                while {_damage > 0} do {
                        sleep 2;

                        _percentage = 100 - (_damage * 100);
                        ACK(_veh,floor _percentage,_srcVeh,"Repairing (%1%)...");

                        if ((_damage - 0.01) <= 0) then {
                                [-2, {_this setDamage 0}, _veh] call CBA_fnc_globalExecute;
                                _damage = 0;
                        } else {
                                [-2, {(_this select 0) setDamage ((_this select 1) - 0.01)}, [_veh,_damage]] call CBA_fnc_globalExecute;
                                _damage = _damage - 0.01;
                        };
                };

                ACK(_veh,_vehType,_srcVeh,"%1 Repaired!");

                sleep 5;
        };
        ////////////////////////////////////////

        ///// Refuel Module ////////////////////
        _srcRefuelType = _srcRefuel select 0;
        _srcRefuelAmt = _srcRefuel select 1;

        if (_srcRefuelType == 1) then {
                _srcThreshold = _srcRefuelAmt + 0.05;

                if (_srcFuel > _srcThreshold) then {
                        if (_fuelLevel < _srcRefuelAmt) then {
                                while {_fuelLevel < _srcRefuelAmt} do {
                                        sleep 2;

                                        _percentage = (_fuelLevel * 100);
                                        ACK(_veh,floor _percentage,_srcVeh,"Transferring fuel (%1%)...");

                                        if ((_fuelLevel + 0.01) >= _srcRefuelAmt) then {
                                                TRANSFUEL(_veh,_srcRefuelAmt,_srcVeh,_srcFuel);
                                                _fuelLevel = 1;
                                        } else {
                                                _fuelLevel = _fuelLevel + 0.01;
                                                _srcFuel = _srcFuel - 0.01;
                                        };
                                };

                                ACK(_veh,_vehType,_srcVeh,"Refueling complete!");

                        } else {
                                ACK(_veh,_vehType,_srcVeh,"Receiving vehicle fuel over threshold, none transferred.");
                                TRANSFUEL(_veh,_fuelLevel,_srcVeh,_srcFuel);
                        };
                } else {
                        ACK(_veh,_vehType,_srcVeh,"Service vehicle fuel low, none transferred.");
                        TRANSFUEL(_veh,_fuelLevel,_srcVeh,_srcFuel);
                };
        };

        if (_srcRefuelType == 2) then {
                while {_fuelLevel < _srcRefuelAmt} do {
                        sleep 2;

                        _percentage = (_fuelLevel * 100);
                        ACK(_veh,floor _percentage,_srcVeh,"Refueling (%1%)...");

                        if ((_fuelLevel + 0.01) >= _srcRefuelAmt) then {
                                [-2, {(_this select 0) setFuel (_this select 1);}, [_veh,_srcRefuelAmt]] call CBA_fnc_globalExecute;
                                _fuelLevel = 1;
                        } else {
                                _fuelLevel = _fuelLevel + 0.01;
                        };
                };

                ACK(_veh,_vehType,_srcVeh,"%1 Refueling complete!");
        };
        ////////////////////////////////////////

        sleep 2;

        ACK(_veh,_vehType,_srcVeh,"%1 successfully serviced!");
        TRANSFUEL(_veh,_fuelLevel,_srcVeh,_srcFuel);
        
        if (_srcVeh isKindOf "Land_HelipadEmpty_F") then {deleteVehicle _srcVeh};
        
        _veh setVariable ["tin_repairProgress",false,true];

