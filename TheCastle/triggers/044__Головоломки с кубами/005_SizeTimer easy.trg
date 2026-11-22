[trigger]
name="SizeTimer easy"
description="Таймер для анимации увеличения ящика"
action=ForGroupMultiple($EasyPuzzle_Group_New)
>action:0=SetUnitScalePercent(GetEnumUnit(), $BoxSize, $BoxSize, $BoxSize)
condition=OperatorCompareReal($BoxSize, OperatorLessEq, "120.00")
action=SetVariable($BoxSize, OperatorReal($BoxSize, OperatorAdd, $AnimationStep))
action=StartTimerBJ($EasyPuzzle_Size_Timer, PeriodicOptionOneTime, "0.04")
event=TriggerRegisterTimerExpireEventBJ($EasyPuzzle_Size_Timer)
