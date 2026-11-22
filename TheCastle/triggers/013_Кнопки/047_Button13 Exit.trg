[trigger]
name="Button13 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "13")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=IfThenElseMultiple()
>action:1=KillDestructable($gg_dest_B00S_0847)
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["13"]), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button13)
