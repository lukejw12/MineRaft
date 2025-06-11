execute if score @s receiver_target matches 1 run function mineraft:raft_utility/receiver/set_target_large_island
execute if score @s receiver_target matches 2 run function mineraft:raft_utility/receiver/set_target_small_island
execute if score @s receiver_target matches 3 run function mineraft:raft_utility/receiver/set_target_story_structure
execute if score @s receiver_target matches 99 run function mineraft:raft_utility/receiver/clear_target

scoreboard players reset @s receiver_target