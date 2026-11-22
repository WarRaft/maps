[trigger]
name="Obelisk2 Entrance"
description=""
action=CustomScriptCode("call TeoObeliskEntrance(2,GetEnteringUnit())")
action=TriggerExecute($gg_trg_Obelisks_Checking)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Obelisk2)
