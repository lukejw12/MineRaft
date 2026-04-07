execute unless block ~ ~-1 ~ barrier run function mineraft:structures/recycler/core/destroy

execute unless data entity @s {data:{state:"recycling"}} run return fail

execute if data entity @s {data:{has_battery:1b}} unless data entity @s {data:{battery_life:0}} run function mineraft:structures/recycler/processing/process
