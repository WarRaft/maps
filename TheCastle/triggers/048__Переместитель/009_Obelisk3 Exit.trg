[trigger]
name="Obelisk3 Exit"
description=""
action=CustomScriptCode("call TeoObeliskExit(3,GetLeavingUnit())")
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Obelisk3)
