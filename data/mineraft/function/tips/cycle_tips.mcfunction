function mineraft:tips/tips_trigger
scoreboard players add #tip_timer tip_timer 1

execute if score #tip_timer tip_timer matches 200.. run function mineraft:tips/show_random_tip
execute if score #tip_timer tip_timer matches 200.. run scoreboard players set #tip_timer tip_timer 0

bossbar set mineraft:tips players @a[tag=tips_preview]