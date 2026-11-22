[trigger]
name="Death of all Bosses"
description=""
action=IfThenElseMultiple()
>condition:0=OperatorCompareBoolean(IsTriggerEnabled($gg_trg_Death_of_Orc), OperatorEqualENE, "false")
>condition:0=OperatorCompareBoolean(IsTriggerEnabled($gg_trg_Death_of_Goblin), OperatorEqualENE, "false")
>condition:0=OperatorCompareBoolean(IsTriggerEnabled($gg_trg_Death_of_Troll), OperatorEqualENE, "false")
>action:1=ForLoopAMultiple("1", $Boss3_NumMonsters)
>>action:0=ForGroupMultiple($Boss3_MonsterGroups[GetForLoopIndexA()])
>>>action:0=KillUnit(GetEnumUnit())
>action:1=TriggerExecute($gg_trg_Cinematic_Victory_alternate)
