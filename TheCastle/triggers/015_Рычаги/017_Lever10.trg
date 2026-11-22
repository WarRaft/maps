[trigger]
name="Lever10"
description="Открываются ворота: 2, 4"
action=IfThenElseMultiple()
>action:2=DestructableRestoreLife($Gate["2"], "500.00", ShowHideShow)
>action:1=KillDestructable($Gate["2"])
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Gate["2"]), OperatorEqualENE, "true")
action=IfThenElseMultiple()
>action:2=DestructableRestoreLife($Gate["4"], "500.00", ShowHideShow)
>action:1=KillDestructable($Gate["4"])
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Gate["4"]), OperatorEqualENE, "true")
action=TriggerSleepAction("1.00")
action=DestructableRestoreLife($gg_dest_B00E_1390, "5.00", ShowHideShow)
event=TriggerRegisterDeathEvent($gg_dest_B00E_1390)
