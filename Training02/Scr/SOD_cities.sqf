// City patrols/Fortify Spawn on Demand / Despawn
// Cities, 500/750 radius

if (!ADF_HC_execute) exitWith {}; // HC Autodetect. If no HC present execute on the Server.
params ["_t"];

// tCities1
if ((isNil "g1a") && (isNil "g1b") && (isNil "g1c") && (_t == "1A")) exitWith {
	g1a = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g1a, getPos tCities1, 300, 3, "MOVE", "SAFE", "RED", "LIMITED","FILE", 5] call ADF_fnc_footPatrol;	
	g1b = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g1b, getPos tCities1, 300, 3, "MOVE", "SAFE", "RED", "LIMITED","FILE", 5] call ADF_fnc_footPatrol;
	g1c = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
	[g1c, getPos tCities1, 200, 3, true] call ADF_fnc_defendArea;
};
if (_t == "1B") exitWith {
	if !(isNil "g1a") then {{deleteVehicle _x} forEach units g1a; deleteGroup g1a; g1a = nil};
	if !(isNil "g1b") then {{deleteVehicle _x} forEach units g1b; deleteGroup g1b; g1b = nil};
	if !(isNil "g1c") then {{deleteVehicle _x} forEach units g1c; deleteGroup g1c; g1c = nil};
};

// tCities2
if ((isNil "g2a") && (isNil "g2b") && (isNil "g2c") && (_t == "2A")) exitWith {
	g2a = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g2a, getPos tCities2, 300, 3, "MOVE", "SAFE", "RED", "LIMITED","FILE", 5] call ADF_fnc_footPatrol;
	g2b = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g2b, getPos tCities2, 300, 3, "MOVE", "SAFE", "RED", "LIMITED","FILE", 5] call ADF_fnc_footPatrol;
	g2c = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup; 
	[g2c, getPos tCities2, 500, 3, true] call ADF_fnc_defendArea;
};
if (_t == "2B") exitWith {
	if !(isNil "g2a") then {{deleteVehicle _x} forEach units g2a; deleteGroup g2a; g2a = nil};
	if !(isNil "g2b") then {{deleteVehicle _x} forEach units g2b; deleteGroup g2b; g2b = nil};
	if !(isNil "g2c") then {{deleteVehicle _x} forEach units g2c; deleteGroup g2c; g2c = nil};
};
