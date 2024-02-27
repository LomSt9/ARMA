params ["_place"];

_unitType = [
	[//BlueForce
		[//Командиры
			"B_Soldier_SL_F",//Командир отделения
			"B_Soldier_TL_F"//Командир  звена
		],
		[//Стрелки
			"B_Soldier_F",//Стрелок
			"B_Soldier_lite_F",//Стрелок (Легк.)
			"B_soldier_AR_F",//Пулеметчик
			"B_soldier_M_F"//Пехотный снайпер
		],
		[//Специалисты
			"B_Soldier_GL_F",//Гренадер
			"B_engineer_F",//Инженер
			"B_medic_F",//Медик
			"B_Soldier_A_F",//Подносчик боеприпасов
			"B_soldier_AA_F",//Ракетчик (ПВО)
			"B_soldier_AT_F",//Ракетчик (ПТ)
			"B_soldier_exp_F",//Сапер
			"B_soldier_LAT_F"//Стрелок (ПТ)	
		]
	],
	[//OpForce
		[//Командиры
			"O_G_Soldier_SL_F",//Командир отделения
			"O_G_Soldier_TL_F"//Командир  звена
		],
		[//Стрелки
			"O_G_Soldier_F",//Стрелок
			"O_G_Soldier_lite_F",//Стрелок (Легк.)
			"O_G_Soldier_AR_F",//Пулеметчик
			"O_G_Soldier_M_F"//Пехотный снайпер
		],
		[//Специалисты
			"O_G_Soldier_GL_F",//Гренадер
			"O_G_engineer_F",//Инженер
			"O_G_medic_F",//Медик
			"O_G_Soldier_A_F",//Подносчик боеприпасов
			"O_G_Soldier_exp_F",//Сапер
			"O_G_Soldier_LAT_F"//Стрелок (ПТ)	
		]
	],
	[//Independent
		[//Командиры
			"I_Soldier_SL_F",//Командир отделения
			"I_Soldier_TL_F"//Командир  звена
		],
		[//Стрелки
			"I_soldier_F",//Стрелок
			"I_Soldier_lite_F",//Стрелок (Легк.)
			"I_Soldier_AR_F",//Пулеметчик
			"I_Soldier_M_F"//Пехотный снайпер
		],
		[//Специалисты
			"I_Soldier_GL_F",//Гренадер
			"I_engineer_F",//Инженер
			"I_medic_F",//Медик
			"I_Soldier_A_F",//Подносчик боеприпасов
			"I_Soldier_AA_F",//Ракетчик (ПВО)
			"I_Soldier_AT_F",//Ракетчик (ПТ)
			"I_Soldier_exp_F",//Сапер
			"I_Soldier_LAT_F"//Стрелок (ПТ)	
		]
	],
	[//Civilian
	]
];
_sides = [blufor, opfor, independent, civilian];

//Создание Звена
_createTeam = {
	private ["_side", "_pos", "_leader", "_group"];
	_side = _this select 0;
	_pos = _this select 1;
	_leader = _unitType select _side select 0 select 1;
	_group = createGroup [_sides select _side, true];
	_leader createUnit [_pos, _group, "", 0, "SERGEANT"];	// Лидер
	for "_i" from 0 to random 2 + 1 do {					// Стрелки
		private ["_strelki", "_strelok"];
		_strelki = _unitType select _side select 1;
		_strelok = _strelki select random count _strelki - 1;
		_strelok createUnit [_pos, _group, "", 0, "CORPORAL"];
	};
	for "_i" from 0 to random 2 do {						//Спецы
		private ["_speci", "_spec"];
		_speci = _unitType select _side select 2;
		_spec = _speci select random count _speci - 1;
		_spec createUnit [_pos, _group, "", 0, "PRIVATE"];
	};
	for "_i" from 0 to 3 do {								//Вейпоинты
		_group addWaypoint [_pos, 100];
	};
	_group addWaypoint [waypointPosition [_group, 3], 0];
	[_group, 4] setWaypointType "CYCLE";
	[_group, 0] setWaypointSpeed "LIMITED";
	_group setBehaviour "SAFE";	
};

[1, _place] call _createTeam;
[1, _place] call _createTeam;
deleteMarker "n-gon";