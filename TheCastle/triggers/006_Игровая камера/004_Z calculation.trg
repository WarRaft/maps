[trigger]
name="Z calculation"
description=""
initially_off=1
action=CustomScriptCode("local real coordinate_X")
action=CustomScriptCode("local real coordinate_Y")
action=CustomScriptCode("local player current_player")
action=ForLoopAMultiple("1", CountPlayersInForceBJ($Players))
>action:0=CustomScriptCode("set coordinate_X = GetUnitX(udg_Z_Unit[bj_forLoopAIndex])")
>action:0=CustomScriptCode("set coordinate_Y = GetUnitY(udg_Z_Unit[bj_forLoopAIndex])")
>action:0=CustomScriptCode("set current_player = Player(bj_forLoopAIndex-1)")
>action:0=CustomScriptCode("// Если земля является городской почвой, то не двигать камеру по Z")
>action:0=CustomScriptCode("if (GetTerrainType(coordinate_X, coordinate_Y) == 'Ydrt' ) then")
>action:0=CustomScriptCode("else")
>action:0=CustomScriptCode("    call SetCameraFieldForPlayer(current_player, CAMERA_FIELD_ZOFFSET, (80.00 * (I2R(GetTerrainCliffLevel(coordinate_X, coordinate_Y)) - 5.00 )), udg_Z_time[bj_forLoopAIndex])")
>action:0=CustomScriptCode("endif")
>action:0=CustomScriptCode("if (udg_FREECAM[bj_forLoopAIndex] == false) then")
>action:0=CustomScriptCode("    call SetCameraTargetControllerNoZForPlayer( current_player, udg_Z_Unit[bj_forLoopAIndex], 0.00, 0, false )")
>action:0=CustomScriptCode("endif")
>action:0=CustomScriptCode("set current_player = null")
