[trigger]
name="Lattice1"
description=""
action=DisableTrigger(GetTriggeringTrigger())
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Cage5)
action=KillDestructable($gg_dest_B00S_10317)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
