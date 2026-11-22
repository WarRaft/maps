[trigger]
name="Golem Activation4"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Golems4)
action=RemoveDestructable($gg_dest_YTpc_9731)
action=RemoveDestructable($gg_dest_YTpc_9732)
action=RemoveDestructable($gg_dest_YTpc_9733)
action=RemoveDestructable($gg_dest_YTpc_9735)
action=RemoveDestructable($gg_dest_YTpc_9734)
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[20])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[21])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[22])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[15])")
action=CustomScriptCode("call TeoGolemRevival (udg_Golem[16])")
