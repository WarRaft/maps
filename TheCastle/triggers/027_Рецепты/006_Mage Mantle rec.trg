[trigger]
name="Mage Mantle rec"
description=""
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
action=IfThenElseMultiple()
>condition:0=OperatorCompareInteger($Items["12"], OperatorGreaterEq, "2")
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetTriggerUnit(), "I002"), OperatorEqualENE, "true")
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetTriggerUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Msg["2"])
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I01B"))
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I01B"))
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I002"))
>action:1=UnitAddItemByIdSwapped("I013", GetTriggerUnit())
>action:1=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
>action:1=DestroyEffectBJ(GetLastCreatedEffectBJ())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A03G")
