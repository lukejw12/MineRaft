
scoreboard players operation #angle_calc shark.detect = @s shark.angle
scoreboard players operation #angle_calc shark.detect %= #360 shark.detect

scoreboard players operation #y_calc shark.detect = @s shark.timer
scoreboard players operation #y_calc shark.detect %= #100 shark.detect
execute if score #y_calc shark.detect matches 0..49 run scoreboard players set #y_offset shark.detect 500
execute if score #y_calc shark.detect matches 50..99 run scoreboard players set #y_offset shark.detect -500

execute if score #angle_calc shark.detect matches 0 run scoreboard players set #cos_x shark.detect 30000
execute if score #angle_calc shark.detect matches 30 run scoreboard players set #cos_x shark.detect 25981
execute if score #angle_calc shark.detect matches 45 run scoreboard players set #cos_x shark.detect 21213
execute if score #angle_calc shark.detect matches 60 run scoreboard players set #cos_x shark.detect 15000
execute if score #angle_calc shark.detect matches 90 run scoreboard players set #cos_x shark.detect 0
execute if score #angle_calc shark.detect matches 120 run scoreboard players set #cos_x shark.detect -15000
execute if score #angle_calc shark.detect matches 135 run scoreboard players set #cos_x shark.detect -21213
execute if score #angle_calc shark.detect matches 150 run scoreboard players set #cos_x shark.detect -25981
execute if score #angle_calc shark.detect matches 180 run scoreboard players set #cos_x shark.detect -30000
execute if score #angle_calc shark.detect matches 210 run scoreboard players set #cos_x shark.detect -25981
execute if score #angle_calc shark.detect matches 225 run scoreboard players set #cos_x shark.detect -21213
execute if score #angle_calc shark.detect matches 240 run scoreboard players set #cos_x shark.detect -15000
execute if score #angle_calc shark.detect matches 270 run scoreboard players set #cos_x shark.detect 0
execute if score #angle_calc shark.detect matches 300 run scoreboard players set #cos_x shark.detect 15000
execute if score #angle_calc shark.detect matches 315 run scoreboard players set #cos_x shark.detect 21213
execute if score #angle_calc shark.detect matches 330 run scoreboard players set #cos_x shark.detect 25981

execute if score #angle_calc shark.detect matches 0 run scoreboard players set #sin_z shark.detect 0
execute if score #angle_calc shark.detect matches 30 run scoreboard players set #sin_z shark.detect 15000
execute if score #angle_calc shark.detect matches 45 run scoreboard players set #sin_z shark.detect 21213
execute if score #angle_calc shark.detect matches 60 run scoreboard players set #sin_z shark.detect 25981
execute if score #angle_calc shark.detect matches 90 run scoreboard players set #sin_z shark.detect 30000
execute if score #angle_calc shark.detect matches 120 run scoreboard players set #sin_z shark.detect 25981
execute if score #angle_calc shark.detect matches 135 run scoreboard players set #sin_z shark.detect 21213
execute if score #angle_calc shark.detect matches 150 run scoreboard players set #sin_z shark.detect 15000
execute if score #angle_calc shark.detect matches 180 run scoreboard players set #sin_z shark.detect 0
execute if score #angle_calc shark.detect matches 210 run scoreboard players set #sin_z shark.detect -15000
execute if score #angle_calc shark.detect matches 225 run scoreboard players set #sin_z shark.detect -21213
execute if score #angle_calc shark.detect matches 240 run scoreboard players set #sin_z shark.detect -25981
execute if score #angle_calc shark.detect matches 270 run scoreboard players set #sin_z shark.detect -30000
execute if score #angle_calc shark.detect matches 300 run scoreboard players set #sin_z shark.detect -25981
execute if score #angle_calc shark.detect matches 315 run scoreboard players set #sin_z shark.detect -21213
execute if score #angle_calc shark.detect matches 330 run scoreboard players set #sin_z shark.detect -15000

execute unless score #cos_x shark.detect matches -99999..99999 run scoreboard players set #cos_x shark.detect 25000
execute unless score #sin_z shark.detect matches -99999..99999 run scoreboard players set #sin_z shark.detect 25000