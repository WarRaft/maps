[trigger]
name="Marauder"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=EnableTrigger($gg_trg_Cinematic_Marauder)
action=CreateFogModifierRadiusLocBJ(EnabledDisabledEnabled, Player00, FogStateVisible, GetRectCenter($gg_rct_REG_Point_of_View1), "450.00")
action=SetVariable($Eye["1"], GetLastCreatedFogModifier())
action=ForLoopAMultiple("1", "7")
>action:0=CreateNUnitsAtLoc("1", "n01O", PlayerNA, GetRectCenter($gg_rct_REG_Rats_Spawn), RealUnitFacing)
>action:0=GroupAddUnitSimple(GetLastCreatedUnit(), $Rats_Group)
>action:0=IssueTargetOrder(GetLastCreatedUnit(), UnitOrderAttackUnit, $UNIT_Marauder)
action=SetPlayerAllianceStateBJ(PlayerNP, PlayerNA, AllianceSettingUnallied)
action=TriggerSleepAction("0.50")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Marauder, "TRIGSTR_2781", $gg_snd_Marauder01, "TRIGSTR_2782", AddSetToSet, "2.00", WaitDontDont)
action=TriggerSleepAction("2.50")
action=TransmissionFromUnitWithNameBJ(GetPlayersAll(), $UNIT_Marauder, "TRIGSTR_2789", $gg_snd_Marauder02, "TRIGSTR_2790", AddSetToAdd, "0.00", WaitDontDont)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Marauder_Entrance)
