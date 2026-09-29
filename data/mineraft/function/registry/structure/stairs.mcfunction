data modify storage mineraft:registry structure.stairs set value {\
    anchor: "cell",\
    h: 3,\
    yaw: 180,\
    footprint: [[0, -1], [0, 0], [0, 1]],\
    claims: {cells: 1b},\
    edge_forward: 1b,\
    model: "raft_structures:basic/wooden_stairs",\
    parts: [\
        {at: [0.0, 0.0, 0.0], t: [0f, 1.5f, 0f]},\
        {kind: "shulker", at: [0.0, -0.46, -1.0]},\
        {kind: "shulker", at: [0.0, 0.04, -0.5]},\
        {kind: "shulker", at: [0.0, 0.54, 0.0]},\
        {kind: "shulker", at: [0.0, 1.04, 0.5]},\
        {kind: "shulker", at: [0.0, 1.54, 1.0]},\
        {kind: "shulker", at: [0.0, 2.04, 1.5]}\
    ],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        collision: "mineraft:structure/stairs/collision",\
        sail_enter: "mineraft:structure/stairs/sail_enter",\
        sail_exit: "mineraft:structure/stairs/sail_exit"\
    },\
    variants: {wooden: {}, solid_wooden: {}},\
    type: "stairs"\
}
