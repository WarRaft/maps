[trigger]
name="Boss Obelisk4"
description=""
condition=OperatorCompareInteger($Boss1_stage, OperatorLess, "3")
condition=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), $Players), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=SetVariable($Boss_Obelisk_num, "4")
action=TriggerExecute($gg_trg_Boss_Obelisk_Attack)
action=CustomScriptCode("call TeoObeliskTimer(udg_Boss_Obelisk_num,9)")
event=TriggerRegisterUnitInRangeSimple("200.00", $gg_unit_nico_0062)
