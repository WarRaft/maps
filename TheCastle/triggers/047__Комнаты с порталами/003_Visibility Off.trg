[trigger]
name="Visibility Off"
description=""
initially_off=1
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=FogModifierStop($Eye["3"])
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Visibility_in_cave)
