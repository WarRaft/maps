[trigger]
name="Comment01"
description="Включается триггером Sceletons  в папке \"_Скелеты из портала\""
initially_off=1
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Hint)
action=DisableTrigger(GetTriggeringTrigger())
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "0.00")
action=TriggerSleepAction("1.00")
action=CommentString("Сообщение Акнеладу")
action=UnitAddIndicatorBJ($Hero_shaman, "100", "100", "100", "0")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $Hero_shaman, GetHeroProperName($Hero_shaman), $gg_snd_Shaman04, $TEXT_Shaman["4"], AddSetToSet, "1.00", WaitDontDont)
action=TriggerSleepAction("4.00")
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "100.00")
