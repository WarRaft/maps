[trigger]
name="Boss Obelisk1"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=SetVariable($Boss_Obelisk_num, "1")
action=TriggerExecute($gg_trg_Boss_Obelisk_Attack)
action=CustomScriptCode("call TeoObeliskTimer(udg_Boss_Obelisk_num,9)")
condition=OperatorCompareInteger($Boss1_stage, OperatorLess, "3")
condition=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetTriggerUnit()), $Players), OperatorEqualENE, "true")
event=TriggerRegisterUnitInRangeSimple("200.00", $gg_unit_nico_0058)
