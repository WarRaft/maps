[trigger]
name="Death of Hellish Creature"
description=""
action=AddSpecialEffectLocBJ(GetUnitLoc(GetDyingUnit()), "EFFECTS\\AncientExplode.mdx")
action=ModifyGateBJ(GateOperationOpen, $gg_dest_B017_6573)
