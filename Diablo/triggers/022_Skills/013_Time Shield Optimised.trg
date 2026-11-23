[trigger]
name="Time Shield Optimised"
description=""
action=CreateNUnitsAtLoc("1", "n00O", GetTriggerPlayer(), GetUnitLoc(GetTriggerUnit()), RealUnitFacing)
action=SetVariable($TimeShield[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetLastCreatedUnit())
action=SetUnitAbilityLevelSwapped("A00H", GetLastCreatedUnit(), GetUnitAbilityLevelSwapped("A00R", GetTriggerUnit()))
action=SetPlayerAbilityAvailableBJ(EnableDisableDisable, "A00R", GetOwningPlayer(GetTriggerUnit()))
action=UnitAddAbilityBJ("A00N", GetTriggerUnit())
action=SetUnitAbilityLevelSwapped("A00N", GetTriggerUnit(), GetUnitAbilityLevelSwapped("A00R", GetTriggerUnit()))
action=PolledWait("12.00")
action=KillUnit($TimeShield[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))])
action=UnitRemoveAbilityBJ("A00N", GetTriggerUnit())
action=SetPlayerAbilityAvailableBJ(EnableDisableEnable, "A00R", GetOwningPlayer(GetTriggerUnit()))
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A00R")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
