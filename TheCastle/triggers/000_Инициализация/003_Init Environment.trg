[trigger]
name="Init Environment"
description=""
initially_off=1
action=FogMaskEnableOn()
action=SetWaterBaseColorBJ("25.00", "100", "25.00", "0")
action=SetTerrainFogExBJ(FogStyleLinear, "0.00", "6000.00", "100.00", "0.00", "0.00", "0.00")
action=CustomScriptCode("call SetDayNightModels( \"\",\"\")")
