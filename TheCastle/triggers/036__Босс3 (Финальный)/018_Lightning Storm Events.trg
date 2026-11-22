[trigger]
name="Lightning Storm Events"
description=""
initially_off=1
run_on_init=1
action=AddTriggerEvent($gg_trg_Lightning_Storm, event:TriggerRegisterUnitEvent($UNIT_Boss3_Archmage, UnitEventSpellEffect) ~"")
action=AddTriggerEvent($gg_trg_Lightning_Storm_Cancel, event:TriggerRegisterUnitEvent($UNIT_Boss3_Archmage, UnitEventSpellEndCast) ~"")
action=EnableTrigger($gg_trg_Lightning_Storm)
action=EnableTrigger($gg_trg_Lightning_Storm_Cancel)
action=EnableTrigger($gg_trg_Lightning_Storm_timer)
