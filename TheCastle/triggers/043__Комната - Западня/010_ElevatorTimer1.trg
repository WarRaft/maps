[trigger]
name="ElevatorTimer1"
description=""
initially_off=1
action=StartTimerBJ($Elevator_Timer["1"], PeriodicOptionOneTime, "4.00")
action=IfThenElseMultiple()
>action:2=IfThenElseMultiple()
>>condition:0=OperatorCompareInteger(GetElevatorHeight($gg_dest_DTrx_0972), OperatorEqual, "3")
>>action:1=ChangeElevatorWalls(ElevatorWallOpClose, ElevatorWallTypeAll, $gg_dest_DTrx_0972)
>>action:1=ChangeElevatorHeight($gg_dest_DTrx_0972, "1")
>>action:1=TriggerSleepAction("1.00")
>>action:1=ChangeElevatorWalls(ElevatorWallOpOpen, ElevatorWallTypeNorth, $gg_dest_DTrx_0972)
>condition:0=OperatorCompareInteger(GetElevatorHeight($gg_dest_DTrx_0972), OperatorEqual, "1")
>action:1=ChangeElevatorWalls(ElevatorWallOpClose, ElevatorWallTypeAll, $gg_dest_DTrx_0972)
>action:1=ChangeElevatorHeight($gg_dest_DTrx_0972, "3")
>action:1=TriggerSleepAction("1.00")
>action:1=ChangeElevatorWalls(ElevatorWallOpOpen, ElevatorWallTypeSouth, $gg_dest_DTrx_0972)
event=TriggerRegisterTimerExpireEventBJ($Elevator_Timer["1"])
