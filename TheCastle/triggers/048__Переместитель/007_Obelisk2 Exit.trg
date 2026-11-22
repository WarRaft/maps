[trigger]
name="Obelisk2 Exit"
description=""
action=CustomScriptCode("call TeoObeliskExit(2,GetLeavingUnit())")
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Obelisk2)
