[trigger]
name="Obelisk1 Timer"
description=""
action=SetUnitAnimation($Obelisk["1"], "stand")
action=SetUnitColor($Obelisk["1"], GetPlayerColor(PlayerNP))
action=SetVariable($Obelisk_condition["1"], "false")
event=TriggerRegisterTimerExpireEventBJ($Obelisk_Timer["1"])
