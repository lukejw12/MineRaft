scoreboard players operation #player_link mr.data = @s mr.link

$execute if entity @a[tag=mr.hammer_destroy] run function mineraft:items/hammer/destroy/$(structure)

tag @a remove mr.hammer_destroy
kill @s