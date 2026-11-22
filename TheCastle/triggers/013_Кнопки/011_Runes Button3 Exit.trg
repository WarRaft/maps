[trigger]
name="Runes Button3 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "3")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=IfThenElseMultiple()
>condition:0=OperatorCompareBoolean(IsUnitGroupEmptyBJ($Button_Units["3"]), OperatorEqualENE, "true")
>action:1=ShowDestructableBJ(ShowHideHide, $gg_dest_B002_0440)
>action:1=ShowDestructableBJ(ShowHideShow, $gg_dest_B003_0441)
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button03)
