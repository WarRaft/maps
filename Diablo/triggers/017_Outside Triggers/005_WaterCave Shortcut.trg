[trigger]
name="WaterCave Shortcut"
description=""
action=SetUnitPositionLocFacingLocBJ(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_195), GetRectCenter($gg_rct_Rect_067))
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_193)
