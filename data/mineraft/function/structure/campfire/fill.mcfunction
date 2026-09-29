$data modify entity @s data.slot$(n) set from storage mineraft:tmp r.slot
scoreboard players add @s mr.slots 1
playsound minecraft:block.wood.place block @a[distance=..10] ~ ~ ~ 1 1
particle smoke ~ ~0.5 ~ 0.2 0.2 0.2 0.01 10
