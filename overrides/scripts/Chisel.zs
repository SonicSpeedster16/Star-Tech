#Name: Chisel.zs
#Author: SonicSpeedster16
#Description: Add Chisel variations to various blocks
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import mods.chisel.Carving.addVariation;

print("==== Initializing Chisel.zs ====");

# Marble
addVariation("sootymarble", <astralsorcery:blockblackmarble:0>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:1>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:2>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:3>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:4>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:5>);
addVariation("sootymarble", <astralsorcery:blockblackmarble:6>);

# Basalt
mods.chisel.Carving.addVariation("basalt", <nex:basalt:0>);
mods.chisel.Carving.addVariation("basalt", <nex:basalt:1>);
mods.chisel.Carving.addVariation("basalt", <nex:basalt:2>);
mods.chisel.Carving.addVariation("basalt", <nex:basalt:3>);

# Netherrack
mods.chisel.Carving.addVariation("netherrack", <nex:netherrack:0>);
mods.chisel.Carving.addVariation("netherrack", <nex:netherrack:1>);
mods.chisel.Carving.addVariation("netherrack", <nex:netherrack:2>);
mods.chisel.Carving.addVariation("netherrack", <nex:netherrack:3>);

# Nether Bricks
mods.chisel.Carving.addVariation("netherbrick", <nex:nether_brick:0>);
mods.chisel.Carving.addVariation("netherbrick", <nex:nether_brick:1>);
mods.chisel.Carving.addVariation("netherbrick", <nex:nether_brick:2>);
mods.chisel.Carving.addVariation("netherbrick", <nex:nether_brick:3>);

# Twilight Forest
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:0>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:1>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:2>);
addVariation("castlebrickrune", <twilightforest:castle_rune_brick:3>);
addVariation("castlebrickdoor", <twilightforest:castle_door:0>);
addVariation("castlebrickdoor", <twilightforest:castle_door:1>);
addVariation("castlebrickdoor", <twilightforest:castle_door:2>);
addVariation("castlebrickdoor", <twilightforest:castle_door:3>);

print("==== Initialized compat.zs ====");
