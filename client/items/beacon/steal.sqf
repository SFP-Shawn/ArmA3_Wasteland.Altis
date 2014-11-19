// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//@file Version: 1.0
//@file Name: steal.sqf
//@file Author: MercyfulFate
//@file Created: 21/7/2013 16:00
//@file Description: Steal the nearest Spawn Beacon
//@file Argument: [player, player, _action, []] the standard "called by an action" values

#define ANIM "AinvPknlMstpSlayWrflDnon_medic"
#define ERR_IN_VEHICLE "Echec impossible de voler la balise de réapparition! Tu ne peux pas faire ça dans un véhicule."
#define ERR_NOT_OPP_SIDE "Echec impossible de voler la balise de réapparition! Quelqu'un d'autre a terminé de voler avant toi."
#define ERR_TOO_FAR_AWAY "Echec impossible de voler la balise de réapparition! Tu es trop loin."
#define ERR_CANCELLED "Vole de la balise de réapparition annulé"
#define ERR_SOMEONE_ELSE_TAKEN "Emballage de la balise de réapparition a échoué! Quelqu'un d'autre à terminé de l'emballer avant de toi."
private ["_beacon", "_error", "_isIndie", "_ownerSide", "_ownerUID", "_hasFailed", "_success"];
_beacon = [] call mf_items_spawn_beacon_nearest;
_error = [_beacon] call mf_items_spawn_beacon_can_steal;
if (_error != "") exitWith {[_error, 5] call mf_notify_client};

_isIndie = !(playerSide in [BLUFOR,OPFOR]);
_ownerSide = _beacon getVariable ["side", sideUnknown];
_ownerUID = _beacon getVariable ["ownerUID", "0"];

_hasFailed = {
	private ["_progress", "_beacon", "_failed", "_text"];
	_progress = _this select 0;
	_beacon = _this select 1;
	_text = "";
	_failed = true;
	switch (true) do {
		case (!alive player): {};
		case (isNull _beacon): {_text = ERR_SOMEONE_ELSE_TAKEN};
		case (vehicle player != player): {_text = ERR_IN_VEHICLE};
		case ((!_isIndie && _ownerSide == playerSide) || (_isIndie && {{getPlayerUID _x == _ownerUID} count units player > 0})): {_text = ERR_NOT_OPP_SIDE};
		case (player distance _beacon > 5): {_text = ERR_TOO_FAR_AWAY;};
		case (doCancelAction): {doCancelAction = false; _text = ERR_CANCELLED;};
		default {
			_text = format["Vole complèté dans %1%2", round(_progress*100), "%"];
			_failed = false;
		};
	};
	[_failed, _text];
};
_success =  [MF_ITEMS_SPAWN_BEACON_STEAL_DURATION, ANIM, _hasFailed, [_beacon]] call a3w_actions_start;

if (_success) then {
	pvar_spawn_beacons = pvar_spawn_beacons - [_beacon];
	publicVariable "pvar_spawn_beacons";
	deleteVehicle _beacon;
	[MF_ITEMS_SPAWN_BEACON, 1] call mf_inventory_add;
	["Tu as bien reussi à voler la balise de réapparition",5] call mf_notify_client;
};
