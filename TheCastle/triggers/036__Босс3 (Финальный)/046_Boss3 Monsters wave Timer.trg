[trigger]
name="Boss3 Monsters wave Timer"
description="Увеличиваем количество монстров"
initially_off=1
action=DisableTrigger(GetTriggeringTrigger())
action=SetVariable($Boss3_MaxMonsters["3"], "2")
action=SetVariable($Boss3_MaxMonsters["4"], "2")
action=SetVariable($Boss3_MaxMonsters["5"], "2")
action=SetVariable($Boss3_MaxMonsters["6"], "1")
action=CommentString("Запускаем таймер до начала волны с героями")
action=StartTimerBJ($Boss3_Wave_Timer, PeriodicOptionOneTime, "90.00")
action=EnableTrigger($gg_trg_Boss3_Heroes_Wave_Timer)
event=TriggerRegisterTimerExpireEventBJ($Boss3_Wave_Timer)
