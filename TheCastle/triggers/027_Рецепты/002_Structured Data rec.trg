[trigger]
name="Structured Data rec"
description=""
action=ForLoopBMultiple("1", $Note_num)
>action:0=IfThenElseMultiple()
>>action:1=RemoveItem(GetItemOfTypeFromUnitBJ(GetTriggerUnit(), $Note_Type[GetForLoopIndexB()]))
>>condition:0=OperatorCompareBoolean(UnitHasItemOfTypeBJ(GetTriggerUnit(), $Note_Type[GetForLoopIndexB()]), OperatorEqualENE, "true")
>>action:1=UnitAddItemByIdSwapped("I01M", GetTriggerUnit())
>>action:1=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
>>action:1=DestroyEffectBJ(GetLastCreatedEffectBJ())
>>action:1=ReturnAction()
action=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetTriggerUnit())
action=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Msg["2"])
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A03T")
