[trigger]
name="Button23 Action"
description=""
action=CommentString("Проигрывание звука и проверка на правильность")
action=IfThenElseMultiple()
>action:2=PauseTimerBJ(PauseResumePause, $Music_Timer)
>action:2=TriggerExecute($gg_trg_Music_note_Timer)
>action:1=SetVariable($Music, OperatorInt($Music, OperatorAdd, "1"))
>action:1=ShowDestructableBJ(ShowHideShow, $gg_dest_B00A_10780)
>action:1=StartTimerBJ($Music_Timer, PeriodicOptionOneTime, $Music_Timer_count)
>condition:0=OperatorCompareInteger($Music, OperatorEqual, "5")
event=TriggerRegisterDeathEvent($gg_dest_B01K_10389)
