[trigger]
name="Marauder timer"
description=""
action=SetUnitUserData($UNIT_Marauder, "1")
event=TriggerRegisterTimerExpireEventBJ($Marauder_Timer)
