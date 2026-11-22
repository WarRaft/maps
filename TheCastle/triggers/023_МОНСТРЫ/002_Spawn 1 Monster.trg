[trigger]
name="Spawn 1 Monster"
description=""
initially_off=1
action=CustomScriptCode("local unit new_unit")
action=CustomScriptCode("local location point = GetUnitLoc(udg_MonsterSpawners[GetForLoopIndexA()])")
action=CustomScriptCode("local real x = GetLocationX(point) + 100 * Cos(udg_SpawnAngle[GetForLoopIndexA()] * 0.0174) ")
action=CustomScriptCode("local real y = GetLocationY(point) + 100 * Sin(udg_SpawnAngle[GetForLoopIndexA()] * 0.0174) ")
action=CustomScriptCode("local real angle = udg_SpawnAngle[GetForLoopIndexA()]")
action=SetVariable($SpawnFrequence[GetForLoopIndexA()], OperatorInt($SpawnFrequence[GetForLoopIndexA()], OperatorSubtract, "1"))
action=IfThenElse(condition:OperatorCompareInteger($SpawnFrequence[GetForLoopIndexA()], OperatorNotEqual, "0") ~"", action:ReturnAction() ~"DoNothing", action:DoNothing())
action=CommentString("Восстанавливаем частоту")
action=SetVariable($SpawnFrequence[GetForLoopIndexA()], $InitialSpawnFrequence[GetForLoopIndexA()])
action=CustomScriptCode("set new_unit = TeoCreateUnit( Player(PLAYER_NEUTRAL_AGGRESSIVE), udg_MonsterTypes[GetForLoopIndexA()], x,y, angle )")
action=CustomScriptCode("call GroupAddUnitSimple( new_unit, udg_MonsterGroups[GetForLoopIndexA()] )")
action=CommentString("Создание эффекта появления")
action=CustomScriptCode("call DestroyEffect( AddSpecialEffect( \"Abilities\\\\Spells\\\\Orc\\\\FeralSpirit\\\\feralspirittarget.mdl\", GetUnitX(new_unit), GetUnitY(new_unit) ) )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=CustomScriptCode("set new_unit = null")
