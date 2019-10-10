#Name: stacks.zs
#Author: SonicSpeedster16
#Description: Increase stack size of items
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

import crafttweaker.item.IItemStack;

print("==== Initializing stacks.zs ====");

# Cake
<minecraft:cake>.maxStackSize = 16;

# Eggs
<minecraft:egg>.maxStackSize = 64;
<chickens:colored_egg>.maxStackSize = 64;
<hatchery:hatcheryegg>.maxStackSize = 64;
<moreplanets:infected_egg>.maxStackSize = 64;

# Snowballs
<minecraft:snowball>.maxStackSize = 64;

# Ender Pearls
<minecraft:ender_pearl>.maxStackSize = 64;

# Dragon Bones
<iceandfire:dragonbone>.maxStackSize = 64;

# Glowballs
<tconstruct:throwball:0>.maxStackSize = 64;

# Terrestrial Artifacts
<biomesoplenty:terrestrial_artifact>.maxStackSize = 16;

# Potions
<minecraft:potion>.maxStackSize = 16;

# Splash Potions
<minecraft:splash_potion>.maxStackSize = 16;

# Lingering Potions
<minecraft:lingering_potion>.maxStackSize = 16;

print("==== Initialized stacks.zs ====");
