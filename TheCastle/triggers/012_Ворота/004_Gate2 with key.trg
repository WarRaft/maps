[trigger]
name="Gate2 with key"
description=""
action=IfThenElseMultiple()
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=ModifyGateBJ(GateOperationOpen, $gg_dest_B001_0000)
>action:1=PlaySoundBJ($gg_snd_BattleNetDoorsStereo2)
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetEnteringUnit(), "I004"))
>action:1=EnumDestructablesInRectAllMultiple($gg_rct_REG_Gate2)
>>action:0=IfThenElseMultiple()
>>>action:1=RemoveDestructable(GetEnumDestructable())
>>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetEnteringUnit(), "I004"), OperatorEqualENE, "true")
>action:2=QuestMessageBJ(GetForceOfPlayer(GetOwningPlayer(GetEnteringUnit())), QuestMessageTypeAlwaysHint, $TEXT_Hint["11"])
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Gate2)
