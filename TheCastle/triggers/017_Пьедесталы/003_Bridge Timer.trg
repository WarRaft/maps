[trigger]
name="Bridge Timer"
description=""
action=IfThenElseMultiple()
>action:1=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Zone_of_Death1))
>>action:0=KillUnit(GetEnumUnit())
>action:1=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Zone_of_Death1_2))
>>action:0=KillUnit(GetEnumUnit())
>action:2=IfThenElseMultiple()
>>action:2=IfThenElseMultiple()
>>>action:1=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Zone_of_Death3))
>>>>action:0=KillUnit(GetEnumUnit())
>>>condition:0=OperatorCompareInteger($Bridge_num, OperatorEqual, "3")
>>action:1=ForGroupMultiple(GetUnitsInRectAll($gg_rct_REG_Zone_of_Death2))
>>>action:0=KillUnit(GetEnumUnit())
>>condition:0=OperatorCompareInteger($Bridge_num, OperatorEqual, "2")
>condition:0=OperatorCompareInteger($Bridge_num, OperatorEqual, "1")
event=TriggerRegisterTimerExpireEventBJ($Bridge_Timer)
