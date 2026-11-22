[trigger]
name="Lever03"
description="Рычаг для ворот комнаты с механическими гоблинами"
action=ModifyGateBJ(GateOperationOpen, $gg_dest_B018_0243)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Destructable03)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
event=TriggerRegisterDeathEvent($gg_dest_B00E_1171)
