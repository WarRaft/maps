[trigger]
name="Death of WaterGuard"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=AddSpecialEffectLocBJ(GetUnitLoc(GetDyingUnit()), "EFFECTS\\AncientExplode.mdx")
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_WaterGuard)
>action:0=IfThenElse(condition:OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01R") ~"", action:KillDestructable(GetEnumDestructable()) ~"DoNothing", action:DoNothing())
action=IfThenElseMultiple()
>action:1=KillDestructable($gg_dest_Dofw_3072)
>condition:0=OperatorCompareBoolean(IsUnitDeadBJ($UNIT_EarthGuard), OperatorEqualENE, "true")
