/*
	Author: Raychan
*/

//Start der beweglichen Zielscheiben Rifle Range

rrtarget 	= true;
_targets  	= [f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14];

{_x  animate["terc",0]} forEach _targets;			//Stellt alle Ziele auf

while {rrtarget} do
{
	{
		if(_x animationPhase "terc" > 0.1) then 	//Wird gecheckt ob ziel getroffen wurde
		{
			sleep 1;
			_x animate["terc",0];					//Ziel stellt sich auf
		};
	}foreach _targets;
}
