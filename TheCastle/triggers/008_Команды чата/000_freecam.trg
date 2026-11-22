[trigger]
name="freecam"
description=""
action=IfThenElseMultiple()
>action:2=IfThenElseMultiple()
>>action:1=SetVariable($FREECAM[GetConvertedPlayerId(GetTriggerPlayer())], "false")
>>action:1=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Cheat["2"])
>>condition:0=OperatorCompareInteger(S2I(SubStringBJ(GetEventPlayerChatString(), "10", "2")), OperatorEqual, "0")
>action:1=SetVariable($FREECAM[GetConvertedPlayerId(GetTriggerPlayer())], "true")
>action:1=ResetToGameCameraForPlayer(GetTriggerPlayer(), "0")
>action:1=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), $TEXT_Cheat["1"])
>condition:0=OperatorCompareInteger(S2I(SubStringBJ(GetEventPlayerChatString(), "10", "2")), OperatorEqual, "1")
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "9"), OperatorEqualENE, "-freecam ")
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player01, "", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player02, "", ChatMatchTypeExact)
