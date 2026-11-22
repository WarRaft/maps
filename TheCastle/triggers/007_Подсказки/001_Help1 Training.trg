[trigger]
name="Help1 Training"
description=""
initially_off=1
action=DisableTrigger(GetTriggeringTrigger())
action=CreateQuestBJ(QuestTypeReqDiscovered, $TEXT_Quest["1"], $TEXT_Req["1"], "ReplaceableTextures\\CommandButtons\\BTNOrcBattleStandard.blp")
action=SetVariable($Task_First, GetLastCreatedQuestBJ())
action=IfThenElseMultiple()
>action:2=QuestMessageBJ($Players, QuestMessageTypeDiscovered, "TRIGSTR_4743")
>action:1=QuestMessageBJ($Players, QuestMessageTypeDiscovered, "TRIGSTR_4739")
>condition:0=OperatorCompareString($CONSTANT_LANGUAGE, OperatorEqualENE, "RU")
action=CreateQuestBJ(QuestTypeReqUndiscovered, $TEXT_Quest["2"], $TEXT_Req["2"], "ReplaceableTextures\\CommandButtons\\BTNSoulGem.blp")
action=SetVariable($Task_Main, GetLastCreatedQuestBJ())
action=CreateQuestBJ(QuestTypeReqUndiscovered, $TEXT_Quest["3"], "TRIGSTR_4740", "ReplaceableTextures\\CommandButtons\\BTNTome.blp")
action=SetVariable($Task_Notes, GetLastCreatedQuestBJ())
action=TriggerSleepAction("2.50")
action=QuestMessageBJ($Players, QuestMessageTypeAlwaysHint, $TEXT_Hint["1"])
action=PingMinimapLocForForceEx($Players, GetUnitLoc($gg_unit_nbrg_0018), "10.00", MinimapPingStyleSimple, "50.00", "100", "50.00")
