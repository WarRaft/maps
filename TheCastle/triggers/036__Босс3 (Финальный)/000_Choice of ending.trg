[trigger]
name="Choice of ending"
description=""
action=DisableTrigger(GetTriggeringTrigger())
action=IfThenElseMultiple()
>action:2=TriggerExecute($gg_trg_Cinematic_BOSS3_alternate)
>action:2=ForForceMultiple($Players)
>>action:0=SetCameraQuickPositionLocForPlayer(GetEnumPlayer(), GetRectCenter($gg_rct_REG_Resurrection_3))
>action:1=TriggerExecute($gg_trg_Cinematic_BOSS3)
>action:1=ForForceMultiple($Players)
>>action:0=SetCameraQuickPositionLocForPlayer(GetEnumPlayer(), GetRectCenter($gg_rct_REG_Resurrection_2))
>condition:0=OperatorCompareReal($Reputation, OperatorGreaterEq, "0.00")
condition=OperatorCompareBoolean(IsUnitType(GetEnteringUnit(), UnitTypeHero), OperatorEqualENE, "true")
event=TriggerRegisterEnterRectSimple($gg_rct_REG_Boss3_Intro)
