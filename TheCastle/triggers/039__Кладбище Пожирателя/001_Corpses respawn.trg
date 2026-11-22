[trigger]
name="Corpses respawn"
description=""
action=CustomScriptCode("local unit temp_unit")
action=CustomScriptCode("local location point = GetRandomLocInRect(gg_rct_REG_Corpses_spawn)")
action=CustomScriptCode("set temp_unit = TeoCreateUnit( Player(bj_PLAYER_NEUTRAL_VICTIM), 'n00W', GetLocationX(point),GetLocationY(point), GetRandomDirectionDeg() )")
action=CustomScriptCode("call GroupAddUnitSimple( temp_unit, udg_Corpses_Group )")
action=CustomScriptCode("call SetUnitAnimation( temp_unit, \"decay flesh\" )")
action=CustomScriptCode("call SetUnitExploded( temp_unit, true )")
action=CustomScriptCode("call SetUnitTimeScalePercent( temp_unit, 70.00 )")
action=CommentString("Создание эффекта появления")
action=CustomScriptCode("call DestroyEffect( AddSpecialEffect( \"Abilities\\\\Spells\\\\Undead\\\\RaiseSkeletonWarrior\\\\RaiseSkeleton.mdl\", GetUnitX(temp_unit), GetUnitY(temp_unit) ) )")
action=CommentString("Обнуление переменных")
action=CustomScriptCode("call RemoveLocation(point)")
action=CustomScriptCode("set point = null")
action=CustomScriptCode("set temp_unit = null")
event=TriggerRegisterTimerEventPeriodic("8.00")
