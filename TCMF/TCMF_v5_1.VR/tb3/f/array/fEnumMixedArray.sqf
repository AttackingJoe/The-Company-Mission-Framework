private["_arrIn", "_arrOut", "_begin", "_end"];


_arrIn = _this;

_begin = diag_tickTime;
_arrOut = [];
{
	switch ( typeName(_x) ) do 
	{
		case "SIDE":
		{
			_side = _x;
			{
				if ( side _x == _side ) then 
				{
					_arrOut set [count _arrOut, _x];
				};
			} forEach allUnits;
		};
		
		case "SCALAR":
		{
			_side = switch ( _x ) do
			{
				case 0: { EAST };
				case 1: { WEST };
				case 2: { RESISTANCE };
				case 3: { CIVILIAN };
			};
			{
				if ( side _x == _side ) then 
				{
					_arrOut set [count _arrOut, _x];
				};
			} forEach allUnits;
		};

		case "STRING": // check for faction and/or classname
		{
			_string = _x;
			switch ( true ) do
			{
				case (isClass(configFile >> "CfgFactionClasses" >> _string)): // faction
				{
					{
						if ( faction _x == _string ) then 
						{
							_arrOut set [count _arrOut, _x];
						};
					} forEach allUnits;
				};
				
				case (isClass(configFile >> "CfgVehicles" >> _string)): // classname
				{
					{
						if ( typeOf _x == _string ) then 
						{
							_arrOut set [count _arrOut, _x];
						};
					} forEach allUnits;
				};
				
				default 
				{
					_variable = call compile _x;
					
					switch ( typeName _variable ) do
					{
						case "GROUP":
						{
							if ( !(isNull _variable) ) then
							{
								{
									_arrOut set [count _arrOut, _x];
								} forEach (units _variable);
							};
						};
						case "OBJECT":
						{
							if ( !(isNull _variable) ) then
							{
								_arrOut set [count _arrOut, _variable];
							};
						};
					};
				};
			};
		};

		case "GROUP":
		{
			if ( !(isNull _x) ) then
			{
				{
					_arrOut set [count _arrOut, _x];
				} forEach (units _x);
			};
		};
		case "OBJECT":
		{
			if ( !(isNull _x) ) then
			{
				_arrOut set [count _arrOut, _x];
			};
		};
		default {  }
	};
} forEach _arrIn;


_end = diag_tickTime;

_arrOut // ret
