/*
	Author: Raychan
*/

//Start der beweglichen Zielscheiben Sniperrange

srtarget 	= true;
_targets  	= [sr1,sr2,sr3,sr4,sr5,sr6,sr7,sr8,sr9,sr10,sr11,sr12,sr13,sr14,sr15,sr16,sr17];

{_x  animate["terc",0]} forEach _targets;			//Alle Ziele Aufstellen

while {srtarget} do
{
	{
		if(_x animationPhase "terc" > 0.1) then 	//Wird gecheckt ob ziel getroffen wurde
		{
			sleep 2;
			_x animate["terc",0];					//Ziel stellt sich auf
		};
	}foreach _targets;
}
