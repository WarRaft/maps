[trigger]
name="Stomp"
description=""
action=CustomScriptCode("call DestroyEffect( AddSpecialEffect( \"Abilities\\\\Spells\\\\Orc\\\\WarStomp\\\\WarStompCaster.mdl\", GetUnitX(GetTriggerUnit()), GetUnitY(GetTriggerUnit()) ) )")
action=CommentString("Выбираем группу юнитов")
action=CustomScriptCode("call GroupEnumUnitsInRange (udg_TempGroup, GetUnitX (GetTriggerUnit()), GetUnitY (GetTriggerUnit()), 250, null) ")
action=ForGroupMultiple($TempGroup)
>action:0=CustomScriptCode("local unit dummy_unit")
>action:0=CustomScriptCode("local unit temp_unit = GetEnumUnit()")
>action:0=CommentString("Оглушаем каждого юнита")
>action:0=CustomScriptCode("set dummy_unit = TeoCreateDummyUnit( GetOwningPlayer(GetTriggerUnit()), 'n00X', GetUnitX (GetTriggerUnit()), GetUnitY (GetTriggerUnit()), 'A03S' )")
>action:0=CustomScriptCode("call IssueTargetOrder( dummy_unit, \"thunderbolt\", temp_unit )")
>action:0=CustomScriptCode("set dummy_unit = null")
>action:0=CustomScriptCode("set temp_unit = null")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call GroupClear( udg_TempGroup )")
event=TriggerRegisterAnyUnitEventBJ(PlayerUnitEventSpellEffect)
condition=OperatorCompareAbilityId(GetSpellAbilityId(), OperatorEqualENE, "A03R")
