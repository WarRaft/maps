[trigger]
name="Rat5"
description="\r\n\r\n\r\n"
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=CustomScriptCode("call TeoRat (12300, -9500, 11490, -9080, 120)")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Rat5)
