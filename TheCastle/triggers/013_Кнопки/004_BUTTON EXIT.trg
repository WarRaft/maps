[trigger]
name="BUTTON EXIT"
description=""
action=GroupRemoveUnitSimple($TempUnit, $Button_Units[$TempNumButton])
action=IfThenElseMultiple()
>action:1=DestructableRestoreLife($Button[$TempNumButton], "50.00", ShowHideShow)
>action:1=SetDestructableAnimationBJ($Button[$TempNumButton], "stand alternate")
>condition:0=OperatorCompareBoolean(IsUnitGroupEmptyBJ($Button_Units[$TempNumButton]), OperatorEqualENE, "true")
