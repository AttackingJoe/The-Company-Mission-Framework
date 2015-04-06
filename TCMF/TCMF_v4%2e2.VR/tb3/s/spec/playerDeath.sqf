_has_spec = false;
_array = ["A man has to be alert all the time if he expects to keep on breathing. If not, some son-of-a-bitch will sneak up behind him and beat him to death with a sock full of shit. - George S Patton", "pears", "I'm not afraid of death; I just don't want to be there when it happens. 
― Woody Allen", "The fear of death follows from the fear of life. A man who lives fully is prepared to die at any time.
― Mark Twain","A thing is not necessarily true because a man dies for it. 
― Oscar Wilde","It is said that your life flashes before your eyes just before you die. That is true, it's called Life. 
― Terry Pratchett","I do not fear death. I had been dead for billions and billions of years before I was born, and had not suffered the slightest inconvenience from it.
― Mark Twain","We shall defend our island whatever the cost may be. We shall fight on beaches, landing grounds, in fields, in streets and on the hills. We shall never surrender. - Winston Churchill.","I know not with what weapons World War III will be fought, but World War IV will be fought with sticks and stones. -Albert Einstein","United in this determination and with unshakable faith in the cause for which we fight, we will, with God's help, go forward to our greatest victory. - General Dwight D. Eisenhower","I have nothing to offer but blood, toil, tears and sweat. - Winston Churchill.","Goddam it, you'll never get the Purple Heart hiding in a foxhole! Follow me! - Captain Henry P. Jim Crowe","Casualties many; Percentage of dead not known; Combat efficiency; we are winning. - Colonel David M. Shoup"];
_message = _array select floor random count _array;;

sleep 5;

if (!local player) exitWith {};

while {true} do
{
	while {alive player} do {sleep 0.2};
		
	titleText [_message, "BLACK", 3];
	titleText [_message, "BLACK FADED", 2];
    
    if (!_has_spec) then { [player] join grpNull; };
	
 	while {!alive player} do {sleep 0.2};
	
	player setPos (getpos specpen);
        if (!_has_spec) then { 
			[player, true] call acre_api_fnc_setSpectator;
			[] execVM "tb3\s\spec\specta.sqf"; 
			_has_spec = true; 
		} else { 
			titleText [_message, "BLACK IN", 0.2]; 
		};
	player setCaptive true;
	player addEventHandler ["HandleDamage", {false}];
	{player removeMagazine _x} forEach magazines player;
	removeAllWeapons player;
	removeAllItems player;
};
//if (true) exitWith {};

