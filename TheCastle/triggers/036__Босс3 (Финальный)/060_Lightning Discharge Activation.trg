[trigger]
name="Lightning Discharge Activation"
description=""
initially_off=1
action=CustomScriptCode("call IssueImmediateOrder( udg_UNIT_Boss3_Orc, \"evileye\" )")
event=TriggerRegisterTimerEventPeriodic("15.00")
