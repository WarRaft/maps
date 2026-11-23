[trigger]
name="Witch Doctor Mana Recovery"
description="// Witch Doctor Mana recovery\r\n// May 21 2009\r\n// Ray Maloney\r\n\r\n// These Mana Systems are custom, and replace the default WC3 Mana recovery based on INT Score.\r\n// they will likely need adjustment in numbers, and may end up being tied into character stats instead of being\r\n// set numbers based on class.\r\n\r\n1. The Witch doctor Recovers Mana at a rate of 5 per 3 seconds."
action=ForGroupMultiple(GetUnitsOfTypeIdAll("Ulic"))
>action:0=SetUnitManaBJ(GetEnumUnit(), OperatorReal(GetUnitStateSwap(UnitStateMana, GetEnumUnit()), OperatorAdd, "1.50"))
event=TriggerRegisterTimerEventPeriodic("0.60")
