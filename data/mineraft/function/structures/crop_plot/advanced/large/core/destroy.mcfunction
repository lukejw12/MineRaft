scoreboard players operation #crop_plot_id mr.data = @s mr.crop_plot_id
function mineraft:structures/crop_plot/advanced/large/utils/blocks/remove_barriers with entity @s data

execute at @s if entity @s[tag=mr.trapdoor_1_north] if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run setblock ~ ~ ~ iron_trapdoor[facing=north,half=bottom,open=true]
execute at @s if entity @s[tag=mr.trapdoor_1_south] if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run setblock ~ ~ ~ iron_trapdoor[facing=south,half=bottom,open=true]
execute at @s if entity @s[tag=mr.trapdoor_1_east] if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run setblock ~ ~ ~ iron_trapdoor[facing=east,half=bottom,open=true]
execute at @s if entity @s[tag=mr.trapdoor_1_west] if entity @e[type=item_display,tag=mr.wall_display,distance=..3] run setblock ~ ~ ~ iron_trapdoor[facing=west,half=bottom,open=true]

execute at @s store result storage mineraft:temp offset_x int 1 run data get entity @s data.offset_x1
execute at @s store result storage mineraft:temp offset_z int 1 run data get entity @s data.offset_z1
execute at @s if entity @s[tag=mr.trapdoor_2_north] run data modify storage mineraft:temp direction set value "north"
execute at @s if entity @s[tag=mr.trapdoor_2_north] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_2_south] run data modify storage mineraft:temp direction set value "south"
execute at @s if entity @s[tag=mr.trapdoor_2_south] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_2_east] run data modify storage mineraft:temp direction set value "east"
execute at @s if entity @s[tag=mr.trapdoor_2_east] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_2_west] run data modify storage mineraft:temp direction set value "west"
execute at @s if entity @s[tag=mr.trapdoor_2_west] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp

execute at @s store result storage mineraft:temp offset_x int 1 run data get entity @s data.offset_x2
execute at @s store result storage mineraft:temp offset_z int 1 run data get entity @s data.offset_z2
execute at @s if entity @s[tag=mr.trapdoor_3_north] run data modify storage mineraft:temp direction set value "north"
execute at @s if entity @s[tag=mr.trapdoor_3_north] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_3_south] run data modify storage mineraft:temp direction set value "south"
execute at @s if entity @s[tag=mr.trapdoor_3_south] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_3_east] run data modify storage mineraft:temp direction set value "east"
execute at @s if entity @s[tag=mr.trapdoor_3_east] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_3_west] run data modify storage mineraft:temp direction set value "west"
execute at @s if entity @s[tag=mr.trapdoor_3_west] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp

execute at @s store result storage mineraft:temp offset_x int 1 run data get entity @s data.offset_x3
execute at @s store result storage mineraft:temp offset_z int 1 run data get entity @s data.offset_z3
execute at @s if entity @s[tag=mr.trapdoor_4_north] run data modify storage mineraft:temp direction set value "north"
execute at @s if entity @s[tag=mr.trapdoor_4_north] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_4_south] run data modify storage mineraft:temp direction set value "south"
execute at @s if entity @s[tag=mr.trapdoor_4_south] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_4_east] run data modify storage mineraft:temp direction set value "east"
execute at @s if entity @s[tag=mr.trapdoor_4_east] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp
execute at @s if entity @s[tag=mr.trapdoor_4_west] run data modify storage mineraft:temp direction set value "west"
execute at @s if entity @s[tag=mr.trapdoor_4_west] run function mineraft:structures/crop_plot/advanced/large/utils/restore/wall_trapdoor with storage mineraft:temp


execute as @e[type=item_display,tag=mr.crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data at @s positioned ~0.5 ~-1 ~0.5 as @e[type=item_display,tag=mr.surface,distance=..3,limit=1,sort=nearest] run function mineraft:grid/block/clear_height_block

execute as @e[type=item_display,tag=mr.crop_plot_display] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s
execute as @e[type=interaction,tag=mr.crop_plot_interaction] if score @s mr.crop_plot_id = #crop_plot_id mr.data run kill @s

particle item{item:{id:egg,components:{item_model:"mineraft:particle/wood"}}} ~ ~2.5 ~ 1 2 1 0.1 100 normal
playsound minecraft:entity.zombie.break_wooden_door block @a[distance=..15] ~ ~ ~ 0.2 1.5

data remove entity @s attack
kill @s