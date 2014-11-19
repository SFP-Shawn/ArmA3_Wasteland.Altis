// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
{ deleteVehicle (_x select 0) } forEach (call findHackedVehicles);

player commandChat "Tout les Vehicules hacke on ete supprime";

closeDialog 0;
execVM "client\systems\adminPanel\vehicleManagement.sqf";
