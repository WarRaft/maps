[trigger]
name="SecretArea1"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ(GetPlayersAll(), QuestMessageTypeSecret, "TRIGSTR_237")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Secret_Area1)
