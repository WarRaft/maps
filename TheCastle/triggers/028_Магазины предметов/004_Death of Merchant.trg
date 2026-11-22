[trigger]
name="Death of Merchant"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=CreateItemLoc("I00T", GetUnitLoc($UNIT_Merchant))
action=CreateItemLoc("I00T", GetUnitLoc($UNIT_Merchant))
