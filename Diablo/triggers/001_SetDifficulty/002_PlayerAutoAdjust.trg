[trigger]
name="PlayerAutoAdjust"
description="// Difficulty Setter\r\n// June 3 2009\r\n// Ray Maloney\r\n\r\n1. Counts all of the Players in the game and stores the value\r\n2. Displays the Playercount to everyone"
action=SetVariable($TempInt, "0")
action=ForLoopAMultiple("1", "6")
>action:0=IfThenElseMultiple()
>>condition:0=OperatorComparePlayerSlotStatus(GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexA())), OperatorEqualENE, PlayerSlotStatePlaying)
>>condition:0=OperatorCompareBoolean($HeroIsRevivable[GetForLoopIndexA()], OperatorEqualENE, "true")
>>condition:0=OperatorCompareUnit($Heroes[GetForLoopIndexA()], OperatorNotEqualENE, UnitNull)
>>action:1=SetVariable($TempInt, OperatorInt($TempInt, OperatorAdd, "1"))
action=ConditionalTriggerExecute($BallanceLevel[$TempInt])
