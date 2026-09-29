data modify storage mineraft:registry smelting set value {\
    metal_ore: {time: 80, output: "metal_ingot", state: "metal_ore", content: "metal"},\
    sand: {time: 80, output: "glass", state: "sand", content: "glass"}\
}
data modify storage mineraft:registry cooking set value {cod: {time: 60, output: "cooked_cod"}}
data modify storage mineraft:registry recycling set value {\
    plank: 8,\
    plastic: 5,\
    palm_leaf: 5,\
    rope: 10,\
    scrap: 15,\
    metal_ore: 30,\
    metal_ingot: 38,\
    copper: 30,\
    copper_ingot: 38,\
    titanium_ore: 75,\
    titanium_ingot: 94,\
    dirt: 30,\
    clay: 15,\
    sand: 15\
}
data modify storage mineraft:registry crops set value {\
    potato: {\
        size: "small",\
        stages: ["raft_sources:plant/potato_0", "raft_sources:plant/potato_1", "raft_sources:plant/potato_2", "raft_sources:plant/potato_3"],\
        loot: [{id: "potato", count: 2}]\
    },\
    beetroot: {\
        size: "small",\
        stages: ["raft_sources:plant/beetroot_0", "raft_sources:plant/beetroot_1", "raft_sources:plant/beetroot_2", "raft_sources:plant/beetroot_3"],\
        loot: [{id: "beetroot", count: 1}, {id: "beetroot_seeds", min: 1, max: 2}]\
    },\
    pineapple: {\
        size: "large",\
        stages: [\
            "raft_sources:plant/pineapple_0",\
            "raft_sources:plant/pineapple_1",\
            "raft_sources:plant/pineapple_2",\
            "raft_sources:plant/pineapple_3",\
            "raft_sources:plant/pineapple_4"\
        ],\
        loot: [{id: "pineapple", count: 1}, {id: "pineapple_top", count: 1}]\
    }\
}
data modify storage mineraft:registry trees set value {\
    palm_tree: {\
        chop: [\
            [{id: "wooden_plank", min: 1, max: 2}],\
            [{id: "palm_leaf", min: 1, max: 2}],\
            [{id: "wooden_plank", count: 1}, {id: "palm_leaf", count: 1}]\
        ],\
        fell: [{id: "wooden_plank", min: 1, max: 2}, {id: "palm_leaf", count: 1}]\
    }\
}
