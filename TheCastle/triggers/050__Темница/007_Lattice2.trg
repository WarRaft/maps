[trigger]
name="Lattice2"
description=""
action=DisableTrigger(GetTriggeringTrigger())
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Cage6)
action=KillDestructable($gg_dest_B00S_10318)
action=KillDestructable($gg_dest_B00S_10316)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
