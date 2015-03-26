// By Kenquinn
// Created 19/8/2012
// Shares knowledge between AI groups
// Quick and dirty

waitUntil {
    sleep 10;
    _groups = allGroups;
    _unit = objNull;
    {
        if (side _x == east) then {
            _group = _x;
            _groups = _groups - [_group];
            {
                if (side _x == east) then {
                    _secondGroup = _x;
                    {
                        if (_group knowsAbout _x > _secondGroup knowsAbout _x and _group knowsAbout _x > 1 and _secondGroup knowsAbout _x < 1.5 and (leader _group distance _x) < 800) then {
                            _secondGroup reveal [_x, _group knowsAbout _x];
                        };
                    } forEach playableUnits;
                };
            } forEach _groups;
        };
    } forEach _groups;

    false
};