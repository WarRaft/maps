[trigger]
name="Camera Zoom In"
description=""
enabled=0
action=SetVariable($Camera_Distance, GetCameraField(CameraFieldTargetDistance))
action=IfThenElseMultiple()
>action:2=SetCameraFieldForPlayer(GetTriggerPlayer(), CameraFieldTargetDistance, OperatorReal(GetCameraField(CameraFieldTargetDistance), OperatorSubtract, "300.00"), "1.00")
>action:1=DoNothing()
>condition:0=OperatorCompareReal($Camera_Distance, OperatorLessEq, "1000.00")
event=TriggerRegisterPlayerKeyEventBJ(Player00, KeyEventTypeDepress, KeyEventKeyUp)
event=TriggerRegisterPlayerKeyEventBJ(Player01, KeyEventTypeDepress, KeyEventKeyUp)
event=TriggerRegisterPlayerKeyEventBJ(Player02, KeyEventTypeDepress, KeyEventKeyUp)
event=TriggerRegisterPlayerKeyEventBJ(Player03, KeyEventTypeDepress, KeyEventKeyUp)
event=TriggerRegisterPlayerKeyEventBJ(Player04, KeyEventTypeDepress, KeyEventKeyUp)
event=TriggerRegisterPlayerKeyEventBJ(Player05, KeyEventTypeDepress, KeyEventKeyUp)
