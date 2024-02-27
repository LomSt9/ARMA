//Вход
params ["_R","_secAlng","_vrDir","_POS","_getPos"];
//Переменные
_posX = 0;
_posY = 0;
_vrX = _POS select 0;
_vrY = _POS select 1;
//Стройка
[_R / 2, 0] call _getPos;
_obj = "Land_BagBunker_Tower_F" createVehicle [_posX, _posY];
_obj setDir _vrDir + 105;
_obj setPosATL [_posX, _posY, -0.1];
