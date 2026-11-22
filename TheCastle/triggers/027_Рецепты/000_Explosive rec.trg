[trigger]
name="Explosive rec"
description=""
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
action=IfThenElseMultiple()
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetTriggerUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Msg["2"])
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I003"))
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I001"))
>action:1=UnitAddItemByIdSwapped("I000", GetTriggerUnit())
>action:1=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
>action:1=DestroyEffectBJ(GetLastCreatedEffectBJ())
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetTriggerUnit(), "I003"), OperatorEqualENE, "true")
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetTriggerUnit(), "I001"), OperatorEqualENE, "true")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A00A")
