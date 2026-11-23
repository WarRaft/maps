[trigger]
name="Camera Zoom Out"
description=""
enabled=0
action=SetVariable($Camera_Distance, GetCameraField(CameraFieldTargetDistance))
action=IfThenElseMultiple()
>action:1=DoNothing()
>action:2=SetCameraFieldForPlayer(GetTriggerPlayer(), CameraFieldTargetDistance, OperatorReal(GetCameraField(CameraFieldTargetDistance), OperatorAdd, "300.00"), "1.00")
>condition:0=OperatorCompareReal($Camera_Distance, OperatorGreaterEq, "2000.00")
event=TriggerRegisterPlayerKeyEventBJ(Player00, KeyEventTypeDepress, KeyEventKeyDown)
event=TriggerRegisterPlayerKeyEventBJ(Player01, KeyEventTypeDepress, KeyEventKeyDown)
event=TriggerRegisterPlayerKeyEventBJ(Player02, KeyEventTypeDepress, KeyEventKeyDown)
event=TriggerRegisterPlayerKeyEventBJ(Player03, KeyEventTypeDepress, KeyEventKeyDown)
event=TriggerRegisterPlayerKeyEventBJ(Player04, KeyEventTypeDepress, KeyEventKeyDown)
event=TriggerRegisterPlayerKeyEventBJ(Player05, KeyEventTypeDepress, KeyEventKeyDown)
