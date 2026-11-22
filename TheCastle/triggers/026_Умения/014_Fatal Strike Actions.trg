[trigger]
name="Fatal Strike Actions"
description=""
action=SetUnitTimeScalePercent($Hero_warrior, "100.00")
action=SetVariable($FS_Final_Damage, OperatorReal("2.50", OperatorMultiply, GetEventDamage()))
action=UnitDamageTargetBJ($Hero_warrior, $FS_Target_Unit, $FS_Final_Damage, AttackTypeMelee, DamageTypeNormal)
action=CommentString("Цель: Магические ящики")
action=IfThenElseMultiple()
>action:2=IssueTargetOrder($Hero_warrior, UnitOrderAttackUnit, $FS_Target_Unit)
>action:1=CommentString("См. папку \"Головоломки с кубами\" (Движение ящиков)")
>action:2=DoNothing()
>action:1=TriggerExecute($gg_trg_Direction_Selection)
>condition:0=OperatorCompareUnitCode(GetUnitTypeId($FS_Target_Unit), OperatorEqualENE, "nmgv")
condition=OperatorCompareBoolean(IsUnitAliveBJ($Hero_warrior), OperatorEqualENE, "true")
