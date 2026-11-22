[trigger]
name="Death of Devastator"
description=""
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "10.00"))
condition=OperatorCompareBoolean(RectContainsUnit($gg_rct_REG_Visibility_in_camera, $UNIT_Devastator), OperatorEqualENE, "true")
