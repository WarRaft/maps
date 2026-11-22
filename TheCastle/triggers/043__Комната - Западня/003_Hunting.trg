[trigger]
name="Hunting"
description=""
initially_off=1
event=TriggerRegisterTimerEventPeriodic("6.00")
action=IfThenElseMultiple()
>action:2=DisableTrigger(GetTriggeringTrigger())
>action:1=EnableTrigger(GetTriggeringTrigger())
>action:1=CommentString("Выбираем ближайшего юнита к Опустошителю")
>action:1=SetVariable($Distance_to_victim, "10000.00")
>action:2=IssuePointOrderLoc($UNIT_Devastator, UnitOrderMove, GetRectCenter($gg_rct_REG_Start_of_Hunting))
>action:1=ForGroupMultiple($Victims_Group)
>>action:0=IfThenElseMultiple()
>>>action:1=SetVariable($Distance_to_victim, DistanceBetweenPoints(GetUnitLoc($UNIT_Devastator), GetUnitLoc(GetEnumUnit())))
>>>action:1=SetVariable($VictimUnit, GetEnumUnit())
>>>condition:0=OperatorCompareReal(DistanceBetweenPoints(GetUnitLoc($UNIT_Devastator), GetUnitLoc(GetEnumUnit())), OperatorLess, $Distance_to_victim)
>action:1=IssueTargetOrder($UNIT_Devastator, UnitOrderAttackUnit, $VictimUnit)
>condition:0=OperatorCompareBoolean(IsUnitGroupEmptyBJ($Victims_Group), OperatorEqualENE, "false")
