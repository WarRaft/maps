[trigger]
name="Death of Overseer"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisableTrigger($gg_trg_Prison)
action=CustomScriptCode("call DestroyEffect(AddSpecialEffect( \"Abilities\\\\Spells\\\\Human\\\\ReviveHuman\\\\ReviveHuman.mdl\", -5440, -6780 ))")
action=SetPlayerAllianceStateBJ(Player10, Player00, AllianceSettingUnallied)
action=SetPlayerAllianceStateBJ(Player10, Player01, AllianceSettingUnallied)
action=SetPlayerAllianceStateBJ(Player10, Player02, AllianceSettingUnallied)
action=SetDoodadAnimationRectBJ("stand", "D02O", $gg_rct_REG_Green_Light)
