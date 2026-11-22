[trigger]
name="Init Boss3"
description="Game_Stage - отвечает за область воскрешения героев, если воскрешение происходит не около Камня воскрешения\r\n0 - воскрешение в стартовой области\r\n1- воскрешение в конечной области\r\n2- воскрешение в альтернативной области"
initially_off=1
action=SetVariable($ResurrectionsStones_condition["0"], "false")
action=SetVariable($Game_Stage, "1")
action=CommentString("События")
action=TriggerExecute($gg_trg_Foggy_Mind_Events)
action=TriggerExecute($gg_trg_Lightning_Storm_Events)
action=TriggerExecute($gg_trg_Chain_Lightning_Events)
action=TriggerExecute($gg_trg_Summon_Skeleton_healers_Events)
action=EnableTrigger($gg_trg_Archmage_AI)
action=SetUnitUserData($UNIT_Boss3_Archmage, "4")
