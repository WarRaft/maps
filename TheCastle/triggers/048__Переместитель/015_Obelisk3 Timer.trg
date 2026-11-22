[trigger]
name="Obelisk3 Timer"
description=""
action=SetUnitAnimation($Obelisk["3"], "stand")
action=SetUnitColor($Obelisk["3"], GetPlayerColor(PlayerNP))
action=SetVariable($Obelisk_condition["3"], "false")
event=TriggerRegisterTimerExpireEventBJ($Obelisk_Timer["3"])
