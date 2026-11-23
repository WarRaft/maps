[trigger]
name="Players Default"
description="// Players Default\r\n// June 3 2009\r\n// Ray Maloney\r\n\r\n1. Sets the player numbers and experience rates to the default settings."
event=MapInitializationEvent()
action=SetVariable($BallanceLevel["1"], $gg_trg_Players_1)
action=SetVariable($BallanceLevel["2"], $gg_trg_Players_2)
action=SetVariable($BallanceLevel["3"], $gg_trg_Players_3)
action=SetVariable($BallanceLevel["4"], $gg_trg_Players_4)
action=SetVariable($BallanceLevel["5"], $gg_trg_Players_5)
action=SetVariable($BallanceLevel["6"], $gg_trg_Players_6)
action=ForLoopAMultiple("1", "6")
>action:0=IfThenElseMultiple()
>>condition:0=OperatorComparePlayerSlotStatus(GetPlayerSlotState(ConvertedPlayer(GetForLoopIndexA())), OperatorEqualENE, PlayerSlotStatePlaying)
>>action:1=SetVariable($HeroIsRevivable[GetForLoopIndexA()], "true")
action=TriggerExecute($gg_trg_PlayerAutoAdjust)
