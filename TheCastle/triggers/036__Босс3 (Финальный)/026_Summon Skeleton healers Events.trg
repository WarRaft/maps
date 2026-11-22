[trigger]
name="Summon Skeleton healers Events"
description=""
initially_off=1
action=AddTriggerEvent($gg_trg_Summon_Skeleton_healers, event:TriggerRegisterUnitEvent($UNIT_Boss3_Archmage, UnitEventSpellEffect) ~"")
action=EnableTrigger($gg_trg_Summon_Skeleton_healers)
action=EnableTrigger($gg_trg_Skeleton_healers_timer)
action=EnableTrigger($gg_trg_Death_of_Skeleton_healer)
action=StartTimerBJ($Archmage_Heal_Timer, PeriodicOptionOneTime, "2.30")
