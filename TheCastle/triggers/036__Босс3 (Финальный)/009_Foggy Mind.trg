[trigger]
name="Foggy Mind"
description=""
initially_off=1
action=CustomScriptCode("local player dummy_player = Player(PLAYER_NEUTRAL_PASSIVE)")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A044")
action=CustomScriptCode("local unit dummy_unit")
action=CommentString("Даем щит молний")
action=CustomScriptCode("set dummy_unit = TeoCreateDummyUnit( dummy_player, 'n00X', GetUnitX (GetTriggerUnit()), GetUnitY (GetTriggerUnit()), 'A045' )")
action=CustomScriptCode("call IssueTargetOrder( dummy_unit, \"lightningshield\", GetTriggerUnit() )")
action=CustomScriptCode("call GroupEnumUnitsInRange (udg_TempGroup, GetUnitX (GetTriggerUnit()), GetUnitY (GetTriggerUnit()), 300, null) ")
action=ForGroupMultiple($TempGroup)
>action:0=IfThenElseMultiple()
>>action:1=IssueImmediateOrder(GetEnumUnit(), UnitOrderStop)
>>condition:0=OperatorCompareUnit(GetEnumUnit(), OperatorNotEqualENE, GetTriggerUnit())
action=EnableTrigger($gg_trg_Foggy_Mind_Object_Warrior)
action=EnableTrigger($gg_trg_Foggy_Mind_Object_Mechanic)
action=EnableTrigger($gg_trg_Foggy_Mind_Object_Shaman)
action=EnableTrigger($gg_trg_Foggy_Mind_Point_Mechanic)
action=EnableTrigger($gg_trg_Foggy_Mind_Point_Shaman)
action=EnableTrigger($gg_trg_Foggy_Mind_Point_Warrior)
action=StartTimerBJ($Foggy_Mind_Timer, PeriodicOptionOneTime, "12.00")
