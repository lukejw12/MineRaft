execute as @a[scores={tips=0}] run tag @s add tips_preview
execute as @a[scores={tips=1}] run tag @s remove tips_preview
execute as @a[scores={tips=2}] run scoreboard players set @s tips 0
