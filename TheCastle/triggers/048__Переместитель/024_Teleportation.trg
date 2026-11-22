[trigger]
name="Teleportation"
description=""
action=CustomScriptCode("local unit hero_unit = GetBuyingUnit()")
action=CustomScriptCode("local real hero_x = GetUnitX (hero_unit)")
action=CustomScriptCode("local real hero_y = GetUnitY (hero_unit)")
action=CustomScriptCode("call DestroyEffect(AddSpecialEffect( \"Abilities\\\\Spells\\\\Human\\\\MassTeleport\\\\MassTeleportTarget.mdl\", hero_x, hero_y ))")
action=AddItemToStockBJ("I029", $gg_unit_n022_0203, "0", "1")
action=TriggerSleepAction("0.20")
action=CustomScriptCode("call SetUnitPosition(hero_unit, 8060, -12670 )")
action=CustomScriptCode("call SetUnitFacing(hero_unit, 90)")
action=CustomScriptCode("call DestroyEffect(AddSpecialEffect( \"Abilities\\\\Spells\\\\Human\\\\MassTeleport\\\\MassTeleportTarget.mdl\", GetUnitX (hero_unit), GetUnitY (hero_unit) ))")
action=PanCameraToTimedLocForPlayer(GetOwningPlayer(GetBuyingUnit()), GetUnitLoc(GetBuyingUnit()), "0")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set hero_unit = null")
condition=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I029")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventSellItem)
