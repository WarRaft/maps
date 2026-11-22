[trigger]
name="Sacrifice1"
description=""
action=CustomScriptCode("local unit temp_unit = GetBuyingUnit()")
action=AddItemToStockBJ("I02A", $gg_unit_u00B_0204, "0", "1")
action=AddSpecialEffectTargetUnitBJ("overhead", $gg_unit_u00B_0204, "Abilities\\Spells\\Human\\Resurrect\\ResurrectTarget.mdl")
action=TriggerSleepAction("0.10")
action=CustomScriptCode("call KillUnit( temp_unit )")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "5.00"))
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set temp_unit = null")
condition=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02A")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventSellItem)
