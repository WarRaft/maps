[trigger]
name="Death of Boss2"
description=""
action=StopMusicBJ(FadeDontFade)
action=AddSpecialEffectLocBJ(GetUnitLoc(GetDyingUnit()), "EFFECTS\\AncientExplode.mdx")
action=TriggerSleepAction("1.00")
action=PlayMusicBJ($gg_snd_Background4)
