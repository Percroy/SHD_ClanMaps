/*
	Author: Raychan
*/

//Abbrechen der beweglichen Zielscheiben Rifle Range

rrtarget 	= false;
sleep 1;
_targets  	= [f1,f2,f3,f4,f5,f6,f7,f8,f9,f10,f11,f12,f13,f14];
{_x  animate["terc",1]} forEach _targets;			//legt alle ziele hin