//		--- базовые ---
_R =  5 + random 2;								//радиус
_POS = getMarkerPos "small";					//позиция
_segLen = 2.5;									//длина фрагмента
_DIR = random 360;


// 		--- высчитываемые и вспомогательные---
_segs = round ((2 * pi * _R) / _segLen);		//количество фрагментов
_anglSeg = 360 / _segs;							//угол фрагмента
_vrX = _POS select 0;
_vrY = _POS select 1;
_vrDir = _DIR;
_brushX = 0;
_brushY = 0;

//функции
_brush = {
	_brushX = _vrX + (_this * (sin _vrDir));
	_brushY = _vrY + (_this * (cos _vrDir));
};

//		--- ТЕЛО ---
for "_i" from 1 to _segs do {
	_rndm = random 1;
	if (_rndm > 0.5) then {
		_R call _brush;
		_obj = "Land_BagFence_Long_F" createVehicle [_brushX, _brushY];
		_obj setDir _vrDir;
		_obj setPosATL [_brushX, _brushY, -0.25];
	};
	_vrDir = _vrDir + _anglSeg;
};

_vrDir = _DIR;
(_R / 3) call _brush;
_obj = "Land_BagBunker_Small_F" createVehicle [_brushX, _brushY];
_obj setDir _vrDir + 180;
_obj setPos [_brushX, _brushY, -0.1];

_dec = "Land_BagFence_Long_F" createVehicle [_brushX, _brushY];
_dec setDir _vrDir + 90;
_dec setPosATL (_obj modelToWorld [-2.5,-1.5,-1.5]);

_dec = "Land_BagFence_Long_F" createVehicle [_brushX, _brushY];
_dec setDir _vrDir;
_dec setPosATL (_obj modelToWorld [-0.75,-2.75,-1.5]);

_dec = "Land_BagFence_Short_F" createVehicle [_brushX, _brushY];
_dec setDir _vrDir;
_dec setPosATL (_obj modelToWorld [1.5,-2.75,-1.5]);

_dec = "Land_BagFence_Long_F" createVehicle [_brushX, _brushY];
_dec setDir _vrDir + 90;
_dec setPosATL (_obj modelToWorld [2.5,-1.25,-1.5]);