[trigger]
name="Exit from boss1 area"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=GroupRemoveUnitSimple(GetLeavingUnit(), $Units_in_the_boss1_area)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Boss1)
