[trigger]
name="Necronomicon Buttons Checking"
description=""
initially_off=1
action=IfThenElseMultiple()
>action:2=DestructableRestoreLife($gg_dest_B00S_0866, "500.00", ShowHideShow)
>action:2=DestructableRestoreLife($gg_dest_B00S_9771, "500.00", ShowHideShow)
>action:1=KillDestructable($gg_dest_B00S_0866)
>action:1=KillDestructable($gg_dest_B00S_9771)
>condition:0=AndMultiple()
>>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["5"]), OperatorEqualENE, "false")
>>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["6"]), OperatorEqualENE, "false")
