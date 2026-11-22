[trigger]
name="Death of Skeleton merchant"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=SetUnitUserData($UNIT_Skeleton_merchant, GetRandomInt("1", "3"))
action=IfThenElseMultiple()
>action:1=CreateItemLoc("I00C", GetUnitLoc($UNIT_Skeleton_merchant))
>action:2=IfThenElseMultiple()
>>action:2=CreateItemLoc("I00D", GetUnitLoc($UNIT_Skeleton_merchant))
>>action:1=CreateItemLoc("I00D", GetUnitLoc($UNIT_Skeleton_merchant))
>>condition:0=OperatorCompareInteger(GetUnitUserData($UNIT_Skeleton_merchant), OperatorEqual, "2")
>condition:0=OperatorCompareInteger(GetUnitUserData($UNIT_Skeleton_merchant), OperatorEqual, "1")
