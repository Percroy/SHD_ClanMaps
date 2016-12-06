/*
	Author: Raychan
*/

//Init des Aktivierungs Mann
_men = [r1,r2,r3,r4,r5];

//Ausrüstung
{
	removeAllWeapons _x;
	removeAllItems _x;
	removeAllAssignedItems _x;
	removeHeadgear _x;
	removeGoggles _x;
	_x forceAddUniform "U_Rangemaster";
	_x addVest "V_TacVest_blk";
	_x addHeadgear "H_Cap_headphones";
	_x addGoggles "G_Aviator";
}foreach _men;

//Rifle Range R1
r1 addaction ["<t size='1.3' shadow='2'>Event Leicht</t>","scripts\PopUpTarget\schiessstand_event\Event_leicht.sqf"];
r1 addaction ["<t size='1.3' shadow='2'>Event Mittel</t>","scripts\PopUpTarget\schiessstand_event\Event_mittel.sqf"];
r1 addaction ["<t size='1.3' shadow='2'>Event schwer</t>","scripts\PopUpTarget\schiessstand_event\Event_schwer.sqf"]; 
r1 addaction ["<t size='1.3' shadow='2'>Zieluebung Starten</t>","scripts\PopUpTarget\Target_reset_riflerange.sqf"];
r1 addaction ["<t size='1.3' shadow='2'>Zieluebung Beenden</t>","scripts\PopUpTarget\Target_abbruch_riflerange.sqf"];

//Sprengstoff Range R2
r2 addaction ["<t size='1.3' shadow='2'>Zielscheiben aufstellen</t>","scripts\PopUpTarget\Target_reset_sprengrange.sqf"];

//Granaten Range R3
r3 addaction ["<t size='1.3' shadow='2'>Zielscheiben aufstellen</t>","scripts\PopUpTarget\Target_reset_granaderange.sqf"];

//Sniper Range R4
r4 addaction ["<t size='1.3' shadow='2'>Zieluebung Starten</t>","scripts\PopUpTarget\Target_reset_Sniperrange.sqf"];
r4 addaction ["<t size='1.3' shadow='2'>Zieluebung Beenden</t>","scripts\PopUpTarget\Target_abbruch_Sniperrange.sqf"];

//Schiesshaus R5
r5 addaction ["<t size='1.3' shadow='2'>Event starten</t>","scripts\PopUpTarget\Schiesshausevent.sqf"]; 
r5 addaction ["<t size='1.3' shadow='2'>Event abbrechen</t>","scripts\PopUpTarget\Target_reset_schiesshaus.sqf"];