/*
	Author: Raychan
*/

//Animation für die Zielscheibe

private ["_target"];
_target = (_this select 0) select 0;
_target setDamage 0;

if ((_target animationPhase "terc") <= 0) then 
{
	_target animate["terc", 1];

	if (alive _target) then 
	{
		_target animate["terc", 1];
	};
};

true