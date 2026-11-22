[trigger]
name="Spawn Timer"
description=""
action=ForLoopAMultiple("1", $NumMonsters)
>action:0=IfThenElseMultiple()
>>action:1=TriggerExecute($gg_trg_Spawn_1_Monster)
>>condition:0=OperatorCompareInteger(CountUnitsInGroup($MonsterGroups[GetForLoopIndexA()]), OperatorLess, $MaxMonsters[GetForLoopIndexA()])
>>condition:0=OperatorCompareBoolean(IsUnitAliveBJ($MonsterSpawners[GetForLoopIndexA()]), OperatorEqualENE, "true")
event=TriggerRegisterTimerEventPeriodic("1.00")
