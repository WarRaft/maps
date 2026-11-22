[trigger]
name="Lever15"
description=""
action=KillDestructable($gg_dest_B00S_6128)
action=KillDestructable($gg_dest_B00S_6202)
action=KillDestructable(LoadDestructableHandleBJ("16", "1", GetLastCreatedHashtableBJ()))
action=KillDestructable(LoadDestructableHandleBJ("16", "2", GetLastCreatedHashtableBJ()))
action=DisableTrigger($gg_trg_Portal16)
action=CustomScriptCode("call TeoPortalRevival(17)")
event=TriggerRegisterDeathEvent($gg_dest_B00E_6223)
