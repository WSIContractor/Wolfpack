// City patrols/Fortify Spawn on Demand / Despawn
// Cities, 500/750 radius

if (!ADF_HC_execute) exitWith {}; // HC Autodetect. If no HC present execute on the Server.

// tCities1
if ((isNil "g1a") && (isNil "g1b") && (isNil "g1c") && (_this select 0 == "1A")) exitWith {
	g1a = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g1a, getPos tCities1, 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this spawn CBA_fnc_taskSearchHouse", [1,4,9]] call CBA_fnc_taskPatrol; sleep 0.05;
	g1b = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g1b, getPos tCities1, 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this spawn CBA_fnc_taskSearchHouse", [1,4,9]] call CBA_fnc_taskPatrol; sleep 0.05;	
	g1c = [getPos tCities1, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup;
	[g1c, getPos tCities1, 200, 3, true] call CBA_fnc_taskDefend;
};
if (_this select 0 == "1B") exitWith {
	if !(isNil "g1a") then {{deleteVehicle _x} forEach units g1a; deleteGroup g1a; g1a = nil}; sleep 0.05;
	if !(isNil "g1b") then {{deleteVehicle _x} forEach units g1b; deleteGroup g1b; g1b = nil}; sleep 0.05;
	if !(isNil "g1c") then {{deleteVehicle _x} forEach units g1c; deleteGroup g1c; g1c = nil}; sleep 0.05;
};

// tCities2
if ((isNil "g2a") && (isNil "g2b") && (isNil "g2c") && (_this select 0 == "2A")) exitWith {
	g2a = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g2a, getPos tCities2, 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this spawn CBA_fnc_taskSearchHouse", [1,4,9]] call CBA_fnc_taskPatrol; sleep 0.05;
	g2b = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g2b, getPos tCities2, 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this spawn CBA_fnc_taskSearchHouse", [1,4,9]] call CBA_fnc_taskPatrol; sleep 0.05;	
	g2c = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup; 
	[g2c, getPos tCities2, 500, 3, true] call CBA_fnc_taskDefend;
};
if (_this select 0 == "2B") exitWith {
	if !(isNil "g2a") then {{deleteVehicle _x} forEach units g2a; deleteGroup g2a; g2a = nil}; sleep 0.05;
	if !(isNil "g2b") then {{deleteVehicle _x} forEach units g2b; deleteGroup g2b; g2b = nil}; sleep 0.05;
	if !(isNil "g2c") then {{deleteVehicle _x} forEach units g2c; deleteGroup g2c; g2c = nil};
};

// tCities3
if ((isNil "g3a") && (isNil "g3b") && (isNil "g3c") && (_this select 0 == "3A")) exitWith {
	g3a = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g3a, getPos tCities2, 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this spawn CBA_fnc_taskSearchHouse", [1,4,9]] call CBA_fnc_taskPatrol; sleep 0.05;
	g3b = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfTeam")] call BIS_fnc_spawnGroup;
	[g3b, getPos tCities2, 300, 7, "MOVE", "SAFE", "YELLOW", "LIMITED", "COLUMN", "this spawn CBA_fnc_taskSearchHouse", [1,4,9]] call CBA_fnc_taskPatrol; sleep 0.05;	
	g3c = [getPos tCities2, EAST, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> "OIA_InfSquad")] call BIS_fnc_spawnGroup; 
	[g3c, getPos tCities2, 500, 3, true] call CBA_fnc_taskDefend;
};
if (_this select 0 == "3B") exitWith {
	if !(isNil "g3a") then {{deleteVehicle _x} forEach units g3a; deleteGroup g3a; g3a = nil}; sleep 0.05;
	if !(isNil "g3b") then {{deleteVehicle _x} forEach units g3b; deleteGroup g3b; g3b = nil}; sleep 0.05;
	if !(isNil "g3c") then {{deleteVehicle _x} forEach units g3c; deleteGroup g3c; g3c = nil};
};