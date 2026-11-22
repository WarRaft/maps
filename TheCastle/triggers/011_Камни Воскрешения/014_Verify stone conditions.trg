[trigger]
name="Verify stone conditions"
description=""
initially_off=1
action=ForLoopAMultiple("1", $ResurrectionStones_num)
>action:0=IfThenElseMultiple()
>>action:2=SetUnitAnimation($ResurrectionStone[GetForLoopIndexA()], "stand")
>>action:2=SetUnitColor($ResurrectionCircle[GetForLoopIndexA()], GetPlayerColor(PlayerNP))
>>action:1=SetUnitAnimation($ResurrectionStone[GetForLoopIndexA()], "stand alternate")
>>action:1=PlaySoundBJ($gg_snd_AutoCastButtonClick1)
>>condition:0=OperatorCompareBoolean($ResurrectionsStones_condition[GetForLoopIndexA()], OperatorEqualENE, "true")
