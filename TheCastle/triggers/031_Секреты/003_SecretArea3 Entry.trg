[trigger]
name="SecretArea3 Entry"
description=""
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=DisableTrigger(GetTriggeringTrigger())
action=RemoveDestructable($gg_dest_B01M_0756)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Secret_Area3_Entry)
