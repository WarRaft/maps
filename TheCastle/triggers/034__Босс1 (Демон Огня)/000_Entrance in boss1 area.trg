[trigger]
name="Entrance in boss1 area"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=GroupAddUnitSimple(GetEnteringUnit(), $Units_in_the_boss1_area)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Boss1)
