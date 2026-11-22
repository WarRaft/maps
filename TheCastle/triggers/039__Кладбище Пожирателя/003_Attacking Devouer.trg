[trigger]
name="Attacking Devouer"
description=""
action=CustomScriptCode("local effect temp_effect")
action=SetVariable($HP_Devouer, GetUnitStateSwap(UnitStateLife, $UNIT_Devouer))
action=IfThenElseMultiple()
>action:2=TriggerSleepAction("0.01")
>action:2=IfThenElseMultiple()
>>action:1=KillUnit($UNIT_Devouer)
>>condition:0=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, $UNIT_Devouer), OperatorLessEq, "2.00")
>action:1=TriggerSleepAction("0.01")
>action:1=SetUnitLifeBJ($UNIT_Devouer, OperatorReal($HP_Devouer, OperatorAdd, OperatorReal("2.00", OperatorMultiply, GetEventDamage())))
>action:1=CustomScriptCode("set temp_effect = AddSpecialEffectTarget( \"Abilities\\\\Spells\\\\Human\\\\Heal\\\\HealTarget.mdl\", udg_UNIT_Devouer, \"origin\" )")
>action:1=TriggerSleepAction("2.00")
>action:1=CustomScriptCode("call DestroyEffect( temp_effect )")
>action:1=CustomScriptCode("set temp_effect = null")
>condition:0=OperatorCompareBoolean(IsUnitType(GetEventDamageSource(), UnitTypeHero), OperatorEqualENE, "true")
