[trigger]
name="Orc Count"
description=""
initially_off=1
action=SetItemCharges($Boss3_Orc_Item, OperatorInt(GetItemCharges($Boss3_Orc_Item), OperatorSubtract, "1"))
action=IfThenElseMultiple()
>action:1=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, "TRIGSTR_3833")
>action:1=RemoveItem($Boss3_Orc_Item)
>action:1=DisableTrigger(GetTriggeringTrigger())
>action:1=DisableTrigger($gg_trg_Orc_Invulnerability)
>action:1=UnitRemoveAbilityBJ("A059", $UNIT_Boss3_Orc)
>action:1=UnitRemoveAbilityBJ("A062", $UNIT_Boss3_Orc)
>condition:0=OperatorCompareInteger(GetItemCharges($Boss3_Orc_Item), OperatorEqual, "0")
condition=OperatorCompareUnitCode(GetUnitTypeId(GetDyingUnit()), OperatorEqualENE, "o007")
event=TriggerRegisterPlayerUnitEventSimple(PlayerNA, PlayerUnitEventDeath)
