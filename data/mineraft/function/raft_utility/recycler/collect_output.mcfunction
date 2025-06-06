give @s minecraft:brown_dye[minecraft:item_model="minecraft:trash_cube",minecraft:item_name={"translate":"item.mineraft.trash_cube","fallback":"Trash Cube"},minecraft:custom_data={trash_cube:1b}] 1
playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1 1

execute as @e[type=marker,tag=this_recycler,limit=1] run scoreboard players set @s recycler_state 0