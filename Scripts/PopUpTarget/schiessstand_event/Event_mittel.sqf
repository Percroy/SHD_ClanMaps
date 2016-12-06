/*
	Author: Raychan
*/

//---------Abschuss Event Schwierigkeitsgrad "Mittel"------------
 
_i	     = 0;										//Ziel Zähler
_count   = 0;										//Treffer Zähler
//---------Ziele die im Event benutzt werden.---------------------
_targets = [t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12,t13,t14,t15,t16]; 
_many    =  count _targets;							//Anzahl der Ziele

hint "Bitte warten, die 20 Ziele werden auf 'Mittel' eingestellt";
_nul = [] execVM "scripts\PopUpTarget\Target_abbruch_riflerange.sqf";
sleep 5;
hint "Achtung";
sleep 4;
hint "und los";
sleep 1;

while {_i<20} do 									//Schleife läuft 20mal durch 
{
	//---------Zufallsziel wird generiert--------------------------
	_rnumber = floor(random _many);
	_rtarget = _targets select _rnumber;
	//---------Ende Zufallsziel------------------------------------
	
	_rtarget animate["terc", 0];						//Das Zufallsziel wird aufgerichtet
	sleep 4;											//Zeit um das Ziel abzuschießen
	if (_rtarget animationPhase "terc" > 0.1) then		//Getroffenes Ziel wird geprüft
	{	
		_count = _count+1;
	};
	_i = _i + 1;
	hint format ["Ziele :%1 getroffen :%2",_i,_count];
	_rtarget animate["terc", 1];						//Ziel wird wieder hingelegt
};
sleep 8;
hint "Das Event ist Beendet";