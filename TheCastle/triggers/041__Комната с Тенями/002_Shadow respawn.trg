[trigger]
name="Shadow respawn"
description=""
condition=OperatorCompareInteger(CountUnitsInGroup($Shadows_Group), OperatorLess, "5")
action=CustomScriptCode("local unit shadow_unit")
action=CustomScriptCode("local location point = GetRectCenter(gg_rct_REG_Shadow_spawn)")
action=CustomScriptCode("set shadow_unit = TeoCreateUnit( Player(PLAYER_NEUTRAL_AGGRESSIVE), 'e001', GetLocationX(point),GetLocationY(point), 0.00 )")
action=CustomScriptCode("call GroupAddUnitSimple( shadow_unit, udg_Shadows_Group )")
action=CommentString("Создание эффекта появления")
action=CustomScriptCode("call DestroyEffect( AddSpecialEffect( \"Abilities\\\\Spells\\\\Undead\\\\AnimateDead\\\\AnimateDeadTarget.mdl\", GetUnitX(shadow_unit), GetUnitY(shadow_unit) ) )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=CustomScriptCode("set shadow_unit = null")
event=TriggerRegisterTimerEventPeriodic("5.00")
