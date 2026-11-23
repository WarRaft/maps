[trigger]
name="Temp"
description=""
action=AddSpecialEffectTargetUnitBJ("head", GetTriggerUnit(), "Abilities\\Spells\\Orc\\Voodoo\\VoodooAuraTarget.mdl")
action=SetVariable($FireBomb[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetLastCreatedEffectBJ())
action=SetVariable($FlameStrike_Lvl[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetUnitAbilityLevelSwapped("A000", GetTriggerUnit()))
action=UnitRemoveAbilityBJ("A000", GetTriggerUnit())
action=UnitAddAbilityBJ("A044", GetTriggerUnit())
action=PolledWait("5.00")
action=DestroyEffectBJ($FireBomb[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
action=UnitRemoveAbilityBJ("A044", GetTriggerUnit())
action=UnitAddAbilityBJ("A000", GetTriggerUnit())
action=SetUnitAbilityLevelSwapped("A000", GetTriggerUnit(), $FlameStrike_Lvl[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
