//АРТА
_LSarta = createTrigger ["emptyDetector", [0,0,0]];
_LSarta setTriggerActivation ["ALPHA", "PRESENT", false];
_LSarta setTriggerText "Артобстрел";
_LSarta setTriggerStatements ["this", "onMapSingleClick {_pos execVM 'LSarta.sqf'}",""];
//Поддержка
_LSbtlSq = createTrigger ["emptyDetector", [0,0,0]];
_LSbtlSq setTriggerActivation ["BRAVO", "PRESENT", false];
_LSbtlSq setTriggerText "Диверсия";
_LSbtlSq setTriggerStatements ["this", "onMapSingleClick {_pos execVM 'LSb_sq.sqf'}",""];
//Вызов машины
_LSgetCar = createTrigger ["emptyDetector", [0,0,0]];
_LSgetCar setTriggerActivation ["CHARLIE", "PRESENT", false];
_LSgetCar setTriggerText "Запросить машину";
_LSgetCar setTriggerStatements ["this", "execVM 'LSgetCar.sqf'",""];