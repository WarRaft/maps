[trigger]
name="Golem Activation2"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Golems2)
action=RemoveDestructable($gg_dest_YTpc_9702)
action=RemoveDestructable($gg_dest_YTpc_9703)
action=RemoveDestructable($gg_dest_YTpc_9704)
action=RemoveDestructable($gg_dest_YTpc_9707)
action=RemoveDestructable($gg_dest_YTpc_9708)
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[6])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[7])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[8])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[13])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[14])")
