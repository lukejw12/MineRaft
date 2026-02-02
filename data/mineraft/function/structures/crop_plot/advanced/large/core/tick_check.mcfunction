execute store result storage mineraft:temp offset_x1 int 1 run data get entity @s data.offset_x1
execute store result storage mineraft:temp offset_z1 int 1 run data get entity @s data.offset_z1
execute store result storage mineraft:temp offset_x2 int 1 run data get entity @s data.offset_x2
execute store result storage mineraft:temp offset_z2 int 1 run data get entity @s data.offset_z2
execute store result storage mineraft:temp offset_x3 int 1 run data get entity @s data.offset_x3
execute store result storage mineraft:temp offset_z3 int 1 run data get entity @s data.offset_z3

execute at @s unless block ~ ~ ~ barrier run function mineraft:structures/crop_plot/advanced/large/core/destroy
execute at @s unless block ~ ~-1 ~ #mineraft:support-valid-blocks run function mineraft:structures/crop_plot/advanced/large/core/destroy

$execute at @s positioned ~$(offset_x1) ~ ~$(offset_z1) unless block ~ ~ ~ barrier at @s run function mineraft:structures/crop_plot/advanced/large/core/destroy
$execute at @s positioned ~$(offset_x2) ~ ~$(offset_z2) unless block ~ ~ ~ barrier at @s run function mineraft:structures/crop_plot/advanced/large/core/destroy
$execute at @s positioned ~$(offset_x3) ~ ~$(offset_z3) unless block ~ ~ ~ barrier at @s run function mineraft:structures/crop_plot/advanced/large/core/destroy