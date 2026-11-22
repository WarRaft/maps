[trigger]
name="Lever16"
description=""
action=SetVariable($Portal_num, "5")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
action=SetVariable($Portal_num, "10")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
action=SetVariable($Portal_num, "15")
action=TriggerExecute($gg_trg_PORTAL_OPENING)
event=TriggerRegisterDeathEvent($gg_dest_B00E_7241)
