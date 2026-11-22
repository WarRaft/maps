[trigger]
name="Obelisk3 Entrance"
description=""
action=CustomScriptCode("call TeoObeliskEntrance(3,GetEnteringUnit())")
action=TriggerExecute($gg_trg_Obelisks_Checking)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Obelisk3)
