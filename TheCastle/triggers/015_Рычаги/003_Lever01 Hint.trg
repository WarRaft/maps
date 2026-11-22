[trigger]
name="Lever01 Hint"
description=""
condition=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetEnteringUnit()), $Players), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["15"])
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Lever_Hint)
