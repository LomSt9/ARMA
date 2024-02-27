//Вход
params ["_R","_secAlng","_vrDir","_POS","_getPos"];
//Переменные
_posX = 0;
_posY = 0;
_vrX = _POS select 0;
_vrY = _POS select 1;
//Стройка
[2 * (_R / 3), 0] call _getPos;
_obj = "Land_TentA_F" createVehicle [_posX, _posY];
_obj setDir _vrDir;
_obj setPos [_posX, _posY, -0.1];

[2 * (_R / 3), _secAlng / 3] call _getPos;
_obj = "Land_TentA_F" createVehicle [_posX, _posY];
_obj setDir _vrDir + 30;
_obj setPos [_posX, _posY, -0.1];

[2 * (_R / 3), 2 * (_secAlng / 3)] call _getPos;
_obj = "Land_TentA_F" createVehicle [_posX, _posY];
_obj setDir _vrDir + 45;
_obj setPos [_posX, _posY, -0.1];

[2 * (_R / 3), (_secAlng / 3) * -1] call _getPos;
_obj = "Land_TentA_F" createVehicle [_posX, _posY];
_obj setDir _vrDir - 30;
_obj setPos [_posX, _posY, -0.1];

[2 * (_R / 3), 2 * ((_secAlng / 3) * -1)] call _getPos;
_obj = "Land_TentA_F" createVehicle [_posX, _posY];
_obj setDir _vrDir - 45;
_obj setPos [_posX, _posY, -0.1];