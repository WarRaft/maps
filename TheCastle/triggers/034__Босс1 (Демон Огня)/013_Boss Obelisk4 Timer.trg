[trigger]
name="Boss Obelisk4 Timer"
description=""
action=SetVariable($Boss_Obelisk_condition["4"], "false")
action=SetUnitAnimation($Boss_Obelisk["4"], "stand")
action=SetUnitColor($Boss_Obelisk["4"], GetPlayerColor(PlayerNP))
action=EnableTrigger($gg_trg_Boss_Obelisk4)
event=TriggerRegisterTimerExpireEventBJ($Boss_Obelisk_Timer["4"])
