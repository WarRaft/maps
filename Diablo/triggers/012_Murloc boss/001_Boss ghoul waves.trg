[trigger]
name="Boss ghoul waves"
description=""
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorLessEq, OperatorReal(OperatorReal("9000.00", OperatorMultiply, $Boss_HP), OperatorMultiply, "0.60"))
event=TriggerRegisterUnitEvent($gg_unit_nmsc_0034, UnitEventAttacked)
action=DisableTrigger(GetTriggeringTrigger())
action=CreateNUnitsAtLoc("30", "n00D", Player11, GetRectCenter($gg_rct_Rect_013), RealUnitFacing)
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_013))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_003))
action=PolledWait("12.00")
action=CreateNUnitsAtLoc("30", "n00D", Player11, GetRectCenter($gg_rct_Rect_013), RealUnitFacing)
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_013))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_003))
action=PolledWait("12.00")
action=CreateNUnitsAtLoc("30", "n00D", Player11, GetRectCenter($gg_rct_Rect_013), RealUnitFacing)
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_013))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_003))
