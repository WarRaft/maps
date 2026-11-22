[trigger]
name="Help8 Training"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetDyingUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventDeath)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventDeath)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventDeath)
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["8"])
