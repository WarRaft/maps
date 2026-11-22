[trigger]
name="Gate1"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Gate1_Hint)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Gate1)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
event=TriggerRegisterDeathEvent($gg_dest_B000_0261)
