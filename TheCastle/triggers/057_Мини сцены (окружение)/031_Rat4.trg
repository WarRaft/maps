[trigger]
name="Rat4"
description="\r\n\r\n\r\n"
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=CustomScriptCode("call TeoRat (-3470, 4450, -3170, 5320, 80)")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Rat4)
