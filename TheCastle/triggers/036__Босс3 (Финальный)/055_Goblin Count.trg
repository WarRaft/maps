[trigger]
name="Goblin Count"
description=""
initially_off=1
action=SetItemCharges($Boss3_Goblin_Item, OperatorInt(GetItemCharges($Boss3_Goblin_Item), OperatorSubtract, "1"))
action=IfThenElseMultiple()
>action:1=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, "TRIGSTR_3795")
>action:1=RemoveItem($Boss3_Goblin_Item)
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=DisableTrigger($gg_trg_Goblin_Invulnerability)
>action:1=UnitRemoveAbilityBJ("A059", $UNIT_Boss3_Goblin)
>action:1=UnitRemoveAbilityBJ("A062", $UNIT_Boss3_Goblin)
>condition:0=OperatorCompareInteger(GetItemCharges($Boss3_Goblin_Item), OperatorEqual, "0")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "n02G")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
