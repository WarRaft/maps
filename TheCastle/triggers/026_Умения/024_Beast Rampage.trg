[trigger]
name="Beast Rampage"
description=""
action=CustomScriptCode("local player dummy_player = Player(PLAYER_NEUTRAL_PASSIVE)")
action=CustomScriptCode("local unit dummy_unit")
action=CustomScriptCode("local real x = GetUnitX (udg_Hero_warrior)")
action=CustomScriptCode("local real y = GetUnitY (udg_Hero_warrior)")
action=QueueUnitAnimationBJ($Hero_warrior, "stand")
action=CustomScriptCode("call SetUnitLifePercentBJ( udg_Hero_warrior, ( GetUnitLifePercent(udg_Hero_warrior) - 30.00 ) )")
event=TriggerRegisterPlayerUnitEventSimple(Player00, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player01, PlayerUnitEventSpellEffect)
event=TriggerRegisterPlayerUnitEventSimple(Player02, PlayerUnitEventSpellEffect)
action=CustomScriptCode("set dummy_unit = TeoCreateDummyUnit( dummy_player, 'n00X', x, y, 'A01F' )")
action=CustomScriptCode("call IssueTargetOrder( dummy_unit, \"bloodlust\", udg_Hero_warrior )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("set dummy_unit = null")
action=CustomScriptCode("set dummy_player = null")
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A03X")
