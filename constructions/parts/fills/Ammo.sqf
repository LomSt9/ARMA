//Вход
params ["_R","_secAlng","_vrDir","_POS","_getPos"];
//Переменные
_posX = 0;
_posY = 0;
_vrX = _POS select 0;
_vrY = _POS select 1;
//Стройка
_rnd = random 10;
if (_rnd > 7.5) then {
	[_R / 2, 0] call _getPos;
	_obj = "Box_FIA_Ammo_F" createVehicle [_posX, _posY];
	_obj setDir random 360;
	_obj setPos [_posX, _posY];
};

if (_rnd > 5) then {
	[_R / 3, -15] call _getPos;
	_obj = "Box_FIA_Wps_F" createVehicle [_posX, _posY];
	_obj setDir random 360;
	_obj setPos [_posX, _posY];
};

if (_rnd > 2.5) then {
	[_R / 3, 15] call _getPos;
	_obj = "Box_FIA_Wps_F" createVehicle [_posX, _posY];
	_obj setDir random 360;
	_obj setPos [_posX, _posY];
};
if (_rnd > 5) then {
	[_R / 3, 0] call _getPos;
	_obj = "CamoNet_INDP_open_F" createVehicle [_posX, _posY];
	_obj setDir random 360;
};
