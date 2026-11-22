[trigger]
name="Slowdown"
description=""
action=CreateNUnitsAtLoc("1", "n00R", PlayerNA, GetUnitLoc(GetEnteringUnit()), RealUnitFacing)
action=UnitApplyTimedLifeBJ("1.50", TimedLifeBuffCodeGeneric, GetLastCreatedUnit())
action=IssueTargetOrder(GetLastCreatedUnit(), UnitOrderSlow, GetEnteringUnit())
condition=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetEnteringUnit()), $Players), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Slowdown)
