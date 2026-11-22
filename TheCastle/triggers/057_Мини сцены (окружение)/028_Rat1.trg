[trigger]
name="Rat1"
description="\r\n\r\n\r\n"
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=CustomScriptCode("call TeoRat (-11490, -10150, -11200, -9220, 80)")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Rat1)
