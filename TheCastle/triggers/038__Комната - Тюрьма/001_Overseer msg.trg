[trigger]
name="Overseer msg"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeItemAcquired, "TRIGSTR_2955")
action=UnitAddIndicatorBJ($UNIT_Overseer, "100", "100", "100", "0")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Overseer, "TRIGSTR_2953", SoundNull, "TRIGSTR_2954", AddSetToAdd, "0.00", WaitDontWait)
condition=OperatorCompareDestructableCode(GetDestructableTypeId(GetDyingDestructable()), OperatorEqualENE, "DTg1")
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Prison)
