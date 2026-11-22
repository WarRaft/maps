[trigger]
name="Skeletons"
description=""
condition=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetEnteringUnit()), $Players), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=EnableTrigger($gg_trg_Skeleton_spawn)
action=DestructableRestoreLife(LoadDestructableHandleBJ("3", "1", GetLastCreatedHashtableBJ()), "50.00", ShowHideShow)
action=TriggerSleepAction("10.00")
action=EnableTrigger($gg_trg_Comment01)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Skeletons)
