$execute store result score #dep mr.data run data get storage mineraft:grid cell."$(x)/$(y)/$(z)".id
execute if score #dep mr.data matches 1.. run function mineraft:structure/break/tag_dep
