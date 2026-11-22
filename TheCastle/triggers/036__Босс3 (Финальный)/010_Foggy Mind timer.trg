[trigger]
name="Foggy Mind timer"
description=""
initially_off=1
event=TriggerRegisterTimerExpireEventBJ($Foggy_Mind_Timer)
action=DisableTrigger($gg_trg_Foggy_Mind_Object_Mechanic)
action=DisableTrigger($gg_trg_Foggy_Mind_Object_Shaman)
action=DisableTrigger($gg_trg_Foggy_Mind_Object_Warrior)
action=DisableTrigger($gg_trg_Foggy_Mind_Point_Mechanic)
action=DisableTrigger($gg_trg_Foggy_Mind_Point_Shaman)
action=DisableTrigger($gg_trg_Foggy_Mind_Point_Warrior)
