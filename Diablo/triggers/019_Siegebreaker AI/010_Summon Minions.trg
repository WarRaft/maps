[trigger]
name="Summon Minions"
description=""
event=TriggerRegisterUnitEvent($gg_unit_n007_0225, UnitEventAttacked)
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, GetTriggerUnit()), OperatorLessEq, OperatorReal(OperatorReal("26000.00", OperatorMultiply, $Boss_HP), OperatorMultiply, "0.70"))
action=DisableTrigger(GetTriggeringTrigger())
action=AddSpecialEffectTargetUnitBJ("origin", $gg_unit_n007_0225, "Abilities\\Spells\\NightElf\\BattleRoar\\RoarCaster.mdl")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_070), "war3mapImported\\AncientExplode.mdx")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_071), "war3mapImported\\AncientExplode.mdx")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_072), "war3mapImported\\AncientExplode.mdx")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_069), "war3mapImported\\AncientExplode.mdx")
action=CreateNUnitsAtLoc("1", "u004", Player10, GetRectCenter($gg_rct_Rect_070), RealUnitFacing)
action=CreateNUnitsAtLoc("1", "u004", Player10, GetRectCenter($gg_rct_Rect_071), RealUnitFacing)
action=CreateNUnitsAtLoc("1", "u004", Player10, GetRectCenter($gg_rct_Rect_072), RealUnitFacing)
action=CreateNUnitsAtLoc("1", "u004", Player10, GetRectCenter($gg_rct_Rect_069), RealUnitFacing)
