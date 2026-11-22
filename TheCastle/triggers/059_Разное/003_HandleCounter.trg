[trigger]
name="HandleCounter"
description=""
initially_off=1
event=MapInitializationEvent()
action=CustomScriptCode("call TimerStart(CreateTimer(),0,false,function HandleCounter_Actions)")
