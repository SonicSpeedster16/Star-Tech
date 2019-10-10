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
recipes.addShaped("Advanced Generators Iron Frame",
<advgenerators:iron_frame> * 2, [
  [<ore:ingotIron>, null, <ore:ingotIron>],
  [null, null, null],
  [<ore:ingotIron>, null, <ore:ingotIron>]
]);

# Fix broken advanced pressure valve recipe
recipes.remove(<advgenerators:advanced_pressure_valve>);
recipes.addShaped("Advanced Generators Pressure Valve",
<advgenerators:advanced_pressure_valve>, [
  [<minecraft:ender_pearl>, <minecraft:gold_ingot>, <minecraft:ender_pearl>],
  [<minecraft:gold_ingot>, <advgenerators:pressure_valve>, <minecraft:gold_ingot>],
  [<minecraft:ender_pearl>, <minecraft:gold_ingot>, <minecraft:ender_pearl>]
]);

# Fix a dup bug with Thermal Expansion and Ender IO
mods.thermalexpansion.RedstoneFurnace.removeRecipe(<thermalfoundation:material:768>);

# Fix an exploit with a Thermal Expansion Sawmill and Pam's HarvestCraft Woven Cotton
recipes.remove(<minecraft:leather_helmet>);
recipes.addShaped("Leather Helmet_alt",
<minecraft:leather_helmet> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_chestplate>);
recipes.addShaped("Leather Chestplate_alt",
<minecraft:leather_chestplate> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, <ore:leather>, <ore:leather>]
]);
recipes.remove(<minecraft:leather_leggings>);
recipes.addShaped("Leather Leggings_alt",
<minecraft:leather_leggings> * 1, [
  [<ore:leather>, <ore:leather>, <ore:leather>],
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);
recipes.remove(<minecraft:leather_boots>);
recipes.addShaped("Leather Boots_alt",
<minecraft:leather_boots> * 1, [
  [<ore:leather>, null, <ore:leather>],
  [<ore:leather>, null, <ore:leather>]
]);

# Fix a dup bug involving Horse Armor
mods.actuallyadditions.Crusher.removeRecipe(<thermalfoundation:material:0> * 6);
mods.actuallyadditions.Crusher.removeRecipe(<thermalfoundation:material:1> * 6);
mods.actuallyadditions.Crusher.removeRecipe(<mekanism:otherdust:0> * 6);

# Prevent space ingots from being craftable
recipes.removeByRecipeName("extrabees:zinc_dust_ingot");
recipes.removeByRecipeName("extrabees:tungsten_dust_ingot");

# Unstable Ingots are disabled
recipes.removeByRecipeName("extrautils2:moon_stone_adv");
recipes.removeByRecipeName("extrautils2:stable_unstable_ingot");
recipes.removeByRecipeName("extrautils2:unstable_unpack");

# Remove shortcut/fallback/alternate recipes that are not needed
recipes.removeByRecipeName("tconstruct:gadgets/slimesling_fallback");
recipes.removeByRecipeName("tconstruct:gadgets/slime_boots_fallback");
recipes.removeByRecipeName("inventorypets:nugget_diamond_alt");
recipes.removeByRecipeName("inventorypets:nugget_obsidian_alt");
recipes.removeByRecipeName("inventorypets:nugget_lapis_alt");
recipes.removeByRecipeName("inventorypets:nugget_ender_alt");
recipes.removeByRecipeName("enderio:capacitor_crystalline_alt");
recipes.removeByRecipeName("extrautils2:shortcut_stick");
recipes.removeByRecipeName("enderio:tweak_wood_hopper");
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");
// Chests
recipes.removeByRecipeName("extrautils2:shortcut_chest");
recipes.removeByRecipeName("enderio:tweak_chest_from_wood");
recipes.removeByRecipeName("extraplanets:chest");
recipes.removeByRecipeName("extraplanets:chest_alt");
recipes.removeByRecipeName("extraplanets:chest_alt_alt");
recipes.removeByRecipeName("extraplanets:chest_alt_alt_alt");
recipes.removeByRecipeName("extraplanets:chest_alt_alt_alt_alt");
recipes.removeByRecipeName("extraplanets:chest_alt_alt_alt_alt_alt");
// Paper
recipes.removeByRecipeName("mekanism:paper");
recipes.removeByRecipeName("moreplanets:bread_from_infected_sugar_cane");
recipes.removeByRecipeName("actuallyadditions:recipes23");
// Extra Block to Ingot recipes
recipes.removeByRecipeName("chisel:uncraft_blockiron");
recipes.removeByRecipeName("unidict:ingotiron_x1_shape.aaaaaaaaa");
recipes.removeByRecipeName("chisel:uncraft_blockgold");
recipes.removeByRecipeName("chisel:uncraft_blockcopper");
recipes.removeByRecipeName("thermalfoundation:material_41");
recipes.removeByRecipeName("chisel:uncraft_blocktin");
recipes.removeByRecipeName("thermalfoundation:material_42");
recipes.removeByRecipeName("chisel:uncraft_blocksilver");
recipes.removeByRecipeName("chisel:uncraft_blocklead");
recipes.removeByRecipeName("thermalfoundation:material_44");
recipes.removeByRecipeName("chisel:uncraft_blockaluminum");
recipes.removeByRecipeName("thermalfoundation:material_45");
recipes.removeByRecipeName("chisel:uncraft_blocknickel");
recipes.removeByRecipeName("chisel:uncraft_blockplatinum");
recipes.removeByRecipeName("chisel:uncraft_blocksteel");
recipes.removeByRecipeName("thermalfoundation:material_50");
recipes.removeByRecipeName("chisel:uncraft_blockelectrum");
recipes.removeByRecipeName("chisel:uncraft_blockinvar");
recipes.removeByRecipeName("chisel:uncraft_blockbronze");
recipes.removeByRecipeName("thermalfoundation:material_53");
recipes.removeByRecipeName("chisel:uncraft_blockcobalt");

/*~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Modify recipes to resolve conflicts
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/
# Tiny Coal
recipes.remove(<actuallyadditions:item_misc:10>);
recipes.addShaped("Tiny Coal_alt",
<actuallyadditions:item_misc:10> * 16, [
  [<minecraft:coal:0>, <minecraft:coal:0>, null]
]);
# Tiny Charcoal
recipes.remove(<actuallyadditions:item_misc:11>);
recipes.addShaped("Tiny Charcoal_alt",
<actuallyadditions:item_misc:11> * 16, [
  [<minecraft:coal:1>, <minecraft:coal:1>, null]
]);

/*~~~~~~~~~~~
Misc. recipes
~~~~~~~~~~~~*/
# Make the LightningCraft Guide craftable
recipes.addShaped("LightningCraft Guidebook",
<lightningcraft:guide>, [
  [<lightningcraft:golf_club>, <minecraft:book>, null]
]);

# Add recipe for More Planets Tinted Glass
recipes.addShaped("Tinted Glass_custom",
<moreplanets:tinted_glass> * 8, [
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
  [<minecraft:glass>, <moreplanets:setrorium_shard>, <minecraft:glass>],
  [<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]
]);
mods.thermalexpansion.InductionSmelter.addRecipe(<moreplanets:tinted_glass>, <minecraft:glass>, <moreplanets:setrorium_shard>, 4000);

# Add recipe for Logistics Pipes RF Power Supplier Upgrade
recipes.addShaped("RF Power Supplier",
<logisticspipes:upgrade_power_supplier_rf>, [
  [<minecraft:redstone>, <ore:paper>, <minecraft:redstone>],
  [<ore:ingotIron>, <logisticspipes:upgrade_power_transportation>, <ore:ingotIron>],
  [<minecraft:redstone>, <ore:paper>, <minecraft:redstone>]
]);

# Add recipe for Logistics Pipes RF Power Provider
recipes.addShaped("RF Power Provider",
<logisticspipes:power_provider_rf>, [
  [<minecraft:redstone>, <logisticspipes:chip_advanced>, <minecraft:redstone>],
  [<ore:nuggetGold>, <logisticspipes:frame>, <ore:nuggetGold>],
  [<ore:ingotIron>, <minecraft:redstone_block>, <ore:ingotIron>,]
]);

# Add recipe for Logistics Pipes Item Card
recipes.addShaped("Logistics Pipes Item Cards",
<logisticspipes:item_card> * 2, [
  [<logisticspipes:chip_advanced>, <minecraft:redstone_block>, <logisticspipes:chip_advanced>],
  [<ore:gemLapis>, <ore:paper>, <ore:gemLapis>],
  [<ore:gemLapis>, <ore:ingotGold>, <ore:gemLapis>]
]);

# Add a way for clearing NBT from Logistics Pipes Modules
recipes.addShapeless("clear_nbt_module_crafter",
<logisticspipes:module_crafter>, [<logisticspipes:module_crafter>]);
recipes.addShapeless("clear_nbt_module_active_supplier",
<logisticspipes:module_active_supplier>, [<logisticspipes:module_active_supplier>]);

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
recipes.addShapeless("Block of Clay to Clay Balls", 
<minecraft:clay_ball> * 4, [<minecraft:clay>]);

# Block of Quartz -> Quartz
recipes.addShapeless("Block of Quartz to Quartz",
<minecraft:quartz> * 4, [<minecraft:quartz_block>]);

# Blocks/Piller of Black Quartz -> Black Quartz
recipes.addShapeless("Block of Black Quartz to Black Quartz", 
<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);
recipes.addShapeless("Chiseled Block of Black Quartz to Black Quartz", 
<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:1>]);
recipes.addShapeless("Pillar of Black Quartz to Black Quartz", 
<actuallyadditions:item_misc:5> * 2, [<actuallyadditions:block_misc:0>]);

