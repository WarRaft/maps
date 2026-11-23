[trigger]
name="Skeleton Death SFX"
description=""
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u002")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u006")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u007")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u009")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u004")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "u005")
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "Abilities\\Spells\\Undead\\ReplenishMana\\SpiritTouchTarget.mdl")
action=DestroyEffectBJ(GetLastCreatedEffectBJ())
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
