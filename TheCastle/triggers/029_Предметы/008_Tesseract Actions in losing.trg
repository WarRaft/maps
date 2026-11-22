[trigger]
name="Tesseract Actions in losing"
description=""
initially_off=1
action=CustomScriptCode("local location Hero_point = GetUnitLoc(udg_Tesseract_unit)")
action=CustomScriptCode("local location Item_point = GetItemLoc(udg_Tesseract_Item)")
action=CommentString("Если предмет на земле, то создаем руну с нужным количеством зарядов")
action=CommentString("Если предмет передали другому герою, то ничего не создаем")
action=CustomScriptCode("if ( RectContainsItem( udg_Tesseract_Item, RectFromCenterSizeBJ(Hero_point, 200.00, 200.00) )== true) then")
action=CustomScriptCode("    call ShowUnitShow( udg_UNIT_Backpack )")
action=CustomScriptCode("    call SetUnitPositionLoc( udg_UNIT_Backpack, Item_point )")
action=CustomScriptCode("    call RemoveItem( udg_Tesseract_Item )")
action=CustomScriptCode("endif")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call RemoveLocation(Hero_point)")
action=CustomScriptCode("call RemoveLocation(Item_point)")
action=CustomScriptCode("set Hero_point = null")
action=CustomScriptCode("set Item_point = null")
