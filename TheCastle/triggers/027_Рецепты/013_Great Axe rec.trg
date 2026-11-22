[trigger]
name="Great Axe rec"
description=""
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
action=IfThenElseMultiple()
>condition:0=OperatorCompareInteger($Items["11"], OperatorGreaterEq, "2")
>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetTriggerUnit(), "I00B"), OperatorEqualENE, "true")
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetTriggerUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Msg["2"])
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I00F"))
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I00F"))
>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), "I00B"))
>action:1=UnitAddItemByIdSwapped("I00G", GetTriggerUnit())
>action:1=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
>action:1=DestroyEffectBJ(GetLastCreatedEffectBJ())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A01B")
