[trigger]
name="Hunter Lair"
description=""
condition=OperatorCompareUnit(GetEnteringUnit(), OperatorEqualENE, $UNIT_Devastator)
action=TriggerExecute($gg_trg_Hunting)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Start_of_Hunting)
