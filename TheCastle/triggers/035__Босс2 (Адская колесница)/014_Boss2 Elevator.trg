[trigger]
name="Boss2 Elevator"
description=""
action=ChangeElevatorHeight($gg_dest_DTrx_2378, "2")
action=TriggerSleepAction("1.00")
action=ChangeElevatorWalls(ElevatorWallOpOpen, ElevatorWallTypeAll, $gg_dest_DTrx_2378)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Boss2_Elevator)
>action:0=IfThenElseMultiple()
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorNotEqualENE, "DTrx")
>>action:1=ShowDestructableBJ(ShowHideShow, GetEnumDestructable())
