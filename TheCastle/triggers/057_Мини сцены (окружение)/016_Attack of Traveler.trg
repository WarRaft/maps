[trigger]
name="Attack of Traveler"
description=""
condition=OperatorCompareReal(GetEventDamage(), OperatorGreaterEq, "1.00")
condition=OperatorCompareBoolean(IsUnitType(GetEventDamageSource(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitOwner($UNIT_Traveler, PlayerNA, ChangeColorFalse)
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Traveler, "TRIGSTR_2725", $gg_snd_Traveler05, "TRIGSTR_2726", AddSetToAdd, "0.00", WaitDontDont)
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "10.00"))
