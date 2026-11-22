[trigger]
name="Lattice with rats"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Destructable07)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "B01M")
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Neutral_Units1))
>action:0=IfThenElseMultiple()
>>action:1=SetUnitOwner(GetEnumUnit(), PlayerNA, ChangeColorTrue)
>>action:1=UnitRemoveAbilityBJ("Awan", GetEnumUnit())
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnumUnit()), OperatorEqualENE, "n011")
event=TriggerRegisterDeathEvent($gg_dest_DTg1_4587)
