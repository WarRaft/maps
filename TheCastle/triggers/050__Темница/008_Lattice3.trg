[trigger]
name="Lattice3"
description=""
action=DisableTrigger(GetTriggeringTrigger())
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Cage7)
action=KillDestructable($gg_dest_B00S_10410)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
