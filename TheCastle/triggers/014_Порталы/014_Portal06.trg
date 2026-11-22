[trigger]
name="Portal06"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["6"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal06_Gate1)
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 6, 90)")
action=TriggerSleepAction("0.50")
action=KillDestructable(LoadDestructableHandleBJ("6", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("6", "2", GetLastCreatedHashtableBJ()))
action=SetVariable($Portal_num, "7")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
action=SetVariable($Portal_num, "9")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
