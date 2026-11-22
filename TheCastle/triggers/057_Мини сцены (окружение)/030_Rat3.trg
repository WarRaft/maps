[trigger]
name="Rat3"
description="\r\n\r\n\r\n"
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=CustomScriptCode("call TeoRat (-170, 4210, 1360, 4850, 10)")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Rat3)
