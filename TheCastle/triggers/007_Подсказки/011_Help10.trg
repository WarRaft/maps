[trigger]
name="Help10"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call QuestSetCompleted(udg_Task_Main, true)")
action=IfThenElseMultiple()
>action:2=QuestMessageBJ($Players, QuestMessageTypeCompleted, "TRIGSTR_4752")
>action:1=QuestMessageBJ($Players, QuestMessageTypeCompleted, "TRIGSTR_4387")
>condition:0=OperatorCompareString($CONSTANT_LANGUAGE, OperatorEqualENE, "RU")
