[trigger]
name="Help"
description=""
action=CreateQuestBJ(QuestTypeOptDiscovered, "TRIGSTR_1545", "TRIGSTR_1546", "ReplaceableTextures\\CommandButtons\\BTNBansheeAdept.blp")
action=CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_1547")
action=CreateQuestBJ(QuestTypeOptDiscovered, "TRIGSTR_1542", "TRIGSTR_1543", "ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn.blp")
action=CreateQuestItemBJ(GetLastCreatedQuestBJ(), "TRIGSTR_1544")
action=DisableTrigger(GetTriggeringTrigger())
event=MapInitializationEvent()
