[trigger]
name="Poisonous puddle"
description="Структура хэш-таблицы для умения:\r\nx.1 - координата X точки применения умения\r\nx.2 - координата Y точки применения умения\r\nx.3 - значение boolean для определения процесса применения умения \r\n"
initially_off=1
action=CustomScriptCode("local player dummy_player = Player(PLAYER_NEUTRAL_AGGRESSIVE)")
action=CustomScriptCode("local unit dummy_unit")
action=CustomScriptCode("local unit target_unit = GetSpellTargetUnit()")
action=CustomScriptCode("local real target_x = GetUnitX (target_unit)")
action=CustomScriptCode("local real target_y = GetUnitY (target_unit)")
action=CommentString("Создаем дамми-юнита, уничтожающего тени")
action=CustomScriptCode("set dummy_unit = TeoCreateUnit(dummy_player, 'n033', GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()), 0)")
action=CustomScriptCode("call UnitApplyTimedLife( dummy_unit, 'BTLF', 1.5 )")
action=CustomScriptCode("call IssuePointOrder( dummy_unit, \"attackground\", target_x, target_y )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set target_unit = null")
action=CustomScriptCode("set dummy_unit = null")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A065")
