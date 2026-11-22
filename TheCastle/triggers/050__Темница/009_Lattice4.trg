[trigger]
name="Lattice4"
description=""
action=DisableTrigger(GetTriggeringTrigger())
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Cage8)
action=KillDestructable($gg_dest_B00S_10622)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
