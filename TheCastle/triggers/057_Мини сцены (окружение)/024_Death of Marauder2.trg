[trigger]
name="Death of Marauder2"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=CreateItemLoc("I01V", GetUnitLoc($UNIT_Marauder))
