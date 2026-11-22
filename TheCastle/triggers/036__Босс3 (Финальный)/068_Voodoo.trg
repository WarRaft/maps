[trigger]
name="Voodoo"
description="Структура хэш-таблицы для умения:\r\nx.1 - координата X точки применения умения\r\nx.2 - координата Y точки применения умения\r\nx.3 - значение boolean для определения процесса применения умения \r\n"
initially_off=1
event=TriggerRegisterTimerEventPeriodic("20.00")
action=IssueImmediateOrder($UNIT_Boss3_Troll, UnitOrderVoodoo)
