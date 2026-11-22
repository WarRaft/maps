[trigger]
name="Comment04"
description="Сообщение о кровавых кристаллах.\r\n-------------------------------------------------------------\r\nКровавые кристаллы... Похоже, что тьма действительно поглощает этот Замок."
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "0.00")
action=TriggerSleepAction("1.00")
action=UnitAddIndicatorBJ($Hero_shaman, "100", "100", "100", "0")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $Hero_shaman, GetHeroProperName($Hero_shaman), $gg_snd_Shaman10, $TEXT_Shaman["10"], AddSetToSet, "2.00", WaitDontDont)
action=TriggerSleepAction("5.00")
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "100.00")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Comment)
