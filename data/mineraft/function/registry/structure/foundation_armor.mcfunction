data modify storage mineraft:registry structure.foundation_armor set value {\
    anchor: "tile_attach",\
    h: 0,\
    yaw: 0,\
    footprint: [],\
    claims: {armor: 1b},\
    model: "raft_items:structures/armor/foundation",\
    net_model: "raft_items:structures/armor/net",\
    parts: [{at: [0.0, -1.0, 0.0], mode: "ground", t: [0f, 0.72f, 0f], norot: 1b}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {spawn: "mineraft:structure/foundation_armor/spawn"},\
    variants: {default: {}},\
    type: "foundation_armor"\
}