# Snow Blocks -> Snow Balls
recipes.addShapeless("Block of Snow to Snowballs", 
<minecraft:snowball> * 4, [<minecraft:snow>]);

# Salt Blocks -> Salt
recipes.addShapeless("Block of Salt to Salt", 
<mekanism:salt> * 4, [<mekanism:saltblock>]);
mods.mekanism.enrichment.removeRecipe(<mekanism:saltblock>);

# Mud Blocks -> Mud Balls
recipes.addShapeless("Block of Mud to Mud Balls", 
<biomesoplenty:mudball> * 4, [<biomesoplenty:mud>]);

# Beetroot -> Beetroot Seeds
recipes.addShaped("Beetroot to Beetroot Seeds", 
<minecraft:beetroot_seeds> * 2, [
  [<minecraft:beetroot>, <minecraft:beetroot>, null]
]);

# Allow resmelting of blank Tinkers casts
mods.tconstruct.Melting.addRecipe(<liquid:alubrass> * 144, <tconstruct:cast>);

# Bone Blocks should be grindable back into Bonemeal
recipes.removeByRecipeName("minecraft:bone_meal_from_block");
mods.actuallyadditions.Crusher.addRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>);
mods.extrautils2.Crusher.add(<minecraft:dye:15> * 9, <minecraft:bone_block>);
mods.thermalexpansion.Pulverizer.addRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>, 2000);
mods.appliedenergistics2.Grinder.addRecipe(<minecraft:dye:15> * 9, <minecraft:bone_block>, 5);
mods.mekanism.crusher.addRecipe(<minecraft:bone_block>, <minecraft:dye:15> * 9);

