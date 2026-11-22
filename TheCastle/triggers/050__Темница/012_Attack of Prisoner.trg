[trigger]
name="Attack of Prisoner"
description=""
condition=OperatorCompareReal(GetEventDamage(), OperatorGreaterEq, "1.00")
condition=OperatorCompareBoolean(IsUnitType(GetEventDamageSource(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitOwner($UNIT_Prisoner, PlayerNA, ChangeColorFalse)
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Prisoner, "TRIGSTR_4132", $gg_snd_Prisoner8, "TRIGSTR_4133", AddSetToAdd, "0.00", WaitDontDont)
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "10.00"))
action=SetVariable($Quest_Prisoner, "false")
