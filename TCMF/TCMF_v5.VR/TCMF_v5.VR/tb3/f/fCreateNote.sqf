
if ( !isDedicated ) then
{
	_this spawn 
	{
		_mixedArray = _this select 0;
		_subject = (_this select 1) select 0;
		_message = (_this select 1) select 1;
		
		waitUntil { TB3_INIT };
		
		if ( [player, _mixedArray] call tb3_fInMixedArray ) then
		{
			player createDiaryRecord ["Diary", [_subject, _message]]; 
		};
	};
};

true // ret
