[trigger]
name="Boss3 Death of Monster"
description=""
initially_off=1
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
action=ForLoopA("0", $Boss3_NumMonsters, action:IfThenElse(condition:OperatorCompareBoolean(IsUnitInGroup(GetDyingUnit(), $Boss3_MonsterGroups[GetForLoopIndexA()]), OperatorEqualENE, "true") ~"", action:GroupRemoveUnitSimple(GetDyingUnit(), $Boss3_MonsterGroups[GetForLoopIndexA()]) ~"DoNothing", action:DoNothing()) ~"DoNothing")
