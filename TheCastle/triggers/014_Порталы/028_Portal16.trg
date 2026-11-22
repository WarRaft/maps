[trigger]
name="Portal16"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareBoolean($Portal_Activity_Bool["16"], OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal16_Gate1)
action=CustomScriptCode("call TeoPortalMoving(GetEnteringUnit(), 16, 0)")
