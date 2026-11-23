[trigger]
name="Barbarian Mana Leak"
description="// Barbarian Mana Leak\r\n// May 21 2009\r\n// Ray Maloney\r\n\r\n// These Mana Systems are custom, and replace the default WC3 Mana recovery based on INT Score.\r\n// they will likely need adjustment in numbers, and may end up being tied into character stats instead of being\r\n// set numbers based on class.\r\n\r\n1. Barbarian loses mana at a rate of 6 mana per second.\r\n2. If there is a cooldown on the mana drain due to attacking or leveling up, drain the cooldown before touching the actual mana."
action=ForGroupMultiple(GetUnitsOfTypeIdAll("Otch"))
>action:0=IfThenElseMultiple()
>>action:2=SetVariable($BarbarianRageDrainTimr[GetConvertedPlayerId(GetOwningPlayer(GetEnumUnit()))], OperatorInt($BarbarianRageDrainTimr[GetConvertedPlayerId(GetOwningPlayer(GetEnumUnit()))], OperatorSubtract, "1"))
>>condition:0=OperatorCompareInteger($BarbarianRageDrainTimr[GetConvertedPlayerId(GetOwningPlayer(GetEnumUnit()))], OperatorEqual, "0")
>>action:1=SetUnitManaBJ(GetEnumUnit(), OperatorReal(GetUnitStateSwap(UnitStateMana, GetEnumUnit()), OperatorSubtract, "1.00"))
event=TriggerRegisterTimerEventPeriodic("0.17")
