[trigger]
name="Gate3 with key"
description=""
action=IfThenElseMultiple()
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetEnteringUnit(), "I00U"), OperatorEqualENE, "true")
>action:2=QuestMessageBJ(GetForceOfPlayer(GetOwningPlayer(GetEnteringUnit())), QuestMessageTypeAlwaysHint, $TEXT_Hint["11"])
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=ModifyGateBJ(GateOperationOpen, $gg_dest_B00C_0832)
>action:1=PlaySoundBJ($gg_snd_BattleNetDoorsStereo2)
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetEnteringUnit(), "I00U"))
>action:1=EnumDestructablesInRectAllMultiple($gg_rct_REG_Gate3)
>>action:0=IfThenElseMultiple()
>>>action:1=RemoveDestructable(GetEnumDestructable())
>>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
>action:1=EnableTrigger($gg_trg_Fire1)
>action:1=EnableTrigger($gg_trg_Fire2)
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Gate3)
