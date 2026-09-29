execute store result score #d.c mr.data run data get storage mineraft:grid cell
execute store result score #d.f mr.data run data get storage mineraft:grid floor
execute store result score #d.t mr.data run data get storage mineraft:grid tile
execute store result score #d.e mr.data run data get storage mineraft:grid edge
execute store result score #d.b mr.data run data get storage mineraft:grid block
tellraw @a [{"text":"grid: ","color":"gold"},{"score":{"name":"#d.c","objective":"mr.data"}},{"text":" cells, "},{"score":{"name":"#d.f","objective":"mr.data"}},{"text":" floor, "},{"score":{"name":"#d.t","objective":"mr.data"}},{"text":" tiles, "},{"score":{"name":"#d.e","objective":"mr.data"}},{"text":" edges, "},{"score":{"name":"#d.b","objective":"mr.data"}},{"text":" collision blocks"}]
