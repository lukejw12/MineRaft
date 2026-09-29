data modify storage mineraft:registry structure.campfire set value {\
    anchor: "cell",\
    h: 1,\
    yaw: 180,\
    footprint: [[0, 0]],\
    claims: {cells: 1b},\
    model: "raft_structures:campfire",\
    parts: [{at: [0.0, 0.5, 0.0], t: [0f, 0.01f, 0f]}],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 1.05, h: 1.05}],\
    blocks: [{at: [0, 0, 0], k: "campfire"}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/campfire/spawn",\
        interact: "mineraft:structure/campfire/interact",\
        tick: "mineraft:structure/campfire/tick",\
        sail_enter: "mineraft:structure/campfire/sail_enter",\
        sail_exit: "mineraft:structure/campfire/sail_exit",\
        attack: "mineraft:structure/common/attack_break"\
    },\
    variants: {simple: {}},\
    type: "campfire"\
}
