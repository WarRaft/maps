[trigger]
name="Exit from Hunting Zone"
description=""
action=IfThenElseMultiple()
>action:1=GroupRemoveUnitSimple(GetLeavingUnit(), $Victims_Group)
>action:1=TriggerExecute($gg_trg_Hunting)
>condition:0=OperatorCompareBoolean(IsPlayerInForce(GetOwningPlayer(GetLeavingUnit()), $Players), OperatorEqualENE, "true")
action=IfThenElseMultiple()
>action:1=IssuePointOrderLoc(GetLeavingUnit(), UnitOrderMove, GetRectCenter($gg_rct_REG_Start_of_Hunting))
>condition:0=OperatorCompareUnit(GetLeavingUnit(), OperatorEqualENE, $UNIT_Devastator)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Hunting_Zone)
