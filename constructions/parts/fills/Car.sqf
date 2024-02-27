//Вход
params ["_R","_secAlng","_vrDir","_POS","_getPos"];
//Переменные
_posX = 0;
_posY = 0;
_vrX = _POS select 0;
_vrY = _POS select 1;
//Мафынки
_cars = [
	"O_G_Offroad_01_F",
	"O_G_Offroad_01_repair_F",
	"O_G_Van_01_transport_F",
	"O_G_Van_01_fuel_F"
];
//Стройка
_car = _cars select (round (random (count _cars -1)));
[(_R / 3), 0] call _getPos;
_obj = createVehicle [_car, [_posX, _posY], [], (_R / 4)];
_obj setDir random 360;
