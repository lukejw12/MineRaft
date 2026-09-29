data modify storage mineraft:registry structure.support set value {\
    anchor: "tile_center",\
    h: 0,\
    yaw: 0,\
    footprint: [[0, 0]],\
    claims: {cells: 1b},\
    stackable: 1b,\
    model: "raft_structures:basic/wooden_pillar",\
    parts: [{at: [0.0, 0.199, 0.0], t: [0f, 1.3f, 0f], norot: 1b}],\
    blocks: [{at: [0, 0, 0], k: "post"}, {at: [0, 1, 0], k: "post"}, {at: [0, 2, 0], k: "post"}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {can_place: "mineraft:structure/support/can_place"},\
    variants: {wooden: {}, solid_wooden: {}},\
    type: "support"\
}
