[trigger]
name="Force Generator"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["17"])
condition=OperatorCompareBoolean(IsUnitDeadBJ($Force_Generator["1"]), OperatorEqualENE, "true")
condition=OperatorCompareBoolean(IsUnitDeadBJ($Force_Generator["2"]), OperatorEqualENE, "true")
condition=OperatorCompareBoolean(IsUnitDeadBJ($Force_Generator["3"]), OperatorEqualENE, "true")
action=ForLoopAMultiple("1", "13")
>action:0=SetDestructableAnimationBJ($Force_field[GetForLoopIndexA()], "death alternate")
>action:0=SetDestructableInvulnerableBJ($Force_field[GetForLoopIndexA()], InvulnerabilityVulnerable)
