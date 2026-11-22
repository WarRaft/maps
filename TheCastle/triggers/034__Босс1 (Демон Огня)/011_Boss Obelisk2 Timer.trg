[trigger]
name="Boss Obelisk2 Timer"
description=""
action=SetVariable($Boss_Obelisk_condition["2"], "false")
action=SetUnitAnimation($Boss_Obelisk["2"], "stand")
action=SetUnitColor($Boss_Obelisk["2"], GetPlayerColor(PlayerNP))
action=EnableTrigger($gg_trg_Boss_Obelisk2)
event=TriggerRegisterTimerExpireEventBJ($Boss_Obelisk_Timer["2"])
