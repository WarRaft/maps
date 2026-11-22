[trigger]
name="Death of Marauder"
description=""
action=DisableTrigger($gg_trg_Cinematic_Marauder)
action=DisableTrigger($gg_trg_Rat_death)
action=FogModifierStop($Eye["1"])
action=SetPlayerAllianceStateBJ(PlayerNP, PlayerNA, AllianceSettingNeutral)
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_warrior, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_shaman, 80,0,0)")
action=CustomScriptCode("call TeoTextTag (\"Репутация изменена\", udg_Hero_mechanic, 80,0,0)")
action=SetVariable($Reputation, OperatorReal($Reputation, OperatorSubtract, "5.00"))
