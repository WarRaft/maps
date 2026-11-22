[trigger]
name="WoodGate2 Hint"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_WoodGate2)
action=QuestMessageBJ(GetForceOfPlayer(GetOwningPlayer(GetEnteringUnit())), QuestMessageTypeAlwaysHint, $TEXT_Hint["13"])
action=SetDestructableInvulnerableBJ($gg_dest_B005_0357, InvulnerabilityVulnerable)
