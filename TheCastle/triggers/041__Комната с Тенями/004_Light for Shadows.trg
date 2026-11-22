[trigger]
name="Light for Shadows"
description=""
action=CommentString("Свет от первого светильника")
action=CreateNUnitsAtLoc("1", "n00F", PlayerNE, Location("-100.00", "7200.00"), RealUnitFacing)
action=UnitApplyTimedLifeBJ("1.50", TimedLifeBuffCodeGeneric, GetLastCreatedUnit())
action=IssuePointOrderLoc(GetLastCreatedUnit(), UnitOrderFlameStrike, Location("-100.00", "7200.00"))
action=CommentString("Свет от второго светильника")
action=CreateNUnitsAtLoc("1", "n00F", PlayerNE, Location("500.00", "7200.00"), RealUnitFacing)
action=UnitApplyTimedLifeBJ("1.50", TimedLifeBuffCodeGeneric, GetLastCreatedUnit())
action=IssuePointOrderLoc(GetLastCreatedUnit(), UnitOrderFlameStrike, Location("500.00", "7200.00"))
condition=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "e001")
event=TriggerRegisterUnitInRangeSimple("450.00", $gg_unit_n00F_0124)
event=TriggerRegisterUnitInRangeSimple("450.00", $gg_unit_n00F_0130)
