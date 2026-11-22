[trigger]
name="SizeTimer hard"
description="Таймер для анимации увеличения ящика"
action=ForGroupMultiple($HardPuzzle_Group_New)
>action:0=SetUnitScalePercent(GetEnumUnit(), $BoxSize, $BoxSize, $BoxSize)
condition=OperatorCompareReal($BoxSize, OperatorLessEq, "120.00")
action=SetVariable($BoxSize, OperatorReal($BoxSize, OperatorAdd, $AnimationStep))
action=StartTimerBJ($HardPuzzle_Size_Timer, PeriodicOptionOneTime, "0.04")
event=TriggerRegisterTimerExpireEventBJ($HardPuzzle_Size_Timer)
