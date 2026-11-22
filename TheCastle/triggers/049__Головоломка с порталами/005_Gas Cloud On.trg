[trigger]
name="Gas Cloud On"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitAliveBJ($gg_unit_o000_0428), OperatorEqualENE, "false")
action=CreateNUnitsAtLoc("1", "o000", PlayerNP, Location("6910.00", "-8080.00"), "0.00")
