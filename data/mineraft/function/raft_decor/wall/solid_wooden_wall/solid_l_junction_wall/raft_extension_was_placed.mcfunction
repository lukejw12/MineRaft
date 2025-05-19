execute if entity @e[tag=l_junction_wall_display,tag=facing_northeast,distance=..6] if block ~ ~-1 ~ #raft_materials if predicate mineraft:wall/facing_northeast run tag @s add valid_northeast

execute if entity @s[tag=valid_northeast] run summon marker ~ ~ ~ {Tags:["solid_l_junction_wall_active","facing_northeast"]}
execute if entity @s[tag=valid_northeast] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_northeast] run summon item_display ~1 ~.3 ~-1 {Rotation:[-90f,0f],item_display:"ground",Tags:["l_junction_wall_facade","facing_northeast","wall_item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_stained_glass",count:1,components:{"minecraft:item_model":"minecraft:solid_l_junction_wall","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid_northeast] run fill ~ ~ ~ ~2 ~2 ~ blue_stained_glass
execute if entity @s[tag=valid_northeast] run fill ~ ~ ~ ~ ~2 ~-2 blue_stained_glass
execute if entity @s[tag=valid_northeast] run kill @s
execute if entity @s[tag=valid_northeast] run return 0

execute if entity @e[tag=l_junction_wall_display,tag=facing_southeast,distance=..6] if block ~ ~-1 ~ #raft_materials if predicate mineraft:wall/facing_southeast run tag @s add valid_southeast

execute if entity @s[tag=valid_southeast] run summon marker ~ ~ ~ {Tags:["solid_l_junction_wall_active","facing_southeast"]}
execute if entity @s[tag=valid_southeast] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_southeast] run summon item_display ~1 ~.3 ~1 {Rotation:[0f,0f],item_display:"ground",Tags:["l_junction_wall_facade","facing_southeast","wall_item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_stained_glass",count:1,components:{"minecraft:item_model":"minecraft:solid_l_junction_wall","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid_southeast] run fill ~ ~ ~ ~2 ~2 ~ blue_stained_glass
execute if entity @s[tag=valid_southeast] run fill ~ ~ ~ ~ ~2 ~2 blue_stained_glass
execute if entity @s[tag=valid_southeast] run kill @s
execute if entity @s[tag=valid_southeast] run return 0

execute if entity @e[tag=l_junction_wall_display,tag=facing_southwest,distance=..6] if block ~ ~-1 ~ #raft_materials if predicate mineraft:wall/facing_southwest run tag @s add valid_southwest

execute if entity @s[tag=valid_southwest] run summon marker ~ ~ ~ {Tags:["solid_l_junction_wall_active","facing_southwest"]}
execute if entity @s[tag=valid_southwest] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_southwest] run summon item_display ~-1 ~.3 ~1 {Rotation:[90f,0f],item_display:"ground",Tags:["l_junction_wall_facade","facing_southwest","wall_item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_stained_glass",count:1,components:{"minecraft:item_model":"minecraft:solid_l_junction_wall","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid_southwest] run fill ~ ~ ~ ~-2 ~2 ~ blue_stained_glass
execute if entity @s[tag=valid_southwest] run fill ~ ~ ~ ~ ~2 ~2 blue_stained_glass
execute if entity @s[tag=valid_southwest] run kill @s
execute if entity @s[tag=valid_southwest] run return 0

execute if entity @e[tag=l_junction_wall_display,tag=facing_northwest,distance=..6] if block ~ ~-1 ~ #raft_materials if predicate mineraft:wall/facing_northwest run tag @s add valid_northwest

execute if entity @s[tag=valid_northwest] run summon marker ~ ~ ~ {Tags:["solid_l_junction_wall_active","facing_northwest"]}
execute if entity @s[tag=valid_northwest] run playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 0.8 1
execute if entity @s[tag=valid_northwest] run summon item_display ~-1 ~.3 ~-1 {Rotation:[180f,0f],item_display:"ground",Tags:["l_junction_wall_facade","facing_northwest","wall_item"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:blue_stained_glass",count:1,components:{"minecraft:item_model":"minecraft:solid_l_junction_wall","minecraft:enchantment_glint_override":false}}}
execute if entity @s[tag=valid_northwest] run fill ~ ~ ~ ~-2 ~2 ~ blue_stained_glass
execute if entity @s[tag=valid_northwest] run fill ~ ~ ~ ~ ~2 ~-2 blue_stained_glass
execute if entity @s[tag=valid_northwest] run kill @s
execute if entity @s[tag=valid_northwest] run return 0

execute unless entity @s[tag=valid_northeast] unless entity @s[tag=valid_northwest] unless entity @s[tag=valid_southwest] unless entity @s[tag=valid_southeast] run summon item ~ ~ ~ {Motion:[0.0,0.3,0.0],Item:{id:"minecraft:vex_spawn_egg",count:1,components:{"minecraft:custom_data":{solid_l_junction_wall:1b},"minecraft:entity_data":{id:"minecraft:marker",Tags:["solid_l_junction_wall"]},"minecraft:item_model":"minecraft:solid_l_junction_wall_item","minecraft:item_name":{"translate":"item.mineraft.solid_l_junction_wall","fallback":"Solid L Junction Wall"},"minecraft:rarity":"uncommon"}}}
execute unless entity @s[tag=valid_northeast] unless entity @s[tag=valid_northwest] unless entity @s[tag=valid_southwest] unless entity @s[tag=valid_southeast] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 2 2
execute unless entity @s[tag=valid_northeast] unless entity @s[tag=valid_northwest] unless entity @s[tag=valid_southwest] unless entity @s[tag=valid_southeast] run kill @s