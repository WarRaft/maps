[trigger]
name="Portal04"
description=""
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 4, 270)")
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["4"], OperatorEqualENE, "true")
action=SetVariable($Heroes_count, OperatorInt($Heroes_count, OperatorAdd, "1"))
action=IfThenElseMultiple()
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=SetVariable($Heroes_count, "0")
>action:1=TriggerSleepAction("0.50")
>action:1=KillDestructable(LoadDestructableHandleBJ("4", "1", GetLastCreatedHashtableBJ()))
>action:1=KillDestructable(LoadDestructableHandleBJ("4", "2", GetLastCreatedHashtableBJ()))
>action:1=TriggerSleepAction("1.50")
>action:1=StopMusicBJ(FadeDontDont)
>action:1=PlayMusicBJ($gg_snd_Background3)
>condition:0=OperatorCompareInteger($Heroes_count, OperatorGreaterEq, "3")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal04_Gate1)
