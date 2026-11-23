[trigger]
name="Sample Meele Knockback Spell"
description=""
action=SetVariable($KBA_Caster, GetTriggerUnit())
action=SetVariable($KBA_TargetUnit, GetSpellTargetUnit())
action=SetVariable($KBA_StartingPosition, GetUnitLoc(GetTriggerUnit()))
action=SetVariable($KBA_Level, GetUnitAbilityLevelSwapped(GetSpellAbilityId(), GetTriggerUnit()))
action=SetVariable($KBA_Speed, "7.00")
action=SetVariable($KBA_DistancePerLevel, "250.00")
action=SetVariable($KBA_SpecialEffects["1"], "Abilities\\Spells\\Undead\\OrbOfDeath\\OrbOfDeathMissile.mdl")
action=SetVariable($KBA_SpecialEffects["2"], "Abilities\\Spells\\Orc\\FeralSpirit\\feralspiritdone.mdl")
action=SetVariable($KBA_DestroyTrees, "false")
action=ConditionalTriggerExecute($gg_trg_Cast_A_Knockback)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "ACfb")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellCast)
