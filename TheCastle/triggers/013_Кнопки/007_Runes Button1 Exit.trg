[trigger]
name="Runes Button1 Exit"
description=""
action=SetVariable($TempUnit, GetLeavingUnit())
condition=OperatorCompareBoolean(IsUnitType(GetLeavingUnit(), UnitTypeHero), OperatorEqualENE, "true")
action=SetVariable($TempNumButton, "1")
action=TriggerExecute($gg_trg_BUTTON_EXIT)
action=IfThenElseMultiple()
>action:1=ShowDestructableBJ(ShowHideHide, $gg_dest_B002_0365)
>action:1=ShowDestructableBJ(ShowHideShow, $gg_dest_B003_0443)
>condition:0=OperatorCompareBoolean(IsUnitGroupEmptyBJ($Button_Units["1"]), OperatorEqualENE, "true")
event=TriggerRegisterLeaveRectSimple($gg_rct_REG_Button01)
