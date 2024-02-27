onMapSingleClick "";
deleteMarker "LShelpSquad";

_vrX = _this select 0,
_vrY = _this select 1,
_DIR = 180 + (getDir player) - 30 + (random 15);

playSound3D ["A3\Dubbing_Radio_F\sfx\in2a.ogg", player];
player sideChat format ["Запрашиваю поддержку огнем в квадрате %1-%2", (floor( _vrX / 100)), (floor (_vrY / 100))];

sleep 2;

_brushX = _vrX + (50 * (sin _DIR));
_brushY = _vrY + (50 * (cos _DIR));

_hlpSq = createMarker ["LShelpSquad", [_brushX, _brushY]];
_hlpSq setMarkerType "hd_arrow";
_hlpSq setMarkerDir _DIR + 180;
_hlpSq setMarkerColor "colorIndependent";

_brushX = _vrX + ((random 250 + 500) * (sin _DIR));
_brushY = _vrY + ((random 250 + 500) * (cos _DIR));

_group = createGroup [independent, true];
_leader = "I_Soldier_TL_F" createUnit [[_brushX, _brushY], _group];
for "_i" from 1 to 6 do {
	_leader = "I_soldier_F" createUnit [[_brushX, _brushY], _group];
};

_group addWaypoint [_this, 20];
[_group, 0] setWaypointType "SAD";

sleep 4;
playSound3D ["A3\Dubbing_Radio_F\sfx\out2a.ogg", player];
leader _group sideChat "Вас понял, выдвигаемся";