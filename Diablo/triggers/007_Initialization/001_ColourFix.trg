[trigger]
name="ColourFix"
description=""
action=ForLoopAMultiple("1", "6")
>action:0=SetUnitColor($Heroes[GetForLoopIndexA()], GetPlayerColor(GetOwningPlayer($Heroes[GetForLoopIndexA()])))
event=TriggerRegisterTimerEventPeriodic("1.00")
