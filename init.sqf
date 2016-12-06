/*
	Author: Raychan
*/

// Gruppen Zuordnung
[] execvm "scripts\gruppeninit\gruppinit.sqf";

// Fahrzeugbeleuchtung
[] execVM "scripts\Intlight\IntLight.sqf";

//Spring-Animation
[] execvm "scripts\jump\jump.sqf";

//Trainingsplatz Zielscheiben übung
[] execVM "scripts\PopUpTarget\aktivierungsman.sqf";

//Teleport
if (!isDedicated) then {waitUntil {!isNull player && isPlayer player};};
//Funktion "waitUntil" im Script "initplayerlocal.sqf"
//Ende Teleport