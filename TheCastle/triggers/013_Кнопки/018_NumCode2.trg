[trigger]
name="NumCode2"
description=""
action=IfThenElseMultiple()
>action:2=RemoveDestructable($Runes2[$Runes_num])
>action:2=CreateDestructableLoc($RunesTypes["1"], GetRectCenter($gg_rct_REG_Rune_Password2), "90.00", "1", "0")
>action:2=SetVariable($Runes2["1"], GetLastCreatedDestructable())
>action:2=SetVariable($Runes_conditions["2"], "1")
>action:1=RemoveDestructable($Runes2[$Runes_conditions["2"]])
>action:1=CreateDestructableLoc($RunesTypes[OperatorInt($Runes_conditions["2"], OperatorAdd, "1")], GetRectCenter($gg_rct_REG_Rune_Password2), "90.00", "1", "0")
>action:1=SetVariable($Runes2[OperatorInt($Runes_conditions["2"], OperatorAdd, "1")], GetLastCreatedDestructable())
>action:1=SetVariable($Runes_conditions["2"], OperatorInt($Runes_conditions["2"], OperatorAdd, "1"))
>condition:0=OperatorCompareInteger($Runes_conditions["2"], OperatorLess, $Runes_num)
action=SetVariable($Lighting, "false")
action=TriggerExecute($gg_trg_Button4_Checking_Code)
action=TriggerSleepAction("1.00")
action=DestructableRestoreLife($gg_dest_B00E_0483, "5.00", ShowHideShow)
event=TriggerRegisterDeathEvent($gg_dest_B00E_0483)
