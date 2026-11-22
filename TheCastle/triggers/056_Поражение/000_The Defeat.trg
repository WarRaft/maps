[trigger]
name="The Defeat"
description=""
initially_off=1
action=QuestMessageBJ(GetPlayersAll(), QuestMessageTypeFailed, "TRIGSTR_1480")
action=ForForceMultiple($Players)
>action:0=SetCameraFieldForPlayer(GetEnumPlayer(), CameraFieldTargetDistance, "80.00", "50.00")
action=CinematicFadeBJ(FadeTypeOptionFadeOut, "5.00", CineFilterTextureBlack, "0", "0", "0", "0")
action=TriggerSleepAction("5.00")
action=CustomDefeatBJ(Player00, "TRIGSTR_1481")
action=CustomDefeatBJ(Player01, "TRIGSTR_1482")
action=CustomDefeatBJ(Player02, "TRIGSTR_1483")
