[trigger]
name="SecretArea6"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ(GetPlayersAll(), QuestMessageTypeSecret, "TRIGSTR_1804")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Secret_Area6)
