data modify storage mineraft:registry structure.collection_net set value {\
    anchor: "tile",\
    h: 0,\
    yaw: 0,\
    footprint: [[-1, -1], [0, -1], [1, -1], [-1, 0], [0, 0], [1, 0], [-1, 1], [0, 1], [1, 1]],\
    claims: {tile: 1b},\
    model: "raft_structures:basic/collection_net",\
    parts: [{at: [0.0, -1.0, 0.0], t: [0f, 0.5f, 0f], norot: 1b}],\
    hitboxes: [{at: [0.0, -0.5, 0.0], w: 1.05, h: 0.5}],\
    blocks: [\
        {at: [-1, -1, -1], k: "floor_water"},\
        {at: [0, -1, -1], k: "floor_water"},\
        {at: [1, -1, -1], k: "floor_water"},\
        {at: [-1, -1, 0], k: "floor_water"},\
        {at: [1, -1, 0], k: "floor_water"},\
        {at: [-1, -1, 1], k: "floor_water"},\
        {at: [0, -1, 1], k: "floor_water"},\
        {at: [1, -1, 1], k: "floor_water"},\
        {at: [0, -1, 0], k: "water"}\
    ],\
    tags: ["mr.tile", "mr.foundation"],\
    floorlike: 1b,\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/collection_net/spawn",\
        interact: "mineraft:structure/collection_net/interact",\
        tick: "mineraft:structure/collection_net/tick",\
        break: "mineraft:structure/collection_net/break"\
    },\
    variants: {simple: {capacity: 10}, advanced: {capacity: 15}},\
    type: "collection_net"\
}
