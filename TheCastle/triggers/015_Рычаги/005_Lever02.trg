[trigger]
name="Lever02"
description="Ворота к Главному Надзирателю\r\n"
action=DisableTrigger(GetTriggeringTrigger())
action=KillDestructable($gg_dest_B00S_0489)
event=TriggerRegisterDeathEvent($gg_dest_B00E_0414)
