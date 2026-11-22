[trigger]
name="Compulsion timer"
description=""
initially_off=1
action=IfThenElseMultiple()
>action:2=CustomScriptCode("call GroupClear( udg_Provocation_Group )")
>action:2=DisableTrigger(GetTriggeringTrigger())
>action:1=ForGroupMultiple($Provocation_Group)
>>action:0=IfThenElseMultiple()
>>>action:1=IssueTargetOrder(GetEnumUnit(), UnitOrderAttackUnit, $Hero_warrior)
>>>condition:0=OperatorCompareBoolean(IsUnitAliveBJ(GetEnumUnit()), OperatorEqualENE, "true")
>>>condition:0=OperatorCompareBoolean(UnitHasBuffBJ(GetEnumUnit(), "B01G"), OperatorEqualENE, "true")
>condition:0=OperatorCompareReal(TimerGetRemaining($Provocation_Timer), OperatorGreater, "0.00")
event=TriggerRegisterTimerEventPeriodic("0.50")
