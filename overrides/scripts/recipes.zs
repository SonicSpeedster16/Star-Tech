#Name: recipes.zs
#Author: SonicSpeedster16
#Description: Recipe removals/modifications
#Written for use in the Star Tech modpack: https://www.curseforge.com/minecraft/modpacks/star-tech

print("---- Initializing recipes.zs ----");

# Allow resmelting of blank Tinkers cast
mods.tconstruct.Melting.addRecipe(<liquid:alubrass> * 144, <tconstruct:cast>);

# Did somebody say they saw a mushroom cloud? :D
recipes.remove(<extraplanets:nuclear_bomb>);
recipes.addShaped(<extraplanets:nuclear_bomb>, [
  [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>],
  [<minecraft:tnt>, <ore:blockUranium>, <minecraft:tnt>],
  [<minecraft:tnt>, <minecraft:tnt>, <minecraft:tnt>]
]);

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

# Fix an exploit allowing leather acquisition with a Thermal Expansion Sawmill and Pam's HarvestCraft Woven Cotton
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

# Add smelting recipes for AE2 Certus Quartz Ore/Charged Certus Quartz Ore
furnace.addRecipe(<appliedenergistics2:material:0>, <appliedenergistics2:quartz_ore>, 1.0);
furnace.addRecipe(<appliedenergistics2:material:1>, <appliedenergistics2:charged_quartz_ore>, 1.0);

# Add recipe for the LightningCraft Guide
recipes.addShaped(<lightningcraft:guide>, [
  [<lightningcraft:golf_club>, <minecraft:book>, null]
]);

/*~~~~~~~~~~~
Vanilla items:
~~~~~~~~~~~~*/

# Name Tag
recipes.addShaped(<minecraft:name_tag>, [
  [null, null, <minecraft:string>],
  [<ore:paper>, <minecraft:gold_ingot>, <ore:paper>],
  [<minecraft:gold_ingot>, null, null]
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

print("---- Initialized recipes.zs ----");
