[trigger]
name="Help2 Training"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=EnableTrigger($gg_trg_Help3_Training)
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["2"])
condition=OperatorCompareBoolean(IsUnitType(GetTriggerUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterUnitInRangeSimple("700.00", $gg_unit_nrog_0019)
