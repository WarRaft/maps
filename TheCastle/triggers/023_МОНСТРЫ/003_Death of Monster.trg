[trigger]
name="Death of Monster"
description=""
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
action=ForLoopA("0", $NumMonsters, action:IfThenElse(condition:OperatorCompareBoolean(IsUnitInGroup(GetDyingUnit(), $MonsterGroups[GetForLoopIndexA()]), OperatorEqualENE, "true") ~"", action:GroupRemoveUnitSimple(GetDyingUnit(), $MonsterGroups[GetForLoopIndexA()]) ~"DoNothing", action:DoNothing()) ~"DoNothing")
