[trigger]
name="Attacking Corpse"
description=""
action=CustomScriptCode("call IssueTargetOrder( udg_UNIT_Devouer, \"attack\", GroupPickRandomUnit(udg_Corpses_Group) )")
event=TriggerRegisterTimerEventPeriodic("10.00")
