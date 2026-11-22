[trigger]
name="Portal Blocking3"
description=""
action=UnitApplyTimedLifeBJ("1.00", TimedLifeBuffCodeGeneric, GetEnteringUnit())
condition=OrMultiple()
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnteringUnit()), OperatorEqualENE, "h002")
>condition:0=OperatorCompareUnitCode(GetUnitTypeId(GetEnteringUnit()), OperatorEqualENE, "h003")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Portal_Blocking3)
