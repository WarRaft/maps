[trigger]
name="pos rep"
description=""
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Cheat["4"])
action=SetVariable($Reputation, "1.00")
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "8"), OperatorEqualENE, "-pos rep")
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
