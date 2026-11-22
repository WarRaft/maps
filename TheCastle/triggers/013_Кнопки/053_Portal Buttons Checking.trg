[trigger]
name="Portal Buttons Checking"
description=""
initially_off=1
action=IfThenElseMultiple()
>action:2=KillDestructable(LoadDestructableHandleBJ("19", "1", GetLastCreatedHashtableBJ()))
>action:2=KillDestructable(LoadDestructableHandleBJ("19", "2", GetLastCreatedHashtableBJ()))
>action:2=DisableTrigger($gg_trg_Portal19)
>action:2=DisableTrigger($gg_trg_Portal20)
>action:2=SetVariable($Portal_Activity_Bool["19"], "false")
>action:1=CommentString("Открываем портал № 19")
>action:1=CustomScriptCode("call TeoPortalRevival(19)")
>action:1=EnableTrigger($gg_trg_Portal19)
>action:1=EnableTrigger($gg_trg_Portal20)
>condition:0=AndMultiple()
>>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["14"]), OperatorEqualENE, "false")
>>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["15"]), OperatorEqualENE, "false")
