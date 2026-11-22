[trigger]
name="Rat2"
description="\r\n\r\n\r\n"
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=CustomScriptCode("call TeoRat (-8600, -8700, -8200, -8000, 70)")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Rat2)
