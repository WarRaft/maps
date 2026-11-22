[trigger]
name="Lightning Discharge Cancel"
description=""
initially_off=1
action=CommentString("Сохраняем значение \"Нет\" для нашего умения в хэш-таблицу для фиксации процесса прекращения применения")
action=SaveBooleanBJ("false", "30", "3", GetLastCreatedHashtableBJ())
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A056")
