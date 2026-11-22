[trigger]
name="Stones Hint"
description=""
condition=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetEnteringUnit()), $Players), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ(GetPlayersAll(), QuestMessageTypeAlwaysHint, $TEXT_Hint["10"])
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Moon1)
