[trigger]
name="Inventory P1 vJass"
description="//Prevent unnessisary removal of abilities\r\nfunction Trig_DenyRemoveAbility takes nothing returns boolean\r\n    if ( not ( udg_Inventory_Selected_Slot[GetConvertedPlayerId(GetTriggerPlayer())] >= 1 ) ) then\r\n        return false\r\n    endif\r\n    if ( not ( udg_Inventory_Selected_Slot[GetConvertedPlayerId(GetTriggerPlayer())] <= 12 ) ) then\r\n        return false\r\n    endif\r\n    return true\r\nendfunction"
custom_text=1
