[trigger]
name="Entrance in Hunting Zone"
description=""
action=GroupAddUnitSimple(GetEnteringUnit(), $Victims_Group)
action=TriggerExecute($gg_trg_Hunting)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Hunting_Zone)
