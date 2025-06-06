scoreboard players operation #temp recycler_id = @e[type=marker,tag=recycler_active,sort=nearest,limit=1,distance=..1] recycler_id
execute as @e[type=marker,tag=recycler_active] if score @s recycler_id = #temp recycler_id run tag @s add this_recycler
execute on target if items entity @s weapon.* structure_block run function mineraft:hammer/hammer_right_click
execute on target if items entity @s weapon.mainhand minecraft:orange_dye if score @e[type=marker,tag=this_recycler,limit=1] has_battery matches 0 run function mineraft:raft_utility/recycler/insert_battery

execute on target if score @e[type=marker,tag=this_recycler,limit=1] recycler_state matches 2 run function mineraft:raft_utility/recycler/collect_output

execute if score @e[type=marker,tag=this_recycler,limit=1] recycler_state matches 0 if score @e[type=marker,tag=this_recycler,limit=1] has_battery matches 1 run function mineraft:raft_utility/recycler/add_item

tag @e[tag=this_recycler] remove this_recycler