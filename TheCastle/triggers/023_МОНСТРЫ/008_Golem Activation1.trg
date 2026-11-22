[trigger]
name="Golem Activation1"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Golems1)
action=RemoveDestructable($gg_dest_YTpc_9700)
action=RemoveDestructable($gg_dest_YTpc_9699)
action=RemoveDestructable($gg_dest_YTpc_9701)
action=RemoveDestructable($gg_dest_YTpc_9709)
action=RemoveDestructable($gg_dest_YTpc_9710)
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[3])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[4])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[5])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[9])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[10])")
