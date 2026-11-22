[trigger]
name="Corpses death"
description=""
action=CustomScriptCode("local effect temp_effect")
action=CustomScriptCode("call GroupRemoveUnitSimple( GetDyingUnit(), udg_Corpses_Group )")
action=IfThenElseMultiple()
>action:1=CustomScriptCode("set udg_HP_Devouer = GetUnitState(udg_UNIT_Devouer, UNIT_STATE_LIFE )")
>action:1=CustomScriptCode("call SetUnitState( udg_UNIT_Devouer, UNIT_STATE_LIFE, (udg_HP_Devouer + 1200.00) )")
>action:1=CustomScriptCode("set temp_effect = AddSpecialEffectTarget( \"Abilities\\\\Spells\\\\Human\\\\Heal\\\\HealTarget.mdl\", udg_UNIT_Devouer, \"origin\" )")
>action:1=TriggerSleepAction("2.00")
>action:1=CustomScriptCode("call DestroyEffect( temp_effect )")
>action:1=CustomScriptCode("set temp_effect = null")
>condition:0=OperatorCompareUnit(GetKillingUnitBJ(), OperatorEqualENE, $UNIT_Devouer)
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "n00W")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventDeath)
