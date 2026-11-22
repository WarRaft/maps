[trigger]
name="Death of Lizard"
description=""
action=IfThenElseMultiple()
>action:2=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
>action:2=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
>action:2=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
>action:2=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "5.00"))
>action:1=TriggerExecute($gg_trg_Attack_of_Traveler)
>condition:0=OperatorCompareReal(DistanceBetweenPoints(GetUnitLoc($UNIT_Lizard), GetUnitLoc($UNIT_Traveler)), OperatorLessEq, "300.00")
