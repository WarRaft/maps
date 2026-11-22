[trigger]
name="Found Item"
description="Массив предметов для крафта:\r\n1 - Кольцо защиты\r\n2 - Сапоги скорости                      (нет повтора в крафте)\r\n3 - Перчатки скорости                  (нет повтора в крафте)\r\n4 - Боевой топор\r\n5 - Талисман Маны                       (нет повтора в крафте)\r\n6 - Талисман Здоровья                (нет повтора в крафте)\r\n7 - Кольцо Регенерации               (нет повтора в крафте)\r\n8 - Кольцо регенерации Маны     (нет повтора в крафте)\r\n9 - Деревянные заготовки\r\n10 - Стальные перчатки\r\n11 - Стальной Топор\r\n12 - Накидка\r\n"
condition=OrMultiple()
>condition:0=OperatorCompareItemType(GetItemType(GetManipulatedItem()), OperatorEqualENE, ItemTypeArtifact)
>condition:0=OperatorCompareItemType(GetItemType(GetManipulatedItem()), OperatorEqualENE, ItemTypePermanent)
action=CommentString("[ 1 ] Кольцо защиты ")
action=IfThenElse(condition:OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "rde1") ~"", action:SetVariable($Items["1"], OperatorInt($Items["1"], OperatorAdd, "1")) ~"DoNothing", action:DoNothing())
action=CommentString("[ 4 ] Боевой топор")
action=IfThenElse(condition:OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "stwa") ~"", action:SetVariable($Items["4"], OperatorInt($Items["4"], OperatorAdd, "1")) ~"DoNothing", action:DoNothing())
action=CommentString("[ 9 ] Деревянные заготовки")
action=IfThenElse(condition:OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I001") ~"", action:SetVariable($Items["9"], OperatorInt($Items["9"], OperatorAdd, "1")) ~"DoNothing", action:DoNothing())
action=CommentString("[ 10 ] Стальные перчатки")
action=IfThenElse(condition:OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I005") ~"", action:SetVariable($Items["10"], OperatorInt($Items["10"], OperatorAdd, "1")) ~"DoNothing", action:DoNothing())
action=CommentString("[ 11 ] Стальной топор")
action=IfThenElse(condition:OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I00F") ~"", action:SetVariable($Items["11"], OperatorInt($Items["11"], OperatorAdd, "1")) ~"DoNothing", action:DoNothing())
action=CommentString("[ 12 ] Накидка")
action=IfThenElse(condition:OperatorCompareItemCode(GetItemTypeId(GetManipulatedItem()), OperatorEqualENE, "I01B") ~"", action:SetVariable($Items["12"], OperatorInt($Items["12"], OperatorAdd, "1")) ~"DoNothing", action:DoNothing())
