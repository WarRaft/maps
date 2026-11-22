[trigger]
name="Death of HardPuzzleBox"
description=""
action=DisableTrigger(GetTriggeringTrigger())
condition=OperatorCompareBoolean(IsUnitInGroup(GetDyingUnit(), $HardPuzzle_Group), OperatorEqualENE, "true")
action=GroupRemoveUnitSimple(GetDyingUnit(), $HardPuzzle_Group)
action=IfThenElseMultiple()
>condition:0=OrMultiple()
>>condition:0=OperatorCompareBoolean(IsUnitType(GetKillingUnitBJ(), UnitTypeHero), OperatorEqualENE, "true")
>>condition:0=OperatorCompareUnit(GetKillingUnitBJ(), OperatorEqualENE, $UNIT_Robot)
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetKillingUnitBJ()), OperatorEqualENE, "n00X")
>action:1=TriggerExecute($gg_trg_Destoying_Hard_Puzzle)
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventDeath)
