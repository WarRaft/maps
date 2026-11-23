[trigger]
name="Players 5"
description="Sets the number of players to 5, changing the difficulty accordingly."
action=SetVariable($GameHandicap, OperatorReal("100.00", OperatorMultiply, OperatorReal("5.00", OperatorDivide, "6.00")))
action=SetVariable($XPHandicap, OperatorReal("100.00", OperatorMultiply, OperatorReal("6.00", OperatorDivide, "7.00")))
action=TriggerExecute($gg_trg_PlayerDifficulty)
action=SetVariable($Boss_HP, OperatorReal("5.00", OperatorDivide, "6.00"))
