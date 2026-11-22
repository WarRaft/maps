[trigger]
name="Moving HellishCreature"
description=""
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A055")
action=SetVariable($HellishCreature_random, GetRandomInt("1", "3"))
action=IfThenElseMultiple()
>action:2=SetUnitPositionLoc($UNIT_HellishCreature, GetRectCenter($HellishCreature_zone[$HellishCreature_random]))
>action:2=SetUnitAnimation($UNIT_HellishCreature, "birth")
>action:2=QueueUnitAnimationBJ($UNIT_HellishCreature, "stand")
>action:2=SetUnitUserData($UNIT_HellishCreature, $HellishCreature_random)
>action:1=TriggerExecute(GetTriggeringTrigger())
>condition:0=OperatorCompareInteger($HellishCreature_random, OperatorEqual, GetUnitUserData($UNIT_HellishCreature))
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellFinish)
