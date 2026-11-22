[trigger]
name="Altar1"
description=""
action=IfThenElseMultiple()
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:2=AddItemToStockBJ("I02C", $gg_unit_u00A_0522, "1", "1")
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetBuyingUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetBuyingUnit())), "TRIGSTR_3588")
>action:1=SetUnitAnimation($gg_unit_u00A_0522, "stand work")
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), "I017"))
>action:1=UnitRemoveAbilityBJ("A019", $gg_unit_u00A_0522)
>action:1=TriggerExecute($gg_trg_Bridge_Open)
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetBuyingUnit(), "I017"), OperatorEqualENE, "true")
event=TriggerRegisterUnitEvent($gg_unit_u00A_0522, UnitEventSellItem)
