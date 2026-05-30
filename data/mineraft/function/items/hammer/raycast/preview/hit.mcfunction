scoreboard players operation #player_link mr.data = @s mr.link

$execute as @e[type=item_display,tag=$(tag),distance=..2,limit=1,sort=nearest] run function mineraft:items/hammer/raycast/preview/apply_glow

kill @s
