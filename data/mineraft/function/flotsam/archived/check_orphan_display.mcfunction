#/ scoreboard players operation #check_id mr.data = @s mr.flotsam_id

#/ scoreboard players set #found mr.data 0
#/ execute as @e[type=item,tag=mr.flotsam] if score @s mr.flotsam_id = #check_id mr.data run scoreboard players set #found mr.data 1

#/ execute if score #found mr.data matches 0 run kill @s