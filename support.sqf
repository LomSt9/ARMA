//АРТА
_arta = createTrigger ["emptyDetector", [0,0,0]];
_arta setTriggerActivation ["ALPHA", "PRESENT", false];
_arta setTriggerText "Артобстрел";
_arta setTriggerStatements ["this", "onMapSingleClick {_pos execVM 'arta.sqf'}",""];
//Поддержка
_btlSq = createTrigger ["emptyDetector", [0,0,0]];
_btlSq setTriggerActivation ["BRAVO", "PRESENT", false];
_btlSq setTriggerText "Диверсия";
_btlSq setTriggerStatements ["this", "onMapSingleClick {_pos execVM 'b_sq.sqf'}",""];
