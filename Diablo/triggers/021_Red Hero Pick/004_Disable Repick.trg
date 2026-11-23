[trigger]
name="Disable Repick"
description=""
action=SetVariable($DisableRepick[GetConvertedPlayerId(GetOwningPlayer(GetTriggerUnit()))], "true")
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_002)
condition=AndMultiple()
>condition:0=OperatorCompareBoolean(IsUnitType(GetTriggerUnit(), UnitTypeHero), OperatorEqualENE, "true")
>condition:0=OperatorComparePlayer(GetOwningPlayer($Heroes[GetConvertedPlayerId(GetOwningPlayer(GetEnteringUnit()))]), OperatorEqualENE, GetOwningPlayer(GetEnteringUnit()))
