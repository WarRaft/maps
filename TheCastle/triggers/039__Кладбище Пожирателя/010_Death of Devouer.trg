[trigger]
name="Death of Devouer"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Corpses_respawn)
action=DisableTrigger($gg_trg_Corpses_death)
action=DisableTrigger($gg_trg_Attacking_Devouer)
action=CustomScriptCode("call DestroyEffect(AddSpecialEffect( \"Abilities\\\\Spells\\\\Human\\\\ReviveHuman\\\\ReviveHuman.mdl\", -5900, -4100 ))")
action=SetDoodadAnimationRectBJ("stand", "D002", $gg_rct_REG_Corpses_spawn)
action=ShowDestructableBJ(ShowHideShow, $gg_dest_B00H_9267)
