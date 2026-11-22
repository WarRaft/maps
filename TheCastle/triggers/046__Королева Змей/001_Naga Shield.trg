[trigger]
name="Naga Shield"
description=""
action=IfThenElseMultiple()
>action:1=IssueImmediateOrder($UNIT_Naga, UnitOrderManaShieldOn)
>condition:0=OperatorCompareBoolean(UnitHasBuffBJ($UNIT_Naga, "B016"), OperatorEqualENE, "false")
