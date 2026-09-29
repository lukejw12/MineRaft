scoreboard players set #tick mr.data 0
execute if score #sp.sailing sp.data matches 1 run return 0
execute as @e[type=item_display,tag=mr.t.foundation] at @s if entity @a[distance=..32] unless block ~ ~ ~ #mineraft:raft/surface run function mineraft:structure/break
execute as @e[type=item_display,tag=mr.t.platform] at @s if entity @a[distance=..32] unless block ~ ~ ~ #mineraft:raft/surface run function mineraft:structure/break
