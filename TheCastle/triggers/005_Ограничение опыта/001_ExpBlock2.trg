[trigger]
name="ExpBlock2"
description=""
initially_off=1
action=SuspendHeroXPBJ(EnableDisableDisable, GetTriggerUnit())
condition=OperatorCompareInteger(GetHeroLevel(GetTriggerUnit()), OperatorGreaterEq, "8")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventHero_Level)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventHero_Level)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventHero_Level)
