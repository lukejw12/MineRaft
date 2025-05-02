
scoreboard players add @s shark.timer 1
execute if score @s shark.timer matches 200.. run scoreboard players set @s shark.timer 0

scoreboard players add @s shark.angle 1
execute if score @s shark.angle matches 360.. run scoreboard players set @s shark.angle 0

function mineraft:shark/circle_motion