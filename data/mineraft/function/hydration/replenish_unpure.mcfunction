execute unless score @s hydration matches 100.. run scoreboard players add @s hydration 2
advancement revoke @s only mineraft:hydration_bar_unpure
execute if score @s hydration matches 101.. run scoreboard players set @s hydration 100
