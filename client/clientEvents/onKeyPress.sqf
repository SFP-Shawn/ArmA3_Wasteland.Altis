// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: onKeyPress.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:
//  @Modification Shawn le 12/11/2014

private["_dikCode"];

_dikCode = _this select 1;

//--- Touche "P" --> Baisser le son
if(_dikCode == 25) then    
   {
			if (isnil "baisseson") then {baisseson = 1;};
			if (baisseson == 1) then 
			{
				hint "Ton son d'environement à été baissé, les canaux vocaux reste inchangés!"; baisseson = 0; 2 fadeSound 0.05;
			}else
			{
				hint "Ton son à été réinitialisé à sa valeur d'origine."; baisseson = 1; 2 fadeSound 1;
			};
   };

private ["_key", "_shift", "_ctrl", "_alt", "_handled"];

_key = _this select 1;
_shift = _this select 2;
_ctrl = _this select 3;
_alt = _this select 4;

_handled = false;

switch (true) do
{
	// U key
	case (_key == 22):
	{
		execVM "client\systems\adminPanel\checkAdmin.sqf";
	};

	// Tilde (key above Tab)
	case (_key == 41):
	{
		[] spawn loadPlayerMenu;
		_handled = true;
	};

	// Home & Windows keys
	case (_key in [199,219,220]):
	{
		showPlayerNames = if (isNil "showPlayerNames") then { true } else { !showPlayerNames };
	};

	case (_key in actionKeys "GetOver"):
	{
		if (alive player) then
		{
			_veh = vehicle player;

			if (_veh == player) then
			{
				if ((getPos player) select 2 > 2.5) then
				{
					openParachuteTimestamp = diag_tickTime;
					execVM "client\actions\openParachute.sqf";
					_handled = true;
				};
			}
			else
			{
				if (_veh isKindOf "ParachuteBase") then
				{
					// 1s cooldown after parachute is deployed so you don't start falling again if you double-tap the key
					if (isNil "openParachuteTimestamp" || {diag_tickTime - openParachuteTimestamp >= 1}) then
					{
						moveOut player;
						_veh spawn
						{
							sleep 1;
							deleteVehicle _this;
						};
					};
				};
			};
		};
	};

	// Scoreboard
	case (_key in actionKeys "NetworkStats"):
	{
		if (_key != 25 || // 25 = P
		   ((!_ctrl || {!(486539289 in actionKeys "NetworkPlayers") && isNil "TFAR_fnc_TaskForceArrowheadRadioInit"}) && // 486539289 = Left Ctrl + P
		   (!_shift || {!(704643042 in actionKeys "NetworkPlayers")}))) then // 704643042 = Left Shift + P
		{
			if (alive player && isNull (uiNamespace getVariable ["ScoreGUI", displayNull])) then
			{
				call loadScoreboard;
			};

			_handled = true;
		};
	};
};

_handled
