[trigger]
name="Voidwalker Death"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=AddSpecialEffectTargetUnitBJ("origin", GetTriggerUnit(), "war3mapImported\\BlizzardEruption.mdx")
action=PolledWait("1.00")
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_095_Copy_2), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
action=CreateNUnitsAtLocFacingLocBJ("1", "nvdg", Player10, GetRectCenter($gg_rct_Rect_095_Copy_2), GetUnitLoc($gg_unit_nvde_0161))
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_095), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
action=CreateNUnitsAtLocFacingLocBJ("1", "nvdg", Player10, GetRectCenter($gg_rct_Rect_095), GetUnitLoc($gg_unit_nvde_0161))
action=AddSpecialEffectLocBJ(GetRectCenter($gg_rct_Rect_095_Copy), "Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster.mdl")
action=CreateNUnitsAtLocFacingLocBJ("1", "nvdg", Player10, GetRectCenter($gg_rct_Rect_095_Copy), GetUnitLoc($gg_unit_nvde_0161))
event=TriggerRegisterUnitEvent($gg_unit_nvde_0161, UnitEventDeath)
