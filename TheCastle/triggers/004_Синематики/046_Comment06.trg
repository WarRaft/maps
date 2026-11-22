[trigger]
name="Comment06"
description="Сообщение о тенях.\r\n-----------------------------------\r\nЭти тени словно растворились. Но что же их уничтожило?"
action=DisableTrigger(GetTriggeringTrigger())
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "0.00")
action=TriggerSleepAction("1.00")
action=UnitAddIndicatorBJ($Hero_shaman, "100", "100", "100", "0")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $Hero_shaman, GetHeroProperName($Hero_shaman), $gg_snd_Shaman12, $TEXT_Shaman["12"], AddSetToSet, "1.00", WaitDontDont)
action=TriggerSleepAction("5.00")
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "100.00")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetKillingUnitBJ()), OperatorEqualENE, "n00F")
event=TriggerRegisterUnitEvent($gg_unit_e001_0131, UnitEventDeath)
event=TriggerRegisterUnitEvent($gg_unit_e001_0000, UnitEventDeath)
event=TriggerRegisterUnitEvent($gg_unit_e001_0074, UnitEventDeath)
event=TriggerRegisterUnitEvent($gg_unit_e001_0132, UnitEventDeath)
