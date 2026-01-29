$summon item_display ~$(pillar_x) ~$(pillar_y) ~$(pillar_z) {item_display:"ground",Tags:["mr.wall_pillar","mr.new_pillar"],transformation:{left_rotation:$(pillar_rotation),right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"mineraft:structures/walls/$(wall_type)_pillar"}}}

execute as @e[type=item_display,tag=mr.new_pillar,limit=1] store result score @s mr.wall_id run data get storage mineraft:walls current_wall_id
execute as @e[type=item_display,tag=mr.new_pillar,limit=1] store result score @s mr.wall_id2 run data get storage mineraft:walls diagonal_wall_id

tag @e[type=item_display,tag=mr.new_pillar] remove mr.new_pillar
