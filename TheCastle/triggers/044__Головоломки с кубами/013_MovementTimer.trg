[trigger]
name="MovementTimer"
description=""
action=IfThenElseMultiple()
>condition:0=OperatorCompareBoolean($HaveBlock, OperatorEqualENE, "false")
>action:1=CustomScriptCode("call DestroyEffect(AddSpecialEffect( \"Abilities\\\\Spells\\\\Other\\\\HealingSpray\\\\HealBottleMissile.mdl\", GetUnitX(udg_FS_Target_Unit), GetUnitY(udg_FS_Target_Unit) ))")
>action:1=CustomScriptCode("call TeoMovement( udg_FS_Step, udg_FS_Target_Unit, udg_FS_Direction )")
>action:1=SetVariable($Movements_num, OperatorInt($Movements_num, OperatorSubtract, "1"))
>action:1=StartTimerBJ($Movement_Timer, PeriodicOptionOneTime, "0.03")
condition=OperatorCompareInteger($Movements_num, OperatorNotEqual, "0")
event=TriggerRegisterTimerExpireEventBJ($Movement_Timer)
