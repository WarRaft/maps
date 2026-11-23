[trigger]
name="Flaming Pets"
description=""
action=IfThenElseMultiple()
>action:1=UnitAddAbilityBJ("A03Y", GetSpellTargetUnit())
>action:1=SetUnitAbilityLevelSwapped("A03Y", GetSpellTargetUnit(), GetUnitLevel(GetSpellTargetUnit()))
>action:1=TriggerSleepAction("10.00")
>action:1=UnitRemoveAbilityBJ("A03Y", GetSpellTargetUnit())
>condition:0=OrMultiple()
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetSpellTargetUnit()), OperatorEqualENE, "osw1")
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetSpellTargetUnit()), OperatorEqualENE, "osw2")
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetSpellTargetUnit()), OperatorEqualENE, "osw3")
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetSpellTargetUnit()), OperatorEqualENE, "o000")
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetSpellTargetUnit()), OperatorEqualENE, "o001")
condition=AndMultiple()
>condition:0=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A004")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
