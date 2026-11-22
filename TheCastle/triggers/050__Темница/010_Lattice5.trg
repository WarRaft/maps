[trigger]
name="Lattice5"
description=""
action=DisableTrigger(GetTriggeringTrigger())
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Cage9)
action=KillDestructable($gg_dest_B00S_10623)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
