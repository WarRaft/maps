[trigger]
name="Attack of Skeleton merchant"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEventDamageSource(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareReal(GetEventDamage(), OperatorGreaterEq, "1.00")
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitOwner($UNIT_Skeleton_merchant, PlayerNA, ChangeColorFalse)
action=UnitRemoveAbilityBJ("Apit", $UNIT_Skeleton_merchant)
action=UnitRemoveAbilityBJ("Aneu", $UNIT_Skeleton_merchant)
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Merchant, "TRIGSTR_4200", SoundNull, "TRIGSTR_4201", AddSetToAdd, "0.00", WaitDontDont)
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "5.00"))
