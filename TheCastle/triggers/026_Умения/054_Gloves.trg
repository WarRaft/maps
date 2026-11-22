[trigger]
name="Gloves"
description=""
action=SetUnitLifeBJ(GetSpellTargetUnit(), OperatorReal(GetUnitStateSwap(UnitStateLife, GetSpellTargetUnit()), OperatorSubtract, "100.00"))
action=CustomScriptCode("call UnitAddItemByIdSwapped( 'I015', GetSpellTargetUnit() )")
action=CustomScriptCode("call UnitUseItem( GetSpellTargetUnit(), GetLastCreatedItem() )")
action=CustomScriptCode("call RemoveItem( GetLastCreatedItem() )")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A02U")
