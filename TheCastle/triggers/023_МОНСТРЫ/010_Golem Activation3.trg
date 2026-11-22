[trigger]
name="Golem Activation3"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Golems3)
action=RemoveDestructable($gg_dest_YTpc_9726)
action=RemoveDestructable($gg_dest_YTpc_9727)
action=RemoveDestructable($gg_dest_YTpc_9728)
action=RemoveDestructable($gg_dest_YTpc_9729)
action=RemoveDestructable($gg_dest_YTpc_9730)
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[11])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[12])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[17])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[18])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[19])")
