[trigger]
name="Zombies Jeremiah Death"
description=""
action=CreateItemLoc("I00R", GetUnitLoc($gg_unit_n003_0099))
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "n003")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
