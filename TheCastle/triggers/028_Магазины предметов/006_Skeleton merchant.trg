[trigger]
name="Skeleton merchant"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Skeleton_Merchant)
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["16"])
action=AddTriggerEvent($gg_trg_Death_of_Skeleton_merchant, event:TriggerRegisterUnitEvent($UNIT_Skeleton_merchant, UnitEventDeath) ~"")
action=AddTriggerEvent($gg_trg_Attack_of_Skeleton_merchant, event:TriggerRegisterUnitEvent($UNIT_Skeleton_merchant, UnitEventDamaged) ~"")
action=TriggerSleepAction("0.50")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Skeleton_merchant, "TRIGSTR_4198", SoundNull, "TRIGSTR_4199", AddSetToAdd, "6.00", WaitDontWait)
