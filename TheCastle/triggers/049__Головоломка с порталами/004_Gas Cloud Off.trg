[trigger]
name="Gas Cloud Off"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=KillUnit($gg_unit_o000_0428)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "nmgv")
condition=OperatorCompareBoolean(IsUnitAliveBJ(GetTriggerUnit()), OperatorEqualENE, "true")
event=TriggerRegisterUnitInRangeSimple("100.00", $gg_unit_o000_0428)
