[trigger]
name="Hero Repick"
description=""
condition=OperatorCompareBoolean($DisableRepick[GetConvertedPlayerId(GetTriggerPlayer())], OperatorEqualENE, "false")
action=RemoveUnit($Heroes[GetConvertedPlayerId(GetTriggerPlayer())])
action=SetVariable($Heroes[GetConvertedPlayerId(GetTriggerPlayer())], UnitNull)
action=SetVariable($PlayerSelectsUnit[GetConvertedPlayerId(GetTriggerPlayer())], "false")
event=TriggerRegisterPlayerChatEvent(Player00, "-repick", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player01, "-repick", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player02, "-repick", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player03, "-repick", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player04, "-repick", ChatMatchTypeExact)
event=TriggerRegisterPlayerChatEvent(Player05, "-repick", ChatMatchTypeExact)
