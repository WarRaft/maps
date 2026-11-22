[trigger]
name="Golem Activation Necronomicon"
description=""
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventSellItem)
action=IfThenElseMultiple()
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=RemoveDestructable($gg_dest_YTpc_9629)
>action:1=RemoveDestructable($gg_dest_YTpc_9630)
>action:1=CustomScriptCode("call TeoGolemRevival (udg_Golem[1])")
>action:1=CustomScriptCode("call TeoGolemRevival (udg_Golem[2])")
>condition:0=OrMultiple()
>>condition:0=GetBooleanAnd(condition:OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Golems, $Hero_mechanic), OperatorEqualENE, "true") ~"", condition:OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Golems, $Hero_shaman), OperatorEqualENE, "true") ~"")
>>condition:0=GetBooleanAnd(condition:OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Golems, $Hero_mechanic), OperatorEqualENE, "true") ~"", condition:OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Golems, $Hero_warrior), OperatorEqualENE, "true") ~"")
>>condition:0=GetBooleanAnd(condition:OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Golems, $Hero_shaman), OperatorEqualENE, "true") ~"", condition:OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Golems, $Hero_warrior), OperatorEqualENE, "true") ~"")
condition=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I00I")
condition=OperatorCompareUnit(GetTriggerUnit(), OperatorEqualENE, $Pedestal["2"])
