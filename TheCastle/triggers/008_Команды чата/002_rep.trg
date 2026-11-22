[trigger]
name="rep"
description=""
action=DisplayTextToForce(GetForceOfPlayer(GetTriggerPlayer()), OperatorString(OperatorString($TEXT_Cheat["3"], " = "), R2S($Reputation)))
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "4"), OperatorEqualENE, "-rep")
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
