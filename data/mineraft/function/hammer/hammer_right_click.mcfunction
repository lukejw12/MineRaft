execute unless score @s hammer matches 0.. run scoreboard players set @s hammer 0


execute unless score $hammer_toggle_b playstyle matches 1.. if score @s hammer matches 0 run tellraw @s [{"bold":true,"color":"red","text":"CAUTION!"},{"bold":false,"color":"red","italic":false,"text":" Are you sure you want to delete this? Right-Click again to confirm."}]
execute unless entity @s[tag=why_even_try_that] unless score $hammer_toggle_b playstyle matches 1.. if score @s hammer matches 1 run playsound minecraft:entity.zombie.attack_wooden_door block @s[tag=!why_even_try_that] ~ ~ ~ 1 1
execute unless score $hammer_toggle_b playstyle matches 1.. run scoreboard players add @s hammer 1
execute if score $hammer_toggle_b playstyle matches 1.. run scoreboard players set @s hammer 2
execute unless entity @s[tag=why_even_try_that] if score $hammer_toggle_b playstyle matches 1.. if score @s hammer matches 2 run playsound minecraft:entity.zombie.attack_wooden_door block @s[tag=!why_even_try_that] ~ ~ ~ 1 1
tag @s remove why_even_try_that




tag @s add hammer_advancement
schedule function mineraft:hammer/remove_advancement.mcfunction 5t

