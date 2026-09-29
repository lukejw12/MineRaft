scoreboard players set #sup mr.data 1
$execute if data storage mineraft:grid cell."$(x)/$(ym3)/$(z)"{t:"support"} run return 1
$execute if data storage mineraft:grid cell."$(xp)/$(ym3)/$(z)"{t:"support"} run return 1
$execute if data storage mineraft:grid cell."$(xm)/$(ym3)/$(z)"{t:"support"} run return 1
$execute if data storage mineraft:grid cell."$(x)/$(ym3)/$(zp)"{t:"support"} run return 1
$execute if data storage mineraft:grid cell."$(x)/$(ym3)/$(zm)"{t:"support"} run return 1
$execute if data storage mineraft:grid edge."n/$(x)/$(ym3)/$(z)"{t:"wall",tx:$(x),tz:$(z)} run return 1
$execute if data storage mineraft:grid edge."w/$(x)/$(ym3)/$(z)"{t:"wall",tx:$(x),tz:$(z)} run return 1
$execute if data storage mineraft:grid edge."n/$(x)/$(ym3)/$(zp)"{t:"wall",tx:$(x),tz:$(z)} run return 1
$execute if data storage mineraft:grid edge."w/$(xp)/$(ym3)/$(z)"{t:"wall",tx:$(x),tz:$(z)} run return 1
scoreboard players set #sup mr.data 0
