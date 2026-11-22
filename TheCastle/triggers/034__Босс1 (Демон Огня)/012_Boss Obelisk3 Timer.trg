[trigger]
name="Boss Obelisk3 Timer"
description=""
action=SetVariable($Boss_Obelisk_condition["3"], "false")
action=SetUnitAnimation($Boss_Obelisk["3"], "stand")
action=SetUnitColor($Boss_Obelisk["3"], GetPlayerColor(PlayerNP))
action=EnableTrigger($gg_trg_Boss_Obelisk3)
event=TriggerRegisterTimerExpireEventBJ($Boss_Obelisk_Timer["3"])