# More efficient way to get Quartz Enriched Iron
mods.thermalexpansion.InductionSmelter.addRecipe(<refinedstorage:quartz_enriched_iron>, <minecraft:quartz>, <minecraft:iron_ingot>, 4800);

# Ender IO capacitors should be upgradable with Endergy capacitors
recipes.addShaped("Double-Layer Capacitor_endergy",
<enderio:item_basic_capacitor:1>, [
  [null, <ore:ingotEnergeticAlloy>, null],
  [<enderio:item_capacitor_silver>, <ore:dustCoal>, <enderio:item_capacitor_silver>],
  [null, <ore:ingotEnergeticAlloy>, null]
]);
recipes.addShaped("Octadic Capacitor_endergy",
<enderio:item_basic_capacitor:2>, [
  [null, <ore:ingotVibrantAlloy>, null],
  [<enderio:item_capacitor_energetic_silver>, <ore:glowstone>, <enderio:item_capacitor_energetic_silver>],
  [null, <ore:ingotVibrantAlloy>, null]
]);


/*~~~~~~~~~~~
Vanilla items
~~~~~~~~~~~~*/

# Name Tag
recipes.addShaped("Name Tag",
<minecraft:name_tag>, [
  [null, null, <minecraft:string>],
  [<ore:paper>, <ore:ingotGold>, <ore:paper>],
  [<ore:ingotGold>, null, null]
]);

# Dragon Egg
recipes.addShaped("Ender Dragon Egg",
<minecraft:dragon_egg>, [
  [<iceandfire:fire_dragon_blood>, <iceandfire:fire_dragon_flesh>, <iceandfire:ice_dragon_blood>],
  [<iceandfire:fire_dragon_heart>, <minecraft:dragon_breath>, <iceandfire:ice_dragon_heart>],
  [<iceandfire:fire_dragon_blood>, <iceandfire:ice_dragon_flesh>, <iceandfire:ice_dragon_blood>]
]);

# Horse Armor
recipes.remove(<minecraft:iron_horse_armor>);
recipes.addShaped("Iron Horse Armor_oredict",
<minecraft:iron_horse_armor>, [
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
  [<ore:leather>, <ore:blockWool>, <ore:leather>],
  [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);
recipes.remove(<minecraft:golden_horse_armor>);
recipes.addShaped("Gold Horse Armor_oredict",
<minecraft:golden_horse_armor>, [
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
  [<ore:leather>, <ore:blockWool>, <ore:leather>],
  [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);
recipes.remove(<minecraft:diamond_horse_armor>);
recipes.addShaped("Diamond Horse Armor_oredict",
<minecraft:diamond_horse_armor>, [
  [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
  [<ore:leather>, <ore:blockWool>, <ore:leather>], 
  [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]
]);

print("==== Initialized recipes.zs ====");
