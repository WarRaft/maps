[trigger]
name="Player Leaves"
description=""
action=ConditionalTriggerExecute($gg_trg_DropItems)
action=SetVariable($HeroIsRevivable[GetConvertedPlayerId(GetTriggerPlayer())], "false")
action=RemoveUnit($Heroes[GetConvertedPlayerId(GetTriggerPlayer())])
event=TriggerRegisterPlayerEventLeave(Player00)
event=TriggerRegisterPlayerEventLeave(Player01)
event=TriggerRegisterPlayerEventLeave(Player02)
event=TriggerRegisterPlayerEventLeave(Player03)
event=TriggerRegisterPlayerEventLeave(Player04)
event=TriggerRegisterPlayerEventLeave(Player05)
