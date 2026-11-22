[trigger]
name="Library Pedestal put a Book"
description=""
condition=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02O")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventSellItem)
action=IfThenElseMultiple()
>action:1=ModifyGateBJ(GateOperationOpen, $gg_dest_B00S_7958)
>action:2=AddItemToStockBJ("I02O", GetTriggerUnit(), "1", "1")
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetBuyingUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetBuyingUnit())), "TRIGSTR_4038")
>action:1=SetUnitAnimation(GetTriggerUnit(), "stand")
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), "I02P"))
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetBuyingUnit(), "I02P"), OperatorEqualENE, "true")
