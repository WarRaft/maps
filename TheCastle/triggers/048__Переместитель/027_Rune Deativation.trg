[trigger]
name="Rune Deativation"
description=""
action=SetUnitAnimation(GetTriggerUnit(), "stand")
action=SetUnitColor(GetTriggerUnit(), Color12)
action=RemoveItemFromStockBJ("I028", GetTriggerUnit())
action=AddItemToStockBJ("I027", GetTriggerUnit(), "0", "1")
action=AddItemToStockBJ("I025", GetTriggerUnit(), "0", "1")
action=AddItemToStockBJ("I026", GetTriggerUnit(), "0", "1")
action=AddItemToStockBJ("I024", GetTriggerUnit(), "0", "1")
action=ForLoopBMultiple("1", "3")
>action:0=IfThenElseMultiple()
>>action:1=SetVariable($Spatial_Cubes_Checking[GetForLoopIndexB()], "0")
>>condition:0=OperatorCompareUnit(GetTriggerUnit(), OperatorEqualENE, $Spatial_Cube[GetForLoopIndexB()])
condition=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I028")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventSellItem)
