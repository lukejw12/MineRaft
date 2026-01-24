say try_extend called
execute store result storage mineraft:debug rotation int 1 run scoreboard players get #rotation mr.data
function mineraft:structures/platform/debug_say_rotation with storage mineraft:debug

execute if score #rotation mr.data matches -45..45 run say Rotation: Facing South - placing SOUTH
execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 run say Checking south position for existing platform
execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say BLOCKED: Found platform at south position
execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say CLEAR: No platform at south position
execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/platform/spawn_extended

execute if score #rotation mr.data matches 45..135 run say Rotation: Facing West - placing WEST
execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ run say Checking west position for existing platform
execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say BLOCKED: Found platform at west position
execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say CLEAR: No platform at west position
execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/platform/spawn_extended

execute if score #rotation mr.data matches 135.. run say Rotation: Facing North - placing NORTH
execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 run say Checking north position for existing platform
execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say BLOCKED: Found platform at north position
execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say CLEAR: No platform at north position
execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/platform/spawn_extended

execute if score #rotation mr.data matches ..-135 run say Rotation: Facing North - placing NORTH
execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 run say Checking north position for existing platform
execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say BLOCKED: Found platform at north position
execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say CLEAR: No platform at north position
execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/platform/spawn_extended

execute if score #rotation mr.data matches -135..-45 run say Rotation: Facing East - placing EAST
execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ run say Checking east position for existing platform
execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ if entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say BLOCKED: Found platform at east position
execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run say CLEAR: No platform at east position
execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..2] run function mineraft:structures/platform/spawn_extended