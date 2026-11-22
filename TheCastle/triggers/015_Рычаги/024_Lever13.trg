[trigger]
name="Lever13"
description=""
action=IfThenElseMultiple()
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=KillDestructable($gg_dest_B00S_9807)
>action:1=KillDestructable($gg_dest_B00S_9808)
>condition:0=OperatorCompareBoolean(IsDestructableDeadBJ($gg_dest_B00E_9805), OperatorEqualENE, "true")
>condition:0=OperatorCompareBoolean(IsDestructableDeadBJ($gg_dest_B00E_9806), OperatorEqualENE, "true")
event=TriggerRegisterDeathEvent($gg_dest_B00E_9805)
event=TriggerRegisterDeathEvent($gg_dest_B00E_9806)
