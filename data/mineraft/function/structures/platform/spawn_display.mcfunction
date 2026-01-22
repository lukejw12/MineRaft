
tellraw @a ["§e[SPAWN_DISPLAY] About to summon platform"]
execute as @e[type=item_display,tag=mr.support_display] run tellraw @a ["§a[BEFORE SUMMON] Support ",{"score":{"name":"@s","objective":"mr.support_id"}}," exists"]

summon item_display ~ ~0.5 ~ {item_display:"ground",Tags:["mr.platform","mr.platform_display","mr.new_platform"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"mineraft:structures/platforms/solid_wooden_platform"}}}

tellraw @a ["§e[SPAWN_DISPLAY] Platform summoned"]
execute as @e[type=item_display,tag=mr.support_display] run tellraw @a ["§a[AFTER SUMMON] Support ",{"score":{"name":"@s","objective":"mr.support_id"}}," still exists"]
execute unless entity @e[tag=mr.support] run say support gone --sawn display