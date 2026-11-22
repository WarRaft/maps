[trigger]
name="Dark healing"
description=""
action=CustomScriptCode("call GroupEnumUnitsInRange (udg_TempGroup, GetUnitX (udg_Hero_shaman), GetUnitY (udg_Hero_shaman), 400, null) ")
action=ForGroupMultiple($TempGroup)
>action:0=IfThenElseMultiple()
>>action:1=CustomScriptCode("call DestroyEffect(AddSpecialEffectTargetUnitBJ( \"origin\", GetEnumUnit(), \"Objects\\\\Spawnmodels\\\\Undead\\\\UndeadDissipate\\\\UndeadDissipate.mdl\" ))")
>>action:1=UnitDamageTargetBJ($Hero_shaman, GetEnumUnit(), "200.00", AttackTypeChaos, DamageTypeNormal)
>>condition:0=OperatorComparePlayer(GetOwningPlayer(GetEnumUnit()), OperatorNotEqualENE, Player00)
>>condition:0=OperatorComparePlayer(GetOwningPlayer(GetEnumUnit()), OperatorNotEqualENE, Player01)
>>condition:0=OperatorComparePlayer(GetOwningPlayer(GetEnumUnit()), OperatorNotEqualENE, Player02)
>>condition:0=OperatorComparePlayer(GetOwningPlayer(GetEnumUnit()), OperatorNotEqualENE, PlayerNP)
>>condition:0=OperatorCompareBoolean(IsUnitAliveBJ(GetEnumUnit()), OperatorEqualENE, "true")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A05C")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
