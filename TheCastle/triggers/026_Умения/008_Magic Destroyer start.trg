[trigger]
name="Magic Destroyer start"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=AddTriggerEvent($gg_trg_Magic_Destroyer, event:TriggerRegisterUnitEvent($Hero_mechanic, UnitEventDamaged) ~"")
event=TriggerRegisterTimerEventSingle("1.00")
