[trigger]
name="Prison"
description=""
condition=OperatorCompareDestructableCode(GetDestructableTypeId(GetDyingDestructable()), OperatorEqualENE, "DTg1")
action=IfThenElse(condition:OperatorCompareDestructible(GetDyingDestructable(), OperatorEqualENE, $gg_dest_DTg1_0502) ~"", action:SetVariable($TempREG, $gg_rct_REG_Cell1) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareDestructible(GetDyingDestructable(), OperatorEqualENE, $gg_dest_DTg1_0501) ~"", action:SetVariable($TempREG, $gg_rct_REG_Cell2) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareDestructible(GetDyingDestructable(), OperatorEqualENE, $gg_dest_DTg1_0503) ~"", action:SetVariable($TempREG, $gg_rct_REG_Cell3) ~"DoNothing", action:DoNothing())
action=IfThenElse(condition:OperatorCompareDestructible(GetDyingDestructable(), OperatorEqualENE, $gg_dest_DTg1_0504) ~"", action:SetVariable($TempREG, $gg_rct_REG_Cell4) ~"DoNothing", action:DoNothing())
action=ForGroupMultiple(GetUnitsInRectAll($TempREG))
>action:0=IfThenElseMultiple()
>>action:1=SetUnitOwner(GetEnumUnit(), Player10, ChangeColorFalse)
>>action:1=IssueTargetOrder(GetEnumUnit(), UnitOrderAttackUnit, $UNIT_Overseer)
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnumUnit()), OperatorEqualENE, "n004")
action=SetVariable($Debuff_status, OperatorInt($Debuff_status, OperatorAdd, "1"))
action=ConditionalTriggerExecute($gg_trg_Debuff_Overseer)
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Prison)
