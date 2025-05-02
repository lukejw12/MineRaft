kill @s[type=block_display,scores={lifetime=2..}]
kill @s[type=item_display,scores={lifetime=2..}]
execute as @s at @s run scoreboard players add @s lifetime 1
