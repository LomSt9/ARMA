onMapSingleClick "";
deleteMarker "LShelpSquad";

_vrX = _this select 0,
_vrY = _this select 1,

playSound3D ["A3\Dubbing_Radio_F\sfx\in2a.ogg", player];
player sideChat format ["Запрашиваю поддержку огнем в квадрате %1-%2", (floor( _vrX / 100)), (floor (_vrY / 100))];

_findPlase = ((selectBestPlaces [_this, 800, "forest", 1,1]) select 0 select 0);
_placeX = _findPlase select 0;
_placeY = _findPlase select 1;
_dir = 180 + ((_placeX - _vrX) atan2 (_placeY - _vrY));

_group = createGroup [independent, true];
_leader = "I_Soldier_TL_F" createUnit [_findPlase, _group];
for "_i" from 1 to 6 do {
	_leader = "I_soldier_F" createUnit [_findPlase, _group];
};

_group addWaypoint [_this, 20];
[_group, 0] setWaypointType "SAD";

sleep 6;

_hlpSq = createMarker ["LShelpSquad", _this];
_hlpSq setMarkerType "hd_arrow";
_hlpSq setMarkerDir _dir;
_hlpSq setMarkerColor "colorIndependent";

playSound3D ["A3\Dubbing_Radio_F\sfx\out2a.ogg", player];
leader _group sideChat "Вас понял, выдвигаемся";