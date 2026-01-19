scoreboard players set #trapdoor_count mr.data 0

execute if data storage mineraft:walls {check_side:"north"} if block ~-1 ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"north"} if block ~ ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"north"} if block ~1 ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"north"} if block ~ ~2 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"north"} if block ~-1 ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"north"} if block ~ ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"north"} if block ~1 ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1

execute if data storage mineraft:walls {check_side:"south"} if block ~-1 ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"south"} if block ~ ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"south"} if block ~1 ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"south"} if block ~ ~2 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"south"} if block ~-1 ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"south"} if block ~ ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"south"} if block ~1 ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1

execute if data storage mineraft:walls {check_side:"east"} if block ~ ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"east"} if block ~ ~2 ~-1 iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"east"} if block ~ ~2 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"east"} if block ~ ~2 ~1 iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"east"} if block ~ ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1

execute if data storage mineraft:walls {check_side:"west"} if block ~ ~1 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"west"} if block ~ ~2 ~-1 iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"west"} if block ~ ~2 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"west"} if block ~ ~2 ~1 iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1
execute if data storage mineraft:walls {check_side:"west"} if block ~ ~3 ~ iron_trapdoor run scoreboard players add #trapdoor_count mr.data 1