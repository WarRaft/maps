[trigger]
name="Init Teleporter"
description=""
initially_off=1
action=SetVariable($Spatial_Cube["1"], $gg_unit_n00V_0362)
action=SetVariable($Spatial_Cube["2"], $gg_unit_n024_0369)
action=SetVariable($Spatial_Cube["3"], $gg_unit_n025_0366)
action=ShowUnitHide($gg_unit_n022_0203)
action=ForLoopAMultiple("1", "3")
>action:0=ShowUnitHide($Spatial_Cube[GetForLoopIndexA()])
