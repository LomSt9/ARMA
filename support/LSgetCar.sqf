_vrX = getPos player select 0;
_vrY = getPos player select 1;

playSound3D ["A3\Dubbing_Radio_F\sfx\in2a.ogg", player];
player sideChat format ["Запрашиваю машину в квадрат %1-%2", (floor( _vrX / 100)), (floor (_vrY / 100))];

sleep 5;

_carPos = ((selectBestPlaces [[_vrX, _vrY], 800, "trees", 1,1]) select 0 select 0);

_vrX = _carPos select 0;
_vrY = _carPos select 1;

_car = "C_Offroad_01_F" createVehicle [_vrX, _vrY, 0.5];
_car setDir random 360;
_car setFuel (random 0.5) + 0.2;

_hlpSq = createMarker ["LShelpCar", _carPos];
_hlpSq setMarkerType "loc_car";
_hlpSq setMarkerColor "colorIndependent";

hint format ["Машина доставлена по координатам %1-%2", (floor(_vrX / 100)), (floor (_vrY / 100))];

sleep 15;
_LSmarkA = 1;
for "_i" from 1 to 8 do {
	_LSmarkA = _LSmarkA - 0.1;
	_hlpSq setMarkerAlpha _LSmarkA;
	sleep 15;
};

deleteMarker "LShelpCar";