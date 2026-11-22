[trigger]
name="Robots respawn"
description=""
initially_off=1
action=CustomScriptCode("local unit robot_unit")
action=CustomScriptCode("local location point = GetUnitLoc(udg_UNIT_Boss2)")
action=CustomScriptCode("set robot_unit = TeoCreateUnit( Player(PLAYER_NEUTRAL_AGGRESSIVE), 'n01J', GetLocationX(point),GetLocationY(point), 0.00 )")
action=CustomScriptCode("call GroupAddUnitSimple( robot_unit, udg_Robots_Group )")
action=CommentString("Создание эффекта появления")
action=CustomScriptCode("call DestroyEffect( AddSpecialEffect( \"Abilities\\\\Spells\\\\Orc\\\\FeralSpirit\\\\feralspirittarget.mdl\", GetUnitX(robot_unit), GetUnitY(robot_unit) ) )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=CustomScriptCode("set robot_unit = null")
condition=OperatorCompareBoolean(IsUnitAliveBJ($UNIT_Boss2), OperatorEqualENE, "true")
condition=OperatorCompareInteger(CountUnitsInGroup($Robots_Group), OperatorLess, "5")
event=TriggerRegisterTimerEventPeriodic("7.00")
