[trigger]
name="Selection Camera"
description=""
initially_off=1
action=ForLoopAMultiple("1", "6")
>action:0=IfThenElseMultiple()
>>condition:0=OperatorCompareBoolean($PlayerSelectsUnit[GetForLoopIndexA()], OperatorEqualENE, "false")
>>action:1=CameraSetupApplyForPlayer(CameraApply, $gg_cam_Camera_017_Copy, ConvertedPlayer(GetForLoopIndexA()), "0.10")
event=TriggerRegisterTimerEventPeriodic("0.10")
