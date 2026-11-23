[trigger]
name="Barbarian Rage Fix"
description=""
action=SetUnitManaBJ(GetAttacker(), OperatorReal(GetUnitStateSwap(UnitStateMana, GetAttacker()), OperatorSubtract, "1"))
action=DisableTrigger($gg_trg_Barbarian_Rage_Gain)
action=TriggerSleepAction("0.10")
action=EnableTrigger($gg_trg_Barbarian_Rage_Gain)
condition=AndMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetTriggerUnit()), OperatorEqualENE, "Otch")
>condition:0=OperatorCompareOrderCode(GetIssuedOrderIdBJ(), OperatorEqualENE, String2OrderIdBJ("stop"))
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventIssued_Order)
