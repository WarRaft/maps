[trigger]
name="Obelisk2 Timer"
description=""
action=SetUnitAnimation($Obelisk["2"], "stand")
action=SetUnitColor($Obelisk["2"], GetPlayerColor(PlayerNP))
action=SetVariable($Obelisk_condition["2"], "false")
event=TriggerRegisterTimerExpireEventBJ($Obelisk_Timer["2"])
