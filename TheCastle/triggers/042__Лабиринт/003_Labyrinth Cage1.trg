[trigger]
name="Labyrinth Cage1"
description=""
action=TriggerSleepAction("0.50")
action=CreateNUnitsAtLoc("1", "n00O", PlayerNA, GetRectCenter($gg_rct_REG_Cage1_Start), "135.00")
action=SetUnitOwner(GetLastCreatedUnit(), Player09, ChangeColorFalse)
action=IssuePointOrderLoc(GetLastCreatedUnit(), UnitOrderMove, GetRectCenter($gg_rct_REG_Cage1_Point))
event=TriggerRegisterDeathEvent($gg_dest_LOcg_2489)
