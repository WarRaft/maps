[trigger]
name="Cage3"
description=""
action=TriggerSleepAction("0.50")
action=CreateNUnitsAtLoc("1", "n004", PlayerNA, GetRectCenter($gg_rct_REG_Cage3_Start), "145.00")
action=IssuePointOrderLoc(GetLastCreatedUnit(), UnitOrderMove, GetRectCenter($gg_rct_REG_Cage3_Point))
action=SetVariable($UNIT_Zombie, GetLastCreatedUnit())
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "0.00")
action=TriggerSleepAction("1.00")
action=IfThenElseMultiple()
>action:1=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Zombie, GetUnitName($UNIT_Zombie), $gg_snd_Zombie02, $TEXT_Zombie["2"], AddSetToSet, "0.50", WaitDontDont)
>action:1=TriggerSleepAction("4.00")
>action:2=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Zombie, GetUnitName($UNIT_Zombie), $gg_snd_Zombie01, $TEXT_Zombie["1"], AddSetToSet, "1.00", WaitDontDont)
>action:2=TriggerSleepAction("4.00")
>condition:0=OperatorCompareBoolean(IsDestructableDeadBJ($gg_dest_B00B_0146), OperatorEqualENE, "true")
action=VolumeGroupSetVolumeBJ(VolumeGroupUnitSounds, "100.00")
event=TriggerRegisterDeathEvent($gg_dest_LOcg_4481)
