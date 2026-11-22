[trigger]
name="Ghost Activation"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Neutral_Units3))
>action:0=IfThenElseMultiple()
>>action:1=SetUnitOwner(GetEnumUnit(), PlayerNA, ChangeColorTrue)
>>action:1=UnitRemoveAbilityBJ("Awan", GetEnumUnit())
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnumUnit()), OperatorEqualENE, "n02M")
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Neutral_Units3)
