[trigger]
name="Quake02"
description=""
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorLessEq, OperatorReal(OperatorReal("20000.00", OperatorMultiply, $Boss_HP), OperatorMultiply, "0.30"))
event=TriggerRegisterUnitEvent($gg_unit_n004_0142, UnitEventAttacked)
action=DisableTrigger(GetTriggeringTrigger())
action=EnableTrigger($gg_trg_Decaying_Room)
action=DisplayTextToForce(GetPlayersAll(), "TRIGSTR_2466")
action=ForForceMultiple(GetPlayersAll())
>action:0=CameraSetEQNoiseForPlayer(GetEnumPlayer(), "5.00")
action=AddSpecialEffectTargetUnitBJ("origin", $gg_unit_n004_0142, "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
action=SetUnitAnimation($gg_unit_n004_0142, "Stand - 3")
