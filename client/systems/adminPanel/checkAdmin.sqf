// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: checkAdmin.sqf
//	@file Author: [404] Deadbeat, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

private ["_uid","_handle"];
_uid = getPlayerUID player;

if (!isNull (uiNamespace getVariable ["AdminMenu", displayNull]) && player getVariable ["FAR_isUnconscious", 0] == 0) exitWith {};

switch (true) do
{
	case ([_uid, serverOwners] call isAdmin || isServer):
	{
		execVM "client\systems\adminPanel\loadServerAdministratorMenu.sqf";
		hint "Salut Boss";
	};
	case ([_uid, highAdmins] call isAdmin):
	{
		execVM "client\systems\adminPanel\loadAdministratorMenu.sqf";
		hint "Bonjour co-admin";
	};
	case ([_uid, lowAdmins] call isAdmin):
	{
		execVM "client\systems\adminPanel\loadModeratorMenu.sqf";
		hint "Bonjour Moderateur";
	};
	case (serverCommandAvailable "#kick"):
	{
		execVM "client\systems\adminPanel\loadServerAdministratorMenu.sqf";
		hint "Salut Boss";
	};
};
