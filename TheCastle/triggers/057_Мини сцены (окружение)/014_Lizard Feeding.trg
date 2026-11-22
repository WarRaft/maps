[trigger]
name="Lizard Feeding"
description=""
action=SetUnitOwner($UNIT_Lizard, PlayerNP, ChangeColorFalse)
action=IfThenElseMultiple()
>action:1=UnitRemoveAbilityBJ("Awan", $UNIT_Lizard)
>action:1=IssuePointOrderLoc($UNIT_Lizard, UnitOrderMove, GetUnitLoc($UNIT_Traveler))
>action:1=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 0,80,0)")
>action:1=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 0,80,0)")
>action:1=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 0,80,0)")
>action:1=SetVariable($Reputation, OperatorReal($Reputation, OperatorAdd, "5.00"))
>condition:0=OperatorCompareBoolean(IsTriggerEnabled($gg_trg_Attack_of_Traveler), OperatorEqualENE, "true")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A042")
condition=OperatorCompareUnit(GetSpellTargetUnit(), OperatorEqualENE, $UNIT_Lizard)
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
