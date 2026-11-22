[trigger]
name="Help7 Training"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["7"])
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventHero_Level)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventHero_Level)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventHero_Level)
