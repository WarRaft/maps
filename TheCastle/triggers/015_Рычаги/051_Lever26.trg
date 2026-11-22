[trigger]
name="Lever26"
description=""
action=IfThenElseMultiple()
>action:2=TriggerSleepAction("1.00")
>action:2=DestructableRestoreLife($gg_dest_B00E_9422, "5.00", ShowHideShow)
>action:1=CommentString("Открываем решетку")
>action:1=ModifyGateBJ(GateOperationOpen, $gg_dest_B01O_8788)
>action:1=EnumDestructablesInRectAllMultiple($gg_rct_REG_Gate7)
>>action:0=IfThenElseMultiple()
>>>action:1=RemoveDestructable(GetEnumDestructable())
>>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($gg_dest_Dofw_3072), OperatorEqualENE, "false")
event=TriggerRegisterDeathEvent($gg_dest_B00E_9422)
