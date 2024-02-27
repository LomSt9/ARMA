//Вход
params ["_R","_secAlng","_vrDir","_POS","_getPos"];
//Переменные
_posX = 0;
_posY = 0;
_vrX = _POS select 0;
_vrY = _POS select 1;
//Стройка
[_R / 2, 0 - _secAlng] call _getPos;
_obj = "Land_Campfire_F" createVehicle [_posX, _posY];
_obj setDir random 360;
