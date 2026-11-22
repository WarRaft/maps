[trigger]
name="Help4 Training"
description=""
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I003")
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["4"])
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
