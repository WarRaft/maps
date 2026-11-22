[trigger]
name="Death of EasyPuzzleBox"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=GroupRemoveUnitSimple(GetDyingUnit(), $EasyPuzzle_Group)
action=IfThenElseMultiple()
>condition:0=OrMultiple()
>>condition:0=OperatorCompareBoolean(IsUnitType(GetKillingUnitBJ(), UnitTypeHero), OperatorEqualENE, "true")
>>condition:0=OperatorCompareUnit(GetKillingUnitBJ(), OperatorEqualENE, $UNIT_Robot)
>>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetKillingUnitBJ()), OperatorEqualENE, "n00X")
>action:1=TriggerExecute($gg_trg_Destoying_Easy_Puzzle)
condition=OperatorCompareBoolean(IsUnitInGroup(GetDyingUnit(), $EasyPuzzle_Group), OperatorEqualENE, "true")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNP, PlayerUnitEventDeath)
