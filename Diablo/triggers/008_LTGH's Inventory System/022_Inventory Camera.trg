[trigger]
name="Inventory Camera"
description=""
initially_off=1
condition=OperatorCompareBoolean($TurnCameraOff, OperatorEqualENE, "false")
action=ForLoopAMultiple("1", "6")
>action:0=IfThenElseMultiple()
>>action:2=IfThenElseMultiple()
>>>condition:0=OperatorCompareUnit($Heroes[GetForLoopIndexA()], OperatorNotEqualENE, UnitNull)
>>>action:1=SetVariable($rect, GetUnitLoc($Heroes[$PlayerViewing[GetForLoopIndexA()]]))
>>>action:1=PanCameraToTimedLocForPlayer(ConvertedPlayer(GetForLoopIndexA()), $rect, "0.10")
>>>action:1=SetCameraFieldForPlayer(ConvertedPlayer(GetForLoopIndexA()), CameraFieldAOA, "315.00", "0.01")
>>>action:1=SetCameraFieldForPlayer(ConvertedPlayer(GetForLoopIndexA()), CameraFieldRotation, "140.00", "0.01")
>>>action:1=CustomScriptCode("set udg_z = GetCameraField(CAMERA_FIELD_ZOFFSET)+300 - (256- GetLocationZ(udg_rect))-GetCameraTargetPositionZ()")
>>>action:1=SetCameraFieldForPlayer(ConvertedPlayer(GetForLoopIndexA()), CameraFieldZOffset, $z, "0.05")
>>>action:1=CustomScriptCode("call RemoveLocation(udg_rect)")
>>condition:0=OperatorCompareBoolean($Inventory_Player_Is_Viewing[GetForLoopIndexA()], OperatorEqualENE, "true")
>>action:1=CameraSetupApplyForPlayer(CameraApply, $Inventory_Camera[GetForLoopIndexA()], ConvertedPlayer(GetForLoopIndexA()), "0.01")
action=StartTimerBJ($Inventory_Camera_Test, PeriodicOptionOneTime, "0.02")
event=TriggerRegisterTimerExpireEventBJ($Inventory_Camera_Test)
