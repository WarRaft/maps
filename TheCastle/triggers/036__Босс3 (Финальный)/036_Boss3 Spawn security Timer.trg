[trigger]
name="Boss3 Spawn security Timer"
description=""
initially_off=1
action=ForLoopAMultiple("1", $Boss3_NumMonsters)
>action:0=IfThenElseMultiple()
>>action:1=TriggerExecute($gg_trg_Boss3_Spawn_1_Monster)
>>condition:0=OperatorCompareInteger(CountUnitsInGroup($Boss3_MonsterGroups[GetForLoopIndexA()]), OperatorLess, $Boss3_MaxMonsters[GetForLoopIndexA()])
event=TriggerRegisterTimerEventPeriodic("1.00")
