[trigger]
name="Stone6 Activate"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=CommentString("Любой из камней активирован")
action=SetVariable($ResurrectionsStones_condition["0"], "true")
action=CommentString("Обнуляем активацию всех камней")
action=ForLoopAMultiple("1", $ResurrectionStones_num)
>action:0=SetVariable($ResurrectionsStones_condition[GetForLoopIndexA()], "false")
action=SetVariable($ResurrectionsStones_condition["6"], "true")
action=CommentString("Меняем цвет круга воскрешения")
action=SetUnitColor($ResurrectionCircle["6"], Color00)
action=TriggerExecute($gg_trg_Verify_stone_conditions)
action=ForForceMultiple($Players)
>action:0=SetCameraQuickPositionLocForPlayer(GetEnumPlayer(), GetUnitLoc($gg_unit_ncop_0136))
event=TriggerRegisterDeathEvent($gg_dest_B00E_3546)
