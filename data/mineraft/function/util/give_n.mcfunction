$scoreboard players set #g.n mr.data $(count)
$execute if score #g.n mr.data matches 1.. run function mineraft:util/give_loop {id:"$(id)"}
