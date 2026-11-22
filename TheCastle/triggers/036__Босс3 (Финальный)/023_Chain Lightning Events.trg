[trigger]
name="Chain Lightning Events"
description=""
initially_off=1
action=AddTriggerEvent($gg_trg_Chain_Lightning, event:TriggerRegisterUnitEvent($UNIT_Boss3_Archmage, UnitEventSpellEffect) ~"")
action=EnableTrigger($gg_trg_Chain_Lightning)
