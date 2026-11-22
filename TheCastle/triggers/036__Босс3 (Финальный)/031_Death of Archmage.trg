[trigger]
name="Death of Archmage"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Archmage_AI)
action=DisableTrigger($gg_trg_Skeleton_healers_timer)
action=PauseTimerBJ(PauseResumePause, $Archmage_Heal_Timer)
action=AddSpecialEffectLocBJ(GetUnitLoc(GetDyingUnit()), "EFFECTS\\AncientExplode.mdx")
action=ForGroupMultiple($Archmage_Heal_Group)
>action:0=KillUnit(GetEnumUnit())
action=TriggerExecute($gg_trg_Cinematic_Victory)
