[trigger]
name="Help6 Training"
description="Окончание первого задания"
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("call QuestSetCompleted(udg_Task_First, true)")
action=IfThenElseMultiple()
>action:2=QuestMessageBJ($Players, QuestMessageTypeCompleted, "TRIGSTR_4746")
>action:1=QuestMessageBJ($Players, QuestMessageTypeCompleted, "TRIGSTR_1467")
>condition:0=OperatorCompareString($CONSTANT_LANGUAGE, OperatorEqualENE, "RU")
action=TriggerSleepAction("3.00")
action=QuestSetDiscoveredBJ($Task_Main, DiscoveredOptionDiscovered)
action=IfThenElseMultiple()
>action:2=QuestMessageBJ($Players, QuestMessageTypeDiscovered, "TRIGSTR_4749")
>action:1=QuestMessageBJ($Players, QuestMessageTypeDiscovered, "TRIGSTR_1721")
>condition:0=OperatorCompareString($CONSTANT_LANGUAGE, OperatorEqualENE, "RU")
action=TriggerSleepAction("3.00")
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["6"])
event=TriggerRegisterDeathEvent($gg_dest_B000_0261)
