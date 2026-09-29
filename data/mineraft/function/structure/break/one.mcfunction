tag @s remove mr.cascade
tag @s add mr.breaking
scoreboard players operation #brk.id mr.data = @s mr.id
execute if entity @s[tag=mr.t.support] run scoreboard players set #brk.plat mr.data 1
execute if entity @s[tag=mr.t.wall] run scoreboard players set #brk.plat mr.data 1
execute if entity @s[tag=mr.t.platform] run scoreboard players set #brk.plat mr.data 1
function mineraft:structure/hook/run {h:"break"}
function mineraft:structure/claim/release_all
function mineraft:structure/collision/remove
execute if data entity @s data.mr.item.id unless entity @a[tag=mr.breaker,gamemode=creative] run function mineraft:structure/break/drop
particle minecraft:block{block_state:"minecraft:petrified_oak_slab"} ~ ~0.5 ~ 0.4 0.4 0.4 0 20
playsound minecraft:block.wood.break block @a[distance=..16] ~ ~ ~ 1 0.9
scoreboard players operation #brk.kill mr.data = #brk.id mr.data
execute as @e[tag=mr.part,distance=..24] if score @s mr.id = #brk.kill mr.data run function mineraft:structure/break/kill_part
execute as @e[type=item_display,tag=mr.root,tag=!mr.breaking,distance=..6] at @s run function mineraft:structure/collision/apply
