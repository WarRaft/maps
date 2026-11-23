[trigger]
name="Monk Mana Recovery"
description="// Wizard Mana recovery\r\n// May 21 2009\r\n// Ray Maloney\r\n\r\n// These Mana Systems are custom, and replace the default WC3 Mana recovery based on INT Score.\r\n// they will likely need adjustment in numbers, and may end up being tied into character stats instead of being\r\n// set numbers based on class.\r\n\r\n1. The Wizard Recovers Mana at a rate of 5 per 2 seconds."
action=ForGroupMultiple(GetUnitsOfTypeIdAll("O002"))
>action:0=IfThenElseMultiple()
>>action:1=SetUnitManaBJ(GetEnumUnit(), OperatorReal(GetUnitStateSwap(UnitStateMana, GetEnumUnit()), OperatorAdd, OperatorReal(GetUnitStateSwap(UnitStateMaxMana, GetEnumUnit()), OperatorDivide, "200.00")))
>>condition:0=OperatorCompareInteger(GetUnitAbilityLevelSwapped("AHab", GetEnumUnit()), OperatorEqual, "0")
event=TriggerRegisterTimerEventPeriodic("0.60")
