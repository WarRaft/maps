[trigger]
name="Help9"
description="TEXT_Hint[9] = |cff32cd32ПОДСКАЗКА:|r Изучен новый чертёж."
action=TriggerSleepAction("0.90")
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["9"])
