[trigger]
name="Players 1"
description="Sets the number of players to 1, changing the difficulty accordingly."
action=SetVariable($GameHandicap, OperatorReal("100.00", OperatorMultiply, OperatorReal("1", OperatorDivide, "6.00")))
action=SetVariable($XPHandicap, OperatorReal("100.00", OperatorMultiply, OperatorReal("2.00", OperatorDivide, "7.00")))
action=TriggerExecute($gg_trg_PlayerDifficulty)
action=SetVariable($Boss_HP, OperatorReal("1", OperatorDivide, "6.00"))
