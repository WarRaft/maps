[trigger]
name="WaterCave Shortcut 2"
description=""
action=SetUnitPositionLocFacingLocBJ(GetTriggerUnit(), GetRectCenter($gg_rct_Rect_194), GetRectCenter($gg_rct_Rect_194))
event=TriggerRegisterEnterRectSimple($gg_rct_Rect_192)
