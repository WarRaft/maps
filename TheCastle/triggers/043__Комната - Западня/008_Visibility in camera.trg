[trigger]
name="Visibility in camera"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=CreateFogModifierRadiusLocBJ(EnabledDisabledDisabled, Player00, FogStateVisible, GetRectCenter($gg_rct_REG_Point_of_View2), "450.00")
action=SetVariable($Eye["2"], GetLastCreatedFogModifier())
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Visibility_in_camera)
