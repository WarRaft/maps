[trigger]
name="Init Pedestals"
description=""
initially_off=1
action=SetVariable($Pedestal["1"], $gg_unit_n00B_0076)
action=SetVariable($Pedestal["2"], $gg_unit_n00B_0069)
action=SetVariable($Pedestal["3"], $gg_unit_n00B_0082)
action=CommentString("Пьедестал с Некрономиконом")
action=ForLoopAMultiple("1", "3")
>action:0=SetUnitAnimation($Pedestal[GetForLoopIndexA()], "stand second")
>action:0=AddItemToStockBJ("I00J", $Pedestal[GetForLoopIndexA()], "1", "1")
action=KillDestructable($gg_dest_DTs2_0943)
action=KillDestructable($gg_dest_DTs2_0931)
action=KillDestructable($gg_dest_DTs2_1041)
action=KillDestructable($gg_dest_DTs2_1073)
