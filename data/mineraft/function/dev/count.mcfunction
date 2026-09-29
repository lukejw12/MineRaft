execute store result score #d.r mr.data if entity @e[tag=mr.root]
execute store result score #d.p mr.data if entity @e[tag=mr.part]
execute store result score #d.h mr.data if entity @e[type=interaction,tag=mr.hitbox]
execute store result score #d.s mr.data if entity @e[type=shulker,tag=mr.shulker]
tellraw @a [{"text":"roots "},{"score":{"name":"#d.r","objective":"mr.data"}},{"text":", parts "},{"score":{"name":"#d.p","objective":"mr.data"}},{"text":", hitboxes "},{"score":{"name":"#d.h","objective":"mr.data"}},{"text":", shulkers "},{"score":{"name":"#d.s","objective":"mr.data"}}]
function mineraft:grid/debug
