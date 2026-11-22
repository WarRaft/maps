[trigger]
name="WoodGate2"
description=""
event=TriggerRegisterDeathEvent($gg_dest_B005_0357)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_WoodGate2)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
