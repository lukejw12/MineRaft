data modify storage mineraft:registry structure.foundation set value {\
    anchor: "tile",\
    h: 0,\
    yaw: 0,\
    footprint: [[-1, -1], [0, -1], [1, -1], [-1, 0], [0, 0], [1, 0], [-1, 1], [0, 1], [1, 1]],\
    claims: {floor: 1b, tile: 1b},\
    model: "raft_structures:basic/foundation",\
    parts: [{at: [0.0, -1.0, 0.0], t: [0f, 0.5f, 0f], norot: 1b}],\
    blocks: [\
        {at: [-1, -1, -1], k: "floor_water"},\
        {at: [0, -1, -1], k: "floor_water"},\
        {at: [1, -1, -1], k: "floor_water"},\
        {at: [-1, -1, 0], k: "floor_water"},\
        {at: [0, -1, 0], k: "floor_water"},\
        {at: [1, -1, 0], k: "floor_water"},\
        {at: [-1, -1, 1], k: "floor_water"},\
        {at: [0, -1, 1], k: "floor_water"},\
        {at: [1, -1, 1], k: "floor_water"}\
    ],\
    tags: ["mr.tile", "mr.foundation"],\
    floorlike: 1b,\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    variants: {basic: {}, advanced: {}},\
    type: "foundation"\
}
