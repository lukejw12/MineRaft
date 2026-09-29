data modify storage mineraft:registry structure.platform set value {\
    anchor: "platform",\
    h: 0,\
    yaw: 0,\
    footprint: [[-1, -1], [0, -1], [1, -1], [-1, 0], [0, 0], [1, 0], [-1, 1], [0, 1], [1, 1]],\
    claims: {floor: 1b, tile: 1b},\
    model: "raft_structures:basic/wooden_platform",\
    parts: [{at: [0.0, -0.29, 0.0], t: [0f, -0.2f, 0f], norot: 1b}],\
    blocks: [\
        {at: [-1, -1, -1], k: "floor"},\
        {at: [0, -1, -1], k: "floor"},\
        {at: [1, -1, -1], k: "floor"},\
        {at: [-1, -1, 0], k: "floor"},\
        {at: [0, -1, 0], k: "floor"},\
        {at: [1, -1, 0], k: "floor"},\
        {at: [-1, -1, 1], k: "floor"},\
        {at: [0, -1, 1], k: "floor"},\
        {at: [1, -1, 1], k: "floor"}\
    ],\
    tags: ["mr.tile"],\
    floorlike: 1b,\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    variants: {wooden: {}, solid_wooden: {}},\
    type: "platform"\
}
