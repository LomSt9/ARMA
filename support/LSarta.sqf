onMapSingleClick "";
_target = createMarker ["target", _this];
_target setMarkerType "hd_objective";
_target setMarkerColor "ColorBlack";

_snds = [
	"a3\sounds_f\weapons\falling_bomb\fall_01.wss",
	"a3\sounds_f\weapons\falling_bomb\fall_02.wss",
	"a3\sounds_f\weapons\falling_bomb\fall_03.wss",
	"a3\sounds_f\weapons\falling_bomb\fall_04.wss"
];

_vrX = floor ((_this select 0) / 100);
_vrY = floor ((_this select 1) / 100);
playSound3D ["A3\Dubbing_Radio_F\sfx\in2a.ogg", player];
player sideChat format ["Запрашиваю авиаудар по квадрату %1-%2", _vrX, _vrY];
sleep 20 + random 15;
_snd = _snds select (random ((count _snds) -1));
playSound3D [_snd, player, false, [_this select 0, _this select 1, 0], 2,1,0];
sleep 5.1;
for "_i" from 1 to 6 do {
	_bomb = createVehicle ["Bo_Mk82",  _this, [], 50];
	sleep 1.2;
};
deleteMarker "target";
