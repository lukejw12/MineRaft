execute if score #current weather.state matches 0 run data modify storage mineraft:weather current set value {name:"Clear Skies", color:"aqua", vanilla:"clear", resource_mult:1}
execute if score #current weather.state matches 1 run data modify storage mineraft:weather current set value {name:"Light Breeze", color:"blue", vanilla:"clear", resource_mult:2}
execute if score #current weather.state matches 2 run data modify storage mineraft:weather current set value {name:"Storm", color:"yellow", vanilla:"rain", resource_mult:3}
execute if score #current weather.state matches 3 run data modify storage mineraft:weather current set value {name:"Heavy Storm", color:"gold", vanilla:"thunder", resource_mult:4}

execute store result score #resource_multiplier resource_delay run data get storage mineraft:weather current.resource_mult

tellraw @a [{"text":"The weather changes: ","color":"gray"},{"nbt":"current.name","storage":"mineraft:weather","color":"white"}]