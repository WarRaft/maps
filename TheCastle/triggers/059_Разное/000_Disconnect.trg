[trigger]
name="Disconnect"
description=""
action=ForceRemovePlayerSimple(GetTriggerPlayer(), $Players)
action=SetPlayerState(Player00, PlayerStateFoodUsed, CountPlayersInForceBJ($Players))
action=SetPlayerState(Player01, PlayerStateFoodUsed, CountPlayersInForceBJ($Players))
action=SetPlayerState(Player02, PlayerStateFoodUsed, CountPlayersInForceBJ($Players))
action=ForGroupMultiple(GetUnitsOfPlayerAll(GetTriggerPlayer()))
>action:0=SetUnitOwner(GetEnumUnit(), ForcePickRandomPlayer($Players), ChangeColorTrue)
event=TriggerRegisterPlayerEventLeave(Player00)
event=TriggerRegisterPlayerEventLeave(Player01)
event=TriggerRegisterPlayerEventLeave(Player02)
