[trigger]
name="Obelisk4 Exit"
description=""
action=CustomScriptCode("call TeoObeliskExit(4,GetLeavingUnit())")
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Obelisk4)
