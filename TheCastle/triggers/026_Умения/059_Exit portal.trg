[trigger]
name="Exit portal"
description=""
action=SetVariable($Teleport_Bool, "false")
action=KillUnit(LoadUnitHandleBJ("0", "2", GetLastCreatedHashtableBJ()))
action=SaveUnitHandleBJ(GetSummonedUnit(), "0", "2", GetLastCreatedHashtableBJ())
action=SetUnitTimeScalePercent(LoadUnitHandleBJ("0", "2", GetLastCreatedHashtableBJ()), "320.00")
action=TriggerSleepAction("1.00")
action=SetUnitFacingTimed(LoadUnitHandleBJ("0", "2", GetLastCreatedHashtableBJ()), OperatorReal("0.00", OperatorAdd, GetUnitFacing(GetSummoningUnit())), "1.00")
action=SetUnitTimeScalePercent(LoadUnitHandleBJ("0", "2", GetLastCreatedHashtableBJ()), "100.00")
action=TriggerSleepAction("2.00")
action=SetVariable($Teleport_Bool, "true")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetSummonedUnit()), OperatorEqualENE, "h003")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSummoned)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSummoned)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSummoned)
