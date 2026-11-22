[trigger]
name="Found Note"
description=""
condition=OperatorCompareItemType(GetItemType(GetManipulatedItem()), OperatorEqualENE, ItemTypePermanent)
action=ForLoopBMultiple("1", $Note_num)
>action:0=IfThenElseMultiple()
>>action:1=SetVariable($Note_count, OperatorInt($Note_count, OperatorAdd, "1"))
>>action:1=SetVariable($Note[GetForLoopIndexB()], ItemNull)
>>action:1=TriggerExecute($gg_trg_Note_Msg)
>>condition:0=OperatorCompareItem(GetManipulatedItem(), OperatorEqualENE, $Note[GetForLoopIndexB()])
>>condition:0=OperatorCompareItem(GetManipulatedItem(), OperatorNotEqualENE, ItemNull)
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
