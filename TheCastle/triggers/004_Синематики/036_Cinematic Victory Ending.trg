[trigger]
name="Cinematic Victory Ending"
description=""
action=CinematicFadeBJ(FadeTypeOptionFadeOut, "1.00", CineFilterTextureBlack, "0", "0", "0", "0")
action=TriggerSleepAction("0.90")
action=ClearTextMessagesBJ(GetPlayersAll())
action=CommentString("Необходимые действия за кадром (звук, перемещение юнитов)")
action=CustomVictoryBJ(Player00, UseSkipOptionUse, UseSkipOptionUse)
action=CustomVictoryBJ(Player01, UseSkipOptionUse, UseSkipOptionUse)
action=CustomVictoryBJ(Player02, UseSkipOptionUse, UseSkipOptionUse)
