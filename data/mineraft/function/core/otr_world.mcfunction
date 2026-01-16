execute at @a[limit=1] run tp @a @s
say world initialized
scoreboard players set #mr.raft_otr mr.data 1
execute at @a[limit=1] run fill ~1 62 ~1 ~-1 61 ~-1 barrier[waterlogged=true]
execute at @a[limit=1] positioned ~ 62 ~ align xyz run summon item_display ~0.5 ~ ~0.5 {item_display:"ground",Tags:["mr.spawn","mr.basic_foundation","mr.foundation","mr.center"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.72f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:barrier",count:1,components:{"minecraft:enchantment_glint_override":false,"minecraft:item_model":"mineraft:structures/foundations/basic_foundation"}}}
