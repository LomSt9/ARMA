//Вход
params ["_R","_secAlng","_vrDir","_POS","_getPos"];
//Переменные
_posX = 0;
_posY = 0;
_vrX = _POS select 0;
_vrY = _POS select 1;
//Стройка
[_R / 3, 0] call _getPos;
_obj = createVehicle ["Land_Cargo_House_V3_F", [_posX, _posY], [], ((_R / 2) - 5)];
_obj setDir (_vrDir + (random 30) - 15);
_obj setPosATL [_posX, _posY, -0.1];
