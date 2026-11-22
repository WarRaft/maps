[trigger]
name="gm"
description=""
action=IfThenElseMultiple()
>action:1=TriggerExecute($gg_trg_HandleCounter)
>action:2=IfThenElseMultiple()
>>action:1=DestroyLeaderboardBJ($HandleBoard)
>>condition:0=OperatorCompareInteger(S2I(SubStringBJ(GetEventPlayerChatString(), "5", "2")), OperatorEqual, "0")
>condition:0=OperatorCompareInteger(S2I(SubStringBJ(GetEventPlayerChatString(), "5", "2")), OperatorEqual, "1")
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "4"), OperatorEqualENE, "-gm ")
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
