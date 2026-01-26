data modify storage mineraft:walls check_side set from entity @s data.side

function mineraft:structures/walls/count_trapdoors with storage mineraft:walls

execute if entity @s[tag=mr.has_structure_on_top] run return 1

execute if entity @s[tag=mr.supporting_platform] if data entity @s {data:{side:"north"}} unless score #trapdoor_count mr.data matches 4 run function mineraft:structures/walls/destroy
execute if entity @s[tag=mr.supporting_platform] if data entity @s {data:{side:"south"}} unless score #trapdoor_count mr.data matches 4 run function mineraft:structures/walls/destroy
execute if entity @s[tag=mr.supporting_platform] if data entity @s {data:{side:"east"}} unless score #trapdoor_count mr.data matches 4 run function mineraft:structures/walls/destroy
execute if entity @s[tag=mr.supporting_platform] if data entity @s {data:{side:"west"}} unless score #trapdoor_count mr.data matches 4 run function mineraft:structures/walls/destroy

execute if entity @s[tag=!mr.supporting_platform] if data entity @s {data:{side:"north"}} unless score #trapdoor_count mr.data matches 7 run function mineraft:structures/walls/destroy
execute if entity @s[tag=!mr.supporting_platform] if data entity @s {data:{side:"south"}} unless score #trapdoor_count mr.data matches 7 run function mineraft:structures/walls/destroy
execute if entity @s[tag=!mr.supporting_platform] if data entity @s {data:{side:"east"}} unless score #trapdoor_count mr.data matches 5 run function mineraft:structures/walls/destroy
execute if entity @s[tag=!mr.supporting_platform] if data entity @s {data:{side:"west"}} unless score #trapdoor_count mr.data matches 5 run function mineraft:structures/walls/destroy