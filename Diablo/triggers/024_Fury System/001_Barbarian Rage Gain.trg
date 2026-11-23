[trigger]
name="Barbarian Rage Gain"
description="//Barbarian Rage Gain Modifications\r\n//May 21 2009\r\n//Ray Maloney\r\n\r\n1. Raised the quantity of mana gained, to coincide with the larger rage pool.\r\n2. Set a cooldown on the mana leak of the barbarian\r\n"
action=IfThenElseMultiple()
action=SetUnitManaBJ(GetAttacker(), OperatorReal(GetUnitStateSwap(UnitStateMana, GetAttacker()), OperatorAdd, "15.00"))
action=IfThenElseMultiple()
>action:1=SetVariable($BarbarianRageDrainTimr[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))], "12")
>condition:0=OperatorCompareInteger($BarbarianRageDrainTimr[GetConvertedPlayerId(GetOwningPlayer(GetAttacker()))], OperatorLess, "12")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetAttacker()), OperatorEqualENE, "Otch")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventAttacked)
