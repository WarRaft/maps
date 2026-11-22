[trigger]
name="Labyrinth Cage3"
description=""
action=TriggerSleepAction("0.50")
action=CreateNUnitsAtLoc("1", "nkot", PlayerNA, GetRectCenter($gg_rct_REG_Cage4_Start), "145.00")
action=IssuePointOrderLoc(GetLastCreatedUnit(), UnitOrderMove, GetRectCenter($gg_rct_REG_Cage4_Point))
event=TriggerRegisterDeathEvent($gg_dest_LOcg_3366)
