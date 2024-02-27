//		--- БАЗОВЫЕ ПЕРЕМЕННЫЕ ---

//Базовые переменные
_R = (16 + random 8);					//Радиус
_N = (4 + round random 3);				//Кол-во углов
_DIR = round random 360;				//Поворот
_POS = getMarkerPos "n-gon";			//Точка отсчета
_POS = _POS - [0];

//Функции
_vrPos = {
	_vrX = 	_vrX + (((_this select 0) * sin (_this select 1)));
	_vrY = 	_vrY + (((_this select 0) * cos (_this select 1)));
};


//			--- ТЕЛО ---

//Скрыть всё лишнее
_POS = _POS apply {_x - 100 + random 200};
_marker = createMarker ["danger", _POS];
_marker setMarkerType "hd_warning_noShadow";
_marker setMarkerColor "ColorRed";
_POS = _POS apply {_x - 100 + random 200};

_hide = nearestTerrainObjects [_POS, [], _R + 5, true];
{_x hideObject true} forEach _hide;

//Периметр
[_R,_N,_DIR,_POS,_vrPos] execVM "lagerPerimeter.sqf";

//Наполнение
[_R,_N,_DIR,_POS] execVM "lagerFill.sqf";

sleep 1;
//Люди
[_POS] execVM "create.sqf";
