[trigger]
name="NumCode1"
description=""
action=IfThenElseMultiple()
>action:2=RemoveDestructable($Runes1[$Runes_num])
>action:2=CreateDestructableLoc($RunesTypes["1"], GetRectCenter($gg_rct_REG_Rune_Password1), "90.00", "1", "0")
>action:2=SetVariable($Runes1["1"], GetLastCreatedDestructable())
>action:2=SetVariable($Runes_conditions["1"], "1")
>action:1=RemoveDestructable($Runes1[$Runes_conditions["1"]])
>action:1=CreateDestructableLoc($RunesTypes[OperatorInt($Runes_conditions["1"], OperatorAdd, "1")], GetRectCenter($gg_rct_REG_Rune_Password1), "90.00", "1", "0")
>action:1=SetVariable($Runes1[OperatorInt($Runes_conditions["1"], OperatorAdd, "1")], GetLastCreatedDestructable())
>action:1=SetVariable($Runes_conditions["1"], OperatorInt($Runes_conditions["1"], OperatorAdd, "1"))
>condition:0=OperatorCompareInteger($Runes_conditions["1"], OperatorLess, $Runes_num)
action=SetVariable($Lighting, "false")
action=TriggerExecute($gg_trg_Button4_Checking_Code)
action=TriggerSleepAction("1.00")
action=DestructableRestoreLife($gg_dest_B00E_0755, "5.00", ShowHideShow)
event=TriggerRegisterDeathEvent($gg_dest_B00E_0755)
