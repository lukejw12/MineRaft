$loot give @s loot mineraft:item/$(id)
scoreboard players remove #g.n mr.data 1
$execute if score #g.n mr.data matches 1.. run function mineraft:util/give_loop {id:"$(id)"}
