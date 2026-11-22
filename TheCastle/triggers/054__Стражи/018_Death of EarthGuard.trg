[trigger]
name="Death of EarthGuard"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=AddSpecialEffectLocBJ(GetUnitLoc(GetDyingUnit()), "EFFECTS\\AncientExplode.mdx")
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_EarthGuard)
>action:0=IfThenElse(condition:OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01Q") ~"", action:KillDestructable(GetEnumDestructable()) ~"DoNothing", action:DoNothing())
action=IfThenElseMultiple()
>action:1=KillDestructable($gg_dest_Dofw_3072)
>condition:0=OperatorCompareBoolean(IsUnitDeadBJ($UNIT_WaterGuard), OperatorEqualENE, "true")
