[trigger]
name="Init Levers"
description=""
initially_off=1
action=CommentString("Для головоломки с рычагами")
action=SetVariable($Gate["1"], $gg_dest_B00S_0565)
action=SetVariable($Gate["2"], $gg_dest_B00S_0615)
action=SetVariable($Gate["3"], $gg_dest_B00S_0621)
action=SetVariable($Gate["4"], $gg_dest_B00S_0625)
