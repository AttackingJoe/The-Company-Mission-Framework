// Create Initial stuff
	player setVariable ["BIS_noCoreConversations", true, false];
	0 fadeRadio 0;
	//enableRadio false; 

// Randomisation Elements 

	if (isServer) then {
		O_GRP1			= true;

		if (random 100 < 50) then {O_GRP1 = false};
	};

// AO script 
	["ao",specPen,200,false,false] execVM "scripts\ao.sqf";	
	
