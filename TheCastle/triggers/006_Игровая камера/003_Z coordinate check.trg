[trigger]
name="Z coordinate check"
description="0.70 сек для плавного изменения камеры при движении.\r\n"
action=ForLoopAMultiple("1", CountPlayersInForceBJ($Players))
>action:0=SetVariable($Z_time[GetForLoopIndexA()], "0.70")
action=TriggerExecute($gg_trg_Z_calculation)
event=TriggerRegisterTimerEventPeriodic("0.30")
