[trigger]
name="Plan01"
description=""
action=IfThenElseMultiple()
>action:2=SetItemCharges(GetManipulatedItem(), "1")
>action:2=PlaySoundOnUnitBJ($gg_snd_Error, "100", GetTriggerUnit())
>action:2=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Msg["3"])
>action:1=RemoveItem(GetManipulatedItem())
>action:1=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Items\\AIlm\\AIlmTarget.mdl")
>action:1=DestroyEffectBJ(GetLastCreatedEffectBJ())
>action:1=ForForceMultiple($Players)
>>action:0=SetPlayerAbilityAvailableBJ(EnableDisableEnable, "A05M", GetEnumPlayer())
>action:1=TriggerExecute($gg_trg_Help9)
>condition:0=OperatorCompareUnit(GetTriggerUnit(), OperatorEqualENE, $Hero_mechanic)
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I035")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroUseItem)
