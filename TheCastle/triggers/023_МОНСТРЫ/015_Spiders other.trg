[trigger]
name="Spiders other"
description=""
event=TriggerRegisterDeathEvent($gg_dest_LTbx_0980)
action=SetVariable($Random, GetRandomInt("1", "2"))
action=IfThenElseMultiple()
>action:2=CreateNUnitsAtLoc("1", "nspr", PlayerNA, GetDestructableLoc(GetDyingDestructable()), RealUnitFacing)
>action:1=CreateNUnitsAtLoc("1", "nspg", PlayerNA, GetDestructableLoc(GetDyingDestructable()), RealUnitFacing)
>condition:0=OperatorCompareInteger($Random, OperatorEqual, "1")
event=TriggerRegisterDeathEvent($gg_dest_LTcr_6560)
event=TriggerRegisterDeathEvent($gg_dest_LTbr_5808)
