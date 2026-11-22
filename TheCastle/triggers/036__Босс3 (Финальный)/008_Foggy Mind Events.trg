[trigger]
name="Foggy Mind Events"
description=""
initially_off=1
action=AddTriggerEvent($gg_trg_Foggy_Mind, event:TriggerRegisterUnitEvent($UNIT_Boss3_Archmage, UnitEventSpellEffect) ~"")
action=AddTriggerEvent($gg_trg_Foggy_Mind_Object_Mechanic, event:TriggerRegisterUnitEvent($Hero_mechanic, UnitEventIssueUnitOrder) ~"")
action=AddTriggerEvent($gg_trg_Foggy_Mind_Object_Shaman, event:TriggerRegisterUnitEvent($Hero_shaman, UnitEventIssueUnitOrder) ~"")
action=AddTriggerEvent($gg_trg_Foggy_Mind_Object_Warrior, event:TriggerRegisterUnitEvent($Hero_warrior, UnitEventIssueUnitOrder) ~"")
action=AddTriggerEvent($gg_trg_Foggy_Mind_Point_Mechanic, event:TriggerRegisterUnitEvent($Hero_mechanic, UnitEventIssuePointOrder) ~"")
action=AddTriggerEvent($gg_trg_Foggy_Mind_Point_Shaman, event:TriggerRegisterUnitEvent($Hero_shaman, UnitEventIssuePointOrder) ~"")
action=AddTriggerEvent($gg_trg_Foggy_Mind_Point_Warrior, event:TriggerRegisterUnitEvent($Hero_warrior, UnitEventIssuePointOrder) ~"")
action=EnableTrigger($gg_trg_Foggy_Mind)
action=EnableTrigger($gg_trg_Foggy_Mind_timer)
