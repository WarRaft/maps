[trigger]
name="adm"
description=""
condition=OperatorCompareString(SubStringBJ(GetEventPlayerChatString(), "1", "4"), OperatorEqualENE, "-adm")
action=ForLoopAMultiple("1", "12")
>action:0=DisplayTextToForce(GetPlayersAll(), OperatorString("Items [", OperatorString(I2S(GetForLoopIndexA()), OperatorString("] = ", I2S($Items[GetForLoopIndexA()])))))
action=ForLoopBMultiple("1", $Note_num)
>action:0=DisplayTextToForce(GetPlayersAll(), OperatorString("Note [", OperatorString(I2S(GetForLoopIndexB()), OperatorString("] = ", GetItemName($Note[GetForLoopIndexB()])))))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("Count_Life = ", I2S($Count_Life)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("All_Items_num = ", I2S($All_Items_num)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("Hero_mechanic = ", GetUnitName($Hero_mechanic)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("UNIT_Robot_mechanic = ", GetUnitName($UNIT_Robot_Mechanic)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("Hero_shaman = ", GetUnitName($Hero_shaman)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("Hero_warrior = ", GetUnitName($Hero_warrior)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("UNIT_Traveler = ", GetUnitName($UNIT_Traveler)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("UNIT_Lizard = ", GetUnitName($UNIT_Lizard)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("UNIT_Marauder = ", GetUnitName($UNIT_Marauder)))
action=DisplayTextToForce(GetPlayersAll(), OperatorString("UNIT_Merchant = ", GetUnitName($UNIT_Merchant)))
event=TriggerRegisterPlayerChatEvent(Player00, "", ChatMatchTypeExact)
