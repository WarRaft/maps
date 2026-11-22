[trigger]
name="Bookshelfes sale"
description=""
action=UnitRemoveAbilityBJ("A00C", GetSellingUnit())
condition=OrMultiple()
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02L")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02K")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02M")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02N")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02J")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02P")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02S")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02T")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02U")
>condition:0=OperatorCompareItemCode(GetItemTypeId(GetSoldItem()), OperatorEqualENE, "I02R")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSellItem)
