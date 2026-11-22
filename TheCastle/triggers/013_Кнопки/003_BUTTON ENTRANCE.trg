[trigger]
name="BUTTON ENTRANCE"
description=""
action=GroupAddUnitSimple($TempUnit, $Button_Units[$TempNumButton])
action=IfThenElseMultiple()
>condition:0=OperatorCompareBoolean(IsDestructableAliveBJ($Button[$TempNumButton]), OperatorEqualENE, "true")
>action:1=KillDestructable($Button[$TempNumButton])
