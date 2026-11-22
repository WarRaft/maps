[trigger]
name="Explosive"
description=""
action=TriggerExecute($gg_trg_Explosive_timer)
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSummoned)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSummoned)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSummoned)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetSummonedUnit()), OperatorEqualENE, "n002")
