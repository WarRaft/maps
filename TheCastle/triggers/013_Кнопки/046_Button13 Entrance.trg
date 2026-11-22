[trigger]
name="Button13 Entrance"
description=""
action=SetVariable($TempUnit, GetEnteringUnit())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "13")
action=TriggerExecute($gg_trg_BUTTON_ENTRANCE)
action=DestructableRestoreLife($gg_dest_B00S_0847, "500.00", ShowHideShow)
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Button13)
