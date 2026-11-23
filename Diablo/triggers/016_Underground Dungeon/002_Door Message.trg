[trigger]
name="Door Message"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
action=DisplayTextToForce(GetPlayersAll(), "TRIGSTR_1432")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_006)
