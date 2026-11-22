[trigger]
name="Skeleton healers timer"
description=""
initially_off=1
action=ForGroupMultiple($Archmage_Heal_Group)
>action:0=IssueTargetOrder(GetEnumUnit(), UnitOrderHealingWave, $UNIT_Boss3_Archmage)
action=StartTimerBJ($Archmage_Heal_Timer, PeriodicOptionOneTime, "2.50")
event=TriggerRegisterTimerExpireEventBJ($Archmage_Heal_Timer)
