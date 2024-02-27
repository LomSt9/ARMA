//Исходные данные
_step = 4.5;							//Шаг ограждения

//Входящие данные
params ["_len", "_vrX", "_vrY", "_vrAngl", "_vrPos"];
_sections = floor (_len / _step);		//Количество секций
_step = (_len / _sections);			//Сдвиг

for "_i" from 1 to _sections do {
	if (_i != 1) then {
		[_step, _vrAngl] call _vrPos;
	} else {
		[_step / 2, _vrAngl] call _vrPos;
	};
	_obj = "Land_HBarrier_5_F" createVehicle [_vrX, _vrY];
	_obj setDir _vrAngl + 90;
	_obj setPosATL [_vrX, _vrY, -0.4];
	if ((random 1) > 0.5) then {
		_obj = "Land_HBarrier_3_F" createVehicle [_vrX, _vrY];
		_obj setDir _vrAngl + 90;
		_obj setPosATL [_vrX, _vrY, 0.8];	
	};
};