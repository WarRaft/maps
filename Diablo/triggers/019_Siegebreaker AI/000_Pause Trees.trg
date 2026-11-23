[trigger]
name="Pause Trees"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_050)
action=PauseUnitBJ(PauseUnpauseOptionPause, $gg_unit_n00G_0079)
action=PauseUnitBJ(PauseUnpauseOptionPause, $gg_unit_n00G_0002)
action=PauseUnitBJ(PauseUnpauseOptionPause, $gg_unit_n00G_0077)
action=PauseUnitBJ(PauseUnpauseOptionPause, $gg_unit_n00G_0078)
