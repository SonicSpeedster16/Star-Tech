#Name: recipes.zs
#Author: SonicSpeedster16
#Description: Recipe removals/modifications
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("==== Initializing recipes.zs ====");

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Fix broken recipes and dup bugs/exploits
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

# Fix derped iron frame recipe
recipes.remove(<advgenerators:iron_frame>);
recipes.addShaped(<advgenerators:iron_frame> * 2, [
  [<ore:ingotIron>, null, <ore:ingotIron>],
  [null, null, null],
  [<ore:ingotIron>, null, <ore:ingotIron>]
]);

# Fix broken advanced pressure valve recipe
recipes.remove(<advgenerators:advanced_pressure_valve>);
recipes.addShaped(<advgenerators:advanced_pressure_valve>, [
  [<minecraft:ender_pearl>, <minecraft:gold_ingot>, <minecraft:ender_pearl>],
  [<minecraft:gold_ingot>, <advgenerators:pressure_valve>, <minecraft:gold_ingot>],
  [<minecraft:ender_pearl>, <minecraft:gold_ingot>, <minecraft:ender_pearl>]
]);

# Fix a dup bug with Thermal Expansion and Ender IO
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:768>);

# Fix an exploit with a Thermal Expansion Sawmill and Pam's HarvestCraft Woven Cotton
recipes.remove(<minecraft:leather_helmet>);
recipes.addShaped(<minecraft:leather_helmet> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_chestplate>);
recipes.addShaped(<minecraft:leather_chestplate> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>]
]);
recipes.remove(<minecraft:leather_leggings>);
recipes.addShaped(<minecraft:leather_leggings> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_boots>);
recipes.addShaped(<minecraft:leather_boots> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);

# Chopping vegetables should not produce 3 slices of Pizza
recipes.removeShapeless(<harvestcraft:pizzasliceitem>, [<harvestcraft:cuttingboarditem>, <ore:listAllgreenveggie>]);

# Whay can Pam's Cotton be crafted to itself?
recipes.remove(<harvestcraft:cottonitem>);

# Remove fallback/alternate recipes that are not needed
recipes.removeByRecipeName("tconstruct:gadgets/slimesling_fallback");
recipes.removeByRecipeName("tconstruct:gadgets/slime_boots_fallback");
recipes.removeByRecipeName("inventorypets:nugget_diamond_alt");
recipes.removeByRecipeName("inventorypets:nugget_obsidian_alt");
recipes.removeByRecipeName("inventorypets:nugget_lapis_alt");
recipes.removeByRecipeName("inventorypets:nugget_ender_alt");

/*~~~~~~~~~~~
Misc. recipes
~~~~~~~~~~~~*/
# Make the LightningCraft Guide craftable
recipes.addShaped(<lightningcraft:guide>, [
  [<lightningcraft:golf_club>, <minecraft:book>, null]
]);

# Add missing recipe for More Planets Tinted Glass
recipes.addShaped(<moreplanets:tinted_glass> * 8, [
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
  [<minecraft:glass>, <moreplanets:setrorium_shard>, <minecraft:glass>],
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
]);

# Add missing recipe for Logistics Pipes RF Power Supplier Upgrade
recipes.addShaped(<logisticspipes:upgrade_power_supplier_rf>, [
  [<minecraft:redstone>, <ore:paper>, <minecraft:redstone>],
  [<ore:ingotIron>, <logisticspipes:upgrade_power_transportation>, <ore:ingotIron>],
  [<minecraft:redstone>, <ore:paper>, <minecraft:redstone>]
]);

# Add missing recipe for Logistics Pipes RF Power Provider
recipes.addShaped(<logisticspipes:power_provider_rf>, [
  [<minecraft:redstone>, <logisticspipes:chip_advanced>, <minecraft:redstone>],
  [<ore:nuggetGold>, <logisticspipes:frame>, <ore:nuggetGold>],
  [<ore:ingotIron>, <minecraft:redstone_block>, <ore:ingotIron>,]
]);

# Add missing recipe for Logistics Pipes Item Card
recipes.addShaped(<logisticspipes:item_card> * 2, [
  [<logisticspipes:chip_advanced>, <minecraft:redstone_block>, <logisticspipes:chip_advanced>],
  [<ore:gemLapis>, <ore:paper>, <ore:gemLapis>],
  [<ore:gemLapis>, <ore:ingotGold>, <ore:gemLapis>]
]);

# Add a way for clearing NBT from Logistics Pipes Modules
recipes.addShapeless(<logisticspipes:module_crafter>, [<logisticspipes:module_crafter>]);
recipes.addShapeless(<logisticspipes:module_active_supplier>, [<logisticspipes:module_active_supplier>]);

# Add a way for clearing NBT from Flux Points and Plugs
recipes.addShapeless(<fluxnetworks:fluxpoint>, [<fluxnetworks:fluxpoint>.anyDamage()]);
recipes.addShapeless(<fluxnetworks:fluxplug>, [<fluxnetworks:fluxplug>.anyDamage()]);

