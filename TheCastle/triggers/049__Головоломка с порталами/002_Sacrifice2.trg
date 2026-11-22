[trigger]
name="Sacrifice2"
description=""
action=CustomScriptCode("local unit temp_unit = GetBuyingUnit()")
action=AddItemToStockBJ("I02B", $gg_unit_u00B_0204, "0", "1")
action=AddSpecialEffectTargetUnitBJ("overhead", $gg_unit_u00B_0204, "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl")
action=TriggerSleepAction("0.10")
action=CustomScriptCode("call KillUnit( temp_unit )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set temp_unit = null")
condition=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02B")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventSellItem)
