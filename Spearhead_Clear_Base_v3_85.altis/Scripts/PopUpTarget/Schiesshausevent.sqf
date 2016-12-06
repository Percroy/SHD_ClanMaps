/*
	Author: Raychan
*/

//Schießhaus Event

//Variablen
shevent  = true;							//Start Variable
_count   = 0;								//Zählt die Treffer
_i 	     = 0;								//Zählt die Ziele
_prozent = 0;								//Prozentanzeige
_zeit	 = 1.5;								//Zeit wie lange ein Ziel stehenbleibt
_check1  = [she1,she2,she3,she4];			//Checkpoint 1
_check2  = [she5,she6,she7,she8,she9];		//Checkpoint 2
_check3  = [she10,she11,she12,she13];		//Checkpoint 3
_check4  = [she14,she15];					//Checkpoint 4
_check5  = [she16,she17,she18,she19,she20,she21];//Checkpoint 5
_check6  = [she22,she23,she24,she25];			//Checkpoint 6
_check7  = [she25,she26,she27,she28,she29,she30,she31,she32,she33,she34,she35,she36];//Checkpoint 7
_check8  = [she37,she38,she39,she40];		//Checkpoint 8
_check9  = [she41,she42,she43,she44,she45,she46,she47,she48,she49,she50,she51];//Checkpoint 9
_targets = [she1,she2,she3,she4,she5,she6,she7,she8,she9,she10,she11,she12,she13,she14,she15,she16,she17,she18,she19,she20,she21,she22,she23,she24,she25,she26,she27,she28,she29,she30,she31,she32,she33,she34,she35,she36,she37,she38,she39,she40,she41,she42,she43,she44,she45,she46,she47,she48,she49,she50,she51];

//Alle Schießhaus Zielscheiben Hinlegen
{_x  animate["terc",1]} forEach _targets;
//Alle Zielscheiben liegen


hint "Das Event wird vorbereitet...";
sleep 2;
hint "Laufen Sie nur zur naechsten Fahne wenn Sie aufgefordert werden.";
sleep 3;
hint "Das Event startet Automatisch beim durchlaufen der Fahne.";
sleep 1;

while {shevent} do										//Event wird aktiviert oder kann deaktiviert [siehe Target_reset_schiesshaus.sqf] werden
{
	if (triggerActivated sht1) then						//Spieler Aktiviert Checkpoint 1
	{
		hint "Start!! Checkpoint 1 mit 4 Zielen.";	
		sleep 1;										//Start zeit
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check1;								//Schleife für Checkpoint
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht2) then						//Spieler Aktiviert Checkpoint 2
	{
		hint "Start!! Checkpoint 2 mit 5 Zielen.";
		sleep 1;										//Start zeit		
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check2;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht3) then						//Spieler Aktiviert Checkpoint 3
	{
		hint "Start!! Checkpoint 3 mit 4 Zielen.";
		sleep 1;										//Start zeit			
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check3;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};	
	if (triggerActivated sht4) then						//Spieler Aktiviert Checkpoint 4
	{
		hint "Start!! Checkpoint 4 mit 2 Zielen.";
		sleep 1;										//Start zeit			
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep 1;									//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check4;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht5) then						//Spieler Aktiviert Checkpoint 5
	{
		hint "Start!! Checkpoint 5 mit 6 Zielen.";
		sleep 1;										//Start zeit			
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check5;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht6) then						//Spieler Aktiviert Checkpoint 6
	{
		hint "Start!! Checkpoint 6 mit 4 Zielen.";
		sleep 1;										//Start zeit			
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check6;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht7) then						//Spieler Aktiviert Checkpoint 7
	{
		hint "So ab jetzt mehr Bewegung!!!";
		sleep 1;
		hint "Checkpoint 7 mit 11 Zielen es geht Links um die Ecke.";	
		sleep 2;										//Start zeit	
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check7;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht8) then						//Spieler Aktiviert Checkpoint 8
	{
		hint "Start!! Checkpoint 8 mit 4 Zielen.";
		sleep 1;										//Start zeit			
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check8;								//Schleife für Checkpoint 
		sleep 1;
		hint "Weiter zur naechsten Fahne.";
	};
	if (triggerActivated sht9) then						//Spieler Aktiviert Checkpoint 9
	{
		hint "Start!! Checkpoint letzter mit 11 Zielen.";
		sleep 1;										//Start zeit			
		{
			_x animate["terc",0];						//Ziel stellt sich auf
			sleep _zeit;								//Zeit läuft
			if(_x animationPhase "terc" > 0.1) then 	//Nach ablauf der Zeit Check ob Ziel Hit
			{
				_count = _count + 1;					//Wenn Ziel getroffen Punkt
				_x animate["terc",1];					//Ziel legt sich hin
			};
			_x animate["terc",1];						//Ziel legt sich hin wenn verpasst
			_i = _i +1 ;								//Ziel wird gezählt
			hint format ["Ziele: %1 getroffen %2",_i,_count];
		} foreach _check9;								//Schleife für Checkpoint 
		sleep 1;
		_prozent = (_count / _i) * 100;
		hint format ["Das wars dein Punktestand ist %1 bei %2 Zielen und ein Prozentsatz von %3",_count,_i,_prozent];
		shevent = false;
	};
};
//Alle Schießhaus Zielscheiben aufstellen
{_x  animate["terc",0]} forEach _targets;
//Alle Zielscheiben stehen
