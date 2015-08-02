// props to killswitch 

private ["_arrIn", "_arrOut"];


_arrIn = _this select 0;
_arrOut = [];

while { count _arrIn > 0 } do
{
	_arrOut set [count _arrOut, [_arrIn select 0, ({_x == _arrIn select 0} count _arrIn)] ];
	_arrIn = _arrIn - [_arrIn select 0];
};

_arrOut // ret
