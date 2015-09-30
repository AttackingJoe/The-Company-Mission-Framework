private ["_params", "_paramCount", "_paramName", "_paramValue", "_paramCode", "_i"];



// make a paramsarray if in single-player
if ( !isMultiplayer ) then { paramsArray = [] };

_params = (missionConfigFile >> "Params");
_paramCount = count _params;
for [ { _i = 0 }, { _i < _paramCount }, { _i = _i + 1 } ] do
{
	_paramName =(configName (_params select _i));
	if ( isMultiplayer ) then 
	{ 
		_paramValue = (paramsArray select _i);
	} else 
	{ 
		// in singleplayer, grab the default param value, and put it in the paramsArray ourselves
		_paramValue = getNumber (_params >> _paramName >> "default");
		paramsArray set [_i, _paramValue];
	}; 

	// n00b check
	if ( (isText (_params >> _paramName >> "code")) ) then
	{
		// compile the parameter code together with the param value(s)
		_paramCode = format[(getText (_params >> _paramName >> "code")), _paramValue];
		call compile _paramCode;
	} else
	{};
};


true // ret