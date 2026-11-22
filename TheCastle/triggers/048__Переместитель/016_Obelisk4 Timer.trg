[trigger]
name="Obelisk4 Timer"
description=""
action=SetUnitAnimation($Obelisk["4"], "stand")
action=SetUnitColor($Obelisk["4"], GetPlayerColor(PlayerNP))
action=SetVariable($Obelisk_condition["4"], "false")
event=TriggerRegisterTimerExpireEventBJ($Obelisk_Timer["4"])
