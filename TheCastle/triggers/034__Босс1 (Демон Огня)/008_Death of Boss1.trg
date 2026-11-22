[trigger]
name="Death of Boss1"
description=""
action=StopMusicBJ(FadeDontFade)
action=AddSpecialEffectLocBJ(GetUnitLoc(GetDyingUnit()), "EFFECTS\\AncientExplode.mdx")
action=TriggerSleepAction("1.00")
action=PlayMusicBJ($gg_snd_Background2)
action=DisableTrigger($gg_trg_Entrance_in_boss1_area)
action=DisableTrigger($gg_trg_Exit_from_boss1_area)
action=DisableTrigger($gg_trg_Boss1_AI)
action=DisableTrigger($gg_trg_Boss_Obelisk1)
action=DisableTrigger($gg_trg_Boss_Obelisk1_Timer)
action=DisableTrigger($gg_trg_Boss_Obelisk2)
action=DisableTrigger($gg_trg_Boss_Obelisk2_Timer)
action=DisableTrigger($gg_trg_Boss_Obelisk3)
action=DisableTrigger($gg_trg_Boss_Obelisk3_Timer)
action=DisableTrigger($gg_trg_Boss_Obelisk4)
action=DisableTrigger($gg_trg_Boss_Obelisk4_Timer)
