_weatherParam = _this select 0;


if ( isServer ) then
{
	tb3_weather = if ( _weatherParam == 99 ) then // if random weather was chosen
	{
		_overcast 	= random(1);
		_rain 		= if (_overcast >= 0.6) then { random(0.6) } else { 0 };
		_fog 		= if (_rain >= 0.25) then { (random(0.4) + 0.4) } else { 0 };
		_wind		= random(1);
		_waves		= random(1);
		[_overcast, _rain, _fog, _wind, _waves]
	} else
	{
		switch ( (_this select 0) ) do
		{	// syntax: [overCast, rain, fog, wind, waves]
			case 0: { [0, 0, 0, 0, 0 ] }; // Clear
			case 1: { [0.6, 0, 0.1, 0, 0] }; // Cloudy
			case 2: { [0.85, 0.4, 0.35, 0, 0] }; // Light Rain
			case 3: { [0.95, 0.9, 0.6, 0, 0] }; // Heavy Rain
			case 4: { [0.6, 0, 0.8, 0, 0] }; // Light Fog
			case 5: { [0.6, 0, 0.95, 0, 0] }; // Heavy fog
			case 6: { [0.90, 0.85, 0.001, 0, 0] }; // Heavy Rain TB
			default { [0, 0, 0, 0, 0] };
		} 
	};
	
	publicVariable "tb3_weather";
} else
{
	waitUntil { !(isNil "tb3_weather") }; // wait until clients received the weather values from the server
};

0 setOvercast (tb3_weather select 0);
0 setRain (tb3_weather select 1);
0 setFog (tb3_weather select 2);
0 setWindStr (tb3_weather select 3);
0 setWaves (tb3_weather select 4);

sleep 2;

// this will make sure the weather doesnt change immediately from the chosen weather params
900 setOvercast (tb3_weather select 0);
900 setRain (tb3_weather select 1);
900 setFog (tb3_weather select 2);
900 setWindStr (tb3_weather select 3);
900 setWaves (tb3_weather select 4);

// every 5 to 15 minutes, reset the weather back to chosen values on the server
if ( isServer ) then 
{
	[] spawn {
		while { true } do {
			_changeTime = 240 + random(600);
			sleep _changeTime;
			
			_changeTime setOvercast (tb3_weather select 0);
			_changeTime setRain (tb3_weather select 1);
			_changeTime setFog (tb3_weather select 2);
			_changeTime setWindStr (tb3_weather select 3);
			_changeTime setWaves (tb3_weather select 4);

		};
	};
};
