[trigger]
name="Lever09"
description="Открываются ворота: 1, 2"
action=IfThenElseMultiple()
>action:2=DestructableRestoreLife($Gate["1"], "500.00", ShowHideShow)
>action:1=KillDestructable($Gate["1"])
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Gate["1"]), OperatorEqualENE, "true")
action=IfThenElseMultiple()
>action:2=DestructableRestoreLife($Gate["2"], "500.00", ShowHideShow)
>action:1=KillDestructable($Gate["2"])
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Gate["2"]), OperatorEqualENE, "true")
action=TriggerSleepAction("1.00")
action=DestructableRestoreLife($gg_dest_B00E_1389, "5.00", ShowHideShow)
event=TriggerRegisterDeathEvent($gg_dest_B00E_1389)
