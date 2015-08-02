// wait until template is initialized
waitUntil { tb3_INIT };



// if the param was not defined, assume default viewdistance
if ( isNil "tb3_defaultVD" ) then { tb3_defaultVD = viewDistance };
if ( isNil "tb3_heliVD" ) then { tb3_heliVD = tb3_defaultVD };
if ( isNil "tb3_planeVD" ) then { tb3_planeVD = tb3_defaultVD };
if ( isNil "tb3_armorVD" ) then { tb3_armorVD = tb3_defaultVD };


while { true } do
{
	waitUntil { alive player };
	
	switch ( true ) do
	{
		case ( (vehicle player) isKindOf "Man" ): { setViewDistance tb3_defaultVD };
		case ( (vehicle player) isKindOf "Helicopter" ): { setViewDistance tb3_heliVD };
		case ( (vehicle player) isKindOf "Plane" ): { setViewDistance tb3_planeVD };
		case ( (vehicle player) isKindOf "Wheeled_APC" ): { setViewDistance tb3_armorVD };
		case ( (vehicle player) isKindOf "Tank" ): { setViewDistance tb3_armorVD };
		default { setViewDistance tb3_defaultVD }
	};
	
	_playerVehicle = vehicle player;
	waitUntil { _playerVehicle != (vehicle player) };
};