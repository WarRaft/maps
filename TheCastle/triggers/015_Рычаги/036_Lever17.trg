[trigger]
name="Lever17"
description=""
action=ModifyGateBJ(GateOperationOpen, $gg_dest_LTg3_7902)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Destructable10)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "YTlb")
event=TriggerRegisterDeathEvent($gg_dest_B00E_7919)
