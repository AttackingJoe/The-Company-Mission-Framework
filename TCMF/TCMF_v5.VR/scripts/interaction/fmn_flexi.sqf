/**************
Famine FlexiMenu
Allows mission makers to easily add self-interact buttons via a simple 4 or 5 parameter function

You must call this file in order to set up the functions, make sure to do this before trying to use the functions:
call compile preprocessFile "scripts\interaction\fmn_flexi.sqf";

Note: Do not call this file if you are using my simple objectives (fmn_obj.sqf), it makes the call automatically and will probably break things if you run it twice!

To add top level menus use:
["Button Text","code to execute" OR ["SubMenuName"],"condition of button showing"] call fmn_flexi_addMain;

To add a sub menu when you use ["SubMenuName"] above:
["SubMenuName", "Button Text", "code to execute" OR ["SubMenuName"], "condition of button showing", "Sub Menu Title"] call fmn_flexi_addSub

You can add infinitely deep sub menus in this manner

(begin example)
	["Radio >",["RadioMenu"], '[player, "ACRE_PRC148"] call acre_api_fnc_hasKindOfRadio'] call fmn_flexi_addMain;
	["RadioMenu", "Report in: Obj Alpha", "['alpha'] spawn myCompiledScript;", "((player distance (getMarkerPos 'objalpha')) < 20) and (not objAlphaComplete)", "Radio Message"] call fmn_flexi_addSub;
(end example)
**************/

if (isDedicated) exitWith {};
if (not isNil "fmn_flexi_setupComplete") then {
	//Modified from ACE Wounds
	#include "\x\cba\addons\main\script_component.hpp"
	#include "\a3\editor_f\Data\Scripts\dikCodes.h"

	private ["_menuDef", "_menuName", "_menuRsc", "_menus","_mainMenuItems","_fmn_buildSub","_availableSubs","_subPos"];

	PARAMS_2(_target,_params);

	_menuName = "";
	_menuRsc = "popup";

	if (typeName _params == typeName []) then {
		if (count _params < 1) exitWith {diag_log format["Error: Invalid params: %1, %2", _this, __FILE__]};
		_menuName = _params select 0;
		_menuRsc = if (count _params > 1) then {_params select 1} else {_menuRsc};
	} else {
		_menuName = _params;
	};
	_menus = [];
	_mainMenuItems = [];
	
	//-----------------------------------------------------------------------------

	if (_menuName == "main") then {
		{
			_mainMenuItems = _mainMenuItems + [[_x select 0,
			if (typeName (_x select 1) == "STRING") then {_x select 1} else {""},
			"", "", 
			if (typeName (_x select 1) == "ARRAY") then {["scripts\interaction\fmn_flexi.sqf", (_x select 1) select 0, 1]} else {""},
			-1, 1, call compile (_x select 2)]];
		} forEach fmn_flexi_main;
	
		_menus set [count _menus,
			[
				["main", "Interaction", _menuRsc],_mainMenuItems
			]
		];
	};
	
	if (count fmn_flexi_sub != 0) then {
	
		_fmn_buildSub = {
			private "_subMenu";
			_subMenu = [];
			{
				if (_x select 0 == _this) then {
					_subMenu = _subMenu + [[_x select 1,
					if (typeName (_x select 2) == "STRING") then {_x select 2} else {""},
					"","",
					if (typeName (_x select 2) == "ARRAY") then {["scripts\interaction\fmn_flexi.sqf", (_x select 2) select 0, 1]} else {""},
					-1, 1, call compile (_x select 3)]];
				};
			} forEach fmn_flexi_sub;
			_subMenu
		};
		
		_availableSubs = [];
		{_availableSubs = _availableSubs + [_x select 0]} forEach fmn_flexi_sub;
		_subPos = _availableSubs find _menuName;
		
		if (_subPos != -1) then {
			_menus set [count _menus,
				[
					[(fmn_flexi_sub select _subPos) select 0, (fmn_flexi_sub select _subPos) select 4, _menuRsc],((_availableSubs select _subPos) call _fmn_buildSub)
				]
			];
		};
	};		

	//-----------------------------------------------------------------------------

	_menuDef = [];
	{
		if (_x select 0 select 0 == _menuName) exitWith {_menuDef = _x};
	} forEach _menus;

	if (count _menuDef == 0) then {
		hintC format ["Error: Menu not found: %1\n%2\n%3", str _menuName, if (_menuName == "") then {_this} else {""}, __FILE__];
		diag_log format ["Error: Menu not found: %1, %2, %3", str _menuName, _params, __FILE__];
	};

	_menuDef
} else {
	fmn_flexi_main = [];
	fmn_flexi_sub = [];
	fmn_flexi_addMain = 
	{
		//usage: ["Button Text","code to execute" OR ["SubMenuName"],"condition of button showing as code"] call fmn_flexi_addMain;
		fmn_flexi_main = fmn_flexi_main + [_this];
	};
	
	fmn_flexi_addSub = 
	{
		//usage: ["SubMenuName", "Button Text", "code to execute" OR ["SubMenuName"], "condition of button showing as code", "Sub Menu Title"] call fmn_flexi_addSub
		fmn_flexi_sub = fmn_flexi_sub + [_this];
	};
	
	0 spawn {
		fmn_flexi_setupComplete = true;
		["player", [DIK_APPS], -1, ["scripts\interaction\fmn_flexi.sqf", "main"]] call CBA_ui_fnc_add;
	};
};