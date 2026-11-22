[trigger]
name="ExpBlock1"
description=""
action=SuspendHeroXPBJ(EnableDisableDisable, GetTriggerUnit())
condition=OperatorCompareInteger(GetHeroLevel(GetTriggerUnit()), OperatorGreaterEq, "3")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventHero_Level)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventHero_Level)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventHero_Level)
