scoreboard players set #preview_valid mr.data 0

execute if score #rotation mr.data matches -45..45 positioned ~ ~ ~3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] run function mineraft:structures/platform/validation/preview/check_position {x:0,z:3}
execute if score #rotation mr.data matches 45..135 positioned ~-3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] run function mineraft:structures/platform/validation/preview/check_position {x:-3,z:0}
execute if score #rotation mr.data matches 135.. positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] run function mineraft:structures/platform/validation/preview/check_position {x:0,z:-3}
execute if score #rotation mr.data matches ..-135 positioned ~ ~ ~-3 unless entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] run function mineraft:structures/platform/validation/preview/check_position {x:0,z:-3}
execute if score #rotation mr.data matches -135..-45 positioned ~3 ~ ~ unless entity @e[type=item_display,tag=mr.platform_display,distance=..0.7] run function mineraft:structures/platform/validation/preview/check_position {x:3,z:0}

execute if score #preview_valid mr.data matches 0 as @e[type=item_display,tag=mr.platform_preview] if score @s mr.link = #player_link mr.data run kill @s