[trigger]
name="adm bridge"
description=""
action=PlaySoundBJ($gg_snd_QuestNew)
action=DestructableRestoreLife($gg_dest_DTs2_0673, "2500.00", ShowHideShow)
action=DestructableRestoreLife($gg_dest_DTs2_0672, "2500.00", ShowHideShow)
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "11"), OperatorEqualENE, "-adm_bridge")
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
