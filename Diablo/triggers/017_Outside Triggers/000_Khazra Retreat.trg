[trigger]
name="Khazra Retreat"
description=""
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorLessEq, OperatorReal(OperatorReal("4500.00", OperatorMultiply, $Boss_HP), OperatorMultiply, "0.30"))
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitInvulnerable($gg_unit_nsth_0256, InvulnerabilityInvulnerable)
action=UnitRemoveBuffsBJ(BuffTypeAll, $gg_unit_nsth_0256)
action=SetUnitPathing($gg_unit_nsth_0256, PathingOff)
action=SetUnitMoveSpeed($gg_unit_nsth_0256, "500.00")
action=IssuePointOrderLoc($gg_unit_nsth_0256, UnitOrderMove, GetRectCenter($gg_rct_Rect_108))
action=PolledWait("4.00")
action=SetUnitMoveSpeed($gg_unit_nsth_0256, GetUnitDefaultMoveSpeed(GetTriggerUnit()))
action=SetUnitInvulnerable($gg_unit_nsth_0256, InvulnerabilityVulnerable)
action=SetUnitPathing($gg_unit_nsth_0256, PathingOff)
event=TriggerRegisterUnitEvent($gg_unit_nsth_0256, UnitEventAttacked)
