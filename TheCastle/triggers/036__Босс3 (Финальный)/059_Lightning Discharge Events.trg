[trigger]
name="Lightning Discharge Events"
description=""
initially_off=1
action=AddTriggerEvent($gg_trg_Lightning_Discharge, event:TriggerRegisterUnitEvent($UNIT_Boss3_Orc, UnitEventSpellEffect) ~"")
action=AddTriggerEvent($gg_trg_Lightning_Discharge_Cancel, event:TriggerRegisterUnitEvent($UNIT_Boss3_Orc, UnitEventSpellEndCast) ~"")
action=EnableTrigger($gg_trg_Lightning_Discharge_Activation)
action=EnableTrigger($gg_trg_Lightning_Discharge)
action=EnableTrigger($gg_trg_Lightning_Discharge_timer)
action=EnableTrigger($gg_trg_Lightning_Discharge_Cancel)
