[trigger]
name="Summon Minions 2"
description=""
event=TriggerRegisterUnitEvent($gg_unit_n007_0225, UnitEventAttacked)
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorLessEq, OperatorReal(OperatorReal("26000.00", OperatorMultiply, $Boss_HP), OperatorMultiply, "0.30"))
action=DisableTrigger(GetTriggeringTrigger())
action=AddSpecialEffectTargetUnitBJ("origin", $gg_unit_n007_0225, "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_070), "war3mapImported\\AncientExplode.mdx")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_071), "war3mapImported\\AncientExplode.mdx")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_072), "war3mapImported\\AncientExplode.mdx")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_069), "war3mapImported\\AncientExplode.mdx")
action=CreateNUnitsAtLoc("2", "n008", Player10, GetRectCenter($gg_rct_Rect_070), RealUnitFacing)
action=CreateNUnitsAtLoc("2", "n008", Player10, GetRectCenter($gg_rct_Rect_071), RealUnitFacing)
action=CreateNUnitsAtLoc("2", "n008", Player10, GetRectCenter($gg_rct_Rect_072), RealUnitFacing)
action=CreateNUnitsAtLoc("2", "n008", Player10, GetRectCenter($gg_rct_Rect_069), RealUnitFacing)
