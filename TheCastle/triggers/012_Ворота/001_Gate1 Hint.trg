[trigger]
name="Gate1 Hint"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=QuestMessageBJ(GetForceOfPlayer(GetOwningPlayer(GetEnteringUnit())), QuestMessageTypeAlwaysHint, $TEXT_Hint["14"])
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Gate1)
