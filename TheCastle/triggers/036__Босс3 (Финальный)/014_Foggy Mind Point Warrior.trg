[trigger]
name="Foggy Mind Point Warrior"
description=""
initially_off=1
condition=OperatorCompareBoolean(UnitHasBuffBJ(GetTriggerUnit(), "B015"), OperatorEqualENE, "true")
action=CustomScriptCode("local unit hero = udg_Hero_warrior")
action=CustomScriptCode("local location point_hero = GetUnitLoc(hero)")
action=CustomScriptCode("local location point_target = GetOrderPointLoc()")
action=CustomScriptCode("local location new_point_target")
action=CustomScriptCode("local real angle = AngleBetweenPoints(point_hero, point_target)")
action=CustomScriptCode("local real distance = DistanceBetweenPoints(point_hero, point_target)")
action=DisableTrigger(GetTriggeringTrigger())
action=CustomScriptCode("set angle = 180 + angle")
action=CustomScriptCode("set new_point_target = PolarProjectionBJ(point_hero, distance, angle)")
action=CustomScriptCode("call IssuePointOrderLoc( hero, \"move\", new_point_target )")
action=EnableTrigger(GetTriggeringTrigger())
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call RemoveLocation(point_hero)")
action=CustomScriptCode("call RemoveLocation(point_target)")
action=CustomScriptCode("call RemoveLocation(new_point_target)")
action=CustomScriptCode("set point_hero = null")
action=CustomScriptCode("set point_target = null")
action=CustomScriptCode("set new_point_target = null")
action=CustomScriptCode("set hero = null")
