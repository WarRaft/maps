[trigger]
name="Repair Timer"
description=""
action=IfThenElseMultiple()
>action:2=StartTimerBJ($Repair_Timer, PeriodicOptionOneTime, "0.50")
>action:1=SetVariable($Robot_Repair_Bool, "false")
>action:1=UnitRemoveAbilityBJ("A02H", $UNIT_Robot)
>condition:0=OperatorCompareReal(GetUnitLifePercent($UNIT_Robot), OperatorGreaterEq, "100.00")
event=TriggerRegisterTimerExpireEventBJ($Repair_Timer)
