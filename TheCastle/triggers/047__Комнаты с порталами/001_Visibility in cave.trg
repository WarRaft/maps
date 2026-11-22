[trigger]
name="Visibility in cave"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=CreateFogModifierRadiusLocBJ(EnabledDisabledEnabled, Player00, FogStateVisible, GetRectCenter($gg_rct_REG_Point_of_View3), "800.00")
action=SetVariable($Eye["3"], GetLastCreatedFogModifier())
action=FogModifierStop($Eye["3"])
action=EnableTrigger($gg_trg_Visibility_On)
action=EnableTrigger($gg_trg_Visibility_Off)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal05_Gate2)
