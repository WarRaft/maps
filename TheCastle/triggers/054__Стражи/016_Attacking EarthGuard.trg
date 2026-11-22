[trigger]
name="Attacking EarthGuard"
description=""
action=CustomScriptCode("local effect temp_effect")
action=IfThenElseMultiple()
>action:1=SetUnitLifeBJ($UNIT_EarthGuard, OperatorReal(GetUnitStateSwap(UnitStateLife, $UNIT_EarthGuard), OperatorAdd, "100.00"))
>action:1=CustomScriptCode("set temp_effect = AddSpecialEffectTarget(\"Abilities\\\\Spells\\\\Undead\\\\DeathPact\\\\DeathPactTarget.mdl\", udg_UNIT_EarthGuard, \"origin\")")
>action:1=TriggerSleepAction("2.00")
>action:1=CustomScriptCode("call DestroyEffect( temp_effect )")
>action:1=CustomScriptCode("set temp_effect = null")
>condition:0=OperatorCompareReal(GetEventDamage(), OperatorLessEq, "1.00")
>condition:0=OperatorCompareReal(GetEventDamage(), OperatorGreater, "0.00")
