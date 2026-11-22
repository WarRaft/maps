[trigger]
name="Attack of Merchant"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEventDamageSource(), UnitTypeHero), OperatorEqualENE, "true")
condition=OperatorCompareReal(GetEventDamage(), OperatorGreaterEq, "1.00")
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitOwner($UNIT_Merchant, PlayerNA, ChangeColorFalse)
action=UnitRemoveAbilityBJ("Apit", $UNIT_Merchant)
action=UnitRemoveAbilityBJ("Aneu", $UNIT_Merchant)
action=StopSoundBJ($gg_snd_Acolyte01, FadeDontDont)
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "0.00")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Merchant, GetUnitName($UNIT_Merchant), $gg_snd_Acolyte02, "TRIGSTR_2289", AddSetToSet, "0.00", WaitDontDont)
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "5.00"))
action=TriggerSleepAction("2.00")
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "100.00")
