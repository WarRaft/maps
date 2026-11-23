[trigger]
name="Quake01"
description=""
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorLessEq, OperatorReal(OperatorReal("20000.00", OperatorMultiply, $Boss_HP), OperatorMultiply, "0.80"))
action=DisplayTextToForce(GetPlayersAll(), "TRIGSTR_2465")
action=DisableTrigger(GetTriggeringTrigger())
action=EnableTrigger($gg_trg_Decaying_Room)
action=ForForceMultiple(GetPlayersAll())
>action:0=CameraSetEQNoiseForPlayer(GetEnumPlayer(), "5.00")
action=AddSpecialEffectTargetUnitBJ("origin", $gg_unit_n004_0142, "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
action=SetUnitAnimation($gg_unit_n004_0142, "Stand - 3")
action=TriggerSleepAction("20.00")
action=DisableTrigger($gg_trg_Decaying_Room)
action=ForForceMultiple(GetPlayersAll())
>action:0=CameraClearNoiseForPlayer(GetEnumPlayer())
event=TriggerRegisterUnitEvent($gg_unit_n004_0142, UnitEventAttacked)
