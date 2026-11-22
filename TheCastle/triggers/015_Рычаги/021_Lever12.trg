[trigger]
name="Lever12"
description=""
action=ModifyGateBJ(GateOperationOpen, $gg_dest_B00S_6645)
action=EnumDestructablesInRectAllMultiple($gg_rct_REG_Boss2_Intro)
>action:0=IfThenElseMultiple()
>>action:1=RemoveDestructable(GetEnumDestructable())
>>condition:0=OperatorCompareDestructableCode(GetDestructableTypeId(GetEnumDestructable()), OperatorEqualENE, "Ytlc")
event=TriggerRegisterDeathEvent($gg_dest_B00E_6646)
