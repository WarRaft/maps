[trigger]
name="Visibility On"
description=""
initially_off=1
action=FogModifierStart($Eye["3"])
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Visibility_in_cave)
