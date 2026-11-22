[trigger]
name="Lever07 Invisible"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=PlaySoundAtPointBJ($gg_snd_Lever, "100", Location("11260.00", "9600.00"), "0")
action=KillUnit(GetSpellTargetUnit())
action=ModifyGateBJ(GateOperationOpen, $gg_dest_B016_6865)
action=RemoveUnit($gg_unit_n00H_0133)
action=CreateDeadDestructableLocBJ("B00E", OffsetLocation(GetUnitLoc($gg_unit_n00H_0133), "45.00", "0.00"), "45.00", "0.90", "0")
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Destructable09)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A009")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetSpellTargetUnit()), OperatorEqualENE, "n00H")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
