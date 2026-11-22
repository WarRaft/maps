[trigger]
name="Help11"
description="TEXT_Hint[18] = |cff32cd32ПОДСКАЗКА:|r Навыки Героев изменились."
initially_off=1
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["18"])
