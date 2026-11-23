[trigger]
name="Cleave"
description=""
action=SetUnitAnimation(GetSpellAbilityUnit(), "Stand Victory")
action=SetVariable($Cleave_Level[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], GetUnitAbilityLevelSwapped("A01B", GetTriggerUnit()))
action=UnitAddAbilityBJ("A!!(", GetTriggerUnit())
action=SetUnitAbilityLevelSwapped("A!!(", GetTriggerUnit(), GetUnitAbilityLevelSwapped("A01B", GetTriggerUnit()))
action=SetPlayerAbilityAvailableBJ(EnableDisableDisable, "A01B", GetOwningPlayer(GetTriggerUnit()))
action=UnitAddAbilityBJ("A019", GetTriggerUnit())
action=PolledWait("12.00")
action=UnitRemoveAbilityBJ("A!!(", GetTriggerUnit())
action=SetPlayerAbilityAvailableBJ(EnableDisableEnable, "A01B", GetOwningPlayer(GetTriggerUnit()))
action=UnitRemoveAbilityBJ("A019", GetTriggerUnit())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A01B")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
