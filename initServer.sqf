/*
 *	You can change MissionDate to some specific date to override date set in mission editor:
 *		a) array in format [YYYY,MM,DD,HH,mm] (e.g. [2012, 12, 31, 12, 45])
 *		b) date (to use editor set date)
 */
private _date = [
	date
	, "par_daytime" call BIS_fnc_getParamValue
	,["day","night","morning","midday","evening","midnight","random"] 
] call dzn_fnc_randomizeTime;

/*
 *	Date
 */
setDate _date;
MissionDate = date;
publicVariable "MissionDate";

/*
 *	Weather
 */
if (!isNil "dzn_fnc_setWeather") then {
	("par_weather" call BIS_fnc_getParamValue) spawn dzn_fnc_setWeather;
};


/*
 *	Collect Some Player connection data
 */
PlayerConnectedData = [];
PlayerConnectedEH = addMissionEventHandler ["PlayerConnected", {
	diag_log "Client connected";
	diag_log _this;
	// [ DirectPlayID, getPlayerUID player, name player, @bool, clientOwner ]
	PlayerConnectedData pushBack _this;
	publicVariable "PlayerConnectedData";
}];

/*
 *	Mission custom server code goes here:
 */
 // Delete C130 after all players exit them
[] spawn {
waitUntil {[TRG1, "", "< 1"] call dzn_fnc_ccPlayers };
{deleteVehicle _x}  forEach (synchronizedObjects C130Logic);
{deleteVehicle _x} forEach (synchronizedObjects C130Boxes);
};
fnc_startLoopSound = {
	waitUntil { time > 0 };

	while { [_this, 300] call dzn_fnc_isPlayerNear } do {
		playSound3D ["CUP\AirVehicles\CUP_AirVehicles_C130J\data\sound\int_engine_low.wss", _this];
		sleep 7.5;
	};
};

{        
	_x spawn fnc_startLoopSound;
} forEach (synchronizedObjects C130Logic);

[] spawn {
waitUntil {[TRG1_1, "", "> 0"] call dzn_fnc_ccPlayers };
[getPosATL Start1, getPosATL End1, 600, "NORMAL", "CUP_B_C130J_GB", west] call BIS_fnc_ambientFlyby;
[getPosATL Start2, getPosATL End2, 600, "NORMAL", "CUP_B_C130J_GB", west] call BIS_fnc_ambientFlyby;
};

[] spawn {
	ReinforcementCalled = false;
	publicVariable "ReinforcementCalled";
	
	waitUntil { sleep 10; [TRG_2, "", "> 3"] call dzn_fnc_ccPlayers };
	ReinforcementCalled = true;
	publicVariable "ReinforcementCalled";
	
	// Add timeout for objective defense after reinforcement called
	sleep 900;
	ObjectiveHeld = true;
	publicVariable "ObjectiveHeld";
};
