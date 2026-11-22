[trigger]
name="Poisonous puddle Events"
description="Структура хэш-таблицы для умения:\r\nx.1 - координата X точки применения умения\r\nx.2 - координата Y точки применения умения\r\nx.3 - значение boolean для определения процесса применения умения \r\n"
initially_off=1
action=AddTriggerEvent($gg_trg_Poisonous_puddle, event:TriggerRegisterUnitEvent($UNIT_Boss3_Goblin, UnitEventSpellEffect) ~"")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A065")
