_vrDIR = random 360;
_vrX = getPos player select 0;
_vrY = getPos player select 1;

playSound3D ["A3\Dubbing_Radio_F\sfx\in2a.ogg", player];
player sideChat format ["Запрашиваю машину в квадрат %1-%2", (floor( _vrX / 100)), (floor (_vrY / 100))];

sleep 5;

_brushX = _vrX + ((200 + random 500) * sin _vrDIR);
_brushY = _vrY + ((200 + random 500) * sin _vrDIR);
_car = "C_Offroad_01_F" createVehicle [_brushX, _brushY];
_car setDir random 360;
_car setFuel (random 50) + 20;

_hlpSq = createMarker ["LShelpCar", [_brushX, _brushY]];
_hlpSq setMarkerType "loc_car";
_hlpSq setMarkerColor "colorIndependent";

hint format ["Машина доставлена по координатам %1-%2", (floor( _brushX / 100)), (floor (_brushY / 100))];

sleep 15;
_LSmarkA = 1;
for "_i" from 1 to 8 do {
	_LSmarkA = _LSmarkA - 0.1;
	_hlpSq setMarkerAlpha _LSmarkA;
	sleep 15;
};

deleteMarker "LShelpCar";