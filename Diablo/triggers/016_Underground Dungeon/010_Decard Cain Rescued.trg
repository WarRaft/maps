[trigger]
name="Decard Cain Rescued"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisplayTextToForce(GetPlayersAll(), "TRIGSTR_1222")
action=TriggerSleepAction("2.00")
action=CreateItemLoc("I02R", GetUnitLoc($gg_unit_n00H_0095))
condition=OperatorCompareUnit(GetTriggerUnit(), OperatorEqualENE, $gg_unit_n00H_0095)
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_093)
