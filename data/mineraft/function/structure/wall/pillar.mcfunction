$summon item_display ~$(pillar_x) ~$(pillar_y) ~$(pillar_z) {item_display:"ground",Tags:["mr.part","mr.p.pillar","mr.new_pillar"],transformation:{left_rotation:$(pillar_rotation),right_rotation:[0f,0f,0f,1f],translation:[0f,-0.75f,0f],scale:[4f,4f,4f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_model":"raft_structures:basic/wooden_corner"}}}
execute as @e[type=item_display,tag=mr.new_pillar,limit=1] store result score @s mr.id run data get storage mineraft:walls current_wall_id
execute as @e[type=item_display,tag=mr.new_pillar,limit=1] store result score @s mr.link_b run data get storage mineraft:walls diagonal_wall_id
tag @e[type=item_display,tag=mr.new_pillar] remove mr.new_pillar
