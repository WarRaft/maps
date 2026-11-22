[trigger]
name="Lever06"
description=""
action=ModifyGateBJ(GateOperationOpen, $gg_dest_B016_9775)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Destructable08)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Neutral_Units2))
>action:0=IfThenElseMultiple()
>>action:1=SetUnitOwner(GetEnumUnit(), PlayerNA, ChangeColorTrue)
>>action:1=UnitRemoveAbilityBJ("Awan", GetEnumUnit())
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnumUnit()), OperatorEqualENE, "n010")
event=TriggerRegisterDeathEvent($gg_dest_B00E_1556)
