[trigger]
name="neg rep"
description=""
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Cheat["5"])
action=SetVariable($Reputation, "-1.00")
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "8"), OperatorEqualENE, "-neg rep")
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
