[trigger]
name="Spider eggs"
description=""
condition=OperatorCompareDestructableCode(GetDestructableTypeId(GetDyingDestructable()), OperatorEqualENE, "DTes")
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Spider_Eggs1)
action=SetVariable($Random, GetRandomInt("1", "2"))
action=IfThenElseMultiple()
>action:2=CreateNUnitsAtLoc("1", "nspr", PlayerNA, GetDestructableLoc(GetDyingDestructable()), RealUnitFacing)
>action:1=CreateNUnitsAtLoc("1", "nspg", PlayerNA, GetDestructableLoc(GetDyingDestructable()), RealUnitFacing)
>condition:0=OperatorCompareInteger($Random, OperatorEqual, "1")
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Spider_Eggs2)
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Spider_Eggs3)
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Spider_Eggs4)
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Spider_Eggs5)
event=TriggerRegisterDestDeathInRegionEvent($gg_rct_REG_Spider_Eggs6)
