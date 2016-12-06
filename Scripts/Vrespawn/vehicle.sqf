/*
	Author: Raychan
*/

//Fahr- und Flugzeug Respawn
/*
Das kommt in die Fahrzeug Init:
	_fahrzeug = [<Objekt>, <Nummer>, <Nummer>, <Code>] execVM "vrespawn.sqf"
zb.
	_fahrzeug = [this, 150, 30] execVM "vrespawn.sqf"

Einstellungen:
	- _this select 0: <Objekt> - Fahrzeug
	- _this select 1: <Nummer> - Wieviel Zeit ein verlassendes Fahrzeug respawn soll (in sekunden)
	- _this select 2: <Nummer> - Wieviel Zeit ein zerstörtes Fahrzeug respawn soll (in sekunden)
	- _this select 3: <Code>   - Die gespeicherte Init des Fahrzeuges
*/

//SERVER CODE
if ( ! ( isServer ) ) exitWith {};	

//Variablen auf local beschränken
private ["_fahrzeug","_leerzeit","_todeszeit","_fahrzeugInit","_FZ_Name","_FZ_richtung","_FZ_Position","_FZ_type","_verlassen","_tot"];

//Einstellungen Festlegen
_fahrzeug =   	[_this, 0, objNull, [objNull]] call BIS_fnc_param; 		//Objekt
_leerzeit =   	[_this, 1, 60, [0]] call BIS_fnc_param; 				//Verlassen Zeit
_todeszeit =    [_this, 2, 60, [0]] call BIS_fnc_param; 				//Zerstör	Zeit
_fahrzeugInit = [_this, 3, {}, [{}] ] call BIS_fnc_param;				//Fahrzeug Init

//Speichern der Fahrzeug Daten
_FZ_Name =  		vehicleVarName _fahrzeug;	//Name
_FZ_richtung =      getDir _fahrzeug; 			//Richtung
_FZ_Position =      getPos _fahrzeug; 			//Position
_FZ_type =          typeOf _fahrzeug; 			//Typ des Fahrzeugs

while { true } Do 
{
    sleep 1;
	//Wenn das Fahrzeug lebendig ist, sich bewegen kann und leer ist dann ist das Fahrzeug verlassen.
	 if ( ( alive _fahrzeug ) && { ( canMove _fahrzeug ) && { { ( alive _x ) } count ( crew _fahrzeug ) == 0 } } ) then 
	 {
		_verlassen = true;
		//Schleifenzeit für das verlassene Fahrzeug
		for "_i" from 0 to _leerzeit do 
		{  
			//Wenn das Fahrzeug nicht leer ist, zerstört oder sich nicht bewegen kann.
			if ( { ( alive _x ) } count (crew _fahrzeug) > 0 || { !( alive _fahrzeug ) || { !( canMove _fahrzeug ) } } ) then
			{
				_verlassen = false;
			};
            sleep 1;  
		};
		//Ist das Fahrzeug verlassen und nicht in der nähe der Startposition dann wird es gelöscht und neu erstellt
		if ( ( _verlassen ) && { _fahrzeug distance _FZ_Position > 10 } ) then 
		{
			deleteVehicle _fahrzeug;
            sleep 1;
            _fahrzeug = createVehicle [ _FZ_type, _FZ_Position, [], 0, "CAN_COLLIDE" ];
            _fahrzeug setPos [ ( _FZ_Position select 0 ), ( _FZ_Position select 1 ), 0 ];
            _fahrzeug setDir _FZ_richtung;
            _fahrzeug call _fahrzeugInit;
            if (_FZ_Name != "") then {
                missionNamespace setVariable [_FZ_Name, _fahrzeug];
                publicVariable _FZ_Name;
            };    
        };
	};
	
	//Wenn das Fahrzeug zerstört ist es tot.
	 if ( !( alive _fahrzeug ) ) then 
	 {
		 _tot = true;
			//Schleifenzeit für das Tote Fahrzeug
			for "_i" from 0 to _todeszeit do 
			{  
				//Ist das Fahrzeug nicht leer oder kann sich bewegen (Repariert) dann ist das Fahrzeug nicht tot .
				if ( { ( alive _x ) } count ( crew _fahrzeug ) > 0 || { ( canMove _fahrzeug ) } ) then
				{
					_tot = false;
				};
                sleep 1;  
            };
		//Wenn das Fahrzeug tot ist dann lösche es und erstell ein neues.
		 if ( _tot ) then 
		 {
            deleteVehicle _fahrzeug;
            sleep 1;
            _fahrzeug = createVehicle [ _FZ_type, _FZ_Position, [], 0, "CAN_COLLIDE" ];
            _fahrzeug setPos [ ( _FZ_Position select 0 ), (_FZ_Position select 1 ), 0 ];
            _fahrzeug setDir _FZ_richtung;
            _fahrzeug call _fahrzeugInit;
            if (_FZ_Name != "") then {
                missionNamespace setVariable [_FZ_Name, _fahrzeug];
                publicVariable _FZ_Name;
            };                
        };
    };
};  
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	