[trigger]
name="Orb Of Fire start"
description=""
action=AddTriggerEvent($gg_trg_Orb_Of_Fire, event:TriggerRegisterUnitEvent($Hero_warrior, UnitEventDamaged) ~"")
action=AddTriggerEvent($gg_trg_Orb_Of_Fire, event:TriggerRegisterUnitEvent($Hero_mechanic, UnitEventDamaged) ~"")
action=AddTriggerEvent($gg_trg_Orb_Of_Fire, event:TriggerRegisterUnitEvent($Hero_shaman, UnitEventDamaged) ~"")
event=TriggerRegisterTimerEventSingle("1.00")
