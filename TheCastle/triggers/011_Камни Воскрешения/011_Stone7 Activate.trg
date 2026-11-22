[trigger]
name="Stone7 Activate"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=CommentString("Любой из камней активирован")
action=SetVariable($ResurrectionsStones_condition["0"], "true")
action=CommentString("Обнуляем активацию всех камней")
action=ForLoopAMultiple("1", $ResurrectionStones_num)
>action:0=SetVariable($ResurrectionsStones_condition[GetForLoopIndexA()], "false")
action=SetVariable($ResurrectionsStones_condition["7"], "true")
action=CommentString("Меняем цвет круга воскрешения")
action=SetUnitColor($ResurrectionCircle["7"], Color09)
action=TriggerExecute($gg_trg_Verify_stone_conditions)
action=ForForceMultiple($Players)
>action:0=SetCameraQuickPositionLocForPlayer(GetEnumPlayer(), GetUnitLoc($gg_unit_ncop_0372))
event=TriggerRegisterDeathEvent($gg_dest_B00E_9865)
