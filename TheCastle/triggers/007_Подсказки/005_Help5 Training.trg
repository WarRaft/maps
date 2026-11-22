[trigger]
name="Help5 Training"
description=""
condition=OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I000")
action=DisableTrigger(GetTriggeringTrigger())
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["5"])
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHeroPickUpItem)
