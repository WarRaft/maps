[trigger]
name="Skipping Cinematic"
description=""
action=SetVariable($Cinematic_skipped, "true")
action=StartTimerBJ($Cinematic_Timer, PeriodicOptionOneTime, "0.00")
event=TriggerRegisterPlayerEventEndCinematic(Player00)
