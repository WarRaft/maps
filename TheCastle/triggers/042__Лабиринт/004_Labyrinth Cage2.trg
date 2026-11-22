[trigger]
name="Labyrinth Cage2"
description=""
action=TriggerSleepAction("0.50")
action=CreateNUnitsAtLoc("1", "n00O", PlayerNA, GetRectCenter($gg_rct_REG_Cage2_Start), "145.00")
action=SetUnitOwner(GetLastCreatedUnit(), Player09, ChangeColorFalse)
action=IssuePointOrderLoc(GetLastCreatedUnit(), UnitOrderMove, GetRectCenter($gg_rct_REG_Cage2_Point))
event=TriggerRegisterDeathEvent($gg_dest_LOcg_2506)
