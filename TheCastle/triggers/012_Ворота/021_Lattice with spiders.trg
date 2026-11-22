[trigger]
name="Lattice with spiders"
description=""
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Destructable02)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
event=TriggerRegisterDeathEvent($gg_dest_DTg1_0914)
