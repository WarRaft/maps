[trigger]
name="Khazra Bridge Charge"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=DisplayTextToForce(GetPlayersAll(), "TRIGSTR_911")
condition=OrMultiple()
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player00)
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player01)
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player02)
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player03)
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player04)
>condition:0=OperatorComparePlayer(GetOwningPlayer(GetTriggerUnit()), OperatorEqualENE, Player05)
action=ForGroupMultiple(GetUnitsInRectAll($gg_rct_Rect_052))
>action:0=IssuePointOrderLoc(GetEnumUnit(), UnitOrderAttack, GetRectCenter($gg_rct_Rect_053))
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_051)
