[trigger]
name="Obelisk1 Exit"
description=""
action=CustomScriptCode("call TeoObeliskExit(1,GetLeavingUnit())")
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Obelisk1)
