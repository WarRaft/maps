[trigger]
name="Port01"
description=""
initially_off=1
action=SetVariable($Zombie_Size, GetRandomInt("1", "5"))
action=IfThenElseMultiple()
>action:2=SetUnitPositionLoc(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_008))
>action:2=DisableTrigger(GetTriggeringTrigger())
>action:2=EnableTrigger($gg_trg_Port02)
>action:1=TriggerExecute($gg_trg_Cinematic)
>condition:0=OperatorCompareInteger($Zombie_Size, OperatorEqual, "3")
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Hamg")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Ulic")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "O002")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_007)
