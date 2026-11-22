[trigger]
name="Lever Buttons Checking"
description=""
initially_off=1
action=IfThenElseMultiple()
>action:1=CommentString("Открываем решетку")
>action:1=KillDestructable($gg_dest_B00S_9993)
>action:1=DisableTrigger($gg_trg_Button16_Entrance)
>action:1=DisableTrigger($gg_trg_Button16_Exit)
>action:1=DisableTrigger($gg_trg_Button17_Entrance)
>action:1=DisableTrigger($gg_trg_Button17_Exit)
>condition:0=AndMultiple()
>>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["16"]), OperatorEqualENE, "false")
>>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button["17"]), OperatorEqualENE, "false")
