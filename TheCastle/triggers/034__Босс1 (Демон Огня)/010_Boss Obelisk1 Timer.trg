[trigger]
name="Boss Obelisk1 Timer"
description=""
action=SetVariable($Boss_Obelisk_condition["1"], "false")
action=SetUnitAnimation($Boss_Obelisk["1"], "stand")
action=SetUnitColor($Boss_Obelisk["1"], GetPlayerColor(PlayerNP))
action=EnableTrigger($gg_trg_Boss_Obelisk1)
event=TriggerRegisterTimerExpireEventBJ($Boss_Obelisk_Timer["1"])
