[trigger]
name="Graveyard Entrance"
description=""
action=SetVariable($Devouer_in_zone, "true")
condition=OperatorCompareUnit(GetEnteringUnit(), OperatorEqualENE, $UNIT_Devouer)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Graveyard)
