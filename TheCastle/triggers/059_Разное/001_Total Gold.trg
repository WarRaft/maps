[trigger]
name="Total Gold"
description=""
event=TriggerRegisterPlayerStateEvent(Player00, PlayerStateGold, LimitOpGreaterThanOrEqual, "0.00")
event=TriggerRegisterPlayerStateEvent(Player01, PlayerStateGold, LimitOpGreaterThanOrEqual, "0.00")
event=TriggerRegisterPlayerStateEvent(Player02, PlayerStateGold, LimitOpGreaterThanOrEqual, "0.00")
action=DisableTrigger(GetTriggeringTrigger())
action=SetVariable($TotalGold, GetPlayerState(GetTriggerPlayer(), PlayerStateGold))
action=ForForceMultiple($Players)
>action:0=SetPlayerState(GetEnumPlayer(), PlayerStateGold, $TotalGold)
action=EnableTrigger(GetTriggeringTrigger())
