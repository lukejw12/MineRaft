

execute store result score #entity_count mr.data if entity @e[type=item_display]
execute store result score #marker_count mr.data if entity @e[type=marker]
execute as @a at @s run function mineraft:core/player/tick
execute as @e[type=interaction] at @s run function mineraft:core/interaction/tick
execute as @e[type=item_display,tag=!aj.mineraft.bone,tag=!aj.mineraft.root] at @s run function mineraft:core/display/tick
execute as @e[type=item,tag=mr.flotsam] at @s run function mineraft:flotsam/tick
execute as @e[type=armor_stand,tag=mr.shark] at @s run function mineraft:shark/core/tick
execute as @e[type=marker,limit=1,sort=nearest,tag=mr.spawn] at @s run function mineraft:flotsam/core/tick
