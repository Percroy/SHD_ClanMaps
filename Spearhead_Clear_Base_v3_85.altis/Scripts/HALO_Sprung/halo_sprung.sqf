/*
	Author: Raychan
*/

//Halo Jump
//Globale variable "HJ_hoehe" für die Höhe "GUI\HALO_Sprung\dialog.hpp"

HJ_clicked = 0;													//Variable für den Klick auf der karte
HJ_hoehe   = 500;												//Höhe ab wieviel meter der HALO Sprung startet
HJ_oeffnen = 150;												//Höhe ab wieviel meter der Fallschirm aufgeht

hint "HALO Sprung\n------------------\nStellen Sie die Höhe und ab wann der Fallschirm sich öffnen soll ein.\n Dort wo Sie auf der Karte klicken wird der Absprungspunkt sein.\n\nFür das Abbrechen drücken Sie ""ESC""";


openMap true;													//Karte wird geöffnet
_ok = createDialog "HALO_Sprung_dialog";						//Menü für Hohenangabe wird geöffnet
onMapSingleClick "player setpos [_pos select 0, _pos select 1, 0]; 
HJ_clicked = 1; openmap false; onMapSingleClick ''; true;";		//Abfrage der Position auf der Karte und Teleport zu der Makierten Position

waitUntil {(HJ_clicked == 1)};									//Warten bis die Position Markiert wurde

[player, HJ_hoehe] call BIS_fnc_halo;							//Spieler auf die Gesetzte Höhe Stellen
while {((getposATL player)select 2) > HJ_oeffnen}do 			//Fallschirm öffnet sich automatisch bei HJ_oeffnen und Gibt eine Anzeige aus
{
	hintSilent parseText format["<t align='center' color='#DCDCDC' shadow='2' size='1.3'>Der Fallschirm öffnet sich Automatisch bei %1m.</t><br/><br/><t align='left' valign='bottom' color='#DCDCDC' size='1'>Höhe:</t><t align='left' underline='true' color='#DCDCDC' size='2'> %2m</t>",HJ_oeffnen,round (getPosATL player select 2)];
};  
hintSilent ""; 													//Anzeigefenster wird geschlossen
if(vehicle player == player)then{[player] execVM "A3\functions_f\misc\fn_HALO.sqf"}; //Arma 3 Halo Script wird aufgerufen
player removeaction bis_fnc_halo_action;
