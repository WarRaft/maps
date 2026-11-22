[trigger]
name="Naga Help"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=TriggerSleepAction("3.00")
action=QuestMessageBJ($Players, QuestMessageTypeItemAcquired, "TRIGSTR_2929")
action=UnitAddIndicatorBJ($Hero_shaman, "100", "100", "100", "0")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $Hero_shaman, "TRIGSTR_2927", SoundNull, "TRIGSTR_2928", AddSetToAdd, "0.00", WaitDontWait)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A027")