# Use the Atomic Reconstructor to convert modded dirts to Vanilla dirts
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt>, <biomesoplenty:dirt:0>, 60);  /* Loamy Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt>, <biomesoplenty:dirt:1>, 60);  /* Sandy Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt>, <biomesoplenty:dirt:2>, 60);  /* Silty Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt>, <extraplanets:kepler22b:0>, 60);  /* Kepler22b Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt>, <moreplanets:cheese_dirt>, 60);  /* Cheese Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt>, <moreplanets:infected_dirt>, 60);  /* Infected Dirt */
# Coarse Dirt
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt:1>, <biomesoplenty:dirt:8>, 60);  /* Coarse Loamy Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt:1>, <biomesoplenty:dirt:9>, 60);  /* Coarse Sandy Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt:1>, <biomesoplenty:dirt:10>, 60);  /* Coarse Silty Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt:1>, <moreplanets:cheese_coarse_dirt>, 60);  /* Coarse Cheese Dirt */
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:dirt:1>, <moreplanets:infected_coarse_dirt>, 60);  /* Coarse Infected Dirt */

# Convert Frost Powder to Blizz Powder
mods.actuallyadditions.AtomicReconstructor.addRecipe(<thermalfoundation:material:2049>, <netherex:frost_powder>, 10000);
mods.mekanism.enrichment.addRecipe(<netherex:frost_powder>, <thermalfoundation:material:2049>);

/*~~~~~~~~~~~~~
Add QoL recipes
~~~~~~~~~~~~~~*/

# Clay Blocks -> Clay Balls
recipes.addShapeless(<minecraft:clay_ball> * 4, [<minecraft:clay>]);

# Block of Quartz -> Quartz
recipes.addShapeless(<minecraft:quartz> * 4, [<minecraft:quartz_block>]);

# Block/Piller of Black Quartz -> Black Quartz
recipes.addShapeless(<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);
recipes.addShapeless(<actuallyadditions:item_misc:5> * 2, [<actuallyadditions:block_misc:0>]);

# Snow Blocks -> Snow Balls
recipes.addShapeless(<minecraft:snowball> * 4, [<minecraft:snow>]);

# Mud Blocks -> Mud Balls
recipes.addShapeless(<biomesoplenty:mudball> * 4, [<biomesoplenty:mud>]);

# Allow resmelting of blank Tinkers casts
mods.tconstruct.Melting.addRecipe(<liquid:alubrass> * 144, <tconstruct:cast>);

/*~~~~~~~~~~~
Vanilla items
~~~~~~~~~~~~*/

# Name Tag
recipes.addShaped(<minecraft:name_tag>, [
  [null, null, <minecraft:string>],
  [<ore:paper>, <ore:ingotGold>, <ore:paper>],
  [<ore:ingotGold>, null, null]
]);

# Bread
recipes.addShaped(<minecraft:bread> * 1, [
  [<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]
]);

# Sticks
recipes.addShaped(<minecraft:stick> * 16, [
  [<ore:logWood>],
  [<ore:logWood>]
]);

# Chest
recipes.addShaped(<minecraft:chest> * 4, [
  [<ore:logWood>, <ore:logWood>, <ore:logWood>],
  [<ore:logWood>, null, <ore:logWood>],
  [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

# Hopper
recipes.addShaped(<minecraft:hopper> * 1, [
  [<ore:ingotIron>, <ore:logWood>, <ore:ingotIron>],
  [<ore:ingotIron>, <ore:logWood>, <ore:ingotIron>],
  [null, <ore:ingotIron>]
]);

# Dragon Egg
recipes.addShaped(<minecraft:dragon_egg>, [
  [<iceandfire:fire_dragon_blood>, <iceandfire:fire_dragon_flesh>, <iceandfire:ice_dragon_blood>],
  [<iceandfire:fire_dragon_heart>, <minecraft:dragon_breath>, <iceandfire:ice_dragon_heart>],
  [<iceandfire:fire_dragon_blood>, <iceandfire:ice_dragon_flesh>, <iceandfire:ice_dragon_blood>]
]);

# Horse Armor
recipes.remove(<minecraft:iron_horse_armor>);
recipes.addShaped(<minecraft:iron_horse_armor>, [
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
  [<ore:leather>, <ore:blockWool>, <ore:leather>],
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
recipes.remove(<minecraft:golden_horse_armor>);
recipes.addShaped(<minecraft:golden_horse_armor>, [
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
  [<ore:leather>, <ore:blockWool>, <ore:leather>],
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);
recipes.remove(<minecraft:diamond_horse_armor>);
recipes.addShaped(<minecraft:diamond_horse_armor>, [
  [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
  [<ore:leather>, <ore:blockWool>, <ore:leather>], 
  [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]
]);

print("==== Initialized recipes.zs ====");
