data modify storage mineraft:registry structure.wall set value {\
    anchor: "edge",\
    h: 0,\
    yaw: 0,\
    footprint: [],\
    claims: {},\
    model: "raft_structures:basic/wooden_wall",\
    parts: [{at: [0.0, 0.5, 0.0], t: [0f, 1f, -1f]}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        collision: "mineraft:structure/wall/collision",\
        can_place: "mineraft:structure/wall/can_place",\
        spawn: "mineraft:structure/wall/spawn",\
        break: "mineraft:structure/wall/break"\
    },\
    variants: {wooden: {}, solid_wooden: {}},\
    type: "wall"\
}
