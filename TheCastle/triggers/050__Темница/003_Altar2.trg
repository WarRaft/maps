[trigger]
name="Altar2"
description=""
action=IfThenElseMultiple()
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:2=AddItemToStockBJ("I02F", $gg_unit_u00A_0520, "1", "1")
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetBuyingUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetOwningPlayer(GetBuyingUnit())), "TRIGSTR_3589")
>action:1=SetUnitAnimation($gg_unit_u00A_0520, "stand work")
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetBuyingUnit(), "I01A"))
>action:1=UnitRemoveAbilityBJ("A019", $gg_unit_u00A_0520)
>action:1=TriggerExecute($gg_trg_Bridge_Open)
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetBuyingUnit(), "I01A"), OperatorEqualENE, "true")
event=TriggerRegisterUnitEvent($gg_unit_u00A_0520, UnitEventSellItem)
