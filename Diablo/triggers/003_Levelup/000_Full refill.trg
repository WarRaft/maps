[trigger]
name="Full refill"
description="// Levelup Health Refill\r\n// May 21 2009\r\n// Ray Maloney\r\n\r\n// This system makes gaining a level give full health, like in diablo 1 & 2\r\n\r\n1. Gives Full Health and Mana to a character when they level up.\r\n2. Gives Barbarian Mana Drain a cooldown of 10 seconds."
action=SetUnitLifePercentBJ(GetTriggerUnit(), "100")
action=SetUnitManaPercentBJ(GetTriggerUnit(), "100")
action=IfThenElseMultiple()
>action:1=SetVariable($BarbarianRageDrainTimr[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], "59")
>condition:0=OperatorCompareBoolean(IsUnitInGroup(GetTriggerUnit(), GetUnitsOfTypeIdAll("Otch")), OperatorEqualENE, "true")
action=PlaySoundOnUnitBJ($gg_snd_Levelupcaster, "100", GetTriggerUnit())
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventHero_Level)
