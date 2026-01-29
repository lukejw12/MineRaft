scoreboard players operation #player_link mr.data = @s mr.link

data modify storage mineraft:stairs stairs_type set from entity @s data.stairs_type
scoreboard players operation #rotation mr.data = @s mr.data
function mineraft:structures/stairs/placement/models/calculate_rotation

execute align xyz positioned ~ ~1 ~ run function mineraft:structures/stairs/placement/spawn/spawn

kill @s