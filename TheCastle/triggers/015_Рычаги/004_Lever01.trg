[trigger]
name="Lever01"
description="Рычаг для WoodGate1"
action=DisableTrigger($gg_trg_WoodGate1_Hint)
action=ModifyGateBJ(GateOperationOpen, $gg_dest_B016_2097)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_WoodGate1)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
event=TriggerRegisterDeathEvent($gg_dest_B00E_1036)
