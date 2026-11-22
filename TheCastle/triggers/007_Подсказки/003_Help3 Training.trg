[trigger]
name="Help3 Training"
description=""
initially_off=1
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareUnit(GetAttackedUnitBJ(), OperatorEqualENE, $Hero_warrior)
condition=OperatorCompareReal(GetUnitStateSwap(UnitStateLife, $Hero_warrior), OperatorLessEq, "350.00")
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["3"])
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventAttacked)
