data modify storage mineraft:registry structure.recycler set value {\
    anchor: "cell",\
    h: 2,\
    yaw: 180,\
    footprint: [[0, 0]],\
    claims: {cells: 1b},\
    model: "mineraft:structures/recycler/basic_recycler",\
    state_model: "basic_recycler",\
    parts: [{at: [0.0, 1.0, 0.0], mode: "ground", t: [0f, 0.01f, 0f]}],\
    hitboxes: [{at: [0.0, 0.0, 0.0], w: 1.05, h: 2.1}],\
    blocks: [{at: [0, 0, 0], k: "full"}, {at: [0, 1, 0], k: "full"}],\
    sound: {id: "minecraft:block.anvil.use", pitch: 2},\
    hooks: {\
        spawn: "mineraft:structure/recycler/spawn",\
        interact: "mineraft:structure/recycler/interact",\
        tick: "mineraft:structure/recycler/tick",\
        attack: "mineraft:structure/common/attack_break"\
    },\
    variants: {basic: {}},\
    type: "recycler"\
}
