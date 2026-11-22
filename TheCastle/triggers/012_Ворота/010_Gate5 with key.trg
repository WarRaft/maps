[trigger]
name="Gate5 with key"
description=""
action=IfThenElseMultiple()
>action:2=QuestMessageBJ(GetForceOfPlayer(GetOwningPlayer(GetEnteringUnit())), QuestMessageTypeAlwaysHint, $TEXT_Hint["11"])
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=ModifyGateBJ(GateOperationOpen, $gg_dest_B00N_3132)
>action:1=PlaySoundBJ($gg_snd_BattleNetDoorsStereo2)
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetEnteringUnit(), "I011"))
>action:1=EnumDestructablesInRectAllMultiple($gg_rct_REG_Gate5)
>>action:0=IfThenElseMultiple()
>>>action:1=RemoveDestructable(GetEnumDestructable())
>>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetEnteringUnit(), "I011"), OperatorEqualENE, "true")
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Gate5)
