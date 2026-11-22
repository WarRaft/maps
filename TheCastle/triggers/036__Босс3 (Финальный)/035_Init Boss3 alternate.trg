[trigger]
name="Init Boss3 alternate"
description="Game_Stage - отвечает за область воскрешения героев, если воскрешение происходит не около Камня воскрешения\r\n0 - воскрешение в стартовой области\r\n1- воскрешение в конечной области\r\n2- воскрешение в альтернативной области"
initially_off=1
action=SetVariable($ResurrectionsStones_condition["0"], "false")
action=SetVariable($Game_Stage, "2")
action=TriggerExecute($gg_trg_Boss3_Waves_settings)
action=EnableTrigger($gg_trg_Boss3_Spawn_security_Timer)
action=EnableTrigger($gg_trg_Boss3_Death_of_Monster)
action=CommentString("Запускаем таймер до начала усиленной волны с монстрами")
action=StartTimerBJ($Boss3_Wave_Timer, PeriodicOptionOneTime, "90.00")
action=EnableTrigger($gg_trg_Boss3_Monsters_wave_Timer)
action=RemoveDestructable($gg_dest_B00Y_1999)
