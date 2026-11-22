[trigger]
name="Init Dangeon"
description=""
initially_off=1
event=MapInitializationEvent()
action=KillDestructable($gg_dest_DTs2_5356)
action=KillDestructable($gg_dest_B00S_10924)
action=AddItemToStockBJ("I02C", $gg_unit_u00A_0522, "1", "1")
action=AddItemToStockBJ("I02F", $gg_unit_u00A_0520, "1", "1")
